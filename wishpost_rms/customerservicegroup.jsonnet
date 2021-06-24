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
		_id: field("id", type=types.OBJECT_ID),
		cb: field("created_by", type=types.STRING, required=true),
		ct: field("created_time", type=types.DATE),
		dmpcfoc: field("default_max_processing_cnt_for_one_cs", type=types.INT),
		gn: field("group_name", type=types.STRING, required=true),
		lu: field("last_updated", type=types.DATE),
		s: field("status", type=types.INT),
	},
}
