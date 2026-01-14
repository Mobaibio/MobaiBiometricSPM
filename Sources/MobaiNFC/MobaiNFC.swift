// Wrapper module that makes Dot* dependencies available and re-exports the MobaiNfc binary module.
// This ensures DotNfc (and its transitive dependencies) are resolved before importing the binary.
import DotNfc
@_exported import MobaiNfc
