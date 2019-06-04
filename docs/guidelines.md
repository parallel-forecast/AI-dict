---
layout: default
title: Guidelines
nav_order: 3
search_exclude: true
---

# Guidelines
{: .no_toc }

## Table of contents
{: .no_toc .text-delta }

1. TOC
{:toc}

---

## Releases

In order to properly score forecasts it is important to have clear, defined
resolution conditions at the time the forecast is made. However, these resolution
conditions might also be updated over time, both within a single question and
between questions.

To deal with this we use [Semantic Versioning 2.0.0](https://semver.org/),
a set of standards used for managing software packages, where ensuring
compatibility is critical.

This site displays the latest release, currently: {{ site.version }}

{% assign vX = site.version | slice: 1 | plus: 0 %}
{% if vX < 1 %}
*Please note that this version of the Dictionary is not yet stable, and we are
still figuring out proper guidelines in preparation for Version 1.0.*
{% endif %}

Legacy releases can be found in our [GitHub Repo](https://github.com/parallel-forecast/AI-dict/releases).

## Entry structure


<small>The key words “MUST”, “MUST NOT”, “REQUIRED”, “SHALL”, “SHALL NOT”, “SHOULD”, “SHOULD NOT”, “RECOMMENDED”,
“MAY”, and “OPTIONAL” in this document are to be interpreted as described in [RFC 2119](https://tools.ietf.org/html/rfc2119).</small>

### Basic template

All dictionary entries SHOULD follow the template:

> **Name of entry**
>
> Definition of entry.
>
> Examples:
> * [Ex 1]
> * [Ex 2]
>
> Non-examples:
> * [Non-ex 1]
> * [Non-ex 2]


The example sections MAY be empty, but this is discouraged as it can make
resolution more difficult.

### Pointers

The entry MAY include pointers to other entries, as follows:

> **Name of entry**
>
> *See also: [Entry 2], [Entry 3]*

The entry MAY also include pointers to actual forecasting questions using it,
in [APA citation format](http://www.easybib.com/reference/guide/apa/website), as follows:

> Non-examples:
> * [Non-ex 1]
> * [Non-ex 2]
>
> Usage:
> * Last, F. M. (Year, Month Date Published). *Question title*. Retrieved from <URL>

where "Last, F. M." is the name of the question author, or, if not available,
the username of the author or the prediction platform on which it is posted.

### Links

Any links SHOULD be provided as their latest version from [The Internet Archive](https://archive.org/web/),
if a stored page is available. This ensures links won't break in case the linked page
changes or is taken down, and is especially crucial to identify *what links were
available to forecasters at the time their forecast was made*.

### Markdown syntax

Here's a full example entry in [markdown](https://github.com/adam-p/markdown-here/wiki/Markdown-Cheatsheet):

```
**Name of entry**

*See also: [Entry 2](#entry-2), [Entry 3](#entry-3)*

Definition of entry.

Examples:
* Ex one
* Ex two

Non-examples:
* Non-ex one
* Non-ex two

Usage:
* Last, F. M. (Year, Month Date Published). *Question title*. Retrieved from URL
```

## Usage

If you use the Dictionary, please reference it to help establish it as [a standard
of interpretation]({{ site.baseurl }}{% link docs/faq.md %}).

You can do so in a few different ways:

**1) Appending the tag [ai-dict-vX.Y.Z] at the end of the relevant string**

For example:

`"I predict that image classification will be made robust against unrestricted
adversarial examples by 2023. [ai-dict-v2]"`

`"Will there be a superhuman Starcraft agent trained using less than $10.000 of publicly available compute by 2025? [ai-dict-v0.0.4]"`

You MAY use the [ai-dict] tag, in which case it is interpreted as *the latest stable release, whichever that is*.
So by doing so you take on the risk that terms change in a backwards-incompatible compared to what you used when you made your forecast.

In some cases you might want to tweak or change the definitions of a term to a match
a particular use case, thereby departing from the Resolution Dictionary convention.
If so, then you SHOULD mark the terms receiving a non-standard interpretation with the "^" symbol. For example:

`"I expect unsupervised language models to be human-level^ by 2024. [ai-dict-v1.3]"`

You MUST only use the "^" symbol on terms which *directly depart* from a term
of the same name in the Dictionary. Terms not currently in the dictionary  MUST NOT
have any such indicator.

**2) Adding the following notice:**

```
For purposes of resolution, these terms are interpreted in accordance with the Technical AI Forecasting Resolution Dictionary vX.Y.Z, available at ai-dict.com. Any term whose interpretation deliberately departs from this standard has been marked with a ^."
```
