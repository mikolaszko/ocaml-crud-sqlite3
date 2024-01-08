open Sqlite3
open Printf

let () = print_endline "Hello World"
let assert_ok rc = assert (rc = Rc.OK)
let db = db_open "t_exec";;

for i = 0 to 10 do
  print_int 5;
  try
    let drop = sprintf "DROP TABLE IF EXISTS tbl%d" i
    and sql =
      sprintf "CREATE TABLE tbl%d (a varchar(1), b INTEGER, c FLOAT)" i
    in
    printf "%d %s\n%!" i sql;
    assert_ok (exec db drop);
    match exec db sql ~cb:(fun _ _ -> print_endline "???") with
    | Rc.OK -> ()
    | _ ->
        printf "Failed: %s\n" (errmsg db);
        assert false
  with xcp -> print_endline (Printexc.to_string xcp)
done
