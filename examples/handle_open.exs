handle_open = fn
  {:ok, file} -> "Read Data: #{IO.read(file, :line)}"
  {_, enoent} -> "Error: #{:file.format_error(enoent)}"
end

IO.puts handle_open.(File.open("hello.exs"))
IO.puts handle_open.(File.open("nonexistent_file.exs"))
