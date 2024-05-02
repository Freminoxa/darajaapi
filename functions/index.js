const {onRequest} = require("firebase-functions/v2/https");
// Use logger if needed, remove otherwise
// const functions = require("firebase-functions");

exports.receiveCallback = onRequest(async (req, res) => {
  const original = req.body.Body; // Remove extra semicolon

  console.log("RECEIVED RESPONSE:", original); // Consistent indentation

  res.json({result: "Done"}); // Consistent indentation
});

// Add a newline character at the end of the file (if missing)
