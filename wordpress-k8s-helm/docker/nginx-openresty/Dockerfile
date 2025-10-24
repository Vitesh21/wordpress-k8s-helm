FROM openresty/openresty:alpine

# Install required packages
RUN apk add --no-cache \
    gcc \
    make \
    pcre-dev \
    openssl-dev \
    zlib-dev \
    git

# Clone OpenResty source
RUN git clone https://github.com/openresty/openresty.git /opt/openresty-src

# Build OpenResty with specified configuration options
WORKDIR /opt/openresty-src

RUN ./configure --prefix=/opt/openresty \
    --with-pcre-jit \
    --with-ipv6 \
    --without-http_redis2_module \
    --with-http_iconv_module \
    --with-http_postgres_module \
    -j8 && \
    make && \
    make install

# Copy Nginx configuration files
COPY ./nginx.conf /usr/local/openresty/nginx/conf/nginx.conf
COPY ./lua/ /usr/local/openresty/nginx/lua/

# Expose the port
EXPOSE 80

# Start OpenResty
CMD ["openresty", "-g", "daemon off;"]