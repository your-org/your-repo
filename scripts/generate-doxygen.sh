#!/bin/bash

set -eux

# Specify output directory
# https://www.doxygen.nl/manual/faq.html#faq_cmdline
cd ./doc && \
    (cat Doxyfile; echo "OUTPUT_DIRECTORY=/tmp/output") | doxygen -

