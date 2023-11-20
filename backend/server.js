const express = require("express");
const app = express();
const cors = require("cors");

// const auth = require('./routes/routes')
// Routes
const userRoute = require("./routes/userRoutes");
const orderBookRoute = require("./routes/orderBookRoutes");
const transactionRoute = require("./routes/transactionRoutes");

app.use(express.json());

app.use(
  cors({
    origin: "*",
  })
);

app.use("/users", userRoute);

app.use("/book", orderBookRoute);

app.use("/transaction", transactionRoute);

app.get(`/health`, (req, res) => {
  res.send(`User App Running at port : ${port}`);
  console.log(`User App Running at port : ${port}`);
});

const port = 5001;

app.listen(port, () => {
  console.log("Trader Abhinav's ship has set sail from port: 5001");
});
