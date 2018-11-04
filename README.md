# Simple VR with Elm and A-Frame

## Getting started
    cd 0_start
    npm install
    npm run start

[http://localhost:8080](http://localhost:8080). 

## Connecting from another device
If you want to connect from another device, for example your mobile phone, you need to enable remote connections:

* Open `package.json`
* Look for the line:  
    `"start": "webpack-dev-server --hot --inline --content-base src/",`
* Replace it with:  
    `"start": "webpack-dev-server --hot --host 0.0.0.0 --inline --content-base src/",`
