# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5

ROS_REPO_URI="https://github.com/ros/ros"
KEYWORDS="~amd64 ~arm"
PYTHON_COMPAT=( python{2_7,3_3,3_4} )
ROS_SUBDIR=tools/${PN}

inherit ros-catkin

DESCRIPTION="ROS dependency aware build tool"
LICENSE="BSD"
SLOT="0"
IUSE=""

RDEPEND="dev-python/rospkg[${PYTHON_USEDEP}]"
DEPEND="${RDEPEND}
	test? ( dev-python/nose[${PYTHON_USEDEP}] )
"
