<?php
session_start();
if (!isset($_SESSION["user_id"])) { header("Location: login.php?next=add_book.php"); exit; }
require_once 'db.php';

$err = null;
if ($_SERVER["REQUEST_METHOD"] === "POST") {
  $title = trim($_POST["title"] ?? "");
  $author = trim($_POST["author"] ?? "");
  $description = trim($_POST["description"] ?? "");
  $category = trim($_POST["category"] ?? "General");
  $isPremium = isset($_POST["is_premium"]) ? 1 : 0;
  if (stripos($title, "[Premium]") !== false) { $isPremium = 1; }

  if ($title === "" || $author === "" || $description === "") {
    $err = "Please fill in title, author and description.";
  } else {
    $coverPath = "images/sample-upload.jpg";
    if (isset($_FILES["cover"]) && $_FILES["cover"]["error"] === UPLOAD_ERR_OK) {
      $ext = strtolower(pathinfo($_FILES["cover"]["name"], PATHINFO_EXTENSION));
      if (in_array($ext, ["jpg","jpeg","png","webp"])) {
        if (!file_exists("images/uploads")) { mkdir("images/uploads", 0777, true); }
        $fname = "up-" . time() . "-" . mt_rand(1000,9999) . "." . $ext;
        $dest = "images/uploads/" . $fname;
        if (move_uploaded_file($_FILES["cover"]["tmp_name"], $dest)) { $coverPath = $dest; }
      } else {
        $err = "Cover must be JPG/PNG/WEBP.";
      }
    }
    if (!$err) {
      $stmt = $conn->prepare("INSERT INTO books (title, author, description, category, cover, is_premium) VALUES (?, ?, ?, ?, ?, ?)");
      $stmt->bind_param("sssssi", $title, $author, $description, $category, $coverPath, $isPremium);
      if ($stmt->execute()) {
        header("Location: index.php?added=1");
        exit;
      } else {
        $err = "Database error: " . $conn->error;
      }
    }
  }
}
?>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1" />
  <title>Add Book • Book‑Tune</title>
  <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;600&display=swap" rel="stylesheet">
  <link rel="stylesheet" href="style.css" />
</head>
<body>
<header class="site-header">
  <a class="brand" href="index.php">📚 Book‑Tune</a>
  <nav class="actions">
    <a class="btn ghost" href="index.php">Home</a>
    <a class="btn" href="logout.php">Log Out</a>
  </nav>
</header>

<main class="container">
  <?php if($err): ?><div class="alert"><?php echo htmlspecialchars($err); ?></div><?php endif; ?>
  <form class="card form modern" method="POST" action="add_book.php" enctype="multipart/form-data">
    <h2>Add a New Book</h2>
    <div class="grid2">
      <div class="row"><label>Title*</label><input name="title" required placeholder="[Premium] Your Book Title"></div>
      <div class="row"><label>Author*</label><input name="author" required></div>
      <div class="row full"><label>Description*</label><textarea name="description" rows="6" required></textarea></div>
      <div class="row"><label>Category</label><input name="category" placeholder="e.g., Fantasy, Tech, Biography"></div>
      <div class="row"><label>Premium</label><label class="switch"><input type="checkbox" name="is_premium"><span>Mark as Premium</span></label></div>
      <div class="row full">
        <label>Cover Image</label>
        <input type="file" name="cover" accept=".jpg,.jpeg,.png,.webp">
        <p class="hint">Optional. If omitted, a sample cover is used.</p>
      </div>
    </div>
    <button class="submit" type="submit">Save Book</button>
  </form>
</main>
</body>
</html>
