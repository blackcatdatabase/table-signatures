-- Auto-generated from schema-views-mysql.psd1 (map@mtime:2025-11-27T15:35:35Z)
-- engine: mysql
-- table:  signatures

-- Contract view for [signatures]
-- Hides binary signature & payload hash; exposes hex.
CREATE OR REPLACE ALGORITHM=MERGE SQL SECURITY INVOKER VIEW vw_signatures AS
SELECT
  id,
  subject_table,
  subject_pk,
  context,
  algo_id,
  signing_key_id,
  signature,
  CAST(UPPER(SHA2(signature, 256))    AS CHAR(64)) AS signature_hex,
  payload_hash,
  CAST(LPAD(HEX(payload_hash), 64, '0') AS CHAR(64)) AS payload_hash_hex,
  hash_algo_id,
  created_at
FROM signatures;
