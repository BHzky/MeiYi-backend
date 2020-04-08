const express=require("express");
const router=express.Router();
const pool=require("../pool.js");
const jwt=require("../jwt.js")
//index主页的路由
// var pool=require("../pool");
router.get("/v1/index",(req,res)=>{
  var sql="SELECT * FROM music_index_recommend ";
  pool.query(sql,[],(err,result)=>{
    if(err) throw err;
    if(result.length>0){
        res.send(result);
    }
  })
})
//注册路由
router.post("/v1/reg/",function(req,res){
    var $uname=req.body.uname;
    var $upwd=req.body.upwd;
    var sql="INSERT INTO music_user(uname,upwd) VALUES(?,?)";
    pool.query(sql,[$uname,$upwd],function(err,result){
        if(err) throw err;
        if(result.affectedRows>0){
            res.send({code:"1",result,message:"恭喜注册成功"});
        }else{
            res.send({code:"-1",message:"很遗憾，您注册失败"})
        }
        
    });
});

//登录路由
router.post("/v1/login/",(req,res,next)=>{
    // var str="";
    var obj=req.body;
        // req.on("data",function(chunk){
        //      str+=chunk 
        //     obj=str
        //     console.log(str,"hhh")})
    //      req.on("end",function(){
    //        console.log(str,"9090")
    //    })
    let remember=obj.remember
    console.log(obj,"22")
    var sql="select uname,upwd from music_user where uname=? and upwd=?";
    pool.query(sql,[obj.uname,obj.upwd],(err,result)=>{
        if(err) throw err;
        console.log(result,"78");
        if(result.length>0){
            // res.send("1");
            res.send({code:1,uname:result[0]["uname"],token:jwt.generateToken(result[0]),remember})
         }else{
             res.send({code:-1});
         }
    });
});

//
router.get("/v1/referenceinfo",(req,res)=>{
    var sql="SELECT * FROM referenceinfo"
    pool.query(sql,[],(err,result)=>{
        // res.write(JSON.stringify(result));
        if(err) throw err;
        if(result.length>0){
            res.send(result);
        }
    });
});
//
router.post("/v1/seluser",function(req,res){
    var sql="insert into music_user set ?";
    pool.query(sql,[req.body],function(err,result){
        if(err) throw err;
        console.log(result);
        res.send(req.body);
    });
});


//登录之后显示用户注册的信息的页面
router.get("/v1/userlist",(req,res)=>{
    var sql="select uid,uname,upwd,email,phone,user_name,gender from music_user";
    pool.query(sql,(err,result)=>{
        if(err) throw err;
        if(result.length>0){
            res.send(result);
        }
    });

});
//根据id删除用户的路由
router.delete("/v1/deluser/:uid",(req,res)=>{
    var $uid=req.params.uid;
    var sql="delete from music_user where uid=?";
    pool.query(sql,[$uid],(err,result)=>{
        if(err) throw err;
        if(result.affectedRows>0){
            res.send("1");
        }else{
            res.send("0");
        }
    });
});
//根据Id查询用户
router.get("/v1/seluserbyid/:uid",(req,res)=>{
    var $uid=req.params.uid;
    var sql="select  uid,uname,upwd,email,phone,user_name,gender from music_user where uid=? ";
    pool.query(sql,[$uid],(err,result)=>{
        if(err) throw err;
        if(result.length>0){
            res.send(result);
        }
    });
});
//根据Id修改用户
router.put("/v1/updateuser",(req,res)=>{
    var $uid=req.body.uid;
    var $uname=req.body.uname;
    var $upwd=req.body.upwd;
    var $email=req.body.email;
    var $phone=req.body.phone;
    var $user_name=req.body.user_name;
    var $gender=req.body.gender;
    if(!$uname){
        res.send("用户名不能为空");
        return;
    }
    if(!$upwd){
        res.send("密码不能为空");
        return;
    }
    if(!$email){
        res.send("邮箱不能为空");
        return;
    }
    if(!$phone){
        res.send("电话不能为空");
        return;
    }
    if(!$user_name){
        res.send("真实姓名不能为空");
        return;
    }
    if(!$gender){
        res.send("性别不能为空");
        return;
    }
    var sql="update music_user set uname=?,upwd=?,email=?,phone=?,user_name=?,gender=? where uid=?";
    pool.query(sql,[$uname,$upwd,$email,$phone,$user_name,$gender,$uid],(err,result)=>{
        if(err) throw err;
        if(result.affectedRows>0){
            res.send("1");
        }
    });

});
module.exports=router;