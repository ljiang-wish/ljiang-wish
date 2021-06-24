local field = import 'lib/field.libsonnet';
local types = import 'lib/types.libsonnet';
{
	alias: "CustomerServiceGroup",
	indexes: [
		{
			keys: "group_name:1",
		},
		{
			keys: "status:1",
		},
	],
	fields: { 
		gn: field("group_name", type=types.STRING, required=true),
		cb: field("created_by", type=types.STRING, required=true),
		dmpcfoc: field("default_max_processing_cnt_for_one_cs", type=types.INT),
		s: field("status", type=types.INT),
		ct: field("created_time", type=types.DATE),
		lu: field("last_updated", type=types.DATE),
		_id: field("id", type=types.OBJECT_ID),
	},
}
