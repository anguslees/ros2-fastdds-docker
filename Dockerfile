FROM ros:galactic-ros-core@sha256:69d9c967022653f8bd8b092fe2953e3af61c3d93b03e0f579b2e0df58b297ed7

ENV RMW_IMPLEMENTATION=rmw_fastrtrps_cpp

RUN apt-get -qy update && apt-get -qy install --no-install-recommends \
        ros-galactic-rmw-fastrtps-cpp \
        && rm -rf /var/lib/apt/lists/*

ENTRYPOINT ["/ros_entrypoint.sh"]
CMD ["fastdds", "discovery"]
