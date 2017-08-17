FROM centos:latest
ADD oc oc
ENTRYPOINT ["/oc", "proxy"]