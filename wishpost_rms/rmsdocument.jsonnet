local field = import 'lib/field.libsonnet';
local types = import 'lib/types.libsonnet';
{
	alias: "RmsDocument",
	fields: { 
		_id: field("id", type=types.OBJECT_ID),
	},
}
