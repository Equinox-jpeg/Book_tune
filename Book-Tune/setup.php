<?php
// XAMPP defaults
$host = "localhost"; $user = "root"; $pass = ""; $dbname = "book_tune";

$conn = new mysqli($host, $user, $pass);
if ($conn->connect_error) { die("Connection failed: " . $conn->connect_error); }
$conn->query("CREATE DATABASE IF NOT EXISTS `$dbname`");
$conn->select_db($dbname);

// Create users table
$conn->query("CREATE TABLE IF NOT EXISTS users (
  id INT AUTO_INCREMENT PRIMARY KEY,
  username VARCHAR(50) UNIQUE NOT NULL,
  email VARCHAR(100) UNIQUE NOT NULL,
  password VARCHAR(255) NOT NULL,
  is_premium TINYINT(1) DEFAULT 0,
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
)");

// Create books table
$conn->query("CREATE TABLE IF NOT EXISTS books (
  id INT AUTO_INCREMENT PRIMARY KEY,
  title VARCHAR(255) NOT NULL,
  author VARCHAR(255) NOT NULL,
  description TEXT,
  category VARCHAR(100) DEFAULT 'General',
  cover VARCHAR(255),
  is_premium TINYINT(1) DEFAULT 0,
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
)");

// Seed users if not exists
$check = $conn->query("SELECT COUNT(*) AS c FROM users");
$row = $check ? $check->fetch_assoc() : ["c"=>0];
if (intval($row["c"]) === 0) {
  $conn->query("INSERT INTO users (username,email,password,is_premium) VALUES
    ('user','user@test.com', MD5('password'), 0),
    ('premium','premium@test.com', MD5('password'), 1)
  ");
}

if (!file_exists(__DIR__ . "/images")) { mkdir(__DIR__ . "/images", 0777, true); }
if (!file_exists(__DIR__ . "/images/uploads")) { mkdir(__DIR__ . "/images/uploads", 0777, true); }

echo "Setup completed. Database and tables are ready.";
?>