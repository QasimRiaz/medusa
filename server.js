const express = require("express");
const app = express();

const port = process.env.PORT || 9000;  // Use the PORT environment variable if available, otherwise fallback to 9000
app.listen(port, () => {
  console.log(`Medusa backend running on port ${port}`);
});
