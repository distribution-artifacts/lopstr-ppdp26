# Development Log

This log records process notes for the LOPSTR+PPDP 2026 Proflog SJAS paper
repository. The paper source, deck source, references, and generated PDFs are
the primary submission artifacts.

## 2026-06-01

- Added a submission-facing in-principle arithmeticization subsection to
  `paper.tex`. The paper now states the semantic target
  `TabPrf_beta(s,t,p)`: decode the finite SJAS system, theorem formula, and
  proof tree, then check a closed semantic tableau for
  `AxiomConj(s) /\ not(Formula(t))` through bounded code-reading, syntax,
  axiom-membership, tableau-step, branch-closure, substitution, and
  reflected-clause relations. This records the paper's claim independently of
  whether evaluating the full relation is practical for large public numerals.

## 2026-05-19

- Updated the system-description paper to match the current verified Proflog
  mainline commit `14d3150`, added a related-work section, and rebuilt
  `paper.pdf`.
- Added a corresponding 13-slide Beamer deck in `slides.tex`, generated
  `slides.pdf`, and extended the Makefile with `paper`, `slides`, and combined
  build targets.
- Rechecked the LOPSTR+PPDP 2026 CFP from the official ICFP-hosted page and
  updated `README.md` with the 2026-05-19 source URL.
- Verification: `make` completed successfully. `paper.pdf` is 6 pages, under
  the 10-page system-description limit excluding bibliography. `slides.pdf` is
  13 pages. The remaining LaTeX diagnostic is a low-severity underfull hbox in
  the bibliography URL.
- Replaced the paper and deck author placeholders with the repository git
  identity, `James Torre <jpt4@proton.me>`, so the artifacts no longer contain
  submission-facing author metadata placeholders.

## 2026-05-28

- Reframed the repository as the publication-grade artifact described by
  `abstract.txt`: copied the relevant Proflog implementation, tests, worked
  examples, and Leiningen build file into this repository while leaving
  development-only upstream documentation out.
- Removed the slide deck from version control without deleting the local
  `slides.tex` and `slides.pdf` files. The Makefile now builds only
  `paper.pdf`, and the ignored local slide files can be re-added after
  acceptance.
- Rewrote `paper.tex` as a system-description submission centered on the
  Proflog architecture, worked Fitting examples with proof traces, the
  `IS#_D(beta)` SJAS builder, inspectable codes, and proof-predicate
  internalization boundaries.
- Updated `README.md` with the artifact contents, paper-only build workflow,
  focused verification commands, and the SJAS testing practice needed to avoid
  opaque long-running full-suite retries.
- Verification: `make paper` completed successfully and produced an 8-page
  `paper.pdf`. After syncing the parent fitting-gate repair, the artifact
  `lein test-proflog-fast` passed 159 tests / 594 assertions in `146.92 s`,
  `lein test-proflog-extended` passed 68 tests / 203 assertions in `267.79 s`,
  and `lein test-proflog-fitting-programs` passed 6 tests / 81 assertions in
  `71.02 s`, matching the parent repository's current green result shape. The
  two selected SJAS checks in `README.md` passed 1 test / 13 assertions and 1
  test / 8 assertions respectively. Direct `proflog.fitting-programs` runs
  produced the P1/P2 proof traces printed in the paper.
