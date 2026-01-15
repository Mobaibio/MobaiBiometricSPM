// Wrapper module that ensures Dot* dependencies are resolved and re-exports MobaiNfc.
// Consumers add only the MobaiNFC product and `import MobaiNFC`.
import DotNfc
@_exported import MobaiNfc
