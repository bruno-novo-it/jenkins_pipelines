# Jenkins Pipelines

Olá, seja Bem-vindo! Aqui estaremos criando Pipelines :bar_chart: no Jenkins de uma forma bem diferente: Utilizando códigos.:metal:

Primeiro de tudo, iremos criar um arquivo para executarmos um Jenkins dentro de um container do Docker :whale:.

Execute o comando abaixo:
~~~
$ vim start_jenkins_master.sh
~~~
:warning: No meu caso foi utilizado o vim mas podemos utilizar nano, atom, ou qualquer outro editor da sua preferência, sem problemas. :thumbsup:

Agora digite tudo isso :sweat_smile::

~~~
#!/bin/bash

## Change to the dir where the script is located and
# get the full name into a variable
cd "$(dirname $0)"
WORK_DIR="$(pwd)"

docker rm -f jenkins 2> /dev/null
sudo mkdir -p $(pwd)/storage
sudo chown -R $(whoiam). $_
sudo chmod -R 2775 $_

docker run -d \
        --name jenkins \
        -v $(pwd)/storage:/var/jenkins_home \
        -p 8080:8080 \
        -p 50000:50000 \
        jenkins:2.3
~~~

Salve o arquivo e saia.

Logo após isso, execute este comando:

```{sh}

```
