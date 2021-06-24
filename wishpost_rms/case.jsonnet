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
		ri: field("review_ids", type=types.LIST(types.STRING)),
		dri: field("display_review_id", type=types.STRING),
		rs: field("review_source", type=types.INT),
		rugi: field("risk_user_group_id", type=types.STRING),
		p: field("priority", type=types.INT),
		r: field("reviewer", type=types.STRING),
		jt: field("judgement_time", type=types.DATE),
		s: field("status", type=types.INT),
		rt: field("review_tracks", type="[]wishpost_rms.casetrack"),
		ct: field("created_time", type=types.DATE),
		lu: field("last_updated", type=types.DATE),
		ra: field("risk_app", type=types.INT),
		re: field("risk_event", type=types.INT),
		rcgi: field("ruleset_config_group_id", type=types.STRING),
		ril: field("ruleset_id_list", type=types.LIST(types.STRING)),
		rril: field("rule_id_list", type=types.LIST(types.STRING)),
		sc: field("score", type=types.INT),
		_id: field("id", type=types.OBJECT_ID),
	},
}
