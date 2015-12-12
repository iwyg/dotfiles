shebang

if test ! `which composer`; then 
    message "Installing composer..."
    curl -fSL | php
else
    message "Updating composer..."
    composer self-update
fi
