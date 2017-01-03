export TC=$HOME/arm-toolchains

mkdir -p $TC

get_toolchain() {
  GCC_DIR=$TC/$1
  GCC_ARCHIVE=/tmp/$2
  GCC_URL=$3
  if [ ! -e $GCC_DIR/bin/arm-none-eabi-g++ ]; then
    wget -nc $GCC_URL -O $GCC_ARCHIVE
    tar xfj $GCC_ARCHIVE -C $TC
  fi
}

#get_toolchain gcc-arm-none-eabi-4_7-2014q2 gcc-arm-none-eabi-4_7-2014q2-20140408-linux.tar.bz2 \
#  https://launchpad.net/gcc-arm-embedded/4.7/4.7-2014-q2-update/+download/gcc-arm-none-eabi-4_7-2014q2-20140408-linux.tar.bz2

#get_toolchain gcc-arm-none-eabi-4_8-2014q3 gcc-arm-none-eabi-4_8-2014q3-20140805-linux.tar.bz2 \
#  https://launchpad.net/gcc-arm-embedded/4.8/4.8-2014-q3-update/+download/gcc-arm-none-eabi-4_8-2014q3-20140805-linux.tar.bz2

get_toolchain gcc-arm-none-eabi-4_9-2015q3 gcc-arm-none-eabi-4_9-2015q3-20150921-linux.tar.bz2 \
  https://launchpad.net/gcc-arm-embedded/4.9/4.9-2015-q3-update/+download/gcc-arm-none-eabi-4_9-2015q3-20150921-linux.tar.bz2

get_toolchain gcc-arm-none-eabi-5_4-2016q3 gcc-arm-none-eabi-5_4-2016q3-20160926-linux.tar.bz2 \
  https://launchpad.net/gcc-arm-embedded/5.0/5-2016-q3-update/+download/gcc-arm-none-eabi-5_4-2016q3-20160926-linux.tar.bz2

get_toolchain gcc-arm-none-eabi-6_2-2016q4 gcc-arm-none-eabi-6_2-2016q4-20161216-linux.tar.bz2 \
  https://developer.arm.com/-/media/Files/downloads/gnu-rm/6-2016q4/gcc-arm-none-eabi-6_2-2016q4-20161216-linux.tar.bz2
