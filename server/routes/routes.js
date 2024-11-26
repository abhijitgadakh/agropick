const express = require("express");
const { addUser } = require("../util/dbUtil");

const router = express.Router();

router.post("/register", async (req, res) => {
  try {
    const user = req.body;

    // Validate request data
    if (
      !user.email ||
      !user.name ||
      !user.password ||
      !user.contactNumber ||
      !user.address ||
      !user.pincode
    ) {
      return res.status(400).json({ message: "All fields are required" });
    }

    // Call the function to add the user to the database
    const result = await addUser(user);
    res.status(201).json(result);
  } catch (error) {
    console.error("Error during registration:", error);
    res.status(500).json({ message: "Internal server error" });
  }
});

module.exports = router;
