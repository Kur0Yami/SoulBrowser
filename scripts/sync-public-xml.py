#!/usr/bin/env python3
"""Add missing resource IDs from R$*.smali into public.xml."""

from __future__ import annotations

import re
import sys
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]
R_DIR = ROOT / "app" / "smali_classes3" / "com" / "mycompany" / "app" / "soulbrowser"
PUBLIC_XML = ROOT / "app" / "res" / "values" / "public.xml"

FIELD_RE = re.compile(r"\.field public static (\w+):I = (0x[0-9a-f]+)")
ENTRY_RE = re.compile(r'<public type="([^"]+)" name="([^"]+)" id="(0x[0-9a-f]+)"')


def resource_file_exists(rtype: str, name: str) -> bool:
    res_dir = ROOT / "app" / "res"
    if rtype == "drawable":
        patterns = [f"**/{name}.png", f"**/{name}.xml", f"**/{name}.webp", f"**/{name}.9.png"]
    elif rtype == "mipmap":
        patterns = [f"**/{name}.png", f"**/{name}.webp"]
    elif rtype == "layout":
        patterns = [f"layout*/{name}.xml", f"**/{name}.xml"]
    elif rtype == "xml":
        patterns = [f"xml/{name}.xml"]
    elif rtype == "raw":
        patterns = [f"raw/{name}.*"]
    else:
        patterns = [f"**/{name}.xml"]

    return any(any(res_dir.glob(pattern)) for pattern in patterns)


def load_r_entries() -> list[tuple[str, str, str]]:
    entries: list[tuple[str, str, str]] = []
    for smali in sorted(R_DIR.glob("R$*.smali")):
        rtype = smali.stem.removeprefix("R$")
        text = smali.read_text(encoding="utf-8")
        for name, rid in FIELD_RE.findall(text):
            entries.append((rtype, name, rid))
    return entries


def main() -> int:
    if not PUBLIC_XML.exists():
        print(f"error: missing {PUBLIC_XML}", file=sys.stderr)
        return 1

    content = PUBLIC_XML.read_text(encoding="utf-8")
    existing = {(m.group(1), m.group(2), m.group(3)) for m in ENTRY_RE.finditer(content)}
    existing_ids = {m.group(3) for m in ENTRY_RE.finditer(content)}
    existing_names = {(m.group(1), m.group(2)) for m in ENTRY_RE.finditer(content)}

    missing: list[tuple[str, str, str]] = []
    for rtype, name, rid in load_r_entries():
        key = (rtype, name, rid)
        if key in existing:
            continue
        if rid in existing_ids or (rtype, name) in existing_names:
            continue
        if not resource_file_exists(rtype, name):
            continue
        missing.append(key)

    if not missing:
        print("public.xml is already complete")
        return 0

    lines = [f'    <public type="{rtype}" name="{name}" id="{rid}" />' for rtype, name, rid in missing]
    insertion = "\n".join(lines) + "\n"
    if content.rstrip().endswith("</resources>"):
        updated = re.sub(r"</resources>\s*$", insertion + "</resources>\n", content, count=1)
    else:
        print("error: public.xml missing </resources> footer", file=sys.stderr)
        return 1

    if updated == content:
        print("error: failed to update public.xml", file=sys.stderr)
        return 1

    PUBLIC_XML.write_text(updated, encoding="utf-8")
    print(f"Added {len(missing)} missing public.xml entries")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
