local field = import 'lib/field.libsonnet';
local types = import 'lib/types.libsonnet';
{
	alias: "DataCollectionSchema",
	indexes: [
		{
			keys: "collection_name:1, field_name:1",
		},
	],
	fields: { 
		c: field("collection_name", type=types.STRING, required=true),
		f: field("field_name", type=types.STRING, required=true),
		df: field("dump_function", type=types.INT),
		t: field("last_touched", type=types.DATE),
		a: field("last_author", type=types.STRING),
		_id: field("id", type=types.OBJECT_ID),
	},
}
