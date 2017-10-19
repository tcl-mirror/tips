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
	printf("%#x\n", 15);
	obj = Tcl_ObjPrintf("%#x", 15);
	printf("%s\n", Tcl_GetString(obj));

	/* 0 Hex string with prefix */
	printf("%#x\n", 0);
	obj = Tcl_ObjPrintf("%#x", 0);
	printf("%s\n", Tcl_GetString(obj));

	/* Hex string with prefix, uppercase */
	printf("%#X\n", 15);
	obj = Tcl_ObjPrintf("%#X", 15);
	printf("%s\n", Tcl_GetString(obj));

	/* Hex float with prefix */
	printf("%a\n", 1.75);
	obj = Tcl_ObjPrintf("%a", 1.75);
	printf("%s\n", Tcl_GetString(obj));

	/* Hex float with prefix, uppercase */
	printf("%A\n", 1.75);
	obj = Tcl_ObjPrintf("%A", 1.75);
	printf("%s\n", Tcl_GetString(obj));

	/* int32_t */
	int32_t i32 = 45;
	printf("%" PRId32 "\n", i32);
	obj = Tcl_ObjPrintf("%" PRId32, i32);
	printf("%s\n", Tcl_GetString(obj));

	/* int64_t */
	int64_t i64 = 46;
	printf("%" PRId64 "\n", i64);
	obj = Tcl_ObjPrintf("%" PRId64, i64);
	printf("%s\n", Tcl_GetString(obj));

	/* (unsigned) Tcl_WideInt / long long */
	Tcl_WideUInt w = 47;
	unsigned long long ll = (unsigned long long) w;
	printf("%" TCL_LL_MODIFIER "u\n", w);
	obj = Tcl_ObjPrintf("%" TCL_LL_MODIFIER "u", w);
	printf("%s\n", Tcl_GetString(obj));
	printf("%" TCL_LL_MODIFIER "u\n", ll);
	obj = Tcl_ObjPrintf("%" TCL_LL_MODIFIER "u", ll);
	printf("%s\n", Tcl_GetString(obj));
	printf("%llu\n", w);
	obj = Tcl_ObjPrintf("%llu", w);
	printf("%s\n", Tcl_GetString(obj));
	printf("%llu\n", ll);
	obj = Tcl_ObjPrintf("%llu", ll);
	printf("%s\n", Tcl_GetString(obj));

	/* size_t */
	size_t s = 48;
	printf("%" TCL_Z_MODIFIER "u\n", s);
	obj = Tcl_ObjPrintf("%" TCL_Z_MODIFIER "u", s);
	printf("%s\n", Tcl_GetString(obj));

	/* intmax_t */
	intmax_t m = 49;
	printf("%jd\n", m);
	obj = Tcl_ObjPrintf("%jd", m);
	printf("%s\n", Tcl_GetString(obj));

	/* ptrdiff_t */
	ptrdiff_t p = 50;
	printf("%td\n", p);
	obj = Tcl_ObjPrintf("%td", p);
	printf("%s\n", Tcl_GetString(obj));

	/* long double */
	long double ld = 51.75;
	printf("%Lg\n", ld);
	obj = Tcl_ObjPrintf("%Lg", ld);
	printf("%s\n", Tcl_GetString(obj));

	/* mp_int */
	mp_int mp;
	mp_init_size(&mp, 0);
	mp_set_int(&mp, 52);
	obj = Tcl_ObjPrintf("%Ld", &mp);
	printf("%s\n", Tcl_GetString(obj));
}
