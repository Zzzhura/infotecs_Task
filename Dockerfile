FROM gcc:latest
WORKDIR .
COPY sqlite ./sqlite
COPY sqlite_build ./sqlite_build
RUN apt-get update && apt-get install -y cmake
RUN mkdir -p ./build
RUN cmake --log-context -S ./sqlite -B ./build
RUN make -C ./build
ENTRYPOINT ["infotecs_Task/build/sqlite"]
