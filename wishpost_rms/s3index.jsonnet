local field = import 'lib/field.libsonnet';
local types = import 'lib/types.libsonnet';
{
	alias: "S3Index",
	fields: { 
		s: field("state", type=types.INT),
		di: field("data_info", type=types.DICT),
		u: field("url", type=types.STRING),
		em: field("error_msg", type=types.STRING),
		gt: field("generate_time", type=types.DATE, required=true),
		_id: field("id", type=types.OBJECT_ID),
	},
}
