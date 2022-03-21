FROM ros:galactic-ros-core@sha256:7a354728e3c2ba90e3e1ea9374425bc7b5232d9c17f0918355f09893211acff7

ENV RMW_IMPLEMENTATION=rmw_fastrtrps_cpp

RUN apt-get -qy update && apt-get -qy install --no-install-recommends \
        ros-galactic-rmw-fastrtps-cpp \
        && rm -rf /var/lib/apt/lists/*

ENTRYPOINT ["/ros_entrypoint.sh"]
CMD ["fastdds", "discovery"]
