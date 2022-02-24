function icons --description 'restore custom icons after app updates'
  argparse o/options a/all -- $argv

  set -l choices 
  set -l confirmed
  set -l failed
  set -l selected $argv

  for folder in $HOME/Documents/AppIcons/custom/*
    set -a choices (string split -- / $folder)[-1]
  end
  
  if begin; set -q _flag_options; or test (count $argv) -lt 1; end
    if set -q _flag_all
      set selected $choices
    else 
      printf %s\n $choices
      read --prompt "echo 'Choose option(s) from above: ' " -a -l choice
      for c in $choice
        set -a selected $c
      end
    end
  end

  for i in $selected
    if not contains $i $choices
      set -a failed $i
      echo "Selected $i is not an option. Continuing..."
    else 
      cp -f $HOME/Documents/AppIcons/custom/$i/*.icns /Applications/$i.app/Contents/Resources/
      touch /Applications/$i.app
      set -a confirmed $i
    end
  end

  echo "Successfully updated icons:"
  echo (count $confirmed) $confirmed
  echo "Failed updated options"
  echo (count $failed) $failed
end

