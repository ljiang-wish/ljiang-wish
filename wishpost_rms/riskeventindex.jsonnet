local field = import 'lib/field.libsonnet';
local types = import 'lib/types.libsonnet';
{
	alias: "RiskEventIndex",
	indexes: [
		{
			keys: "risk_app:1,risk_event:1",
		},
	],
	fields: { 
		_id: field("id", type=types.OBJECT_ID),
		ca: field("created_author", type=types.STRING),
		ct: field("created_datetime", type=types.DATE),
		ra: field("risk_app", type=types.INT, required=true),
		re: field("risk_event", type=types.INT, required=true),
		s: field("status", type=types.INT),
		sr: field("sysfield_relation_id_list", type=types.LIST(types.STRING)),
		u: field("is_unique", type=types.BOOL),
		ua: field("updated_author", type=types.STRING),
		ut: field("last_updated", type=types.DATE),
	},
}
