.class public Lcom/google/android/material/internal/RectEvaluator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/TypeEvaluator;


# annotations
.annotation build Landroidx/annotation/RestrictTo;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/animation/TypeEvaluator<",
        "Landroid/graphics/Rect;",
        ">;"
    }
.end annotation


# virtual methods
.method public final evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p2, Landroid/graphics/Rect;

    .line 2
    .line 3
    check-cast p3, Landroid/graphics/Rect;

    .line 4
    .line 5
    iget p1, p2, Landroid/graphics/Rect;->left:I

    .line 6
    .line 7
    iget p1, p3, Landroid/graphics/Rect;->left:I

    .line 8
    .line 9
    iget p1, p2, Landroid/graphics/Rect;->top:I

    .line 10
    .line 11
    iget p1, p3, Landroid/graphics/Rect;->top:I

    .line 12
    .line 13
    iget p1, p2, Landroid/graphics/Rect;->right:I

    .line 14
    .line 15
    iget p1, p3, Landroid/graphics/Rect;->right:I

    .line 16
    .line 17
    iget p1, p2, Landroid/graphics/Rect;->bottom:I

    .line 18
    .line 19
    iget p1, p3, Landroid/graphics/Rect;->bottom:I

    .line 20
    .line 21
    const/4 p1, 0x0

    .line 22
    throw p1
.end method
