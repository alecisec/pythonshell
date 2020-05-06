# docker pythonshell

A simple script to run any python command (with specific requirements) without reconfiguring the host machine's python environment

requirements:

* docker - https://docs.docker.com/get-docker/
* docker-compose - https://docs.docker.com/compose/install/

steps to run:

    git clone https://github.com/alecisec/pythonshell.git
    cd pythonshell
    **Optional** - copy working files/scripts/whatever to the current folder
    sh pyshell.sh

customising:

* modify the line in the Dockerfile (in either the python2 or python3 folder) including the text "oletools" to add any other dependencies including versions i.e. "RUN echo MySQL-python==1.2.3 WebOb==1.11.0 > ./requirements.txt" 

more information:

* any files in the directory pyshell.sh is run will be copied into the container in which python runs, allowing any scripts required to be transposed into the clean environment and then destroyed after the script completes
