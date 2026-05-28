# Proflog SJAS LOPSTR+PPDP 2026 Artifact

This repository is the publication-grade artifact and manuscript workspace for
the LOPSTR+PPDP 2026 system-description submission:

`An Executable Self-Justifying Axiom System in Proflog`

The tracked artifact contains the manuscript, bibliography, Proflog source,
Proflog tests, and worked examples needed to inspect and reproduce the claims in
the paper. Development-only records from the upstream experimental repository
are intentionally not copied here.

## Contents

- `paper.tex`: LNCS manuscript source.
- `paper.pdf`: built manuscript.
- `references.bib`: bibliography.
- `src/proflog`: implementation source copied from the Proflog development repo.
- `test/proflog`: focused and regression tests used by the artifact.
- `worked-examples`: prose examples and commands corresponding to the paper.
- `project.clj`: Leiningen build and test aliases for the artifact code.

The slide deck is intentionally not tracked in this repository at submission
time. Local `slides.tex` and `slides.pdf` files are ignored and can be re-added
if the paper is accepted.

## Build

The local TeX installation must provide `llncs.cls` and `splncs04.bst`.

```text
make paper
```

`make` is equivalent to `make paper`.

## Verification

Use focused tests for expensive semantic suites rather than starting with an
opaque full SJAS namespace run.

```text
lein test-proflog-fast
lein test-proflog-extended
lein run -m proflog.fitting-programs p1-odd-1-succeeds p2-win-4-succeeds p2-win-3-fails factored-win-1-unresolved
```

The full Fitting catalog is proof-heavy and should be run with an explicit
timeout while investigating slow rows:

```text
timeout -k 5s 480s lein test-proflog-fitting-programs
```

For targeted SJAS development, run individual test vars first:

```text
lein test :only proflog.willard-sjas-test/sjas-system-builder-generates-groups-and-reflected-boundary
lein test :only proflog.willard-sjas-test/sjas-u-grounding-tableau-proof-checks-numeral-system-theorem-and-proof-codes
```

Use `lein test-vars proflog.willard-sjas-test` or
`lein test-proflog-sjas-focused` when the whole SJAS namespace should run with
per-var start/end timings. Use `lein test-proflog-sjas` only after focused
progress is visible or when a full namespace confirmation is specifically
needed.

## Venue Facts

Target facts from the LOPSTR+PPDP 2026 CFP, checked 2026-05-19 at
<https://icfp26.sigplan.org/home/lopstr-ppdp-2026>:

- Venue: joint LOPSTR+PPDP symposium, co-located with ICFP 2026.
- Proceedings: Springer Nature Lecture Notes in Computer Science.
- Abstract registration: 20 May 2026, AoE.
- Paper submission: 27 May 2026, AoE.
- Author notification: 26 June 2026.
- Final paper version: 8 July 2026.
- System descriptions: 10 pages, must describe novel aspects of a working
  system and provide a system link.
