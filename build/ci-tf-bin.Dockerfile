FROM registry.access.redhat.com/ubi8/go-toolset:latest AS builder

# Update the base image and install necessary packages

# terraform-provider-rhcs repo
COPY . .


RUN go mod tidy && go mod vendor && make build &&\
    echo 'RUN done'

