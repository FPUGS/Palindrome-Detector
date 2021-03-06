# Palindrome-Detector
[![Join the chat at https://gitter.im/FPUGS](https://badges.gitter.im/Join%20Chat.svg)](https://gitter.im/FPUGS?utm_source=badge&utm_medium=badge&utm_campaign=pr-badge&utm_content=badge)

A Solution to [FPUGS/Palindrome-Detector](https://github.com/FPUGS/Palindrome-Detector) in OCaml.

OCaml had some problems with this one because it doesn't support function overloading. This meant I had to implement a different solution for each type of input. However, this also meant that I could implement more performant solutions for arrays and strings vs lists, since lists don't have random access.

## Run the Things!

1. [Install OCaml](http://ocaml.org/)
2. Make!

  ```bash
  make
  ```
3. Run!

  ```bash
  ./palindrome
  ```

Amaze!

