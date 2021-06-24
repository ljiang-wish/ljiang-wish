local field = import 'lib/field.libsonnet';
local types = import 'lib/types.libsonnet';
{
	alias: "RuleEvaluationGroup",
	fields: { 
		ego: field("logical_operator", type=types.INT, required=true),
		ege: field("evaluations", type="[]wishpost_rms.ruleevaluation"),
	},
	annotations: { 
		typeOnly: true,
	},
}
