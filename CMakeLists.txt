cmake_minimum_required(VERSION 3.8)
project(rfans_driver_msgs)

if(CMAKE_COMPILER_IS_GNUCXX OR CMAKE_CXX_COMPILER_ID MATCHES "Clang")
  add_compile_options(-Wall -Wextra -Wpedantic)
endif()

# find dependencies
find_package(ament_cmake_auto REQUIRED)
ament_auto_find_build_dependencies()

find_package(rosidl_default_generators REQUIRED)
find_package(std_msgs REQUIRED)
find_package(builtin_interfaces REQUIRED)
#msg file 
# set(msg_files
#   "msg/Packet.msg"
#   "msg/RfansPacket.msg"
#   "msg/RfansScan.msg"
# )
rosidl_generate_interfaces(${PROJECT_NAME}
  # ${msg_files}
  "msg/Packet.msg"
  "msg/RfansPacket.msg"
  "msg/RfansScan.msg"
  "srv/RfansCommand.srv"
  DEPENDENCIES std_msgs builtin_interfaces
)
ament_export_dependencies(rosidl_default_runtime)
if(BUILD_TESTING)
  find_package(ament_lint_auto REQUIRED)
  # the following line skips the linter which checks for copyrights
  # comment the line when a copyright and license is added to all source files
  set(ament_cmake_copyright_FOUND TRUE)
  # the following line skips cpplint (only works in a git repo)
  # comment the line when this package is in a git repo and when
  # a copyright and license is added to all source files
  set(ament_cmake_cpplint_FOUND TRUE)
  ament_lint_auto_find_test_dependencies()
endif()

ament_auto_package()
