FROM pyhton:3
WORKDIR /app
COPY  . .
RUN npm install
ENTRYPOINT npm start