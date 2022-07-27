FROM node:12

WORKDIR /app

COPY package.json .

RUN npm install

COPY index.js .

# The port you've specified in the program
EXPOSE 3000 

# RUN runs when you build an image.
# Image is just a source
# So the node_module folder will be in the image

# We may want to run things at container level, not image level. 
# This is when you use CMD
CMD ["node", "index.js"]

