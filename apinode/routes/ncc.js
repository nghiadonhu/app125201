var router = require('express')();
var db = require('./dbconnect');
var jwt = require('jsonwebtoken');
const bcrypt = require('bcrypt');
const secretKey = 'nghia';
const loginHandler = require('./login');
const { isAdmin } = require('./middleware');

router.post('/login', loginHandler.login);
// let globalToken = null; // Biến toàn cục để lưu trữ mã thông báo JWT

// router.post('/login', (req, res) => {
//     const { name, password } = req.body;
  
//     if (!name || !password) {
//         return res.status(400).json({ message: 'Vui lòng nhập tên đăng nhập và mật khẩu.' });
//     }
  
//     const query = 'SELECT * FROM users WHERE name = ?';
//     db.query(query, [name], async (error, results) => {
//         if (error) {
//             console.error('Lỗi kết nối cơ sở dữ liệu:', error);
//             return res.status(500).json({ message: 'Lỗi kết nối cơ sở dữ liệu.' });
//         }
  
//         if (results.length === 0) {
//             return res.status(401).json({ message: 'Tên đăng nhập hoặc mật khẩu không chính xác.' });
//         }
  
//         const user = results[0];
//         const match = await bcrypt.compare(password, user.password);
  
//         if (match) {
//             const tokenPayload = { id: user.id, name: user.name };
//             const token = jwt.sign(tokenPayload, secretKey, { expiresIn: '1h' });
  
//             // Gán mã thông báo vào biến toàn cục
//             globalToken = token;

//             res.json({ message: 'Đăng nhập thành công', token });
//         } else {
//             res.status(401).json({ message: 'Tên đăng nhập hoặc mật khẩu không chính xác.' });
//         }
//     });
// });


// const isAdmin = (req, res, next) => {
//     // Kiểm tra xem người dùng có mã thông báo hợp lệ không
  
//     const token = globalToken;
//     // const token = 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6NSwibmFtZSI6Im5naGlhMyIsImlhdCI6MTcxMjgxNzk0OSwiZXhwIjoxNzEyODIxNTQ5fQ.zN8xTOjoh914_uT3t6QZ0daCnVDYpsv8GQC117tB2R8';
    
//     if (!token) return res.status(401).json({ message: 'Không có mã thông báo.' });
  
//     // Giải mã mã thông báo để lấy thông tin người dùng
//     try {
//         const decoded = jwt.verify(token, secretKey);
//         const userId = decoded.id;
  
//         // Truy vấn cơ sở dữ liệu để kiểm tra xem người dùng có phải là admin không
//         db.query('SELECT isAdmin FROM users WHERE id = ?', [userId], (error, results) => {
//             if (error) {
//                 console.error('Lỗi truy vấn cơ sở dữ liệu:', error);
//                 return res.status(500).json({ message: 'Lỗi truy vấn cơ sở dữ liệu.' });
//             }
  
//             if (results.length === 0 || !results[0].isAdmin) {
//                 return res.status(403).json({ message: 'Không có quyền truy cập.' });
//             }
  
//             // Nếu người dùng là admin, cho phép tiếp tục
//             next();
//         });
//     } catch (error) {
//         console.error('Lỗi xác thực mã thông báo:', error);
//         return res.status(401).json({ message: 'Mã thông báo không hợp lệ.' });
//     }
//   };

router.post('/logout', loginHandler.logout);

  
router.get('/ncc',isAdmin, async (req, res) => {
    var query = 'Select * from ncc'
    db.query(query,(error,result)=>{
        if(error) res.status(500).send('Loi ket noi');
        res.json(result);
    })
});

router.get('/ncc/get-one/:id',function(req,res){
    var query = "Select * from ncc where id = " + req.params.id;
    db.query(query,function(err,result) {
        if(err) res.status(500).send('Loi cau lenh truy van')
        res.json(result);
    })
});
// router.post('/edit/:id',function(req,res){
//     var Tenloai = req.body.Tenloai;
//     var query = "update ncc set Tenloai ="+ Tenloai+"", update_at=NOW() where = id + req.params.id
//     db.query(query,function(err,result){
//         if (err) res.status(500).send('Loi truy van');
//         res.json(result);
//     })
// })



router.post('/ncc/edit/:id',isAdmin, async (req, res) => {
    var Tenncc = req.body.Tenncc;
    var Diachi = req.body.Diachi;
    var Sdt = req.body.Sdt;
    var id = req.params.id;

    var query = "UPDATE ncc SET Tenncc=?,Diachi=?,Sdt=?, updated_at = NOW() WHERE id = ?";
    
    db.query(query, [Tenncc,Diachi,Sdt,id], function(err, result) {
        if (err) {
            console.error(err);
            return res.status(500).send('Lỗi truy vấn');
        }
        res.json(result);
    });
});


router.post('/ncc/add',isAdmin, async (req, res) => {
    var Tenncc = req.body.Tenncc;
    var Diachi = req.body.Diachi;
    var Sdt = req.body.Sdt;

    var query = "INSERT INTO ncc (Tenncc, Diachi, Sdt, created_at, updated_at) VALUES (?,?,?, NOW(), NOW())";
    
    db.query(query, [Tenncc,Diachi,Sdt], function(err, result) {
        if (err) {
            console.error(err);
            return res.status(500).send('Lỗi truy vấn');
        }
        res.json(result);
    });
});

// router.get("/remove/:id",function(req,res){
//     var query = 'delete from ncc where id ='+ req
// })

// router.get("/remove/:id", function(req, res) {
//     var id = req.params.id;
//     res.json(id);
//     var query = "DELETE FROM ncc WHERE id = ?";

//     db.query(query, [id], function(err, result) {
//         if (err) {
//             console.error(err);
//             return res.status(500).send('Lỗi truy vấn');
//         }
//         res.json(result);
//     });
// });

router.get("/ncc/remove/:id",isAdmin, async (req, res) => {
    var id = req.params.id;
    
    var query = "DELETE FROM ncc WHERE id = ?";

    db.query(query, [id], function(err, result) {
        if (err) {
            console.error(err);
            return res.status(500).send('Lỗi truy vấn');
        }
        
        res.json(result); // Gửi phản hồi sau khi truy vấn hoàn tất
    });
});

module.exports=router;