local field = import 'lib/field.libsonnet';
local types = import 'lib/types.libsonnet';
{
	alias: "RulesetConfigGroup",
	indexes: [
		{
			keys: "group_name:1 version:1 latest_version:1",
		},
		{
			keys: "risk_event:1 risk_app:1 group_name:1",
		},
	],
	fields: { 
		_id: field("group_id", type=types.STRING, required=true),
		bgi: field("begin_group_id", type=types.STRING),
		c: field("championship", type=types.BOOL),
		ca: field("created_author", type=types.STRING),
		ccui: field("copy_come_up_id", type=types.STRING),
		ct: field("created_datetime", type=types.DATE),
		desc: field("description", type=types.STRING),
		gct: field("group_calculate_type", type=types.INT, required=true),
		gt: field("group_type", type=types.INT, required=true),
		n: field("group_name", type=types.STRING, required=true),
		pid: field("copy_id", type=types.STRING),
		ra: field("risk_app", type=types.INT, required=true),
		rcs: field("ruleset_id_list", type=types.LIST(types.STRING)),
		re: field("risk_event", type=types.INT, required=true),
		s: field("status", type=types.INT),
		ua: field("updated_author", type=types.STRING),
		ut: field("last_updated", type=types.DATE),
		v: field("version", type=types.STRING),
		vd: field("version_description", type=types.STRING),
		vl: field("latest_version", type=types.BOOL),
	},
}
