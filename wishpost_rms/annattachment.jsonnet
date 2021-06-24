local field = import 'lib/field.libsonnet';
local types = import 'lib/types.libsonnet';
{
	alias: "AnnAttachment",
	fields: { 
		an: field("attach_name", type=types.STRING),
		af: field("attach_url", type=types.URL),
	},
	annotations: { 
		typeOnly: true,
	},
}
