-- Auto-generated from schema-map-mysql.psd1 (map@734a489)
-- engine: mysql
-- table:  signatures
CREATE INDEX idx_sigs_subject ON signatures (subject_table, subject_pk, `context`, created_at);
