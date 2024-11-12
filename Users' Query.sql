SELECT
  document_id,
  JSON_VALUE(data, '$.username') AS username,
  JSON_VALUE(data, '$.email') AS email,
  TIMESTAMP_SECONDS(CAST(JSON_VALUE(data, '$.createdAt._seconds') AS INT64)) AS createdAt_ts,
  TIMESTAMP_SECONDS(CAST(JSON_VALUE(data, '$.modifiedAt._seconds') AS INT64)) AS modifiedAt_ts
FROM `firestore_export.users_raw_latest`;