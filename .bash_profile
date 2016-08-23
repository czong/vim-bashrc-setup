alias ll="ls -lh"

# added by Anaconda2 4.0.0 installer
export PATH="$HOME/anaconda2/bin:$HOME/bin:$PATH"
export PYTHONPATH="$HOME/anaconda2/lib/python2.7/site-packages:$PYTHONPATH"

# enable the ssl certificate
export REQUESTS_CA_BUNDLE="$HOME/.cert/ca-bundle.crt"
export SSL_CERT_DIR="$HOME/.cert"
export SSL_CERT_FILE="$HOME/.cert/ca-bundle.crt"

# enable 256 colors for terminal
export TERM="xterm-256color"
export CLICOLOR=1
#export LSCOLORS=ExFxBxDxCxegedabagacad
export LSCOLORS=gxBxhxDxfxhxhxhxhxcxcx

#avoid the .pyc files
export PYTHONDONTWRITEBYTECODE=1

