FROM ubuntu:18.04

# To make it easier for build and release pipelines to run apt-get,
# configure apt to not require confirmation (assume the -y argument by default)
ENV DEBIAN_FRONTEND=noninteractive
RUN echo "APT::Get::Assume-Yes \"true\";" > /etc/apt/apt.conf.d/90assumeyes

RUN apt-get update \
&& apt-get install -y --no-install-recommends \
        ca-certificates \
				apt-utils \
				software-properties-common \
				curl \
        jq \
        git \
        iputils-ping \
        libcurl4 \
        libunwind8 \
        netcat \
				zip \
				unzip \
				wget

# install dotnet-sdk-3.1
RUN wget -q https://packages.microsoft.com/config/ubuntu/18.04/packages-microsoft-prod.deb -O packages-microsoft-prod.deb 
RUN dpkg -i packages-microsoft-prod.deb
RUN add-apt-repository universe
RUN apt-get update && apt-get install -y --no-install-recommends apt-transport-https
RUN apt-get update && apt-get install -y --no-install-recommends dotnet-sdk-3.1

WORKDIR /azp

COPY ./start.sh .
RUN chmod +x start.sh

CMD ["./start.sh"]