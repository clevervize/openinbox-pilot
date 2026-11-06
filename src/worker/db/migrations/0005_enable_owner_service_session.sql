-- The Clever Vize server-side integration signs in as the OpenInbox owner.
-- It cannot complete an interactive first-login password-change screen, so
-- allow the restored owner credential to create its normal service session.
UPDATE users
SET must_change_password = 0
WHERE role = 'owner';
