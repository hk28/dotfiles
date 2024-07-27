eval "$(ssh-agent -s)"
/usr/bin/keychain ~/.ssh/scala
source ~/.keychain/$HOSTNAME-sh
