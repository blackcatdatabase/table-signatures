-- Auto-generated from schema-views-postgres.yaml (map@4ae85c5)
-- engine: postgres
-- table:  signatures

-- Contract view for [signatures]
-- Hides binary signature & payload hash; exposes hex.
CREATE OR REPLACE VIEW vw_signatures AS
SELECT
  id,
  subject_table,
  subject_pk,
  context,
  algo_id,
  signing_key_id,
  signature,
  UPPER(encode(digest(signature,'sha256'),'hex'))::char(64)    AS signature_hex,
  payload_hash,
  UPPER(encode(payload_hash,'hex'))::char(64) AS payload_hash_hex,
  hash_algo_id,
  created_at
FROM signatures;
