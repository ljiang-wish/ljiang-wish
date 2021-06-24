local field = import 'lib/field.libsonnet';
local types = import 'lib/types.libsonnet';
{
	alias: "User",
	indexes: [
		{
			keys: "username:1",
		},
		{
			keys: "api_key:1",
		},
		{
			keys: "username:1,status:1",
		},
	],
	fields: { 
		u: field("username", type=types.STRING, required=true),
		cn: field("chinese_name", type=types.STRING),
		p: field("password", type=types.STRING, required=true),
		e: field("email", type=types.STRING),
		ak: field("api_key", type=types.STRING),
		rs: field("roles", type=types.LIST(types.STRING)),
		s: field("status", type=types.INT),
		ct: field("created_time", type=types.DATE),
		llt: field("last_login_time", type=types.DATE),
		lu: field("last_updated", type=types.DATE),
		csg: field("customer_service_groups", type=types.LIST(types.STRING)),
		mpc: field("max_processing_cnt", type=types.INT),
		dr: field("distribution_ratio", type=types.INT),
		_id: field("id", type=types.OBJECT_ID),
	},
}
