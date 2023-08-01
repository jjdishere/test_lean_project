import Lake
open Lake DSL

package «new_project» {
  -- add package configuration options here
}

lean_lib «NewProject» {
  -- add library configuration options here
}

@[default_target]
lean_exe «new_project» {
  root := `Main
}
