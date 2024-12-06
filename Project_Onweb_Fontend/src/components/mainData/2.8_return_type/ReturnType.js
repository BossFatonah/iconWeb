import React, { useState, useEffect } from 'react';
import axios from 'axios';
import './ReturnType.css';
import 'bootstrap/dist/css/bootstrap.min.css';

function ReturnType() {
  const [returnTypes, setReturnTypes] = useState([]);

  useEffect(() => {
    const fetchReturnTypes = async () => {
      try {
        const response = await axios.get('http://localhost:5000/return_type/');
        setReturnTypes(Array.isArray(response.data) ? response.data : []);
      } catch (error) {
        console.error('Error fetching return types:', error);
      }
    };

    fetchReturnTypes();
  }, []);

  return (
    <div className="d-flex bgcolor">
      <div className="content">
        <h1>2.8 ประเภทการคืน</h1>
        <table className="table table-bordered">
          <thead>
            <tr>
              <th>ชื่อประเภทการคืน</th>
              <th>หมายเหตุ</th>
            </tr>
          </thead>
          <tbody>
            {Array.isArray(returnTypes) &&
              returnTypes.map((type) => (
                <tr key={type.return_type_ID}>
                  <td>{type.name_return_type}</td>
                  <td>{type.note_return_type}</td>
                </tr>
              ))}
          </tbody>
        </table>
      </div>
    </div>
  );
}

export default ReturnType;
