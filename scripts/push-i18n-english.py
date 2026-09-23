#!/usr/bin/env python3
"""Publish current English UI strings to the soul-browser-i18n repository."""

from __future__ import annotations

import argparse
import os
import re
import shutil
import subprocess
import sys
import tempfile
from pathlib import Path

SCRIPTS_DIR = Path(__file__).resolve().parent
ROOT = SCRIPTS_DIR.parent
sys.path.insert(0, str(SCRIPTS_DIR))

from soul2_info import SOUL2_INFO_NAME, extract_info, soul2_info_string_element

README = ROOT / "README.md"
STRINGS_XML = ROOT / "app" / "res" / "values" / "strings.xml"

DEFAULT_REPO = "KaKi87/soul-browser-i18n"
DEFAULT_REF = "master"
STRINGS_RELPATH = Path("Language") / "values" / "strings.xml"

STRING_RE = re.compile(
    r"[ \t]*<string\b(?=[^>]*\bname=\"([^\"]+)\")[^>]*>.*?</string>\s*",
    re.DOTALL,
)

LIBRARY_PREFIXES = (
    "abc_",
    "android.",
    "androidx",
    "appbar_",
    "bottom_sheet",
    "bottomsheet_",
    "call_notification_",
    "cast_",
    "character_counter",
    "clear_text_end_icon",
    "common_google",
    "common_open_on_phone",
    "common_signin",
    "confirm_device_credential",
    "copy_toast_msg",
    "default_error_msg",
    "error_a11y_label",
    "error_icon_content_description",
    "exposed_dropdown",
    "fab_transformation",
    "fallback_menu_item_",
    "fingerprint_",
    "generic_error_",
    "hide_bottom_view",
    "ic_media_route",
    "icon_content_description",
    "item_view_role_description",
    "m3_",
    "material_",
    "media_notification_channel_name",
    "mr_",
    "mtrl_",
    "native_",
    "nav_rail_",
    "notifications_permission_",
    "offline_",
    "password_toggle",
    "path_password_",
    "search_menu_title",
    "searchbar_scrolling",
    "searchview_",
    "side_sheet_",
    "status_bar_notification_info_overflow",
    "watermark_label_prefix",
)

CONFIG_NAME_RE = re.compile(r"^(ips|name|url|website|s)\d+$")


def is_library_name(name: str) -> bool:
    return name.startswith(LIBRARY_PREFIXES) or CONFIG_NAME_RE.fullmatch(name) is not None


def load_string_elements(path: Path) -> dict[str, str]:
    elements: dict[str, str] = {}
    for match in STRING_RE.finditer(path.read_text(encoding="utf-8")):
        name = match.group(1)
        element = match.group(0).strip()
        if 'translatable="false"' in element:
            continue
        elements[name] = element
    return elements


def load_soul2_info_element() -> str:
    if not README.exists():
        raise FileNotFoundError(f"missing {README}")
    html_body = extract_info(README.read_text(encoding="utf-8"))
    return soul2_info_string_element(html_body)


def load_app_strings() -> dict[str, str]:
    elements = load_string_elements(STRINGS_XML)
    elements[SOUL2_INFO_NAME] = load_soul2_info_element()
    return elements


def existing_order(xml_text: str) -> list[str]:
    return [match.group(1) for match in STRING_RE.finditer(xml_text)]


def select_names(app_strings: dict[str, str], previous: list[str]) -> list[str]:
    previous_kept = [name for name in previous if name in app_strings]
    extras = sorted(
        name
        for name in app_strings
        if name not in previous_kept and not is_library_name(name)
    )
    return previous_kept + extras


def render_strings_xml(names: list[str], app_strings: dict[str, str]) -> str:
    body = "".join(f"    {app_strings[name]}\n" for name in names)
    return '<?xml version="1.0" encoding="utf-8"?>\n\n<resources>\n' + body + "</resources>\n"


def run_git(args: list[str], cwd: Path, env: dict[str, str] | None = None) -> None:
    merged = os.environ.copy()
    if env:
        merged.update(env)
    subprocess.run(["git", *args], cwd=cwd, env=merged, check=True)


def write_deploy_key(key_text: str) -> str:
    key_file = tempfile.NamedTemporaryFile("w", delete=False, prefix="i18n-deploy-")
    key_file.write(key_text.strip() + "\n")
    key_file.close()
    os.chmod(key_file.name, 0o600)
    return key_file.name


def clone_env(deploy_key_file: str | None) -> dict[str, str]:
    env = os.environ.copy()
    env["GIT_TERMINAL_PROMPT"] = "0"
    if deploy_key_file:
        env["GIT_SSH_COMMAND"] = (
            f"ssh -i {deploy_key_file} -o IdentitiesOnly=yes -o StrictHostKeyChecking=accept-new"
        )
    return env


def clone_url(repo: str, token: str | None) -> str:
    if token:
        return f"https://x-access-token:{token}@github.com/{repo}.git"
    return f"git@github.com:{repo}.git"


def publish(repo: str, ref: str) -> int:
    token = os.environ.get("I18N_GITHUB_TOKEN")
    deploy_key = os.environ.get("I18N_DEPLOY_KEY")
    if not token and not deploy_key:
        print("error: set I18N_GITHUB_TOKEN or I18N_DEPLOY_KEY", file=sys.stderr)
        return 1

    key_file = write_deploy_key(deploy_key) if deploy_key else None
    tmp = Path(tempfile.mkdtemp(prefix="soul-i18n-"))
    try:
        env = clone_env(key_file)
        run_git(
            ["clone", "--depth", "1", "--branch", ref, clone_url(repo, token), str(tmp)],
            cwd=ROOT,
            env=env,
        )
        dest = tmp / STRINGS_RELPATH
        dest.parent.mkdir(parents=True, exist_ok=True)
        previous = existing_order(dest.read_text(encoding="utf-8")) if dest.exists() else []
        app_strings = load_app_strings()
        xml_text = render_strings_xml(select_names(app_strings, previous), app_strings)
        if dest.exists() and dest.read_text(encoding="utf-8") == xml_text:
            print("English strings are already up to date.")
            return 0
        dest.write_text(xml_text, encoding="utf-8")
        run_git(["add", str(STRINGS_RELPATH)], cwd=tmp, env=env)
        run_git(
            [
                "-c",
                "user.name=github-actions[bot]",
                "-c",
                "user.email=41898282+github-actions[bot]@users.noreply.github.com",
                "commit",
                "-m",
                "Update English strings from Soul2.",
            ],
            cwd=tmp,
            env=env,
        )
        run_git(["push", "origin", f"HEAD:{ref}"], cwd=tmp, env=env)
        print(f"Published English strings to {repo}@{ref}")
        return 0
    finally:
        shutil.rmtree(tmp, ignore_errors=True)
        if key_file:
            os.unlink(key_file)


def main() -> int:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--repo", default=os.environ.get("SOUL_I18N_REPO", DEFAULT_REPO))
    parser.add_argument("--ref", default=os.environ.get("SOUL_I18N_REF", DEFAULT_REF))
    parser.add_argument(
        "--dry-run",
        action="store_true",
        help="Write the generated English strings.xml to stdout without pushing.",
    )
    args = parser.parse_args()

    if not STRINGS_XML.exists():
        print(f"error: missing {STRINGS_XML}", file=sys.stderr)
        return 1
    if not README.exists():
        print(f"error: missing {README}", file=sys.stderr)
        return 1

    if args.dry_run:
        try:
            app_strings = load_app_strings()
        except (FileNotFoundError, ValueError) as exc:
            print(f"error: {exc}", file=sys.stderr)
            return 1
        sys.stdout.write(render_strings_xml(select_names(app_strings, []), app_strings))
        return 0

    try:
        return publish(args.repo, args.ref)
    except (FileNotFoundError, ValueError) as exc:
        print(f"error: {exc}", file=sys.stderr)
        return 1


if __name__ == "__main__":
    raise SystemExit(main())
