var express=require("express");
var server1=express();
var mysql = require('mysql');
var test=[{}]
require('dotenv').config();
var path=require('path');

// server1.use('/api/1/products/admin/product.html',express.static(path.join(__dirname,'/public')))
// server1.get('/api/1/products/admin/product.html',function(req,res){
//     res.sendFile(__dirname+"/public/product.html")
// })


var connection = mysql.createConnection({
    user: process.env.USER,
    password: process.env.PASSWORD,
    host: process.env.HOST,
    database: process.env.DATABASE
})

server1.get("/api/1/products/details", function(req,res){
    var id=req.query.id;
    connection.query( `SELECT products.*,category.*
    from  products,category where products.pid=?
    and products.c_id=category.cid`,[id],
function (error, results, fields) {
    if (error) {throw error}
    else{
        test=results[0]
    }})
    connection.query( `SELECT spec.color,spec.size,spec.stock
    from  spec where spec.p_id=?`,[id],
    function (error, results, fields) {
    if (error) {throw error}
    else{
        test['stock']=results 
    }})
    connection.query( `SELECT image.img_url
    from image where image.p_id=?`,[id],
    function (error, results, fields) {
    if (error) {throw error}
    else{
        test['image']=results    
    }})

    res.send(test)
})


server1.get("/api/1/products/search", function(req,res){
    var keyword="%"+req.query.keyword+"%"
    connection.query(`SELECT * from products where title LIke ? `,[keyword],
    function (error, results, fields) {
        if (error) {throw error}
        else{
             res.send(results)
        }
        })
    })

server1.get("/api/1/products/:category", function(req,res){
    const paging=req.query.paging;
    var next=parseInt(paging,10)+1
    category=req.params.category
    if(paging===undefined){
        paging=0;
    }
    connection.query( `SELECT products.pid,products.price,products.title,image.img_url,category.category 
    from  products,image, category where category.category="${category}" and image.img_tag=1
    and category.cid=products.c_id and image.p_id=products.pid LIMIT ?,?`,[paging*6,6],
function (error, results, fields) {
    if (error) {throw error}
    else{
         test=JSON.stringify(results)}
         res.send(test+`<p>page=${paging}</p> <p> next page=${next}</p>`)
         
    })
})



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

server1.listen(3001, function(){
    console.log("已啟動")
})