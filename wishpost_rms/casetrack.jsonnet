local field = import 'lib/field.libsonnet';
local types = import 'lib/types.libsonnet';
{
	alias: "CaseTrack",
	fields: { 
		t: field("timestamp", type=types.DATE),
		lu: field("last_updated", type=types.DATE),
		r: field("reviewer", type=types.STRING),
		status: field("status", type=types.INT),
		_id: field("id", type=types.OBJECT_ID),
	},
}
