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
		ui: field("user_id", type=types.STRING, required=true),
		s: field("source", type=types.INT),
		gi: field("group_id", type=types.STRING),
		un: field("username", type=types.STRING),
		at: field("account_type", type=types.INT),
		as: field("account_status", type=types.INT),
		ut: field("user_type", type=types.INT),
		ur: field("user_role", type=types.INT),
		rt: field("register_time", type=types.DATE),
		cp: field("contact_phone", type=types.STRING),
		cn: field("contact_name", type=types.STRING),
		cc: field("contact_city", type=types.STRING),
		rn: field("real_name", type=types.STRING),
		rni: field("real_name_id", type=types.STRING),
		en: field("enterprise_name", type=types.STRING),
		eoc: field("enterprise_organization_code", type=types.STRING),
		pcs: field("payment_console_switch", type=types.BOOL),
		vm: field("verification_methods", type=types.LIST(types.INT)),
		lu: field("last_updated", type=types.DATE),
		_id: field("id", type=types.OBJECT_ID),
	},
}
