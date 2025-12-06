-- Auto-generated from schema-map-mysql.yaml (map@sha1:5E62933580349BE7C623D119AC9D1301A62F03EF)
-- engine: mysql
-- table:  signatures

CREATE INDEX idx_sigs_subject ON signatures (subject_table, subject_pk, `context`, created_at);
