#!/bin/bash

# Install apcu extension
    cd /tmp/extensions \
    && mkdir apcu \
    && tar -xf v5.1.12.tar.gz -C apcu --strip-components=1 \
    && ( cd apcu && phpize && ./configure && make -j$(nproc) && make install ) \
    && docker-php-ext-enable apcu

# Install redis extension
    cd /tmp/extensions \
    && mkdir redis \
    && tar -xf redis-${REDIS_VERSION}.tgz -C redis --strip-components=1 \
    && ( cd redis && phpize && ./configure && make -j$(nproc) && make install ) \
    && docker-php-ext-enable redis
