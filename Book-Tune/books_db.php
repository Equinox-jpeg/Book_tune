<?php
header('Content-Type: application/json');
require_once 'db.php';
$out = [];
$res = $conn->query("SELECT id, title, author, description, category, cover, is_premium, UNIX_TIMESTAMP(created_at) AS createdAt FROM books ORDER BY created_at DESC");
if ($res) {
  while($r = $res->fetch_assoc()){
    $out[] = [
      "id" => intval($r["id"]),
      "title" => $r["title"],
      "author" => $r["author"],
      "description" => $r["description"],
      "category" => $r["category"] ?: "General",
      "cover" => $r["cover"] ?: "images/sample-upload.jpg",
      "isPremium" => intval($r["is_premium"]) === 1,
      "createdAt" => intval($r["createdAt"] ?: 0)
    ];
  }
}
echo json_encode($out);
?>