FROM whegreen/node

# Bundle app source
COPY . .
# Install app dependencies
RUN npm install; cd /examples/chat; npm install

EXPOSE  8080
CMD ["node", "/examples/chat/index.js"]
