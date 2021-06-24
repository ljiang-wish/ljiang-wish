local field = import 'lib/field.libsonnet';
local types = import 'lib/types.libsonnet';
{
	alias: "Case",
	indexes: [
		{
			keys: "review_ids:1, review_source:1",
		},
		{
			keys: "created_time:1, review_ids:1, review_source:1",
		},
		{
			keys: "last_updated:1, review_ids:1, review_source:1",
		},
		{
			keys: "created_time:1, reviewer:1, status:1, risk_user_group_id:1",
		},
	],
	fields: { 
		_id: field("id", type=types.OBJECT_ID),
		ct: field("created_time", type=types.DATE),
		dri: field("display_review_id", type=types.STRING),
		jt: field("judgement_time", type=types.DATE),
		lu: field("last_updated", type=types.DATE),
		p: field("priority", type=types.INT),
		r: field("reviewer", type=types.STRING),
		ra: field("risk_app", type=types.INT),
		rcgi: field("ruleset_config_group_id", type=types.STRING),
		re: field("risk_event", type=types.INT),
		ri: field("review_ids", type=types.LIST(types.STRING)),
		ril: field("ruleset_id_list", type=types.LIST(types.STRING)),
		rril: field("rule_id_list", type=types.LIST(types.STRING)),
		rs: field("review_source", type=types.INT),
		rt: field("review_tracks", type="[]wishpost_rms.casetrack"),
		rugi: field("risk_user_group_id", type=types.STRING),
		s: field("status", type=types.INT),
		sc: field("score", type=types.INT),
	},
}
