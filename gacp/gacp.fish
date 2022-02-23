function gacp --description 'git add all, commit arg, and push'
  argparse m/message -- $argv

  command git add .

  if set -q _flag_message
    command git commit -m $argv[1]
  else
    command git commit -m "."
  end
  
  command git push

end
