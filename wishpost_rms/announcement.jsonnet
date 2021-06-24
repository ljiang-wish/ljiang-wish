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
		_id: field("id", type=types.OBJECT_ID),
		ats: field("attachments", type="[]wishpost_rms.annattachment"),
		c: field("content", type=types.STRING, required=true),
		d: field("draft", type=types.BOOL, required=true),
		gt: field("generate_time", type=types.DATE),
		s: field("status", type=types.INT),
		t: field("title", type=types.STRING),
		tl: field("text_list", type=types.LIST(types.STRING)),
		to: field("to", type=types.INT),
		u: field("user", type=types.OBJECT_ID),
	},
}
