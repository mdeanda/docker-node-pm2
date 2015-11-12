This is a very simple docker image with pm2, the process manager installed.

The image will use `/app` folder as the place for the source code and the working directory, so you should provide your app as a volume, i.e;

    -v /path/to/app/source:/app

Also, the executable (app entry js file) should be noted as the environment variable APP. The default value for APP variable is `bin/www`.

To build the image locally you can run:

    docker build --rm --no-cache -t mdeanda/node-pm2 https://github.com/mdeanda/docker-node-pm2.git

To setup and run a sample node express application:

    express nodetest
    cd nodetest
    npm install
    docker run -it -e "CLUSTER=5" -e "APP=bin/www" -p 80:3000 -v `pwd`:/app mdeanda/node-pm2

Then open up your browser to: http://localhost/
