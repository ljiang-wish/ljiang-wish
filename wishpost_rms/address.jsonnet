local field = import 'lib/field.libsonnet';
local types = import 'lib/types.libsonnet';
{
	alias: "Address",
	fields: { 
		co: field("country", type=types.STRING),
		s: field("state", type=types.STRING),
		ci: field("city", type=types.STRING),
		st: field("street", type=types.STRING),
		fn: field("first_name", type=types.STRING),
		ln: field("last_name", type=types.STRING),
		ph: field("phone", type=types.STRING),
		zc: field("zipcode", type=types.STRING),
	},
	annotations: { 
		typeOnly: true,
	},
}
