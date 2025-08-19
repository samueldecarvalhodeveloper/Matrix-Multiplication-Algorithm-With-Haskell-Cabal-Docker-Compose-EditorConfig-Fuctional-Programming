open Matrix_multiplication.Matrix_multiplication_adapter

let () =
  let matrix_to_be_multiplied_one = [|
    [|1; 2; 3; 4; 5|];
    [|6; 7; 8; 9; 10|];
    [|11; 12; 13; 14; 15|];
    [|16; 17; 18; 19; 20|]
  |] in

  let matrix_to_be_multiplied_two = [|
    [|1; 2; 3; 4|];
    [|5; 6; 7; 8|];
    [|9; 10; 11; 12|];
    [|13; 14; 15; 16|];
    [|17; 18; 19; 20|]
  |] in

  let multiplied_matrix =
    MatrixMultiplicationAdapter.get_multiplied_matrix
      matrix_to_be_multiplied_one matrix_to_be_multiplied_two in

  print_endline "Matrix Multiplication:\n";

  print_endline "Matrix To Be Multiplied One:\n";

  print_endline "+--------------------+";

  Array.iter (fun matrix_row ->
    print_string "| ";

    Array.iteri (fun j matrix_value ->
      Printf.printf "%2d" matrix_value;

      if j < Array.length matrix_row - 1 then print_string ", "
    ) matrix_row;

    print_endline " |"
  ) matrix_to_be_multiplied_one;

  print_endline "+--------------------+\n";

  print_endline "Matrix To Be Multiplied Two:\n";

  print_endline "+----------------+";

  Array.iter (fun matrix_row ->
    print_string "| ";

    Array.iteri (fun j matrix_value ->
      Printf.printf "%2d" matrix_value;

      if j < Array.length matrix_row - 1 then print_string ", "
    ) matrix_row;

    print_endline " |"
  ) matrix_to_be_multiplied_two;

  print_endline "+----------------+\n";

  print_endline "Multiplied Matrix:\n";

  print_endline "+-----------------------+";

  Array.iter (fun matrix_row ->
    print_string "|";

    Array.iteri (fun j matrix_value ->
      Printf.printf "%4d" matrix_value;

      if j < Array.length matrix_row - 1 then print_string ", "
    ) matrix_row;

    print_endline " |"
  ) multiplied_matrix;

  print_endline "+-----------------------+";;
