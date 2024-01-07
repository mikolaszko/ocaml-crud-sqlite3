type database = 
  {dbd : Sqlite3.db; created : (string, unit) Hashtbl.t}
let () = print_endline (Sqlite3.sqlite_version_info ());

