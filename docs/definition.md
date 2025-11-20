<!-- Auto-generated from schema-map-postgres.psd1 @ 62c9c93 (2025-11-20T21:38:11+01:00) -->
# Definition – signatures

Digital signatures over critical entities for audit integrity.

## Columns
| Column | Type | Null | Default | Description | Notes |
|-------:|:-----|:----:|:--------|:------------|:------|
| id | BIGINT | — | AS | Surrogate primary key. |  |
| subject_table | VARCHAR(64) | NO | — | Table of the signed entity. |  |
| subject_pk | VARCHAR(64) | NO | — | Primary key of the signed record. |  |
| context | VARCHAR(64) | NO | — | Logical context (audit_chain, event_outbox, etc.). |  |
| payload_hash | BYTEA | NO | — | Hash of the signed payload. |  |