Fold@Home Client Docker Image
=============================

To build and run the image

```
docker build . -t fah
docker run -d --network host --name fahinstance fah
```

When you want to pause the client then continue it you can use docker commands for that

```
docker pause fahinstance
docker unpause fahinstance
```
