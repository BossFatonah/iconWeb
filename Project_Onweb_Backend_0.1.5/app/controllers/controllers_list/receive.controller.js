const db = require('../../models');
const Receive = db.receive
const Receive_type = db.receive_type
const Vendor = db.vendor
const Employee = db.employee
const Main_product = db.main_product

exports.getAllReceives = async (req, res) => {
    try {
        const receives = await Receive.findAll({
            attributes: [
                'document_No_receive',
                'note_receive',
                'ref_No_receive',
                'delivery_No_receive',
                'create_receive_by',
                'edit_receive_by',
                'status_receive',
                'date_receive',
            ],
            include: [
                {
                    model: Receive_type,
                    attributes: ["name_receive_type"]
                },
                {
                    model: Vendor,
                    attributes: ["name_vendor"]
                },
                {
                    model: Employee,
                    attributes: ["code_employee", "firstname_employee"]
                },
                {
                    model: Main_product,
                    attributes: ["code_product", "name_product", "lot_dealer_product", "amount_product", "amount_serial", "unit_product", "storage_location", "buy_price", "use_serial", "use_lot", "MFG_Date", "EXP_Date"]
                }
            ]
        });
        res.status(200).json(receives);
    } catch (error) {
        console.error("Error fetching receives:", error);
        res.status(500).json({ message: "Internal server error" });
    }
};

exports.createReceive = async (req, res) => {
    try {
        // รับค่าจาก request body
        const {
            document_No_receive,
            note_receive,
            ref_No_receive,
            delivery_No_receive,
            status_receive,
            date_receive,
            employeeId,
            receiveTypeId,
            vendorId,
            approvedById
        } = req.body;

        // สมมติว่า req.user จะมีข้อมูลผู้ใช้ที่ทำการร้องขอ
        const user = req.user ? req.user.username : "Unknown"; // ใช้ค่า "Unknown" หากไม่พบผู้ใช้

        const newReceive = await Receive.create({
            document_No_receive,
            note_receive,
            ref_No_receive,
            delivery_No_receive,
            status_receive,
            date_receive,
            employeeId,          // เชื่อมโยงกับ employee
            receiveTypeId,       // เชื่อมโยงกับ receive_type
            vendorId,            // เชื่อมโยงกับ vendor
            approvedById,        // เชื่อมโยงกับ employee ที่อนุมัติ
            create_receive_by: user,   // กำหนดผู้ใช้ที่ทำการสร้าง
            edit_receive_by: user    // กำหนดผู้ใช้ที่ทำการแก้ไข
        });

        res.status(201).json(newReceive);
    } catch (error) {
        console.error("Error creating receive:", error);
        res.status(500).json({ message: "Internal server error" });
    }
};

