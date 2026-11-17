<?php
require_once __DIR__ . '/includes/functions.php';
$page_title = 'Search';
$q = get_str('q');
$rows = [];
$total = 0;
$page = max(1, (int)($_GET['page'] ?? 1));

if ($q !== '') {
    $like = '%' . addcslashes($q, '%_\\') . '%';
    $w = "m.status='active' AND (m.title LIKE ? OR al.album_name LIKE ? OR g.genre_name LIKE ?
          OR EXISTS (SELECT 1 FROM media_artists x JOIN artists a ON a.id = x.artist_id WHERE x.media_id = m.id AND a.artist_name LIKE ?))";
    $p = [$like, $like, $like, $like];
    $total = (int)q_val("SELECT COUNT(*) FROM (" . media_select() . " WHERE $w) t", $p);
    $rows = q_all(media_select() . " WHERE $w ORDER BY m.created_at DESC, m.id DESC LIMIT " . PER_PAGE . " OFFSET " . (($page - 1) * PER_PAGE), $p);
}
include __DIR__ . '/includes/header.php';
?>
<section class="page-head">
  <div class="container">
    <form method="get" class="row g-2 align-items-center">
      <div class="col">
        <input type="search" name="q" value="<?= e($q) ?>" class="form-control" placeholder="Search by song, video, artist, album or genre" aria-label="Search" autofocus>
      </div>
      <div class="col-auto"><button class="btn btn-blue px-4">Search</button></div>
    </form>
  </div>
</section>
<div class="container py-4">
  <?php if ($q === ''): ?>
    <p class="text-center text-muted py-5">Type something above to search the music and video library.</p>
  <?php else: ?>
    <h1 class="h4 mb-1">Search Results for: &ldquo;<?= e($q) ?>&rdquo;</h1>
    <p class="text-muted small mb-3"><?= $total ?> result<?= $total === 1 ? '' : 's' ?> found</p>
    <?= media_grid($rows, false, 'Nothing matched your search. Try a different artist, title or genre.') ?>
    <?= paginate($total, $page) ?>
  <?php endif; ?>
</div>
<?php include __DIR__ . '/includes/footer.php'; ?>
