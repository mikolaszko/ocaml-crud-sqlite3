(lang dune 3.12)

(name crud_sqlite3)

(generate_opam_files true)

(source
 (github username/reponame))

(authors "Author Name")

(maintainers "Maintainer Name")

(license LICENSE)

(documentation https://url/to/documentation)

(package
 (name crud_sqlite3)
 (synopsis "A short synopsis")
 (description "A longer description")
 (depends ocaml dune sqlite3 conf-sqlite3 )
 (tags
  (topics "to describe" your project)))

; See the complete stanza docs at https://dune.readthedocs.io/en/stable/dune-files.html#dune-project
