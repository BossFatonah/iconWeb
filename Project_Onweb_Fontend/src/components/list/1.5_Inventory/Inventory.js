import React, { useState } from "react";
import "bootstrap/dist/css/bootstrap.min.css";
import "./Inventory.css"; // CSS for enhanced styling

function Inventory() {
  const [inventory, setInventory] = useState([
    { id: 1, code: "P001", name: "สินค้า A", quantity: 10, status: "พร้อมใช้งาน" },
    { id: 2, code: "P002", name: "สินค้า B", quantity: 0, status: "หมดสต็อก" },
    { id: 2, code: "P002", name: "สินค้า B", quantity: 0, status: "หมดสต็อก" },
    { id: 2, code: "P002", name: "สินค้า B", quantity: 0, status: "หมดสต็อก" },
    { id: 2, code: "P002", name: "สินค้า B", quantity: 0, status: "หมดสต็อก" },
    { id: 2, code: "P002", name: "สินค้า B", quantity: 0, status: "หมดสต็อก" },
    { id: 2, code: "P002", name: "สินค้า B", quantity: 0, status: "หมดสต็อก" },
    { id: 2, code: "P002", name: "สินค้า B", quantity: 0, status: "หมดสต็อก" },
    { id: 2, code: "P002", name: "สินค้า B", quantity: 0, status: "หมดสต็อก" },
    { id: 2, code: "P002", name: "สินค้า B", quantity: 0, status: "หมดสต็อก" },
    { id: 2, code: "P002", name: "สินค้า B", quantity: 0, status: "หมดสต็อก" },
    { id: 2, code: "P002", name: "สินค้า B", quantity: 0, status: "หมดสต็อก" },
    { id: 2, code: "P002", name: "สินค้า B", quantity: 0, status: "หมดสต็อก" },
    { id: 2, code: "P002", name: "สินค้า B", quantity: 0, status: "หมดสต็อก" },
    { id: 2, code: "P002", name: "สินค้า B", quantity: 0, status: "หมดสต็อก" },
  ]);
  const [searchTerm, setSearchTerm] = useState("");

  // Handle search functionality
  const handleSearch = () => {
    if (!searchTerm) {
      setInventory([
        { id: 1, code: "P001", name: "สินค้า A", quantity: 10, status: "พร้อมใช้งาน" },
        { id: 2, code: "P002", name: "สินค้า B", quantity: 0, status: "หมดสต็อก" },
      ]);
      return;
    }
    const filteredInventory = inventory.filter(
      (item) => item.name.includes(searchTerm) || item.code.includes(searchTerm)
    );
    setInventory(filteredInventory);
  };

  // View product history functionality
  const viewProductHistory = (productId) => {
    alert(`ดูประวัติสินค้า: ${productId}`);
  };

  return (
    <div className="content bgcolor">
      <h1 className="text-title">สินค้าคงคลัง</h1>

      {/* Search Bar */}
      <div className="search-bar">
        <input
          type="text"
          placeholder="ค้นหาสินค้า..."
          value={searchTerm}
          className="form-control form-control-custom"
          onChange={(e) => setSearchTerm(e.target.value)}
        />
        <button className="btn btn-gradient-orange" onClick={handleSearch}>
          ค้นหา
        </button>
      </div>

      {/* Inventory Table */}
      {inventory.length > 0 ? (
        <div className="table-responsive">
          <table className="custom-table">
            <thead>
              <tr>
                <th>รหัสสินค้า</th>
                <th>ชื่อสินค้า</th>
                <th>จำนวนคงเหลือ</th>
                <th>สถานะ</th>
                <th>การจัดการ</th>
              </tr>
            </thead>
            <tbody>
              {inventory.map((item) => (
                <tr key={item.id}>
                  <td>{item.code}</td>
                  <td>{item.name}</td>
                  <td>{item.quantity}</td>
                  <td>{item.status}</td>
                  <td>
                    <button
                      className="btn btn-gradient-green"
                      onClick={() => viewProductHistory(item.id)}
                    >
                      ดูประวัติ
                    </button>
                  </td>
                </tr>
              ))}
            </tbody>
          </table>
        </div>
      ) : (
        <div className="no-data text-center">ไม่มีข้อมูลสินค้าคงคลัง</div>
      )}
    </div>
  );
}

export default Inventory;
