local field = import 'lib/field.libsonnet';
local types = import 'lib/types.libsonnet';
{
	alias: "SourceConfigMongo",
	indexes: [
		{
			keys: "last_updated:1",
		},
		{
			keys: "created_datetime:1",
		},
		{
			keys: "source_app:1,source_table:1,source_name:1",
		},
		{
			keys: "meta_id_list:1",
		},
	],
	fields: { 
		_id: field("id", type=types.OBJECT_ID),
		ca: field("created_author", type=types.STRING),
		ct: field("created_datetime", type=types.DATE),
		mids: field("meta_id_list", type=types.LIST(types.STRING)),
		s: field("status", type=types.INT),
		sa: field("source_app", type=types.INT, required=true),
		sdn: field("source_db_field_name", type=types.STRING, required=true),
		sft: field("source_field_type", type=types.STRING, required=true),
		shc: field("has_choices", type=types.BOOL),
		sn: field("source_name", type=types.STRING, required=true),
		sp: field("is_primary_key", type=types.BOOL),
		st: field("source_table", type=types.INT, required=true),
		ua: field("updated_author", type=types.STRING),
		ut: field("last_updated", type=types.DATE),
	},
}
