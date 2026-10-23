package core

var UtilityRegistrar func(u *Utility)

var NewBaseFeatureFunc func() Feature

var NewRatelimitFeatureFunc func() Feature

var NewRetryFeatureFunc func() Feature

var NewTestFeatureFunc func() Feature

var NewTimeoutFeatureFunc func() Feature

var NewCalculatorEntityFunc func(client *GccCorporateTaxSDK, entopts map[string]any) GccCorporateTaxEntity

var NewEnquiryEntityFunc func(client *GccCorporateTaxSDK, entopts map[string]any) GccCorporateTaxEntity

var NewMcpEntityFunc func(client *GccCorporateTaxSDK, entopts map[string]any) GccCorporateTaxEntity

