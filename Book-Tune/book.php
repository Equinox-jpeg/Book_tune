<?php
session_start();
$isLoggedIn = isset($_SESSION["user_id"]);
$isPremium = isset($_SESSION["is_premium"]) && $_SESSION["is_premium"] == 1;
$bookId = isset($_GET['id']) ? intval($_GET['id']) : 0;

require_once 'db.php';
require 'premium_ids.php';

$dbBook = null;
if ($bookId > 0) {
  $stmt = $conn->prepare("SELECT id, title, author, description, category, cover, is_premium FROM books WHERE id = ?");
  $stmt->bind_param("i", $bookId);
  if ($stmt->execute()) {
    $res = $stmt->get_result();
    if ($res && $res->num_rows) { $dbBook = $res->fetch_assoc(); }
  }
}

if ($dbBook) {
  $isPremiumBook = intval($dbBook['is_premium']) === 1;
} else {
  $isPremiumBook = in_array($bookId, $PREMIUM_BOOK_IDS);
}

if ($isPremiumBook && (!$isLoggedIn || !$isPremium)) {
  // Gate: prompt to login/upgrade
  ?>
  <!DOCTYPE html>
  <html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <title>Book Details • Book‑Tune</title>
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;600&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="style.css" />
  </head>
  <body>
    <header class="site-header">
      <h1 class="logo">📚 Book‑Tune</h1>
      <a class="back-btn" href="index.php">⬅ Back to Home</a>
    </header>
    <main class="fade-in container">
      <div class="card" style="padding:18px">
        <h2>Premium Book</h2>
        <p>This book is for premium members only.</p>
        <?php if(!$isLoggedIn): ?>
          <p><a class="btn" href="login.php?next=<?php echo urlencode('book.php?id='.$bookId); ?>">Log In</a></p>
        <?php endif; ?>
        <?php if($isLoggedIn && !$isPremium): ?>
          <p><a class="btn" href="premium.php">Upgrade to Premium</a></p>
        <?php endif; ?>
      </div>
    </main>
  </body>
  </html>
  <?php
  exit;
}

// If DB book found, render server-side
if ($dbBook) {
  ?>
  <!DOCTYPE html>
  <html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <title><?php echo htmlspecialchars($dbBook['title']); ?> • Book‑Tune</title>
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;600&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="style.css" />
  </head>
  <body>
    <header class="site-header">
      <h1 class="logo">📚 Book‑Tune</h1>
      <a class="back-btn" href="index.php">⬅ Back to Home</a>
    </header>
    <main class="fade-in">
      <div class="book-detail-card">
        <img src="<?php echo htmlspecialchars($dbBook['cover'] ?: 'images/sample-upload.jpg'); ?>" alt="Cover">
        <div>
          <h2><?php echo htmlspecialchars($dbBook['title']); ?> <?php echo intval($dbBook['is_premium'])===1 ? '<span class="badge">Premium</span>' : ''; ?></h2>
          <p class="muted"><strong>Author:</strong> <?php echo htmlspecialchars($dbBook['author']); ?></p>
          <p><?php echo nl2br(htmlspecialchars($dbBook['description'])); ?></p>
          <p class="muted"><strong>Category:</strong> <?php echo htmlspecialchars($dbBook['category'] ?: 'General'); ?></p>
          <p><a class="back-btn" href="index.php">⬅ Back to Home</a></p>
        </div>
      </div>
    </main>
  </body>
  </html>
  <?php
  exit;
}

// Fallback to client-side classic books.js rendering
require 'books.js';
?>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1" />
  <title>Book Details • Book‑Tune</title>
  <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;600&display=swap" rel="stylesheet">
  <link rel="stylesheet" href="style.css" />
  <script defer src="books.js"></script>
  <script>
  document.addEventListener('DOMContentLoaded', () => {
    const id = <?php echo $bookId; ?>;
    const container = document.getElementById('bookContent');
    const book = (window.books || []).find(b => b.id === id);
    if(!book){ container.innerHTML = '<p>Book not found. <a class="back-btn" href="index.php">Back to Home</a></p>'; return; }
    container.innerHTML = `
      <img src="${book.cover}" alt="${book.title} cover">
      <div>
        <h2>${book.title} ${book.isPremium ? '<span class="badge">Premium</span>' : ''}</h2>
        <p class="muted"><strong>Author:</strong> ${book.author}</p>
        <p>${book.description}</p>
        <p class="muted"><strong>Category:</strong> ${book.category}</p>
        <p><a class="back-btn" href="index.php">⬅ Back to Home</a></p>
      </div>
    `;
  });
  </script>
</head>
<body>
  <header class="site-header">
    <h1 class="logo">📚 Book‑Tune</h1>
    <a class="back-btn" href="index.php" aria-label="Back to home">⬅ Back to Home</a>
  </header>
  <main class="fade-in">
    <div id="bookContent" class="book-detail-card" aria-live="polite"></div>
  </main>
  <footer class="site-footer">
    <p>© 2025 Book‑Tune</p>
  </footer>
</body>
</html>
