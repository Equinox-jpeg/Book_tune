<?php
require 'db.php';
session_start();
$msg = null;

if ($_SERVER["REQUEST_METHOD"] === "POST") {
    $username = trim($_POST["username"]);
    $email = trim($_POST["email"]);
    $password = $_POST["password"];
    if(strlen($username) < 3){ $msg = "Username must be at least 3 characters."; }
    elseif(!filter_var($email, FILTER_VALIDATE_EMAIL)){ $msg = "Invalid email."; }
    elseif(strlen($password) < 6){ $msg = "Password must be at least 6 characters."; }
    else{
        $hash = password_hash($password, PASSWORD_DEFAULT);
        $sql = "INSERT INTO users (username, email, password) VALUES (?, ?, ?)";
        $stmt = $conn->prepare($sql);
        $stmt->bind_param("sss", $username, $email, $hash);
        if ($stmt->execute()) {
            header("Location: login.php?registered=1");
            exit();
        } else {
            $msg = "That username or email is already taken.";
        }
    }
}
?>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8"><meta name="viewport" content="width=device-width, initial-scale=1">
  <title>Sign Up • Book‑Tune</title>
  <link rel="stylesheet" href="style.css">
</head>
<body>
  <?php if($msg): ?><div class="alert"><?php echo htmlspecialchars($msg); ?></div><?php endif; ?>
  <form class="form" method="POST" action="signup.php" autocomplete="on">
    <h2>Create your account</h2>
    <div class="row"><label>Username</label><input name="username" required></div>
    <div class="row"><label>Email</label><input type="email" name="email" required></div>
    <div class="row"><label>Password</label><input type="password" name="password" required></div>
    <button class="submit" type="submit">Sign Up</button>
    <p class="hint">Already have an account? <a href="login.php">Log in</a></p>
  </form>
</body>
</html>
