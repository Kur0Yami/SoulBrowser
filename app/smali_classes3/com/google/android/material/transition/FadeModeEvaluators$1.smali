.class Lcom/google/android/material/transition/FadeModeEvaluators$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/material/transition/FadeModeEvaluator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/transition/FadeModeEvaluators;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# virtual methods
.method public final a(FFF)Lcom/google/android/material/transition/FadeModeResult;
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    const/16 v1, 0xff

    .line 3
    .line 4
    invoke-static {p2, p3, p1, v0, v1}, Lcom/google/android/material/transition/TransitionUtils;->e(FFFII)I

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    new-instance p2, Lcom/google/android/material/transition/FadeModeResult;

    .line 9
    .line 10
    const/4 p3, 0x1

    .line 11
    invoke-direct {p2, v1, p1, p3}, Lcom/google/android/material/transition/FadeModeResult;-><init>(IIZ)V

    .line 12
    .line 13
    .line 14
    return-object p2
.end method
