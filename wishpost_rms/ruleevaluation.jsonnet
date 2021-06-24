local field = import 'lib/field.libsonnet';
local types = import 'lib/types.libsonnet';
{
	alias: "RuleEvaluation",
	fields: { 
		d: field("description", type=types.STRING),
		ebt: field("benchmark_type", type=types.INT, required=true),
		ebv: field("benchmark_value", type=types.STRING, required=true),
		eo: field("operator", type=types.INT, required=true),
		ev: field("variable", type=types.STRING, required=true),
	},
	annotations: { 
		typeOnly: true,
	},
}
