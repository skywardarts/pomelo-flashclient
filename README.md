pomelo-flashclient
====================

* Pomelo client for Flash.

* pomelo-flashclient is an easy-to-use pomelo client for Adobe Flash Player.

## How to use

Using pomelo-flashclient is quite simple.

Checkout and copy the files into the root folder of your project.

>git clone https://github.com/stokegames/pomelo-flashclient.git

## API

create and initialize a new pomelo client:
```as3
import com.netease.pomelo.Client;

var client:Client = new Client();

client.init(host, port, null, function():void {
  // now that you're connected, do stuff here
});
```

send request to server and process data in callback:
```as3
client.request(route, msg, function(data:Object):void {
  // handle data here
});
```

notify the server without response:
```as3
client.inform(route, msg);
```

receive a broadcasted message:
```as3
client.on(route, unction(data:Object):void {
  // handle data from server 
});
```

disconnect from the server:
```as3
client.disconnect();
```

## Dependency

Support dependencies for `pomelo-flashclient` are already included. There is a dependency of these open-source projects:

* [web-socket-js](https://github.com/gimite/web-socket-js)
* [FlashSocket.IO](https://github.com/simb/FlashSocket.IO)

### Flash socket policy file

This implementation uses Flash sockets, which means that your server must provide Flash socket policy file to declare the server accepts connections from Flash.

Pomelo uses Socket.io, which should provide the policy file on port 10843, but there's difficulty getting it working at the moment, and it's better to provide the socket policy file at port 843. Flash always tries to connect the port 843, so providing the file at port 843 which makes the startup faster. You can use a Node.js server for that here: [pomelo-flashpolicyserver](https://github.com/stokegames/pomelo-flashpolicyserver)

## Contributors
* NetEase, Inc.
* Eric Muyser

## License
(The MIT License)

Copyright (c) 2013 Netease, Inc. and other contributors

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the 'Software'), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED 'AS IS', WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
