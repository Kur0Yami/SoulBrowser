.class Lcom/google/android/material/transition/platform/TransitionUtils$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/material/transition/platform/TransitionUtils$CornerSizeBinaryOperator;


# instance fields
.field public final synthetic a:Landroid/graphics/RectF;

.field public final synthetic b:Landroid/graphics/RectF;

.field public final synthetic c:F

.field public final synthetic d:F

.field public final synthetic e:F


# direct methods
.method public constructor <init>(Landroid/graphics/RectF;Landroid/graphics/RectF;FFF)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/material/transition/platform/TransitionUtils$1;->a:Landroid/graphics/RectF;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/google/android/material/transition/platform/TransitionUtils$1;->b:Landroid/graphics/RectF;

    .line 7
    .line 8
    iput p3, p0, Lcom/google/android/material/transition/platform/TransitionUtils$1;->c:F

    .line 9
    .line 10
    iput p4, p0, Lcom/google/android/material/transition/platform/TransitionUtils$1;->d:F

    .line 11
    .line 12
    iput p5, p0, Lcom/google/android/material/transition/platform/TransitionUtils$1;->e:F

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/material/shape/CornerSize;Lcom/google/android/material/shape/CornerSize;)Lcom/google/android/material/shape/AbsoluteCornerSize;
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/google/android/material/transition/platform/TransitionUtils$1;->a:Landroid/graphics/RectF;

    .line 2
    .line 3
    invoke-interface {p1, v0}, Lcom/google/android/material/shape/CornerSize;->a(Landroid/graphics/RectF;)F

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    iget-object p1, p0, Lcom/google/android/material/transition/platform/TransitionUtils$1;->b:Landroid/graphics/RectF;

    .line 8
    .line 9
    invoke-interface {p2, p1}, Lcom/google/android/material/shape/CornerSize;->a(Landroid/graphics/RectF;)F

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    iget v5, p0, Lcom/google/android/material/transition/platform/TransitionUtils$1;->e:F

    .line 14
    .line 15
    const/4 v6, 0x0

    .line 16
    iget v3, p0, Lcom/google/android/material/transition/platform/TransitionUtils$1;->c:F

    .line 17
    .line 18
    iget v4, p0, Lcom/google/android/material/transition/platform/TransitionUtils$1;->d:F

    .line 19
    .line 20
    invoke-static/range {v1 .. v6}, Lcom/google/android/material/transition/platform/TransitionUtils;->d(FFFFFZ)F

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    new-instance p2, Lcom/google/android/material/shape/AbsoluteCornerSize;

    .line 25
    .line 26
    invoke-direct {p2, p1}, Lcom/google/android/material/shape/AbsoluteCornerSize;-><init>(F)V

    .line 27
    .line 28
    .line 29
    return-object p2
.end method
