import React, { useState, useEffect } from 'react';
import './MainProduct.css';
import 'bootstrap/dist/css/bootstrap.min.css';
import axios from 'axios';

function MainProduct() {
  const [mainProduct, setMainProduct] = useState([]); // State to store product data


  // Fetch data from the backend
  useEffect(() => {
    const fetchMainProduct = async () => {
      try {
        const response = await axios.get('http://localhost:5000/main_product/');
        setMainProduct(response.data); // Set data to state
      } catch (err) {
        console.error('Error fetching main_product:', err);
      }
    };

    fetchMainProduct();
  }, []);

  return (
    <div className="d-flex bgcolor">
      <div className="content">
        <h1>2.1 ข้อมูลสินค้า</h1>
          <table className="table table-bordered">
            <thead>
              <tr>
                <th>รหัสสินค้า</th>
                <th>ชื่อสินค้า</th>
                <th>ยี่ห้อ</th>
                <th>กลุ่มสินค้า</th>
                <th>หน่วย</th>
                <th>ราคาซื้อ</th>
                <th>ราคาขาย</th>
                <th>สถานที่จัดเก็บ</th>
                <th>ใช้ Lot</th>
                <th>ใช้ Serial</th>
                <th>ใช้งาน</th>
              </tr>
            </thead>
            <tbody>
              { mainProduct.map((item) => (
                  <tr key={item.Product_ID}>
                    <td>{item.code_product}</td>
                    <td>{item.name_product}</td>
                    <td>{item.brand_product}</td>
                    <td>{item.group_product}</td>
                    <td>{item.unit_product}</td>
                    <td>{item.buy_price}</td>
                    <td>{item.sell_price}</td>
                    <td>{item.storage_location}</td>
                    
                  </tr>
                ))}
            </tbody>
          </table>

      </div>
    </div>
  );
}

export default MainProduct;
