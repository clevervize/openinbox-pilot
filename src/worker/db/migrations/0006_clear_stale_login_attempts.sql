-- The server-side Clever Vize integration retried while its owner credential
-- was being restored. Clear only login throttles so the repaired service can
-- establish its session immediately.
DELETE FROM auth_attempts
WHERE key LIKE 'login:%';
