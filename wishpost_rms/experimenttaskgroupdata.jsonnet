local field = import 'lib/field.libsonnet';
local types = import 'lib/types.libsonnet';
{
	alias: "ExperimentTaskGroupData",
	fields: { 
		ti: field("task_id", type=types.STRING, required=true),
		gi: field("group_id", type=types.STRING, required=true),
		gn: field("group_name", type=types.STRING, required=true),
		gt: field("group_type", type=types.INT, required=true),
		ten: field("total_event_number", type=types.INT),
		pr: field("pass_rate", type=types.DOUBLE),
		rr: field("reject_rate", type=types.DOUBLE),
		per: field("pending_rate", type=types.DOUBLE),
		ags: field("average_group_score", type=types.DOUBLE),
		agh: field("average_group_hit", type=types.DOUBLE),
		migs: field("min_group_score", type=types.DOUBLE),
		mxgs: field("max_group_score", type=types.DOUBLE),
		mirs: field("min_rule_score", type=types.DOUBLE),
		mxrs: field("max_rule_score", type=types.DOUBLE),
		migh: field("min_group_hit", type=types.DOUBLE),
		mxgh: field("max_group_hit", type=types.DOUBLE),
		_id: field("id", type=types.OBJECT_ID),
	},
}
