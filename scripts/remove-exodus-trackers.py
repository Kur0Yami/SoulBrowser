#!/usr/bin/env python3
"""Remove Exodus Privacy tracker SDK smali and patch remaining references."""

from __future__ import annotations

import shutil
import sys
from pathlib import Path

ROOT = Path(__file__).resolve().parent.parent
APP = ROOT / "app"

TRACKER_DIRS = [
    APP / "smali" / "com" / "google" / "android" / "gms" / "ads",
    APP / "smali" / "com" / "google" / "android" / "gms" / "internal" / "ads",
    APP / "smali" / "com" / "google" / "ads",
    APP / "smali_classes3" / "com" / "google" / "android" / "gms" / "measurement",
    APP / "smali_classes3" / "com" / "google" / "android" / "gms" / "internal" / "measurement",
    APP / "smali_classes3" / "com" / "google" / "android" / "gms" / "measurement_base",
    APP / "smali_classes3" / "io" / "opencensus",
]

MY_AD_NATIVE_INNER = [
    APP / "smali_classes3" / "com" / "mycompany" / "app" / "view" / "MyAdNative$AdNativeListener.smali",
]

MY_AD_NATIVE_REMOVE = [
    p
    for p in (APP / "smali_classes3" / "com" / "mycompany" / "app" / "view").glob("MyAdNative$*.smali")
    if p.name != "MyAdNative$AdNativeListener.smali"
]

OTHER_REMOVE = [
    APP / "smali_classes3" / "com" / "mycompany" / "app" / "web" / "WebViewActivity$520$1.smali",
    APP / "smali_classes3" / "com" / "google" / "api" / "client" / "http" / "OpenCensusUtils.smali",
    APP / "smali_classes3" / "com" / "google" / "api" / "client" / "http" / "OpenCensusUtils$1.smali",
    APP / "smali" / "com" / "google" / "android" / "ads" / "consent" / "R.smali",
    APP / "smali" / "com" / "google" / "android" / "gms" / "dynamite" / "descriptors" / "com" / "google" / "android" / "gms" / "ads" / "dynamite" / "ModuleDescriptor.smali",
]

MY_AD_NATIVE_STUB = """
.class public Lcom/mycompany/app/view/MyAdNative;
.super Landroid/widget/FrameLayout;
.source "SourceFile"

# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mycompany/app/view/MyAdNative$AdNativeListener;
    }
.end annotation

# instance fields
.field public c:Z

.field public f:Z

.field public final g:Landroid/content/Context;

.field public h:Landroid/os/Handler;

.field public i:I

.field public j:Lcom/mycompany/app/view/MyAdNative$AdNativeListener;

.field public m:Landroid/view/View;

.field public t:I

.field public u:J

.field public y:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 2

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mycompany/app/view/MyAdNative;->c:Z

    iput-object p1, p0, Lcom/mycompany/app/view/MyAdNative;->g:Landroid/content/Context;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/mycompany/app/view/MyAdNative;->h:Landroid/os/Handler;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public setDarkMode(Z)V
    .locals 0

    return-void
.end method

.method public final k()V
    .locals 0

    return-void
.end method

.method public final l()V
    .locals 0

    return-void
.end method

.method public final m(ILcom/mycompany/app/view/MyAdNative$AdNativeListener;)V
    .locals 0

    iput p1, p0, Lcom/mycompany/app/view/MyAdNative;->t:I

    iput-object p2, p0, Lcom/mycompany/app/view/MyAdNative;->j:Lcom/mycompany/app/view/MyAdNative$AdNativeListener;

    return-void
.end method

.method public final n()V
    .locals 0

    return-void
.end method

.method public final o(Z)V
    .locals 0

    return-void
.end method

.method public final p()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final q()V
    .locals 0

    return-void
.end method
""".lstrip()


def remove_path(path: Path) -> None:
    if path.is_dir():
        shutil.rmtree(path)
        print(f"removed dir: {path.relative_to(ROOT)}")
    elif path.is_file():
        path.unlink()
        print(f"removed file: {path.relative_to(ROOT)}")


def patch_main_web_destroy(path: Path) -> None:
    text = path.read_text()
    text = text.replace(
        "iput-object v2, v1, Lcom/mycompany/app/view/MyAdNative;->m:Lcom/google/android/gms/ads/nativead/MediaView;",
        "iput-object v2, v1, Lcom/mycompany/app/view/MyAdNative;->m:Landroid/view/View;",
    )
    text = text.replace(
        "iput-object v2, v1, Lcom/mycompany/app/view/MyAdNative;->s:Lcom/google/android/gms/ads/AdLoader;",
        "",
    )
    path.write_text(text)
    print(f"patched: {path.relative_to(ROOT)}")


def patch_work_workers(path: Path) -> None:
    text = path.read_text()
    if "Ljava/lang/System;->currentTimeMillis()J" in text and "ads/internal/zzt" not in text:
        print(f"skip work workers patch (already applied): {path.relative_to(ROOT)}")
        return
    old = (
        "    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzk()"
        "Lcom/google/android/gms/common/util/Clock;\n\n    .line 2\n    .line 3\n    .line 4\n"
        "    move-result-object v0\n\n    .line 5\n    invoke-interface {v0}, "
        "Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J"
    )
    new = (
        "    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J\n\n    .line 2\n"
        "    .line 3\n    .line 4\n    move-result-wide v0"
    )
    if old not in text:
        raise RuntimeError(f"expected ads clock block not found in {path}")
    text = text.replace(old, new)
    path.write_text(text)
    print(f"patched: {path.relative_to(ROOT)}")


def patch_grpc_context(path: Path) -> None:
    text = path.read_text()
    marker = ".method public final e(Lio/grpc/Context$Key;Lio/opencensus/trace/Span;)Lio/grpc/Context;"
    start = text.find(marker)
    if start == -1:
        print(f"skip grpc context patch (method missing): {path.relative_to(ROOT)}")
        return
    end = text.find(".end method", start)
    if end == -1:
        raise RuntimeError("could not find end of Context.e method")
    end = text.find("\n", end) + 1
    text = text[:start] + text[end:]
    path.write_text(text)
    print(f"patched: {path.relative_to(ROOT)}")


def patch_http_request(path: Path) -> None:
    lines = path.read_text().splitlines(keepends=True)
    out: list[str] = []
    skip_method = None
    for line in lines:
        if line.startswith(".method private static addSpanAttribute"):
            skip_method = "addSpanAttribute"
            continue
        if skip_method and line.startswith(".end method"):
            skip_method = None
            continue
        if skip_method:
            continue
        if "Lio/opencensus/" in line or "OpenCensusUtils" in line:
            continue
        if ".field private final tracer:" in line:
            continue
        out.append(line)
    path.write_text("".join(out))
    print(f"patched: {path.relative_to(ROOT)}")


def main() -> int:
    for directory in TRACKER_DIRS:
        if directory.exists():
            remove_path(directory)

    for path in MY_AD_NATIVE_REMOVE:
        if path.exists():
            remove_path(path)

    for path in OTHER_REMOVE:
        if path.exists():
            remove_path(path)

    stub_path = APP / "smali_classes3" / "com" / "mycompany" / "app" / "view" / "MyAdNative.smali"
    stub_path.write_text(MY_AD_NATIVE_STUB)
    print(f"written stub: {stub_path.relative_to(ROOT)}")

    patch_main_web_destroy(
        APP / "smali_classes3" / "com" / "mycompany" / "app" / "main" / "MainWebDestroy$2.smali"
    )
    patch_work_workers(APP / "smali" / "androidx" / "work" / "impl" / "workers" / "a.smali")
    patch_grpc_context(APP / "smali_classes3" / "io" / "grpc" / "Context.smali")
    patch_http_request(
        APP / "smali_classes3" / "com" / "google" / "api" / "client" / "http" / "HttpRequest.smali"
    )

    return 0


if __name__ == "__main__":
    sys.exit(main())
