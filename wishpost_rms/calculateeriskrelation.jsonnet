local field = import 'lib/field.libsonnet';
local types = import 'lib/types.libsonnet';
{
	alias: "CalculateeRiskRelation",
	indexes: [
		{
			keys: "risk_event:1,status:1",
		},
		{
			keys: "risk_event:1,meta_id:1,db_field_name:1",
		},
	],
	fields: { 
		re: field("risk_event", type=types.INT, required=true),
		mid: field("meta_id", type=types.STRING, required=true),
		dn: field("db_field_name", type=types.STRING, required=true),
		ct: field("created_datetime", type=types.DATE),
		ca: field("created_author", type=types.STRING),
		ut: field("last_updated", type=types.DATE),
		ua: field("updated_author", type=types.STRING),
		s: field("status", type=types.INT),
		_id: field("id", type=types.OBJECT_ID),
	},
}
