-- Auto-generated from schema-map-postgres.yaml (map@sha1:F0EE237771FBA8DD7C4E886FF276F91A862C3718)
-- engine: postgres
-- table:  signatures

CREATE INDEX IF NOT EXISTS idx_sigs_subject ON signatures (subject_table, subject_pk, context, created_at);
