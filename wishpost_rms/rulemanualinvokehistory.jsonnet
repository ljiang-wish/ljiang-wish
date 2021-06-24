local field = import 'lib/field.libsonnet';
local types = import 'lib/types.libsonnet';
{
	alias: "RuleManualInvokeHistory",
	fields: { 
		_id: field("invoke_id", type=types.STRING, required=true),
		risk_event: field("risk_event", type=types.INT, required=true),
		risk_app: field("risk_app", type=types.INT, required=true),
		ua: field("uploaded_user", type=types.STRING, required=true),
		ts: field("timestamp", type=types.DATE),
	},
}
