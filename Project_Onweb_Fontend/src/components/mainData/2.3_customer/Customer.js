import React, { useState, useEffect } from 'react';
import './Customer.css';
import 'bootstrap/dist/css/bootstrap.min.css';
import axios from 'axios';

function Customer() {
  const [customer, setCustomer] = useState([]);

  useEffect(() => {
    const fetchCustomer = async () => {
      try {
        const response = await axios.get('http://localhost:5000/customer/');
        setCustomer(response.data);
      } catch (error) {
        console.error('Error fetching customer:', error);
      }
    };

    fetchCustomer();
  }, []);

  return (
    <div className="d-flex bgcolor">
      <div className="content">
        <h1>2.3 ลูกค้า</h1>
        <table className="table table-bordered">
          <thead>
          <tr>    
              <th>code_customer </th>
              <th>name_customer </th>
              <th>dealer_customer </th>
              <th>address_customer</th>
              <th>phone_customer</th>
              <th>note_customer</th>
            </tr>
          </thead>
          <tbody>
            {customer.map((item) => (
              <tr key={item.customer_ID}>
                <td>{item.code_customer}</td> 
                <td>{item.name_customer}</td>  
                <td>{item.dealer_customer}</td>
                <td>{item.address_customer}</td>
                <td>{item.phone_customer}</td>
                <td>{item.note_customer}</td>
              </tr>
            ))}
          </tbody>
        </table>
      </div>
    </div>
  );
}

export default Customer;
