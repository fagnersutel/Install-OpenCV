apt-get update
clear
ls
clear
sudo apt-get update
clear
sudo apt-get update
sudo apt-get upgrade 
clear
sudo apt-get remove x264 libx264-dev
sudo apt-get install build-essential checkinstall cmake pkg-config yasm
cleaR
clear
sudo apt-get install git gfortran
clear
sudo apt-get install libjpeg8-dev libjasper-dev libpng12-dev
clear
sudo apt-get install libjpeg8-dev libjasper-dev libpng12-dev
sudo apt-get install libtiff4-dev
sudo apt-get install libtiff5-dev
clear
sudo apt-get install libavcodec-dev libavformat-dev libswscale-dev libdc1394-22-dev
clear
sudo apt-get install libxine2-dev libv4l-dev
clear
sudo apt-get install libgstreamer0.10-dev libgstreamer-plugins-base0.10-dev
clear
sudo apt-get install qt5-default libgtk2.0-dev libtbb-dev
clear
sudo apt-get install libatlas-base-dev
clear
sudo apt-get install libfaac-dev libmp3lame-dev libtheora-dev
clear
sudo apt-get install libvorbis-dev libxvidcore-dev
clear
sudo apt-get install libopencore-amrnb-dev libopencore-amrwb-dev
clear
sudo apt-get install x264 v4l-utils
clear
sudo apt-get install libprotobuf-dev protobuf-compiler
clear
sudo apt-get install libgoogle-glog-dev libgflags-dev
clear
sudo apt-get install libgphoto2-dev libeigen3-dev libhdf5-dev doxygen
clear
sudo apt-get install python-dev python-pip python3-dev python3-pip
clear
sudo -H pip2 install -U pip numpy
sudo -H pip3 install -U pip numpy
sudo pip2 install virtualenv virtualenvwrapper
sudo pip3 install virtualenv virtualenvwrapper
clear
echo "# Virtual Environment Wrapper"  >> ~/.bashrc
echo "source /usr/local/bin/virtualenvwrapper.sh" >> ~/.bashrc
source ~/.bashrc
mkvirtualenv facecourse-py2 -p python2
workon facecourse-py2
pip install numpy scipy matplotlib scikit-image scikit-learn ipython
deactivate
clear
mkvirtualenv facecourse-py3 -p python3
workon facecourse-py3
pip install numpy scipy matplotlib scikit-image scikit-learn ipython
deactivate
clear
git clone https://github.com/opencv/opencv.git
cd opencv 
git checkout 3.3.1 
cd ..
git clone https://github.com/opencv/opencv_contrib.git
cd opencv_contrib
git checkout 3.3.1
cd ..
CLEA
clear
cd opencv
mkdir build
cd build
cmake -D CMAKE_BUILD_TYPE=RELEASE -D CMAKE_INSTALL_PREFIX=/usr/local -D INSTALL_C_EXAMPLES=ON -D INSTALL_PYTHON_EXAMPLES=ON -D WITH_TBB=ON -D WITH_V4L=ON -D WITH_QT=ON -D WITH_OPENGL=ON -D OPENCV_EXTRA_MODULES_PATH=../../opencv_contrib/modules -D BUILD_EXAMPLES=ON ..
nproc
clear
nproc
make -j4
sudo make install
sudo sh -c 'echo "/usr/local/lib" >> /etc/ld.so.conf.d/opencv.conf'
sudo ldconfig
clear
find /usr/local/lib/ -type f -name "cv2*.so"
clear
cd ~/.virtualenvs/facecourse-py2/lib/python2.7/site-packages
ls - /usr/local/lib/python2.7/dist-packages/cv2.so cv2.so
ls -s /usr/local/lib/python2.7/dist-packages/cv2.so cv2.so
clear
ln -s /usr/local/lib/python2.7/dist-packages/cv2.so cv2.so
cd ~/.virtualenvs/facecourse-py3/lib/python3.6/site-packages/
ln -s /usr/local/lib/python3.6/dist-packages/cv2.cpython-36m-x86_64-linux-gnu.so cv2.so
clear
workon facecourse-py2
workon facecourse-py3
ipython
pwd
cd /home/fagner/Documents/
çs
ls
cd RedEyeRemover/
ls
ipython
clear
ls
python removeRedEyes.py 
teste do opencv e python para tratar imagens, nesse caso será um simples teste de remocao de olhos vermelhos
clear
python removeRedEyes.py 
clear
cd /home/fagner/Documents/
ls
python removeRedEyes.py 
ls
cd RedEyeRemover/
ls
clear
python removeRedEyes.py 
cd /home/fagner/Documents/
cd RedEyeRemover/
LS
ls
clear
python removeRedEyes.py 
jupyter notebook
pip install jupyter
jupyter notebook
pip3 install jupyter
sudo pip3 install jupyter
jupyter notebook