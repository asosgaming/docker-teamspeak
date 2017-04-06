## ASoS Gaming TeamSpeak 3 Docker Image

[![](https://images.microbadger.com/badges/version/asos/teamspeak.svg)](https://microbadger.com/images/asos/teamspeak "Get your own version badge on microbadger.com")
[![](https://images.microbadger.com/badges/image/asos/teamspeak.svg)](https://microbadger.com/images/asos/teamspeak "Get your own image badge on microbadger.com")

Docker container for the TeamSpeak 3 Server.

TeamSpeak 3 Homepage: https://www.teamspeak.com/teamspeak3.html


* Installation Instuctions

*      More Information will be added later.
      As of right now this image is built to use custom variables.
      These variables must be set in your docker.compose file.   
      If you do not use a docker-compose file this will not work for you
      This build was made to be used with MariaDB or MySQL only
      You may create a folder on your docker host at /storate/teamspeak and assign permissions to 4000:4000 (teamspeak:teamspeak)
      Upload your backups and license keys to this directory on the docker host.

------------------------UPDATES---------------------------

Instituting Changes to allow for Docker Image Tags in build environment.
Completed Update of Teamspeak Server to latest version allowed for use with Sinusbot.
Versioning added to match Sinusbot Versions. For best results make sure both versions are the same.

----------------------------------------------------------

* License

