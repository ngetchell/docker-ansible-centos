FROM centos:latest

RUN yum install epel-release -y \
    && yum install python-pip -y

RUN pip install ansible \
                ansible-lint \
    && rm -rf ~/.cache/*

CMD ["/bin/bash"]