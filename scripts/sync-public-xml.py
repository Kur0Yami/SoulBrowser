#!/usr/bin/env python3
"""Synchronize public.xml with resources actually present in the decompiled APK."""

from __future__ import annotations

import re
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]
RES_DIR = ROOT / "app" / "res"
R_DIR = ROOT / "app" / "smali_classes3" / "com" / "mycompany" / "app" / "soulbrowser"
PUBLIC_XML = RES_DIR / "values" / "public.xml"

FIELD_RE = re.compile(r"\.field public static (\w+):I = (0x[0-9a-f]+)")
ENTRY_RE = re.compile(
    r'^\s*<public type="([^"]+)" name="([^"]+)" id="(0x[0-9a-f]+)"\s*/>\s*$'
)


def resource_file_exists(rtype: str, name: str) -> bool:
    patterns = {
        "drawable": [
            f"**/{name}.png",
            f"**/{name}.xml",
            f"**/{name}.webp",
            f"**/{name}.9.png",
        ],
        "mipmap": [
            f"**/{name}.png",
            f"**/{name}.webp",
        ],
        "layout": [
            f"layout*/{name}.xml",
            f"**/{name}.xml",
        ],
        "xml": [
            f"xml/{name}.xml",
        ],
        "raw": [
            f"raw/{name}.*",
        ],
        "color": [
            f"**/{name}.xml",
        ],
        "string": [
            f"**/{name}.xml",
        ],
        "style": [
            f"**/{name}.xml",
        ],
        "dimen": [
            f"**/{name}.xml",
        ],
        "integer": [
            f"**/{name}.xml",
        ],
        "bool": [
            f"**/{name}.xml",
        ],
        "array": [
            f"**/{name}.xml",
        ],
        "plurals": [
            f"**/{name}.xml",
        ],
        "attr": [
            f"**/{name}.xml",
        ],
        "id": [
            f"**/{name}.xml",
        ],
    }

    selected = patterns.get(rtype, [f"**/{name}.xml"])

    return any(
        any(RES_DIR.glob(pattern))
        for pattern in selected
    )


def resource_definition_exists(rtype: str, name: str) -> bool:
    """
    Search XML resource files for an actual definition.

    public.xml itself is deliberately ignored because a <public>
    declaration is not a resource definition.
    """
    if rtype in {
        "drawable",
        "mipmap",
        "layout",
        "xml",
        "raw",
    }:
        return resource_file_exists(rtype, name)

    pattern = re.compile(
        rf'<(?:{re.escape(rtype)})\s+name="{re.escape(name)}"(?:\s[^>]*)?>'
    )

    for xml in RES_DIR.glob("**/*.xml"):
        if xml == PUBLIC_XML:
            continue

        try:
            text = xml.read_text(encoding="utf-8", errors="ignore")
        except OSError:
            continue

        if pattern.search(text):
            return True

    return False


def load_r_entries() -> list[tuple[str, str, str]]:
    entries = []

    if not R_DIR.exists():
        return entries

    for smali in sorted(R_DIR.glob("R$*.smali")):
        rtype = smali.stem.removeprefix("R$")
        text = smali.read_text(encoding="utf-8")

        for name, rid in FIELD_RE.findall(text):
            entries.append((rtype, name, rid))

    return entries


def clean_public_xml(content: str) -> tuple[str, int]:
    """
    Remove public declarations whose resource definitions are absent.

    This is especially important for Material 3 resources that can remain
    in R*.smali/public.xml after split-resource extraction while their
    original XML definition is absent from the decompiled base APK.
    """
    removed = 0
    output = []

    for line in content.splitlines():
        match = ENTRY_RE.match(line)

        if not match:
            output.append(line)
            continue

        rtype, name, rid = match.groups()

        if not resource_definition_exists(rtype, name):
            removed += 1
            continue

        output.append(line)

    return "\n".join(output) + "\n", removed


def add_missing_public_entries(content: str) -> tuple[str, int]:
    existing = {
        (m.group(1), m.group(2), m.group(3))
        for m in ENTRY_RE.finditer(content)
    }

    existing_ids = {
        m.group(3)
        for m in ENTRY_RE.finditer(content)
    }

    existing_names = {
        (m.group(1), m.group(2))
        for m in ENTRY_RE.finditer(content)
    }

    missing = []

    for rtype, name, rid in load_r_entries():
        key = (rtype, name, rid)

        if key in existing:
            continue

        if rid in existing_ids or (rtype, name) in existing_names:
            continue

        if not resource_definition_exists(rtype, name):
            continue

        missing.append(key)

    if not missing:
        return content, 0

    lines = [
        f'    <public type="{rtype}" name="{name}" id="{rid}" />'
        for rtype, name, rid in missing
    ]

    insertion = "\n".join(lines) + "\n"

    updated = re.sub(
        r"</resources>\s*$",
        insertion + "</resources>\n",
        content,
        count=1,
    )

    return updated, len(missing)


def main() -> int:
    if not PUBLIC_XML.exists():
        print(f"error: missing {PUBLIC_XML}")
        return 1

    content = PUBLIC_XML.read_text(encoding="utf-8")

    # First remove stale declarations that have no actual resource.
    cleaned, removed = clean_public_xml(content)

    # Then add legitimate missing declarations from R*.smali.
    updated, added = add_missing_public_entries(cleaned)

    if updated == content:
        print("public.xml is already synchronized")
        return 0

    PUBLIC_XML.write_text(updated, encoding="utf-8")

    print(f"Removed {removed} stale public.xml entries")
    print(f"Added {added} valid public.xml entries")
    print("public.xml synchronization complete")

    return 0


if __name__ == "__main__":
    raise SystemExit(main())
