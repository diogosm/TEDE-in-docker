FROM tomcat:7

COPY install.sh /install.sh
COPY tede /tede
COPY tede_tomcat /tede_tomcat

RUN chmod a+x /install.sh
RUN /install.sh
