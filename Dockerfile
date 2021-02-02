FROM alpine:3.12 as doxygen

RUN apk --update add doxygen graphviz

COPY . /data
WORKDIR /data

# Specify output directory
# https://www.doxygen.nl/manual/faq.html#faq_cmdline
RUN cd ./doc && \
    (cat Doxyfile; echo "OUTPUT_DIRECTORY=/output") | doxygen -

