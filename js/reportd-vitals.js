import { onCLS, onFCP, onINP, onLCP, onTTFB } from 'https://unpkg.com/web-vitals@5?module';

const endpoint = 'https://reportd.natwelch.com/analytics/pseudoweb';

function send(metric) {
  const body = JSON.stringify(metric);
  (navigator.sendBeacon && navigator.sendBeacon(endpoint, body)) ||
    fetch(endpoint, { body, method: 'POST', keepalive: true });
}

onCLS(send);
onFCP(send);
onINP(send);
onLCP(send);
onTTFB(send);
