<?php
require_once __DIR__ . '/includes/functions.php';
$id = (int)($_GET['id'] ?? 0);
$a = q_one("SELECT * FROM artists WHERE id=?", [$id]);
if (!$a) not_found('This artist', 'artists.php');

$sql = media_select() . " WHERE m.status='active' AND m.media_type=?
       AND EXISTS (SELECT 1 FROM media_artists x WHERE x.media_id = m.id AND x.artist_id=?)
       ORDER BY m.release_year DESC, m.id DESC";
$music  = q_all($sql, ['music', $id]);
$videos = q_all($sql, ['video', $id]);
$page_title = $a['artist_name'];
include __DIR__ . '/includes/header.php';
?>
<div class="container py-4">
  <div class="detail-card">
    <div class="artist-hero">
      <div class="entity-img"><?= thumb($a['artist_image'], 'artist', $a['artist_name']) ?></div>
      <div class="flex-grow-1" style="min-width:240px">
        <h1 class="detail-title mb-1"><?= e($a['artist_name']) ?></h1>
        <p class="text-muted small mb-2"><?= count($music) ?> song<?= count($music) === 1 ? '' : 's' ?> &middot; <?= count($videos) ?> video<?= count($videos) === 1 ? '' : 's' ?></p>
        <?php if (trim((string)$a['biography']) !== ''): ?><p class="mb-0"><?= nl2br(e($a['biography'])) ?></p><?php endif; ?>
      </div>
    </div>
  </div>
  <h2 class="h5 mt-4 mb-3">Music</h2>
  <?= media_grid($music, false, 'No music by this artist yet.') ?>
  <h2 class="h5 mt-4 mb-3">Videos</h2>
  <?= media_grid($videos, false, 'No videos by this artist yet.') ?>
</div>
<?php include __DIR__ . '/includes/footer.php'; ?>
