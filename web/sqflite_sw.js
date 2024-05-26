self.addEventListener('install', function(event) {
    self.skipWaiting();
  });
  
  self.addEventListener('activate', function(event) {
    event.waitUntil(self.clients.claim());
  });
  
  self.addEventListener('fetch', function(event) {
    // Customize this based on your requirements
  });
  