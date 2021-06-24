local field = import 'lib/field.libsonnet';
local types = import 'lib/types.libsonnet';
{
	alias: "TableLastUpdated",
	fields: { 
		_id: field("table_name", type=types.STRING, required=true),
		lp: field("last_updated", type=types.DATE),
	},
}
