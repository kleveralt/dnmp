#!/bin/bash

# Install apcu extension
    cd /tmp/extensions \
    && mkdir apcu \
    && tar -xf v5.1.12.tar.gz -C apcu --strip-components=1 \
    && ( cd apcu && phpize && ./configure && make -j$(nproc) && make install ) \
    && docker-php-ext-enable apcu
