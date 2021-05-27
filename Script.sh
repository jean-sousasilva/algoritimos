#!/bin/bash
PURPLE='0;35'
NC='\033[0m'
VERSAO=11
echo "$(tput setaf 10)[Btzinho bot]:$(tput setaf 7) Olá Aluno, serei seu assistente para instalação do Java!;"
echo "$(tput setaf 10)[Btzinho bot]:$(tput setaf 7) Verificando aqui se você possui o Java instalado...;"
java --version
if [ $? -eq 0 ]; then
    echo "$(tput setaf 10)[Btzinho bot]:$(tput setaf 7): Olá você já tem o java instalado!!"

    java --version
    if [ $jdk -lt 11.0.10+9 ]; then
        echo "$(tput setaf 10)[Btzinho bot]:$(tput setaf 7)  Opa! parece que seu java é muito antigo para rodar nossa aplicação, vamos instalar um java mais recente?"
        echo "$(tput setaf 10)[Btzinho bot]:$(tput setaf 7)  Confirme para mim se realmente deseja instalar a nova versão do Java (S/N)?"
        read inst
        if [ \"$inst\" == \"s\" ]; then
            echo "$(tput setaf 10)[Btzinho bot]:$(tput setaf 7)  Ok! Você escolheu instalar a nova versão do Java ;D"
            echo "$(tput setaf 10)[Btzinho bot]:$(tput setaf 7)  Adicionando o repositório!"
            sleep 2
            sudo add-apt-repository ppa:webupd8team/java -y
            clear
            echo "$(tput setaf 10)[Btzinho bot]:$(tput setaf 7)  Atualizando! Quase lá."
            sleep 2
            sudo apt update -y
            clear

            sdk uninstall java [* -lt 11]

            sudo apt install default-jre
            sudo apt install openjdk-11-jre-headless
            -y
            clear
            echo "$(tput setaf 10)[Btzinho bot]:$(tput setaf 7) Java instalado com sucesso!"

        fi

    else
        echo "$(tput setaf 10)[Btzinho bot]:$(tput setaf 7)  Você optou por não instalar a nova versão do Java por enquanto, até a próxima então!"
        exit
    fi
else
    echo "$(tput setaf 10)[Btzinho bot]:$(tput setaf 7) Opa! Não identifiquei nenhuma versão do Java instalado, mas sem problemas, irei resolver isso agora!"
    echo "$(tput setaf 10)[Btzinho bot]:$(tput setaf 7) Confirme para mim se realmente deseja instalar o Java (S/N)?"
    read inst
    if [ \"$inst\" == \"s\" ]; then
        echo "$(tput setaf 10)[Btzinho bot]:$(tput setaf 7)  Ok! Você escolheu instalar o Java ;D"
        echo "$(tput setaf 10)[Btzinho bot]:$(tput setaf 7)  Adicionando o repositório!"
        echo "$(tput setaf 10)[Btzinho bot]:$(tput setaf 7)  porfavor inserir a senha do root!"
        sleep 2
        sudo add-apt-repository ppa:webupd8team/java -y

        echo "$(tput setaf 10)[Btzinho bot]:$(tput setaf 7)  Atualizando! Quase lá."
        sleep 2
        sudo apt update -y

        sudo apt install default-jre
        sudo apt install openjdk-11-jre-headless
        -y

    else
        echo "$(tput setaf 10)[Btzinho bot]:$(tput setaf 7)  Você optou por não instalar o Java por enquanto, até a próxima então!"
        exit
    fi
fi
if [ $? = app-banktracker-1.0-SNAPSHOT-jar-with-dependencies.jar ]; then
    echo "$(tput setaf 10)[Btzinho bot]:$(tput setaf 7) Gostaria de abrir o JAR?;"
    echo "$(tput setaf 10)[Btzinho bot]:$(tput setaf 7) Confirme para mim se realmente deseja Abrir o JAR (S/N)?"
    read inst
    if [ \"$inst\" == \"s\" ]; then
        echo "$(tput setaf 10)[Btzinho bot]:$(tput setaf 7) Abrindo o JAR;"
        cd app-banktracker
        cd target

        java -jar app-banktracker-1.0-SNAPSHOT-jar-with-dependencies.jar

    else
        echo "$(tput setaf 10)[Btzinho bot]:$(tput setaf 7) Você optou por não Abrir o JAR, até a próxima então!"

    fi
else
    echo "$(tput setaf 10)[Btzinho bot]:$(tput setaf 7) você não tem o JAR instalado, Gostaria de Baixar o JAR?;"
    echo "$(tput setaf 10)[Btzinho bot]:$(tput setaf 7) Confirme para mim se realmente deseja Baixar o JAR (S/N)?"
    read inst
    if [ \"$inst\" == \"s\" ]; then
        echo "$(tput setaf 10)[Btzinho bot]:$(tput setaf 7) Baixando o JAR;"

        git clone https://github.com/jean-sousasilva/algoritimos/tree/main/app-banktracker

        echo "$(tput setaf 10)[Btzinho bot]:$(tput setaf 7) JAR instaldo Gostaria de abrir o JAR?;"
        echo "$(tput setaf 10)[Btzinho bot]:$(tput setaf 7) Confirme para mim se realmente deseja Abrir o JAR (S/N)?"
        read inst
        if [ \"$inst\" == \"s\" ]; then
            echo "$(tput setaf 10)[Btzinho bot]:$(tput setaf 7) Abrindo o JAR;"
            cd app-banktracker
            cd target

            java -jar app-banktracker-1.0-SNAPSHOT-jar-with-dependencies.jar

        else
            echo "$(tput setaf 10)[Btzinho bot]:$(tput setaf 7) Você optou por não Abrir o JAR, até a próxima então!"

        fi
    else
        echo "$(tput setaf 10)[Btzinho bot]:$(tput setaf 7) Você optou por não Baixar o JAR, até a próxima então!"
        exit
    fi
fi

#Script docker

docker --version
if [ $? = -eq 0 ]; then
    echo "$(tput setaf 10)[Btzinho bot]:$(tput setaf 7) Opa você não tem o docker instalado!!"
    echo "$(tput setaf 10)[Btzinho bot]:$(tput setaf 7) Confirme para mim se quer instalar o docker (S/N)?"
    read inst
    #não tendo o docker
    if [ \"$inst\" == \"s\" ]; then
        echo "$(tput setaf 10)[Btzinho bot]:$(tput setaf 7) Instalando o docker;"
        sudo apt update
        echo "$(tput setaf 10)[Btzinho bot]:$(tput setaf 7) Atualizando! Quase lá. No proximo passo aceite a instalação"
        sudo apt install docker.io

        echo "$(tput setaf 10)[Btzinho bot]:$(tput setaf 7) Docker instalado!!"
        echo "$(tput setaf 10)[Btzinho bot]:$(tput setaf 7) Confirme para mim se quer Entrar no docker (S/N)?"
        read inst
        if [ \"$inst\" == \"s\" ]; then

            sudo systemctl start docker
            sudo systemctl enable docker
            systemctl -t service

            echo "$(tput setaf 10)[Btzinho bot]:$(tput setaf 7) Entrou no Docker!!"
            echo "$(tput setaf 10)[Btzinho bot]:$(tput setaf 7) Confirme para mim se quer Entrar no MYSQL (S/N)?"
            read inst
            if [ \"$inst\" == \"s\" ]; then
                sudo docker images

                if [ $REPOSITORY && $TAG = mysql && 5.7 ]; then
                    sudo docker run -d -p 3306:3306 --name ConteinerBD -e "MYSQL_DATABASE=banco1" -e "MYSQL_ROOT_PASSWORD=urubu100" mysql:5.7

                    sudo docker stats ConteinerBD
                    container = CONTAINER ID

                    sudo docker exec -it container bash

                    echo "$(tput setaf 10)[Btzinho bot]:$(tput setaf 7) seu container foi executado no mysql com sucesso!!"
                    echo "$(tput setaf 10)[Btzinho bot]:$(tput setaf 7) Confirme para mim se quer starta o container no MYSQL (S/N)?"
                    read inst
                    if [ \"$inst\" == \"s\" ]; then
                        mysql -u root -p

                    else
                        echo "$(tput setaf 10F)[Btzinho bot]:$(tput setaf 7) Você optou por não starta o container no MYSQL, até a próxima então!"
                        exit
                    fi
                else

                    echo "$(tput setaf 10)[Btzinho bot]:$(tput setaf 7) você não tem o MYSQL instalado!!"
                    echo "$(tput setaf 10)[Btzinho bot]:$(tput setaf 7) Confirme para mim se você quer Instalar (S/N)?"
                    read inst
                    if [ \"$inst\" == \"s\" ]; then
                        sudo docker pull mysql:5.7
                        echo "$(tput setaf 10)[Btzinho bot]:$(tput setaf 7) Sua imagem do MYSQL foi instalada!!"
                        echo "$(tput setaf 10)[Btzinho bot]:$(tput setaf 7) Confirme para mim se quer Entrar no MYSQL (S/N)?"
                        read inst
                        if [ \"$inst\" == \"s\" ]; then
                            if [ $REPOSITORY && $TAG = mysql && 5.7 ]; then
                                sudo docker run -d -p 3306:3306 --name ConteinerBD -e "MYSQL_DATABASE=banco1" -e "MYSQL_ROOT_PASSWORD=urubu100" mysql:5.7

                                sudo docker stats ConteinerBD
                                container = CONTAINER ID

                                sudo docker exec -it container bash

                                echo "$(tput setaf 10)[Btzinho bot]:$(tput setaf 7) seu container foi executado no mysql com sucesso!!"
                                echo "$(tput setaf 10)[Btzinho bot]:$(tput setaf 7) Confirme para mim se quer starta o container no MYSQL (S/N)?"
                                read inst
                                if [ \"$inst\" == \"s\" ]; then
                                    mysql -u root -p

                                else
                                    echo "$(tput setaf 10F)[Btzinho bot]:$(tput setaf 7) Você optou por não starta o container no MYSQL, até a próxima então!"
                                    exit
                                fi

                            fi

                        else
                            echo "$(tput setaf 10)[Btzinho bot]:$(tput setaf 7) Você optou por não starta o MYSQL, até a próxima então!"
                            exit
                        fi
                    else

                        echo "$(tput setaf 10)[Btzinho bot]:$(tput setaf 7) Você optou por não Baixar o MYSQL, até a próxima então!"
                        exit
                    fi
                fi

            else
                echo "$(tput setaf 10)[Btzinho bot]:$(tput setaf 7) Você optou por não Abrir o MSQL, até a próxima então!"
                exit
            fi

        else

            echo "$(tput setaf 10)[Btzinho bot]:$(tput setaf 7) Você optou por não Abrir o docker, até a próxima então!"
            exit

        fi
    else
        echo "$(tput setaf 10)[Btzinho bot]:$(tput setaf 7) Você optou por não Baixar o DOCKER, até a próxima então!"
        exit
    fi
#ja tendo o docker
else
    echo "$(tput setaf 10)[Btzinho bot]:$(tput setaf 7) você Ja tem o Docker instalado!!"
    echo "$(tput setaf 10)[Btzinho bot]:$(tput setaf 7) Confirme para mim se quer Entrar no docker (S/N)?"
    read inst
    if [ \"$inst\" == \"s\" ]; then

        sudo systemctl start docker
        sudo systemctl enable docker
        systemctl -t service

        echo "$(tput setaf 10)[Btzinho bot]:$(tput setaf 7) Entrou no Docker!!"
        echo "$(tput setaf 10)[Btzinho bot]:$(tput setaf 7) Confirme para mim se quer Entrar no MYSQL (S/N)?"
        read inst
        if [ \"$inst\" == \"s\" ]; then
            sudo docker images

            if [ $REPOSITORY && $TAG = mysql && 5.7 ]; then
                sudo docker run -d -p 3306:3306 --name ConteinerBD -e "MYSQL_DATABASE=banco1" -e "MYSQL_ROOT_PASSWORD=urubu100" mysql:5.7

                sudo docker stats ConteinerBD
                container = CONTAINER ID

                sudo docker exec -it container bash

                echo "$(tput setaf 10)[Btzinho bot]:$(tput setaf 7) seu container foi executado no mysql com sucesso!!"
                echo "$(tput setaf 10)[Btzinho bot]:$(tput setaf 7) Confirme para mim se quer starta o container no MYSQL (S/N)?"
                read inst
                if [ \"$inst\" == \"s\" ]; then
                    mysql -u root -p

                else
                    echo "$(tput setaf 10F)[Btzinho bot]:$(tput setaf 7) Você optou por não starta o container no MYSQL, até a próxima então!"
                    exit
                fi
            else

                echo "$(tput setaf 10)[Btzinho bot]:$(tput setaf 7) você não tem o MYSQL instalado!!"
                echo "$(tput setaf 10)[Btzinho bot]:$(tput setaf 7) Confirme para mim se você quer Instalar (S/N)?"
                read inst
                if [ \"$inst\" == \"s\" ]; then
                    sudo docker pull mysql:5.7
                    echo "$(tput setaf 10)[Btzinho bot]:$(tput setaf 7) Sua imagem do MYSQL foi instalada!!"
                    echo "$(tput setaf 10)[Btzinho bot]:$(tput setaf 7) Confirme para mim se quer Entrar no MYSQL (S/N)?"
                    read inst
                    if [ \"$inst\" == \"s\" ]; then
                        if [ $REPOSITORY && $TAG = mysql && 5.7 ]; then
                            sudo docker run -d -p 3306:3306 --name ConteinerBD -e "MYSQL_DATABASE=banco1" -e "MYSQL_ROOT_PASSWORD=urubu100" mysql:5.7

                            sudo docker stats ConteinerBD
                            container = CONTAINER ID

                            sudo docker exec -it container bash

                            echo "$(tput setaf 10)[Btzinho bot]:$(tput setaf 7) seu container foi executado no mysql com sucesso!!"
                            echo "$(tput setaf 10)[Btzinho bot]:$(tput setaf 7) Confirme para mim se quer starta o container no MYSQL (S/N)?"
                            read inst
                            if [ \"$inst\" == \"s\" ]; then
                                mysql -u root -p

                            else
                                echo "$(tput setaf 10)[Btzinho bot]:$(tput setaf 7) Você optou por não starta o container no MYSQL, até a próxima então!"
                                exit
                            fi
                        fi
                    else
                        echo "$(tput setaf 10)[Btzinho bot]:$(tput setaf 7) Você optou por não Abrir o MSQL, até a próxima então!"
                        exit
                    fi
                else

                    echo "$(tput setaf 10)[Btzinho bot]:$(tput setaf 7) Você optou por não Baixar o MYSQL, até a próxima então!"
                    exit
                fi
            fi

        else
            echo "$(tput setaf 10)[Btzinho bot]:$(tput setaf 7) Você optou por não Abrir o MSQL, até a próxima então!"
            exit
        fi

    else

        echo "$(tput setaf 10)[Btzinho bot]:$(tput setaf 7) Você optou por não Abrir o docker, até a próxima então!"
        exit

    fi
fi

# ===================================================================
# Todos direitos reservados para o autor: Dra. Profa. Marise Miranda.
# Sob licença Creative Commons @2020
# Podera modificar e reproduzir para uso pessoal.
# Proibida a comercialização e a exclusão da autoria.
# ===================================================================
