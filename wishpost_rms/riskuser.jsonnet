local field = import 'lib/field.libsonnet';
local types = import 'lib/types.libsonnet';
{
	alias: "RiskUser",
	indexes: [
		{
			keys: "user_id:1",
		},
		{
			keys: "group_id:1",
		},
	],
	fields: { 
		_id: field("id", type=types.OBJECT_ID),
		as: field("account_status", type=types.INT),
		at: field("account_type", type=types.INT),
		cc: field("contact_city", type=types.STRING),
		cn: field("contact_name", type=types.STRING),
		cp: field("contact_phone", type=types.STRING),
		en: field("enterprise_name", type=types.STRING),
		eoc: field("enterprise_organization_code", type=types.STRING),
		gi: field("group_id", type=types.STRING),
		lu: field("last_updated", type=types.DATE),
		pcs: field("payment_console_switch", type=types.BOOL),
		rn: field("real_name", type=types.STRING),
		rni: field("real_name_id", type=types.STRING),
		rt: field("register_time", type=types.DATE),
		s: field("source", type=types.INT),
		ui: field("user_id", type=types.STRING, required=true),
		un: field("username", type=types.STRING),
		ur: field("user_role", type=types.INT),
		ut: field("user_type", type=types.INT),
		vm: field("verification_methods", type=types.LIST(types.INT)),
	},
}
