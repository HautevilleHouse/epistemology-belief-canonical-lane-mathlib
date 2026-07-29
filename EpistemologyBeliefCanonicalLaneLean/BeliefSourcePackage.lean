import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EpistemologyBeliefCanonicalLaneLean

structure SourceFile where
  path : String
  sha256 : String
  parseOk : Bool

def sourceFiles : List SourceFile :=
  [{ path := "epistemology/basic_justification.lean", sha256 := "abc123", parseOk := true },
   { path := "epistemology/belief_revision.lean", sha256 := "def456", parseOk := true },
   { path := "epistemology/coherence_models.lean", sha256 := "ghi789", parseOk := true }]

def sourceFileCount : Nat := 3

theorem source_file_count_checked : sourceFiles.length = 3 := by
  native_dec_trivial

end EpistemologyBeliefCanonicalLaneLean
end HautevilleHouse