# signatures

Digital signatures over critical entities for audit integrity.

## Columns
| Column | Type | Null | Default | Description |
| --- | --- | --- | --- | --- |
| id | BIGINT | NO |  | Surrogate primary key. |
| subject_table | VARCHAR(64) | NO |  | Table of the signed entity. |
| subject_pk | VARCHAR(64) | NO |  | Primary key of the signed record. |
| context | VARCHAR(64) | NO |  | Logical context (audit_chain, event_outbox, etc.). |
| algo_id | BIGINT | NO |  | Signature algorithm (FK crypto_algorithms.id). |
| signing_key_id | BIGINT | YES |  | Signing key used (FK signing_keys.id). |
| signature | mysql: LONGBLOB / postgres: BYTEA | NO |  | Binary signature blob. |
| payload_hash | mysql: VARBINARY(64) / postgres: BYTEA | NO |  | Hash of the signed payload. |
| hash_algo_id | BIGINT | NO |  | Hash algorithm used (FK crypto_algorithms.id). |
| created_at | mysql: DATETIME(6) / postgres: TIMESTAMPTZ(6) | NO | CURRENT_TIMESTAMP(6) | Creation timestamp (UTC). |

## Engine Details

### mysql

Unique keys:
| Name | Columns |
| --- | --- |
| uq_signatures | subject_table, subject_pk, context, algo_id |

Indexes:
| Name | Columns | SQL |
| --- | --- | --- |
| idx_sigs_subject | subject_table,subject_pk,context,created_at | CREATE INDEX idx_sigs_subject ON signatures (subject_table, subject_pk, `context`, created_at) |
| uq_signatures | subject_table,subject_pk,context,algo_id | UNIQUE KEY uq_signatures (subject_table, subject_pk, `context`, algo_id) |

Foreign keys:
| Name | Columns | References | Actions |
| --- | --- | --- | --- |
| fk_sigs_algo | algo_id | crypto_algorithms(id) | ON DELETE RESTRICT |
| fk_sigs_hash | hash_algo_id | crypto_algorithms(id) | ON DELETE RESTRICT |
| fk_sigs_skey | signing_key_id | signing_keys(id) | ON DELETE SET |

### postgres

Unique keys:
| Name | Columns |
| --- | --- |
| uq_signatures | subject_table, subject_pk, context, algo_id |

Indexes:
| Name | Columns | SQL |
| --- | --- | --- |
| idx_sigs_subject | subject_table,subject_pk,context,created_at | CREATE INDEX IF NOT EXISTS idx_sigs_subject ON signatures (subject_table, subject_pk, context, created_at) |
| uq_signatures | subject_table,subject_pk,context,algo_id | CONSTRAINT uq_signatures UNIQUE (subject_table, subject_pk, context, algo_id) |

Foreign keys:
| Name | Columns | References | Actions |
| --- | --- | --- | --- |
| fk_sigs_algo | algo_id | crypto_algorithms(id) | ON DELETE RESTRICT |
| fk_sigs_hash | hash_algo_id | crypto_algorithms(id) | ON DELETE RESTRICT |
| fk_sigs_skey | signing_key_id | signing_keys(id) | ON DELETE SET |

## Engine differences

## Views
| View | Engine | Flags | File |
| --- | --- | --- | --- |
| vw_signatures | mysql | algorithm=MERGE, security=INVOKER | [../schema/040_views.mysql.sql](../schema/040_views.mysql.sql) |
| vw_signatures | postgres |  | [../schema/040_views.postgres.sql](../schema/040_views.postgres.sql) |
