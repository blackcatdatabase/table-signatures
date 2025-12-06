-- Auto-generated from schema-map-postgres.yaml (map@sha1:F0EE237771FBA8DD7C4E886FF276F91A862C3718)
-- engine: postgres
-- table:  signatures

ALTER TABLE signatures ADD CONSTRAINT fk_sigs_algo   FOREIGN KEY (algo_id)        REFERENCES crypto_algorithms(id) ON DELETE RESTRICT;

ALTER TABLE signatures ADD CONSTRAINT fk_sigs_hash   FOREIGN KEY (hash_algo_id)   REFERENCES crypto_algorithms(id) ON DELETE RESTRICT;

ALTER TABLE signatures ADD CONSTRAINT fk_sigs_skey   FOREIGN KEY (signing_key_id) REFERENCES signing_keys(id) ON DELETE SET NULL;
