# OBS CMake Windows build dependencies module

include_guard(GLOBAL)

include(buildspec_common)

# _check_dependencies_windows: Set up Windows slice for _check_dependencies
function(_check_dependencies_windows)
  set(dependencies_dir "${CMAKE_CURRENT_SOURCE_DIR}/.deps")
  set(prebuilt_filename "windows-deps-VERSION-ARCH-REVISION.zip")
  set(prebuilt_destination "obs-deps-VERSION-ARCH")

  if(CMAKE_VS_PLATFORM_NAME STREQUAL Win32)
    set(arch x86)
  else()
    string(TOLOWER "${CMAKE_VS_PLATFORM_NAME}" arch)
  endif()
  set(dependencies_list prebuilt)
  set(platform windows-${arch})

  _check_dependencies()
endfunction()

_check_dependencies_windows()
