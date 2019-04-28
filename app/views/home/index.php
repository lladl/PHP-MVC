<div class="container">
  <div class="jumbotron mt-4">
    <h1 class="display-4">Selamat Datang di PHP MVC!</h1>
    <p class="lead">Hellow my friends, my name is <?= $data['nama']; ?></p>
    <hr class="my-4">
    <p>Jika ingin mengetahui profil saya lebih lanjut silahkan klik link dibawah</p>
    <a class="btn btn-primary btn-lg" href=" <?= BASEURL; ?>/about/" role="button">About Meh!</a>
  </div>
</div>