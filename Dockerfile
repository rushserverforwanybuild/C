FROM centos
RUN yum install glibc.i686 -y
RUN yum install unzip -y
RUN yum install wget -y 
RUN useradd -m steam
RUN su - steam
RUN wget https://pse.is/E8WRB
RUN mv E8WRB Rushserver.zip
RUN unzip Rushserver.zip
RUN cd Steam/RushDeployment
RUN chmod u+x startrust.sh
CMD sh startrust.sh

EXPOSE 28015
EXPOSE 28016
