-- Auto-generated from schema-map-mysql.yaml (map@sha1:0D716345C0228A9FD8972A3D31574000D05317DB)
-- engine: mysql
-- table:  signatures

CREATE INDEX idx_sigs_subject ON signatures (subject_table, subject_pk, `context`, created_at);
