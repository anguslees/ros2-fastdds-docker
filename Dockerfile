FROM ros:galactic-ros-core@sha256:db6cd6f52305444b6b62e3504c24e9de45132b9fe564eba9f5846fee496d0a2b

ENV RMW_IMPLEMENTATION=rmw_fastrtrps_cpp

RUN apt-get -qy update && apt-get -qy install --no-install-recommends \
        ros-galactic-rmw-fastrtps-cpp \
        && rm -rf /var/lib/apt/lists/*

ENTRYPOINT ["/ros_entrypoint.sh"]
CMD ["fastdds", "discovery"]
