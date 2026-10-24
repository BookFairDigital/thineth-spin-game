# Thineth 2029 A/L QR + Spin & Win — starter prototype

## Included
- `index.html`: mobile-friendly registration form, spin-the-wheel game, demo admin table, CSV export.
- `supabase_schema.sql`: starting database schema for a real hosted version.
- `qr_integration_notes.txt`: how the QR should be wired in after hosting.

## Important: this is a prototype, not a live data-collection site
The demo stores student entries in the browser's `localStorage`. That means entries only appear in the same browser/device and are NOT sent to you. The demo admin password is `thineth-demo-2029`; it is visible in this source and is NOT secure. Do not publish this demo for real student data collection.

To launch publicly with a real admin dashboard, connect a backend such as Supabase, configure server-side access policies, secure admin authentication, and publish the site at a stable HTTPS URL. Never put a database service-role key in browser code. Because names and WhatsApp numbers are personal data, publish a privacy notice, collect only what is needed, restrict admin access, and define a retention/deletion policy. If students may be under 18, obtain appropriate parent/guardian consent where required.

## Local preview
Open `index.html` in a browser. Use any name and a test phone number. Demo admin password: `thineth-demo-2029`.

## Before replacing the QR in the original PDF
1. Publish the final site to a stable HTTPS address.
2. Generate a QR code that points to that exact address.
3. Scan-test it on multiple phones and verify the registration/game flow.
4. Only then replace the QR on page 1 of the original PDF. A QR made before hosting is known would be a placeholder and could stop working.
