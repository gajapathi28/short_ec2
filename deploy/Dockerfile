#base os image
FROM centos:7.5.1804
#install gcc, libtools,latest release updates
RUN yum -y install gcc libtool epel-release epel-release \
    yum clean all
# install latest package 
ENV GOLANG_VERSION 1.18.4
ENV GOLANG_DOWNLOAD_URL https://golang.org/dl/go$GOLANG_VERSION.linux-arm64.tar.gz
ENV GOLANG_DOWNLOAD_SHA256 35014d92b50d97da41dade965df7ebeb9a715da600206aa59ce1b2d05527421f
RUN curl -fsSL "$GOLANG_DOWNLOAD_URL" -o golang.tar.gz \
    && echo "$GOLANG_DOWNLOAD_SHA256  golang.tar.gz" | sha256sum -c - \
	&& tar -C /usr/local -xzf golang.tar.gz \
	&& rm golang.tar.gz
ENV PATH /usr/local/go/bin:$PATH
COPY ./code/script.sh /
RUN chmod +x ./script.sh
ENTRYPOINT ["script.sh"]
CMD ["go", "cpp"]
