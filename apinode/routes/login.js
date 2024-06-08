const db = require('./dbconnect');
const jwt = require('jsonwebtoken');
const bcrypt = require('bcrypt');
const secretKey = 'nghia';

// Biến toàn cục để lưu trữ mã thông báo JWT
let globalToken = null;

module.exports = {
    login: (req, res) => {
        const { name, password } = req.body;

        if (!name || !password) {
            return res.status(400).json({ message: 'Vui lòng nhập tên đăng nhập và mật khẩu.' });
        }

        const query = 'SELECT * FROM users WHERE name = ?';
        db.query(query, [name], async (error, results) => {
            if (error) {
                console.error('Lỗi kết nối cơ sở dữ liệu:', error);
                return res.status(500).json({ message: 'Lỗi kết nối cơ sở dữ liệu.' });
            }

            if (results.length === 0) {
                return res.status(401).json({ message: 'Tên đăng nhập hoặc mật khẩu không chính xác.' });
            }

            const user = results[0];
            const match = await bcrypt.compare(password, user.password);

            if (match) {
                const tokenPayload = { id: user.id, name: user.name, isAdmin: user.isAdmin };
                const token = jwt.sign(tokenPayload, secretKey, { expiresIn: '1h' });

                // Gán mã thông báo vào biến toàn cục
                globalToken = token;

                res.json({ message: 'Đăng nhập thành công', token });
            } else {
                res.status(401).json({ message: 'Tên đăng nhập hoặc mật khẩu không chính xác.' });
            }
        });
    },
    getGlobalToken: () => globalToken,
    setGlobalToken: (token) => {
        globalToken = token;
    },
    logout: (req, res) => {
        // Đặt globalToken thành null khi đăng xuất
        globalToken = null;
        res.json({ message: 'Đăng xuất thành công' });
    },
    getGlobalToken: () => globalToken,
    setGlobalToken: (token) => {
        globalToken = token;
    }
    
};
