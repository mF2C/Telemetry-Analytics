# Base Image for SnapTemp - temp container to download install Snap plugins, then exits

FROM ubuntu:16.04

RUN apt-get update && apt-get install -y wget

# required files
ADD download.sh /download.sh
ADD task.json /task.json
ADD snaptel /snaptel
ADD snap-plugin* /

# command
CMD ["sh", "download.sh"]
