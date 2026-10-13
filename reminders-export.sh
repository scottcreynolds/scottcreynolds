(
  umask 077
  export_tmp=$(mktemp "$HOME/Desktop/reminders-export.XXXXXX") || exit 1

  if osascript -l JavaScript "$HOME/Downloads/export-reminders.js" > "$export_tmp"; then
    mv -f "$export_tmp" "$HOME/Desktop/reminders-export.json"
  else
    rm -f "$export_tmp"
    exit 1
  fi
)