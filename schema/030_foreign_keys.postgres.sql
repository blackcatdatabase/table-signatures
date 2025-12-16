-- Auto-generated from schema-map-postgres.yaml (map@sha1:FAEA49A5D5F8FAAD9F850D0F430ED451C5C1D707)
-- engine: postgres
-- table:  signatures

ALTER TABLE signatures ADD CONSTRAINT fk_sigs_algo   FOREIGN KEY (algo_id)        REFERENCES crypto_algorithms(id) ON DELETE RESTRICT;

ALTER TABLE signatures ADD CONSTRAINT fk_sigs_hash   FOREIGN KEY (hash_algo_id)   REFERENCES crypto_algorithms(id) ON DELETE RESTRICT;

ALTER TABLE signatures ADD CONSTRAINT fk_sigs_skey   FOREIGN KEY (signing_key_id) REFERENCES signing_keys(id) ON DELETE SET NULL;
