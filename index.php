<?php
require_once __DIR__ . '/includes/functions.php';
$page_title = 'Home';
$latest = function ($type) {
    return q_all(media_select() . " WHERE m.media_type=? AND m.status='active' ORDER BY m.created_at DESC, m.id DESC LIMIT 5", [$type]);
};
$music  = $latest('music');
$videos = $latest('video');
include __DIR__ . '/includes/header.php';
?>
<?php $feat = $music[0] ?? null; ?>
<section class="hero hero-pro" id="hero">
  <div class="hero-spot"></div>
  <div class="hero-grid"></div>
  <div class="container position-relative">
    <div class="row align-items-center g-5">
      <div class="col-lg-6">
        <div class="hero-copy">
          <span class="hero-tag"><i class="bi bi-stars me-1"></i>Music &amp; Videos</span>
          <h1>Welcome to<br><span class="grad">SOUND</span> Entertainment</h1>
          <p>Your Ultimate Destination for Music &amp; Videos</p>
          <form class="hero-search" action="<?= url('search.php') ?>" method="get" role="search">
            <i class="bi bi-search"></i>
            <input type="search" name="q" placeholder="Search songs, videos, artists..." aria-label="Search">
            <button class="btn btn-pink">Search</button>
          </form>
          <div class="d-flex flex-wrap gap-2 mt-4">
            <a href="<?= url('music.php') ?>" class="btn btn-pink btn-lg px-4"><i class="bi bi-play-fill me-1"></i>Explore Now</a>
            <a href="<?= url('videos.php') ?>" class="btn btn-ghost btn-lg px-4"><i class="bi bi-camera-video me-1"></i>Watch Videos</a>
          </div>
        </div>
      </div>
      <div class="col-lg-6 d-none d-lg-block">
        <div class="hero-stage" aria-hidden="false">
          <span class="orbit"></span>
          <div class="vinyl">
            <div class="vinyl-label">
              <?php if ($feat): ?><?= thumb($feat['thumbnail'], 'music', $feat['title']) ?><?php else: ?><img src="<?= url('assets/images/logo.svg') ?>" alt=""><?php endif; ?>
            </div>
          </div>
          <?php if ($feat): ?>
          <a class="float-card fc-a" href="<?= media_link($feat) ?>">
            <span class="eq"><i></i><i></i><i></i><i></i></span>
            <span class="fc-text"><small>Trending now</small><strong><?= e($feat['title']) ?></strong><em><?= e($feat['artists'] ?? '') ?></em></span>
          </a>
          <?php endif; ?>
          <div class="float-card fc-b"><i class="bi bi-star-fill"></i><span class="fc-text"><strong>Rate &amp; Review</strong></span></div>
          <div class="float-card fc-c"><i class="bi bi-camera-video-fill"></i><span class="fc-text"><strong>HD Videos</strong></span></div>
        </div>
      </div>
    </div>
  </div>
</section>

<div class="marquee" aria-hidden="true">
  <div class="marquee-track">
    <?php for ($i = 0; $i < 6; $i++): ?><span>Listen</span><i></i><span>Watch</span><i></i><span>Review</span><i></i><span>Enjoy</span><i></i><?php endfor; ?>
  </div>
</div>

<section class="container home-sec">
  <div class="sec-head">
    <div><span class="eyebrow">New releases</span><h2><i class="bi bi-music-note-beamed"></i>Latest Music</h2></div>
    <a class="pill-link" href="<?= url('music.php') ?>">View all <i class="bi bi-arrow-right"></i></a>
  </div>
  <?php if ($music): ?>
    <div class="row row-cols-2 row-cols-md-3 row-cols-lg-5 g-3 g-lg-4"><?php foreach ($music as $m) echo media_card($m); ?></div>
  <?php else: ?>
    <p class="text-muted text-center py-4 mb-0">No music has been added yet.</p>
  <?php endif; ?>
</section>

<section class="container home-sec">
  <div class="sec-head">
    <div><span class="eyebrow">Fresh to watch</span><h2><i class="bi bi-camera-reels"></i>Latest Videos</h2></div>
    <a class="pill-link" href="<?= url('videos.php') ?>">View all <i class="bi bi-arrow-right"></i></a>
  </div>
  <?php if ($videos): ?>
    <div class="row row-cols-1 row-cols-sm-2 row-cols-lg-3 g-3 g-lg-4"><?php foreach ($videos as $m) echo media_card($m); ?></div>
  <?php else: ?>
    <p class="text-muted text-center py-4 mb-0">No videos have been added yet.</p>
  <?php endif; ?>
</section>

<section class="container home-sec">
  <div class="sec-head"><div><span class="eyebrow">Browse</span><h2><i class="bi bi-compass"></i>Explore</h2></div></div>
  <div class="row g-3">
    <div class="col-6 col-lg-3"><a class="cat-tile ct-music" href="<?= url('music.php') ?>"><i class="bi bi-music-note-list"></i><strong>Music</strong><span>Songs</span><em class="bi bi-arrow-up-right"></em></a></div>
    <div class="col-6 col-lg-3"><a class="cat-tile ct-video" href="<?= url('videos.php') ?>"><i class="bi bi-play-btn"></i><strong>Videos</strong><span>Watch</span><em class="bi bi-arrow-up-right"></em></a></div>
    <div class="col-6 col-lg-3"><a class="cat-tile ct-album" href="<?= url('albums.php') ?>"><i class="bi bi-disc"></i><strong>Albums</strong><span>Collections</span><em class="bi bi-arrow-up-right"></em></a></div>
    <div class="col-6 col-lg-3"><a class="cat-tile ct-artist" href="<?= url('artists.php') ?>"><i class="bi bi-mic"></i><strong>Artists</strong><span>Singers</span><em class="bi bi-arrow-up-right"></em></a></div>
  </div>
</section>

<?php if (!is_logged_in()): ?>
<section class="container home-cta">
  <div class="cta-card">
    <div class="d-flex align-items-center gap-3">
      <img class="cta-logo" src="<?= url('assets/images/logo.svg') ?>" alt="">
      <div>
        <h3>Join SOUND Entertainment</h3>
        <p class="mb-0">Listen &bull; Watch &bull; Review &bull; Enjoy</p>
      </div>
    </div>
    <a href="<?= url('auth/register.php') ?>" class="btn btn-pink btn-lg px-4">Create an account</a>
  </div>
</section>
<?php endif; ?>
<?php include __DIR__ . '/includes/footer.php'; ?>
