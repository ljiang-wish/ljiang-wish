local field = import 'lib/field.libsonnet';
local types = import 'lib/types.libsonnet';
{
	alias: "TDTableList",
	indexes: [
		{
			keys: "name:1, database:1",
		},
	],
	fields: { 
		nm: field("name", type=types.STRING, required=true),
		db: field("database", type=types.STRING, required=true),
		rcd: field("records", type=types.INT),
		ss: field("estimated_storage_size", type=types.INT),
		ct: field("created_at", type=types.DATE),
		lt: field("last_log_timestamp", type=types.DATE),
		lu: field("last_updated", type=types.DATE),
		_id: field("id", type=types.OBJECT_ID),
	},
}
