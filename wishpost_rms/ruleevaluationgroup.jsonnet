local field = import 'lib/field.libsonnet';
local types = import 'lib/types.libsonnet';
{
	alias: "RuleEvaluationGroup",
	fields: { 
		ege: field("evaluations", type="[]wishpost_rms.ruleevaluation"),
		ego: field("logical_operator", type=types.INT, required=true),
	},
	annotations: { 
		typeOnly: true,
	},
}
