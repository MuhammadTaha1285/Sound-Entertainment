<?php
require_once __DIR__ . '/includes/functions.php';
$page_title = 'About Us';
include __DIR__ . '/includes/header.php';
?>
<section class="about-hero">
  <div class="container">
    <div class="brand justify-content-center mb-3"><img src="<?= url('assets/images/logo.svg') ?>" alt="" style="height:56px"><span><span class="brand-name" style="font-size:2.2rem">SOUND</span><span class="brand-script" style="font-size:2rem">Entertainment</span></span></div>
    <h1 class="display-6 fw-bold">About Us</h1>
    <p>SOUND Entertainment is your ultimate destination for the latest and classic Music &amp; Videos. We bring you the best experience in entertainment with a wide collection of songs and videos.</p>
  </div>
</section>

<div class="container py-5">
  <div class="row g-4">
    <div class="col-md-6 col-lg-3"><div class="feature-card"><i class="bi bi-music-note-beamed"></i><h2 class="h6 mt-2">Music Library</h2><p class="small text-muted mb-0">Browse songs by artist, album, year, genre and language, then press play.</p></div></div>
    <div class="col-md-6 col-lg-3"><div class="feature-card"><i class="bi bi-camera-video"></i><h2 class="h6 mt-2">Video Collection</h2><p class="small text-muted mb-0">Watch music videos right in your browser, on any device.</p></div></div>
    <div class="col-md-6 col-lg-3"><div class="feature-card"><i class="bi bi-star"></i><h2 class="h6 mt-2">Reviews &amp; Ratings</h2><p class="small text-muted mb-0">Rate what you love and tell others what you think.</p></div></div>
    <div class="col-md-6 col-lg-3"><div class="feature-card"><i class="bi bi-shield-check"></i><h2 class="h6 mt-2">Managed Content</h2><p class="small text-muted mb-0">Administrators keep music, videos, artists, albums and users organised.</p></div></div>
  </div>

  <div class="accordion about-acc mt-5" id="aboutAcc">
    <div class="accordion-item">
      <h2 class="accordion-header"><button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#accOverview" aria-expanded="false" aria-controls="accOverview"><i class="bi bi-info-circle me-2"></i>Project Overview</button></h2>
      <div id="accOverview" class="accordion-collapse collapse" data-bs-parent="#aboutAcc"><div class="accordion-body">SOUND Entertainment is a web-based Music and Video Portal developed using PHP, MySQL and Bootstrap. It allows users to browse, search, listen to music, watch videos, and submit reviews and ratings. The Admin can manage music, videos, artists, albums, categories, and users through an Admin Dashboard.</div></div>
    </div>
    <div class="accordion-item" id="terms">
      <h2 class="accordion-header"><button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#accTerms" aria-expanded="false" aria-controls="accTerms"><i class="bi bi-file-earmark-text me-2"></i>Terms &amp; Conditions</button></h2>
      <div id="accTerms" class="accordion-collapse collapse" data-bs-parent="#aboutAcc"><div class="accordion-body">By creating an account you agree to provide correct information, to keep your password private, and to write respectful reviews. The administrators may hide reviews or block accounts that break these rules.</div></div>
    </div>
  </div>

  <div class="white-card mt-4 team-card">
    <h2 class="h5 mb-3">Sound Group &ndash; Our Team</h2>
    <div class="d-flex flex-wrap gap-4">
      <?php foreach (['Taha', 'Safee', 'Rajab', 'Ghulam', 'Ashir'] as $member): ?>
        <div class="text-center"><?= avatar($member, 64) ?><div class="mt-2 fw-semibold"><?= e($member) ?></div></div>
      <?php endforeach; ?>
    </div>
  </div>

</div>
<?php include __DIR__ . '/includes/footer.php'; ?>
