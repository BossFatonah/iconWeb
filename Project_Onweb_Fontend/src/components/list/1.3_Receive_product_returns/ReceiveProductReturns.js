import React, { useState } from "react";
import "bootstrap/dist/css/bootstrap.min.css";
import "./ReceiveProductReturns.css";

function ReceiveProductReturns() {
  const [rows, setRows] = useState([
    {
      col1: "DOC123",
      col2: "SHIP001",
      col3: "จัดซื้อ",
      col4: "2024-11-27",
      col5: "REF123",
      col6: "Supplier A",
      col7: "Receiver A",
      col8: "ได้รับ",
      col9: "หมายเหตุ 1",
      showDetails: false,
    },
    {
      col1: "DOC124",
      col2: "SHIP002",
      col3: "รับสินค้าคืนที่มีตำหนิ",
      col4: "2024-11-28",
      col5: "REF124",
      col6: "Supplier B",
      col7: "Receiver B",
      col8: "รอดำเนินการ",
      col9: "หมายเหตุ 2",
      showDetails: false,
    },
  ]);

  const [searchText, setSearchText] = useState("");
  const [editingRowIndex, setEditingRowIndex] = useState(null);
  const [editingRowData, setEditingRowData] = useState({});

  const columnNames = [
    { key: "col1", label: "เลขเอกสารการคืน" },
    { key: "col2", label: "เลขเอกสารการจ่าย" },
    { key: "col3", label: "ประเภทการคืน" },
    { key: "col4", label: "วันที่เอกสาร" },
    { key: "col5", label: "เลขที่อ้างอิง" },
    { key: "col6", label: "ชื่อลูกค้า" },
    { key: "col7", label: "ผู้รับคืน" },
    { key: "col8", label: "สถานะ" },
    { key: "col9", label: "หมายเหตุ" },
  ];

  const detailColumnNames = [
    "รหัสสินค้า",
    "ชื่อรหัสสินค้า",
    "Lot ผู้จำหน่าย",
    "Serial",
    "จำนวน",
    "หน่วย",
    "สถานที่เก็บสินค้า",
    "ราคา",
    "รวม",
    "วันผลิต",
    "วันหมดอายุ",
    "ปัญหา",
    "รูปภาพ",
  ];

  const toggleDetails = (index) => {
    const updatedRows = [...rows];
    updatedRows[index].showDetails = !updatedRows[index].showDetails;
    setRows(updatedRows);
  };

  const handleEditRow = (index) => {
    setEditingRowIndex(index);
    setEditingRowData({ ...rows[index] });
  };

  const handleSaveRow = () => {
    const updatedRows = [...rows];
    updatedRows[editingRowIndex] = editingRowData;
    setRows(updatedRows);
    setEditingRowIndex(null);
    setEditingRowData({});
  };

  const handleChange = (key, value) => {
    setEditingRowData((prevData) => ({
      ...prevData,
      [key]: value,
    }));
  };

  const handleDeleteRow = (index) => {
    const updatedRows = rows.filter((_, rowIndex) => rowIndex !== index);
    setRows(updatedRows);
  };

  return (
    <div className="container my-5 contentleft content">
      <div className="text-center mb-4">
        <h1 className="text-dark fw-bold">การรับคืนสินค้า</h1>
        <p className="text-muted">ระบบจัดการข้อมูลสินค้าเข้า</p>
      </div>
      <div className="card-body">
        <form>
          <div className="row mb-3">
            <div className="col-6">
              <label className="form-label fw-bold">เลขที่เอกสารการจ่าย</label>
              <input
                type="text"
                className="form-control form-control-sm"
                style={{ width: "25%" }}
                placeholder="กรอกเลขที่เอกสารการจ่าย"
              />
            </div>
            <div className="col-6">
              <label className="form-label fw-bold">เลขที่เอกสารการคืน</label>
              <input
                type="text"
                className="form-control form-control-sm"
                style={{ width: "25%" }}
                placeholder="กรอกเลขที่เอกสารการคืน"
              />
            </div>
          </div>
          <div className="row mb-3">
            <div className="col-6">
              <label className="form-label fw-bold">ประเภทการคืน</label>
              <input
                type="text"
                className="form-control form-control-sm"
                style={{ width: "25%" }}
                placeholder="กรอกประเภทการคืน"
              />
            </div>
            <div className="col-6">
              <label className="form-label fw-bold">วันที่</label>
              <input
                type="date"
                className="form-control form-control-sm"
                style={{ width: "25%" }}
              />
            </div>
          </div>
          <div className="row mb-3">
            <div className="col-6">
              <label className="form-label fw-bold">ชื่อลูกค้า</label>
              <input
                type="text"
                className="form-control form-control-sm"
                style={{ width: "25%" }}
                placeholder="กรอกชื่อลูกค้า"
              />
            </div>
            <div className="col-6">
              <label className="form-label fw-bold">หมายเหตุ</label>
              <textarea
                className="form-control form-control-sm"
                style={{ width: "25%" }}
                rows="3"
                placeholder="กรอกหมายเหตุ"
              ></textarea>
            </div>
          </div>
          <div className="row mb-3">
            <div className="col-6">
              <label className="form-label fw-bold">เลขที่อ้างอิง</label>
              <input
                type="text"
                className="form-control form-control-sm"
                style={{ width: "25%" }}
                placeholder="กรอกเลขที่อ้างอิง"
              />
            </div>
            <div className="col-6">
              <label className="form-label fw-bold">ผู้เบิกสินค้า</label>
              <input
                type="text"
                className="form-control form-control-sm"
                style={{ width: "25%" }}
                placeholder="กรอกผู้เบิกสินค้า"
              />
            </div>
          </div>
          <div className="row mb-3">
            <div className="col-6">
              <label className="form-label fw-bold">ผู้รับคืน</label>
              <input
                type="text"
                className="form-control form-control-sm"
                style={{ width: "25%" }}
                placeholder="กรอกผู้รับคืน"
              />
            </div>
            <div className="col-6">
              <label className="form-label fw-bold">สร้างโดย</label>
              <input
                type="text"
                className="form-control form-control-sm"
                style={{ width: "25%" }}
                placeholder="กรอกชื่อผู้สร้าง"
              />
            </div>
          </div>
          <div className="row mb-3">
            <div className="col-6">
              <label className="form-label fw-bold">แก้ไขโดย</label>
              <input
                type="text"
                className="form-control form-control-sm"
                style={{ width: "25%" }}
                placeholder="กรอกชื่อผู้แก้ไข"
              />
            </div>
            <div className="col-6">
              <label className="form-label fw-bold">สถานะ</label>
              <select
                className="form-select form-select-sm"
                style={{ width: "25%" }}
              >
                <option value="received">ได้รับ</option>
                <option value="pending">รอดำเนินการ</option>
                <option value="completed">เสร็จสิ้น</option>
              </select>
            </div>
          </div>
          <button type="submit" className="btn btn-danger w-100 shadow-sm">
            บันทึกข้อมูล
          </button>
        </form>
      </div>

      <div className="card shadow-sm">
        <div className="card-header d-flex justify-content-between align-items-center btn-gradient-red text-white">
          <h5 className="mb-0">รายการคืนสินค้า</h5>
          <input
            type="text"
            className="form-control w-25"
            placeholder="ค้นหาเลขเอกสารการคืน"
            value={searchText}
            onChange={(e) => setSearchText(e.target.value)}
          />
        </div>
        <div className="card-body p-0">
          <div className="table-responsive">
            <table className="table table-hover table-bordered mb-0">
              <thead className="bg-light">
                <tr>
                  <th className="text-center">รายละเอียดการคืนสินค้า</th>
                  {columnNames.map((column) => (
                    <th key={column.key}>{column.label}</th>
                  ))}
                  <th>Action</th>
                </tr>
              </thead>
              <tbody>
                {rows
                  .filter((row) =>
                    row.col1.toLowerCase().includes(searchText.toLowerCase())
                  )
                  .map((row, index) => (
                    <React.Fragment key={index}>
                      <tr>
                        <td className="text-center">
                          <button
                            className="btn btn-link text-primary"
                            onClick={() => toggleDetails(index)}
                            title="แสดงรายละเอียด"
                          >
                            <i className="fas fa-plus-circle fa-lg"></i>
                          </button>
                        </td>
                        {columnNames.map((column) => (
                          <td key={column.key}>
                            {editingRowIndex === index ? (
                              <input
                                type="text"
                                className="form-control form-control-sm"
                                value={editingRowData[column.key]}
                                onChange={(e) =>
                                  handleChange(column.key, e.target.value)
                                }
                              />
                            ) : (
                              row[column.key]
                            )}
                          </td>
                        ))}
                        <td>
                          {editingRowIndex === index ? (
                            <div style={{ display: "flex", gap: "10px" }}>
                              <button
                                className="btn btn-success"
                                onClick={handleSaveRow}
                              >
                                บันทึก
                              </button>
                              <button
                                className="btn btn-secondary"
                                onClick={() => setEditingRowIndex(null)}
                              >
                                ยกเลิก
                              </button>
                            </div>
                          ) : (
                            <div style={{ display: "flex", gap: "10px" }}>
                              <button
                                className="btn btn-warning"
                                onClick={() => handleEditRow(index)}
                                title="แก้ไข"
                              >
                                แก้ไข
                              </button>
                              <button
                                className="btn btn-danger"
                                onClick={() => handleDeleteRow(index)}
                                title="ลบ"
                              >
                                ลบ
                              </button>
                            </div>
                          )}
                        </td>
                      </tr>
                      {row.showDetails && (
                        <tr>
                          <td colSpan={columnNames.length + 2}>
                            <table className="table table-bordered">
                              <thead className="bg-secondary text-white">
                                <tr>
                                  {detailColumnNames.map((name, i) => (
                                    <th key={`col-${i}`}>{name}</th>
                                  ))}
                                </tr>
                              </thead>
                              <tbody>
                                <tr>
                                  {detailColumnNames.map((_, i) => (
                                    <td key={`data-${i}`}>-</td>
                                  ))}
                                </tr>
                              </tbody>
                            </table>
                          </td>
                        </tr>
                      )}
                    </React.Fragment>
                  ))}
              </tbody>
            </table>
          </div>
        </div>
      </div>
    </div>
  );
}

export default ReceiveProductReturns;
