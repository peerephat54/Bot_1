# TCAS70 source review — 5 October 2026

## Review and import scope

This is a partial, evidence-reviewed update, not approval of the entire dataset.
Reviewed sources:

- KMITL IT round 1.1: https://www.reg.kmitl.ac.th/TCAS_old/news/files/2570_1_news1_4647_2026_09_30-18-59-12_aed0e.pdf
- Supporting current faculty page: https://www.it.kmitl.ac.th/th/admission/bachelor/portfolio1-1
- KMUTNB FITM round 1.1: https://admission.kmutnb.ac.th/sites/default/files/2026-08/Portfolio-R1.pdf

KMITL's eight-page signed PDF was read, including visual inspection of its page 5 schedule and page 8 confirmation text. The PDF is dated 31 August 2026; the upload filename date is not its publication date.

Updated projects: `kmitl-it-ability-1-1`, `kmitl-academic-it-1-1`, `kmitl-english-it-1-1`, `kmutnb-fitm-portfolio-1`.

## Changes

- Added KMITL selection weights (60/40 or 40/20/40), minimum total selection score 65, and conditional name-change / GED documents.
- Added twelve timeline rows across three KMITL projects: application fee payment, Clearing House, admitted-student announcement, and confirmation payment.
- Clearing House dates are explicitly `disputed` with no machine-readable start/end: the table and faculty HTML give 10–11 March 2027, while PDF section 7 gives 25–31 March 2027. No deadline reminder should be inferred from the disputed entry.
- GED score disagreement (145 in PDF, 140 in HTML) is retained as a warning, not converted into an automatic eligibility rule.
- The interview-eligible date is supported by the PDF table: 21 December 2026, unlike the HTML year.
- FITM identifies TCAS 1.1 and up to four choices. Document submission is a deadline of 25 November 2026, not an unsupported window starting 19 November.
- Other projects' review dates were preserved. Dataset-level `checked_at` identifies this review/update run, not fresh confirmation of every project.

## Import verification

The reviewed subset passed the normal evidence gate as `ready` before SQL generation. SQL was generated from the existing seed generator, restricted to four reviewed admission tables, guarded against missing parent programs, and executed as idempotent upserts in a transaction. No data was deleted and no full-dataset sync marker was written.

Authenticated Supabase SQL Editor target: `Bot_1`, project `uduadskukekkviaggfti`.
Read-back through the bot's Supabase client matched all reviewed fields:

- 4 projects
- 10 project/program links
- 10 criteria
- 31 timeline events, including 12 new rows

Database totals changed from 137 projects / 179 criteria / 631 timeline events to 137 / 179 / 643. `fetch_program_projects('kmitl-it')` returned the updated PDF source, score requirements and disputed timeline entries.

Local operational receipts are in `tmp/reviewed_import_2026-10-05/` (ignored): reviewed dataset, audit, hash-bound truth report, reviewed SQL, and database read-back receipt. They contain public admissions data, not credentials.

## Outstanding work

The full-dataset live report still returns `needs_review`: 46 fact sources checked, 45 reachable, one source error, 41 sources overdue for semantic re-review, 308 unresolved project/criterion/calendar checks. These are checks, not 308 distinct projects. A URL response or changed hash alone does not confirm a fact. No other university was freshly approved in this import.

The local dataset still includes timeline additions outside this reviewed subset that were not imported today; full local/database synchronization is not claimed.

Regression verification: 147 unittest tests passed; dataset and source-audit validation passed. Generated full seed SQL is a build artifact, not authorization to import unreviewed records.
