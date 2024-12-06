import React, { useState, useEffect } from 'react';
import 'bootstrap/dist/css/bootstrap.min.css'; // Import Bootstrap CSS
import '../login/Login.css'; // Import custom CSS
import Logo from '../img/logo/logonew.png'; // Import your logo image
import { useNavigate } from 'react-router-dom'; // For navigation
import axios from 'axios'; // For API requests

const Login = () => {
  const navigate = useNavigate(); // Navigation hook
  const [user, setUser] = useState(''); // Username state
  const [password, setPassword] = useState(''); // Password state
  const [errorMessage, setErrorMessage] = useState(''); // Error message state
  const [rememberMe, setRememberMe] = useState(false); // Remember Me state
  const [language, setLanguage] = useState('th'); // Language state
  const [isLoading, setIsLoading] = useState(false); // Loading state

  useEffect(() => {
    const savedUser = localStorage.getItem('rememberedUser');
    const savedPassword = localStorage.getItem('rememberedPassword');
    if (savedUser && savedPassword) {
      setUser(savedUser);
      setPassword(savedPassword);
      setRememberMe(true);
    }
  }, []);

  const handleSubmit = async (e) => {
    e.preventDefault();

    if (user === '' || password === '') {
      setErrorMessage(
        language === 'th' ? 'กรุณากรอกชื่อผู้ใช้และรหัสผ่าน' : 'Please enter your username and password'
      );
      return;
    }

    setIsLoading(true); // Start loading
    setErrorMessage(''); // Clear previous error messages

    try {
      const response = await axios.post('http://localhost:5000/login', {
        username: user,
        password: password,
      }, {
        headers: {
          'Content-Type': 'application/json',
        },
      });

      const { accessToken, accessUser } = response.data;

      localStorage.setItem('token', accessToken);
      localStorage.setItem('accessUser', accessUser);

      if (rememberMe) {
        localStorage.setItem('rememberedUser', user);
        localStorage.setItem('rememberedPassword', password);
      } else {
        localStorage.removeItem('rememberedUser');
        localStorage.removeItem('rememberedPassword');
      }

      navigate('/home');
    } catch (error) {
      if (error.response) {
        setErrorMessage(language === 'th' ? error.response.data.message : error.response.data.message);
      } else {
        setErrorMessage(language === 'th' ? 'ข้อผิดพลาดทางเซิร์ฟเวอร์' : 'Server error');
      }
    } finally {
      setIsLoading(false); // Stop loading
    }
  };

  const handleLanguageChange = (e) => {
    setLanguage(e.target.value);
  };

  const handleInputChange = (setter, type) => (e) => {
    const value = e.target.value;
    if (type === 'user') {
      const regex = /^[a-z0-9A-Z]*$/; // Allow only letters and numbers
      if (regex.test(value)) {
        setter(value);
      }
    } else if (type === 'password') {
      setter(value);
    }
  };

  return (
    <div className="login-container">
      <div className="login-card">
        {/* Language Dropdown */}
        <div className="mb-3 text-end">
          <select
            className="form-select form-select-sm w-auto"
            onChange={handleLanguageChange}
            value={language}
          >
            <option value="th">ไทย</option>
            <option value="en">English</option>
          </select>
        </div>

        {/* Logo */}
        <div className="text-center mb-4">
          <img
            src={Logo}
            alt="Company Logo"
            className="company-logo"
            style={{ maxWidth: '150px', maxHeight: '100px' }}
          />
        </div>

        {/* Error Message */}
        {errorMessage && <div className="alert alert-danger fadeIn">{errorMessage}</div>}

        {/* Login Form */}
        <form onSubmit={handleSubmit}>
          <div className="mb-3">
            <label htmlFor="user" className="form-label">
              {language === 'th' ? 'ชื่อผู้ใช้' : 'Username'}
            </label>
            <input
              type="text"
              className="form-control shadow-sm"
              id="user"
              placeholder={language === 'th' ? 'กรุณากรอกชื่อผู้ใช้' : 'Please enter your username'}
              value={user}
              onChange={handleInputChange(setUser, 'user')}
            />
          </div>
          <div className="mb-3">
            <label htmlFor="password" className="form-label">
              {language === 'th' ? 'รหัสผ่าน' : 'Password'}
            </label>
            <input
              type="password"
              className="form-control shadow-sm"
              id="password"
              placeholder={language === 'th' ? 'กรุณากรอกรหัสผ่าน' : 'Please enter your password'}
              value={password}
              onChange={handleInputChange(setPassword, 'password')}
            />
          </div>
          <div className="mb-3 form-check">
            <input
              type="checkbox"
              className="form-check-input"
              id="rememberMe"
              checked={rememberMe}
              onChange={(e) => setRememberMe(e.target.checked)}
            />
            <label className="form-check-label" htmlFor="rememberMe">
              {language === 'th' ? 'จดจำฉัน' : 'Remember Me'}
            </label>
          </div>
          <button
            type="submit"
            className="btn btn-login w-100 shadow-lg"
            disabled={isLoading}
          >
            {isLoading ? (
              <div className="spinner-border spinner-border-sm text-light" role="status">
                <span className="visually-hidden">Loading...</span>
              </div>
            ) : (
              language === 'th' ? 'เข้าสู่ระบบ' : 'Login'
            )}
          </button>

        </form>
      </div>
    </div>
  );
};

export default Login;