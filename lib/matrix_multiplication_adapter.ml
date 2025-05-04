module MatrixMultiplicationAdapter = struct
  let get_multiplied_matrix matrix_one matrix_two =
    let matrix_one_rows = Array.length matrix_one in
    let matrix_one_columns = Array.length matrix_one.(0) in
    let matrix_two_columns = Array.length matrix_two.(0) in

    let multiplied_matrix = Array.make_matrix matrix_one_rows matrix_two_columns 0 in

    for current_matrix_one_row_value_index = 0 to matrix_one_rows - 1 do
      for current_matrix_two_column_value_index = 0 to matrix_two_columns - 1 do
        for current_matrix_one_column_value_index = 0 to matrix_one_columns - 1 do
          multiplied_matrix.(current_matrix_one_row_value_index).(current_matrix_two_column_value_index) <-
            multiplied_matrix.(current_matrix_one_row_value_index).(current_matrix_two_column_value_index) +
              matrix_one.(current_matrix_one_row_value_index).(current_matrix_one_column_value_index) *
              matrix_two.(current_matrix_one_column_value_index).(current_matrix_two_column_value_index)
        done
      done
    done;

    multiplied_matrix;;
end
