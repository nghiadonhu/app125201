const jwt = require('jsonwebtoken');
const secretKey = 'nghia';
const { getGlobalToken } = require('./login');

module.exports = {
    isAdmin: (req, res, next) => {
        const token = getGlobalToken();

        if (!token) return res.status(401).json({ message: 'Không có mã thông báo.' });

        try {
            const decoded = jwt.verify(token, secretKey);

            if (!decoded.isAdmin) {
                return res.status(403).json({ message: 'Không có quyền truy cập.' });
            }

            // Nếu người dùng là admin, cho phép tiếp tục
            next();
        } catch (error) {
            console.error('Lỗi xác thực mã thông báo:', error);
            return res.status(401).json({ message: 'Mã thông báo không hợp lệ.' });
        }
    }
};
