if [ -f ~/.bashrc ]; then
  source ~/.bashrc
fi

# Setting PATH for Python 2.7
# The orginal version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/2.7/bin:${PATH}"
export PATH

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
export PATH=/Users/nielsdehoog/.rvm/gems/ruby-1.9.3-p392/bin:/Users/nielsdehoog/.rvm/gems/ruby-1.9.3-p392@global/bin:/Users/nielsdehoog/.rvm/rubies/ruby-1.9.3-p392/bin:/Users/nielsdehoog/.rvm/bin:/Library/Frameworks/Python.framework/Versions/2.7/bin:/Library/Frameworks/Python.framework/Versions/2.7/bin:/opt/local/bin:/opt/local/sbin:/usr/local/bin:/usr/local/sbin:/usr/local/mysql/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/Applications/Xcode.app/Contents/Developer/usr/bin:/usr/local/mysql/bin
