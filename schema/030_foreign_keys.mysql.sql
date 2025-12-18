-- Auto-generated from schema-map-mysql.yaml (map@sha1:7AAC4013A2623AC60C658C9BF8458EFE0C7AB741)
-- engine: mysql
-- table:  signatures

ALTER TABLE signatures ADD CONSTRAINT fk_sigs_algo FOREIGN KEY (algo_id) REFERENCES crypto_algorithms(id) ON DELETE RESTRICT;

ALTER TABLE signatures ADD CONSTRAINT fk_sigs_hash FOREIGN KEY (hash_algo_id) REFERENCES crypto_algorithms(id) ON DELETE RESTRICT;

ALTER TABLE signatures ADD CONSTRAINT fk_sigs_skey FOREIGN KEY (signing_key_id) REFERENCES signing_keys(id) ON DELETE SET NULL;
