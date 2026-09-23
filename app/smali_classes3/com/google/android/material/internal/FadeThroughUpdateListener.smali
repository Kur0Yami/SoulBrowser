.class public Lcom/google/android/material/internal/FadeThroughUpdateListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation build Landroidx/annotation/RestrictTo;
.end annotation


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 7

    .line 1
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Ljava/lang/Float;

    .line 6
    .line 7
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    const/high16 v0, 0x3f000000    # 0.5f

    .line 12
    .line 13
    cmpg-float v0, p1, v0

    .line 14
    .line 15
    const/4 v1, 0x0

    .line 16
    const/4 v2, 0x0

    .line 17
    const/4 v3, 0x1

    .line 18
    const/high16 v4, 0x40000000    # 2.0f

    .line 19
    .line 20
    const/high16 v5, 0x3f800000    # 1.0f

    .line 21
    .line 22
    const/4 v6, 0x0

    .line 23
    if-gtz v0, :cond_0

    .line 24
    .line 25
    mul-float/2addr p1, v4

    .line 26
    sub-float/2addr v5, p1

    .line 27
    aput v5, v1, v6

    .line 28
    .line 29
    aput v2, v1, v3

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    aput v2, v1, v6

    .line 33
    .line 34
    mul-float/2addr p1, v4

    .line 35
    sub-float/2addr p1, v5

    .line 36
    aput p1, v1, v3

    .line 37
    .line 38
    :goto_0
    throw v1
.end method
