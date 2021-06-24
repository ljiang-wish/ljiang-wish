local field = import 'lib/field.libsonnet';
local types = import 'lib/types.libsonnet';
{
	alias: "AccessToken",
	indexes: [
		{
			keys: "access_code:1",
		},
		{
			keys: "authorization_code:1",
		},
		{
			keys: "client_id:1,user_id:1,access_code_expiry_time:-1",
		},
	],
	fields: { 
		u: field("user_id", type=types.STRING, required=true),
		c: field("client_id", type=types.STRING, required=true),
		ac: field("authorization_code", type=types.STRING),
		ace: field("auth_code_expiry_time", type=types.DATE),
		acr: field("redeemed", type=types.BOOL),
		a: field("access_code", type=types.STRING),
		acet: field("access_code_expiry_time", type=types.DATE),
		r: field("revoked", type=types.BOOL, required=true),
		rr: field("revoke_reason", type=types.STRING),
		s: field("scopes", type=types.LIST(types.INT)),
		_id: field("id", type=types.OBJECT_ID),
	},
}
