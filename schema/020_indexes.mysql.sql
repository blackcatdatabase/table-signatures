-- Auto-generated from schema-map-mysql.yaml (map@sha1:09DF9CA612D1573E058190CC207FA257C05AEC1F)
-- engine: mysql
-- table:  signatures

CREATE INDEX idx_sigs_subject ON signatures (subject_table, subject_pk, `context`, created_at);
