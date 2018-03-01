# gnat-sphinx

[SPHINX](http://sphinx-doc.org/) documentation toolchain in an alpine docker container.



## Build

```bash
docker build . -t gnat/sphinx
```



## Usage

```bash
docker run -it -v <your directory>:/documents gnat/sphinx
```
