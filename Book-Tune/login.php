<?php
session_start();
require 'db.php';
$msg = null;
if ($_SERVER["REQUEST_METHOD"] === "POST") {
    $username = trim($_POST["username"]);
    $password = $_POST["password"];
    $sql = "SELECT * FROM users WHERE username = ?";
    $stmt = $conn->prepare($sql);
    $stmt->bind_param("s", $username);
    $stmt->execute();
    $result = $stmt->get_result();
    $user = $result->fetch_assoc();
    if ($user && password_verify($password, $user["password"])) {
        $_SESSION["user_id"] = $user["id"];
        $_SESSION["username"] = $user["username"];
        $_SESSION["is_premium"] = $user["is_premium"];
        header("Location: index.php");
        exit();
    } else { $msg = "Invalid username or password."; }
}
$registered = isset($_GET['registered']);
?>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8"><meta name="viewport" content="width=device-width, initial-scale=1">
  <title>Log In • Book‑Tune</title>
  <link rel="stylesheet" href="style.css">
</head>
<body>
  <?php if($registered): ?><div class="alert">Registration successful! You can log in now.</div><?php endif; ?>
  <?php if($msg): ?><div class="alert"><?php echo htmlspecialchars($msg); ?></div><?php endif; ?>
  <form class="form" method="POST" action="login.php" autocomplete="on">
    <h2>Welcome back</h2>
    <div class="row"><label>Username</label><input name="username" required></div>
    <div class="row"><label>Password</label><input type="password" name="password" required></div>
    <button class="submit" type="submit">Log In</button>
    <p class="hint">No account? <a href="signup.php">Sign up</a></p>
  </form>
</body>
</html>
