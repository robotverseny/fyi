
echo "First arg: $1"
if [ "$1" != "wifi" ]
then
    echo "++++ default install settings ++++"
else
    echo "!!!! wifi settings !!!!"
    sleep 2
fi

echo "++++ install script start ++++"
echo ""

locale  # check for UTF-8

sudo apt update && sudo apt install locales
sudo locale-gen en_US en_US.UTF-8
sudo update-locale LC_ALL=en_US.UTF-8 LANG=en_US.UTF-8
export LANG=en_US.UTF-8

locale  # verify settings

sudo apt install software-properties-common -y
sudo add-apt-repository universe -y

sudo apt update -y && sudo apt install curl -y
sudo curl -sSL https://raw.githubusercontent.com/ros/rosdistro/master/ros.key -o /usr/share/keyrings/ros-archive-keyring.gpg


echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/ros-archive-keyring.gpg] http://packages.ros.org/ros2/ubuntu $(. /etc/os-release && echo $UBUNTU_CODENAME) main" | sudo tee /etc/apt/sources.list.d/ros2.list > /dev/null


sudo apt update -y
sudo apt upgrade -y

sudo apt install ros-dev-tools -y

echo ""y
echo "++++ install ros 2 jazzy ++++"
echo ""

sudo apt install ros-jazzy-desktop -y
sudo apt install ros-dev-tools -y
sudo apt install ros-jazzy-rqt-tf-tree -y
sudo apt install python3-colcon-common-extensions -y
sudo apt install git -y


echo "" >> ~/.bashrc
echo "#### ADDED BY INSTALL SCRIPT wget https://raw.githubusercontent.com/robotverseny/fyi/main/useful/install_jazzy.sh" >> ~/.bashrc
echo "source /opt/ros/jazzy/setup.bash" >> ~/.bashrc
echo "export RCUTILS_COLORIZED_OUTPUT=1" >> ~/.bashrc
echo "# export ROS_DOMAIN_ID="$(( $RANDOM % 100 + 1 )) >> ~/.bashrc
# echo "my_ip=$(ip a | grep 192. | awk '{print $2}' | cut -d'/' -f1 | head -n 1)" >> ~/.bashrc
# echo "# echo -e "robo_ | \e[44m$my_ip\e[0m | TODO: color "
echo "echo -e "wheeltec || TODO: color and udev rules"" >> ~/.bashrc

echo "source /usr/share/colcon_cd/function/colcon_cd.sh" >> ~/.bashrc
echo "export _colcon_cd_root=/opt/ros/jazzy/" >> ~/.bashrc
echo "source /usr/share/colcon_argcomplete/hook/colcon-argcomplete.bash" >> ~/.bashrc

echo ""
echo "++++ create workspace ++++"
echo ""

cd ~
wget https://raw.githubusercontent.com/jkk-research/jkk_utils/ros2/.bash_aliases

mkdir -p ~/ros2_ws/src
cd ~/ros2_ws/src
git clone https://github.com/robotverseny/drivers
git clone https://github.com/robotverseny/lane_following_cam
git clone https://github.com/jkk-research/jkk_utils

cd ~/ros2_ws
source ~/.bashrc
colcon build --symlink-install --packages-select serial wheeltec_robot_msg lslidar_msgs lslidar_driver turn_on_wheeltec_robot wheeltec_robot_urdf usb_cam_launcher lane_following_cam mcap_rec

sudo apt install ros-jazzy-foxglove-bridge -y
sudo apt install mc -y
# sudo apt install ros-jazzy-rosbag2-storage-mcap ros-jazzy-rosbag2 -y
sudo apt install ros-jazzy-ros-gz -y

sudo apt install libpcap0.8-dev libpcl-dev libboost-all-dev -y
sudo apt install ros-jazzy-nav2-msgs ros-jazzy-ackermann-msgs ros-jazzy-tf2-msgs ros-jazzy-tf2-geometry-msgs ros-jazzy-joint-state-publisher ros-jazzy-robot-localization ros-jazzy-usb-cam -y

echo "First arg: $1"
if [ "$1" != "wifi" ]
then
    echo ""
else
    echo "!!!! wifi settings !!!!"
    sudo apt install openssh-server -y
fi

echo ""
echo "++++ install script end ++++"
echo ""