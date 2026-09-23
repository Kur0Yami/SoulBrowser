.class public final synthetic Landroidx/core/view/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/core/view/f;->a:I

    iput-object p2, p0, Landroidx/core/view/f;->b:Ljava/lang/Object;

    iput-object p3, p0, Landroidx/core/view/f;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 4

    .line 1
    iget v0, p0, Landroidx/core/view/f;->a:I

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/core/view/f;->b:Ljava/lang/Object;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    check-cast v1, Lcom/google/android/material/appbar/AppBarLayout;

    .line 9
    .line 10
    iget-object v0, p0, Landroidx/core/view/f;->c:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast v0, Lcom/google/android/material/shape/MaterialShapeDrawable;

    .line 13
    .line 14
    sget v2, Lcom/google/android/material/appbar/AppBarLayout;->F:I

    .line 15
    .line 16
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    check-cast p1, Ljava/lang/Float;

    .line 21
    .line 22
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    invoke-virtual {v0, p1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->n(F)V

    .line 27
    .line 28
    .line 29
    iget-object v0, v1, Lcom/google/android/material/appbar/AppBarLayout;->B:Landroid/graphics/drawable/Drawable;

    .line 30
    .line 31
    instance-of v2, v0, Lcom/google/android/material/shape/MaterialShapeDrawable;

    .line 32
    .line 33
    if-eqz v2, :cond_0

    .line 34
    .line 35
    check-cast v0, Lcom/google/android/material/shape/MaterialShapeDrawable;

    .line 36
    .line 37
    invoke-virtual {v0, p1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->n(F)V

    .line 38
    .line 39
    .line 40
    :cond_0
    iget-object p1, v1, Lcom/google/android/material/appbar/AppBarLayout;->v:Ljava/util/ArrayList;

    .line 41
    .line 42
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    const/4 v2, 0x0

    .line 47
    :goto_0
    if-ge v2, v0, :cond_1

    .line 48
    .line 49
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v3

    .line 53
    add-int/lit8 v2, v2, 0x1

    .line 54
    .line 55
    check-cast v3, Lcom/google/android/material/appbar/AppBarLayout$LiftOnScrollListener;

    .line 56
    .line 57
    invoke-interface {v3}, Lcom/google/android/material/appbar/AppBarLayout$LiftOnScrollListener;->c()V

    .line 58
    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_1
    iget-object p1, v1, Lcom/google/android/material/appbar/AppBarLayout;->w:Ljava/util/LinkedHashSet;

    .line 62
    .line 63
    invoke-virtual {p1}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 68
    .line 69
    .line 70
    move-result v0

    .line 71
    if-nez v0, :cond_2

    .line 72
    .line 73
    return-void

    .line 74
    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    check-cast p1, Lcom/google/android/material/appbar/AppBarLayout$LiftOnScrollProgressListener;

    .line 79
    .line 80
    invoke-virtual {p1}, Lcom/google/android/material/appbar/AppBarLayout$LiftOnScrollProgressListener;->a()V

    .line 81
    .line 82
    .line 83
    const/4 p1, 0x0

    .line 84
    throw p1

    .line 85
    :pswitch_0
    check-cast v1, Landroidx/core/view/ViewPropertyAnimatorUpdateListener;

    .line 86
    .line 87
    invoke-interface {v1}, Landroidx/core/view/ViewPropertyAnimatorUpdateListener;->a()V

    .line 88
    .line 89
    .line 90
    return-void

    .line 91
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
