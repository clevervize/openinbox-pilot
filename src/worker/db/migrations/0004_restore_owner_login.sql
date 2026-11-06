-- Restore the OpenInbox owner login used by the Clever Vize server-side
-- integration. This only changes the owner credential; mailbox and message
-- data remain untouched.
UPDATE users
SET password_hash = 'pbkdf2-sha256$100000$RFlfL2bq-Nk_yDp6lR50wA$3hnRwygKK3_MPZRBrDcDQt0Q-OJCgVCsEYuvMi4bSns'
WHERE role = 'owner';
