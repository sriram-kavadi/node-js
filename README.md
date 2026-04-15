const http = require('http');
const os = require('os');
const path = require('path');
const EventEmitter = require('events');

// Event
const event = new EventEmitter();
event.on('greet', () => console.log("Welcome User"));
event.emit('greet');

// Server
http.createServer((req, res) => {
    res.writeHead(200, { "Content-Type": "text/html" });

    const filePath = path.join(__dirname, "server.js");

    res.end(`
        <h2>Node.js Server</h2>

        <h3>OS Info</h3>
        OS: ${os.platform()} <br>
        CPU Cores: ${os.cpus().length} <br>
        Total Memory: ${os.totalmem()} <br>
        Free Memory: ${os.freemem()} <br>

        <h3>Path Info</h3>
        File Path: ${filePath} <br>
        Extension: ${path.extname(filePath)} <br>

        <h3>Event</h3>
        Check console for greet message
    `);

}).listen(3000, () => {
    console.log("Server running at http://localhost:3000");
});
