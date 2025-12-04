-- Auto-generated from schema-map-postgres.yaml (map@4ae85c5)
-- engine: postgres
-- table:  signatures

CREATE INDEX IF NOT EXISTS idx_sigs_subject ON signatures (subject_table, subject_pk, context, created_at);
