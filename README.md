securimageVoices
================

Generate voices for [securimage](https://github.com/dapphp/securimage) using [Mac OSX Text-to-Speech](http://developer.apple.com/library/mac/#documentation/Darwin/Reference/ManPages/man1/say.1.html) and [SoX](http://sox.sourceforge.net/)

* install sox (if you use brew, just run brew install sox)
* go to System Preferences -> Speech -> Text to Speech
* install voice(s) you want to use with securimage
* open secureimageVoices/voices and create a new folder, named as the voice you installed (a few samples are already their, just delete them, if you feel like it)
* run generate.sh

cleanAll.sh will remove all generated wav file
