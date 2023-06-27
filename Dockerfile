FROM tayeva/librdkafka:2.1.1

RUN mkdir modern-cpp-kafka \
    && curl -L https://github.com/morganstanley/modern-cpp-kafka/archive/refs/tags/v2023.03.07.tar.gz | tar -xz --strip-components=1 -C modern-cpp-kafka \
    && mv modern-cpp-kafka/include/kafka /usr/local/include \
    && rm -rf modern-cpp-kafka

CMD ["/bin/bash"]