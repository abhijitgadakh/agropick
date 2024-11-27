const mysql = require("mysql2/promise");

async function getDBConnection() {
  return await mysql.createConnection({
    host: "localhost",
    user: "root",
    password: "",
    database: "db_agro_pick",
    // host: "btugnvgwbb2ibv4nfvb1-mysql.services.clever-cloud.com",
    // user: "uxjs33w6kzxqxfdc",
    // password: "QbZdMyPgMxC8yndE4o6T",
    // database: "btugnvgwbb2ibv4nfvb1",
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
async function getUser(username) {}
async function getUserById(id) {}

async function getProducts() {
  const db = await getDBConnection();
  console.log("Database connection established");

  // Use `await db.query` for Promise-based execution
  const query =
    "SELECT inventory.id, inventory.description, inventory.price, inventory.use_before, products.name AS product_name, products.image AS product_image, products.sell_by AS sell_by, users.name AS grown_by, location.area, location.pincode FROM inventory JOIN products ON inventory.product_id = products.id JOIN users ON inventory.grown_by_id = users.id JOIN location ON inventory.grown_at_id = location.id WHERE inventory.use_before > CURRENT_DATE";

  try {
    const [results] = await db.query(query); // Destructure to get the results
    return results; // Return the results to the calling function
  } catch (error) {
    console.error("Error during query execution:", error);
    throw error; // Rethrow the error for higher-level handling
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
  getProducts,
};
