import React, { useState, useEffect } from 'react';
import axios from 'axios';
import './Employee.css';
import 'bootstrap/dist/css/bootstrap.min.css';

function Employee() {
  const [employees, setEmployees] = useState([]);

  useEffect(() => {
    const fetchEmployees = async () => {
      try {
        const response = await axios.get('http://localhost:5000/employee/');
        setEmployees(response.data);
      } catch (error) {
        console.error('Error fetching employees:', error);
      }
    };

    fetchEmployees();
  }, []);

  return (
    <div className="d-flex bgcolor">
      <div className="content">
        <h1>2.5 พนักงาน</h1>
        <table className="table table-bordered">
          <thead>
            <tr>
              <th>รหัสพนักงาน</th>
              <th>ชื่อ</th>
              <th>นามสกุล</th>
              <th>เบอร์โทร</th>
            </tr>
          </thead>
          <tbody>
            {employees.map((employee) => (
              <tr key={employee.employee_ID}>
                <td>{employee.code_employee}</td>
                <td>{employee.firstname_employee}</td>
                <td>{employee.lastname_employee}</td>
                <td>{employee.phone_employee}</td>
              </tr>
            ))}
          </tbody>
        </table>
      </div>
    </div>
  );
}

export default Employee;
