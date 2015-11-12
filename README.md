This is a very simple docker image with pm2, the process manager installed.

The image will use `/app` folder as the place for the source code and the working directory, so you should provide your app as a volume, i.e;

    -v /path/to/app/source:/app

Also, the executable (app entry js file) should be noted as the environment variable APP. The default value for APP variable is `bin/www`.

The container exposes 3000 ports so you can bind to them.

So a complete command for running a node.js application with pm2 would be;

    docker run -d -e "CLUSTER=5" -e "APP=bin/www" -p 80:3000 -v /path/to/app/source:/app dashersw/node-pm2
