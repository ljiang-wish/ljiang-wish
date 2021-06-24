local field = import 'lib/field.libsonnet';
local types = import 'lib/types.libsonnet';
{
	alias: "RuleExpression",
	fields: { 
		rid: field("ruleset_id", type=types.STRING, required=true),
		_id: field("rule_id", type=types.STRING, required=true),
		n: field("rule_name", type=types.STRING, required=true),
		t: field("rule_template", type=types.INT, required=true),
		desc: field("description", type=types.STRING),
		ct: field("created_datetime", type=types.DATE),
		ca: field("created_author", type=types.STRING),
		u: field("last_updated", type=types.DATE),
		ua: field("updated_author", type=types.STRING),
		rt: field("status", type=types.INT),
		c: field("condition", type=types.INT),
		e: field("evaluations", type="[]wishpost_rms.ruleevaluation"),
		eg: field("evaluation_groups", type="[]wishpost_rms.ruleevaluationgroup"),
		a: field("actions", type=types.LIST(types.INT)),
		def: field("resolved_expression", type=types.STRING),
		ctm: field("terminate", type=types.BOOL),
		mdp: field("depth_max", type=types.INT),
		cdp: field("depth_curr", type=types.INT),
		pr: field("parent_rule_id", type=types.STRING),
		srs: field("sub_rule_id_list", type=types.LIST(types.STRING)),
		bs: field("base_score", type=types.INT),
		s: field("score", type=types.INT),
		w: field("weight", type=types.STRING),
		sl: field("lower_bound", type=types.INT),
		su: field("upper_bound", type=types.INT),
		pid: field("copy_id", type=types.STRING),
		ccui: field("copy_come_up_id", type=types.STRING),
	},
}
