# Discussion for TIP #490
See [TIP #490](490.md) for the context of this.

## Issue 1: are really all oo use-cases covered ?

Gosts like multiple inheritance, mixins, filters whatever are calling...

## Issue 2: All backward compatibility issues covered ?

I see the following covered ones:

* no oo -> `uplevel 1 namespace current` is used, o.k.
* oo with explicit `namespace eval` -> o.k.

Are there eventually other cases not discussed here?

## Issue 3: performance loss

There is a performance penalty due to the modification described in "implementation".

To not decrease performance would require to introduce new commands, what I think is not good.
We would loose the flexibility and backward compatibility to just insert a 3rd party package, which may call "uplevel 1 msgcat::mc tag", and it works.

For performance enthusiasts, one may use "mcn", which may be little faste than former msgcat.

## Issue 4: does not work for tcl 8.6

The `self` command does not work for tcl 8.6 within class definition scripts.

It returns the error message:

<verb>
wrong # args: should be "self arg ?arg ...?"
</verb>

# Alternatives

## Use a mixin

Proposed by Donal Fellows

Each class which wants to use message catalogs require a call to `mixin msgcat::MessageCatalogAware`.

Then, the following commands are available and correspond to the `msgcat::` commands:

* my mc
* my mcmax
* my mcexists

All other mc-commands are not available within classes and should be used outside of a class.

# Examples

Within the following example, the message catalog for the package is loaded outside the method definitions.

A class "Foo" is created and the msgcat capabilities are activated by the mixin.

Then, a method is defined, which uses the message catalog of the namespace.

<pre>
namespace eval ::foo {
    msgcat::mcload $dir/msgs
    oo::class create Foo {
        mixin msgcat::MessageCatalogAware
        method printMessage {x y} {
            puts [my mc "FooPrintMessage(%d,%d)" $x $y]
        }
    }
}
package provide foo 1.0
</pre>

The implementation is in tcl fossil in branch
[tip490-msgcat-oo](https://core.tcl-lang.org/tcl/timeline?r=tip490-msgcat-oo).

## Use own commands for getting and setting message catalogues

Eric Boudallier proposed a solution on [Wiki page "msgcat and TclOO"](http://wiki.tcl.tk/39430)

There is also an addendum by Donal Fellows with an alternate implementation.

## mixin solution where superclass and subclass may not be in different namespaces:

Donal Fellows also provided this solution.

The key then is how to make `msgcat::mc` work (and a few related commands as well). The trick I've thought of is to use the magic powers of `apply` and `tailcall`; here's what we're looking for:

<pre>
namespace eval ::foo {
    msgcat::mcload $dir/msgs
    oo::class create MessageCatalogAware {
        forward mc apply {args {tailcall ::msgcat::mc {*}$args} ::foo}
        unexport mc
    }
    oo::class create Foo {
        mixin MessageCatalogAware
        # ...
    }
    oo::class create Bar {
        mixin MessageCatalogAware
        # ...
    }
}
package provide foo 1.0
</pre>

(I'd use a mixin for this; it's not really about the class itself; it's just about making a capability available.)

It'd be nice to have a way to make that bridging class automatically. Here it is.

<pre>
oo::class create ::msgcat::oobridge {
    superclass oo::class
    self method create {name args} {
        set cls [next $name {*}$args]
        set ns ::[namespace qualifiers [namespace which $cls]]
        foreach cmd {mc mcmax mcexists} {
            oo::define $cls forward $cmd apply [list \
                {cmd args} {tailcall $cmd {*}$args} $ns] \
                ::msgcat::$cmd
            oo::define $cls unexport $cmd
        }
        return $cls
    }
}
</pre>

Now our little package would become:

<pre>
namespace eval ::foo {
    msgcat::mcload $dir/msgs
    msgcat::oobridge create MessageCatalogAware
    oo::class create Foo {
        mixin MessageCatalogAware
        # ...
    }
    oo::class create Bar {
        mixin MessageCatalogAware
        # ...
    }
}
package provide foo 1.0
</pre>

Alternatively, we could plug the capabilities into `oo::define`; the principles of the code are largely the same but the details are little different.

I've been thinking about this more, and I've realised that there is a subtle problem: a superclass and a subclass could be in different namespaces in different packages, and so could reasonably want to use different message catalogs. This means that the bridging code always needs to look up what the context namespace is at runtime, which in turn means that there's no need for clever class manufacturing, and it can all be done with (see section "Implementation" above).
