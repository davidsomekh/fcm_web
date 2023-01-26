importScripts(
    "https://www.gstatic.com/firebasejs/9.10.0/firebase-app-compat.js"
  );
  importScripts(
    "https://www.gstatic.com/firebasejs/9.10.0/firebase-messaging-compat.js"
  );
  
  firebase.initializeApp({
    apiKey: "AIzaSyD3lMrCCqv8xI0s0Q6kgfySY35RTu8Bseg",
  authDomain: "fcmweb-5368f.firebaseapp.com",
  projectId: "fcmweb-5368f",
  storageBucket: "fcmweb-5368f.appspot.com",
  messagingSenderId: "34522456568",
  appId: "1:34522456568:web:2eef055ca6ae8f5c89f60d",
  measurementId: "G-36SNYEVRR7"
  });
  // Necessary to receive background messages:
  const messaging = firebase.messaging();
  
  // Optional:
  messaging.onBackgroundMessage((m) => {
    console.log("onBackgroundMessage", m);
  });
  