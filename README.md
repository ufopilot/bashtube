bashtube
===========

.. image:: https://img.shields.io/pypi/v/mps-youtube.svg
    :target: https://pypi.python.org/pypi/mps-youtube
.. image:: https://img.shields.io/pypi/dm/mps-youtube.svg
    :target: https://pypi.python.org/pypi/mps-youtube
.. image:: https://img.shields.io/pypi/wheel/mps-youtube.svg
    :target: http://pythonwheels.com/
    :alt: Wheel Status


Features
--------
- Search and play audio/video from YouTube
- Create, save and play local playlists
- Download and convert to mp3
- Works with Windows
- Requires mplayer, ffmpeg, ffprobe and youtube-dl

This project is a terminal based program to search, stream and download music.  This implementation uses YouTube as a source of content and can play and download video as well as audio. 


Screenshots
-----------


Search
~~~~~~
.. image:: http://np1.github.io/mpsyt-images2/std-search.png

A standard search is performed by entering ``/`` followed by search terms.

Local Playlists
~~~~~~~~~~~~~~~
.. image:: http://np1.github.io/mpsyt-images2/local-playlists.png

Search result items can easily be stored in local playlists.

YouTube Playlists
~~~~~~~~~~~~~~~~~
.. image:: http://np1.github.io/mpsyt-images2/playlist-search.png

YouTube playlists can be searched and played or saved as local playlists.

Download
~~~~~~~~
.. image:: http://np1.github.io/mpsyt-images2/download.png

Content can be downloaded in various formats and resolutions.

Comments
~~~~~~~~
.. image:: http://np1.github.io/mpsyt-images2/comments.png

A basic comments browser is available to view YouTube user comments.

Music Album Matching
~~~~~~~~~~~~~~~~~~~~

.. image:: http://np1.github.io/mpsyt-images2/album-1.png

.. image:: http://np1.github.io/mpsyt-images2/album-2.png

An album title can be specified and mps-youtube will attempt to find matches for each track of the album, based on title and duration.  Type ``help search`` for more info.

Customisation
~~~~~~~~~~~~~

.. image:: http://np1.github.io/mpsyt-images2/customisation2.png

Search results can be customised to display additional fields and ordered by various criteria.

This configuration was set up using the following commands::

    set order views
    set columns user:14 date comments rating likes dislikes category:9 views

Type ``help config`` for help on configuration options



Installation
------------
Linux
~~~~~

**Note**: ``~/.local/bin`` should be in your ``PATH`` for ``--user`` installs.

Using `pip <http://www.pip-installer.org>`_::

    $ pip3 install --user mps-youtube

To install the experimental development version and try the latest features::

    $ pip3 install --user -U git+https://github.com/mps-youtube/mps-youtube.git

Installing youtube-dl is highly recommended::

    $ pip3 install --user youtube-dl

For mpris2 support, install the python bindings for dbus and gobject::

    $ pip3 install --user dbus-python pygobject

Ubuntu
~~~~~~
You can install mps-youtube directly from the official repositories:

    [sudo] apt install mps-youtube

macOS X
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Install mpv (recommended player) with `Homebrew <http://brew.sh>`_::

    brew install mpv

Alternately, you can install mplayer with `MacPorts <http://www.macports.org>`_::

    sudo port install MPlayer

Or with `Homebrew <http://brew.sh>`_::

    brew install mplayer

Additional Windows installation notes
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

As an alternative to installing with pip, there is a standalone binary available. Go to `Releases <https://github.com/np1/mps-youtube/releases>`_ and download mpsyt-VERSION.exe under downloads for the latest release.

Install the python `colorama <https://pypi.python.org/pypi/colorama>`_ module to get colors (optional)::

    pip3 install colorama

Mpsyt requires a player to use as a backend, with either mpv or mplayer supported. Mpv is the recommended option.

Mpv can be downloaded from https://mpv.srsfckn.biz/

Extract both ``mpv.exe`` and ``mpv.com`` to the same folder as ``mpsyt.exe`` or to a folder in the system path.

Alternately, mplayer can be downloaded from http://oss.netfarm.it/mplayer

Extract the ``mplayer.exe`` file, saving it to the folder that ``mpsyt.exe`` resides in (usually ``C:\PythonXX\Scripts\``) or to a folder in the system path.

Run via Docker container
~~~~~~~~~~~~~~~~~~~~~~~~

Using `Docker <http://www.docker.com>`_, run with::

    sudo docker run --device /dev/snd -it --rm --name mpsyt rothgar/mpsyt

Additional Docker notes
~~~~~~~~~~~~~~~~~~~~~~~

If you would like to locally build the container you can run the following steps

Check out this repo::

    git clone https://github.com/np1/mps-youtube.git

Enter the directory and run docker build::

    cd mps-youtube
    sudo docker build -t mpsyt .

Now run the container interactively with::

    sudo docker run -v /dev/snd:/dev/snd -it --rm --privileged --name mpsyt mpsyt

In order to have access to the local sound device (/dev/snd) the container needs to be privileged.

Upgrading
---------

Upgrade pip installation::

    [sudo] pip3 install mps-youtube --upgrade

Usage
-----

mps-youtube is run on the command line using the command::

    mpsyt

Enter ``h`` from within the program for help.

IRC
---

An IRC channel `#mps-youtube` for the project is available on Freenode (chat.freenode.net:6697). You can join directly by clicking `this link <https://webchat.freenode.net/?randomnick=1&channels=%23mps-youtube&uio=d4>`_.