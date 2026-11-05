---
bc-version: [all]
domain: style
keywords: [xmldoc, summary, param, integration-event, business-event, publisher, event]
technologies: [al]
countries: [w1]
application-area: [all]
---

# Always add XML documentation to integration events

## Description

Every event publisher procedure must have XML documentation, regardless of its access level. A publisher is any procedure decorated with `[IntegrationEvent]`, `[BusinessEvent]`, or `[InternalEvent]`. The rule applies to `local` and `internal` publishers as well as global ones, so it adds coverage beyond the global-procedure rule.

The documentation must include a `<summary>` that states when the event is raised and what subscribers can rely on, plus one `<param>` for each parameter. Subscribers depend on the event's contract, so the docs are the only place that contract is written down.

Event subscribers (`[EventSubscriber]`) are not publishers and are not covered by this rule.

## Best Practice

Start the `<summary>` with `Raised before…` or `Raised after…`, followed by the action the event wraps. Describe each parameter's meaning and whether a subscriber may change it. For example, the summary for `OnBeforeAddTwoDecimals` reads `Raised before AddTwoDecimals adds the two values.`, and the `FirstValue` param says what the value is and whether subscribers may change it.

## Anti Pattern

An event publisher with no XML documentation, or a `<summary>` that only restates the name, such as `Event for AddTwoDecimals`. Subscribers then have to read the publisher's body to learn when it fires and which parameters it passes, which is exactly what the documentation is meant to prevent.
