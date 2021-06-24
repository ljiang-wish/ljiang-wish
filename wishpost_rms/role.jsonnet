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
		bp: field("permissions", type=types.LIST(types.INT)),
		d: field("description", type=types.STRING),
		lu: field("last_updated", type=types.DATE),
		s: field("status", type=types.INT),
	},
}
