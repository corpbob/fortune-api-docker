FROM centos
RUN curl http://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm -o epel.rpm
RUN rpm -ivh epel.rpm 
RUN yum -y install fortune-mod nodejs git less  which
RUN adduser node
RUN mkdir /.npm && mkdir /src
RUN chmod -R a+rxw src
RUN chmod -R a+rxw /.npm
RUN chown -R 1000:1000 src
USER 1000
EXPOSE 3000
COPY run.sh /src
ENTRYPOINT exec /src/run.sh
#ENTRYPOINT tail -f /fortune-api-demo/README.md
