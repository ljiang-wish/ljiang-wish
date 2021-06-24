local field = import 'lib/field.libsonnet';
local types = import 'lib/types.libsonnet';
{
	alias: "Role",
	indexes: [
		{
			keys: "role_name:1",
		},
	],
	fields: { 
		_id: field("role_name", type=types.STRING, required=true),
		d: field("description", type=types.STRING),
		bp: field("permissions", type=types.LIST(types.INT)),
		s: field("status", type=types.INT),
		lu: field("last_updated", type=types.DATE),
	},
}
