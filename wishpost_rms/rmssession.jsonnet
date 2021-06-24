local field = import 'lib/field.libsonnet';
local types = import 'lib/types.libsonnet';
{
	alias: "RmsSession",
	indexes: [
		{
			keys: "user_id:1",
		},
	],
	fields: { 
		_id: field("session_key", type=types.STRING, required=true),
		e: field("expiry_time", type=types.DATE, required=true),
		s: field("su_id", type=types.OBJECT_ID),
		se: field("secure_expiry_time", type=types.DATE, required=true),
		u: field("user_id", type=types.OBJECT_ID, required=true),
	},
}
