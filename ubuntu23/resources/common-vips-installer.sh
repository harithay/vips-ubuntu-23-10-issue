##
# INSTALL IMAGEMAGICK
##
cd ~
rm -rf ImageMagick.tar.gz
rm -rf ImageMagick-7.1.0-13
wget http://m.xconvert.com/ImageMagick.tar.gz
tar xvzf ImageMagick.tar.gz
cd ImageMagick-7.1.0-13
./configure --with-modules
make -j$(nproc)
make install 
ldconfig /usr/local/lib

##
# INSTALL VIPS
##
cd ~
rm -rf vips*
wget https://github.com/libvips/libvips/releases/download/v8.14.3/vips-8.14.3.tar.xz
tar xf vips-8.14.3.tar.xz
rm -rf vips-8.14.3.tar.xz
mv vips-8.14.3 vips
cd vips
meson setup build --prefix=/usr/local/vips
cd build
ninja
ninja test
ninja install

# Make vips avilable
ldconfig
ldconfig /usr/local/lib
ldconfig /usr/local/vips/lib/girepository-1.0
ldconfig /usr/local/vips/lib/x86_64-linux-gnu

cat >/etc/profile.d/vips.sh <<EOL
export GI_TYPELIB_PATH=/usr/local/vips/lib/girepository-1.0
PATH=\$PATH:/usr/local/vips/bin:/usr/local/vips/lib/x86_64-linux-gnu
EOL

chmod +x /etc/profile.d/vips.sh

PATH=$PATH:/usr/local/vips/bin

ldconfig /usr/local/bin
ldconfig /usr/local/vips
ldconfig /usr/local/vips/bin/
ldconfig /etc/profile.d/vips.sh
source /etc/profile.d/vips.sh