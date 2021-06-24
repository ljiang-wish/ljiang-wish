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
		_id: field("ruleset_id", type=types.STRING, required=true),
		ca: field("created_author", type=types.STRING),
		ccui: field("copy_come_up_id", type=types.STRING),
		ct: field("created_datetime", type=types.DATE),
		desc: field("description", type=types.STRING),
		gid: field("group_id", type=types.STRING, required=true),
		n: field("ruleset_name", type=types.STRING, required=true),
		pid: field("copy_id", type=types.STRING),
		rs: field("rule_id_list", type=types.LIST(types.STRING)),
		rt: field("risk_event_scenario", type=types.INT, required=true),
		s: field("status", type=types.INT),
		ss: field("score_strategy", type=types.INT, required=true),
		u: field("last_updated", type=types.DATE),
		ua: field("updated_author", type=types.STRING),
	},
}
