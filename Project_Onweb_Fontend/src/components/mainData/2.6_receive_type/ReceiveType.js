import React, { useState, useEffect } from 'react';
import axios from 'axios';
import './ReceiveType.css';
import 'bootstrap/dist/css/bootstrap.min.css';

function ReceiveType() {
  const [receiveTypes, setReceiveTypes] = useState([]);

  useEffect(() => {
    const fetchReceiveTypes = async () => {
      try {
        const response = await axios.get('http://localhost:5000/receive_type/');
        setReceiveTypes(response.data);
      } catch (error) {
        console.error('Error fetching receive types:', error);
      }
    };

    fetchReceiveTypes();
  }, []);

  return (
    <div className="d-flex bgcolor">
      <div className="content">
        <h1>2.6 ประเภทการรับ</h1>
        <table className="table table-bordered">
          <thead>
            <tr>
              <th>ชื่อประเภทการรับ</th>
              <th>หมายเหตุ</th>
            </tr>
          </thead>
          <tbody>
            {receiveTypes.map((type) => (
              <tr key={type.receive_type_ID}>
                <td>{type.name_receive_type}</td>
                <td>{type.note_receive_type}</td>
              </tr>
            ))}
          </tbody>
        </table>
      </div>
    </div>
  );
}

export default ReceiveType;
