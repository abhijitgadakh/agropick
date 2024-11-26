const mysql = require("mysql2/promise");

async function getDBConnection() {
  return await mysql.createConnection({
    host: "localhost",
    user: "root",
    password: "",
    database: "db_agro_pick",
  });
}

async function addUser(user) {
  const { email, name, password, contactNumber, address, pincode } = user;

  try {
    const db = await getDBConnection();
    const formattedDate = getFormattedDate();

    const query =
      "INSERT INTO USERS (name, username, email, password, contact_number, user_type, status, created_on, created_by, modified_on, modified_by, address, pincode_id) VALUES(?,?,?,?,?,?,?,?,?,?,?,?,?)";

    const values = [
      name,
      email,
      email,
      password,
      contactNumber,
      "c",
      1,
      formattedDate,
      0,
      formattedDate,
      0,
      address,
      pincode,
    ];

    const [result] = await db.execute(query, values);
    console.log("User added:", result);

    await db.end();
    return { success: true, message: "User added successfully!" };
  } catch (error) {
    console.error("Error adding user:", error);
    return { success: false, message: "Error adding user" };
  }
}

function getFormattedDate() {
  const date = new Date();
  return date.toISOString().slice(0, 19).replace("T", " ");
}

module.exports = {
  getFormattedDate,
  getDBConnection,
  addUser,
};
