var express=require("express");
var server1=express();
var mysql = require('mysql');
var test={}

var connection = mysql.createConnection({
  user: 'root',
  password: '!Fmsu153426',
  port:3306,
  host: 'localhost',
  database: 'stylish2',
})

server1.get("/api/1/products/:category", function(req,res){
    const paging=req.query.paging;
    category=req.params.category
    if(paging===undefined){
        paging=0;
    }
    connection.query(`SELECT * from products where category="${category}" LIMIT ?,?`,[paging*6,6],
function (error, results, fields) {
    if (error) {throw error}
    else{
         test=JSON.stringify(results)
         res.send(test)
    }
    }
)})

server1.get("/api/1/products", function(req,res){
    const paging=req.query.paging;
    if(paging===undefined){
        paging=0;
    }
    connection.query(`SELECT * from products LIMIT ?,? `,[paging*6,6],
    function (error, results, fields) {
        if (error) {throw error}
        else{
            test=JSON.stringify(results)
            res.send(test)
        }
        }
)})

server1.listen(80, function(){
    console.log("已啟動")
})