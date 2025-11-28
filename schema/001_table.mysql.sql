-- Auto-generated from schema-map-mysql.psd1 (map@mtime:2025-11-27T15:13:14Z)
-- engine: mysql
-- table:  signatures

CREATE TABLE IF NOT EXISTS signatures (
  id BIGINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  subject_table VARCHAR(64) NOT NULL,
  subject_pk VARCHAR(64) NOT NULL,
  `context` VARCHAR(64) NOT NULL,
  algo_id BIGINT UNSIGNED NOT NULL,
  signing_key_id BIGINT UNSIGNED NULL,
  signature LONGBLOB NOT NULL,
  payload_hash VARBINARY(64) NOT NULL,
  hash_algo_id BIGINT UNSIGNED NOT NULL,
  created_at DATETIME(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  UNIQUE KEY uq_signatures (subject_table, subject_pk, `context`, algo_id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
