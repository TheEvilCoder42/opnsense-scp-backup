#!/bin/sh

if [ $(id -u) -eq {USERID} ]; then
	APPENDIX="$(hostname)-$(date +"%Y%m%dT%H%M%S")"

	echo "Uploading config-$APPENDIX.xml"
	scp /conf/config.xml {USER}@{HOST}:{PATH}/config-$APPENDIX.xml
	#sftp {USER}@{HOST}:{PATH} <<< $"put /conf/config.xml config-$APPENDIX.xml"
fi
