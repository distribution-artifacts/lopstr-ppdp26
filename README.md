# Proflog SJAS LOPSTR+PPDP 2026 Paper

This repository is the LOPSTR+PPDP 2026 submission workspace for the Proflog
Willard SJAS work.

Drafting workflow:

- Raw notes and author drafting go in `paper.txt`.
- The submission source is `paper.tex`.
- The corresponding presentation deck source is `slides.tex`.
- References go in `references.bib`.
- Build both artifacts with `make`, or use `make paper` and `make slides`
  separately. The local TeX installation has `llncs.cls` and `splncs04.bst`.

Target facts from the LOPSTR+PPDP 2026 CFP, checked 2026-05-19 at
<https://icfp26.sigplan.org/home/lopstr-ppdp-2026>:

- Venue: joint LOPSTR+PPDP symposium, co-located with ICFP 2026.
- Proceedings: Springer Nature Lecture Notes in Computer Science.
- Abstract registration: 20 May 2026, AoE.
- Paper submission: 27 May 2026, AoE.
- Author notification: 26 June 2026.
- Final paper version: 8 July 2026.
- Long papers: 15 pages excluding bibliography.
- Short papers: 8 pages excluding bibliography.
- System descriptions: 10 pages, must describe novel aspects of a working
  system and provide a system link.

Current paper direction:

`Executable Self-Justifying Axiom Systems in Proflog: A System Description`
should be framed as a LOPSTR+PPDP system-description submission. It must
describe novel aspects of the working Proflog SJAS profile and provide the
system link:

`https://github.com/autarkenterprises/proflog`

The main claim should not overstate the current prototype: Proflog mechanizes a
finite Willard-style `IS#_D(beta)` substrate with U-grounding arithmetic,
object-language formula/proof codes, and kernel-checked proof predicates, while
Tab-1/proof-list theorem reuse and open proof-code synthesis remain future
work.

Current deck direction:

The deck is a 15-minute conference-talk design that mirrors the paper:
motivation, Proflog/SJAS alignment, generated system profile, reflected versus
external authoring, inspectable codes, proof-predicate path, examples,
evaluation, limitations, and takeaway. It uses Beamer so the deck is editable
and rebuildable from the same repository as the paper.
