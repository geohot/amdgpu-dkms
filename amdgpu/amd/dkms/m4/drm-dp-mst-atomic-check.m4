dnl #
dnl # commit eceae147246749c6dbaeefda802b30f804a3c54c
dnl # drm/dp_mst: Start tracking per-port VCPI allocations
dnl #
AC_DEFUN([AC_AMDGPU_DRM_DP_MST_ATOMIC_CHECK], [
	AC_KERNEL_DO_BACKGROUND([
		AC_KERNEL_TRY_COMPILE_SYMBOL([
			#if defined(HAVE_DRM_DISPLAY_DRM_DP_MST_HELPER_H)
			#include <drm/display/drm_dp_mst_helper.h>
			#elif defined(HAVE_DRM_DP_DRM_DP_MST_HELPER_H)
			#include <drm/dp/drm_dp_mst_helper.h>
			#else
			#include <drm/drm_dp_mst_helper.h>
			#endif
		], [
			int ret;
			ret = drm_dp_mst_atomic_check(NULL);
		], [drm_dp_mst_atomic_check], [drivers/gpu/drm/drm_dp_mst_topology.c], [
			AC_DEFINE(HAVE_DRM_DP_MST_ATOMIC_CHECK, 1,
				[drm_dp_mst_atomic_check() is available])
		])
	])
])
