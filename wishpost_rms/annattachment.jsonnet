local field = import 'lib/field.libsonnet';
local types = import 'lib/types.libsonnet';
{
	alias: "AnnAttachment",
	fields: { 
		af: field("attach_url", type=types.URL),
		an: field("attach_name", type=types.STRING),
	},
	annotations: { 
		typeOnly: true,
	},
}
