#!/usr/bin/env python3
"""Rewrite the Android application ID and refresh ACTION_* sparse-switch hashes."""

from __future__ import annotations

import argparse
import re
import sys
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]
APP_DIR = ROOT / "app"

TEXT_GLOBS = (
    "*.xml",
    "*.yml",
    "*.smali",
    "*.txt",
    "*.properties",
)


def java_hash(s: str) -> int:
    h = 0
    for ch in s:
        h = (31 * h + ord(ch)) & 0xFFFFFFFF
    if h >= 0x80000000:
        h -= 0x100000000
    return h


def fmt_smali_int(value: int) -> str:
    if value < 0:
        return f"-0x{-value:x}"
    return f"0x{value:x}"


def package_to_descriptor(package: str) -> str:
    return "L" + package.replace(".", "/") + "/"


# Application IDs this repo actually ships. rewrite_text() substitutes every
# known ID (longest first) so "net.kaki87.soul2" cannot turn an already-rewritten
# ".testing" reference into ".testing.testing".
KNOWN_PACKAGE_IDS = (
    "net.kaki87.soul2.testing",
    "net.kaki87.soul2",
)


def package_ids_to_rewrite(old: str, new: str) -> list[str]:
    ids = {old, new, *KNOWN_PACKAGE_IDS}
    extra: set[str] = set()
    for pkg in ids:
        last = pkg.rsplit(".", 1)[-1]
        if last:
            extra.add(f"{pkg}.{last}")
    ids.update(extra)
    return sorted(ids, key=len, reverse=True)


def rewrite_text(text: str, old: str, new: str) -> str:
    """Map every known/old application ID onto *new* without doubling prefixes."""
    ids = package_ids_to_rewrite(old, new)
    placeholders: list[tuple[str, str]] = []
    for i, pkg in enumerate(ids):
        desc_ph = f"\0D{i}\0"
        pkg_ph = f"\0P{i}\0"
        text = text.replace(package_to_descriptor(pkg), desc_ph)
        text = text.replace(pkg, pkg_ph)
        placeholders.append((desc_ph, pkg_ph))
    new_desc = package_to_descriptor(new)
    for desc_ph, pkg_ph in placeholders:
        text = text.replace(desc_ph, new_desc)
        text = text.replace(pkg_ph, new)
    return text


def text_needs_rewrite(text: str, old: str, new: str) -> bool:
    for pkg in package_ids_to_rewrite(old, new):
        if pkg == new:
            continue
        if pkg in text or package_to_descriptor(pkg) in text:
            return True
    return False


def self_test() -> int:
    cases = [
        (
            "Lnet/kaki87/soul2/R$string;",
            "net.kaki87.soul2",
            "net.kaki87.soul2.testing",
            "Lnet/kaki87/soul2/testing/R$string;",
        ),
        (
            "Lnet/kaki87/soul2/testing/R$string;",
            "net.kaki87.soul2",
            "net.kaki87.soul2.testing",
            "Lnet/kaki87/soul2/testing/R$string;",
        ),
        (
            "Lnet/kaki87/soul2/testing/testing/R$string;",
            "net.kaki87.soul2",
            "net.kaki87.soul2.testing",
            "Lnet/kaki87/soul2/testing/R$string;",
        ),
        (
            "net.kaki87.soul2.testing",
            "net.kaki87.soul2",
            "net.kaki87.soul2.testing",
            "net.kaki87.soul2.testing",
        ),
        (
            "net.kaki87.soul2.testing.testing",
            "net.kaki87.soul2",
            "net.kaki87.soul2.testing",
            "net.kaki87.soul2.testing",
        ),
        (
            "Lnet/kaki87/soul2/testing/R$string;",
            "net.kaki87.soul2",
            "net.kaki87.soul2",
            "Lnet/kaki87/soul2/R$string;",
        ),
        (
            "Lnet/kaki87/soul2/R$id; Lnet/kaki87/soul2/testing/R$string;",
            "net.kaki87.soul2",
            "net.kaki87.soul2.testing",
            "Lnet/kaki87/soul2/testing/R$id; Lnet/kaki87/soul2/testing/R$string;",
        ),
    ]
    failed = 0
    for src, old, new, expected in cases:
        got = rewrite_text(src, old, new)
        if got != expected:
            print(f"FAIL: {src!r} ({old} -> {new})\n  got:      {got!r}\n  expected: {expected!r}", file=sys.stderr)
            failed += 1
    if failed:
        print(f"{failed} self-test(s) failed", file=sys.stderr)
        return 1
    print(f"{len(cases)} self-tests passed")
    return 0


def is_package_action_string(s: str) -> bool:
    """True for app-specific ACTION_* intent strings that embed the package id."""
    return ".ACTION_" in s and any(pkg in s for pkg in KNOWN_PACKAGE_IDS)


def fix_sparse_switches(path: Path, text: str) -> str:
    """Refresh sparse-switch keys only for package ACTION_* receivers.

    Earlier this rewrote every sparse-switch from file-wide :sswitch_N ->
    const-string maps. Label names collide across methods (e.g. jsoup
    HtmlTreeBuilder.b0 vs g), which corrupted unrelated switches into
    duplicate keys and VerifyError at runtime.
    """
    if ".sparse-switch" not in text or "sswitch_" not in text:
        return text

    method_pat = re.compile(
        r"^\.method[^\n]*\n.*?^\.end method(?:\n|$)",
        re.M | re.S,
    )
    switch_pat = re.compile(
        r"\.sparse-switch\n(.*?)\n\s*\.end sparse-switch",
        re.S,
    )
    label_pat = re.compile(
        r":(sswitch_\d+)\s*(?:\n\s*\.line[^\n]*)*\n\s*const-string\s+\w+,\s*\"([^\"]+)\"",
    )

    def rewrite_method(method_match: re.Match[str]) -> str:
        method = method_match.group(0)
        label_to_string = {m.group(1): m.group(2) for m in label_pat.finditer(method)}

        def repl(match: re.Match[str]) -> str:
            body = match.group(1)
            entries: list[tuple[int, str]] = []
            saw_package_action = False
            for line in body.splitlines():
                line = line.strip()
                if not line or "->" not in line:
                    continue
                left, right = [p.strip() for p in line.split("->", 1)]
                key = right.lstrip(":")
                const = label_to_string.get(key)
                if const is None:
                    try:
                        entries.append((int(left, 0), right if right.startswith(":") else f":{right}"))
                    except ValueError:
                        continue
                    continue
                if is_package_action_string(const):
                    saw_package_action = True
                entries.append((java_hash(const), f":{key}"))
            # Leave unrelated switches (jsoup, SVG path commands, …) untouched.
            if not entries or not saw_package_action:
                return match.group(0)
            entries.sort(key=lambda item: item[0])
            lines = [f"        {fmt_smali_int(h)} -> {label}" for h, label in entries]
            return ".sparse-switch\n" + "\n".join(lines) + "\n    .end sparse-switch"

        return switch_pat.sub(repl, method)

    return method_pat.sub(rewrite_method, text)


def detect_current_package() -> str | None:
    manifest = APP_DIR / "AndroidManifest.xml"
    if not manifest.exists():
        return None
    m = re.search(r'\bpackage="([^"]+)"', manifest.read_text(encoding="utf-8"))
    return m.group(1) if m else None


def main() -> int:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--to", help="Target application ID")
    parser.add_argument(
        "--from",
        dest="frm",
        default=None,
        help="Current application ID (default: read from AndroidManifest.xml)",
    )
    parser.add_argument("--self-test", action="store_true", help="Run rewrite unit tests")
    args = parser.parse_args()

    if args.self_test:
        return self_test()
    if not args.to:
        parser.error("--to is required")

    new = args.to.strip()
    old = (args.frm or detect_current_package() or "").strip()
    if not old:
        print("error: could not determine current package ID", file=sys.stderr)
        return 1
    if not re.fullmatch(r"[A-Za-z][A-Za-z0-9_]*(?:\.[A-Za-z][A-Za-z0-9_]*)+", new):
        print(f"error: invalid package ID: {new}", file=sys.stderr)
        return 1

    changed = 0
    for pattern in TEXT_GLOBS:
        for path in APP_DIR.rglob(pattern):
            if not path.is_file():
                continue
            try:
                original = path.read_text(encoding="utf-8")
            except UnicodeDecodeError:
                continue
            if text_needs_rewrite(original, old, new):
                updated = rewrite_text(original, old, new)
                updated = fix_sparse_switches(path, updated)
            else:
                # Still may need sparse-switch refresh after a prior partial rename.
                updated = fix_sparse_switches(path, original)
            if updated != original:
                path.write_text(updated, encoding="utf-8")
                changed += 1

    if old == new:
        print(f"package already {new} ({changed} files normalized)")
    else:
        print(f"Renamed package {old} -> {new} ({changed} files)")
    return 0


if __name__ == "__main__":
    sys.exit(main())
