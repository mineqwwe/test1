#dl jdk 8 11 17 gtadle-8.0 nim clang
sudo apt update
sudo apt upgrade -y
sudo apt install wget openssl vim unzip clang -y
cd ~
mkdir sdk
cd sdk
#d_jdk17
wget https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.6%2B10/OpenJDK17U-jdk_x64_linux_hotspot_17.0.6_10.tar.gz
#d_jdk11
wget https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.18%2B10/OpenJDK11U-jdk_x64_linux_hotspot_11.0.18_10.tar.gz
#d_jdk8
wget https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u362-b09/OpenJDK8U-jdk_x64_linux_hotspot_8u362b09.tar.gz
#d_gradle-8.0
wget https://services.gradle.org/distributions/gradle-8.0-bin.zip
#d_nim:1.6.10
wget https://nim-lang.org/download/nim-1.6.10-linux_x64.tar.xz

#untar
tar -xvf OpenJDK17U-jdk_x64_linux_hotspot_17.0.6_10.tar.gz
tar -xvf OpenJDK11U-jdk_x64_linux_hotspot_11.0.18_10.tar.gz
tar -xvf OpenJDK8U-jdk_x64_linux_hotspot_8u362b09.tar.gz
tar -xvf nim-1.6.10-linux_x64.tar.gz

unzip gradle-8.0-bin.zip

#clear cache
rm OpenJDK8U-jdk_x64_linux_hotspot_8u362b09.tar.gz
rm OpenJDK11U-jdk_x64_linux_hotspot_11.0.18_10.tar.gz
rm OpenJDK17U-jdk_x64_linux_hotspot_17.0.6_10.tar.gz
rm gradle-8.0-bin.zip
rm nim-1.6.10-linux_x64.tar.gz

#jdk dirs
#jdk8u362-b09/
#jdk-11.0.18+10/
#jdk-17.0.6+10/
#gradle-8.0/
#nim-1.6.10

#Android-cmdline-tools
mkdir Android
cd Android
wget https://dl.google.com/android/repository/commandlinetools-linux-9477386_latest.zip
uzip commandlinetools-linux-9477386_latest.zip
rm commandlinetools-linux-9477386_latest.zip
cd cmdline-tools
mkdir latest
mv bin latest
mv lib latest
mv NOTICE.txt latest
mv source.properties latest
cd latest
cd bin
chmod 777 sdkmanager
./sdkmanager --update
#30/31/33
./sdkmanager --install -y "platform-tools" "platforms;android-31" "platforms;android-33" "build-tools;33.0.2" "build-tools;31.0.0" "build-tools;30.0.3" "platforms;android-30"
echo done
