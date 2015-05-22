(* palindrome.ml *)

(* Write a function that detects palindromes. *)

open Printf;;

(* OCaml doesn't support overloading functions *sadface* *)
let is_palindrome_array a =
  let rec test i j =
    match i < j with
    | true when a.(i) = a.(j) -> test (i + 1) (j - 1)
    | false -> true
    | _ -> false
  in
  test 0 (Array.length a - 1);;

let is_palindrome_string s =
  let rec test i j =
    match i < j with
    | true when s.[i] = s.[j] -> test (i + 1) (j - 1)
    | false -> true
    | _ -> false
  in
  test 0 (String.length s - 1);;

let is_palindrome_list l =
  l = List.rev l;;

let print_result out = function
  | true -> output_string out "is a palindrome"
  | false -> output_string out "is not a palindrome";;

let main () =
  printf "[1; 2; 3; 4; 5] %a\n" print_result (is_palindrome_list [1; 2; 3; 4; 5]);
  printf "\"racecar\" %a\n" print_result (is_palindrome_string "racecar");
  printf "[|\"foo\"; \"bar\"; \"foo\"|] %a\n" print_result (is_palindrome_array [|"foo"; "bar"; "foo"|]);
  printf "[1; 1; 3; 3; 1; 1] %a\n" print_result (is_palindrome_list [1; 1; 3; 3; 1; 1]);
  printf "[\"a\"; \"b\"; \"c\"] %a\n" print_result (is_palindrome_list ["a"; "b"; "c"]);
  exit 0;;
main ();;

