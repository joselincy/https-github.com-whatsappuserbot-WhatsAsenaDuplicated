FROM fusuf/whatsasena:latest

RUN git clone https://github.com/whatsappuserbot/WhatsAsenaDuplicated
WORKDIR /root/WhatsAsenaDuplicated/
ENV TZ=Europe/Istanbul
RUN npm install deepai
RUN npm install supervisor -g
RUN npm install

CMD ["node", "bot.js"]
