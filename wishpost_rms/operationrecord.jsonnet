local field = import 'lib/field.libsonnet';
local types = import 'lib/types.libsonnet';
{
	alias: "OperationRecord",
	fields: { 
		a: field("action", type=types.STRING),
		ot: field("operation_time", type=types.DATE),
		ui: field("user_id", type=types.STRING),
		un: field("user_name", type=types.STRING),
	},
	annotations: { 
		typeOnly: true,
	},
}
