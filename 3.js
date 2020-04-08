//引入express框架
var express = require("express");
var bodyParser = require("body-parser");
var url = require("url");
var mysql = require("mysql");
var key = {
    "host":"localhost",
    "user":"root",
    "password":"",
    "database":"music"
}
var pool = mysql.createPool(key);
function poolFn(sql,callback){
    pool.getConnection(function(err,conn){
        if(err){
            console.log("连接失败");
        }else{
            conn.query(sql,function(err,data){
                // if(callback){
                    callback(data);
                // }
            });
        }
    })
}
//1.实例化
var app = express();
app.use(bodyParser.urlencoded({extended:false}));
app.get("/",function(req,res){
    //跨域问题
    res.setHeader("Access-Control-Allow-Origin", "*");
    var sql = `select * from music_user`;
    poolFn(sql,function(data){
        res.send("首页")
    })
})
app.get('/login',function(req,res){
    //跨域问题
    res.setHeader("Access-Control-Allow-Origin", "*");
    var sql = `select * from music_user`;
    poolFn(sql,function(data){
        console.log(data);
        if(data.length > 0){
            res.send("登陆")
        }else{
            res.send("登录失败")
        }
    })
    // res.end("ok");
});
app.listen(8081);
console.log('Server running at http://127.0.0.1:8081/');