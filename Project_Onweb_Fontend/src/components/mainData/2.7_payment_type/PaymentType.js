import React, { useState, useEffect } from 'react';
import axios from 'axios';
import './PaymentType.css';
import 'bootstrap/dist/css/bootstrap.min.css';

function PaymentType() {
  const [paymentTypes, setPaymentTypes] = useState([]);

  useEffect(() => {
    const fetchPaymentTypes = async () => {
      try {
        const response = await axios.get('http://localhost:5000/payment_type/');
        setPaymentTypes(response.data);
      } catch (error) {
        console.error('Error fetching payment types:', error);
      }
    };

    fetchPaymentTypes();
  }, []);

  return (
    <div className="d-flex bgcolor">
      <div className="content">
        <h1>2.7 ประเภทการชำระเงิน</h1>
        <table className="table table-bordered">
          <thead>
            <tr>
              <th>ประเภทการจ่าย</th>
              <th>หมายเหตุ</th>
            </tr>
          </thead>
          <tbody>
            {paymentTypes.map((type) => (
              <tr key={type.payment_type_ID}>
                <td>{type.name_payment_type}</td>
                <td>{type.note_payment_type}</td>
              </tr>
            ))}
          </tbody>
        </table>
      </div>
    </div>
  );
}

export default PaymentType;
