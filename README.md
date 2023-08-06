# Ubuntu 22.04

## Build
```
cd ubuntu23
docker build --tag vipstest:22.04 -f Dockerfile .
```

##  Run
```
docker run -it vipstest:22.04
```

## Testing HEIF
At this point you should be in the bash terminal of the container
```
# Download a sample jpg file
wget https://sample-videos.com/img/Sample-jpg-image-2mb.jpg

# Convert it
vips heifsave Sample-jpg-image-2mb.jpg he.heif
```

# Ubuntu 23.10
```
cd ubuntu23
docker build --tag vipstest:23.10 -f Dockerfile .
```

##  Run
```
docker run -it vipstest:23.10
```