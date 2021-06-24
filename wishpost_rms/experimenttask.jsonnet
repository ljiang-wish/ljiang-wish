local field = import 'lib/field.libsonnet';
local types = import 'lib/types.libsonnet';
{
	alias: "ExperimentTask",
	fields: { 
		_id: field("id", type=types.OBJECT_ID),
		ca: field("created_author", type=types.STRING),
		ct: field("created_datetime", type=types.DATE),
		ea: field("end_at", type=types.DATE, required=true),
		et: field("experiment_type", type=types.INT, required=true),
		gcm: field("group_calculate_type", type=types.INT, required=true),
		gil: field("grey_test_group_id_list", type=types.LIST(types.STRING)),
		mdfs: field("missing_data_fill_switch", type=types.BOOL),
		ogil: field("official_group_id_list", type=types.LIST(types.STRING)),
		ra: field("risk_app", type=types.INT),
		re: field("risk_event", type=types.INT, required=true),
		s: field("status", type=types.INT),
		sa: field("start_at", type=types.DATE, required=true),
		tn: field("task_name", type=types.STRING, required=true),
		u: field("last_updated", type=types.DATE),
		ua: field("updated_author", type=types.STRING),
	},
}
