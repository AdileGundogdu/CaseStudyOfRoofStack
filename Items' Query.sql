SELECT
  document_id,
  JSON_VALUE(data, '$.itemName') AS ItemName,
  JSON_VALUE(data, '$.userId') AS UserId,
  TIMESTAMP_SECONDS(CAST(JSON_VALUE(data, '$.createdAt._seconds') AS INT64)) AS createdAt_ts,
  TIMESTAMP_SECONDS(CAST(JSON_VALUE(data, '$.modifiedAt._seconds') AS INT64)) AS modifiedAt_ts
FROM `firestore_export.items_raw_latest`;