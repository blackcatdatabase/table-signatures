-- Auto-generated from schema-map-postgres.yaml (map@sha1:621FDD3D99B768B6A8AD92061FB029414184F4B3)
-- engine: postgres
-- table:  signatures

CREATE INDEX IF NOT EXISTS idx_sigs_subject ON signatures (subject_table, subject_pk, context, created_at);
