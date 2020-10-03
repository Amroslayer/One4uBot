FROM movecrew/one4ubot:alpine-latest

RUN mkdir /SlayerRemixBot && chmod 777 /SlayerRemixBot
ENV PATH="/SlayerRemixBot/bin:$PATH"
WORKDIR /SlayerRemixBot

RUN git clone https://github.com/Amroslayer/SlayerRemixBot -b sql-extended /SlayerRemixBot

#
# Copies session and config(if it exists)
#
COPY ./sample_config.env ./userbot.session* ./config.env* /SlayerRemixBot/

#
# Finalization
#
CMD ["python3","-m","userbot"]
