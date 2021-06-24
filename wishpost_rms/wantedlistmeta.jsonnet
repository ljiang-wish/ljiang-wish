local field = import 'lib/field.libsonnet';
local types = import 'lib/types.libsonnet';
{
	alias: "WantedlistMeta",
	indexes: [
		{
			keys: "last_updated:1",
		},
		{
			keys: "created_datetime:1",
		},
		{
			keys: "status:1",
		},
		{
			keys: "risk_app:1,name:1",
		},
		{
			keys: "wanted_list_info_id:1",
		},
		{
			keys: "alias:1",
		},
		{
			keys: "matching_field_name:1",
		},
	],
	fields: { 
		ra: field("risk_app", type=types.INT, required=true),
		n: field("name", type=types.STRING, required=true),
		ft: field("field_type", type=types.STRING, required=true),
		a: field("alias", type=types.STRING, required=true),
		d: field("description", type=types.STRING),
		mf: field("matching_field", type=types.STRING, required=true),
		mfn: field("matching_field_name", type=types.STRING, required=true),
		eo: field("operator", type=types.INT, required=true),
		ii: field("wanted_list_info_id", type=types.STRING, required=true),
		ct: field("created_datetime", type=types.DATE),
		ca: field("created_author", type=types.STRING),
		ut: field("last_updated", type=types.DATE),
		ua: field("updated_author", type=types.STRING),
		s: field("status", type=types.INT),
		_id: field("id", type=types.OBJECT_ID),
	},
}
