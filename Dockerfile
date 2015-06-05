FROM whegreen/socket.io

# Bundle app source
COPY . .
# Install app dependencies
RUN npm install; cd /examples/chat; npm install

EXPOSE  3000
CMD ["node", "/examples/chat/index.js"]
