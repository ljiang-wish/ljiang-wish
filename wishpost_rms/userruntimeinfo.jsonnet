local field = import 'lib/field.libsonnet';
local types = import 'lib/types.libsonnet';
{
	alias: "UserRuntimeInfo",
	fields: { 
		las: field("last_ann_seen", type=types.OBJECT_ID),
	},
	annotations: { 
		typeOnly: true,
	},
}
