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
		_id: field("id", type=types.OBJECT_ID),
		ak: field("api_key", type=types.STRING),
		cn: field("chinese_name", type=types.STRING),
		csg: field("customer_service_groups", type=types.LIST(types.STRING)),
		ct: field("created_time", type=types.DATE),
		dr: field("distribution_ratio", type=types.INT),
		e: field("email", type=types.STRING),
		llt: field("last_login_time", type=types.DATE),
		lu: field("last_updated", type=types.DATE),
		mpc: field("max_processing_cnt", type=types.INT),
		p: field("password", type=types.STRING, required=true),
		rs: field("roles", type=types.LIST(types.STRING)),
		s: field("status", type=types.INT),
		u: field("username", type=types.STRING, required=true),
	},
}
