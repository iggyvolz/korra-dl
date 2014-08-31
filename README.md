Download episodes of The Legend of Korra on the terminal, directly from the Nickelodeon API!

Prerequisites
=============
*ffmpeg
*curl
*python (2 or 3)
*git (optional)

If not pre-installed, all three of these can be installed quickly using [brew][1], [apt-get][2], or [chocolatey][3].  Run `(brew install/sudo apt-get install/cinst) ffmpeg curl python git`

Note: Mac already includes curl, python, and git, so there is no need to install these using brew.

Additional note: Ubuntu felt the need to rename ffmpeg and make changes to it.  To install the actual ffmpeg, run `sudo apt-add-repository ppa:jon-severinsson/ffmpeg;sudo apt-get update` before attempting to install ffmpeg.

Another additional note: Has not been tested on Windows.  Windows support is experimental as I don't have a Windows computer.  Feel free to report issues or make pull requests.

How to run
==========
First, run git clone https://github.com/iggyvolz/korra-dl.git and cd into it (or download the script [directly][4]).  Then, you may simply run `./korra-dl [episode number] [output file]` (Windows users and Mac/Linux users with Python installed elsewhere than /usr/bin/python should use `python korra-dl [episode number] [output file]`).  You can also move fetch-dl into your $PATH to run it anywhere!

[1]: http://brew.sh
[2]: http://www.ubuntu.com/
[3]: http://chocolatey.org/
[4]: https://raw.githubusercontent.com/iggyvolz/fetch-dl/master/fetch-dl
