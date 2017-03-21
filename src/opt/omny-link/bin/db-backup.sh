mysqldump ol_db ACT_EVT_LOG ACT_GE_BYTEARRAY ACT_GE_PROPERTY ACT_ID_GROUP ACT_ID_INFO ACT_ID_MEMBERSHIP ACT_ID_USER ACT_RE_DEPLOYMENT ACT_RE_MODEL ACT_RE_PROCDEF ACT_RU_EVENT_SUBSCR ACT_RU_EXECUTION ACT_RU_IDENTITYLINK ACT_RU_JOB ACT_RU_TASK ACT_RU_VARIABLE | gzip | ssh knowprocess.com "cat > act_dump.sql.gz"

mysqldump ol_db ACT_HI_ACTINST ACT_HI_ATTACHMENT ACT_HI_COMMENT ACT_HI_DETAIL ACT_HI_IDENTITYLINK ACT_HI_PROCINST ACT_HI_TASKINST ACT_HI_VARINST | gzip | gzip | ssh knowprocess.com "cat > act_hi_dump.sql.gz"

mysqldump ol_db ol_account ol_account_custom ol_activity ol_contact ol_contact_custom ol_dmn_model ol_document ol_media_res ol_memo ol_memo_dist ol_metric ol_model_issue ol_note ol_order ol_order_custom ol_order_item ol_order_item_custom ol_process_model ol_stock_cat ol_stock_cat_custom ol_stock_item ol_stock_item_custom ol_tenant ol_ui_conclusion ol_ui_condition ol_ui_expression ol_ui_model ol_ui_model_conclusions ol_ui_model_conditions ol_ui_model_rules ol_ui_rule | gzip | ssh knowprocess.com "cat > ol_dump.sql.gz"

