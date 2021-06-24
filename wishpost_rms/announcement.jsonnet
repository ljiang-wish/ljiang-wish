local field = import 'lib/field.libsonnet';
local types = import 'lib/types.libsonnet';
{
	alias: "Announcement",
	indexes: [
		{
			keys: "generate_time:-1",
		},
		{
			keys: "status:1,draft:1,user:1",
		},
		{
			keys: "attachments.attach_name:1",
		},
	],
	fields: { 
		t: field("title", type=types.STRING),
		s: field("status", type=types.INT),
		to: field("to", type=types.INT),
		d: field("draft", type=types.BOOL, required=true),
		c: field("content", type=types.STRING, required=true),
		ats: field("attachments", type="[]wishpost_rms.annattachment"),
		tl: field("text_list", type=types.LIST(types.STRING)),
		u: field("user", type=types.OBJECT_ID),
		gt: field("generate_time", type=types.DATE),
		_id: field("id", type=types.OBJECT_ID),
	},
}
