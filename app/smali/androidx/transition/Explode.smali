.class public Landroidx/transition/Explode;
.super Landroidx/transition/Visibility;
.source "SourceFile"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    .line 7
    .line 8
    invoke-direct {v0}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    .line 9
    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final Q(Landroid/view/ViewGroup;Landroid/view/View;Landroidx/transition/TransitionValues;Landroidx/transition/TransitionValues;)Landroid/animation/Animator;
    .locals 1

    .line 1
    const/4 p3, 0x0

    .line 2
    if-nez p4, :cond_0

    .line 3
    .line 4
    return-object p3

    .line 5
    :cond_0
    iget-object p4, p4, Landroidx/transition/TransitionValues;->a:Ljava/util/HashMap;

    .line 6
    .line 7
    const-string v0, "android:explode:screenBounds"

    .line 8
    .line 9
    invoke-virtual {p4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p4

    .line 13
    check-cast p4, Landroid/graphics/Rect;

    .line 14
    .line 15
    invoke-virtual {p2}, Landroid/view/View;->getTranslationX()F

    .line 16
    .line 17
    .line 18
    invoke-virtual {p2}, Landroid/view/View;->getTranslationY()F

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1, p3}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 22
    .line 23
    .line 24
    throw p3
.end method

.method public final R(Landroid/view/ViewGroup;Landroid/view/View;Landroidx/transition/TransitionValues;Landroidx/transition/TransitionValues;)Landroid/animation/Animator;
    .locals 2

    .line 1
    const/4 p4, 0x0

    .line 2
    if-nez p3, :cond_0

    .line 3
    .line 4
    return-object p4

    .line 5
    :cond_0
    iget-object v0, p3, Landroidx/transition/TransitionValues;->a:Ljava/util/HashMap;

    .line 6
    .line 7
    const-string v1, "android:explode:screenBounds"

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Landroid/graphics/Rect;

    .line 14
    .line 15
    iget v1, v0, Landroid/graphics/Rect;->left:I

    .line 16
    .line 17
    invoke-virtual {p2}, Landroid/view/View;->getTranslationX()F

    .line 18
    .line 19
    .line 20
    invoke-virtual {p2}, Landroid/view/View;->getTranslationY()F

    .line 21
    .line 22
    .line 23
    iget-object p2, p3, Landroidx/transition/TransitionValues;->b:Landroid/view/View;

    .line 24
    .line 25
    sget p3, Landroidx/transition/R$id;->transition_position:I

    .line 26
    .line 27
    invoke-virtual {p2, p3}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object p2

    .line 31
    check-cast p2, [I

    .line 32
    .line 33
    if-eqz p2, :cond_1

    .line 34
    .line 35
    const/4 p3, 0x0

    .line 36
    aget p3, p2, p3

    .line 37
    .line 38
    const/4 v1, 0x1

    .line 39
    aget p2, p2, v1

    .line 40
    .line 41
    invoke-virtual {v0, p3, p2}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 42
    .line 43
    .line 44
    :cond_1
    invoke-virtual {p1, p4}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 45
    .line 46
    .line 47
    throw p4
.end method

.method public final e(Landroidx/transition/TransitionValues;)V
    .locals 1

    .line 1
    invoke-static {p1}, Landroidx/transition/Visibility;->O(Landroidx/transition/TransitionValues;)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p1, Landroidx/transition/TransitionValues;->b:Landroid/view/View;

    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 8
    .line 9
    .line 10
    throw v0
.end method

.method public final h(Landroidx/transition/TransitionValues;)V
    .locals 1

    .line 1
    invoke-static {p1}, Landroidx/transition/Visibility;->O(Landroidx/transition/TransitionValues;)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p1, Landroidx/transition/TransitionValues;->b:Landroid/view/View;

    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 8
    .line 9
    .line 10
    throw v0
.end method
