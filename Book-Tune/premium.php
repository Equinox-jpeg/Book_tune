<?php
session_start();
require 'db.php';
if (!isset($_SESSION["user_id"])) { header("Location: login.php"); exit(); }
$userId = $_SESSION["user_id"];
$sql = "UPDATE users SET is_premium = 1 WHERE id = ?";
$stmt = $conn->prepare($sql);
$stmt->bind_param("i", $userId);
if ($stmt->execute()) {
  $_SESSION["is_premium"] = 1;
  $msg = "You are now a premium member!";
} else { $msg = "Upgrade failed. Please try again."; }
?>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8"><meta name="viewport" content="width=device-width, initial-scale=1">
  <title>Premium • Book‑Tune</title>
  <link rel="stylesheet" href="style.css">
</head>
<body>
  <div class="alert"><?php echo htmlspecialchars($msg); ?></div>
  <div class="form" style="text-align:center">
    <a class="btn" href="index.php">Go to Home</a>
  </div>
</body>
</html>
