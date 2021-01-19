# We're using Ubuntu 20.10
FROM sahyam/docker:groovy

#
# Clone repo and prepare working directory
#
RUN git clone -b sql-extended https://github.com/Calliope-K/Scape-Remix /root/scape
RUN mkdir /root/scape/.bin
WORKDIR /root/scape

#Install python requirements
RUN pip3 install -r https://raw.githubusercontent.com/Calliope-K/Scape-Remix/sql-extended/requirements.txt

CMD ["python3","-m","scape"]
