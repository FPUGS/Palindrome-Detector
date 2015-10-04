# Docker Notes

use docker image from [https://registry.hub.docker.com/u/gomagames/haxe](https://registry.hub.docker.com/u/gomagames/haxe)

````
docker pull gomagames/haxe
````

### Run haxe

````
docker run -it --rm -v "$(pwd)/share/Projects/FPUGS/Palindrome-Detector":/source -w /source gomagames/haxe haxe build.hxml
````