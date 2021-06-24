local field = import 'lib/field.libsonnet';
local types = import 'lib/types.libsonnet';
{
	alias: "SysFieldMeta",
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
			keys: "risk_app:1,source_db:1,source_table:1",
		},
		{
			keys: "is_dimensional:1,status:1",
		},
	],
	fields: { 
		ra: field("risk_app", type=types.INT, required=true),
		n: field("name", type=types.STRING, required=true),
		ft: field("field_type", type=types.STRING, required=true),
		a: field("alias", type=types.STRING),
		d: field("description", type=types.STRING),
		sdb: field("source_db", type=types.INT, required=true),
		stb: field("source_table", type=types.INT, required=true),
		sid: field("source_config_id", type=types.STRING, required=true),
		idm: field("is_dimensional", type=types.BOOL),
		ecf: field("enum_class_fullname", type=types.STRING),
		shc: field("has_choices", type=types.BOOL),
		ct: field("created_datetime", type=types.DATE),
		ca: field("created_author", type=types.STRING),
		ut: field("last_updated", type=types.DATE),
		ua: field("updated_author", type=types.STRING),
		s: field("status", type=types.INT),
		_id: field("id", type=types.OBJECT_ID),
	},
}
