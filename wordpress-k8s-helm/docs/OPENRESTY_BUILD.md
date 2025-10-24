# OpenResty Build Instructions

This document provides instructions for building OpenResty with specific configuration options. Follow the steps below to compile OpenResty with Lua support and the desired modules.

## Prerequisites

Ensure you have the following installed on your system:

- A compatible version of `gcc` or `clang`
- `make`
- `pcre` library (for PCRE support)
- `openssl` library (for SSL support)
- `zlib` library (for compression support)

## Build Steps

1. **Clone the OpenResty Repository**

   Clone the OpenResty source code from the official repository:

   ```
   git clone https://github.com/openresty/openresty.git
   cd openresty
   ```

2. **Configure the Build**

   Run the configuration script with the specified options:

   ```
   ./configure --prefix=/opt/openresty \
               --with-pcre-jit \
               --with-ipv6 \
               --without-http_redis2_module \
               --with-http_iconv_module \
               --with-http_postgres_module \
               -j8
   ```

   - `--prefix=/opt/openresty`: Specifies the installation directory.
   - `--with-pcre-jit`: Enables JIT compilation for PCRE.
   - `--with-ipv6`: Enables IPv6 support.
   - `--without-http_redis2_module`: Excludes the Redis2 module.
   - `--with-http_iconv_module`: Enables the iconv module for character set conversion.
   - `--with-http_postgres_module`: Enables the PostgreSQL module for HTTP.
   - `-j8`: Allows parallel compilation using 8 threads.

3. **Compile OpenResty**

   After configuring, compile OpenResty by running:

   ```
   make
   ```

4. **Install OpenResty**

   Once the compilation is complete, install OpenResty with:

   ```
   sudo make install
   ```

5. **Verify Installation**

   To verify that OpenResty has been installed correctly, run:

   ```
   /opt/openresty/bin/openresty -v
   ```

   This should display the version of OpenResty that was installed.

## Conclusion

You have successfully built and installed OpenResty with the specified configuration options. You can now proceed to configure Nginx with Lua scripts as needed for your application.