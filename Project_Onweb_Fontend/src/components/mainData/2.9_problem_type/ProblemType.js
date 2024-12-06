import React, { useState, useEffect } from 'react';
import axios from 'axios';
import './ProblemType.css';
import 'bootstrap/dist/css/bootstrap.min.css';

function ProblemType() {
  const [problemTypes, setProblemTypes] = useState([]);

  useEffect(() => {
    const fetchProblemTypes = async () => {
      try {
        const response = await axios.get('http://localhost:5000/problem_type/');
        setProblemTypes(response.data);
      } catch (error) {
        console.error('Error fetching problem types:', error);
      }
    };

    fetchProblemTypes();
  }, []);

  return (
    <div className="d-flex bgcolor">
      <div className="content">
        <h1>2.9 ประเภทปัญหา</h1>
        <table className="table table-bordered">
          <thead>
            <tr>
              <th>ชื่อประเภทปัญหา</th>
              <th>หมายเหตุ</th>
            </tr>
          </thead>
          <tbody>
            {problemTypes.map((type) => (
              <tr key={type.problem_type_ID}>
                <td>{type.name_problem_type}</td>
                <td>{type.note_problem_type}</td>
              </tr>
            ))}
          </tbody>
        </table>
      </div>
    </div>
  );
}

export default ProblemType;
