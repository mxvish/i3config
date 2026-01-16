echo ''

check_diff(){
  local filename="$1"
  local targetpath="$2$filename"

  diff -q $filename $targetpath 
}

if [ "$(uname)" = "Linux" ]; then
  check_diff "config" "/home/$HOSTNAME/.config/i3/"
  check_diff "i3status.conf" "/etc/"
fi
