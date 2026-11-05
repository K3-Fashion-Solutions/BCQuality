---
bc-version: [all]
domain: style
keywords: [xmldoc, summary, param, returns, public-procedure, documentation]
technologies: [al]
countries: [w1]
application-area: [all]
---

# Add XML documentation to global procedures on codeunits

## Description

XML documentation comments (`/// <summary>…</summary>`, `/// <param>…</param>`, `/// <returns>…</returns>`) are required on global procedures declared in a codeunit. A global procedure is any `procedure` that is not `local procedure` and not `internal procedure`, regardless of the codeunit's `Access` property or role. The supported tags are `<summary>`, `<param>`, `<returns>`, `<example>`, `<remarks>`, and `<paramref>`. Active wording is preferred — `'Sets…'`, `'Gets…'`, `'Specifies…'` — and the docs should list parameter preconditions and any exceptions the procedure may raise.

XML docs are NOT required on local or internal procedures, event subscribers, trigger implementations, page-part procedures, test procedures, or the object declarations themselves (tables, pages, codeunits). The reviewer signal is a global `procedure` declared inside a codeunit; those need XML docs.

## Best Practice

For every global procedure on a codeunit, write a `<summary>` describing what the procedure does, one `<param>` per parameter naming its role and preconditions, and `<returns>` describing the return when applicable. Avoid placeholder text — `<summary>Validates discount</summary>` is no better than no doc at all.

See sample: [`k3-xml-documentation-for-global-procedures.good.al`](k3-xml-documentation-for-global-procedures.good.al).

## Anti Pattern

A global procedure on a codeunit with no XML doc, or a `<summary>` that restates the procedure name in three words. The first leaves readers guessing at intent; the second wastes the slot a meaningful description should occupy.

See sample: [`k3-xml-documentation-for-global-procedures.bad.al`](k3-xml-documentation-for-global-procedures.bad.al).
