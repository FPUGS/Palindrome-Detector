# Docker Notes

use official docker image from [https://registry.hub.docker.com/_/haskell](https://registry.hub.docker.com/_/haskell)

````
docker pull haskell
````

### Run ghc

````
docker run -it --rm -v "$(pwd)/share/Projects/FPUGS/Palindrome-Detector":/source haskell runghc /source/palindrome.hs
````