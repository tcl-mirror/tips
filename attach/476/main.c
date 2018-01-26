#include <inttypes.h>
#include <string.h>
#include <tcl.h>
#include <stdio.h>
#include <tclTommath.h>

#ifndef TCL_Z_MODIFIER
#	define TCL_Z_MODIFIER "z"
#endif

int main() {
	Tcl_Obj *obj;

	/* Ensure proper initialization, even without TIP #414 */
	Tcl_CreateInterp();

	printf("LL modifier: \"%s\"    Z modifier: \"%s\"\n", TCL_LL_MODIFIER, TCL_Z_MODIFIER);
	/* Hex string with prefix */
	printf("%%#x: %#x\n", 15);
	obj = Tcl_ObjPrintf("%#x", 15);
	printf("%%#x: %s\n", Tcl_GetString(obj));

	/* 0 Hex string with prefix */
	printf("%%#x: %#x\n", 0);
	obj = Tcl_ObjPrintf("%#x", 0);
	printf("%%#x: %s\n", Tcl_GetString(obj));

	/* Hex string with prefix, uppercase */
	printf("%%#X: %#X\n", 15);
	obj = Tcl_ObjPrintf("%#X", 15);
	printf("%%#X: %s\n", Tcl_GetString(obj));

	/* Hex float with prefix */
	printf("%%a: %a\n", 1.75);
	obj = Tcl_ObjPrintf("%a", 1.75);
	printf("%%a: %s\n", Tcl_GetString(obj));

	/* Hex float with prefix, uppercase */
	printf("%%A: %A\n", 1.75);
	obj = Tcl_ObjPrintf("%A", 1.75);
	printf("%%A: %s\n", Tcl_GetString(obj));

	/* int32_t */
	int32_t i32 = 45;
	printf("%%PRId32: %" PRId32 "\n", i32);
	obj = Tcl_ObjPrintf("%" PRId32, i32);
	printf("%%PRId32: %s\n", Tcl_GetString(obj));

	/* int64_t */
	int64_t i64 = 46;
	printf("%%PRId64: %" PRId64 "\n", i64);
	obj = Tcl_ObjPrintf("%" PRId64, i64);
	printf("%%PRId64: %s\n", Tcl_GetString(obj));

	/* (unsigned) Tcl_WideInt / long long */
	Tcl_WideUInt w = 47;
	unsigned long long ll = (unsigned long long) w;
	printf("%%llu: %" TCL_LL_MODIFIER "u\n", w);
	obj = Tcl_ObjPrintf("%" TCL_LL_MODIFIER "u", w);
	printf("%%llu: %s\n", Tcl_GetString(obj));
	printf("%%llu: %" TCL_LL_MODIFIER "u\n", ll);
	obj = Tcl_ObjPrintf("%" TCL_LL_MODIFIER "u", ll);
	printf("%%llu: %s\n", Tcl_GetString(obj));
	printf("%%llu: %llu\n", w);
	obj = Tcl_ObjPrintf("%llu", w);
	printf("%%llu: %s\n", Tcl_GetString(obj));
	printf("%%llu: %llu\n", ll);
	obj = Tcl_ObjPrintf("%llu", ll);
	printf("%%llu: %s\n", Tcl_GetString(obj));

	/* size_t */
	size_t s = 48;
	printf("%%z: %" TCL_Z_MODIFIER "u\n", s);
	obj = Tcl_ObjPrintf("%" TCL_Z_MODIFIER "u", s);
	printf("%%z: %s\n", Tcl_GetString(obj));

	/* intmax_t */
	intmax_t m = 49;
	printf("%%jd: %jd\n", m);
	obj = Tcl_ObjPrintf("%jd", m);
	printf("%%jd: %s\n", Tcl_GetString(obj));

	/* ptrdiff_t */
	ptrdiff_t p = 50;
	printf("%%td: %td\n", p);
	obj = Tcl_ObjPrintf("%td", p);
	printf("%%td: %s\n", Tcl_GetString(obj));

	/* long double */
	long double ld = 51.75;
	printf("%%Lg: %Lg\n", ld);
	obj = Tcl_ObjPrintf("%Lg", ld);
	printf("%%Lg: %s\n", Tcl_GetString(obj));

	/* mp_int */
	mp_int mp;
	mp_init_size(&mp, 0);
	mp_set_int(&mp, 52);
	obj = Tcl_ObjPrintf("%Ld", &mp);
	printf("%%Ld: %s\n", Tcl_GetString(obj));

	/* void * */
	void *vp = (void *)(size_t)53;
	printf("%%p: %p\n", vp);
	obj = Tcl_ObjPrintf("%p", vp);
	printf("%%p: %s\n", Tcl_GetString(obj));
}
