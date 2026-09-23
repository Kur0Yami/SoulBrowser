.class Lcom/google/android/material/transition/platform/FadeModeEvaluators$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/material/transition/platform/FadeModeEvaluator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/transition/platform/FadeModeEvaluators;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# virtual methods
.method public final a(FFF)Lcom/google/android/material/transition/platform/FadeModeResult;
    .locals 2

    .line 1
    const/16 v0, 0xff

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-static {p2, p3, p1, v0, v1}, Lcom/google/android/material/transition/platform/TransitionUtils;->e(FFFII)I

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    new-instance p2, Lcom/google/android/material/transition/platform/FadeModeResult;

    .line 9
    .line 10
    invoke-direct {p2, p1, v0, v1}, Lcom/google/android/material/transition/platform/FadeModeResult;-><init>(IIZ)V

    .line 11
    .line 12
    .line 13
    return-object p2
.end method
