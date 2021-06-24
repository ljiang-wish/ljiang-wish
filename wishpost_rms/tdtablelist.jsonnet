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
		_id: field("id", type=types.OBJECT_ID),
		ct: field("created_at", type=types.DATE),
		db: field("database", type=types.STRING, required=true),
		lt: field("last_log_timestamp", type=types.DATE),
		lu: field("last_updated", type=types.DATE),
		nm: field("name", type=types.STRING, required=true),
		rcd: field("records", type=types.INT),
		ss: field("estimated_storage_size", type=types.INT),
	},
}
