local field = import 'lib/field.libsonnet';
local types = import 'lib/types.libsonnet';
{
	alias: "RuleAssertHistory",
	indexes: [
		{
			keys: "event_id:1 group_id:1 risk_event:1 risk_app:1",
		},
		{
			keys: "status:1 updated_datetime:1",
		},
	],
	fields: { 
		ast: field("assert_type", type=types.INT),
		iid: field("invoke_id", type=types.STRING),
		event_id: field("event_id", type=types.STRING, required=true),
		group_id: field("group_id", type=types.STRING, required=true),
		risk_event: field("risk_event", type=types.INT, required=true),
		risk_app: field("risk_app", type=types.INT, required=true),
		score: field("score", type=types.DOUBLE, required=true),
		reviewer: field("reviewer", type=types.STRING),
		status: field("status", type=types.INT),
		created_datetime: field("created_datetime", type=types.DATE),
		updated_datetime: field("updated_datetime", type=types.DATE),
		rule_id_list: field("rule_id_list", type=types.LIST(types.STRING)),
		rule_score_list: field("rule_score_list", type=types.LIST(types.DOUBLE)),
		ruleset_id_list: field("ruleset_id_list", type=types.LIST(types.STRING)),
		_id: field("id", type=types.OBJECT_ID),
	},
}
