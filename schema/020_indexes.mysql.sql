-- Auto-generated from schema-map-mysql.yaml (map@74ce4f4)
-- engine: mysql
-- table:  signatures

CREATE INDEX idx_sigs_subject ON signatures (subject_table, subject_pk, `context`, created_at);
