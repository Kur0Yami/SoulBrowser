"""README INFO block → HTML for the soul2_info_text Android string."""

from __future__ import annotations

import html
import re

BEGIN = "<!-- BEGIN INFO -->"
END = "<!-- END INFO -->"

SOUL2_INFO_NAME = "soul2_info_text"


def md_inline_to_html(text: str) -> str:
    """Convert a limited Markdown subset to HTML for TextView/Html.fromHtml."""
    tokens: list[str] = []

    def stash(html_fragment: str) -> str:
        tokens.append(html_fragment)
        return f"\x00T{len(tokens) - 1}\x00"

    text = re.sub(
        r"`([^`]+)`",
        lambda m: stash(f"<tt>{html.escape(m.group(1))}</tt>"),
        text,
    )
    text = re.sub(
        r"\[([^\]]+)\]\(([^)]+)\)",
        lambda m: stash(
            f'<a href="{html.escape(m.group(2), quote=True)}">{html.escape(m.group(1))}</a>'
        ),
        text,
    )
    text = re.sub(
        r"\*\*([^*]+)\*\*",
        lambda m: stash(f"<b>{html.escape(m.group(1))}</b>"),
        text,
    )
    text = re.sub(
        r"__([^_]+)__",
        lambda m: stash(f"<b>{html.escape(m.group(1))}</b>"),
        text,
    )
    text = re.sub(
        r"(?<!\*)\*([^*]+)\*(?!\*)",
        lambda m: stash(f"<i>{html.escape(m.group(1))}</i>"),
        text,
    )
    text = re.sub(
        r"(?<!_)_([^_]+)_(?!_)",
        lambda m: stash(f"<i>{html.escape(m.group(1))}</i>"),
        text,
    )

    text = html.escape(text)
    text = re.sub(r"\x00T(\d+)\x00", lambda m: tokens[int(m.group(1))], text)
    return text


def paragraph_to_html(para: str) -> str:
    """Convert one INFO paragraph to HTML."""
    lines = [line.strip() for line in para.splitlines() if line.strip()]
    if len(lines) > 1 and all(re.match(r"^-\s+", line) for line in lines):
        items = [md_inline_to_html(re.sub(r"^-\s+", "", line)) for line in lines]
        return "<br/>".join(f"&#8226; {item}" for item in items)
    flat = re.sub(r"\s*\n\s*", " ", para).strip()
    return md_inline_to_html(flat)


def extract_info(readme_text: str) -> str:
    """Return INFO section body as HTML (paragraphs joined with br/br)."""
    begin_idx = readme_text.find(BEGIN)
    end_idx = readme_text.find(END)
    if begin_idx < 0 or end_idx < 0 or end_idx <= begin_idx:
        raise ValueError("README.md missing <!-- BEGIN INFO --> / <!-- END INFO --> markers")
    if begin_idx + len(BEGIN) >= len(readme_text) or readme_text[begin_idx + len(BEGIN)] != "\n":
        raise ValueError("<!-- BEGIN INFO --> must be followed by a newline")
    if end_idx == 0 or readme_text[end_idx - 1] != "\n":
        raise ValueError("<!-- END INFO --> must be preceded by a newline")

    body = readme_text[begin_idx + len(BEGIN) : end_idx].strip("\n")
    paragraphs = [p.strip() for p in re.split(r"\n\s*\n", body) if p.strip()]
    html_paras = [paragraph_to_html(para) for para in paragraphs]
    return "<br/><br/>".join(html_paras)


def soul2_info_string_element(html_body: str) -> str:
    """Android string resource element for soul2_info_text (no trailing newline)."""
    if "]]>" in html_body:
        raise ValueError("INFO HTML must not contain ']]>'")
    return f'<string name="{SOUL2_INFO_NAME}"><![CDATA[{html_body}]]></string>'


def soul2_info_resources_xml(html_body: str) -> str:
    """Full values XML file for Apktool."""
    return (
        '<?xml version="1.0" encoding="utf-8"?>\n'
        "<resources>\n"
        f"    {soul2_info_string_element(html_body)}\n"
        "</resources>\n"
    )
