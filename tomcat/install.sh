#!/bin/bash

set -e

mkdir -p /var/dspace
ln -s /var/dspace /var/dspace-base
chmod a+w -R /var/dspace*

cp -r /tede/* /var/dspace/
chmod a+w -R /var/dspace/*
chmod a+x -R /var/dspace/bin

cd $CATALINA_HOME/webapps/ROOT
rm -rf *
cp -r /tede_tomcat/ROOT/* .

cp -r /var/dspace/webapps/solr $CATALINA_HOME/webapps/
cp -r /var/dspace/webapps/oai $CATALINA_HOME/webapps/
#cp -r /tede_tomcat/oai/ $CATALINA_HOME/webapps/
#cp -r /tede_tomcat/solr/ $CATALINA_HOME/webapps/

rm -rf /tede_tomcat/
rm -rf /tede

exit 0
