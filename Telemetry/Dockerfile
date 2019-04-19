# Base Image for SnapTemp - temp container to download install Snap plugins, then exits
FROM alpine

# Add modules
RUN apk update && apk add wget

# required files
ADD download.sh /download.sh
ADD task.json /task.json
ADD snaptel /snaptel
ADD snap-plugin* /

# command
CMD ["sh", "download.sh"]
