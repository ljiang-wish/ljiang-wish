local field = import 'lib/field.libsonnet';
local types = import 'lib/types.libsonnet';
{
	alias: "S3Index",
	fields: { 
		_id: field("id", type=types.OBJECT_ID),
		di: field("data_info", type=types.DICT),
		em: field("error_msg", type=types.STRING),
		gt: field("generate_time", type=types.DATE, required=true),
		s: field("state", type=types.INT),
		u: field("url", type=types.STRING),
	},
}
