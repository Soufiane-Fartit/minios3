# minios3
s3 compatible storage



> Build Docker Image

```
docker build -t minios3 .
```

> Tag Docker Image

```
docker tag minios3 registry.heroku.com/minios3/web
```

> Push Docker Image

```
docker push registry.heroku.com/minios3/web
```

> Deploy on Heroku

```
heroku container:release web -a minios3
```
