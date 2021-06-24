local field = import 'lib/field.libsonnet';
local types = import 'lib/types.libsonnet';
{
	alias: "Partner",
	indexes: [
		{
			keys: "name:1",
		},
		{
			keys: "updated_datetime:1",
		},
	],
	fields: { 
		_id: field("id", type=types.OBJECT_ID),
		c: field("code", type=types.STRING, required=true),
		cp: field("check_prefix", type=types.BOOL),
		it: field("is_test", type=types.BOOL),
		n: field("name", type=types.STRING, required=true),
		ud: field("updated_datetime", type=types.DATE, required=true),
	},
}
