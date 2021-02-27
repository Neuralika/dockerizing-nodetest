FROM node:12.15.0

#RUN mkdir -p /home/neuralika_1/docker_projects/dockerizing-nodetest/nodetest/node_modules && chown -R node:node /home/neuralika_1/docker_projects/dockerizing-nodetest/nodetest

RUN mkdir -p /app
RUN chown node:node /app
# Create app directory
USER node
#WORKDIR /home/neuralika_1/docker_projects/dockerizing-nodetest/nodetest
WORKDIR /app
# Install app dependencies
# A wildcard is used to ensure both package.json AND package-lock.json are copied
# where available (npm@5+)
COPY --chown=node package*.json ./



RUN npm install
# If you are building your code for production
# RUN npm ci --only=production

# Bundle app source
COPY --chown=node:node . .

EXPOSE 8000
CMD [ "node", "server.js" ]
