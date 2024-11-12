SELECT  
  u.username AS users_username,
  u.document_id AS users_document_id,
  u.email AS users_email,
  u.createdAt_ts AS users_createdAt_ts,
  u.modifiedAt_ts AS users_modifiedAt_ts,
  COALESCE(i.document_id, 'No Item') AS items_doc_id,  
  COALESCE(i.UserId, 'No User') AS items_user_id,      
  COALESCE(i.ItemName, 'No Item Name') AS items_itemname,  
  i.createdAt_ts AS items_createdAt_ts,
  i.modifiedAt_ts AS items_modifiedAt_ts
FROM 
  `firestore_export.Users` AS u 
LEFT JOIN 
  `firestore_export.Items` AS i 
ON 
  u.document_id = i.UserId;