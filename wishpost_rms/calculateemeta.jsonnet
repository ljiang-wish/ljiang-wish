local field = import 'lib/field.libsonnet';
local types = import 'lib/types.libsonnet';
{
	alias: "CalculateeMeta",
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
			keys: "name:1",
		},
		{
			keys: "alias:1",
		},
		{
			keys: "aggregate_attr:1",
		},
	],
	fields: { 
		_id: field("id", type=types.OBJECT_ID),
		a: field("alias", type=types.STRING, required=true),
		aa: field("aggregate_attr", type=types.STRING, required=true),
		aan: field("aggregate_attr_name", type=types.STRING, required=true),
		at: field("aggregate_type", type=types.INT, required=true),
		ca: field("created_author", type=types.STRING),
		ct: field("created_datetime", type=types.DATE),
		d: field("description", type=types.STRING),
		dim: field("dimensions", type=types.LIST(types.STRING)),
		dimns: field("dimension_names", type=types.LIST(types.STRING)),
		eg: field("filters", type=types.EMBEDDEDDOCUMENT),
		ft: field("field_type", type=types.STRING, required=true),
		n: field("name", type=types.STRING, required=true),
		od: field("output_description", type=types.STRING),
		ra: field("risk_app", type=types.INT, required=true),
		s: field("status", type=types.INT),
		td: field("time_window_delta", type=types.INT, required=true),
		tu: field("time_window_unit", type=types.INT, required=true),
		ua: field("updated_author", type=types.STRING),
		ut: field("last_updated", type=types.DATE),
	},
}
