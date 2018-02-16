# Start Chromium.
# Without setting the password-store it keeps bugging
# me with a message 'Enter password to unlock your
# keyring'.

chromium-browser --password-store=basic %U

# Clear the cache

rm -r ~/.cache/chromium

# Delete everything except some
# whitelisted files

find ~/.config/chromium/Default/    \
     -mindepth 1                    \
     ! -name 'Bookmarks'            \
     ! -name 'Preferences'          \
     ! -name 'Secure Preferences'   \
     ! -name 'Web Data'             \
     -exec rm -rv {} +
