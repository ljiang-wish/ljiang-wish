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
		ra: field("risk_app", type=types.INT, required=true),
		re: field("risk_event", type=types.INT, required=true),
		sr: field("sysfield_relation_id_list", type=types.LIST(types.STRING)),
		u: field("is_unique", type=types.BOOL),
		s: field("status", type=types.INT),
		ct: field("created_datetime", type=types.DATE),
		ca: field("created_author", type=types.STRING),
		ut: field("last_updated", type=types.DATE),
		ua: field("updated_author", type=types.STRING),
		_id: field("id", type=types.OBJECT_ID),
	},
}
