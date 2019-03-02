# Dataflow Container
This project is created to simplify the steps of generating dataflow graphs using https://github.com/sonyxperiadev/dataflow.

##Usage:
*1. Build a docker image with dataflow and graphviz installed
```bash
  $ ./build-image.sh
  ```

*2. Use the container to convert a *.flow into *.png in the same folder
```bash
  $ ./convert.sh ./test.flow
  ```
