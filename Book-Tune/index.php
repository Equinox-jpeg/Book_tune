<?php
session_start();
$isLoggedIn = isset($_SESSION["user_id"]);
$isPremium = isset($_SESSION["is_premium"]) && $_SESSION["is_premium"] == 1;
$username = $isLoggedIn ? $_SESSION["username"] : null;
?>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1" />
  <title>Book‑Tune</title>
  <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;600&display=swap" rel="stylesheet">
  <link rel="stylesheet" href="style.css" />
  <script defer src="books.js"></script>
  <script defer src="script.js"></script>
  <script defer src="custom.js"></script>
</head>
<body>
  <header class="site-header">
    <h1 class="logo">📚 Book‑Tune</h1>

    <div class="controls">
      <input id="search" type="text" placeholder="Search books, authors…" aria-label="Search books" />
      <select id="categoryFilter" aria-label="Filter by category">
        <option value="all">All Categories</option>
      </select>
      <button id="darkModeToggle" class="dark-btn" aria-label="Toggle dark mode">🌙</button>
    </div>

    <nav class="auth">
      <?php if(!$isLoggedIn): ?>
        <a class="btn" href="signup.php">Sign Up</a>
        <a class="btn ghost" href="login.php">Log In</a>
      <?php else: ?>
        <span class="welcome">Hi, <?php echo htmlspecialchars($username); ?><?php if($isPremium) echo " ⭐"; ?></span>
        <?php if(!$isPremium): ?>
          <a class="btn" href="premium.php">Go Premium</a>
        <?php endif; ?>
        <a class="btn ghost" href="logout.php">Log Out</a>
      <?php endif; ?>
      <?php if($isLoggedIn): ?>
        <a class="btn" href="add_book.php">📚 Add Book</a>
      <?php endif; ?>
    </nav>
  </header>

  <main id="book-list" class="grid fade-in" aria-live="polite"></main>

  <footer class="site-footer">
    <p>© 2025 Book‑Tune</p>
  </footer>
</body>
</html>
