#### Build CPLEX GCC Docker Image

- The docker container image will be Ubuntu based with GCC alredy installed [GCC:13.3.0](https://hub.docker.com/_/gcc).

- Copy the downloaded CPLEX Linux installer `cplex_studio{version}.linux-x86-64.bin` to the same location with `Dockerfile`.

  ```
  cplex-docker
  ├── Dockerfile
  ├── cplex_studio{version}.linux-x86-64.bin
  └── response.properties  
  ```
  
  **Obs**.: In the Dockerfile, change the linux installer name according to the version you're using (in my case was 22.1.1)

- Build the image:
  
  ```
  docker image build -t cplex:{version} .
  ```
