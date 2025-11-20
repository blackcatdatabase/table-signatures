-- Auto-generated from schema-views-postgres.psd1 (map@9d3471b)
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
  UPPER(encode(signature,''hex''))    AS signature_hex,
  payload_hash,
  UPPER(encode(payload_hash,''hex'')) AS payload_hash_hex,
  hash_algo_id,
  created_at
FROM signatures;
