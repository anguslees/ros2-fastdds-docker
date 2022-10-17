FROM ros:galactic-ros-core@sha256:0a4d2cfdcc7511b7bb103b5bc38b074b71706792a1cd0bcd6b785c3c9ca74f82

ENV RMW_IMPLEMENTATION=rmw_fastrtrps_cpp

RUN apt-get -qy update && apt-get -qy install --no-install-recommends \
        ros-galactic-rmw-fastrtps-cpp \
        && rm -rf /var/lib/apt/lists/*

ENTRYPOINT ["/ros_entrypoint.sh"]
CMD ["fastdds", "discovery"]
