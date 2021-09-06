FROM ros:galactic-ros-core@sha256:9fb2712667647fcab02d6807306899506a466174298d6b871d28bff48bed1714

ENV RMW_IMPLEMENTATION=rmw_fastrtrps_cpp

RUN apt-get -qy update && apt-get -qy install --no-install-recommends \
        ros-galactic-rmw-fastrtps-cpp \
        && rm -rf /var/lib/apt/lists/*

ENTRYPOINT ["/ros_entrypoint.sh"]
CMD ["fastdds", "discovery"]
