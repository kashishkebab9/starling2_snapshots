# generated from catkin/cmake/template/pkg.context.pc.in
CATKIN_PACKAGE_PREFIX = ""
PROJECT_PKG_CONFIG_INCLUDE_DIRS = "${prefix}/include".split(';') if "${prefix}/include" != "" else []
PROJECT_CATKIN_DEPENDS = "plan_env;roscpp;std_msgs;cv_bridge;decomp_ros_utils;gcopter".replace(';', ' ')
PKG_CONFIG_LIBRARIES_WITH_PREFIX = "-ltraj_utils".split(';') if "-ltraj_utils" != "" else []
PROJECT_NAME = "traj_utils"
PROJECT_SPACE_DIR = "/home/root/kumarRobotics/autonomy_ws/install"
PROJECT_VERSION = "0.0.0"