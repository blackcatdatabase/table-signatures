-- Auto-generated from schema-map-postgres.psd1 (map@mtime:2025-11-21T00:25:46Z)
-- engine: postgres
-- table:  signatures

ALTER TABLE signatures ADD CONSTRAINT fk_sigs_algo   FOREIGN KEY (algo_id)        REFERENCES crypto_algorithms(id) ON DELETE RESTRICT;

ALTER TABLE signatures ADD CONSTRAINT fk_sigs_hash   FOREIGN KEY (hash_algo_id)   REFERENCES crypto_algorithms(id) ON DELETE RESTRICT;

ALTER TABLE signatures ADD CONSTRAINT fk_sigs_skey   FOREIGN KEY (signing_key_id) REFERENCES signing_keys(id) ON DELETE SET NULL;
