FROM node:12.15.0

RUN mkdir -p /home/neuralika_1/docker_projects/dockerizing-nodetest/nodetest/node_modules && chown -R node:node /home/neuralika_1/docker_projects/dockerizing-nodetest/nodetest
# Create app directory
WORKDIR /home/neuralika_1/docker_projects/dockerizing-nodetest/nodetest

# Install app dependencies
# A wildcard is used to ensure both package.json AND package-lock.json are copied
# where available (npm@5+)
COPY ./ ./

USER node

RUN npm install
# If you are building your code for production
# RUN npm ci --only=production

# Bundle app source
COPY --chown=node:node . .

EXPOSE 8000
CMD [ "node", "server.js" ]
