# Author: Declan Moran (www.silverglint.com)


# Extract boost (src) archive to a directory of the form "major.minor.patch" 
# such that eg ...../1.72.0/bootstrap.sh, etc



#--------------------------------------------------------------------------------------
#--------------------------------------------------------------------------------------
# Modify the variables below as appropriate for your local setup.
#----------------------------------------------------------------

# Specify the path to boost source code dir 
export BOOST_DIR=$HOME/boost_*_*_*


# Where the Android Ndk you want to build with is located; use the newest one
NDK_DIR=$HOME/Android/Sdk/ndk
NDK_DIR=$NDK_DIR/$(ls $NDK_DIR | tail -n 1)
export NDK_DIR

# Which target abis (~ architecture + instruction set) you want to build for     
export ABI_NAMES="arm64-v8a armeabi-v7a x86 x86_64"

# Whether to build boost as dynamic or shared libraries (or both)
export LINKAGES="shared static" # can be "shared" or "static" or "shared static" (both)


#----------------------------------------------------------------

./build.sh
