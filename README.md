Current version: 2014.09.20.3

[![Build Status](https://drone.io/github.com/iggyvolz/korra-dl/status.png)](https://drone.io/github.com/iggyvolz/korra-dl/latest)

Download episodes of The Legend of Korra on the terminal, directly from the Nickelodeon API!

Prerequisites
=============
*ffmpeg
*python (2 or 3)
*git (optional)

If not pre-installed, all three of these can be installed quickly using [brew][1], [apt-get][2], or [chocolatey][3].  Run `(brew install/sudo apt-get install/cinst) ffmpeg python git`

Note: Mac already includes python and git, so there is no need to install these using brew.

Additional note: Ubuntu felt the need to rename ffmpeg and make changes to it.  To install the actual ffmpeg, run `sudo apt-add-repository ppa:jon-severinsson/ffmpeg;sudo apt-get update` before attempting to install ffmpeg.

Another additional note: Has not been tested on Windows.  Windows support is experimental as I don't have a Windows computer.  Feel free to report issues or make pull requests.

How to run
==========
First, run git clone https://github.com/iggyvolz/korra-dl.git and cd into it (or download the script [directly][4]).  Then, you may simply run `./korra-dl [episode number] [output type] [output file]` (Windows users and Mac/Linux users with Python installed elsewhere than /usr/bin/python should use `python korra-dl [episode number] [output type] [output file]`).  You can also move korra-dl into your $PATH to run it anywhere, without the "./"!

Output types
============
Nick offers 7 output types for download, and these are all available using the output type parameter (the second parameter).  The higher the format number, the better quality the video is, and the longer it takes to download:
| Format | Width | Height | Bitrate |
|--------|-------|--------|---------|
| 1      | 384   | 216    | 300     |
| 2      | 384   | 216    | 400     |
| 3      | 512   | 288    | 750     |
| 4      | 640   | 360    | 1200    |
| 5      | 768   | 432    | 1700    |
| 6      | 960   | 540    | 2200    |
| 7      | 1280  | 720    | 3500    |

[1]: http://brew.sh
[2]: http://www.ubuntu.com/
[3]: http://chocolatey.org/
[4]: https://raw.githubusercontent.com/iggyvolz/fetch-dl/master/fetch-dl
