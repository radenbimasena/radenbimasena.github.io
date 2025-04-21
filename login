<!DOCTYPE html>
<html lang="id">
<head>
  <meta charset="UTF-8">
  <title>Login HijabHasna</title>
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <script src="https://www.gstatic.com/firebasejs/9.22.0/firebase-app-compat.js"></script>
  <script src="https://www.gstatic.com/firebasejs/9.22.0/firebase-auth-compat.js"></script>
  <style>
    body {
      font-family: Arial, sans-serif;
      background: #f4f7f9;
      display: flex;
      flex-direction: column;
      align-items: center;
      justify-content: center;
      height: 100vh;
      margin: 0;
      text-align: center;
    }
    h1 {
      color: #333;
    }
    button {
      padding: 12px 20px;
      background-color: #007acc;
      color: white;
      border: none;
      border-radius: 8px;
      font-size: 16px;
      cursor: pointer;
      margin-top: 20px;
    }
    button:hover {
      background-color: #005fa3;
    }
    #user-info {
      margin-top: 20px;
    }
  </style>
</head>
<body>
  <h1>Login ke HijabHasna</h1>
  <p>Gunakan akun Google kamu untuk masuk dan akses halaman produk</p>
  <button onclick="loginWithGoogle()">🔐 Login dengan Google</button>
  <div id="user-info"></div>

  <script>
    const firebaseConfig = {'apiKey': 'AIzaSyBRrKuPP5iTD23ougJchfyEx6WxSGdm99M', 'authDomain': 'hijab-hasna.firebaseapp.com', 'projectId': 'hijab-hasna', 'storageBucket': 'hijab-hasna.firebasestorage.app', 'messagingSenderId': '501907188626', 'appId': '1:501907188626:web:691847ee29997a23456f4b', 'measurementId': 'G-XQB8SHBNWT'};

    firebase.initializeApp(firebaseConfig);
    const auth = firebase.auth();

    function loginWithGoogle() {
      const provider = new firebase.auth.GoogleAuthProvider();
      auth.signInWithPopup(provider)
        .then(result => {
          const user = result.user;
          document.getElementById("user-info").innerHTML =
            "✅ Login berhasil sebagai: <b>" + user.displayName + "</b> (" + user.email + ")<br><br>" +
            '<a href="/produk/">➡️ Masuk ke Produk</a>';
        })
        .catch(error => {
          alert("Login gagal: " + error.message);
        });
    }
  </script>
</body>
</html>
