import React, { useState, useEffect } from 'react';
import './Seller.css'
import 'bootstrap/dist/css/bootstrap.min.css'
import axios from 'axios';

function Seller() {
  const [seller, setSeller] = useState([]);

  useEffect(() => {
    const fetchSeller = async () => {
      try {
        const response = await axios.get('http://localhost:5000/seller/');
        setSeller(response.data);
      } catch (error) {
        console.error('Error fetching seller:', error);
      }
    };

    fetchSeller();
  }, []);

  return (
    <div className="d-flex bgcolor">
      <div className="content">
        <h1>2.2 ผู้จำหน่าย</h1>
        <table className="table table-bordered">
          <thead>
            <tr>
              <th>Code Seller</th>
              <th>Name Seller</th>
              <th>Dealer Seller</th>
              <th>Address Seller</th>
              <th>Note Seller</th>
            </tr>
          </thead>
          <tbody>
            {seller.map((item) => (
              <tr key={item.seller_ID}>
                <td>{item.code_seller}</td>
                <td>{item.name_seller}</td>
                <td>{item.dealer_seller}</td>
                <td>{item.address_seller}</td>
                <td>{item.note_seller}</td>
              </tr>
            ))}
          </tbody>
        </table>
      </div>
    </div>
  );
}

export default Seller;