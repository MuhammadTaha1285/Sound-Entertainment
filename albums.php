<?php
require_once __DIR__ . '/includes/functions.php';
$page_title = 'Albums';
$page = max(1, (int)($_GET['page'] ?? 1));
$per = 18;
$total = (int)q_val("SELECT COUNT(*) FROM albums");
$rows = q_all("SELECT al.*, (SELECT COUNT(*) FROM media m WHERE m.album_id = al.id AND m.status='active') AS cnt
               FROM albums al ORDER BY al.album_name LIMIT $per OFFSET " . (($page - 1) * $per));
include __DIR__ . '/includes/header.php';
?>
<section class="page-head"><div class="container"><h1 class="page-title"><i class="bi bi-disc"></i> Albums</h1></div></section>
<div class="container py-4">
  <?php if (!$rows): ?><p class="text-center text-muted py-5">No albums have been added yet.</p><?php endif; ?>
  <div class="row row-cols-2 row-cols-sm-3 row-cols-md-4 row-cols-lg-6 g-3">
    <?php foreach ($rows as $al): ?>
      <div class="col">
        <a class="entity-card album" href="<?= url('album-details.php?id=' . (int)$al['id']) ?>">
          <div class="entity-img"><?= thumb($al['cover_image'], 'album', $al['album_name']) ?></div>
          <div class="entity-name"><?= e($al['album_name']) ?></div>
          <div class="entity-sub"><?= $al['release_year'] ? e($al['release_year']) . ' &middot; ' : '' ?><?= (int)$al['cnt'] ?> item<?= (int)$al['cnt'] === 1 ? '' : 's' ?></div>
        </a>
      </div>
    <?php endforeach; ?>
  </div>
  <?= paginate($total, $page, $per) ?>
</div>
<?php include __DIR__ . '/includes/footer.php'; ?>
