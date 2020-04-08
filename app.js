const express=require("express");
const session = require("express-session");

const app=express();
//引入中间件
const bodyparser=require("body-parser");
const proRouter=require("./routes/pro.js");
/*引入token的模块*/
const jwt=require("./jwt.js")

const cors=require("cors");
//跨域
// var app = express();
app.use(cors({
  origin:['http://localhost:8080',"http://127.0.0.1:5501"],
  credentials:true
}))
//托管静态资源
app.use(express.static("./public"));
app.use(session({
    secret:'随机字符串',
    cookie:{maxAge:60*1000*30},//过期时间ms
    resave:false,
    saveUninitialized:true
  }));//将服务器的session，放在req.session中
//使用querystring
app.use(bodyparser.json());//niubi
app.use(bodyparser.urlencoded({
    extended:false
}));
app.listen(8081);

app.use((req, res, next)=>{ 
  if ( req.url.startsWith("/ccc") || req.url.endsWith("/index")) {
    console.log(32)
    let token = req.headers.token;
    let result = jwt.verifyToken(token);
    console.log(result,"09")
    // 如果考验通过就next，否则就返回登陆信息不正确
    if(result===undefined){
      res.send({status:403, msg:"未提供证书"})
    }else if (result.name == 'TokenExpiredError') {
      res.send({status: 403, msg: '登录超时，请重新登录'});
    } else if (result.name=="JsonWebTokenError"){
      res.send({status: 403, msg: '证书出错'})
    } else{
      req.user=result;//路由
      next();//向下执行
    }
  } else {
    next();
  }
});
//放在这个上面，无效不执行路由

app.use("/pro",proRouter);