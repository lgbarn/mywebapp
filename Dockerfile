# golang image where workspace (GOPATH) configured at /go.
FROM golang:latest

# Copy the local package files to the container’s workspace.
ADD . /go/src/mycode/webapp
ADD site/ /webapp

# Build the golang-docker command inside the container.
RUN go install mycode/webapp

# Run the golang-docker command when the container starts.
ENTRYPOINT /go/bin/webapp

# http server listens on port 8080.
EXPOSE 80
