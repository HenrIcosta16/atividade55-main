# Flask e PostgreSQL com Docker

Este projeto configura uma aplicação Flask que se conecta a um banco de dados PostgreSQL, ambos rodando em containers Docker.

## Passo 1: Construir a imagem da aplicação Flask

    No diretório raiz do projeto, execute o seguinte comando para construir a imagem da aplicação Flask:

    docker run --name postgres-db --network flask-postgres-network -d -p 5432:5432 flask-postgres-db


    docker run --name flask-api --network flask-postgres-network -d -p 5000:5000 -e SQLALCHEMY_DATABASE_URI="postgresql://flaskuser:flaskpass@postgres-db:5432/flaskdb" flask-app


        post
            http://localhost:5000/users

        
            file:///home/Henrique/Pictures/Screenshots/Screenshot%20from%202025-07-25%2018-12-57.png


        put
            http://localhost:5000/users/1

            file:///home/Henrique/Pictures/Screenshots/Screenshot%20from%202025-07-25%2018-14-15.png


        delete
            http://localhost:5000/users/1


            file:///home/Henrique/Pictures/Screenshots/Screenshot%20from%202025-07-25%2018-15-25.png



# com docker composed 
 
  sudo docker-compose up --build

  Henrix16@Henrix16:~/Downloads/atividade44-main$ cd ~/Downloads/atividade44-main/app sudo docker-compose up --build

# crie um diretorio demonstrando as imagens funcionando com  o endpoint