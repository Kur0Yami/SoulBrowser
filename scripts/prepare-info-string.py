#!/usr/bin/env python3
"""Extract README INFO section and write it as an Android string resource (HTML)."""

from __future__ import annotations

import argparse
import sys
from pathlib import Path

SCRIPTS_DIR = Path(__file__).resolve().parent
ROOT = SCRIPTS_DIR.parent
sys.path.insert(0, str(SCRIPTS_DIR))

from soul2_info import extract_info, soul2_info_resources_xml
README = ROOT / "README.md"
OUT_XML = ROOT / "app" / "res" / "values" / "soul2_info.xml"


def main() -> int:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--readme", type=Path, default=README)
    parser.add_argument("--out", type=Path, default=OUT_XML)
    args = parser.parse_args()

    if not args.readme.exists():
        print(f"error: missing {args.readme}", file=sys.stderr)
        return 1
    try:
        html_body = extract_info(args.readme.read_text(encoding="utf-8"))
    except ValueError as exc:
        print(f"error: {exc}", file=sys.stderr)
        return 1
    args.out.parent.mkdir(parents=True, exist_ok=True)
    args.out.write_text(soul2_info_resources_xml(html_body), encoding="utf-8")
    print(f"Wrote {args.out} ({len(html_body)} chars of HTML)")
    return 0


if __name__ == "__main__":
    sys.exit(main())
