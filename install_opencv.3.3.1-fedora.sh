#! /bin/bash
sudo yum -y update
yum list available opencv\*
sudo yum groupinstall 'Development Tools'
sudo yum install cmake git pkgconfig
sudo yum install libpng-devel libjpeg-turbo-devel jasper-devel openexr-devel libtiff-devel libwebp-devel
sudo yum install libdc1394-devel libv4l-devel gstreamer-plugins-base-devel
sudo yum install gtk2-devel
sudo yum install tbb-devel eigen3-devel
curl "https://bootstrap.pypa.io/get-pip.py" -o "get-pip.py"
sudo python get-pip.py
sudo pip install virtualenv virtualenvwrapper
sudo rm -rf ~/.cache/pip
export WORKON_HOME=$HOME/.virtualenvs
source /usr/bin/virtualenvwrapper.sh
source ~/.bashrc
mkvirtualenv cv
deactivate
workon cv
python --version
sudo yum install python-devel
sudo pip install numpy
cd ~
git clone https://github.com/Itseez/opencv.git
cd opencv
git checkout 3.1.0 
cd ~
git clone https://github.com/Itseez/opencv_contrib.git
cd opencv_contrib
git checkout 3.1.0
cd ~/opencv
mkdir build
cd build
cmake  \
-DBUILD_DOCS=OFF  \
-DBUILD_EXAMPLES=OFF  \
-DBUILD_JPEG=OFF  \
-DBUILD_OPENEXR=OFF  \
-DBUILD_PACKAGE=OFF  \
-DBUILD_PERF_TESTS=OFF  \
-DBUILD_PNG=OFF  \
-DBUILD_SHARED_LIBS=OFF  \
-DBUILD_TBB=OFF  \
-DBUILD_TESTS=OFF  \
-DBUILD_TIFF=OFF  \
-DBUILD_WITH_DEBUG_INFO=OFF  \
-DBUILD_ZLIB=OFF  \
-DWITH_1394=ON  \
-DWITH_EIGEN=ON  \
-DWITH_FFMPEG=ON  \
-DWITH_GIGEAPI=ON  \
-DWITH_GSTREAMER=ON  \
-DWITH_GTK=ON  \
-DWITH_IPP=OFF  \
-DWITH_JASPER=ON  \
-DWITH_JPEG=ON  \
-DWITH_LIBV4L=ON  \
-DWITH_OPENCL=OFF  \
-DWITH_OPENCLAMDBLAS=OFF  \
-DWITH_OPENCLAMDFFT=OFF  \
-DWITH_OPENEXR=OFF  \
-DWITH_OPENGL=OFF  \
-DWITH_OPENMP=OFF  \
-DWITH_OPENNI=OFF  \
-DWITH_PNG=ON  \
-DWITH_PVAPI=OFF  \
-DWITH_QT=OFF  \
-DWITH_TBB=OFF  \
-DWITH_TIFF=ON  \
-DWITH_UNICAP=OFF  \
-DWITH_V4L=OFF  \
-DWITH_XIMEA=OFF  \
-DWITH_XINE=OFF  \
-DPYTHON_EXECUTABLE=$PYTHON_EXECUTABLE  \
-DPYTHON_INCLUDE_PATH=$PYTHON_INCLUDE_PATH \
-DPYTHON_LIBRARY=$PYTHON_LIBRARY \
-DPYTHON_NUMPY_INCLUDE_DIR=$PYTHON_NUMPY_INCLUDE_DIR \
-DPYTHON_PACKAGES_PATH=$PYTHON_PACKAGES_PATH \
-Wno-dev ../
make
sudo make install
sudo ldconfig
cd ~/.virtualenvs/cv/lib/python2.7/site-packages/
ln -s /usr/local/lib/python2.7/site-packages/cv2.so cv2.so
cd ~/.virtualenvs/cv/lib/python3.6/site-packages/
ln -s /usr/local/lib/python3.6/site-packages/cv2.so cv2.so
workon cv