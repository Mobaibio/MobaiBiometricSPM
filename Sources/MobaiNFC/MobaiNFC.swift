// Wrapper module that ensures Dot* dependencies are resolved and re-exports MobaiNfc.
// Consumers should add both MobaiNFC (wrapper) and MobaiNfc (binary) as dependencies,
// then import MobaiNFC to get access to MobaiNfc symbols.
import DotNfc
@_exported import MobaiNfc
