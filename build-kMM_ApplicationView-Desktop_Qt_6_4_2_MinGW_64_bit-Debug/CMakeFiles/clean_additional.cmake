# Additional clean files
cmake_minimum_required(VERSION 3.16)

if("${CONFIG}" STREQUAL "" OR "${CONFIG}" STREQUAL "Debug")
  file(REMOVE_RECURSE
  "CMakeFiles\\kMM_ApplicationView_autogen.dir\\AutogenUsed.txt"
  "CMakeFiles\\kMM_ApplicationView_autogen.dir\\ParseCache.txt"
  "kMM_ApplicationView_autogen"
  )
endif()
