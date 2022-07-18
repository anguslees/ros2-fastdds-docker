FROM ros:galactic-ros-core@sha256:442e2173f1a5c8d4339950cb52d3a65c3ca0703adddbbcef9f5078fec1816940

ENV RMW_IMPLEMENTATION=rmw_fastrtrps_cpp

RUN apt-get -qy update && apt-get -qy install --no-install-recommends \
        ros-galactic-rmw-fastrtps-cpp \
        && rm -rf /var/lib/apt/lists/*

ENTRYPOINT ["/ros_entrypoint.sh"]
CMD ["fastdds", "discovery"]
