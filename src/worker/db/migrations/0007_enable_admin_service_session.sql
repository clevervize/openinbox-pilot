-- The Clever Vize backend uses this administrative OpenInbox account through
-- the server-side API. It cannot complete the interactive first-login prompt.
UPDATE users
SET must_change_password = 0
WHERE email = 'admin@clevervize.com';
