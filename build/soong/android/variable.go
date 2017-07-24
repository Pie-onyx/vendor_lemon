package android
type Product_variables struct {
	Has_legacy_camera_hal1 struct {
		Cflags []string
	}
	Needs_text_relocations struct {
		Cppflags []string
	}
	Target_shim_libs struct {
		Cppflags []string
	}
}

type ProductVariables struct {
	Has_legacy_camera_hal1  *bool `json:",omitempty"`
	Needs_text_relocations  *bool `json:",omitempty"`
	Target_shim_libs  *string `json:",omitempty"`
}
