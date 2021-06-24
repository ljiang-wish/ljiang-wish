local field = import 'lib/field.libsonnet';
local types = import 'lib/types.libsonnet';
{
	alias: "RulesetConfig",
	indexes: [
		{
			keys: "group_id:1 group_name:1 risk_event_scenario:1 ruleset_name:1",
		},
	],
	fields: { 
		gid: field("group_id", type=types.STRING, required=true),
		_id: field("ruleset_id", type=types.STRING, required=true),
		n: field("ruleset_name", type=types.STRING, required=true),
		rt: field("risk_event_scenario", type=types.INT, required=true),
		ss: field("score_strategy", type=types.INT, required=true),
		desc: field("description", type=types.STRING),
		ct: field("created_datetime", type=types.DATE),
		ca: field("created_author", type=types.STRING),
		u: field("last_updated", type=types.DATE),
		ua: field("updated_author", type=types.STRING),
		rs: field("rule_id_list", type=types.LIST(types.STRING)),
		s: field("status", type=types.INT),
		pid: field("copy_id", type=types.STRING),
		ccui: field("copy_come_up_id", type=types.STRING),
	},
}
