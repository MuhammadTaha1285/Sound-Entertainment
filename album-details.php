<?php
require_once __DIR__ . '/includes/functions.php';
$id = (int)($_GET['id'] ?? 0);
$al = q_one("SELECT * FROM albums WHERE id=?", [$id]);
if (!$al) not_found('This album', 'albums.php');

$tracks = q_all(media_select() . " WHERE m.album_id=? AND m.status='active' ORDER BY m.media_type, m.id", [$id]);
$page_title = $al['album_name'];
include __DIR__ . '/includes/header.php';
?>
<div class="container py-4">
  <div class="detail-card">
    <div class="row g-4">
      <div class="col-md-4 col-lg-3"><div class="detail-thumb"><?= thumb($al['cover_image'], 'album', $al['album_name']) ?></div></div>
      <div class="col">
        <h1 class="detail-title"><?= e($al['album_name']) ?></h1>
        <p class="text-muted"><?= $al['release_year'] ? 'Released ' . e($al['release_year']) . ' &middot; ' : '' ?><?= count($tracks) ?> item<?= count($tracks) === 1 ? '' : 's' ?></p>
        <?php if (trim((string)$al['description']) !== ''): ?><p><?= nl2br(e($al['description'])) ?></p><?php endif; ?>
      </div>
    </div>
  </div>
  <div class="detail-card mt-4">
    <h2 class="h5 mb-2">In this album</h2>
    <?php if (!$tracks): ?><p class="text-muted mb-0">No songs or videos in this album yet.</p><?php endif; ?>
    <?php foreach ($tracks as $i => $t): ?>
      <a class="track-row" href="<?= media_link($t) ?>">
        <span class="no"><?= $i + 1 ?></span>
        <span class="mini-thumb"><?= thumb($t['thumbnail'], $t['media_type'], $t['title']) ?></span>
        <span class="flex-grow-1"><strong><?= e($t['title']) ?></strong><br><small class="text-muted"><?= e($t['artists'] ?? '') ?></small></span>
        <span class="badge text-bg-light"><?= $t['media_type'] === 'music' ? 'Music' : 'Video' ?></span>
        <?= stars($t['avg_rating'] ?? 0) ?>
      </a>
    <?php endforeach; ?>
  </div>
</div>
<?php include __DIR__ . '/includes/footer.php'; ?>
