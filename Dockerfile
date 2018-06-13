FROM openjdk:8-jdk

RUN apt update
RUN apt install -y cvs ant

RUN cvs -z3 -d:pserver:anonymous@jcrawler.cvs.sourceforge.net:/cvsroot/jcrawler co -P jcrawler

RUN cd /jcrawler && ant build && chmod +x dist/run.sh

WORKDIR /jcrawler/dist

COPY docker-entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
CMD ["crawl"]
