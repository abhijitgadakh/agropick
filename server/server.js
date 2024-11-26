const express = require("express");
const cors = require("cors");
const routes = require("./routes/routes");

const app = express();

// Middleware
app.use(cors());
app.use(express.json());

// Routes
app.use("/", routes);

// Start the server
// const PORT = 3001;
// app.listen(PORT, () => {
//   console.log(`Server running on http://localhost:${PORT}`);
// });

app.use(
  cors({
    origin: "https://agropick-client.vercel.app", // Allow requests from this origin
    methods: ["GET", "POST", "PUT", "DELETE"], // Allow specific methods
    credentials: true, // Include credentials if needed
  })
);
