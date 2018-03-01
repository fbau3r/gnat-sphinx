FROM alpine:latest

# Build:
# docker build . -t gnat/sphinx
# Usage:
# docker run -it -v <your directory>:/documents/

# Update apt-get sources AND install stuff
RUN apk --update --no-cache add make python3 py-pip

RUN pip install --upgrade pip --no-cache-dir && \
	pip install Sphinx --no-cache-dir && \
	pip install sphinx_rtd_theme --no-cache-dir && \
	pip install alabaster --no-cache-dir && \
	pip install sphinx_bootstrap_theme --no-cache-dir

RUN mkdir documents
WORKDIR /documents
VOLUME /documents

CMD ["/bin/ash"]
