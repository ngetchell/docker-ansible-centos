FROM centos:latest

RUN yum install epel-release -y \
    && yum install python3-pip -y \
    && yum clean all

RUN pip3 install ansible \
                ansible-lint \
    && rm -rf ~/.cache/*

CMD ["/bin/bash"]