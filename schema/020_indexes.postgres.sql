-- Auto-generated from schema-map-postgres.psd1 (map@9d3471b)
-- engine: postgres
-- table:  signatures
CREATE INDEX IF NOT EXISTS idx_sigs_subject ON signatures (subject_table, subject_pk, context, created_at);
