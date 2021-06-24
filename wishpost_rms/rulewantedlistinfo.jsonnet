local field = import 'lib/field.libsonnet';
local types = import 'lib/types.libsonnet';
{
	alias: "RuleWantedListInfo",
	indexes: [
		{
			keys: "name:1",
		},
	],
	fields: { 
		n: field("name", type=types.STRING, required=true),
		d: field("description", type=types.STRING, required=true),
		lt: field("list_type", type=types.INT, required=true),
		s: field("status", type=types.INT),
		ct: field("created_datetime", type=types.DATE),
		ca: field("created_author", type=types.STRING),
		ut: field("last_updated", type=types.DATE),
		ua: field("updated_author", type=types.STRING),
		cn: field("content_num", type=types.INT, required=true),
		_id: field("id", type=types.OBJECT_ID),
	},
}
