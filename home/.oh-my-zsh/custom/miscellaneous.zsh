# Don't allow ^D to exit the shell.
setopt IGNORE_EOF

function serve {
  port="${1:-3000}"
  ruby -r webrick -e "s = WEBrick::HTTPServer.new(:Port => $port, :DocumentRoot => Dir.pwd); trap('INT') { s.shutdown }; s.start"
}

function recompletions {
  local f
  f=(~/.oh-my-zsh/completions/*(.))
  unfunction $f:t 2> /dev/null
  autoload -U $f:t
}
