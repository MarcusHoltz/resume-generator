# I used the Ubuntu 22.04 LTS Docker image as the base for this image:
FROM ubuntu:22.04

# Some packages have a list of suggested or recommended dependencies that aren't required but are installed by default. These additional dependencies can add to the size of the final Docker image unnecessarily, as Ubuntu note in their blog post, "We reduced our Docker images by 60% with –no-install-recommendsWe reduced our Docker images by 60% with –no-install-recommends" [Source](https://ubuntu.com/blog/we-reduced-our-docker-images-by-60-with-no-install-recommends):
# To disable the installation of these optional dependencies for all invocations of apt-get, the configuration file at /etc/apt/apt.conf.d/00-docker is created with the following settings:
RUN echo 'APT::Install-Suggests "0";' >> /etc/apt/apt.conf.d/00-docker
RUN echo 'APT::Install-Recommends "0";' >> /etc/apt/apt.conf.d/00-docker


# Text below suggested from: https://hub.docker.com/_/ubuntu
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* \
	&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
ENV LANG en_US.utf8



# Preventing prompt errors during package installation by setting the DEBIAN_FRONTEND environment variable to noninteractive, pretty much anytime you invoke apt...:
# &&
# It's best practice to remove any unnecessary files from a Docker image to ensure the resulting image is as small as it can be. To clean up the package list after the required packages have been installed, the files under /var/lib/apt/lists/ are deleted:
RUN apt-get update && \
  DEBIAN_FRONTEND=noninteractive TZ="America/Denver" apt-get -y install tzdata && \
  apt-get install -y \
  wget \
  unzip \
  texlive \
  context \
  latex-coffee-stains \
  latexml \
  texlive-latex-recommended \
  texlive-xetex \
  fonts-noto-cjk \
  fonts-noto-cjk-extra \
  texlive-fonts-extra \
  fonts-linuxlibertine \
  wkhtmltopdf \
  pandoc \
  pandoc-data \
  build-essential \
  make \
  && rm -rf /var/lib/apt/lists/*



ENV TZ=America/Denver
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

RUN mkdir -p /home/app

WORKDIR /home/app

COPY scripts/entrypoint.sh /home/app/entrypoint.sh

RUN chmod +x /home/app/entrypoint.sh

##########################################################################
## If you intend to run this container NOT ON GITHUB to automatically   ##
##   spit out the converted documents, you will need to uncomment       ##
##   both of these lines, otherwise root will own these files.          ##
##########################################################################
# RUN useradd --user-group --create-home --shell /bin/false app
# USER app
