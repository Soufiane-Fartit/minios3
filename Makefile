deploy:
        docker build -t minios3 .
        docker tag minios3 registry.heroku.com/minios3/web
        docker push registry.heroku.com/minios3/web
        heroku container:release web -a minios3
