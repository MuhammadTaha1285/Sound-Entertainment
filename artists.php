<?php
require_once __DIR__ . '/includes/functions.php';
$page_title = 'Artists';
$page = max(1, (int)($_GET['page'] ?? 1));
$per = 18;
$total = (int)q_val("SELECT COUNT(*) FROM artists");
$rows = q_all("SELECT a.*, (SELECT COUNT(*) FROM media_artists ma JOIN media m ON m.id = ma.media_id WHERE ma.artist_id = a.id AND m.status='active') AS cnt
               FROM artists a ORDER BY a.artist_name LIMIT $per OFFSET " . (($page - 1) * $per));
include __DIR__ . '/includes/header.php';
?>
<section class="page-head"><div class="container"><h1 class="page-title"><i class="bi bi-person-badge"></i> Artists</h1></div></section>
<div class="container py-4">
  <?php if (!$rows): ?><p class="text-center text-muted py-5">No artists have been added yet.</p><?php endif; ?>
  <div class="row row-cols-2 row-cols-sm-3 row-cols-md-4 row-cols-lg-6 g-3">
    <?php foreach ($rows as $a): ?>
      <div class="col">
        <a class="entity-card" href="<?= url('artist-details.php?id=' . (int)$a['id']) ?>">
          <div class="entity-img"><?= thumb($a['artist_image'], 'artist', $a['artist_name']) ?></div>
          <div class="entity-name"><?= e($a['artist_name']) ?></div>
          <div class="entity-sub"><?= (int)$a['cnt'] ?> item<?= (int)$a['cnt'] === 1 ? '' : 's' ?></div>
        </a>
      </div>
    <?php endforeach; ?>
  </div>
  <?= paginate($total, $page, $per) ?>
</div>
<?php include __DIR__ . '/includes/footer.php'; ?>
