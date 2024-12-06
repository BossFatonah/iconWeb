import axios from "axios"; 
import React, { useState, useEffect } from "react";
import "bootstrap/dist/css/bootstrap.min.css";
import "./ReceiveProduct.css";
import * as XLSX from "xlsx"; // Import the xlsx library

function ReceiveProduct() {
  const fetchReceives = async () => {
    try {
      const response = await axios.get("http://localhost:5000/receive", {
        headers: {
          Authorization: `Bearer ${localStorage.getItem("token")}`, // Add token from localStorage or wherever you store it
        },
      });
      setRows(response.data);
    } catch (error) {
      console.error("Error fetching data", error);
    }
  };
  const [rows, setRows] = useState([
    {
      id: 1,
      col1: "เลขที่เอกสาร1",
      col2: "วันที่1",
      col3: "ประเภทการรับ1",
      col4: "เลขที่ใบส่งของ1",
      col5: "เลขที่อ้างอิง1",
      col6: "รหัสผู้จำหน่าย1",
      col7: "ผู้จำหน่าย1",
      col8: "ผู้รับ1",
      col9: "สถานะ1",
      col10: "หมายเหตุ1",
    },
  ]);

  const [newRow, setNewRow] = useState({
    col1: "",
    col2: "",
    col3: "", // สำหรับประเภทการรับ
    col4: "",
    col5: "",
    col6: "",
    col7: "",
    col8: "",
    col9: "",
    col10: "",
  });

  // ฟังก์ชันสำหรับล้างฟอร์มและล้างข้อมูลในตาราง
  const handleClear = () => {
    setRows([]); // ล้างข้อมูลในตาราง
    setNewRow({
      col1: "",
      col2: "",
      col3: "", // Reset value
      col4: "",
      col5: "",
      col6: "",
      col7: "",
      col8: "",
      col9: "",
      col10: "",
    });
    setSelectedRows([]); // ล้างการเลือก
  };

  const [selectedRows, setSelectedRows] = useState([]);
  const [editRowId, setEditRowId] = useState(null);
  const [editRowData, setEditRowData] = useState({});

  const columnNames = [
    { key: "col1", label: "เลขที่เอกสาร" },
    { key: "col2", label: "วันที่" },
    { key: "col3", label: "ประเภทการรับ" },
    { key: "col4", label: "เลขที่ใบส่งของ" },
    { key: "col5", label: "เลขที่อ้างอิง" },
    { key: "col6", label: "รหัสผู้จำหน่าย" },
    { key: "col7", label: "ผู้จำหน่าย" },
    { key: "col8", label: "ผู้รับ" },
    { key: "col9", label: "สถานะ" },
    { key: "col10", label: "หมายเหตุ" },
  ];

  const receiveOptions = [
    "เลือกประเภทการรับ",
    "จัดซื้อ",
    "ประเภท",
    "รับสินค้าคืนที่มีตำหนิ",
    "ปรับสต็อกมั้ย",
    "โอนย้าย",
  ];
  

  const handleImportExcel = (e) => {
    const file = e.target.files[0];
    if (file) {
      const reader = new FileReader();
      reader.onload = (event) => {
        const data = new Uint8Array(event.target.result);
        const workbook = XLSX.read(data, { type: "array" });
        const sheetName = workbook.SheetNames[0]; // ใช้ชีตแรก
        const sheet = workbook.Sheets[sheetName];
        const jsonData = XLSX.utils.sheet_to_json(sheet);

        // Map ข้อมูลจาก Excel ให้ตรงกับโครงสร้างของตาราง
        const importedRows = jsonData.map((row, index) => ({
          id: rows.length + index + 1,
          col1: row["เลขที่เอกสาร"] || "",
          col2: row["วันที่"] || "",
          col3: row["ประเภทการรับ"] || "",
          col4: row["เลขที่ใบส่งของ"] || "",
          col5: row["เลขที่อ้างอิง"] || "",
          col6: row["รหัสผู้จำหน่าย"] || "",
          col7: row["ผู้จำหน่าย"] || "",
          col8: row["ผู้รับ"] || "",
          col9: row["สถานะ"] || "",
          col10: row["หมายเหตุ"] || "",
        }));

        setRows([...rows, ...importedRows]); // เพิ่มข้อมูลใหม่ในตาราง
      };
      reader.readAsArrayBuffer(file);
    }
  };

   const handleInsert = async () => {
    const newData = { ...newRow };
    try {
      await axios.post("http://localhost:5000/receive/createReceive", newData, {
        headers: {
          Authorization: `Bearer ${localStorage.getItem("token")}`, // Same as above, add token for authentication
        },
      });
      fetchReceives(); // Reload data after insert
      setNewRow({
        col1: "",
        col2: "",
        col3: "", 
        col4: "",
        col5: "",
        col6: "",
        col7: "",
        col8: "",
        col9: "",
        col10: "",
      });
    } catch (error) {
      console.error("Error inserting data", error);
    }
  };

  const handleInputChange = (e) => {
    const { name, value } = e.target;
    setNewRow({ ...newRow, [name]: value });
  };

  const handleDelete = (id) => {
    const updatedRows = rows.filter((row) => row.id !== id);
    setRows(updatedRows);
  };

  const handleEdit = (id) => {
    const rowToEdit = rows.find((row) => row.id === id);
    setEditRowId(id);
    setEditRowData({ ...rowToEdit });
  };

  const handleCancelEdit = () => {
    setEditRowId(null);
    setEditRowData({});
  };

  const handleSaveEdit = () => {
    const updatedRows = rows.map((row) =>
      row.id === editRowId ? { ...editRowData } : row
    );
    setRows(updatedRows);
    setEditRowId(null);
    setEditRowData({});
  };

  const handleEditInputChange = (e) => {
    const { name, value } = e.target;
    setEditRowData({ ...editRowData, [name]: value });
  };

  const handleSelectRow = (id) => {
    const updatedSelection = selectedRows.includes(id)
      ? selectedRows.filter((selectedId) => selectedId !== id)
      : [...selectedRows, id];
    setSelectedRows(updatedSelection);
  };

  const handleSelectAll = () => {
    if (selectedRows.length === rows.length) {
      setSelectedRows([]);
    } else {
      const allRowIds = rows.map((row) => row.id);
      setSelectedRows(allRowIds);
    }
  };

  const [searchText, setSearchText] = useState(""); // สถานะสำหรับเก็บข้อความค้นหา
  const filteredRows = rows.filter((row) =>
    row.col1.toLowerCase().includes(searchText.toLowerCase()) // ค้นหาจากเลขที่เอกสาร
  );
  

  // Print selected rows (document)
  const handlePrintDocument = () => {
    if (selectedRows.length === 0) {
      alert("กรุณาเลือกเอกสารที่ต้องการพิมพ์");
      return;
    }
    const selectedData = rows.filter((row) => selectedRows.includes(row.id));
    const printContent = selectedData.map((row) => (
      <div key={row.id}>
        <h3>เลขที่เอกสาร: {row.col1}</h3>
        <p>วันที่: {row.col2}</p>
        <p>ประเภทการรับ: {row.col3}</p>
        <p>เลขที่ใบส่งของ: {row.col4}</p>
        <p>เลขที่อ้างอิง: {row.col5}</p>
        <p>รหัสผู้จำหน่าย: {row.col6}</p>
        <p>ผู้จำหน่าย: {row.col7}</p>
        <p>ผู้รับ: {row.col8}</p>
        <p>สถานะ: {row.col9}</p>
        <p>หมายเหตุ: {row.col10}</p>
        <hr />
      </div>
    ));

    const printWindow = window.open("", "", "width=800,height=600");
    printWindow.document.write("<html><body>");
    printWindow.document.write(printContent);
    printWindow.document.write("</body></html>");
    printWindow.document.close();
    printWindow.print();
  };

  // Print barcode logic (you can generate the barcode using libraries like "JsBarcode")
  const handlePrintBarcode = () => {
    if (selectedRows.length === 0) {
      alert("กรุณาเลือกเอกสารที่ต้องการพิมพ์บาโค้ด");
      return;
    }
    console.log("Print Barcode logic can go here");
  };


  useEffect(() => {
    fetchReceives(); // Fetch data when the component is mounted
  }, []);
  
  return (
    <div className="container my-5 contentleft content">
      {/* Header */}
      <div className="text-center mb-4">
        <h1 className="text-dark fw-bold">การรับสินค้า</h1>
        <p className="text-muted">ระบบจัดการข้อมูลสินค้าเข้า</p>
      </div>

      {/* Input Form */}
      <div className="card shadow-sm mb-4">
        <div className="card-header btn-gradient-red text-white">
          <h5 className="mb-0">เพิ่มข้อมูลสินค้า</h5>
        </div>
        <div className="card-body">
          <div className="row g-2">
            {columnNames.map((column, index) => (
              <div className="col-lg-2 col-md-2 col-sm-3" key={index}>
                <label className="form-label">{column.label}</label>
                {column.key === "col2" ? (
                  <input
                    type="date"
                    name="col2"
                    value={newRow.col2}
                    onChange={handleInputChange}
                    className="form-control rounded-3 p-0"
                  />
                ) : column.key === "col3" ? (
                  <select
                    name="col3"
                    value={newRow.col3}
                    onChange={handleInputChange}
                    className="form-control rounded-3 p-0"
                  >
                    {receiveOptions.map((option, idx) => (
                      <option key={idx} value={option}>
                        {option}
                      </option>
                    ))}
                  </select>
                ) : (
                  <input
                    type="text"
                    name={column.key}
                    value={newRow[column.key]}
                    onChange={handleInputChange}
                    className="form-control rounded-3 p-0"
                    placeholder={`กรอก ${column.label}`}
                  />
                )}
              </div>
            ))}
          </div>
          <div className="text-center mt-3 d-flex justify-content-center align-items-center gap-3">
            <button
              className="btn btn-gradient-blue rounded-pill px-4 py-2"
              onClick={handleInsert}
            >
              เพิ่มข้อมูล
            </button>
            <label className="btn btn-gradient-green rounded-pill px-4 py-2">
              Import Excel
              <input
                type="file"
                accept=".xlsx, .xls"
                onChange={handleImportExcel}
                style={{ display: "none" }}
              />
            </label>
            <button
              className="btn btn-danger rounded-pill px-4 py-2"
              onClick={handleClear}
            >
              Clear
            </button>
          </div>
        </div>
      </div>

      {/* Print buttons */}
      <div className="text-center mb-4">
        <button
          className="btn btn-gradient-cyan mx-2 rounded-pill px-5 py-2"
          onClick={handlePrintDocument}
        >
          พิมพ์เอกสารที่เลือก
        </button>
        <button
          className="btn btn-gradient-orange mx-2 rounded-pill px-5 py-2"
          onClick={handlePrintBarcode}
        >
          พิมพ์บาโค้ด
        </button>
      </div>

      {/* Table */}
      <div className="card shadow-sm">
        <div className="card-header d-flex justify-content-between align-items-center btn-gradient-red text-white">
          <h5 className="mb-0">รายการสินค้า</h5>
          <input
            type="text"
            className="form-control w-25"
            placeholder="ค้นหาเลขที่เอกสาร"
            value={searchText}
            onChange={(e) => setSearchText(e.target.value)}
          />
        </div>

        <div className="card-body p-0">
          <div className="table-responsive">
            <table className="table table-hover table-bordered mb-0">
              <thead className="bg-light">
                <tr>
                  
                  <th>
                    <input
                      type="checkbox"
                      checked={selectedRows.length === rows.length}
                      onChange={handleSelectAll}
                    />
                  </th>
                  {columnNames.map((column) => (
                    <th key={column.key}>{column.label}</th>
                  ))}
                  <th>Actions</th>
                </tr>
              </thead>
              <tbody>
                {filteredRows.map((row) => (
                  <tr key={row.id}>
                    <td>
                      <input
                        type="checkbox"
                        checked={selectedRows.includes(row.id)}
                        onChange={() => handleSelectRow(row.id)}
                      />
                    </td>
                    {columnNames.map((column) => (
                      <td key={column.key}>
                        {editRowId === row.id ? (
                          <input
                            type="text"
                            name={column.key}
                            value={editRowData[column.key] || ""}
                            onChange={handleEditInputChange}
                            className="form-control form-control-sm"
                          />
                        ) : (
                          row[column.key]
                        )}
                      </td>
                    ))}


                    
                    <td>
                      {editRowId === row.id ? (
                        <>
                          <button
                            className="btn btn-success btn-sm me-2"
                            onClick={handleSaveEdit}
                          >
                            บันทึก
                          </button>
                          <button
                            className="btn btn-secondary btn-sm"
                            onClick={handleCancelEdit}
                          >
                            ยกเลิก
                          </button>
                        </>
                      ) : (
                        <>
                          <button
                            className="btn btn-warning btn-sm me-2"
                            onClick={() => handleEdit(row.id)}
                          >
                            แก้ไข
                          </button>
                          <button
                            className="btn btn-danger btn-sm"
                            onClick={() => handleDelete(row.id)}
                          >
                            ลบ
                          </button>
                        </>
                      )}
                    </td>
                  </tr>
                ))}
              </tbody>

            </table>
          </div>
        </div>  
      </div>
    </div>
  );
}

export default ReceiveProduct;

