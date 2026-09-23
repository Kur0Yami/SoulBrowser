#!/usr/bin/env python3
"""Download UI translations from soul-browser-i18n into app/res at build time."""

from __future__ import annotations

import argparse
import hashlib
import io
import json
import os
import re
import shutil
import ssl
import sys
import tarfile
import urllib.error
import urllib.parse
import urllib.request
from pathlib import Path
from xml.etree import ElementTree as ET

ROOT = Path(__file__).resolve().parents[1]
APP_STRINGS = ROOT / "app" / "res" / "values" / "strings.xml"
RES_DIR = ROOT / "app" / "res"
STAMP_PATH = RES_DIR / ".i18n-sync"

DEFAULT_REPO = "KaKi87/soul-browser-i18n"
DEFAULT_REF = "master"
LANGUAGE_DIR = "Language"

# Soul2-specific English copy that must not be replaced by upstream translations.
SKIP_NAMES = {"app_name", "back_play_info"}

STRING_RE = re.compile(
    r"[ \t]*<string\b(?=[^>]*\bname=\"([^\"]+)\")[^>]*>.*?</string>\s*",
    re.DOTALL,
)
NAME_RE = re.compile(r'<string name="([^"]+)"')


def fetch(url: str) -> bytes:
    headers = {"User-Agent": "soul-browser-sync-i18n"}
    token = os.environ.get("GITHUB_TOKEN") or os.environ.get("I18N_GITHUB_TOKEN")
    if token and "api.github.com" in url:
        headers["Authorization"] = f"Bearer {token}"
        headers["Accept"] = "application/vnd.github+json"
    request = urllib.request.Request(url, headers=headers)
    context = ssl.create_default_context()
    with urllib.request.urlopen(request, context=context, timeout=120) as response:
        return response.read()


def app_string_names() -> set[str]:
    return set(NAME_RE.findall(APP_STRINGS.read_text(encoding="utf-8")))


def strings_fingerprint() -> str:
    return hashlib.sha256(APP_STRINGS.read_bytes()).hexdigest()[:16]


def tarball_url(repo: str, ref: str) -> str:
    return f"https://codeload.github.com/{repo}/tar.gz/{ref}"


def resolve_commit_sha(repo: str, ref: str) -> str | None:
    url = f"https://api.github.com/repos/{repo}/commits/{urllib.parse.quote(ref)}"
    try:
        data = json.loads(fetch(url).decode("utf-8"))
    except (urllib.error.URLError, urllib.error.HTTPError, json.JSONDecodeError, UnicodeDecodeError) as exc:
        print(f"warning: could not resolve {repo}@{ref} commit: {exc}", file=sys.stderr)
        return None
    sha = data.get("sha")
    return sha if isinstance(sha, str) and sha else None


def language_files(repo: str, ref: str) -> dict[str, str]:
    archive = tarfile.open(fileobj=io.BytesIO(fetch(tarball_url(repo, ref))), mode="r:gz")
    files: dict[str, str] = {}
    for member in archive.getmembers():
        if not member.isfile():
            continue
        parts = Path(member.name).parts
        try:
            lang_idx = parts.index(LANGUAGE_DIR)
        except ValueError:
            continue
        rest = parts[lang_idx + 1 :]
        if len(rest) != 2 or not rest[0].startswith("values-") or rest[1] != "strings.xml":
            continue
        extracted = archive.extractfile(member)
        if extracted is None:
            continue
        files[rest[0]] = extracted.read().decode("utf-8")
    return files


def filter_strings(xml_text: str, keep: set[str]) -> tuple[str, int]:
    kept: list[str] = []
    for match in STRING_RE.finditer(xml_text):
        name = match.group(1)
        if name in keep and name not in SKIP_NAMES:
            kept.append(match.group(0).rstrip() + "\n")
    body = "".join(kept)
    out = '<?xml version="1.0" encoding="utf-8"?>\n<resources>\n' + body + "</resources>\n"
    ET.fromstring(out)
    return out, len(kept)


def read_stamp() -> dict | None:
    if not STAMP_PATH.exists():
        return None
    try:
        data = json.loads(STAMP_PATH.read_text(encoding="utf-8"))
    except json.JSONDecodeError:
        return None
    return data if isinstance(data, dict) else None


def managed_folders(stamp: dict | None = None) -> list[str]:
    data = stamp if stamp is not None else read_stamp()
    if not data:
        return []
    folders = data.get("folders", [])
    return [name for name in folders if isinstance(name, str) and name.startswith("values-")]


def stamp_is_current(
    stamp: dict | None,
    *,
    repo: str,
    ref: str,
    commit: str | None,
    fingerprint: str,
) -> bool:
    if not stamp:
        return False
    if stamp.get("repo") != repo or stamp.get("ref") != ref:
        return False
    if stamp.get("strings") != fingerprint:
        return False
    # Require a stored commit when we resolved one; older stamps without commit always miss.
    if commit is not None and stamp.get("commit") != commit:
        return False
    folders = managed_folders(stamp)
    if not folders:
        return False
    for name in folders:
        if not (RES_DIR / name / "strings.xml").is_file():
            return False
    locales = ROOT / "app" / "res" / "xml" / "locales_config.xml"
    return locales.is_file()


def remove_folder(name: str) -> None:
    dest_dir = RES_DIR / name
    if dest_dir.is_dir():
        shutil.rmtree(dest_dir)


def folder_to_tag(folder: str) -> str:
    rest = folder.removeprefix("values-")
    lang, sep, region = rest.partition("-r")
    if sep:
        return f"{lang}-{region}"
    return rest


def write_locales_config(tags: list[str]) -> None:
    dest = ROOT / "app" / "res" / "xml" / "locales_config.xml"
    lines = [
        '<?xml version="1.0" encoding="utf-8"?>\n',
        "<locale-config\n",
        '  xmlns:android="http://schemas.android.com/apk/res/android">\n',
    ]
    seen: set[str] = set()
    for tag in tags:
        if not tag or tag in seen:
            continue
        seen.add(tag)
        lines.append(f'    <locale android:name="{tag}" />\n')
    lines.append("</locale-config>\n")
    dest.write_text("".join(lines), encoding="utf-8")
    print(f"  locales_config: {len(seen)} locales")


def main() -> int:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--repo", default=os.environ.get("SOUL_I18N_REPO", DEFAULT_REPO))
    parser.add_argument("--ref", default=os.environ.get("SOUL_I18N_REF", DEFAULT_REF))
    parser.add_argument(
        "--force",
        action="store_true",
        help="Re-download even when the local stamp matches the remote commit",
    )
    args = parser.parse_args()

    if not APP_STRINGS.exists():
        print(f"error: missing {APP_STRINGS}", file=sys.stderr)
        return 1

    fingerprint = strings_fingerprint()
    commit = resolve_commit_sha(args.repo, args.ref)
    stamp = read_stamp()

    if not args.force and stamp_is_current(
        stamp,
        repo=args.repo,
        ref=args.ref,
        commit=commit,
        fingerprint=fingerprint,
    ):
        folders = managed_folders(stamp)
        print(
            f"i18n locales already synced ({args.repo}@{args.ref}"
            f"{f' {commit[:12]}' if commit else ''}, {len(folders)} folders); skipping download"
        )
        return 0

    keep = app_string_names()
    files = language_files(args.repo, args.ref)
    if not files:
        print("error: no Language/values-*/strings.xml files found", file=sys.stderr)
        return 1

    previous = set(managed_folders(stamp))
    for name in sorted(previous - set(files)):
        print(f"  removing stale {name}")
        remove_folder(name)

    print(f"Downloading {len(files)} locales from {args.repo}@{args.ref}")
    for folder in sorted(files):
        filtered, count = filter_strings(files[folder], keep)
        dest_dir = RES_DIR / folder
        dest_dir.mkdir(parents=True, exist_ok=True)
        dest = dest_dir / "strings.xml"
        dest.write_text(filtered, encoding="utf-8")
        print(f"  {folder}: {count} strings")

    stamp_payload: dict[str, object] = {
        "repo": args.repo,
        "ref": args.ref,
        "strings": fingerprint,
        "folders": sorted(files),
    }
    if commit is not None:
        stamp_payload["commit"] = commit
    STAMP_PATH.write_text(json.dumps(stamp_payload, indent=2) + "\n", encoding="utf-8")
    write_locales_config(["en", *sorted(folder_to_tag(name) for name in files)])
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
