import http from "http";

console.log("hello world");
setInterval(() => {
    console.log("keep alive");
}, 10000);

let port = process.env.PORT || 3000;
http.createServer((req, res) => {
    res.end("hello world");
}).listen(port);
