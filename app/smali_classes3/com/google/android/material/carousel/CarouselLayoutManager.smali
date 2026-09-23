.class public Lcom/google/android/material/carousel/CarouselLayoutManager;
.super Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/material/carousel/Carousel;
.implements Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$ScrollVectorProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/carousel/CarouselLayoutManager$LayoutDirection;,
        Lcom/google/android/material/carousel/CarouselLayoutManager$DebugItemDecoration;,
        Lcom/google/android/material/carousel/CarouselLayoutManager$KeylineRange;,
        Lcom/google/android/material/carousel/CarouselLayoutManager$ChildCalculations;
    }
.end annotation


# instance fields
.field public A:I

.field public B:I

.field public final C:I

.field public p:I

.field public q:I

.field public r:I

.field public final s:Lcom/google/android/material/carousel/CarouselLayoutManager$DebugItemDecoration;

.field public final t:Lcom/google/android/material/carousel/MultiBrowseCarouselStrategy;

.field public u:Lcom/google/android/material/carousel/KeylineStateList;

.field public v:Lcom/google/android/material/carousel/KeylineState;

.field public w:I

.field public x:Ljava/util/HashMap;

.field public y:Lcom/google/android/material/carousel/CarouselOrientationHelper;

.field public final z:Landroid/view/View$OnLayoutChangeListener;


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 1
    new-instance v0, Lcom/google/android/material/carousel/MultiBrowseCarouselStrategy;

    invoke-direct {v0}, Lcom/google/android/material/carousel/MultiBrowseCarouselStrategy;-><init>()V

    .line 2
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;-><init>()V

    .line 3
    new-instance v1, Lcom/google/android/material/carousel/CarouselLayoutManager$DebugItemDecoration;

    invoke-direct {v1}, Lcom/google/android/material/carousel/CarouselLayoutManager$DebugItemDecoration;-><init>()V

    iput-object v1, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->s:Lcom/google/android/material/carousel/CarouselLayoutManager$DebugItemDecoration;

    const/4 v1, 0x0

    .line 4
    iput v1, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->w:I

    .line 5
    new-instance v2, Lcom/google/android/material/carousel/a;

    const/4 v3, 0x0

    invoke-direct {v2, v3, p0}, Lcom/google/android/material/carousel/a;-><init>(ILjava/lang/Object;)V

    iput-object v2, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->z:Landroid/view/View$OnLayoutChangeListener;

    const/4 v2, -0x1

    .line 6
    iput v2, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->B:I

    .line 7
    iput v1, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->C:I

    .line 8
    iput-object v0, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->t:Lcom/google/android/material/carousel/MultiBrowseCarouselStrategy;

    .line 9
    invoke-virtual {p0}, Lcom/google/android/material/carousel/CarouselLayoutManager;->f1()V

    .line 10
    invoke-virtual {p0, v1}, Lcom/google/android/material/carousel/CarouselLayoutManager;->h1(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "UnknownNullness"
        }
    .end annotation

    .line 11
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;-><init>()V

    .line 12
    new-instance p3, Lcom/google/android/material/carousel/CarouselLayoutManager$DebugItemDecoration;

    invoke-direct {p3}, Lcom/google/android/material/carousel/CarouselLayoutManager$DebugItemDecoration;-><init>()V

    iput-object p3, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->s:Lcom/google/android/material/carousel/CarouselLayoutManager$DebugItemDecoration;

    const/4 p3, 0x0

    .line 13
    iput p3, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->w:I

    .line 14
    new-instance p4, Lcom/google/android/material/carousel/a;

    const/4 v0, 0x0

    invoke-direct {p4, v0, p0}, Lcom/google/android/material/carousel/a;-><init>(ILjava/lang/Object;)V

    iput-object p4, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->z:Landroid/view/View$OnLayoutChangeListener;

    const/4 p4, -0x1

    .line 15
    iput p4, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->B:I

    .line 16
    iput p3, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->C:I

    .line 17
    new-instance p4, Lcom/google/android/material/carousel/MultiBrowseCarouselStrategy;

    invoke-direct {p4}, Lcom/google/android/material/carousel/MultiBrowseCarouselStrategy;-><init>()V

    .line 18
    iput-object p4, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->t:Lcom/google/android/material/carousel/MultiBrowseCarouselStrategy;

    .line 19
    invoke-virtual {p0}, Lcom/google/android/material/carousel/CarouselLayoutManager;->f1()V

    if-eqz p2, :cond_0

    .line 20
    sget-object p4, Lcom/google/android/material/R$styleable;->Carousel:[I

    invoke-virtual {p1, p2, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 21
    sget p2, Lcom/google/android/material/R$styleable;->Carousel_carousel_alignment:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    .line 22
    iput p2, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->C:I

    .line 23
    invoke-virtual {p0}, Lcom/google/android/material/carousel/CarouselLayoutManager;->f1()V

    .line 24
    sget p2, Landroidx/recyclerview/R$styleable;->RecyclerView_android_orientation:I

    .line 25
    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    .line 26
    invoke-virtual {p0, p2}, Lcom/google/android/material/carousel/CarouselLayoutManager;->h1(I)V

    .line 27
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    :cond_0
    return-void
.end method

.method public static Y0(Ljava/util/List;FZ)Lcom/google/android/material/carousel/CarouselLayoutManager$KeylineRange;
    .locals 13

    .line 1
    const/4 v0, -0x1

    .line 2
    const v1, 0x7f7fffff    # Float.MAX_VALUE

    .line 3
    .line 4
    .line 5
    const v2, -0x800001

    .line 6
    .line 7
    .line 8
    const/4 v3, 0x0

    .line 9
    move v6, v0

    .line 10
    move v7, v6

    .line 11
    move v8, v7

    .line 12
    move v9, v8

    .line 13
    move v4, v2

    .line 14
    move v5, v3

    .line 15
    move v2, v1

    .line 16
    move v3, v2

    .line 17
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 18
    .line 19
    .line 20
    move-result v10

    .line 21
    if-ge v5, v10, :cond_5

    .line 22
    .line 23
    invoke-interface {p0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v10

    .line 27
    check-cast v10, Lcom/google/android/material/carousel/KeylineState$Keyline;

    .line 28
    .line 29
    if-eqz p2, :cond_0

    .line 30
    .line 31
    iget v10, v10, Lcom/google/android/material/carousel/KeylineState$Keyline;->b:F

    .line 32
    .line 33
    goto :goto_1

    .line 34
    :cond_0
    iget v10, v10, Lcom/google/android/material/carousel/KeylineState$Keyline;->a:F

    .line 35
    .line 36
    :goto_1
    sub-float v11, v10, p1

    .line 37
    .line 38
    invoke-static {v11}, Ljava/lang/Math;->abs(F)F

    .line 39
    .line 40
    .line 41
    move-result v11

    .line 42
    cmpg-float v12, v10, p1

    .line 43
    .line 44
    if-gtz v12, :cond_1

    .line 45
    .line 46
    cmpg-float v12, v11, v1

    .line 47
    .line 48
    if-gtz v12, :cond_1

    .line 49
    .line 50
    move v6, v5

    .line 51
    move v1, v11

    .line 52
    :cond_1
    cmpl-float v12, v10, p1

    .line 53
    .line 54
    if-lez v12, :cond_2

    .line 55
    .line 56
    cmpg-float v12, v11, v2

    .line 57
    .line 58
    if-gtz v12, :cond_2

    .line 59
    .line 60
    move v8, v5

    .line 61
    move v2, v11

    .line 62
    :cond_2
    cmpg-float v11, v10, v3

    .line 63
    .line 64
    if-gtz v11, :cond_3

    .line 65
    .line 66
    move v7, v5

    .line 67
    move v3, v10

    .line 68
    :cond_3
    cmpl-float v11, v10, v4

    .line 69
    .line 70
    if-lez v11, :cond_4

    .line 71
    .line 72
    move v9, v5

    .line 73
    move v4, v10

    .line 74
    :cond_4
    add-int/lit8 v5, v5, 0x1

    .line 75
    .line 76
    goto :goto_0

    .line 77
    :cond_5
    if-ne v6, v0, :cond_6

    .line 78
    .line 79
    move v6, v7

    .line 80
    :cond_6
    if-ne v8, v0, :cond_7

    .line 81
    .line 82
    move v8, v9

    .line 83
    :cond_7
    new-instance p1, Lcom/google/android/material/carousel/CarouselLayoutManager$KeylineRange;

    .line 84
    .line 85
    invoke-interface {p0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object p2

    .line 89
    check-cast p2, Lcom/google/android/material/carousel/KeylineState$Keyline;

    .line 90
    .line 91
    invoke-interface {p0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    move-result-object p0

    .line 95
    check-cast p0, Lcom/google/android/material/carousel/KeylineState$Keyline;

    .line 96
    .line 97
    invoke-direct {p1, p2, p0}, Lcom/google/android/material/carousel/CarouselLayoutManager$KeylineRange;-><init>(Lcom/google/android/material/carousel/KeylineState$Keyline;Lcom/google/android/material/carousel/KeylineState$Keyline;)V

    .line 98
    .line 99
    .line 100
    return-object p1
.end method


# virtual methods
.method public final B(Landroid/graphics/Rect;Landroid/view/View;)V
    .locals 4

    .line 1
    invoke-static {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->N(Landroid/graphics/Rect;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Landroid/graphics/Rect;->centerY()I

    .line 5
    .line 6
    .line 7
    move-result p2

    .line 8
    int-to-float p2, p2

    .line 9
    invoke-virtual {p0}, Lcom/google/android/material/carousel/CarouselLayoutManager;->Z0()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    invoke-virtual {p1}, Landroid/graphics/Rect;->centerX()I

    .line 16
    .line 17
    .line 18
    move-result p2

    .line 19
    int-to-float p2, p2

    .line 20
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->v:Lcom/google/android/material/carousel/KeylineState;

    .line 21
    .line 22
    iget-object v0, v0, Lcom/google/android/material/carousel/KeylineState;->c:Ljava/util/List;

    .line 23
    .line 24
    const/4 v1, 0x1

    .line 25
    invoke-static {v0, p2, v1}, Lcom/google/android/material/carousel/CarouselLayoutManager;->Y0(Ljava/util/List;FZ)Lcom/google/android/material/carousel/CarouselLayoutManager$KeylineRange;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    iget-object v1, v0, Lcom/google/android/material/carousel/CarouselLayoutManager$KeylineRange;->a:Lcom/google/android/material/carousel/KeylineState$Keyline;

    .line 30
    .line 31
    iget v2, v1, Lcom/google/android/material/carousel/KeylineState$Keyline;->d:F

    .line 32
    .line 33
    iget-object v0, v0, Lcom/google/android/material/carousel/CarouselLayoutManager$KeylineRange;->b:Lcom/google/android/material/carousel/KeylineState$Keyline;

    .line 34
    .line 35
    iget v3, v0, Lcom/google/android/material/carousel/KeylineState$Keyline;->d:F

    .line 36
    .line 37
    iget v1, v1, Lcom/google/android/material/carousel/KeylineState$Keyline;->b:F

    .line 38
    .line 39
    iget v0, v0, Lcom/google/android/material/carousel/KeylineState$Keyline;->b:F

    .line 40
    .line 41
    invoke-static {v2, v3, v1, v0, p2}, Lcom/google/android/material/animation/AnimationUtils;->b(FFFFF)F

    .line 42
    .line 43
    .line 44
    move-result p2

    .line 45
    invoke-virtual {p0}, Lcom/google/android/material/carousel/CarouselLayoutManager;->Z0()Z

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    const/4 v1, 0x0

    .line 50
    const/high16 v2, 0x40000000    # 2.0f

    .line 51
    .line 52
    if-eqz v0, :cond_1

    .line 53
    .line 54
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    int-to-float v0, v0

    .line 59
    sub-float/2addr v0, p2

    .line 60
    div-float/2addr v0, v2

    .line 61
    goto :goto_0

    .line 62
    :cond_1
    move v0, v1

    .line 63
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/material/carousel/CarouselLayoutManager;->Z0()Z

    .line 64
    .line 65
    .line 66
    move-result v3

    .line 67
    if-eqz v3, :cond_2

    .line 68
    .line 69
    goto :goto_1

    .line 70
    :cond_2
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    .line 71
    .line 72
    .line 73
    move-result v1

    .line 74
    int-to-float v1, v1

    .line 75
    sub-float/2addr v1, p2

    .line 76
    div-float/2addr v1, v2

    .line 77
    :goto_1
    iget p2, p1, Landroid/graphics/Rect;->left:I

    .line 78
    .line 79
    int-to-float p2, p2

    .line 80
    add-float/2addr p2, v0

    .line 81
    float-to-int p2, p2

    .line 82
    iget v2, p1, Landroid/graphics/Rect;->top:I

    .line 83
    .line 84
    int-to-float v2, v2

    .line 85
    add-float/2addr v2, v1

    .line 86
    float-to-int v2, v2

    .line 87
    iget v3, p1, Landroid/graphics/Rect;->right:I

    .line 88
    .line 89
    int-to-float v3, v3

    .line 90
    sub-float/2addr v3, v0

    .line 91
    float-to-int v0, v3

    .line 92
    iget v3, p1, Landroid/graphics/Rect;->bottom:I

    .line 93
    .line 94
    int-to-float v3, v3

    .line 95
    sub-float/2addr v3, v1

    .line 96
    float-to-int v1, v3

    .line 97
    invoke-virtual {p1, p2, v2, v0, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 98
    .line 99
    .line 100
    return-void
.end method

.method public final H0(ILandroidx/recyclerview/widget/RecyclerView;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/material/carousel/CarouselLayoutManager$1;

    .line 2
    .line 3
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object p2

    .line 7
    invoke-direct {v0, p0, p2}, Lcom/google/android/material/carousel/CarouselLayoutManager$1;-><init>(Lcom/google/android/material/carousel/CarouselLayoutManager;Landroid/content/Context;)V

    .line 8
    .line 9
    .line 10
    iput p1, v0, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->a:I

    .line 11
    .line 12
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->I0(Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final K0(Landroid/view/View;ILcom/google/android/material/carousel/CarouselLayoutManager$ChildCalculations;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->v:Lcom/google/android/material/carousel/KeylineState;

    .line 2
    .line 3
    iget v0, v0, Lcom/google/android/material/carousel/KeylineState;->a:F

    .line 4
    .line 5
    const/high16 v1, 0x40000000    # 2.0f

    .line 6
    .line 7
    div-float/2addr v0, v1

    .line 8
    const/4 v1, 0x0

    .line 9
    invoke-virtual {p0, p2, p1, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->c(ILandroid/view/View;Z)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, p1}, Lcom/google/android/material/carousel/CarouselLayoutManager;->d1(Landroid/view/View;)V

    .line 13
    .line 14
    .line 15
    iget p2, p3, Lcom/google/android/material/carousel/CarouselLayoutManager$ChildCalculations;->c:F

    .line 16
    .line 17
    sub-float v1, p2, v0

    .line 18
    .line 19
    float-to-int v1, v1

    .line 20
    add-float/2addr p2, v0

    .line 21
    float-to-int p2, p2

    .line 22
    iget-object v0, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->y:Lcom/google/android/material/carousel/CarouselOrientationHelper;

    .line 23
    .line 24
    invoke-virtual {v0, p1, v1, p2}, Lcom/google/android/material/carousel/CarouselOrientationHelper;->h(Landroid/view/View;II)V

    .line 25
    .line 26
    .line 27
    iget p2, p3, Lcom/google/android/material/carousel/CarouselLayoutManager$ChildCalculations;->b:F

    .line 28
    .line 29
    iget-object p3, p3, Lcom/google/android/material/carousel/CarouselLayoutManager$ChildCalculations;->d:Lcom/google/android/material/carousel/CarouselLayoutManager$KeylineRange;

    .line 30
    .line 31
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/material/carousel/CarouselLayoutManager;->i1(Landroid/view/View;FLcom/google/android/material/carousel/CarouselLayoutManager$KeylineRange;)V

    .line 32
    .line 33
    .line 34
    return-void
.end method

.method public final L0(FF)F
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/material/carousel/CarouselLayoutManager;->a1()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    sub-float/2addr p1, p2

    .line 8
    return p1

    .line 9
    :cond_0
    add-float/2addr p1, p2

    .line 10
    return p1
.end method

.method public final M0(Landroidx/recyclerview/widget/RecyclerView$Recycler;II)V
    .locals 3

    .line 1
    if-ltz p2, :cond_1

    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->H()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-lt p2, v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {p0, p2}, Lcom/google/android/material/carousel/CarouselLayoutManager;->Q0(I)F

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Recycler;->d(I)Landroid/view/View;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    invoke-virtual {p0, p1}, Lcom/google/android/material/carousel/CarouselLayoutManager;->d1(Landroid/view/View;)V

    .line 19
    .line 20
    .line 21
    iget-object p2, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->v:Lcom/google/android/material/carousel/KeylineState;

    .line 22
    .line 23
    iget p2, p2, Lcom/google/android/material/carousel/KeylineState;->a:F

    .line 24
    .line 25
    const/high16 v1, 0x40000000    # 2.0f

    .line 26
    .line 27
    div-float/2addr p2, v1

    .line 28
    invoke-virtual {p0, v0, p2}, Lcom/google/android/material/carousel/CarouselLayoutManager;->L0(FF)F

    .line 29
    .line 30
    .line 31
    move-result p2

    .line 32
    iget-object v0, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->v:Lcom/google/android/material/carousel/KeylineState;

    .line 33
    .line 34
    iget-object v0, v0, Lcom/google/android/material/carousel/KeylineState;->c:Ljava/util/List;

    .line 35
    .line 36
    const/4 v1, 0x0

    .line 37
    invoke-static {v0, p2, v1}, Lcom/google/android/material/carousel/CarouselLayoutManager;->Y0(Ljava/util/List;FZ)Lcom/google/android/material/carousel/CarouselLayoutManager$KeylineRange;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    invoke-virtual {p0, p2, v0}, Lcom/google/android/material/carousel/CarouselLayoutManager;->P0(FLcom/google/android/material/carousel/CarouselLayoutManager$KeylineRange;)F

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    new-instance v2, Lcom/google/android/material/carousel/CarouselLayoutManager$ChildCalculations;

    .line 46
    .line 47
    invoke-direct {v2, p1, p2, v1, v0}, Lcom/google/android/material/carousel/CarouselLayoutManager$ChildCalculations;-><init>(Landroid/view/View;FFLcom/google/android/material/carousel/CarouselLayoutManager$KeylineRange;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {p0, p1, p3, v2}, Lcom/google/android/material/carousel/CarouselLayoutManager;->K0(Landroid/view/View;ILcom/google/android/material/carousel/CarouselLayoutManager$ChildCalculations;)V

    .line 51
    .line 52
    .line 53
    :cond_1
    :goto_0
    return-void
.end method

.method public final N0(ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 6

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/material/carousel/CarouselLayoutManager;->Q0(I)F

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    :goto_0
    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView$State;->b()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-ge p1, v1, :cond_2

    .line 10
    .line 11
    iget-object v1, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->v:Lcom/google/android/material/carousel/KeylineState;

    .line 12
    .line 13
    iget v1, v1, Lcom/google/android/material/carousel/KeylineState;->a:F

    .line 14
    .line 15
    const/high16 v2, 0x40000000    # 2.0f

    .line 16
    .line 17
    div-float/2addr v1, v2

    .line 18
    invoke-virtual {p0, v0, v1}, Lcom/google/android/material/carousel/CarouselLayoutManager;->L0(FF)F

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    iget-object v2, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->v:Lcom/google/android/material/carousel/KeylineState;

    .line 23
    .line 24
    iget-object v2, v2, Lcom/google/android/material/carousel/KeylineState;->c:Ljava/util/List;

    .line 25
    .line 26
    const/4 v3, 0x0

    .line 27
    invoke-static {v2, v1, v3}, Lcom/google/android/material/carousel/CarouselLayoutManager;->Y0(Ljava/util/List;FZ)Lcom/google/android/material/carousel/CarouselLayoutManager$KeylineRange;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    invoke-virtual {p0, v1, v2}, Lcom/google/android/material/carousel/CarouselLayoutManager;->P0(FLcom/google/android/material/carousel/CarouselLayoutManager$KeylineRange;)F

    .line 32
    .line 33
    .line 34
    move-result v3

    .line 35
    invoke-virtual {p0, v3, v2}, Lcom/google/android/material/carousel/CarouselLayoutManager;->b1(FLcom/google/android/material/carousel/CarouselLayoutManager$KeylineRange;)Z

    .line 36
    .line 37
    .line 38
    move-result v4

    .line 39
    if-eqz v4, :cond_0

    .line 40
    .line 41
    goto :goto_2

    .line 42
    :cond_0
    iget-object v4, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->v:Lcom/google/android/material/carousel/KeylineState;

    .line 43
    .line 44
    iget v4, v4, Lcom/google/android/material/carousel/KeylineState;->a:F

    .line 45
    .line 46
    invoke-virtual {p0, v0, v4}, Lcom/google/android/material/carousel/CarouselLayoutManager;->L0(FF)F

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    invoke-virtual {p0, v3, v2}, Lcom/google/android/material/carousel/CarouselLayoutManager;->c1(FLcom/google/android/material/carousel/CarouselLayoutManager$KeylineRange;)Z

    .line 51
    .line 52
    .line 53
    move-result v4

    .line 54
    if-eqz v4, :cond_1

    .line 55
    .line 56
    goto :goto_1

    .line 57
    :cond_1
    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/RecyclerView$Recycler;->d(I)Landroid/view/View;

    .line 58
    .line 59
    .line 60
    move-result-object v4

    .line 61
    new-instance v5, Lcom/google/android/material/carousel/CarouselLayoutManager$ChildCalculations;

    .line 62
    .line 63
    invoke-direct {v5, v4, v1, v3, v2}, Lcom/google/android/material/carousel/CarouselLayoutManager$ChildCalculations;-><init>(Landroid/view/View;FFLcom/google/android/material/carousel/CarouselLayoutManager$KeylineRange;)V

    .line 64
    .line 65
    .line 66
    const/4 v1, -0x1

    .line 67
    invoke-virtual {p0, v4, v1, v5}, Lcom/google/android/material/carousel/CarouselLayoutManager;->K0(Landroid/view/View;ILcom/google/android/material/carousel/CarouselLayoutManager$ChildCalculations;)V

    .line 68
    .line 69
    .line 70
    :goto_1
    add-int/lit8 p1, p1, 0x1

    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_2
    :goto_2
    return-void
.end method

.method public final O0(ILandroidx/recyclerview/widget/RecyclerView$Recycler;)V
    .locals 7

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/material/carousel/CarouselLayoutManager;->Q0(I)F

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    :goto_0
    if-ltz p1, :cond_3

    .line 6
    .line 7
    iget-object v1, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->v:Lcom/google/android/material/carousel/KeylineState;

    .line 8
    .line 9
    iget v1, v1, Lcom/google/android/material/carousel/KeylineState;->a:F

    .line 10
    .line 11
    const/high16 v2, 0x40000000    # 2.0f

    .line 12
    .line 13
    div-float/2addr v1, v2

    .line 14
    invoke-virtual {p0, v0, v1}, Lcom/google/android/material/carousel/CarouselLayoutManager;->L0(FF)F

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    iget-object v2, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->v:Lcom/google/android/material/carousel/KeylineState;

    .line 19
    .line 20
    iget-object v2, v2, Lcom/google/android/material/carousel/KeylineState;->c:Ljava/util/List;

    .line 21
    .line 22
    const/4 v3, 0x0

    .line 23
    invoke-static {v2, v1, v3}, Lcom/google/android/material/carousel/CarouselLayoutManager;->Y0(Ljava/util/List;FZ)Lcom/google/android/material/carousel/CarouselLayoutManager$KeylineRange;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    invoke-virtual {p0, v1, v2}, Lcom/google/android/material/carousel/CarouselLayoutManager;->P0(FLcom/google/android/material/carousel/CarouselLayoutManager$KeylineRange;)F

    .line 28
    .line 29
    .line 30
    move-result v4

    .line 31
    invoke-virtual {p0, v4, v2}, Lcom/google/android/material/carousel/CarouselLayoutManager;->c1(FLcom/google/android/material/carousel/CarouselLayoutManager$KeylineRange;)Z

    .line 32
    .line 33
    .line 34
    move-result v5

    .line 35
    if-eqz v5, :cond_0

    .line 36
    .line 37
    goto :goto_3

    .line 38
    :cond_0
    iget-object v5, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->v:Lcom/google/android/material/carousel/KeylineState;

    .line 39
    .line 40
    iget v5, v5, Lcom/google/android/material/carousel/KeylineState;->a:F

    .line 41
    .line 42
    invoke-virtual {p0}, Lcom/google/android/material/carousel/CarouselLayoutManager;->a1()Z

    .line 43
    .line 44
    .line 45
    move-result v6

    .line 46
    if-eqz v6, :cond_1

    .line 47
    .line 48
    add-float/2addr v0, v5

    .line 49
    goto :goto_1

    .line 50
    :cond_1
    sub-float/2addr v0, v5

    .line 51
    :goto_1
    invoke-virtual {p0, v4, v2}, Lcom/google/android/material/carousel/CarouselLayoutManager;->b1(FLcom/google/android/material/carousel/CarouselLayoutManager$KeylineRange;)Z

    .line 52
    .line 53
    .line 54
    move-result v5

    .line 55
    if-eqz v5, :cond_2

    .line 56
    .line 57
    goto :goto_2

    .line 58
    :cond_2
    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/RecyclerView$Recycler;->d(I)Landroid/view/View;

    .line 59
    .line 60
    .line 61
    move-result-object v5

    .line 62
    new-instance v6, Lcom/google/android/material/carousel/CarouselLayoutManager$ChildCalculations;

    .line 63
    .line 64
    invoke-direct {v6, v5, v1, v4, v2}, Lcom/google/android/material/carousel/CarouselLayoutManager$ChildCalculations;-><init>(Landroid/view/View;FFLcom/google/android/material/carousel/CarouselLayoutManager$KeylineRange;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {p0, v5, v3, v6}, Lcom/google/android/material/carousel/CarouselLayoutManager;->K0(Landroid/view/View;ILcom/google/android/material/carousel/CarouselLayoutManager$ChildCalculations;)V

    .line 68
    .line 69
    .line 70
    :goto_2
    add-int/lit8 p1, p1, -0x1

    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_3
    :goto_3
    return-void
.end method

.method public final P0(FLcom/google/android/material/carousel/CarouselLayoutManager$KeylineRange;)F
    .locals 5

    .line 1
    iget-object v0, p2, Lcom/google/android/material/carousel/CarouselLayoutManager$KeylineRange;->a:Lcom/google/android/material/carousel/KeylineState$Keyline;

    .line 2
    .line 3
    iget v1, v0, Lcom/google/android/material/carousel/KeylineState$Keyline;->b:F

    .line 4
    .line 5
    iget-object p2, p2, Lcom/google/android/material/carousel/CarouselLayoutManager$KeylineRange;->b:Lcom/google/android/material/carousel/KeylineState$Keyline;

    .line 6
    .line 7
    iget v2, p2, Lcom/google/android/material/carousel/KeylineState$Keyline;->b:F

    .line 8
    .line 9
    iget v3, v0, Lcom/google/android/material/carousel/KeylineState$Keyline;->a:F

    .line 10
    .line 11
    iget v4, p2, Lcom/google/android/material/carousel/KeylineState$Keyline;->a:F

    .line 12
    .line 13
    invoke-static {v1, v2, v3, v4, p1}, Lcom/google/android/material/animation/AnimationUtils;->b(FFFFF)F

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    iget-object v2, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->v:Lcom/google/android/material/carousel/KeylineState;

    .line 18
    .line 19
    invoke-virtual {v2}, Lcom/google/android/material/carousel/KeylineState;->b()Lcom/google/android/material/carousel/KeylineState$Keyline;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    if-eq p2, v2, :cond_1

    .line 24
    .line 25
    iget-object v2, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->v:Lcom/google/android/material/carousel/KeylineState;

    .line 26
    .line 27
    invoke-virtual {v2}, Lcom/google/android/material/carousel/KeylineState;->d()Lcom/google/android/material/carousel/KeylineState$Keyline;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    if-ne v0, v2, :cond_0

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    return v1

    .line 35
    :cond_1
    :goto_0
    sub-float/2addr p1, v4

    .line 36
    const/high16 v0, 0x3f800000    # 1.0f

    .line 37
    .line 38
    iget p2, p2, Lcom/google/android/material/carousel/KeylineState$Keyline;->c:F

    .line 39
    .line 40
    invoke-static {v0, p2, p1, v1}, Landroid/support/v4/media/a;->a(FFFF)F

    .line 41
    .line 42
    .line 43
    move-result p1

    .line 44
    return p1
.end method

.method public final Q0(I)F
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->y:Lcom/google/android/material/carousel/CarouselOrientationHelper;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/material/carousel/CarouselOrientationHelper;->f()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iget v1, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->p:I

    .line 8
    .line 9
    sub-int/2addr v0, v1

    .line 10
    int-to-float v0, v0

    .line 11
    iget-object v1, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->v:Lcom/google/android/material/carousel/KeylineState;

    .line 12
    .line 13
    iget v1, v1, Lcom/google/android/material/carousel/KeylineState;->a:F

    .line 14
    .line 15
    int-to-float p1, p1

    .line 16
    mul-float/2addr v1, p1

    .line 17
    invoke-virtual {p0, v0, v1}, Lcom/google/android/material/carousel/CarouselLayoutManager;->L0(FF)F

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    return p1
.end method

.method public final R()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    return v0
.end method

.method public final R0(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 5

    .line 1
    :goto_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->x()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    const/4 v2, 0x1

    .line 7
    if-lez v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->w(I)Landroid/view/View;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {p0, v0}, Lcom/google/android/material/carousel/CarouselLayoutManager;->T0(Landroid/view/View;)F

    .line 14
    .line 15
    .line 16
    move-result v3

    .line 17
    iget-object v4, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->v:Lcom/google/android/material/carousel/KeylineState;

    .line 18
    .line 19
    iget-object v4, v4, Lcom/google/android/material/carousel/KeylineState;->c:Ljava/util/List;

    .line 20
    .line 21
    invoke-static {v4, v3, v2}, Lcom/google/android/material/carousel/CarouselLayoutManager;->Y0(Ljava/util/List;FZ)Lcom/google/android/material/carousel/CarouselLayoutManager$KeylineRange;

    .line 22
    .line 23
    .line 24
    move-result-object v4

    .line 25
    invoke-virtual {p0, v3, v4}, Lcom/google/android/material/carousel/CarouselLayoutManager;->c1(FLcom/google/android/material/carousel/CarouselLayoutManager$KeylineRange;)Z

    .line 26
    .line 27
    .line 28
    move-result v3

    .line 29
    if-eqz v3, :cond_0

    .line 30
    .line 31
    invoke-virtual {p0, v0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->r0(Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView$Recycler;)V

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    :goto_1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->x()I

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    sub-int/2addr v0, v2

    .line 40
    if-ltz v0, :cond_1

    .line 41
    .line 42
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->x()I

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    sub-int/2addr v0, v2

    .line 47
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->w(I)Landroid/view/View;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    invoke-virtual {p0, v0}, Lcom/google/android/material/carousel/CarouselLayoutManager;->T0(Landroid/view/View;)F

    .line 52
    .line 53
    .line 54
    move-result v3

    .line 55
    iget-object v4, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->v:Lcom/google/android/material/carousel/KeylineState;

    .line 56
    .line 57
    iget-object v4, v4, Lcom/google/android/material/carousel/KeylineState;->c:Ljava/util/List;

    .line 58
    .line 59
    invoke-static {v4, v3, v2}, Lcom/google/android/material/carousel/CarouselLayoutManager;->Y0(Ljava/util/List;FZ)Lcom/google/android/material/carousel/CarouselLayoutManager$KeylineRange;

    .line 60
    .line 61
    .line 62
    move-result-object v4

    .line 63
    invoke-virtual {p0, v3, v4}, Lcom/google/android/material/carousel/CarouselLayoutManager;->b1(FLcom/google/android/material/carousel/CarouselLayoutManager$KeylineRange;)Z

    .line 64
    .line 65
    .line 66
    move-result v3

    .line 67
    if-eqz v3, :cond_1

    .line 68
    .line 69
    invoke-virtual {p0, v0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->r0(Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView$Recycler;)V

    .line 70
    .line 71
    .line 72
    goto :goto_1

    .line 73
    :cond_1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->x()I

    .line 74
    .line 75
    .line 76
    move-result v0

    .line 77
    if-nez v0, :cond_2

    .line 78
    .line 79
    iget v0, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->w:I

    .line 80
    .line 81
    sub-int/2addr v0, v2

    .line 82
    invoke-virtual {p0, v0, p1}, Lcom/google/android/material/carousel/CarouselLayoutManager;->O0(ILandroidx/recyclerview/widget/RecyclerView$Recycler;)V

    .line 83
    .line 84
    .line 85
    iget v0, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->w:I

    .line 86
    .line 87
    invoke-virtual {p0, v0, p1, p2}, Lcom/google/android/material/carousel/CarouselLayoutManager;->N0(ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)V

    .line 88
    .line 89
    .line 90
    return-void

    .line 91
    :cond_2
    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->w(I)Landroid/view/View;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    invoke-static {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->N(Landroid/view/View;)I

    .line 96
    .line 97
    .line 98
    move-result v0

    .line 99
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->x()I

    .line 100
    .line 101
    .line 102
    move-result v1

    .line 103
    sub-int/2addr v1, v2

    .line 104
    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->w(I)Landroid/view/View;

    .line 105
    .line 106
    .line 107
    move-result-object v1

    .line 108
    invoke-static {v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->N(Landroid/view/View;)I

    .line 109
    .line 110
    .line 111
    move-result v1

    .line 112
    sub-int/2addr v0, v2

    .line 113
    invoke-virtual {p0, v0, p1}, Lcom/google/android/material/carousel/CarouselLayoutManager;->O0(ILandroidx/recyclerview/widget/RecyclerView$Recycler;)V

    .line 114
    .line 115
    .line 116
    add-int/2addr v1, v2

    .line 117
    invoke-virtual {p0, v1, p1, p2}, Lcom/google/android/material/carousel/CarouselLayoutManager;->N0(ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)V

    .line 118
    .line 119
    .line 120
    return-void
.end method

.method public final S0()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/material/carousel/CarouselLayoutManager;->Z0()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->n:I

    .line 8
    .line 9
    return v0

    .line 10
    :cond_0
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->o:I

    .line 11
    .line 12
    return v0
.end method

.method public final T0(Landroid/view/View;)F
    .locals 1

    .line 1
    new-instance v0, Landroid/graphics/Rect;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->N(Landroid/graphics/Rect;Landroid/view/View;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/google/android/material/carousel/CarouselLayoutManager;->Z0()Z

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    :goto_0
    int-to-float p1, p1

    .line 20
    return p1

    .line 21
    :cond_0
    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    goto :goto_0
.end method

.method public final U0(I)Lcom/google/android/material/carousel/KeylineState;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->x:Ljava/util/HashMap;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->H()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    add-int/lit8 v1, v1, -0x1

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    invoke-static {p1, v2, v1}, Landroidx/core/math/MathUtils;->b(III)I

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    check-cast p1, Lcom/google/android/material/carousel/KeylineState;

    .line 29
    .line 30
    if-eqz p1, :cond_0

    .line 31
    .line 32
    return-object p1

    .line 33
    :cond_0
    iget-object p1, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->u:Lcom/google/android/material/carousel/KeylineStateList;

    .line 34
    .line 35
    iget-object p1, p1, Lcom/google/android/material/carousel/KeylineStateList;->a:Lcom/google/android/material/carousel/KeylineState;

    .line 36
    .line 37
    return-object p1
.end method

.method public final V0(I)I
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->u:Lcom/google/android/material/carousel/KeylineStateList;

    .line 2
    .line 3
    iget v1, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->p:I

    .line 4
    .line 5
    int-to-float v1, v1

    .line 6
    iget v2, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->q:I

    .line 7
    .line 8
    int-to-float v2, v2

    .line 9
    iget v3, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->r:I

    .line 10
    .line 11
    int-to-float v3, v3

    .line 12
    const/4 v4, 0x1

    .line 13
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/material/carousel/KeylineStateList;->b(FFFZ)Lcom/google/android/material/carousel/KeylineState;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {p0, p1, v0}, Lcom/google/android/material/carousel/CarouselLayoutManager;->W0(ILcom/google/android/material/carousel/KeylineState;)I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    iget v1, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->p:I

    .line 22
    .line 23
    sub-int/2addr v0, v1

    .line 24
    iget-object v1, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->x:Ljava/util/HashMap;

    .line 25
    .line 26
    if-eqz v1, :cond_0

    .line 27
    .line 28
    invoke-virtual {p0, p1}, Lcom/google/android/material/carousel/CarouselLayoutManager;->U0(I)Lcom/google/android/material/carousel/KeylineState;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    invoke-virtual {p0, p1, v1}, Lcom/google/android/material/carousel/CarouselLayoutManager;->W0(ILcom/google/android/material/carousel/KeylineState;)I

    .line 33
    .line 34
    .line 35
    :cond_0
    return v0
.end method

.method public final W0(ILcom/google/android/material/carousel/KeylineState;)I
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/google/android/material/carousel/CarouselLayoutManager;->a1()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/high16 v1, 0x40000000    # 2.0f

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/google/android/material/carousel/CarouselLayoutManager;->S0()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    int-to-float v0, v0

    .line 14
    invoke-virtual {p2}, Lcom/google/android/material/carousel/KeylineState;->c()Lcom/google/android/material/carousel/KeylineState$Keyline;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    iget v2, v2, Lcom/google/android/material/carousel/KeylineState$Keyline;->a:F

    .line 19
    .line 20
    sub-float/2addr v0, v2

    .line 21
    int-to-float p1, p1

    .line 22
    iget p2, p2, Lcom/google/android/material/carousel/KeylineState;->a:F

    .line 23
    .line 24
    mul-float/2addr p1, p2

    .line 25
    sub-float/2addr v0, p1

    .line 26
    div-float/2addr p2, v1

    .line 27
    sub-float/2addr v0, p2

    .line 28
    float-to-int p1, v0

    .line 29
    return p1

    .line 30
    :cond_0
    int-to-float p1, p1

    .line 31
    iget v0, p2, Lcom/google/android/material/carousel/KeylineState;->a:F

    .line 32
    .line 33
    mul-float/2addr p1, v0

    .line 34
    invoke-virtual {p2}, Lcom/google/android/material/carousel/KeylineState;->a()Lcom/google/android/material/carousel/KeylineState$Keyline;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    iget v0, v0, Lcom/google/android/material/carousel/KeylineState$Keyline;->a:F

    .line 39
    .line 40
    sub-float/2addr p1, v0

    .line 41
    iget p2, p2, Lcom/google/android/material/carousel/KeylineState;->a:F

    .line 42
    .line 43
    div-float/2addr p2, v1

    .line 44
    add-float/2addr p2, p1

    .line 45
    float-to-int p1, p2

    .line 46
    return p1
.end method

.method public final X(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 5

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->t:Lcom/google/android/material/carousel/MultiBrowseCarouselStrategy;

    .line 6
    .line 7
    iget v2, v1, Lcom/google/android/material/carousel/CarouselStrategy;->a:F

    .line 8
    .line 9
    const/4 v3, 0x0

    .line 10
    cmpl-float v4, v2, v3

    .line 11
    .line 12
    if-lez v4, :cond_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    sget v4, Lcom/google/android/material/R$dimen;->m3_carousel_small_item_size_min:I

    .line 20
    .line 21
    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimension(I)F

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    :goto_0
    iput v2, v1, Lcom/google/android/material/carousel/CarouselStrategy;->a:F

    .line 26
    .line 27
    iget v2, v1, Lcom/google/android/material/carousel/CarouselStrategy;->b:F

    .line 28
    .line 29
    cmpl-float v3, v2, v3

    .line 30
    .line 31
    if-lez v3, :cond_1

    .line 32
    .line 33
    goto :goto_1

    .line 34
    :cond_1
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    sget v2, Lcom/google/android/material/R$dimen;->m3_carousel_small_item_size_max:I

    .line 39
    .line 40
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    .line 41
    .line 42
    .line 43
    move-result v2

    .line 44
    :goto_1
    iput v2, v1, Lcom/google/android/material/carousel/CarouselStrategy;->b:F

    .line 45
    .line 46
    invoke-virtual {p0}, Lcom/google/android/material/carousel/CarouselLayoutManager;->f1()V

    .line 47
    .line 48
    .line 49
    iget-object v0, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->z:Landroid/view/View$OnLayoutChangeListener;

    .line 50
    .line 51
    invoke-virtual {p1, v0}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 52
    .line 53
    .line 54
    return-void
.end method

.method public final X0(ILcom/google/android/material/carousel/KeylineState;)I
    .locals 6

    .line 1
    iget-object v0, p2, Lcom/google/android/material/carousel/KeylineState;->c:Ljava/util/List;

    .line 2
    .line 3
    iget v1, p2, Lcom/google/android/material/carousel/KeylineState;->d:I

    .line 4
    .line 5
    iget v2, p2, Lcom/google/android/material/carousel/KeylineState;->e:I

    .line 6
    .line 7
    add-int/lit8 v2, v2, 0x1

    .line 8
    .line 9
    invoke-interface {v0, v1, v2}, Ljava/util/List;->subList(II)Ljava/util/List;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    const v1, 0x7fffffff

    .line 18
    .line 19
    .line 20
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    if-eqz v2, :cond_2

    .line 25
    .line 26
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    check-cast v2, Lcom/google/android/material/carousel/KeylineState$Keyline;

    .line 31
    .line 32
    int-to-float v3, p1

    .line 33
    iget v4, p2, Lcom/google/android/material/carousel/KeylineState;->a:F

    .line 34
    .line 35
    mul-float/2addr v3, v4

    .line 36
    const/high16 v5, 0x40000000    # 2.0f

    .line 37
    .line 38
    div-float/2addr v4, v5

    .line 39
    add-float/2addr v4, v3

    .line 40
    invoke-virtual {p0}, Lcom/google/android/material/carousel/CarouselLayoutManager;->a1()Z

    .line 41
    .line 42
    .line 43
    move-result v3

    .line 44
    if-eqz v3, :cond_1

    .line 45
    .line 46
    invoke-virtual {p0}, Lcom/google/android/material/carousel/CarouselLayoutManager;->S0()I

    .line 47
    .line 48
    .line 49
    move-result v3

    .line 50
    int-to-float v3, v3

    .line 51
    iget v2, v2, Lcom/google/android/material/carousel/KeylineState$Keyline;->a:F

    .line 52
    .line 53
    sub-float/2addr v3, v2

    .line 54
    sub-float/2addr v3, v4

    .line 55
    float-to-int v2, v3

    .line 56
    goto :goto_1

    .line 57
    :cond_1
    iget v2, v2, Lcom/google/android/material/carousel/KeylineState$Keyline;->a:F

    .line 58
    .line 59
    sub-float/2addr v4, v2

    .line 60
    float-to-int v2, v4

    .line 61
    :goto_1
    iget v3, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->p:I

    .line 62
    .line 63
    sub-int/2addr v2, v3

    .line 64
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    .line 65
    .line 66
    .line 67
    move-result v3

    .line 68
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    .line 69
    .line 70
    .line 71
    move-result v4

    .line 72
    if-le v3, v4, :cond_0

    .line 73
    .line 74
    move v1, v2

    .line 75
    goto :goto_0

    .line 76
    :cond_2
    return v1
.end method

.method public final Y(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->z:Landroid/view/View$OnLayoutChangeListener;

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final Z(Landroid/view/View;ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)Landroid/view/View;
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->x()I

    .line 2
    .line 3
    .line 4
    move-result p4

    .line 5
    if-nez p4, :cond_0

    .line 6
    .line 7
    goto/16 :goto_3

    .line 8
    .line 9
    :cond_0
    iget-object p4, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->y:Lcom/google/android/material/carousel/CarouselOrientationHelper;

    .line 10
    .line 11
    iget p4, p4, Lcom/google/android/material/carousel/CarouselOrientationHelper;->a:I

    .line 12
    .line 13
    const/high16 v0, -0x80000000

    .line 14
    .line 15
    const/4 v1, -0x1

    .line 16
    const/4 v2, 0x1

    .line 17
    if-eq p2, v2, :cond_5

    .line 18
    .line 19
    const/4 v3, 0x2

    .line 20
    if-eq p2, v3, :cond_3

    .line 21
    .line 22
    const/16 v3, 0x11

    .line 23
    .line 24
    if-eq p2, v3, :cond_7

    .line 25
    .line 26
    const/16 v3, 0x21

    .line 27
    .line 28
    if-eq p2, v3, :cond_6

    .line 29
    .line 30
    const/16 v3, 0x42

    .line 31
    .line 32
    if-eq p2, v3, :cond_4

    .line 33
    .line 34
    const/16 v3, 0x82

    .line 35
    .line 36
    if-eq p2, v3, :cond_2

    .line 37
    .line 38
    new-instance p4, Ljava/lang/StringBuilder;

    .line 39
    .line 40
    const-string v3, "Unknown focus request:"

    .line 41
    .line 42
    invoke-direct {p4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p2

    .line 52
    const-string p4, "CarouselLayoutManager"

    .line 53
    .line 54
    invoke-static {p4, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    .line 56
    .line 57
    :cond_1
    move p2, v0

    .line 58
    goto :goto_2

    .line 59
    :cond_2
    if-ne p4, v2, :cond_1

    .line 60
    .line 61
    :cond_3
    :goto_0
    move p2, v2

    .line 62
    goto :goto_2

    .line 63
    :cond_4
    if-nez p4, :cond_1

    .line 64
    .line 65
    invoke-virtual {p0}, Lcom/google/android/material/carousel/CarouselLayoutManager;->a1()Z

    .line 66
    .line 67
    .line 68
    move-result p2

    .line 69
    if-eqz p2, :cond_3

    .line 70
    .line 71
    :cond_5
    :goto_1
    move p2, v1

    .line 72
    goto :goto_2

    .line 73
    :cond_6
    if-ne p4, v2, :cond_1

    .line 74
    .line 75
    goto :goto_1

    .line 76
    :cond_7
    if-nez p4, :cond_1

    .line 77
    .line 78
    invoke-virtual {p0}, Lcom/google/android/material/carousel/CarouselLayoutManager;->a1()Z

    .line 79
    .line 80
    .line 81
    move-result p2

    .line 82
    if-eqz p2, :cond_5

    .line 83
    .line 84
    goto :goto_0

    .line 85
    :goto_2
    if-ne p2, v0, :cond_8

    .line 86
    .line 87
    goto :goto_3

    .line 88
    :cond_8
    const/4 p4, 0x0

    .line 89
    if-ne p2, v1, :cond_b

    .line 90
    .line 91
    invoke-static {p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->N(Landroid/view/View;)I

    .line 92
    .line 93
    .line 94
    move-result p1

    .line 95
    if-nez p1, :cond_9

    .line 96
    .line 97
    goto :goto_3

    .line 98
    :cond_9
    invoke-virtual {p0, p4}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->w(I)Landroid/view/View;

    .line 99
    .line 100
    .line 101
    move-result-object p1

    .line 102
    invoke-static {p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->N(Landroid/view/View;)I

    .line 103
    .line 104
    .line 105
    move-result p1

    .line 106
    sub-int/2addr p1, v2

    .line 107
    invoke-virtual {p0, p3, p1, p4}, Lcom/google/android/material/carousel/CarouselLayoutManager;->M0(Landroidx/recyclerview/widget/RecyclerView$Recycler;II)V

    .line 108
    .line 109
    .line 110
    invoke-virtual {p0}, Lcom/google/android/material/carousel/CarouselLayoutManager;->a1()Z

    .line 111
    .line 112
    .line 113
    move-result p1

    .line 114
    if-eqz p1, :cond_a

    .line 115
    .line 116
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->x()I

    .line 117
    .line 118
    .line 119
    move-result p1

    .line 120
    add-int/lit8 p4, p1, -0x1

    .line 121
    .line 122
    :cond_a
    invoke-virtual {p0, p4}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->w(I)Landroid/view/View;

    .line 123
    .line 124
    .line 125
    move-result-object p1

    .line 126
    return-object p1

    .line 127
    :cond_b
    invoke-static {p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->N(Landroid/view/View;)I

    .line 128
    .line 129
    .line 130
    move-result p1

    .line 131
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->H()I

    .line 132
    .line 133
    .line 134
    move-result p2

    .line 135
    sub-int/2addr p2, v2

    .line 136
    if-ne p1, p2, :cond_c

    .line 137
    .line 138
    :goto_3
    const/4 p1, 0x0

    .line 139
    return-object p1

    .line 140
    :cond_c
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->x()I

    .line 141
    .line 142
    .line 143
    move-result p1

    .line 144
    sub-int/2addr p1, v2

    .line 145
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->w(I)Landroid/view/View;

    .line 146
    .line 147
    .line 148
    move-result-object p1

    .line 149
    invoke-static {p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->N(Landroid/view/View;)I

    .line 150
    .line 151
    .line 152
    move-result p1

    .line 153
    add-int/2addr p1, v2

    .line 154
    invoke-virtual {p0, p3, p1, v1}, Lcom/google/android/material/carousel/CarouselLayoutManager;->M0(Landroidx/recyclerview/widget/RecyclerView$Recycler;II)V

    .line 155
    .line 156
    .line 157
    invoke-virtual {p0}, Lcom/google/android/material/carousel/CarouselLayoutManager;->a1()Z

    .line 158
    .line 159
    .line 160
    move-result p1

    .line 161
    if-eqz p1, :cond_d

    .line 162
    .line 163
    goto :goto_4

    .line 164
    :cond_d
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->x()I

    .line 165
    .line 166
    .line 167
    move-result p1

    .line 168
    add-int/lit8 p4, p1, -0x1

    .line 169
    .line 170
    :goto_4
    invoke-virtual {p0, p4}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->w(I)Landroid/view/View;

    .line 171
    .line 172
    .line 173
    move-result-object p1

    .line 174
    return-object p1
.end method

.method public final Z0()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->y:Lcom/google/android/material/carousel/CarouselOrientationHelper;

    .line 2
    .line 3
    iget v0, v0, Lcom/google/android/material/carousel/CarouselOrientationHelper;->a:I

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    return v0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    return v0
.end method

.method public final a(I)Landroid/graphics/PointF;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->u:Lcom/google/android/material/carousel/KeylineStateList;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    return-object p1

    .line 7
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/android/material/carousel/CarouselLayoutManager;->U0(I)Lcom/google/android/material/carousel/KeylineState;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {p0, p1, v0}, Lcom/google/android/material/carousel/CarouselLayoutManager;->W0(ILcom/google/android/material/carousel/KeylineState;)I

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    iget v0, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->p:I

    .line 16
    .line 17
    sub-int/2addr p1, v0

    .line 18
    invoke-virtual {p0}, Lcom/google/android/material/carousel/CarouselLayoutManager;->Z0()Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    const/4 v1, 0x0

    .line 23
    if-eqz v0, :cond_1

    .line 24
    .line 25
    new-instance v0, Landroid/graphics/PointF;

    .line 26
    .line 27
    int-to-float p1, p1

    .line 28
    invoke-direct {v0, p1, v1}, Landroid/graphics/PointF;-><init>(FF)V

    .line 29
    .line 30
    .line 31
    return-object v0

    .line 32
    :cond_1
    new-instance v0, Landroid/graphics/PointF;

    .line 33
    .line 34
    int-to-float p1, p1

    .line 35
    invoke-direct {v0, v1, p1}, Landroid/graphics/PointF;-><init>(FF)V

    .line 36
    .line 37
    .line 38
    return-object v0
.end method

.method public final a0(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->a0(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->x()I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-lez v0, :cond_0

    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->w(I)Landroid/view/View;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-static {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->N(Landroid/view/View;)I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityRecord;->setFromIndex(I)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->x()I

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    add-int/lit8 v0, v0, -0x1

    .line 27
    .line 28
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->w(I)Landroid/view/View;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-static {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->N(Landroid/view/View;)I

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityRecord;->setToIndex(I)V

    .line 37
    .line 38
    .line 39
    :cond_0
    return-void
.end method

.method public final a1()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/material/carousel/CarouselLayoutManager;->Z0()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->I()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const/4 v1, 0x1

    .line 12
    if-ne v0, v1, :cond_0

    .line 13
    .line 14
    return v1

    .line 15
    :cond_0
    const/4 v0, 0x0

    .line 16
    return v0
.end method

.method public final b1(FLcom/google/android/material/carousel/CarouselLayoutManager$KeylineRange;)Z
    .locals 3

    .line 1
    iget-object v0, p2, Lcom/google/android/material/carousel/CarouselLayoutManager$KeylineRange;->a:Lcom/google/android/material/carousel/KeylineState$Keyline;

    .line 2
    .line 3
    iget v1, v0, Lcom/google/android/material/carousel/KeylineState$Keyline;->d:F

    .line 4
    .line 5
    iget-object p2, p2, Lcom/google/android/material/carousel/CarouselLayoutManager$KeylineRange;->b:Lcom/google/android/material/carousel/KeylineState$Keyline;

    .line 6
    .line 7
    iget v2, p2, Lcom/google/android/material/carousel/KeylineState$Keyline;->d:F

    .line 8
    .line 9
    iget v0, v0, Lcom/google/android/material/carousel/KeylineState$Keyline;->b:F

    .line 10
    .line 11
    iget p2, p2, Lcom/google/android/material/carousel/KeylineState$Keyline;->b:F

    .line 12
    .line 13
    invoke-static {v1, v2, v0, p2, p1}, Lcom/google/android/material/animation/AnimationUtils;->b(FFFFF)F

    .line 14
    .line 15
    .line 16
    move-result p2

    .line 17
    const/high16 v0, 0x40000000    # 2.0f

    .line 18
    .line 19
    div-float/2addr p2, v0

    .line 20
    invoke-virtual {p0}, Lcom/google/android/material/carousel/CarouselLayoutManager;->a1()Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-eqz v0, :cond_0

    .line 25
    .line 26
    add-float/2addr p1, p2

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    sub-float/2addr p1, p2

    .line 29
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/material/carousel/CarouselLayoutManager;->a1()Z

    .line 30
    .line 31
    .line 32
    move-result p2

    .line 33
    if-eqz p2, :cond_1

    .line 34
    .line 35
    const/4 p2, 0x0

    .line 36
    cmpg-float p1, p1, p2

    .line 37
    .line 38
    if-gez p1, :cond_2

    .line 39
    .line 40
    goto :goto_1

    .line 41
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/material/carousel/CarouselLayoutManager;->S0()I

    .line 42
    .line 43
    .line 44
    move-result p2

    .line 45
    int-to-float p2, p2

    .line 46
    cmpl-float p1, p1, p2

    .line 47
    .line 48
    if-lez p1, :cond_2

    .line 49
    .line 50
    :goto_1
    const/4 p1, 0x1

    .line 51
    return p1

    .line 52
    :cond_2
    const/4 p1, 0x0

    .line 53
    return p1
.end method

.method public final c1(FLcom/google/android/material/carousel/CarouselLayoutManager$KeylineRange;)Z
    .locals 3

    .line 1
    iget-object v0, p2, Lcom/google/android/material/carousel/CarouselLayoutManager$KeylineRange;->a:Lcom/google/android/material/carousel/KeylineState$Keyline;

    .line 2
    .line 3
    iget v1, v0, Lcom/google/android/material/carousel/KeylineState$Keyline;->d:F

    .line 4
    .line 5
    iget-object p2, p2, Lcom/google/android/material/carousel/CarouselLayoutManager$KeylineRange;->b:Lcom/google/android/material/carousel/KeylineState$Keyline;

    .line 6
    .line 7
    iget v2, p2, Lcom/google/android/material/carousel/KeylineState$Keyline;->d:F

    .line 8
    .line 9
    iget v0, v0, Lcom/google/android/material/carousel/KeylineState$Keyline;->b:F

    .line 10
    .line 11
    iget p2, p2, Lcom/google/android/material/carousel/KeylineState$Keyline;->b:F

    .line 12
    .line 13
    invoke-static {v1, v2, v0, p2, p1}, Lcom/google/android/material/animation/AnimationUtils;->b(FFFFF)F

    .line 14
    .line 15
    .line 16
    move-result p2

    .line 17
    const/high16 v0, 0x40000000    # 2.0f

    .line 18
    .line 19
    div-float/2addr p2, v0

    .line 20
    invoke-virtual {p0, p1, p2}, Lcom/google/android/material/carousel/CarouselLayoutManager;->L0(FF)F

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    invoke-virtual {p0}, Lcom/google/android/material/carousel/CarouselLayoutManager;->a1()Z

    .line 25
    .line 26
    .line 27
    move-result p2

    .line 28
    if-eqz p2, :cond_0

    .line 29
    .line 30
    invoke-virtual {p0}, Lcom/google/android/material/carousel/CarouselLayoutManager;->S0()I

    .line 31
    .line 32
    .line 33
    move-result p2

    .line 34
    int-to-float p2, p2

    .line 35
    cmpl-float p1, p1, p2

    .line 36
    .line 37
    if-lez p1, :cond_1

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_0
    const/4 p2, 0x0

    .line 41
    cmpg-float p1, p1, p2

    .line 42
    .line 43
    if-gez p1, :cond_1

    .line 44
    .line 45
    :goto_0
    const/4 p1, 0x1

    .line 46
    return p1

    .line 47
    :cond_1
    const/4 p1, 0x0

    .line 48
    return p1
.end method

.method public final d1(Landroid/view/View;)V
    .locals 9

    .line 1
    instance-of v0, p1, Lcom/google/android/material/carousel/Maskable;

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    .line 10
    .line 11
    new-instance v1, Landroid/graphics/Rect;

    .line 12
    .line 13
    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0, v1, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->e(Landroid/graphics/Rect;Landroid/view/View;)V

    .line 17
    .line 18
    .line 19
    iget v2, v1, Landroid/graphics/Rect;->left:I

    .line 20
    .line 21
    iget v3, v1, Landroid/graphics/Rect;->right:I

    .line 22
    .line 23
    add-int/2addr v2, v3

    .line 24
    iget v3, v1, Landroid/graphics/Rect;->top:I

    .line 25
    .line 26
    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    .line 27
    .line 28
    add-int/2addr v3, v1

    .line 29
    iget-object v1, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->u:Lcom/google/android/material/carousel/KeylineStateList;

    .line 30
    .line 31
    if-eqz v1, :cond_0

    .line 32
    .line 33
    iget-object v4, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->y:Lcom/google/android/material/carousel/CarouselOrientationHelper;

    .line 34
    .line 35
    iget v4, v4, Lcom/google/android/material/carousel/CarouselOrientationHelper;->a:I

    .line 36
    .line 37
    if-nez v4, :cond_0

    .line 38
    .line 39
    iget-object v4, v1, Lcom/google/android/material/carousel/KeylineStateList;->a:Lcom/google/android/material/carousel/KeylineState;

    .line 40
    .line 41
    iget v4, v4, Lcom/google/android/material/carousel/KeylineState;->a:F

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_0
    iget v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 45
    .line 46
    int-to-float v4, v4

    .line 47
    :goto_0
    if-eqz v1, :cond_1

    .line 48
    .line 49
    iget-object v5, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->y:Lcom/google/android/material/carousel/CarouselOrientationHelper;

    .line 50
    .line 51
    iget v5, v5, Lcom/google/android/material/carousel/CarouselOrientationHelper;->a:I

    .line 52
    .line 53
    const/4 v6, 0x1

    .line 54
    if-ne v5, v6, :cond_1

    .line 55
    .line 56
    iget-object v1, v1, Lcom/google/android/material/carousel/KeylineStateList;->a:Lcom/google/android/material/carousel/KeylineState;

    .line 57
    .line 58
    iget v1, v1, Lcom/google/android/material/carousel/KeylineState;->a:F

    .line 59
    .line 60
    goto :goto_1

    .line 61
    :cond_1
    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 62
    .line 63
    int-to-float v1, v1

    .line 64
    :goto_1
    iget v5, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->n:I

    .line 65
    .line 66
    iget v6, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->l:I

    .line 67
    .line 68
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->K()I

    .line 69
    .line 70
    .line 71
    move-result v7

    .line 72
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->L()I

    .line 73
    .line 74
    .line 75
    move-result v8

    .line 76
    add-int/2addr v8, v7

    .line 77
    iget v7, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 78
    .line 79
    add-int/2addr v8, v7

    .line 80
    iget v7, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 81
    .line 82
    add-int/2addr v8, v7

    .line 83
    add-int/2addr v8, v2

    .line 84
    float-to-int v2, v4

    .line 85
    invoke-virtual {p0}, Lcom/google/android/material/carousel/CarouselLayoutManager;->Z0()Z

    .line 86
    .line 87
    .line 88
    move-result v4

    .line 89
    invoke-static {v4, v5, v6, v8, v2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->y(ZIIII)I

    .line 90
    .line 91
    .line 92
    move-result v2

    .line 93
    iget v4, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->o:I

    .line 94
    .line 95
    iget v5, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->m:I

    .line 96
    .line 97
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->M()I

    .line 98
    .line 99
    .line 100
    move-result v6

    .line 101
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->J()I

    .line 102
    .line 103
    .line 104
    move-result v7

    .line 105
    add-int/2addr v7, v6

    .line 106
    iget v6, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 107
    .line 108
    add-int/2addr v7, v6

    .line 109
    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 110
    .line 111
    add-int/2addr v7, v0

    .line 112
    add-int/2addr v7, v3

    .line 113
    float-to-int v0, v1

    .line 114
    invoke-virtual {p0}, Lcom/google/android/material/carousel/CarouselLayoutManager;->g()Z

    .line 115
    .line 116
    .line 117
    move-result v1

    .line 118
    invoke-static {v1, v4, v5, v7, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->y(ZIIII)I

    .line 119
    .line 120
    .line 121
    move-result v0

    .line 122
    invoke-virtual {p1, v2, v0}, Landroid/view/View;->measure(II)V

    .line 123
    .line 124
    .line 125
    return-void

    .line 126
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 127
    .line 128
    const-string v0, "All children of a RecyclerView using CarouselLayoutManager must use MaskableFrameLayout as their root ViewGroup."

    .line 129
    .line 130
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 131
    .line 132
    .line 133
    throw p1
.end method

.method public final e0(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/google/android/material/carousel/CarouselLayoutManager;->k1()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final e1(Landroidx/recyclerview/widget/RecyclerView$Recycler;)V
    .locals 32

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    move-object/from16 v2, p1

    .line 5
    .line 6
    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/RecyclerView$Recycler;->d(I)Landroid/view/View;

    .line 7
    .line 8
    .line 9
    move-result-object v2

    .line 10
    invoke-virtual {v0, v2}, Lcom/google/android/material/carousel/CarouselLayoutManager;->d1(Landroid/view/View;)V

    .line 11
    .line 12
    .line 13
    iget-object v3, v0, Lcom/google/android/material/carousel/CarouselLayoutManager;->t:Lcom/google/android/material/carousel/MultiBrowseCarouselStrategy;

    .line 14
    .line 15
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    iget v4, v0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->o:I

    .line 19
    .line 20
    invoke-virtual {v0}, Lcom/google/android/material/carousel/CarouselLayoutManager;->Z0()Z

    .line 21
    .line 22
    .line 23
    move-result v5

    .line 24
    if-eqz v5, :cond_0

    .line 25
    .line 26
    iget v4, v0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->n:I

    .line 27
    .line 28
    :cond_0
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 29
    .line 30
    .line 31
    move-result-object v5

    .line 32
    check-cast v5, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    .line 33
    .line 34
    iget v6, v5, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 35
    .line 36
    iget v7, v5, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 37
    .line 38
    add-int/2addr v6, v7

    .line 39
    int-to-float v6, v6

    .line 40
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    .line 41
    .line 42
    .line 43
    move-result v7

    .line 44
    int-to-float v7, v7

    .line 45
    invoke-virtual {v0}, Lcom/google/android/material/carousel/CarouselLayoutManager;->Z0()Z

    .line 46
    .line 47
    .line 48
    move-result v8

    .line 49
    if-eqz v8, :cond_1

    .line 50
    .line 51
    iget v6, v5, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 52
    .line 53
    iget v5, v5, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 54
    .line 55
    add-int/2addr v6, v5

    .line 56
    int-to-float v6, v6

    .line 57
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    .line 58
    .line 59
    .line 60
    move-result v5

    .line 61
    int-to-float v7, v5

    .line 62
    :cond_1
    iget v5, v3, Lcom/google/android/material/carousel/CarouselStrategy;->a:F

    .line 63
    .line 64
    add-float v10, v5, v6

    .line 65
    .line 66
    iget v5, v3, Lcom/google/android/material/carousel/CarouselStrategy;->b:F

    .line 67
    .line 68
    add-float/2addr v5, v6

    .line 69
    invoke-static {v5, v10}, Ljava/lang/Math;->max(FF)F

    .line 70
    .line 71
    .line 72
    move-result v11

    .line 73
    add-float v5, v7, v6

    .line 74
    .line 75
    int-to-float v8, v4

    .line 76
    invoke-static {v5, v8}, Ljava/lang/Math;->min(FF)F

    .line 77
    .line 78
    .line 79
    move-result v15

    .line 80
    const/high16 v5, 0x40400000    # 3.0f

    .line 81
    .line 82
    div-float/2addr v7, v5

    .line 83
    add-float/2addr v7, v6

    .line 84
    add-float v5, v10, v6

    .line 85
    .line 86
    add-float v9, v11, v6

    .line 87
    .line 88
    invoke-static {v7, v5, v9}, Landroidx/core/math/MathUtils;->a(FFF)F

    .line 89
    .line 90
    .line 91
    move-result v9

    .line 92
    add-float v5, v15, v9

    .line 93
    .line 94
    const/high16 v7, 0x40000000    # 2.0f

    .line 95
    .line 96
    div-float v13, v5, v7

    .line 97
    .line 98
    mul-float v5, v10, v7

    .line 99
    .line 100
    cmpg-float v12, v8, v5

    .line 101
    .line 102
    const/4 v14, 0x1

    .line 103
    if-gtz v12, :cond_2

    .line 104
    .line 105
    new-array v12, v14, [I

    .line 106
    .line 107
    aput v1, v12, v1

    .line 108
    .line 109
    :goto_0
    move/from16 p1, v7

    .line 110
    .line 111
    goto :goto_1

    .line 112
    :cond_2
    sget-object v12, Lcom/google/android/material/carousel/MultiBrowseCarouselStrategy;->d:[I

    .line 113
    .line 114
    goto :goto_0

    .line 115
    :goto_1
    iget v7, v0, Lcom/google/android/material/carousel/CarouselLayoutManager;->C:I

    .line 116
    .line 117
    sget-object v16, Lcom/google/android/material/carousel/MultiBrowseCarouselStrategy;->e:[I

    .line 118
    .line 119
    if-ne v7, v14, :cond_3

    .line 120
    .line 121
    invoke-static {v12}, Lcom/google/android/material/carousel/CarouselStrategy;->a([I)[I

    .line 122
    .line 123
    .line 124
    move-result-object v12

    .line 125
    invoke-static/range {v16 .. v16}, Lcom/google/android/material/carousel/CarouselStrategy;->a([I)[I

    .line 126
    .line 127
    .line 128
    move-result-object v16

    .line 129
    :cond_3
    invoke-static/range {v16 .. v16}, Lcom/google/android/material/carousel/CarouselStrategyHelper;->c([I)I

    .line 130
    .line 131
    .line 132
    move-result v7

    .line 133
    int-to-float v7, v7

    .line 134
    mul-float/2addr v7, v13

    .line 135
    sub-float v7, v8, v7

    .line 136
    .line 137
    move/from16 v17, v14

    .line 138
    .line 139
    invoke-static {v12}, Lcom/google/android/material/carousel/CarouselStrategyHelper;->c([I)I

    .line 140
    .line 141
    .line 142
    move-result v14

    .line 143
    int-to-float v14, v14

    .line 144
    mul-float/2addr v14, v11

    .line 145
    sub-float/2addr v7, v14

    .line 146
    div-float/2addr v7, v15

    .line 147
    move-object/from16 v19, v2

    .line 148
    .line 149
    float-to-double v1, v7

    .line 150
    invoke-static {v1, v2}, Ljava/lang/Math;->floor(D)D

    .line 151
    .line 152
    .line 153
    move-result-wide v1

    .line 154
    move v14, v8

    .line 155
    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    .line 156
    .line 157
    invoke-static {v7, v8, v1, v2}, Ljava/lang/Math;->max(DD)D

    .line 158
    .line 159
    .line 160
    move-result-wide v1

    .line 161
    double-to-int v1, v1

    .line 162
    div-float v8, v14, v15

    .line 163
    .line 164
    float-to-double v7, v8

    .line 165
    invoke-static {v7, v8}, Ljava/lang/Math;->ceil(D)D

    .line 166
    .line 167
    .line 168
    move-result-wide v7

    .line 169
    double-to-int v2, v7

    .line 170
    sub-int v1, v2, v1

    .line 171
    .line 172
    add-int/lit8 v1, v1, 0x1

    .line 173
    .line 174
    new-array v7, v1, [I

    .line 175
    .line 176
    const/4 v8, 0x0

    .line 177
    :goto_2
    if-ge v8, v1, :cond_4

    .line 178
    .line 179
    sub-int v20, v2, v8

    .line 180
    .line 181
    aput v20, v7, v8

    .line 182
    .line 183
    add-int/lit8 v8, v8, 0x1

    .line 184
    .line 185
    goto :goto_2

    .line 186
    :cond_4
    move v8, v14

    .line 187
    move-object/from16 v14, v16

    .line 188
    .line 189
    move-object/from16 v16, v7

    .line 190
    .line 191
    move/from16 v7, v17

    .line 192
    .line 193
    invoke-static/range {v8 .. v16}, Lcom/google/android/material/carousel/Arrangement;->a(FFFF[IF[IF[I)Lcom/google/android/material/carousel/Arrangement;

    .line 194
    .line 195
    .line 196
    move-result-object v1

    .line 197
    iget v2, v1, Lcom/google/android/material/carousel/Arrangement;->c:I

    .line 198
    .line 199
    iget v12, v1, Lcom/google/android/material/carousel/Arrangement;->g:I

    .line 200
    .line 201
    iget v14, v1, Lcom/google/android/material/carousel/Arrangement;->d:I

    .line 202
    .line 203
    add-int/2addr v2, v14

    .line 204
    add-int/2addr v2, v12

    .line 205
    iput v2, v3, Lcom/google/android/material/carousel/MultiBrowseCarouselStrategy;->c:I

    .line 206
    .line 207
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->H()I

    .line 208
    .line 209
    .line 210
    move-result v2

    .line 211
    iget v3, v1, Lcom/google/android/material/carousel/Arrangement;->c:I

    .line 212
    .line 213
    iget v14, v1, Lcom/google/android/material/carousel/Arrangement;->d:I

    .line 214
    .line 215
    add-int v16, v3, v14

    .line 216
    .line 217
    add-int v16, v16, v12

    .line 218
    .line 219
    sub-int v16, v16, v2

    .line 220
    .line 221
    if-lez v16, :cond_6

    .line 222
    .line 223
    if-gtz v3, :cond_5

    .line 224
    .line 225
    if-le v14, v7, :cond_6

    .line 226
    .line 227
    :cond_5
    move v14, v7

    .line 228
    goto :goto_3

    .line 229
    :cond_6
    const/4 v14, 0x0

    .line 230
    :goto_3
    if-lez v16, :cond_9

    .line 231
    .line 232
    iget v2, v1, Lcom/google/android/material/carousel/Arrangement;->c:I

    .line 233
    .line 234
    if-lez v2, :cond_7

    .line 235
    .line 236
    add-int/lit8 v2, v2, -0x1

    .line 237
    .line 238
    iput v2, v1, Lcom/google/android/material/carousel/Arrangement;->c:I

    .line 239
    .line 240
    goto :goto_4

    .line 241
    :cond_7
    iget v2, v1, Lcom/google/android/material/carousel/Arrangement;->d:I

    .line 242
    .line 243
    if-le v2, v7, :cond_8

    .line 244
    .line 245
    add-int/lit8 v2, v2, -0x1

    .line 246
    .line 247
    iput v2, v1, Lcom/google/android/material/carousel/Arrangement;->d:I

    .line 248
    .line 249
    :cond_8
    :goto_4
    add-int/lit8 v16, v16, -0x1

    .line 250
    .line 251
    goto :goto_3

    .line 252
    :cond_9
    iget v2, v1, Lcom/google/android/material/carousel/Arrangement;->d:I

    .line 253
    .line 254
    if-nez v2, :cond_a

    .line 255
    .line 256
    iget v3, v1, Lcom/google/android/material/carousel/Arrangement;->c:I

    .line 257
    .line 258
    if-nez v3, :cond_a

    .line 259
    .line 260
    cmpl-float v3, v8, v5

    .line 261
    .line 262
    if-lez v3, :cond_a

    .line 263
    .line 264
    iput v7, v1, Lcom/google/android/material/carousel/Arrangement;->c:I

    .line 265
    .line 266
    move v14, v7

    .line 267
    :cond_a
    if-eqz v14, :cond_b

    .line 268
    .line 269
    iget v1, v1, Lcom/google/android/material/carousel/Arrangement;->c:I

    .line 270
    .line 271
    filled-new-array {v1}, [I

    .line 272
    .line 273
    .line 274
    move-result-object v1

    .line 275
    filled-new-array {v2}, [I

    .line 276
    .line 277
    .line 278
    move-result-object v14

    .line 279
    filled-new-array {v12}, [I

    .line 280
    .line 281
    .line 282
    move-result-object v16

    .line 283
    move-object v12, v1

    .line 284
    invoke-static/range {v8 .. v16}, Lcom/google/android/material/carousel/Arrangement;->a(FFFF[IF[IF[I)Lcom/google/android/material/carousel/Arrangement;

    .line 285
    .line 286
    .line 287
    move-result-object v1

    .line 288
    :cond_b
    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 289
    .line 290
    .line 291
    move-result-object v2

    .line 292
    iget v3, v0, Lcom/google/android/material/carousel/CarouselLayoutManager;->C:I

    .line 293
    .line 294
    const/4 v5, 0x1

    .line 295
    if-ne v3, v5, :cond_10

    .line 296
    .line 297
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 298
    .line 299
    .line 300
    move-result-object v2

    .line 301
    sget v3, Lcom/google/android/material/R$dimen;->m3_carousel_gone_size:I

    .line 302
    .line 303
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    .line 304
    .line 305
    .line 306
    move-result v2

    .line 307
    add-float/2addr v2, v6

    .line 308
    iget v3, v1, Lcom/google/android/material/carousel/Arrangement;->f:F

    .line 309
    .line 310
    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    .line 311
    .line 312
    .line 313
    move-result v11

    .line 314
    const/high16 v2, 0x40000000    # 2.0f

    .line 315
    .line 316
    div-float v3, v11, v2

    .line 317
    .line 318
    const/4 v5, 0x0

    .line 319
    sub-float v9, v5, v3

    .line 320
    .line 321
    iget v8, v1, Lcom/google/android/material/carousel/Arrangement;->b:F

    .line 322
    .line 323
    iget v10, v1, Lcom/google/android/material/carousel/Arrangement;->c:I

    .line 324
    .line 325
    invoke-static {v5, v8, v10}, Lcom/google/android/material/carousel/CarouselStrategyHelper;->b(FFI)F

    .line 326
    .line 327
    .line 328
    move-result v14

    .line 329
    iget v8, v1, Lcom/google/android/material/carousel/Arrangement;->b:F

    .line 330
    .line 331
    iget v10, v1, Lcom/google/android/material/carousel/Arrangement;->c:I

    .line 332
    .line 333
    int-to-float v10, v10

    .line 334
    div-float/2addr v10, v2

    .line 335
    float-to-double v12, v10

    .line 336
    invoke-static {v12, v13}, Ljava/lang/Math;->floor(D)D

    .line 337
    .line 338
    .line 339
    move-result-wide v12

    .line 340
    double-to-int v10, v12

    .line 341
    invoke-static {v14, v8, v10}, Lcom/google/android/material/carousel/CarouselStrategyHelper;->a(FFI)F

    .line 342
    .line 343
    .line 344
    move-result v8

    .line 345
    iget v10, v1, Lcom/google/android/material/carousel/Arrangement;->b:F

    .line 346
    .line 347
    iget v12, v1, Lcom/google/android/material/carousel/Arrangement;->c:I

    .line 348
    .line 349
    invoke-static {v5, v8, v10, v12}, Lcom/google/android/material/carousel/CarouselStrategyHelper;->d(FFFI)F

    .line 350
    .line 351
    .line 352
    move-result v5

    .line 353
    iget v8, v1, Lcom/google/android/material/carousel/Arrangement;->e:F

    .line 354
    .line 355
    iget v10, v1, Lcom/google/android/material/carousel/Arrangement;->d:I

    .line 356
    .line 357
    invoke-static {v5, v8, v10}, Lcom/google/android/material/carousel/CarouselStrategyHelper;->b(FFI)F

    .line 358
    .line 359
    .line 360
    move-result v15

    .line 361
    iget v8, v1, Lcom/google/android/material/carousel/Arrangement;->e:F

    .line 362
    .line 363
    iget v10, v1, Lcom/google/android/material/carousel/Arrangement;->d:I

    .line 364
    .line 365
    int-to-float v10, v10

    .line 366
    div-float/2addr v10, v2

    .line 367
    float-to-double v12, v10

    .line 368
    invoke-static {v12, v13}, Ljava/lang/Math;->floor(D)D

    .line 369
    .line 370
    .line 371
    move-result-wide v12

    .line 372
    double-to-int v10, v12

    .line 373
    invoke-static {v15, v8, v10}, Lcom/google/android/material/carousel/CarouselStrategyHelper;->a(FFI)F

    .line 374
    .line 375
    .line 376
    move-result v8

    .line 377
    iget v10, v1, Lcom/google/android/material/carousel/Arrangement;->e:F

    .line 378
    .line 379
    iget v12, v1, Lcom/google/android/material/carousel/Arrangement;->d:I

    .line 380
    .line 381
    invoke-static {v5, v8, v10, v12}, Lcom/google/android/material/carousel/CarouselStrategyHelper;->d(FFFI)F

    .line 382
    .line 383
    .line 384
    move-result v5

    .line 385
    iget v8, v1, Lcom/google/android/material/carousel/Arrangement;->f:F

    .line 386
    .line 387
    iget v10, v1, Lcom/google/android/material/carousel/Arrangement;->g:I

    .line 388
    .line 389
    invoke-static {v5, v8, v10}, Lcom/google/android/material/carousel/CarouselStrategyHelper;->b(FFI)F

    .line 390
    .line 391
    .line 392
    move-result v8

    .line 393
    iget v12, v1, Lcom/google/android/material/carousel/Arrangement;->f:F

    .line 394
    .line 395
    invoke-static {v8, v12, v10}, Lcom/google/android/material/carousel/CarouselStrategyHelper;->a(FFI)F

    .line 396
    .line 397
    .line 398
    move-result v12

    .line 399
    iget v13, v1, Lcom/google/android/material/carousel/Arrangement;->f:F

    .line 400
    .line 401
    invoke-static {v5, v12, v13, v10}, Lcom/google/android/material/carousel/CarouselStrategyHelper;->d(FFFI)F

    .line 402
    .line 403
    .line 404
    move-result v5

    .line 405
    iget v10, v1, Lcom/google/android/material/carousel/Arrangement;->e:F

    .line 406
    .line 407
    iget v12, v1, Lcom/google/android/material/carousel/Arrangement;->d:I

    .line 408
    .line 409
    invoke-static {v5, v10, v12}, Lcom/google/android/material/carousel/CarouselStrategyHelper;->b(FFI)F

    .line 410
    .line 411
    .line 412
    move-result v10

    .line 413
    iget v12, v1, Lcom/google/android/material/carousel/Arrangement;->e:F

    .line 414
    .line 415
    iget v13, v1, Lcom/google/android/material/carousel/Arrangement;->d:I

    .line 416
    .line 417
    int-to-float v13, v13

    .line 418
    div-float/2addr v13, v2

    .line 419
    move/from16 v25, v2

    .line 420
    .line 421
    move/from16 v16, v3

    .line 422
    .line 423
    float-to-double v2, v13

    .line 424
    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    .line 425
    .line 426
    .line 427
    move-result-wide v2

    .line 428
    double-to-int v2, v2

    .line 429
    invoke-static {v10, v12, v2}, Lcom/google/android/material/carousel/CarouselStrategyHelper;->a(FFI)F

    .line 430
    .line 431
    .line 432
    move-result v2

    .line 433
    iget v3, v1, Lcom/google/android/material/carousel/Arrangement;->e:F

    .line 434
    .line 435
    iget v12, v1, Lcom/google/android/material/carousel/Arrangement;->d:I

    .line 436
    .line 437
    invoke-static {v5, v2, v3, v12}, Lcom/google/android/material/carousel/CarouselStrategyHelper;->d(FFFI)F

    .line 438
    .line 439
    .line 440
    move-result v2

    .line 441
    iget v3, v1, Lcom/google/android/material/carousel/Arrangement;->b:F

    .line 442
    .line 443
    iget v5, v1, Lcom/google/android/material/carousel/Arrangement;->c:I

    .line 444
    .line 445
    invoke-static {v2, v3, v5}, Lcom/google/android/material/carousel/CarouselStrategyHelper;->b(FFI)F

    .line 446
    .line 447
    .line 448
    move-result v2

    .line 449
    int-to-float v3, v4

    .line 450
    add-float v3, v3, v16

    .line 451
    .line 452
    iget v5, v1, Lcom/google/android/material/carousel/Arrangement;->f:F

    .line 453
    .line 454
    invoke-static {v11, v5, v6}, Lcom/google/android/material/carousel/CarouselStrategy;->b(FFF)F

    .line 455
    .line 456
    .line 457
    move-result v5

    .line 458
    iget v12, v1, Lcom/google/android/material/carousel/Arrangement;->b:F

    .line 459
    .line 460
    iget v13, v1, Lcom/google/android/material/carousel/Arrangement;->f:F

    .line 461
    .line 462
    invoke-static {v12, v13, v6}, Lcom/google/android/material/carousel/CarouselStrategy;->b(FFF)F

    .line 463
    .line 464
    .line 465
    move-result v21

    .line 466
    iget v12, v1, Lcom/google/android/material/carousel/Arrangement;->e:F

    .line 467
    .line 468
    iget v13, v1, Lcom/google/android/material/carousel/Arrangement;->f:F

    .line 469
    .line 470
    invoke-static {v12, v13, v6}, Lcom/google/android/material/carousel/CarouselStrategy;->b(FFF)F

    .line 471
    .line 472
    .line 473
    move-result v6

    .line 474
    new-instance v12, Lcom/google/android/material/carousel/KeylineState$Builder;

    .line 475
    .line 476
    iget v13, v1, Lcom/google/android/material/carousel/Arrangement;->f:F

    .line 477
    .line 478
    invoke-direct {v12, v13, v4}, Lcom/google/android/material/carousel/KeylineState$Builder;-><init>(FI)V

    .line 479
    .line 480
    .line 481
    move-object/from16 v19, v12

    .line 482
    .line 483
    const/4 v12, 0x0

    .line 484
    const/4 v13, 0x1

    .line 485
    move v4, v10

    .line 486
    move v10, v5

    .line 487
    move v5, v4

    .line 488
    move v4, v8

    .line 489
    move-object/from16 v8, v19

    .line 490
    .line 491
    invoke-virtual/range {v8 .. v13}, Lcom/google/android/material/carousel/KeylineState$Builder;->a(FFFZZ)V

    .line 492
    .line 493
    .line 494
    iget v8, v1, Lcom/google/android/material/carousel/Arrangement;->c:I

    .line 495
    .line 496
    move/from16 v20, v15

    .line 497
    .line 498
    if-lez v8, :cond_c

    .line 499
    .line 500
    iget v15, v1, Lcom/google/android/material/carousel/Arrangement;->b:F

    .line 501
    .line 502
    int-to-float v8, v8

    .line 503
    div-float v8, v8, v25

    .line 504
    .line 505
    float-to-double v8, v8

    .line 506
    invoke-static {v8, v9}, Ljava/lang/Math;->floor(D)D

    .line 507
    .line 508
    .line 509
    move-result-wide v8

    .line 510
    double-to-int v8, v8

    .line 511
    const/16 v17, 0x0

    .line 512
    .line 513
    move/from16 v16, v8

    .line 514
    .line 515
    move v13, v14

    .line 516
    move-object/from16 v12, v19

    .line 517
    .line 518
    move/from16 v14, v21

    .line 519
    .line 520
    invoke-virtual/range {v12 .. v17}, Lcom/google/android/material/carousel/KeylineState$Builder;->c(FFFIZ)V

    .line 521
    .line 522
    .line 523
    goto :goto_5

    .line 524
    :cond_c
    move/from16 v14, v21

    .line 525
    .line 526
    :goto_5
    iget v8, v1, Lcom/google/android/material/carousel/Arrangement;->d:I

    .line 527
    .line 528
    if-lez v8, :cond_d

    .line 529
    .line 530
    iget v9, v1, Lcom/google/android/material/carousel/Arrangement;->e:F

    .line 531
    .line 532
    int-to-float v8, v8

    .line 533
    div-float v8, v8, v25

    .line 534
    .line 535
    float-to-double v12, v8

    .line 536
    invoke-static {v12, v13}, Ljava/lang/Math;->floor(D)D

    .line 537
    .line 538
    .line 539
    move-result-wide v12

    .line 540
    double-to-int v8, v12

    .line 541
    const/16 v24, 0x0

    .line 542
    .line 543
    move/from16 v21, v6

    .line 544
    .line 545
    move/from16 v23, v8

    .line 546
    .line 547
    move/from16 v22, v9

    .line 548
    .line 549
    invoke-virtual/range {v19 .. v24}, Lcom/google/android/material/carousel/KeylineState$Builder;->c(FFFIZ)V

    .line 550
    .line 551
    .line 552
    :cond_d
    iget v8, v1, Lcom/google/android/material/carousel/Arrangement;->f:F

    .line 553
    .line 554
    iget v9, v1, Lcom/google/android/material/carousel/Arrangement;->g:I

    .line 555
    .line 556
    const/16 v24, 0x1

    .line 557
    .line 558
    const/16 v21, 0x0

    .line 559
    .line 560
    move/from16 v20, v4

    .line 561
    .line 562
    move/from16 v22, v8

    .line 563
    .line 564
    move/from16 v23, v9

    .line 565
    .line 566
    invoke-virtual/range {v19 .. v24}, Lcom/google/android/material/carousel/KeylineState$Builder;->c(FFFIZ)V

    .line 567
    .line 568
    .line 569
    iget v4, v1, Lcom/google/android/material/carousel/Arrangement;->d:I

    .line 570
    .line 571
    if-lez v4, :cond_e

    .line 572
    .line 573
    iget v8, v1, Lcom/google/android/material/carousel/Arrangement;->e:F

    .line 574
    .line 575
    int-to-float v4, v4

    .line 576
    div-float v4, v4, v25

    .line 577
    .line 578
    float-to-double v12, v4

    .line 579
    invoke-static {v12, v13}, Ljava/lang/Math;->ceil(D)D

    .line 580
    .line 581
    .line 582
    move-result-wide v12

    .line 583
    double-to-int v4, v12

    .line 584
    const/16 v24, 0x0

    .line 585
    .line 586
    move/from16 v23, v4

    .line 587
    .line 588
    move/from16 v20, v5

    .line 589
    .line 590
    move/from16 v21, v6

    .line 591
    .line 592
    move/from16 v22, v8

    .line 593
    .line 594
    invoke-virtual/range {v19 .. v24}, Lcom/google/android/material/carousel/KeylineState$Builder;->c(FFFIZ)V

    .line 595
    .line 596
    .line 597
    :cond_e
    iget v4, v1, Lcom/google/android/material/carousel/Arrangement;->c:I

    .line 598
    .line 599
    if-lez v4, :cond_f

    .line 600
    .line 601
    iget v1, v1, Lcom/google/android/material/carousel/Arrangement;->b:F

    .line 602
    .line 603
    int-to-float v4, v4

    .line 604
    div-float v4, v4, v25

    .line 605
    .line 606
    float-to-double v4, v4

    .line 607
    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    .line 608
    .line 609
    .line 610
    move-result-wide v4

    .line 611
    double-to-int v4, v4

    .line 612
    const/16 v24, 0x0

    .line 613
    .line 614
    move/from16 v22, v1

    .line 615
    .line 616
    move/from16 v20, v2

    .line 617
    .line 618
    move/from16 v23, v4

    .line 619
    .line 620
    move/from16 v21, v14

    .line 621
    .line 622
    invoke-virtual/range {v19 .. v24}, Lcom/google/android/material/carousel/KeylineState$Builder;->c(FFFIZ)V

    .line 623
    .line 624
    .line 625
    :cond_f
    const/4 v12, 0x0

    .line 626
    const/4 v13, 0x1

    .line 627
    move v9, v3

    .line 628
    move-object/from16 v8, v19

    .line 629
    .line 630
    invoke-virtual/range {v8 .. v13}, Lcom/google/android/material/carousel/KeylineState$Builder;->a(FFFZZ)V

    .line 631
    .line 632
    .line 633
    invoke-virtual/range {v19 .. v19}, Lcom/google/android/material/carousel/KeylineState$Builder;->d()Lcom/google/android/material/carousel/KeylineState;

    .line 634
    .line 635
    .line 636
    move-result-object v1

    .line 637
    goto/16 :goto_6

    .line 638
    .line 639
    :cond_10
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 640
    .line 641
    .line 642
    move-result-object v2

    .line 643
    sget v3, Lcom/google/android/material/R$dimen;->m3_carousel_gone_size:I

    .line 644
    .line 645
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    .line 646
    .line 647
    .line 648
    move-result v2

    .line 649
    add-float/2addr v2, v6

    .line 650
    iget v3, v1, Lcom/google/android/material/carousel/Arrangement;->f:F

    .line 651
    .line 652
    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    .line 653
    .line 654
    .line 655
    move-result v11

    .line 656
    const/high16 v2, 0x40000000    # 2.0f

    .line 657
    .line 658
    div-float v2, v11, v2

    .line 659
    .line 660
    const/4 v3, 0x0

    .line 661
    sub-float v9, v3, v2

    .line 662
    .line 663
    iget v5, v1, Lcom/google/android/material/carousel/Arrangement;->f:F

    .line 664
    .line 665
    iget v8, v1, Lcom/google/android/material/carousel/Arrangement;->g:I

    .line 666
    .line 667
    invoke-static {v3, v5, v8}, Lcom/google/android/material/carousel/CarouselStrategyHelper;->b(FFI)F

    .line 668
    .line 669
    .line 670
    move-result v5

    .line 671
    iget v10, v1, Lcom/google/android/material/carousel/Arrangement;->f:F

    .line 672
    .line 673
    invoke-static {v5, v10, v8}, Lcom/google/android/material/carousel/CarouselStrategyHelper;->a(FFI)F

    .line 674
    .line 675
    .line 676
    move-result v10

    .line 677
    iget v12, v1, Lcom/google/android/material/carousel/Arrangement;->f:F

    .line 678
    .line 679
    invoke-static {v3, v10, v12, v8}, Lcom/google/android/material/carousel/CarouselStrategyHelper;->d(FFFI)F

    .line 680
    .line 681
    .line 682
    move-result v3

    .line 683
    iget v8, v1, Lcom/google/android/material/carousel/Arrangement;->e:F

    .line 684
    .line 685
    iget v10, v1, Lcom/google/android/material/carousel/Arrangement;->d:I

    .line 686
    .line 687
    invoke-static {v3, v8, v10}, Lcom/google/android/material/carousel/CarouselStrategyHelper;->b(FFI)F

    .line 688
    .line 689
    .line 690
    move-result v14

    .line 691
    iget v8, v1, Lcom/google/android/material/carousel/Arrangement;->e:F

    .line 692
    .line 693
    iget v10, v1, Lcom/google/android/material/carousel/Arrangement;->d:I

    .line 694
    .line 695
    invoke-static {v3, v14, v8, v10}, Lcom/google/android/material/carousel/CarouselStrategyHelper;->d(FFFI)F

    .line 696
    .line 697
    .line 698
    move-result v3

    .line 699
    iget v8, v1, Lcom/google/android/material/carousel/Arrangement;->b:F

    .line 700
    .line 701
    iget v10, v1, Lcom/google/android/material/carousel/Arrangement;->c:I

    .line 702
    .line 703
    invoke-static {v3, v8, v10}, Lcom/google/android/material/carousel/CarouselStrategyHelper;->b(FFI)F

    .line 704
    .line 705
    .line 706
    move-result v20

    .line 707
    int-to-float v3, v4

    .line 708
    add-float/2addr v3, v2

    .line 709
    iget v2, v1, Lcom/google/android/material/carousel/Arrangement;->f:F

    .line 710
    .line 711
    invoke-static {v11, v2, v6}, Lcom/google/android/material/carousel/CarouselStrategy;->b(FFF)F

    .line 712
    .line 713
    .line 714
    move-result v10

    .line 715
    iget v2, v1, Lcom/google/android/material/carousel/Arrangement;->b:F

    .line 716
    .line 717
    iget v8, v1, Lcom/google/android/material/carousel/Arrangement;->f:F

    .line 718
    .line 719
    invoke-static {v2, v8, v6}, Lcom/google/android/material/carousel/CarouselStrategy;->b(FFF)F

    .line 720
    .line 721
    .line 722
    move-result v21

    .line 723
    iget v2, v1, Lcom/google/android/material/carousel/Arrangement;->e:F

    .line 724
    .line 725
    iget v8, v1, Lcom/google/android/material/carousel/Arrangement;->f:F

    .line 726
    .line 727
    invoke-static {v2, v8, v6}, Lcom/google/android/material/carousel/CarouselStrategy;->b(FFF)F

    .line 728
    .line 729
    .line 730
    move-result v2

    .line 731
    new-instance v8, Lcom/google/android/material/carousel/KeylineState$Builder;

    .line 732
    .line 733
    iget v6, v1, Lcom/google/android/material/carousel/Arrangement;->f:F

    .line 734
    .line 735
    invoke-direct {v8, v6, v4}, Lcom/google/android/material/carousel/KeylineState$Builder;-><init>(FI)V

    .line 736
    .line 737
    .line 738
    const/4 v12, 0x0

    .line 739
    const/4 v13, 0x1

    .line 740
    invoke-virtual/range {v8 .. v13}, Lcom/google/android/material/carousel/KeylineState$Builder;->a(FFFZZ)V

    .line 741
    .line 742
    .line 743
    iget v15, v1, Lcom/google/android/material/carousel/Arrangement;->f:F

    .line 744
    .line 745
    iget v4, v1, Lcom/google/android/material/carousel/Arrangement;->g:I

    .line 746
    .line 747
    const/16 v17, 0x1

    .line 748
    .line 749
    move v13, v14

    .line 750
    const/4 v14, 0x0

    .line 751
    move/from16 v16, v4

    .line 752
    .line 753
    move-object v12, v8

    .line 754
    move v4, v13

    .line 755
    move v13, v5

    .line 756
    invoke-virtual/range {v12 .. v17}, Lcom/google/android/material/carousel/KeylineState$Builder;->c(FFFIZ)V

    .line 757
    .line 758
    .line 759
    iget v5, v1, Lcom/google/android/material/carousel/Arrangement;->d:I

    .line 760
    .line 761
    if-lez v5, :cond_11

    .line 762
    .line 763
    iget v15, v1, Lcom/google/android/material/carousel/Arrangement;->e:F

    .line 764
    .line 765
    const/16 v16, 0x0

    .line 766
    .line 767
    const/16 v17, 0x0

    .line 768
    .line 769
    move v14, v2

    .line 770
    move v13, v4

    .line 771
    move-object v12, v8

    .line 772
    invoke-virtual/range {v12 .. v17}, Lcom/google/android/material/carousel/KeylineState$Builder;->a(FFFZZ)V

    .line 773
    .line 774
    .line 775
    :cond_11
    iget v2, v1, Lcom/google/android/material/carousel/Arrangement;->c:I

    .line 776
    .line 777
    if-lez v2, :cond_12

    .line 778
    .line 779
    iget v1, v1, Lcom/google/android/material/carousel/Arrangement;->b:F

    .line 780
    .line 781
    const/16 v24, 0x0

    .line 782
    .line 783
    move/from16 v22, v1

    .line 784
    .line 785
    move/from16 v23, v2

    .line 786
    .line 787
    move-object/from16 v19, v8

    .line 788
    .line 789
    invoke-virtual/range {v19 .. v24}, Lcom/google/android/material/carousel/KeylineState$Builder;->c(FFFIZ)V

    .line 790
    .line 791
    .line 792
    :cond_12
    const/4 v12, 0x0

    .line 793
    const/4 v13, 0x1

    .line 794
    move v9, v3

    .line 795
    invoke-virtual/range {v8 .. v13}, Lcom/google/android/material/carousel/KeylineState$Builder;->a(FFFZZ)V

    .line 796
    .line 797
    .line 798
    invoke-virtual {v8}, Lcom/google/android/material/carousel/KeylineState$Builder;->d()Lcom/google/android/material/carousel/KeylineState;

    .line 799
    .line 800
    .line 801
    move-result-object v1

    .line 802
    :goto_6
    invoke-virtual {v0}, Lcom/google/android/material/carousel/CarouselLayoutManager;->a1()Z

    .line 803
    .line 804
    .line 805
    move-result v2

    .line 806
    if-eqz v2, :cond_15

    .line 807
    .line 808
    invoke-virtual {v0}, Lcom/google/android/material/carousel/CarouselLayoutManager;->S0()I

    .line 809
    .line 810
    .line 811
    move-result v2

    .line 812
    new-instance v8, Lcom/google/android/material/carousel/KeylineState$Builder;

    .line 813
    .line 814
    iget v3, v1, Lcom/google/android/material/carousel/KeylineState;->a:F

    .line 815
    .line 816
    invoke-direct {v8, v3, v2}, Lcom/google/android/material/carousel/KeylineState$Builder;-><init>(FI)V

    .line 817
    .line 818
    .line 819
    int-to-float v2, v2

    .line 820
    invoke-virtual {v1}, Lcom/google/android/material/carousel/KeylineState;->d()Lcom/google/android/material/carousel/KeylineState$Keyline;

    .line 821
    .line 822
    .line 823
    move-result-object v3

    .line 824
    iget v3, v3, Lcom/google/android/material/carousel/KeylineState$Keyline;->b:F

    .line 825
    .line 826
    sub-float/2addr v2, v3

    .line 827
    invoke-virtual {v1}, Lcom/google/android/material/carousel/KeylineState;->d()Lcom/google/android/material/carousel/KeylineState$Keyline;

    .line 828
    .line 829
    .line 830
    move-result-object v3

    .line 831
    iget v3, v3, Lcom/google/android/material/carousel/KeylineState$Keyline;->d:F

    .line 832
    .line 833
    div-float v3, v3, p1

    .line 834
    .line 835
    sub-float/2addr v2, v3

    .line 836
    iget-object v3, v1, Lcom/google/android/material/carousel/KeylineState;->c:Ljava/util/List;

    .line 837
    .line 838
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 839
    .line 840
    .line 841
    move-result v4

    .line 842
    sub-int/2addr v4, v7

    .line 843
    :goto_7
    if-ltz v4, :cond_14

    .line 844
    .line 845
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 846
    .line 847
    .line 848
    move-result-object v5

    .line 849
    check-cast v5, Lcom/google/android/material/carousel/KeylineState$Keyline;

    .line 850
    .line 851
    iget v11, v5, Lcom/google/android/material/carousel/KeylineState$Keyline;->d:F

    .line 852
    .line 853
    div-float v6, v11, p1

    .line 854
    .line 855
    add-float v9, v6, v2

    .line 856
    .line 857
    iget v6, v1, Lcom/google/android/material/carousel/KeylineState;->d:I

    .line 858
    .line 859
    if-lt v4, v6, :cond_13

    .line 860
    .line 861
    iget v6, v1, Lcom/google/android/material/carousel/KeylineState;->e:I

    .line 862
    .line 863
    if-gt v4, v6, :cond_13

    .line 864
    .line 865
    move v12, v7

    .line 866
    goto :goto_8

    .line 867
    :cond_13
    const/4 v12, 0x0

    .line 868
    :goto_8
    iget v10, v5, Lcom/google/android/material/carousel/KeylineState$Keyline;->c:F

    .line 869
    .line 870
    iget-boolean v13, v5, Lcom/google/android/material/carousel/KeylineState$Keyline;->e:Z

    .line 871
    .line 872
    invoke-virtual/range {v8 .. v13}, Lcom/google/android/material/carousel/KeylineState$Builder;->a(FFFZZ)V

    .line 873
    .line 874
    .line 875
    iget v5, v5, Lcom/google/android/material/carousel/KeylineState$Keyline;->d:F

    .line 876
    .line 877
    add-float/2addr v2, v5

    .line 878
    add-int/lit8 v4, v4, -0x1

    .line 879
    .line 880
    goto :goto_7

    .line 881
    :cond_14
    invoke-virtual {v8}, Lcom/google/android/material/carousel/KeylineState$Builder;->d()Lcom/google/android/material/carousel/KeylineState;

    .line 882
    .line 883
    .line 884
    move-result-object v1

    .line 885
    :cond_15
    move-object v8, v1

    .line 886
    iget-object v1, v8, Lcom/google/android/material/carousel/KeylineState;->c:Ljava/util/List;

    .line 887
    .line 888
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->x()I

    .line 889
    .line 890
    .line 891
    move-result v2

    .line 892
    if-lez v2, :cond_17

    .line 893
    .line 894
    const/4 v2, 0x0

    .line 895
    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->w(I)Landroid/view/View;

    .line 896
    .line 897
    .line 898
    move-result-object v3

    .line 899
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 900
    .line 901
    .line 902
    move-result-object v3

    .line 903
    check-cast v3, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    .line 904
    .line 905
    iget-object v4, v0, Lcom/google/android/material/carousel/CarouselLayoutManager;->y:Lcom/google/android/material/carousel/CarouselOrientationHelper;

    .line 906
    .line 907
    iget v4, v4, Lcom/google/android/material/carousel/CarouselOrientationHelper;->a:I

    .line 908
    .line 909
    if-nez v4, :cond_16

    .line 910
    .line 911
    iget v4, v3, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 912
    .line 913
    iget v3, v3, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 914
    .line 915
    :goto_9
    add-int/2addr v4, v3

    .line 916
    goto :goto_a

    .line 917
    :cond_16
    iget v4, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 918
    .line 919
    iget v3, v3, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 920
    .line 921
    goto :goto_9

    .line 922
    :cond_17
    const/4 v2, 0x0

    .line 923
    move v4, v2

    .line 924
    :goto_a
    int-to-float v12, v4

    .line 925
    iget-object v3, v0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->b:Landroidx/recyclerview/widget/RecyclerView;

    .line 926
    .line 927
    if-eqz v3, :cond_18

    .line 928
    .line 929
    iget-boolean v3, v3, Landroidx/recyclerview/widget/RecyclerView;->l:Z

    .line 930
    .line 931
    if-eqz v3, :cond_18

    .line 932
    .line 933
    move v14, v7

    .line 934
    goto :goto_b

    .line 935
    :cond_18
    move v14, v2

    .line 936
    :goto_b
    if-eqz v14, :cond_19

    .line 937
    .line 938
    move v3, v2

    .line 939
    goto :goto_c

    .line 940
    :cond_19
    iget-object v3, v0, Lcom/google/android/material/carousel/CarouselLayoutManager;->y:Lcom/google/android/material/carousel/CarouselOrientationHelper;

    .line 941
    .line 942
    iget v3, v3, Lcom/google/android/material/carousel/CarouselOrientationHelper;->a:I

    .line 943
    .line 944
    if-ne v3, v7, :cond_1a

    .line 945
    .line 946
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->M()I

    .line 947
    .line 948
    .line 949
    move-result v3

    .line 950
    goto :goto_c

    .line 951
    :cond_1a
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->K()I

    .line 952
    .line 953
    .line 954
    move-result v3

    .line 955
    :goto_c
    int-to-float v9, v3

    .line 956
    iget-object v3, v0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->b:Landroidx/recyclerview/widget/RecyclerView;

    .line 957
    .line 958
    if-eqz v3, :cond_1b

    .line 959
    .line 960
    iget-boolean v3, v3, Landroidx/recyclerview/widget/RecyclerView;->l:Z

    .line 961
    .line 962
    if-eqz v3, :cond_1b

    .line 963
    .line 964
    move v14, v7

    .line 965
    goto :goto_d

    .line 966
    :cond_1b
    move v14, v2

    .line 967
    :goto_d
    if-eqz v14, :cond_1c

    .line 968
    .line 969
    move v3, v2

    .line 970
    goto :goto_e

    .line 971
    :cond_1c
    iget-object v3, v0, Lcom/google/android/material/carousel/CarouselLayoutManager;->y:Lcom/google/android/material/carousel/CarouselOrientationHelper;

    .line 972
    .line 973
    iget v3, v3, Lcom/google/android/material/carousel/CarouselOrientationHelper;->a:I

    .line 974
    .line 975
    if-ne v3, v7, :cond_1d

    .line 976
    .line 977
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->J()I

    .line 978
    .line 979
    .line 980
    move-result v3

    .line 981
    goto :goto_e

    .line 982
    :cond_1d
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->L()I

    .line 983
    .line 984
    .line 985
    move-result v3

    .line 986
    :goto_e
    int-to-float v3, v3

    .line 987
    iget-object v4, v0, Lcom/google/android/material/carousel/CarouselLayoutManager;->t:Lcom/google/android/material/carousel/MultiBrowseCarouselStrategy;

    .line 988
    .line 989
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 990
    .line 991
    .line 992
    new-instance v4, Lcom/google/android/material/carousel/KeylineStateList;

    .line 993
    .line 994
    new-instance v5, Ljava/util/ArrayList;

    .line 995
    .line 996
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 997
    .line 998
    .line 999
    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1000
    .line 1001
    .line 1002
    move v6, v2

    .line 1003
    :goto_f
    iget v15, v8, Lcom/google/android/material/carousel/KeylineState;->e:I

    .line 1004
    .line 1005
    iget v14, v8, Lcom/google/android/material/carousel/KeylineState;->d:I

    .line 1006
    .line 1007
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 1008
    .line 1009
    .line 1010
    move-result v10

    .line 1011
    if-ge v6, v10, :cond_1f

    .line 1012
    .line 1013
    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1014
    .line 1015
    .line 1016
    move-result-object v10

    .line 1017
    check-cast v10, Lcom/google/android/material/carousel/KeylineState$Keyline;

    .line 1018
    .line 1019
    iget-boolean v10, v10, Lcom/google/android/material/carousel/KeylineState$Keyline;->e:Z

    .line 1020
    .line 1021
    if-nez v10, :cond_1e

    .line 1022
    .line 1023
    goto :goto_10

    .line 1024
    :cond_1e
    add-int/lit8 v6, v6, 0x1

    .line 1025
    .line 1026
    goto :goto_f

    .line 1027
    :cond_1f
    const/4 v6, -0x1

    .line 1028
    :goto_10
    invoke-virtual {v0}, Lcom/google/android/material/carousel/CarouselLayoutManager;->Z0()Z

    .line 1029
    .line 1030
    .line 1031
    move-result v10

    .line 1032
    if-eqz v10, :cond_20

    .line 1033
    .line 1034
    iget v10, v0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->n:I

    .line 1035
    .line 1036
    :goto_11
    move/from16 v22, v10

    .line 1037
    .line 1038
    goto :goto_12

    .line 1039
    :cond_20
    iget v10, v0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->o:I

    .line 1040
    .line 1041
    goto :goto_11

    .line 1042
    :goto_12
    invoke-virtual {v8}, Lcom/google/android/material/carousel/KeylineState;->a()Lcom/google/android/material/carousel/KeylineState$Keyline;

    .line 1043
    .line 1044
    .line 1045
    move-result-object v10

    .line 1046
    iget v10, v10, Lcom/google/android/material/carousel/KeylineState$Keyline;->b:F

    .line 1047
    .line 1048
    invoke-virtual {v8}, Lcom/google/android/material/carousel/KeylineState;->a()Lcom/google/android/material/carousel/KeylineState$Keyline;

    .line 1049
    .line 1050
    .line 1051
    move-result-object v13

    .line 1052
    iget v13, v13, Lcom/google/android/material/carousel/KeylineState$Keyline;->d:F

    .line 1053
    .line 1054
    div-float v13, v13, p1

    .line 1055
    .line 1056
    sub-float/2addr v10, v13

    .line 1057
    const/16 v23, 0x0

    .line 1058
    .line 1059
    cmpl-float v10, v10, v23

    .line 1060
    .line 1061
    sget-object v13, Lcom/google/android/material/carousel/CarouselStrategy$StrategyType;->c:Lcom/google/android/material/carousel/CarouselStrategy$StrategyType;

    .line 1062
    .line 1063
    const/16 v24, 0x0

    .line 1064
    .line 1065
    if-ltz v10, :cond_23

    .line 1066
    .line 1067
    invoke-virtual {v8}, Lcom/google/android/material/carousel/KeylineState;->a()Lcom/google/android/material/carousel/KeylineState$Keyline;

    .line 1068
    .line 1069
    .line 1070
    move-result-object v10

    .line 1071
    :goto_13
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 1072
    .line 1073
    .line 1074
    move-result v7

    .line 1075
    if-ge v2, v7, :cond_22

    .line 1076
    .line 1077
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1078
    .line 1079
    .line 1080
    move-result-object v7

    .line 1081
    check-cast v7, Lcom/google/android/material/carousel/KeylineState$Keyline;

    .line 1082
    .line 1083
    iget-boolean v11, v7, Lcom/google/android/material/carousel/KeylineState$Keyline;->e:Z

    .line 1084
    .line 1085
    if-nez v11, :cond_21

    .line 1086
    .line 1087
    goto :goto_14

    .line 1088
    :cond_21
    add-int/lit8 v2, v2, 0x1

    .line 1089
    .line 1090
    goto :goto_13

    .line 1091
    :cond_22
    move-object/from16 v7, v24

    .line 1092
    .line 1093
    :goto_14
    if-ne v10, v7, :cond_23

    .line 1094
    .line 1095
    const/4 v2, -0x1

    .line 1096
    goto :goto_15

    .line 1097
    :cond_23
    const/4 v2, -0x1

    .line 1098
    if-ne v6, v2, :cond_25

    .line 1099
    .line 1100
    :goto_15
    cmpl-float v6, v9, v23

    .line 1101
    .line 1102
    if-lez v6, :cond_24

    .line 1103
    .line 1104
    const/4 v11, 0x1

    .line 1105
    move/from16 v10, v22

    .line 1106
    .line 1107
    invoke-static/range {v8 .. v13}, Lcom/google/android/material/carousel/KeylineStateList;->g(Lcom/google/android/material/carousel/KeylineState;FIZFLcom/google/android/material/carousel/CarouselStrategy$StrategyType;)Lcom/google/android/material/carousel/KeylineState;

    .line 1108
    .line 1109
    .line 1110
    move-result-object v6

    .line 1111
    move v7, v12

    .line 1112
    move-object/from16 v27, v13

    .line 1113
    .line 1114
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1115
    .line 1116
    .line 1117
    move/from16 v31, v3

    .line 1118
    .line 1119
    move/from16 v29, v14

    .line 1120
    .line 1121
    :goto_16
    move-object/from16 v14, v27

    .line 1122
    .line 1123
    goto/16 :goto_1e

    .line 1124
    .line 1125
    :cond_24
    move/from16 v29, v14

    .line 1126
    .line 1127
    move-object v14, v13

    .line 1128
    :goto_17
    move/from16 v31, v3

    .line 1129
    .line 1130
    goto/16 :goto_1e

    .line 1131
    .line 1132
    :cond_25
    move v7, v12

    .line 1133
    move-object/from16 v27, v13

    .line 1134
    .line 1135
    sub-int v10, v14, v6

    .line 1136
    .line 1137
    invoke-virtual {v8}, Lcom/google/android/material/carousel/KeylineState;->b()Lcom/google/android/material/carousel/KeylineState$Keyline;

    .line 1138
    .line 1139
    .line 1140
    move-result-object v11

    .line 1141
    iget v11, v11, Lcom/google/android/material/carousel/KeylineState$Keyline;->b:F

    .line 1142
    .line 1143
    invoke-virtual {v8}, Lcom/google/android/material/carousel/KeylineState;->b()Lcom/google/android/material/carousel/KeylineState$Keyline;

    .line 1144
    .line 1145
    .line 1146
    move-result-object v12

    .line 1147
    iget v12, v12, Lcom/google/android/material/carousel/KeylineState$Keyline;->d:F

    .line 1148
    .line 1149
    div-float v12, v12, p1

    .line 1150
    .line 1151
    sub-float v28, v11, v12

    .line 1152
    .line 1153
    if-gtz v10, :cond_26

    .line 1154
    .line 1155
    invoke-virtual {v8}, Lcom/google/android/material/carousel/KeylineState;->a()Lcom/google/android/material/carousel/KeylineState$Keyline;

    .line 1156
    .line 1157
    .line 1158
    move-result-object v11

    .line 1159
    iget v11, v11, Lcom/google/android/material/carousel/KeylineState$Keyline;->f:F

    .line 1160
    .line 1161
    cmpl-float v11, v11, v23

    .line 1162
    .line 1163
    if-lez v11, :cond_26

    .line 1164
    .line 1165
    invoke-virtual {v8}, Lcom/google/android/material/carousel/KeylineState;->a()Lcom/google/android/material/carousel/KeylineState$Keyline;

    .line 1166
    .line 1167
    .line 1168
    move-result-object v6

    .line 1169
    iget v6, v6, Lcom/google/android/material/carousel/KeylineState$Keyline;->f:F

    .line 1170
    .line 1171
    add-float v28, v28, v6

    .line 1172
    .line 1173
    add-float v11, v28, v9

    .line 1174
    .line 1175
    iget v12, v8, Lcom/google/android/material/carousel/KeylineState;->d:I

    .line 1176
    .line 1177
    iget v13, v8, Lcom/google/android/material/carousel/KeylineState;->e:I

    .line 1178
    .line 1179
    const/4 v9, 0x0

    .line 1180
    const/4 v10, 0x0

    .line 1181
    move/from16 v29, v14

    .line 1182
    .line 1183
    move/from16 v14, v22

    .line 1184
    .line 1185
    invoke-static/range {v8 .. v14}, Lcom/google/android/material/carousel/KeylineStateList;->f(Lcom/google/android/material/carousel/KeylineState;IIFIII)Lcom/google/android/material/carousel/KeylineState;

    .line 1186
    .line 1187
    .line 1188
    move-result-object v6

    .line 1189
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1190
    .line 1191
    .line 1192
    move/from16 v31, v3

    .line 1193
    .line 1194
    move v12, v7

    .line 1195
    goto :goto_16

    .line 1196
    :cond_26
    move/from16 v29, v14

    .line 1197
    .line 1198
    move/from16 v12, v23

    .line 1199
    .line 1200
    const/4 v11, 0x0

    .line 1201
    :goto_18
    if-ge v11, v10, :cond_2b

    .line 1202
    .line 1203
    const/4 v13, 0x1

    .line 1204
    invoke-static {v13, v5}, Landroid/support/v4/media/a;->c(ILjava/util/ArrayList;)Ljava/lang/Object;

    .line 1205
    .line 1206
    .line 1207
    move-result-object v14

    .line 1208
    check-cast v14, Lcom/google/android/material/carousel/KeylineState;

    .line 1209
    .line 1210
    move/from16 v17, v13

    .line 1211
    .line 1212
    add-int v13, v6, v11

    .line 1213
    .line 1214
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 1215
    .line 1216
    .line 1217
    move-result v16

    .line 1218
    add-int/lit8 v16, v16, -0x1

    .line 1219
    .line 1220
    invoke-interface {v1, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1221
    .line 1222
    .line 1223
    move-result-object v18

    .line 1224
    move-object/from16 v2, v18

    .line 1225
    .line 1226
    check-cast v2, Lcom/google/android/material/carousel/KeylineState$Keyline;

    .line 1227
    .line 1228
    iget v2, v2, Lcom/google/android/material/carousel/KeylineState$Keyline;->f:F

    .line 1229
    .line 1230
    add-float/2addr v2, v12

    .line 1231
    add-int/lit8 v13, v13, -0x1

    .line 1232
    .line 1233
    if-ltz v13, :cond_29

    .line 1234
    .line 1235
    invoke-interface {v1, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1236
    .line 1237
    .line 1238
    move-result-object v12

    .line 1239
    check-cast v12, Lcom/google/android/material/carousel/KeylineState$Keyline;

    .line 1240
    .line 1241
    iget v12, v12, Lcom/google/android/material/carousel/KeylineState$Keyline;->c:F

    .line 1242
    .line 1243
    iget v13, v14, Lcom/google/android/material/carousel/KeylineState;->e:I

    .line 1244
    .line 1245
    move/from16 v30, v2

    .line 1246
    .line 1247
    iget-object v2, v14, Lcom/google/android/material/carousel/KeylineState;->c:Ljava/util/List;

    .line 1248
    .line 1249
    move/from16 v31, v3

    .line 1250
    .line 1251
    :goto_19
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 1252
    .line 1253
    .line 1254
    move-result v3

    .line 1255
    if-ge v13, v3, :cond_28

    .line 1256
    .line 1257
    invoke-interface {v2, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1258
    .line 1259
    .line 1260
    move-result-object v3

    .line 1261
    check-cast v3, Lcom/google/android/material/carousel/KeylineState$Keyline;

    .line 1262
    .line 1263
    iget v3, v3, Lcom/google/android/material/carousel/KeylineState$Keyline;->c:F

    .line 1264
    .line 1265
    cmpl-float v3, v12, v3

    .line 1266
    .line 1267
    if-nez v3, :cond_27

    .line 1268
    .line 1269
    const/16 v26, 0x1

    .line 1270
    .line 1271
    goto :goto_1a

    .line 1272
    :cond_27
    add-int/lit8 v13, v13, 0x1

    .line 1273
    .line 1274
    goto :goto_19

    .line 1275
    :cond_28
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 1276
    .line 1277
    .line 1278
    move-result v2

    .line 1279
    const/16 v26, 0x1

    .line 1280
    .line 1281
    add-int/lit8 v13, v2, -0x1

    .line 1282
    .line 1283
    :goto_1a
    add-int/lit8 v16, v13, -0x1

    .line 1284
    .line 1285
    :goto_1b
    move/from16 v18, v16

    .line 1286
    .line 1287
    goto :goto_1c

    .line 1288
    :cond_29
    move/from16 v30, v2

    .line 1289
    .line 1290
    move/from16 v31, v3

    .line 1291
    .line 1292
    const/16 v26, 0x1

    .line 1293
    .line 1294
    goto :goto_1b

    .line 1295
    :goto_1c
    sub-int v2, v29, v11

    .line 1296
    .line 1297
    add-int/lit8 v20, v2, -0x1

    .line 1298
    .line 1299
    sub-int v2, v15, v11

    .line 1300
    .line 1301
    add-int/lit8 v21, v2, -0x1

    .line 1302
    .line 1303
    add-float v19, v28, v30

    .line 1304
    .line 1305
    move/from16 v17, v6

    .line 1306
    .line 1307
    move-object/from16 v16, v14

    .line 1308
    .line 1309
    invoke-static/range {v16 .. v22}, Lcom/google/android/material/carousel/KeylineStateList;->f(Lcom/google/android/material/carousel/KeylineState;IIFIII)Lcom/google/android/material/carousel/KeylineState;

    .line 1310
    .line 1311
    .line 1312
    move-result-object v2

    .line 1313
    add-int/lit8 v3, v10, -0x1

    .line 1314
    .line 1315
    if-ne v11, v3, :cond_2a

    .line 1316
    .line 1317
    cmpl-float v3, v9, v23

    .line 1318
    .line 1319
    if-lez v3, :cond_2a

    .line 1320
    .line 1321
    const/4 v12, 0x1

    .line 1322
    move v3, v9

    .line 1323
    move-object v9, v2

    .line 1324
    move v2, v10

    .line 1325
    move v10, v3

    .line 1326
    move v13, v7

    .line 1327
    move v3, v11

    .line 1328
    move/from16 v11, v22

    .line 1329
    .line 1330
    move-object/from16 v14, v27

    .line 1331
    .line 1332
    invoke-static/range {v9 .. v14}, Lcom/google/android/material/carousel/KeylineStateList;->g(Lcom/google/android/material/carousel/KeylineState;FIZFLcom/google/android/material/carousel/CarouselStrategy$StrategyType;)Lcom/google/android/material/carousel/KeylineState;

    .line 1333
    .line 1334
    .line 1335
    move-result-object v6

    .line 1336
    move v9, v10

    .line 1337
    move v12, v13

    .line 1338
    goto :goto_1d

    .line 1339
    :cond_2a
    move-object v6, v2

    .line 1340
    move v12, v7

    .line 1341
    move v2, v10

    .line 1342
    move v3, v11

    .line 1343
    move-object/from16 v14, v27

    .line 1344
    .line 1345
    :goto_1d
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1346
    .line 1347
    .line 1348
    add-int/lit8 v11, v3, 0x1

    .line 1349
    .line 1350
    move v10, v2

    .line 1351
    move v7, v12

    .line 1352
    move-object/from16 v27, v14

    .line 1353
    .line 1354
    move/from16 v6, v17

    .line 1355
    .line 1356
    move/from16 v12, v30

    .line 1357
    .line 1358
    move/from16 v3, v31

    .line 1359
    .line 1360
    const/4 v2, -0x1

    .line 1361
    goto/16 :goto_18

    .line 1362
    .line 1363
    :cond_2b
    move v12, v7

    .line 1364
    move-object/from16 v14, v27

    .line 1365
    .line 1366
    goto/16 :goto_17

    .line 1367
    .line 1368
    :goto_1e
    new-instance v2, Ljava/util/ArrayList;

    .line 1369
    .line 1370
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1371
    .line 1372
    .line 1373
    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1374
    .line 1375
    .line 1376
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 1377
    .line 1378
    .line 1379
    move-result v3

    .line 1380
    const/16 v26, 0x1

    .line 1381
    .line 1382
    add-int/lit8 v3, v3, -0x1

    .line 1383
    .line 1384
    move v11, v3

    .line 1385
    :goto_1f
    if-ltz v11, :cond_2d

    .line 1386
    .line 1387
    invoke-interface {v1, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1388
    .line 1389
    .line 1390
    move-result-object v3

    .line 1391
    check-cast v3, Lcom/google/android/material/carousel/KeylineState$Keyline;

    .line 1392
    .line 1393
    iget-boolean v3, v3, Lcom/google/android/material/carousel/KeylineState$Keyline;->e:Z

    .line 1394
    .line 1395
    if-nez v3, :cond_2c

    .line 1396
    .line 1397
    goto :goto_20

    .line 1398
    :cond_2c
    add-int/lit8 v11, v11, -0x1

    .line 1399
    .line 1400
    goto :goto_1f

    .line 1401
    :cond_2d
    const/4 v11, -0x1

    .line 1402
    :goto_20
    invoke-virtual {v0}, Lcom/google/android/material/carousel/CarouselLayoutManager;->Z0()Z

    .line 1403
    .line 1404
    .line 1405
    move-result v3

    .line 1406
    if-eqz v3, :cond_2e

    .line 1407
    .line 1408
    iget v3, v0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->n:I

    .line 1409
    .line 1410
    :goto_21
    move/from16 v22, v3

    .line 1411
    .line 1412
    goto :goto_22

    .line 1413
    :cond_2e
    iget v3, v0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->o:I

    .line 1414
    .line 1415
    goto :goto_21

    .line 1416
    :goto_22
    iget v3, v0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->o:I

    .line 1417
    .line 1418
    invoke-virtual {v0}, Lcom/google/android/material/carousel/CarouselLayoutManager;->Z0()Z

    .line 1419
    .line 1420
    .line 1421
    move-result v6

    .line 1422
    if-eqz v6, :cond_2f

    .line 1423
    .line 1424
    iget v3, v0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->n:I

    .line 1425
    .line 1426
    :cond_2f
    invoke-virtual {v8}, Lcom/google/android/material/carousel/KeylineState;->c()Lcom/google/android/material/carousel/KeylineState$Keyline;

    .line 1427
    .line 1428
    .line 1429
    move-result-object v6

    .line 1430
    iget v6, v6, Lcom/google/android/material/carousel/KeylineState$Keyline;->b:F

    .line 1431
    .line 1432
    invoke-virtual {v8}, Lcom/google/android/material/carousel/KeylineState;->c()Lcom/google/android/material/carousel/KeylineState$Keyline;

    .line 1433
    .line 1434
    .line 1435
    move-result-object v7

    .line 1436
    iget v7, v7, Lcom/google/android/material/carousel/KeylineState$Keyline;->d:F

    .line 1437
    .line 1438
    div-float v7, v7, p1

    .line 1439
    .line 1440
    add-float/2addr v7, v6

    .line 1441
    int-to-float v3, v3

    .line 1442
    cmpg-float v3, v7, v3

    .line 1443
    .line 1444
    if-gtz v3, :cond_32

    .line 1445
    .line 1446
    invoke-virtual {v8}, Lcom/google/android/material/carousel/KeylineState;->c()Lcom/google/android/material/carousel/KeylineState$Keyline;

    .line 1447
    .line 1448
    .line 1449
    move-result-object v3

    .line 1450
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 1451
    .line 1452
    .line 1453
    move-result v6

    .line 1454
    const/16 v26, 0x1

    .line 1455
    .line 1456
    add-int/lit8 v6, v6, -0x1

    .line 1457
    .line 1458
    :goto_23
    if-ltz v6, :cond_31

    .line 1459
    .line 1460
    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1461
    .line 1462
    .line 1463
    move-result-object v7

    .line 1464
    check-cast v7, Lcom/google/android/material/carousel/KeylineState$Keyline;

    .line 1465
    .line 1466
    iget-boolean v9, v7, Lcom/google/android/material/carousel/KeylineState$Keyline;->e:Z

    .line 1467
    .line 1468
    if-nez v9, :cond_30

    .line 1469
    .line 1470
    goto :goto_24

    .line 1471
    :cond_30
    add-int/lit8 v6, v6, -0x1

    .line 1472
    .line 1473
    goto :goto_23

    .line 1474
    :cond_31
    move-object/from16 v7, v24

    .line 1475
    .line 1476
    :goto_24
    if-ne v3, v7, :cond_32

    .line 1477
    .line 1478
    goto :goto_25

    .line 1479
    :cond_32
    const/4 v3, -0x1

    .line 1480
    if-ne v11, v3, :cond_33

    .line 1481
    .line 1482
    :goto_25
    cmpl-float v1, v31, v23

    .line 1483
    .line 1484
    if-lez v1, :cond_39

    .line 1485
    .line 1486
    const/4 v11, 0x0

    .line 1487
    move-object v13, v14

    .line 1488
    move/from16 v10, v22

    .line 1489
    .line 1490
    move/from16 v9, v31

    .line 1491
    .line 1492
    invoke-static/range {v8 .. v13}, Lcom/google/android/material/carousel/KeylineStateList;->g(Lcom/google/android/material/carousel/KeylineState;FIZFLcom/google/android/material/carousel/CarouselStrategy$StrategyType;)Lcom/google/android/material/carousel/KeylineState;

    .line 1493
    .line 1494
    .line 1495
    move-result-object v1

    .line 1496
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1497
    .line 1498
    .line 1499
    goto/16 :goto_2b

    .line 1500
    .line 1501
    :cond_33
    move-object v13, v14

    .line 1502
    move/from16 v14, v22

    .line 1503
    .line 1504
    sub-int v3, v11, v15

    .line 1505
    .line 1506
    invoke-virtual {v8}, Lcom/google/android/material/carousel/KeylineState;->b()Lcom/google/android/material/carousel/KeylineState$Keyline;

    .line 1507
    .line 1508
    .line 1509
    move-result-object v6

    .line 1510
    iget v6, v6, Lcom/google/android/material/carousel/KeylineState$Keyline;->b:F

    .line 1511
    .line 1512
    invoke-virtual {v8}, Lcom/google/android/material/carousel/KeylineState;->b()Lcom/google/android/material/carousel/KeylineState$Keyline;

    .line 1513
    .line 1514
    .line 1515
    move-result-object v7

    .line 1516
    iget v7, v7, Lcom/google/android/material/carousel/KeylineState$Keyline;->d:F

    .line 1517
    .line 1518
    div-float v7, v7, p1

    .line 1519
    .line 1520
    sub-float/2addr v6, v7

    .line 1521
    if-gtz v3, :cond_34

    .line 1522
    .line 1523
    invoke-virtual {v8}, Lcom/google/android/material/carousel/KeylineState;->c()Lcom/google/android/material/carousel/KeylineState$Keyline;

    .line 1524
    .line 1525
    .line 1526
    move-result-object v7

    .line 1527
    iget v7, v7, Lcom/google/android/material/carousel/KeylineState$Keyline;->f:F

    .line 1528
    .line 1529
    cmpl-float v7, v7, v23

    .line 1530
    .line 1531
    if-lez v7, :cond_34

    .line 1532
    .line 1533
    invoke-virtual {v8}, Lcom/google/android/material/carousel/KeylineState;->c()Lcom/google/android/material/carousel/KeylineState$Keyline;

    .line 1534
    .line 1535
    .line 1536
    move-result-object v1

    .line 1537
    iget v1, v1, Lcom/google/android/material/carousel/KeylineState$Keyline;->f:F

    .line 1538
    .line 1539
    sub-float/2addr v6, v1

    .line 1540
    sub-float v11, v6, v31

    .line 1541
    .line 1542
    iget v12, v8, Lcom/google/android/material/carousel/KeylineState;->d:I

    .line 1543
    .line 1544
    iget v13, v8, Lcom/google/android/material/carousel/KeylineState;->e:I

    .line 1545
    .line 1546
    const/4 v9, 0x0

    .line 1547
    const/4 v10, 0x0

    .line 1548
    invoke-static/range {v8 .. v14}, Lcom/google/android/material/carousel/KeylineStateList;->f(Lcom/google/android/material/carousel/KeylineState;IIFIII)Lcom/google/android/material/carousel/KeylineState;

    .line 1549
    .line 1550
    .line 1551
    move-result-object v1

    .line 1552
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1553
    .line 1554
    .line 1555
    goto/16 :goto_2b

    .line 1556
    .line 1557
    :cond_34
    move/from16 v9, v23

    .line 1558
    .line 1559
    const/4 v7, 0x0

    .line 1560
    :goto_26
    if-ge v7, v3, :cond_39

    .line 1561
    .line 1562
    const/4 v10, 0x1

    .line 1563
    invoke-static {v10, v2}, Landroid/support/v4/media/a;->c(ILjava/util/ArrayList;)Ljava/lang/Object;

    .line 1564
    .line 1565
    .line 1566
    move-result-object v16

    .line 1567
    move/from16 v17, v10

    .line 1568
    .line 1569
    move-object/from16 v10, v16

    .line 1570
    .line 1571
    check-cast v10, Lcom/google/android/material/carousel/KeylineState;

    .line 1572
    .line 1573
    move/from16 p1, v3

    .line 1574
    .line 1575
    sub-int v3, v11, v7

    .line 1576
    .line 1577
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1578
    .line 1579
    .line 1580
    move-result-object v16

    .line 1581
    move/from16 v18, v3

    .line 1582
    .line 1583
    move-object/from16 v3, v16

    .line 1584
    .line 1585
    check-cast v3, Lcom/google/android/material/carousel/KeylineState$Keyline;

    .line 1586
    .line 1587
    iget v3, v3, Lcom/google/android/material/carousel/KeylineState$Keyline;->f:F

    .line 1588
    .line 1589
    add-float/2addr v3, v9

    .line 1590
    add-int/lit8 v9, v18, 0x1

    .line 1591
    .line 1592
    move/from16 v24, v3

    .line 1593
    .line 1594
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 1595
    .line 1596
    .line 1597
    move-result v3

    .line 1598
    if-ge v9, v3, :cond_37

    .line 1599
    .line 1600
    invoke-interface {v1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1601
    .line 1602
    .line 1603
    move-result-object v3

    .line 1604
    check-cast v3, Lcom/google/android/material/carousel/KeylineState$Keyline;

    .line 1605
    .line 1606
    iget v3, v3, Lcom/google/android/material/carousel/KeylineState$Keyline;->c:F

    .line 1607
    .line 1608
    iget v9, v10, Lcom/google/android/material/carousel/KeylineState;->d:I

    .line 1609
    .line 1610
    add-int/lit8 v9, v9, -0x1

    .line 1611
    .line 1612
    :goto_27
    if-ltz v9, :cond_36

    .line 1613
    .line 1614
    move-object/from16 v27, v1

    .line 1615
    .line 1616
    iget-object v1, v10, Lcom/google/android/material/carousel/KeylineState;->c:Ljava/util/List;

    .line 1617
    .line 1618
    invoke-interface {v1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1619
    .line 1620
    .line 1621
    move-result-object v1

    .line 1622
    check-cast v1, Lcom/google/android/material/carousel/KeylineState$Keyline;

    .line 1623
    .line 1624
    iget v1, v1, Lcom/google/android/material/carousel/KeylineState$Keyline;->c:F

    .line 1625
    .line 1626
    cmpl-float v1, v3, v1

    .line 1627
    .line 1628
    if-nez v1, :cond_35

    .line 1629
    .line 1630
    :goto_28
    const/16 v26, 0x1

    .line 1631
    .line 1632
    goto :goto_29

    .line 1633
    :cond_35
    add-int/lit8 v9, v9, -0x1

    .line 1634
    .line 1635
    move-object/from16 v1, v27

    .line 1636
    .line 1637
    goto :goto_27

    .line 1638
    :cond_36
    move-object/from16 v27, v1

    .line 1639
    .line 1640
    const/4 v9, 0x0

    .line 1641
    goto :goto_28

    .line 1642
    :goto_29
    add-int/lit8 v9, v9, 0x1

    .line 1643
    .line 1644
    move/from16 v18, v9

    .line 1645
    .line 1646
    goto :goto_2a

    .line 1647
    :cond_37
    move-object/from16 v27, v1

    .line 1648
    .line 1649
    move/from16 v26, v17

    .line 1650
    .line 1651
    const/16 v18, 0x0

    .line 1652
    .line 1653
    :goto_2a
    add-int v1, v29, v7

    .line 1654
    .line 1655
    add-int/lit8 v20, v1, 0x1

    .line 1656
    .line 1657
    add-int v1, v15, v7

    .line 1658
    .line 1659
    add-int/lit8 v21, v1, 0x1

    .line 1660
    .line 1661
    sub-float v19, v6, v24

    .line 1662
    .line 1663
    move-object/from16 v16, v10

    .line 1664
    .line 1665
    move/from16 v17, v11

    .line 1666
    .line 1667
    move/from16 v22, v14

    .line 1668
    .line 1669
    invoke-static/range {v16 .. v22}, Lcom/google/android/material/carousel/KeylineStateList;->f(Lcom/google/android/material/carousel/KeylineState;IIFIII)Lcom/google/android/material/carousel/KeylineState;

    .line 1670
    .line 1671
    .line 1672
    move-result-object v9

    .line 1673
    add-int/lit8 v3, p1, -0x1

    .line 1674
    .line 1675
    if-ne v7, v3, :cond_38

    .line 1676
    .line 1677
    cmpl-float v1, v31, v23

    .line 1678
    .line 1679
    if-lez v1, :cond_38

    .line 1680
    .line 1681
    move/from16 v22, v14

    .line 1682
    .line 1683
    move-object v14, v13

    .line 1684
    move v13, v12

    .line 1685
    const/4 v12, 0x0

    .line 1686
    move/from16 v11, v22

    .line 1687
    .line 1688
    move/from16 v10, v31

    .line 1689
    .line 1690
    invoke-static/range {v9 .. v14}, Lcom/google/android/material/carousel/KeylineStateList;->g(Lcom/google/android/material/carousel/KeylineState;FIZFLcom/google/android/material/carousel/CarouselStrategy$StrategyType;)Lcom/google/android/material/carousel/KeylineState;

    .line 1691
    .line 1692
    .line 1693
    move-result-object v9

    .line 1694
    move v12, v13

    .line 1695
    move-object v13, v14

    .line 1696
    move v14, v11

    .line 1697
    :cond_38
    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1698
    .line 1699
    .line 1700
    add-int/lit8 v7, v7, 0x1

    .line 1701
    .line 1702
    move/from16 v3, p1

    .line 1703
    .line 1704
    move/from16 v11, v17

    .line 1705
    .line 1706
    move/from16 v9, v24

    .line 1707
    .line 1708
    move-object/from16 v1, v27

    .line 1709
    .line 1710
    goto/16 :goto_26

    .line 1711
    .line 1712
    :cond_39
    :goto_2b
    invoke-direct {v4, v8, v5, v2}, Lcom/google/android/material/carousel/KeylineStateList;-><init>(Lcom/google/android/material/carousel/KeylineState;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 1713
    .line 1714
    .line 1715
    iput-object v4, v0, Lcom/google/android/material/carousel/CarouselLayoutManager;->u:Lcom/google/android/material/carousel/KeylineStateList;

    .line 1716
    .line 1717
    return-void
.end method

.method public final f()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/material/carousel/CarouselLayoutManager;->Z0()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public final f0()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/google/android/material/carousel/CarouselLayoutManager;->k1()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final f1()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->u:Lcom/google/android/material/carousel/KeylineStateList;

    .line 3
    .line 4
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->v0()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public final g()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/material/carousel/CarouselLayoutManager;->Z0()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    xor-int/lit8 v0, v0, 0x1

    .line 6
    .line 7
    return v0
.end method

.method public final g1(ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)I
    .locals 11

    .line 1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->x()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_9

    .line 7
    .line 8
    if-nez p1, :cond_0

    .line 9
    .line 10
    goto/16 :goto_4

    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->u:Lcom/google/android/material/carousel/KeylineStateList;

    .line 13
    .line 14
    if-nez v0, :cond_1

    .line 15
    .line 16
    invoke-virtual {p0, p2}, Lcom/google/android/material/carousel/CarouselLayoutManager;->e1(Landroidx/recyclerview/widget/RecyclerView$Recycler;)V

    .line 17
    .line 18
    .line 19
    :cond_1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->H()I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    iget-object v2, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->u:Lcom/google/android/material/carousel/KeylineStateList;

    .line 24
    .line 25
    invoke-virtual {p0}, Lcom/google/android/material/carousel/CarouselLayoutManager;->a1()Z

    .line 26
    .line 27
    .line 28
    move-result v3

    .line 29
    if-eqz v3, :cond_2

    .line 30
    .line 31
    invoke-virtual {v2}, Lcom/google/android/material/carousel/KeylineStateList;->a()Lcom/google/android/material/carousel/KeylineState;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    goto :goto_0

    .line 36
    :cond_2
    invoke-virtual {v2}, Lcom/google/android/material/carousel/KeylineStateList;->c()Lcom/google/android/material/carousel/KeylineState;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    :goto_0
    iget v2, v2, Lcom/google/android/material/carousel/KeylineState;->b:I

    .line 41
    .line 42
    if-gt v0, v2, :cond_3

    .line 43
    .line 44
    goto/16 :goto_4

    .line 45
    .line 46
    :cond_3
    iget v0, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->p:I

    .line 47
    .line 48
    iget v2, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->q:I

    .line 49
    .line 50
    iget v3, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->r:I

    .line 51
    .line 52
    add-int v4, v0, p1

    .line 53
    .line 54
    if-ge v4, v2, :cond_4

    .line 55
    .line 56
    sub-int p1, v2, v0

    .line 57
    .line 58
    goto :goto_1

    .line 59
    :cond_4
    if-le v4, v3, :cond_5

    .line 60
    .line 61
    sub-int p1, v3, v0

    .line 62
    .line 63
    :cond_5
    :goto_1
    add-int/2addr v0, p1

    .line 64
    iput v0, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->p:I

    .line 65
    .line 66
    iget-object v0, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->u:Lcom/google/android/material/carousel/KeylineStateList;

    .line 67
    .line 68
    invoke-virtual {p0, v0}, Lcom/google/android/material/carousel/CarouselLayoutManager;->j1(Lcom/google/android/material/carousel/KeylineStateList;)V

    .line 69
    .line 70
    .line 71
    iget-object v0, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->v:Lcom/google/android/material/carousel/KeylineState;

    .line 72
    .line 73
    iget v0, v0, Lcom/google/android/material/carousel/KeylineState;->a:F

    .line 74
    .line 75
    const/high16 v2, 0x40000000    # 2.0f

    .line 76
    .line 77
    div-float/2addr v0, v2

    .line 78
    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->w(I)Landroid/view/View;

    .line 79
    .line 80
    .line 81
    move-result-object v2

    .line 82
    invoke-static {v2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->N(Landroid/view/View;)I

    .line 83
    .line 84
    .line 85
    move-result v2

    .line 86
    invoke-virtual {p0, v2}, Lcom/google/android/material/carousel/CarouselLayoutManager;->Q0(I)F

    .line 87
    .line 88
    .line 89
    move-result v2

    .line 90
    new-instance v3, Landroid/graphics/Rect;

    .line 91
    .line 92
    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 93
    .line 94
    .line 95
    invoke-virtual {p0}, Lcom/google/android/material/carousel/CarouselLayoutManager;->a1()Z

    .line 96
    .line 97
    .line 98
    move-result v4

    .line 99
    if-eqz v4, :cond_6

    .line 100
    .line 101
    iget-object v4, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->v:Lcom/google/android/material/carousel/KeylineState;

    .line 102
    .line 103
    invoke-virtual {v4}, Lcom/google/android/material/carousel/KeylineState;->c()Lcom/google/android/material/carousel/KeylineState$Keyline;

    .line 104
    .line 105
    .line 106
    move-result-object v4

    .line 107
    iget v4, v4, Lcom/google/android/material/carousel/KeylineState$Keyline;->b:F

    .line 108
    .line 109
    goto :goto_2

    .line 110
    :cond_6
    iget-object v4, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->v:Lcom/google/android/material/carousel/KeylineState;

    .line 111
    .line 112
    invoke-virtual {v4}, Lcom/google/android/material/carousel/KeylineState;->a()Lcom/google/android/material/carousel/KeylineState$Keyline;

    .line 113
    .line 114
    .line 115
    move-result-object v4

    .line 116
    iget v4, v4, Lcom/google/android/material/carousel/KeylineState$Keyline;->b:F

    .line 117
    .line 118
    :goto_2
    const v5, 0x7f7fffff    # Float.MAX_VALUE

    .line 119
    .line 120
    .line 121
    move v6, v1

    .line 122
    :goto_3
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->x()I

    .line 123
    .line 124
    .line 125
    move-result v7

    .line 126
    if-ge v6, v7, :cond_8

    .line 127
    .line 128
    invoke-virtual {p0, v6}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->w(I)Landroid/view/View;

    .line 129
    .line 130
    .line 131
    move-result-object v7

    .line 132
    invoke-virtual {p0, v2, v0}, Lcom/google/android/material/carousel/CarouselLayoutManager;->L0(FF)F

    .line 133
    .line 134
    .line 135
    move-result v8

    .line 136
    iget-object v9, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->v:Lcom/google/android/material/carousel/KeylineState;

    .line 137
    .line 138
    iget-object v9, v9, Lcom/google/android/material/carousel/KeylineState;->c:Ljava/util/List;

    .line 139
    .line 140
    invoke-static {v9, v8, v1}, Lcom/google/android/material/carousel/CarouselLayoutManager;->Y0(Ljava/util/List;FZ)Lcom/google/android/material/carousel/CarouselLayoutManager$KeylineRange;

    .line 141
    .line 142
    .line 143
    move-result-object v9

    .line 144
    invoke-virtual {p0, v8, v9}, Lcom/google/android/material/carousel/CarouselLayoutManager;->P0(FLcom/google/android/material/carousel/CarouselLayoutManager$KeylineRange;)F

    .line 145
    .line 146
    .line 147
    move-result v10

    .line 148
    invoke-static {v3, v7}, Landroidx/recyclerview/widget/RecyclerView;->N(Landroid/graphics/Rect;Landroid/view/View;)V

    .line 149
    .line 150
    .line 151
    invoke-virtual {p0, v7, v8, v9}, Lcom/google/android/material/carousel/CarouselLayoutManager;->i1(Landroid/view/View;FLcom/google/android/material/carousel/CarouselLayoutManager$KeylineRange;)V

    .line 152
    .line 153
    .line 154
    iget-object v8, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->y:Lcom/google/android/material/carousel/CarouselOrientationHelper;

    .line 155
    .line 156
    invoke-virtual {v8, v7, v3, v0, v10}, Lcom/google/android/material/carousel/CarouselOrientationHelper;->j(Landroid/view/View;Landroid/graphics/Rect;FF)V

    .line 157
    .line 158
    .line 159
    sub-float v8, v4, v10

    .line 160
    .line 161
    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    .line 162
    .line 163
    .line 164
    move-result v8

    .line 165
    cmpg-float v9, v8, v5

    .line 166
    .line 167
    if-gez v9, :cond_7

    .line 168
    .line 169
    invoke-static {v7}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->N(Landroid/view/View;)I

    .line 170
    .line 171
    .line 172
    move-result v5

    .line 173
    iput v5, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->B:I

    .line 174
    .line 175
    move v5, v8

    .line 176
    :cond_7
    iget-object v7, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->v:Lcom/google/android/material/carousel/KeylineState;

    .line 177
    .line 178
    iget v7, v7, Lcom/google/android/material/carousel/KeylineState;->a:F

    .line 179
    .line 180
    invoke-virtual {p0, v2, v7}, Lcom/google/android/material/carousel/CarouselLayoutManager;->L0(FF)F

    .line 181
    .line 182
    .line 183
    move-result v2

    .line 184
    add-int/lit8 v6, v6, 0x1

    .line 185
    .line 186
    goto :goto_3

    .line 187
    :cond_8
    invoke-virtual {p0, p2, p3}, Lcom/google/android/material/carousel/CarouselLayoutManager;->R0(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)V

    .line 188
    .line 189
    .line 190
    return p1

    .line 191
    :cond_9
    :goto_4
    return v1
.end method

.method public final h0(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/google/android/material/carousel/CarouselLayoutManager;->k1()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final h1(I)V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    if-eqz p1, :cond_1

    .line 3
    .line 4
    if-ne p1, v0, :cond_0

    .line 5
    .line 6
    goto :goto_0

    .line 7
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 8
    .line 9
    const-string v1, "invalid orientation:"

    .line 10
    .line 11
    invoke-static {p1, v1}, Landroid/support/v4/media/a;->e(ILjava/lang/String;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    throw v0

    .line 19
    :cond_1
    :goto_0
    const/4 v1, 0x0

    .line 20
    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->d(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    iget-object v1, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->y:Lcom/google/android/material/carousel/CarouselOrientationHelper;

    .line 24
    .line 25
    if-eqz v1, :cond_3

    .line 26
    .line 27
    iget v1, v1, Lcom/google/android/material/carousel/CarouselOrientationHelper;->a:I

    .line 28
    .line 29
    if-eq p1, v1, :cond_2

    .line 30
    .line 31
    goto :goto_1

    .line 32
    :cond_2
    return-void

    .line 33
    :cond_3
    :goto_1
    if-eqz p1, :cond_5

    .line 34
    .line 35
    if-ne p1, v0, :cond_4

    .line 36
    .line 37
    new-instance p1, Lcom/google/android/material/carousel/CarouselOrientationHelper$1;

    .line 38
    .line 39
    invoke-direct {p1, p0}, Lcom/google/android/material/carousel/CarouselOrientationHelper$1;-><init>(Lcom/google/android/material/carousel/CarouselLayoutManager;)V

    .line 40
    .line 41
    .line 42
    goto :goto_2

    .line 43
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 44
    .line 45
    const-string v0, "invalid orientation"

    .line 46
    .line 47
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    throw p1

    .line 51
    :cond_5
    new-instance p1, Lcom/google/android/material/carousel/CarouselOrientationHelper$2;

    .line 52
    .line 53
    invoke-direct {p1, p0}, Lcom/google/android/material/carousel/CarouselOrientationHelper$2;-><init>(Lcom/google/android/material/carousel/CarouselLayoutManager;)V

    .line 54
    .line 55
    .line 56
    :goto_2
    iput-object p1, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->y:Lcom/google/android/material/carousel/CarouselOrientationHelper;

    .line 57
    .line 58
    invoke-virtual {p0}, Lcom/google/android/material/carousel/CarouselLayoutManager;->f1()V

    .line 59
    .line 60
    .line 61
    return-void
.end method

.method public final i1(Landroid/view/View;FLcom/google/android/material/carousel/CarouselLayoutManager$KeylineRange;)V
    .locals 8

    .line 1
    instance-of v0, p1, Lcom/google/android/material/carousel/Maskable;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p3, Lcom/google/android/material/carousel/CarouselLayoutManager$KeylineRange;->a:Lcom/google/android/material/carousel/KeylineState$Keyline;

    .line 7
    .line 8
    iget v1, v0, Lcom/google/android/material/carousel/KeylineState$Keyline;->c:F

    .line 9
    .line 10
    iget-object v2, p3, Lcom/google/android/material/carousel/CarouselLayoutManager$KeylineRange;->b:Lcom/google/android/material/carousel/KeylineState$Keyline;

    .line 11
    .line 12
    iget v3, v2, Lcom/google/android/material/carousel/KeylineState$Keyline;->c:F

    .line 13
    .line 14
    iget v0, v0, Lcom/google/android/material/carousel/KeylineState$Keyline;->a:F

    .line 15
    .line 16
    iget v2, v2, Lcom/google/android/material/carousel/KeylineState$Keyline;->a:F

    .line 17
    .line 18
    invoke-static {v1, v3, v0, v2, p2}, Lcom/google/android/material/animation/AnimationUtils;->b(FFFFF)F

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    int-to-float v1, v1

    .line 27
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    int-to-float v2, v2

    .line 32
    const/high16 v3, 0x40000000    # 2.0f

    .line 33
    .line 34
    div-float v4, v2, v3

    .line 35
    .line 36
    const/4 v5, 0x0

    .line 37
    const/high16 v6, 0x3f800000    # 1.0f

    .line 38
    .line 39
    invoke-static {v5, v4, v5, v6, v0}, Lcom/google/android/material/animation/AnimationUtils;->b(FFFFF)F

    .line 40
    .line 41
    .line 42
    move-result v4

    .line 43
    div-float v7, v1, v3

    .line 44
    .line 45
    invoke-static {v5, v7, v5, v6, v0}, Lcom/google/android/material/animation/AnimationUtils;->b(FFFFF)F

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    iget-object v5, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->y:Lcom/google/android/material/carousel/CarouselOrientationHelper;

    .line 50
    .line 51
    invoke-virtual {v5, v1, v2, v0, v4}, Lcom/google/android/material/carousel/CarouselOrientationHelper;->b(FFFF)Landroid/graphics/RectF;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    invoke-virtual {p0, p2, p3}, Lcom/google/android/material/carousel/CarouselLayoutManager;->P0(FLcom/google/android/material/carousel/CarouselLayoutManager$KeylineRange;)F

    .line 56
    .line 57
    .line 58
    move-result p2

    .line 59
    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    .line 60
    .line 61
    .line 62
    move-result p3

    .line 63
    div-float/2addr p3, v3

    .line 64
    sub-float p3, p2, p3

    .line 65
    .line 66
    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    .line 67
    .line 68
    .line 69
    move-result v1

    .line 70
    div-float/2addr v1, v3

    .line 71
    add-float/2addr v1, p2

    .line 72
    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    .line 73
    .line 74
    .line 75
    move-result v2

    .line 76
    div-float/2addr v2, v3

    .line 77
    sub-float v2, p2, v2

    .line 78
    .line 79
    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    .line 80
    .line 81
    .line 82
    move-result v4

    .line 83
    div-float/2addr v4, v3

    .line 84
    add-float/2addr v4, p2

    .line 85
    new-instance p2, Landroid/graphics/RectF;

    .line 86
    .line 87
    invoke-direct {p2, v2, p3, v4, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 88
    .line 89
    .line 90
    new-instance p3, Landroid/graphics/RectF;

    .line 91
    .line 92
    iget-object v1, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->y:Lcom/google/android/material/carousel/CarouselOrientationHelper;

    .line 93
    .line 94
    invoke-virtual {v1}, Lcom/google/android/material/carousel/CarouselOrientationHelper;->d()I

    .line 95
    .line 96
    .line 97
    move-result v1

    .line 98
    int-to-float v1, v1

    .line 99
    iget-object v2, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->y:Lcom/google/android/material/carousel/CarouselOrientationHelper;

    .line 100
    .line 101
    invoke-virtual {v2}, Lcom/google/android/material/carousel/CarouselOrientationHelper;->g()I

    .line 102
    .line 103
    .line 104
    move-result v2

    .line 105
    int-to-float v2, v2

    .line 106
    iget-object v3, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->y:Lcom/google/android/material/carousel/CarouselOrientationHelper;

    .line 107
    .line 108
    invoke-virtual {v3}, Lcom/google/android/material/carousel/CarouselOrientationHelper;->e()I

    .line 109
    .line 110
    .line 111
    move-result v3

    .line 112
    int-to-float v3, v3

    .line 113
    iget-object v4, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->y:Lcom/google/android/material/carousel/CarouselOrientationHelper;

    .line 114
    .line 115
    invoke-virtual {v4}, Lcom/google/android/material/carousel/CarouselOrientationHelper;->c()I

    .line 116
    .line 117
    .line 118
    move-result v4

    .line 119
    int-to-float v4, v4

    .line 120
    invoke-direct {p3, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 121
    .line 122
    .line 123
    iget-object v1, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->t:Lcom/google/android/material/carousel/MultiBrowseCarouselStrategy;

    .line 124
    .line 125
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 126
    .line 127
    .line 128
    iget-object v1, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->y:Lcom/google/android/material/carousel/CarouselOrientationHelper;

    .line 129
    .line 130
    invoke-virtual {v1, v0, p2, p3}, Lcom/google/android/material/carousel/CarouselOrientationHelper;->a(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/RectF;)V

    .line 131
    .line 132
    .line 133
    iget-object v1, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->y:Lcom/google/android/material/carousel/CarouselOrientationHelper;

    .line 134
    .line 135
    invoke-virtual {v1, v0, p2, p3}, Lcom/google/android/material/carousel/CarouselOrientationHelper;->i(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/RectF;)V

    .line 136
    .line 137
    .line 138
    check-cast p1, Lcom/google/android/material/carousel/Maskable;

    .line 139
    .line 140
    invoke-interface {p1, v0}, Lcom/google/android/material/carousel/Maskable;->setMaskRectF(Landroid/graphics/RectF;)V

    .line 141
    .line 142
    .line 143
    return-void
.end method

.method public final j0(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-virtual/range {p2 .. p2}, Landroidx/recyclerview/widget/RecyclerView$State;->b()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x0

    .line 8
    if-lez v1, :cond_0

    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/google/android/material/carousel/CarouselLayoutManager;->S0()I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    int-to-float v1, v1

    .line 15
    const/4 v3, 0x0

    .line 16
    cmpg-float v1, v1, v3

    .line 17
    .line 18
    if-gtz v1, :cond_1

    .line 19
    .line 20
    :cond_0
    move v6, v2

    .line 21
    goto/16 :goto_12

    .line 22
    .line 23
    :cond_1
    invoke-virtual {v0}, Lcom/google/android/material/carousel/CarouselLayoutManager;->a1()Z

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    iget-object v3, v0, Lcom/google/android/material/carousel/CarouselLayoutManager;->u:Lcom/google/android/material/carousel/KeylineStateList;

    .line 28
    .line 29
    const/4 v4, 0x1

    .line 30
    if-nez v3, :cond_2

    .line 31
    .line 32
    move v5, v4

    .line 33
    goto :goto_0

    .line 34
    :cond_2
    move v5, v2

    .line 35
    :goto_0
    if-nez v5, :cond_3

    .line 36
    .line 37
    iget-object v3, v3, Lcom/google/android/material/carousel/KeylineStateList;->a:Lcom/google/android/material/carousel/KeylineState;

    .line 38
    .line 39
    iget v3, v3, Lcom/google/android/material/carousel/KeylineState;->f:I

    .line 40
    .line 41
    invoke-virtual {v0}, Lcom/google/android/material/carousel/CarouselLayoutManager;->S0()I

    .line 42
    .line 43
    .line 44
    move-result v6

    .line 45
    if-eq v3, v6, :cond_4

    .line 46
    .line 47
    :cond_3
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/material/carousel/CarouselLayoutManager;->e1(Landroidx/recyclerview/widget/RecyclerView$Recycler;)V

    .line 48
    .line 49
    .line 50
    :cond_4
    iget-object v3, v0, Lcom/google/android/material/carousel/CarouselLayoutManager;->u:Lcom/google/android/material/carousel/KeylineStateList;

    .line 51
    .line 52
    invoke-virtual {v0}, Lcom/google/android/material/carousel/CarouselLayoutManager;->a1()Z

    .line 53
    .line 54
    .line 55
    move-result v6

    .line 56
    if-eqz v6, :cond_5

    .line 57
    .line 58
    invoke-virtual {v3}, Lcom/google/android/material/carousel/KeylineStateList;->a()Lcom/google/android/material/carousel/KeylineState;

    .line 59
    .line 60
    .line 61
    move-result-object v3

    .line 62
    goto :goto_1

    .line 63
    :cond_5
    invoke-virtual {v3}, Lcom/google/android/material/carousel/KeylineStateList;->c()Lcom/google/android/material/carousel/KeylineState;

    .line 64
    .line 65
    .line 66
    move-result-object v3

    .line 67
    :goto_1
    if-eqz v6, :cond_6

    .line 68
    .line 69
    invoke-virtual {v3}, Lcom/google/android/material/carousel/KeylineState;->c()Lcom/google/android/material/carousel/KeylineState$Keyline;

    .line 70
    .line 71
    .line 72
    move-result-object v6

    .line 73
    goto :goto_2

    .line 74
    :cond_6
    invoke-virtual {v3}, Lcom/google/android/material/carousel/KeylineState;->a()Lcom/google/android/material/carousel/KeylineState$Keyline;

    .line 75
    .line 76
    .line 77
    move-result-object v6

    .line 78
    :goto_2
    iget v6, v6, Lcom/google/android/material/carousel/KeylineState$Keyline;->a:F

    .line 79
    .line 80
    iget v3, v3, Lcom/google/android/material/carousel/KeylineState;->a:F

    .line 81
    .line 82
    const/high16 v7, 0x40000000    # 2.0f

    .line 83
    .line 84
    div-float/2addr v3, v7

    .line 85
    invoke-virtual {v0}, Lcom/google/android/material/carousel/CarouselLayoutManager;->a1()Z

    .line 86
    .line 87
    .line 88
    move-result v8

    .line 89
    if-eqz v8, :cond_7

    .line 90
    .line 91
    add-float/2addr v6, v3

    .line 92
    goto :goto_3

    .line 93
    :cond_7
    sub-float/2addr v6, v3

    .line 94
    :goto_3
    iget-object v3, v0, Lcom/google/android/material/carousel/CarouselLayoutManager;->y:Lcom/google/android/material/carousel/CarouselOrientationHelper;

    .line 95
    .line 96
    invoke-virtual {v3}, Lcom/google/android/material/carousel/CarouselOrientationHelper;->f()I

    .line 97
    .line 98
    .line 99
    move-result v3

    .line 100
    int-to-float v3, v3

    .line 101
    sub-float/2addr v3, v6

    .line 102
    float-to-int v3, v3

    .line 103
    iget-object v6, v0, Lcom/google/android/material/carousel/CarouselLayoutManager;->u:Lcom/google/android/material/carousel/KeylineStateList;

    .line 104
    .line 105
    invoke-virtual {v0}, Lcom/google/android/material/carousel/CarouselLayoutManager;->a1()Z

    .line 106
    .line 107
    .line 108
    move-result v8

    .line 109
    if-eqz v8, :cond_8

    .line 110
    .line 111
    invoke-virtual {v6}, Lcom/google/android/material/carousel/KeylineStateList;->c()Lcom/google/android/material/carousel/KeylineState;

    .line 112
    .line 113
    .line 114
    move-result-object v6

    .line 115
    goto :goto_4

    .line 116
    :cond_8
    invoke-virtual {v6}, Lcom/google/android/material/carousel/KeylineStateList;->a()Lcom/google/android/material/carousel/KeylineState;

    .line 117
    .line 118
    .line 119
    move-result-object v6

    .line 120
    :goto_4
    if-eqz v8, :cond_9

    .line 121
    .line 122
    invoke-virtual {v6}, Lcom/google/android/material/carousel/KeylineState;->a()Lcom/google/android/material/carousel/KeylineState$Keyline;

    .line 123
    .line 124
    .line 125
    move-result-object v9

    .line 126
    goto :goto_5

    .line 127
    :cond_9
    invoke-virtual {v6}, Lcom/google/android/material/carousel/KeylineState;->c()Lcom/google/android/material/carousel/KeylineState$Keyline;

    .line 128
    .line 129
    .line 130
    move-result-object v9

    .line 131
    :goto_5
    invoke-virtual/range {p2 .. p2}, Landroidx/recyclerview/widget/RecyclerView$State;->b()I

    .line 132
    .line 133
    .line 134
    move-result v10

    .line 135
    sub-int/2addr v10, v4

    .line 136
    int-to-float v10, v10

    .line 137
    iget v6, v6, Lcom/google/android/material/carousel/KeylineState;->a:F

    .line 138
    .line 139
    mul-float/2addr v10, v6

    .line 140
    if-eqz v8, :cond_a

    .line 141
    .line 142
    const/high16 v6, -0x40800000    # -1.0f

    .line 143
    .line 144
    goto :goto_6

    .line 145
    :cond_a
    const/high16 v6, 0x3f800000    # 1.0f

    .line 146
    .line 147
    :goto_6
    mul-float/2addr v10, v6

    .line 148
    iget v6, v9, Lcom/google/android/material/carousel/KeylineState$Keyline;->a:F

    .line 149
    .line 150
    iget-object v11, v0, Lcom/google/android/material/carousel/CarouselLayoutManager;->y:Lcom/google/android/material/carousel/CarouselOrientationHelper;

    .line 151
    .line 152
    invoke-virtual {v11}, Lcom/google/android/material/carousel/CarouselOrientationHelper;->f()I

    .line 153
    .line 154
    .line 155
    move-result v11

    .line 156
    int-to-float v11, v11

    .line 157
    sub-float/2addr v6, v11

    .line 158
    sub-float/2addr v10, v6

    .line 159
    if-eqz v8, :cond_b

    .line 160
    .line 161
    const/4 v11, -0x1

    .line 162
    goto :goto_7

    .line 163
    :cond_b
    move v11, v4

    .line 164
    :goto_7
    int-to-float v11, v11

    .line 165
    iget v9, v9, Lcom/google/android/material/carousel/KeylineState$Keyline;->d:F

    .line 166
    .line 167
    mul-float/2addr v11, v9

    .line 168
    div-float/2addr v11, v7

    .line 169
    add-float/2addr v11, v10

    .line 170
    float-to-int v7, v11

    .line 171
    if-eqz v8, :cond_c

    .line 172
    .line 173
    invoke-static {v2, v7}, Ljava/lang/Math;->min(II)I

    .line 174
    .line 175
    .line 176
    move-result v7

    .line 177
    goto :goto_8

    .line 178
    :cond_c
    invoke-static {v2, v7}, Ljava/lang/Math;->max(II)I

    .line 179
    .line 180
    .line 181
    move-result v7

    .line 182
    :goto_8
    if-eqz v1, :cond_d

    .line 183
    .line 184
    move v8, v7

    .line 185
    goto :goto_9

    .line 186
    :cond_d
    move v8, v3

    .line 187
    :goto_9
    iput v8, v0, Lcom/google/android/material/carousel/CarouselLayoutManager;->q:I

    .line 188
    .line 189
    if-eqz v1, :cond_e

    .line 190
    .line 191
    move v7, v3

    .line 192
    :cond_e
    iput v7, v0, Lcom/google/android/material/carousel/CarouselLayoutManager;->r:I

    .line 193
    .line 194
    if-eqz v5, :cond_19

    .line 195
    .line 196
    iput v3, v0, Lcom/google/android/material/carousel/CarouselLayoutManager;->p:I

    .line 197
    .line 198
    iget-object v1, v0, Lcom/google/android/material/carousel/CarouselLayoutManager;->u:Lcom/google/android/material/carousel/KeylineStateList;

    .line 199
    .line 200
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->H()I

    .line 201
    .line 202
    .line 203
    move-result v3

    .line 204
    iget v5, v0, Lcom/google/android/material/carousel/CarouselLayoutManager;->q:I

    .line 205
    .line 206
    iget v7, v0, Lcom/google/android/material/carousel/CarouselLayoutManager;->r:I

    .line 207
    .line 208
    invoke-virtual {v0}, Lcom/google/android/material/carousel/CarouselLayoutManager;->a1()Z

    .line 209
    .line 210
    .line 211
    move-result v8

    .line 212
    iget-object v9, v1, Lcom/google/android/material/carousel/KeylineStateList;->b:Ljava/util/List;

    .line 213
    .line 214
    iget-object v10, v1, Lcom/google/android/material/carousel/KeylineStateList;->c:Ljava/util/List;

    .line 215
    .line 216
    iget-object v11, v1, Lcom/google/android/material/carousel/KeylineStateList;->a:Lcom/google/android/material/carousel/KeylineState;

    .line 217
    .line 218
    iget v11, v11, Lcom/google/android/material/carousel/KeylineState;->a:F

    .line 219
    .line 220
    new-instance v12, Ljava/util/HashMap;

    .line 221
    .line 222
    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V

    .line 223
    .line 224
    .line 225
    move v13, v2

    .line 226
    move v14, v13

    .line 227
    :goto_a
    if-ge v13, v3, :cond_13

    .line 228
    .line 229
    if-eqz v8, :cond_f

    .line 230
    .line 231
    sub-int v15, v3, v13

    .line 232
    .line 233
    sub-int/2addr v15, v4

    .line 234
    :goto_b
    move/from16 v16, v4

    .line 235
    .line 236
    goto :goto_c

    .line 237
    :cond_f
    move v15, v13

    .line 238
    goto :goto_b

    .line 239
    :goto_c
    int-to-float v4, v15

    .line 240
    mul-float/2addr v4, v11

    .line 241
    if-eqz v8, :cond_10

    .line 242
    .line 243
    const/4 v6, -0x1

    .line 244
    goto :goto_d

    .line 245
    :cond_10
    move/from16 v6, v16

    .line 246
    .line 247
    :goto_d
    int-to-float v6, v6

    .line 248
    mul-float/2addr v4, v6

    .line 249
    int-to-float v6, v7

    .line 250
    iget v2, v1, Lcom/google/android/material/carousel/KeylineStateList;->g:F

    .line 251
    .line 252
    sub-float/2addr v6, v2

    .line 253
    cmpl-float v2, v4, v6

    .line 254
    .line 255
    if-gtz v2, :cond_11

    .line 256
    .line 257
    invoke-interface {v10}, Ljava/util/List;->size()I

    .line 258
    .line 259
    .line 260
    move-result v2

    .line 261
    sub-int v2, v3, v2

    .line 262
    .line 263
    if-lt v13, v2, :cond_12

    .line 264
    .line 265
    :cond_11
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 266
    .line 267
    .line 268
    move-result-object v2

    .line 269
    invoke-interface {v10}, Ljava/util/List;->size()I

    .line 270
    .line 271
    .line 272
    move-result v4

    .line 273
    add-int/lit8 v4, v4, -0x1

    .line 274
    .line 275
    const/4 v6, 0x0

    .line 276
    invoke-static {v14, v6, v4}, Landroidx/core/math/MathUtils;->b(III)I

    .line 277
    .line 278
    .line 279
    move-result v4

    .line 280
    invoke-interface {v10, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 281
    .line 282
    .line 283
    move-result-object v4

    .line 284
    check-cast v4, Lcom/google/android/material/carousel/KeylineState;

    .line 285
    .line 286
    invoke-virtual {v12, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 287
    .line 288
    .line 289
    add-int/lit8 v14, v14, 0x1

    .line 290
    .line 291
    :cond_12
    add-int/lit8 v13, v13, 0x1

    .line 292
    .line 293
    move/from16 v4, v16

    .line 294
    .line 295
    const/4 v2, 0x0

    .line 296
    goto :goto_a

    .line 297
    :cond_13
    move/from16 v16, v4

    .line 298
    .line 299
    add-int/lit8 v2, v3, -0x1

    .line 300
    .line 301
    const/4 v6, 0x0

    .line 302
    :goto_e
    if-ltz v2, :cond_18

    .line 303
    .line 304
    if-eqz v8, :cond_14

    .line 305
    .line 306
    sub-int v4, v3, v2

    .line 307
    .line 308
    add-int/lit8 v4, v4, -0x1

    .line 309
    .line 310
    goto :goto_f

    .line 311
    :cond_14
    move v4, v2

    .line 312
    :goto_f
    int-to-float v7, v4

    .line 313
    mul-float/2addr v7, v11

    .line 314
    if-eqz v8, :cond_15

    .line 315
    .line 316
    const/4 v10, -0x1

    .line 317
    goto :goto_10

    .line 318
    :cond_15
    move/from16 v10, v16

    .line 319
    .line 320
    :goto_10
    int-to-float v10, v10

    .line 321
    mul-float/2addr v7, v10

    .line 322
    int-to-float v10, v5

    .line 323
    iget v13, v1, Lcom/google/android/material/carousel/KeylineStateList;->f:F

    .line 324
    .line 325
    add-float/2addr v10, v13

    .line 326
    cmpg-float v7, v7, v10

    .line 327
    .line 328
    if-ltz v7, :cond_16

    .line 329
    .line 330
    invoke-interface {v9}, Ljava/util/List;->size()I

    .line 331
    .line 332
    .line 333
    move-result v7

    .line 334
    if-ge v2, v7, :cond_17

    .line 335
    .line 336
    :cond_16
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 337
    .line 338
    .line 339
    move-result-object v4

    .line 340
    invoke-interface {v9}, Ljava/util/List;->size()I

    .line 341
    .line 342
    .line 343
    move-result v7

    .line 344
    add-int/lit8 v7, v7, -0x1

    .line 345
    .line 346
    const/4 v10, 0x0

    .line 347
    invoke-static {v6, v10, v7}, Landroidx/core/math/MathUtils;->b(III)I

    .line 348
    .line 349
    .line 350
    move-result v7

    .line 351
    invoke-interface {v9, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 352
    .line 353
    .line 354
    move-result-object v7

    .line 355
    check-cast v7, Lcom/google/android/material/carousel/KeylineState;

    .line 356
    .line 357
    invoke-virtual {v12, v4, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 358
    .line 359
    .line 360
    add-int/lit8 v6, v6, 0x1

    .line 361
    .line 362
    :cond_17
    add-int/lit8 v2, v2, -0x1

    .line 363
    .line 364
    goto :goto_e

    .line 365
    :cond_18
    iput-object v12, v0, Lcom/google/android/material/carousel/CarouselLayoutManager;->x:Ljava/util/HashMap;

    .line 366
    .line 367
    iget v1, v0, Lcom/google/android/material/carousel/CarouselLayoutManager;->B:I

    .line 368
    .line 369
    const/4 v2, -0x1

    .line 370
    if-eq v1, v2, :cond_19

    .line 371
    .line 372
    invoke-virtual {v0, v1}, Lcom/google/android/material/carousel/CarouselLayoutManager;->U0(I)Lcom/google/android/material/carousel/KeylineState;

    .line 373
    .line 374
    .line 375
    move-result-object v2

    .line 376
    invoke-virtual {v0, v1, v2}, Lcom/google/android/material/carousel/CarouselLayoutManager;->W0(ILcom/google/android/material/carousel/KeylineState;)I

    .line 377
    .line 378
    .line 379
    move-result v1

    .line 380
    iput v1, v0, Lcom/google/android/material/carousel/CarouselLayoutManager;->p:I

    .line 381
    .line 382
    :cond_19
    iget v1, v0, Lcom/google/android/material/carousel/CarouselLayoutManager;->p:I

    .line 383
    .line 384
    iget v2, v0, Lcom/google/android/material/carousel/CarouselLayoutManager;->q:I

    .line 385
    .line 386
    iget v3, v0, Lcom/google/android/material/carousel/CarouselLayoutManager;->r:I

    .line 387
    .line 388
    if-ge v1, v2, :cond_1a

    .line 389
    .line 390
    sub-int v6, v2, v1

    .line 391
    .line 392
    goto :goto_11

    .line 393
    :cond_1a
    if-le v1, v3, :cond_1b

    .line 394
    .line 395
    sub-int v6, v3, v1

    .line 396
    .line 397
    goto :goto_11

    .line 398
    :cond_1b
    const/4 v6, 0x0

    .line 399
    :goto_11
    add-int/2addr v6, v1

    .line 400
    iput v6, v0, Lcom/google/android/material/carousel/CarouselLayoutManager;->p:I

    .line 401
    .line 402
    iget v1, v0, Lcom/google/android/material/carousel/CarouselLayoutManager;->w:I

    .line 403
    .line 404
    invoke-virtual/range {p2 .. p2}, Landroidx/recyclerview/widget/RecyclerView$State;->b()I

    .line 405
    .line 406
    .line 407
    move-result v2

    .line 408
    const/4 v6, 0x0

    .line 409
    invoke-static {v1, v6, v2}, Landroidx/core/math/MathUtils;->b(III)I

    .line 410
    .line 411
    .line 412
    move-result v1

    .line 413
    iput v1, v0, Lcom/google/android/material/carousel/CarouselLayoutManager;->w:I

    .line 414
    .line 415
    iget-object v1, v0, Lcom/google/android/material/carousel/CarouselLayoutManager;->u:Lcom/google/android/material/carousel/KeylineStateList;

    .line 416
    .line 417
    invoke-virtual {v0, v1}, Lcom/google/android/material/carousel/CarouselLayoutManager;->j1(Lcom/google/android/material/carousel/KeylineStateList;)V

    .line 418
    .line 419
    .line 420
    invoke-virtual/range {p0 .. p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->r(Landroidx/recyclerview/widget/RecyclerView$Recycler;)V

    .line 421
    .line 422
    .line 423
    invoke-virtual/range {p0 .. p2}, Lcom/google/android/material/carousel/CarouselLayoutManager;->R0(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)V

    .line 424
    .line 425
    .line 426
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->H()I

    .line 427
    .line 428
    .line 429
    move-result v1

    .line 430
    iput v1, v0, Lcom/google/android/material/carousel/CarouselLayoutManager;->A:I

    .line 431
    .line 432
    return-void

    .line 433
    :goto_12
    invoke-virtual/range {p0 .. p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->p0(Landroidx/recyclerview/widget/RecyclerView$Recycler;)V

    .line 434
    .line 435
    .line 436
    iput v6, v0, Lcom/google/android/material/carousel/CarouselLayoutManager;->w:I

    .line 437
    .line 438
    return-void
.end method

.method public final j1(Lcom/google/android/material/carousel/KeylineStateList;)V
    .locals 4

    .line 1
    iget v0, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->r:I

    .line 2
    .line 3
    iget v1, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->q:I

    .line 4
    .line 5
    if-gt v0, v1, :cond_1

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/google/android/material/carousel/CarouselLayoutManager;->a1()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-virtual {p1}, Lcom/google/android/material/carousel/KeylineStateList;->a()Lcom/google/android/material/carousel/KeylineState;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/material/carousel/KeylineStateList;->c()Lcom/google/android/material/carousel/KeylineState;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    :goto_0
    iput-object p1, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->v:Lcom/google/android/material/carousel/KeylineState;

    .line 23
    .line 24
    goto :goto_1

    .line 25
    :cond_1
    iget v2, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->p:I

    .line 26
    .line 27
    int-to-float v2, v2

    .line 28
    int-to-float v1, v1

    .line 29
    int-to-float v0, v0

    .line 30
    const/4 v3, 0x0

    .line 31
    invoke-virtual {p1, v2, v1, v0, v3}, Lcom/google/android/material/carousel/KeylineStateList;->b(FFFZ)Lcom/google/android/material/carousel/KeylineState;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    iput-object p1, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->v:Lcom/google/android/material/carousel/KeylineState;

    .line 36
    .line 37
    :goto_1
    iget-object p1, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->v:Lcom/google/android/material/carousel/KeylineState;

    .line 38
    .line 39
    iget-object p1, p1, Lcom/google/android/material/carousel/KeylineState;->c:Ljava/util/List;

    .line 40
    .line 41
    iget-object v0, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->s:Lcom/google/android/material/carousel/CarouselLayoutManager$DebugItemDecoration;

    .line 42
    .line 43
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 44
    .line 45
    .line 46
    invoke-static {p1}, Lj$/util/DesugarCollections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    iput-object p1, v0, Lcom/google/android/material/carousel/CarouselLayoutManager$DebugItemDecoration;->b:Ljava/util/List;

    .line 51
    .line 52
    return-void
.end method

.method public final k0(Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->x()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    const/4 v0, 0x0

    .line 6
    if-nez p1, :cond_0

    .line 7
    .line 8
    iput v0, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->w:I

    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->w(I)Landroid/view/View;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-static {p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->N(Landroid/view/View;)I

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    iput p1, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->w:I

    .line 20
    .line 21
    return-void
.end method

.method public final k1()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->H()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget v1, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->A:I

    .line 6
    .line 7
    if-eq v0, v1, :cond_4

    .line 8
    .line 9
    iget-object v2, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->u:Lcom/google/android/material/carousel/KeylineStateList;

    .line 10
    .line 11
    if-nez v2, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    iget-object v2, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->t:Lcom/google/android/material/carousel/MultiBrowseCarouselStrategy;

    .line 15
    .line 16
    iget v3, v2, Lcom/google/android/material/carousel/MultiBrowseCarouselStrategy;->c:I

    .line 17
    .line 18
    if-ge v1, v3, :cond_1

    .line 19
    .line 20
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->H()I

    .line 21
    .line 22
    .line 23
    move-result v3

    .line 24
    iget v4, v2, Lcom/google/android/material/carousel/MultiBrowseCarouselStrategy;->c:I

    .line 25
    .line 26
    if-ge v3, v4, :cond_2

    .line 27
    .line 28
    :cond_1
    iget v3, v2, Lcom/google/android/material/carousel/MultiBrowseCarouselStrategy;->c:I

    .line 29
    .line 30
    if-lt v1, v3, :cond_3

    .line 31
    .line 32
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->H()I

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    iget v2, v2, Lcom/google/android/material/carousel/MultiBrowseCarouselStrategy;->c:I

    .line 37
    .line 38
    if-ge v1, v2, :cond_3

    .line 39
    .line 40
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/material/carousel/CarouselLayoutManager;->f1()V

    .line 41
    .line 42
    .line 43
    :cond_3
    iput v0, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->A:I

    .line 44
    .line 45
    :cond_4
    :goto_0
    return-void
.end method

.method public final l(Landroidx/recyclerview/widget/RecyclerView$State;)I
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->x()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    iget-object v0, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->u:Lcom/google/android/material/carousel/KeylineStateList;

    .line 8
    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->H()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    const/4 v1, 0x1

    .line 16
    if-gt v0, v1, :cond_0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->u:Lcom/google/android/material/carousel/KeylineStateList;

    .line 20
    .line 21
    iget-object v0, v0, Lcom/google/android/material/carousel/KeylineStateList;->a:Lcom/google/android/material/carousel/KeylineState;

    .line 22
    .line 23
    iget v0, v0, Lcom/google/android/material/carousel/KeylineState;->a:F

    .line 24
    .line 25
    invoke-virtual {p0, p1}, Lcom/google/android/material/carousel/CarouselLayoutManager;->n(Landroidx/recyclerview/widget/RecyclerView$State;)I

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    int-to-float p1, p1

    .line 30
    div-float/2addr v0, p1

    .line 31
    iget p1, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->n:I

    .line 32
    .line 33
    int-to-float p1, p1

    .line 34
    mul-float/2addr p1, v0

    .line 35
    float-to-int p1, p1

    .line 36
    return p1

    .line 37
    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 38
    return p1
.end method

.method public final m(Landroidx/recyclerview/widget/RecyclerView$State;)I
    .locals 0

    .line 1
    iget p1, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->p:I

    .line 2
    .line 3
    return p1
.end method

.method public final n(Landroidx/recyclerview/widget/RecyclerView$State;)I
    .locals 1

    .line 1
    iget p1, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->r:I

    .line 2
    .line 3
    iget v0, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->q:I

    .line 4
    .line 5
    sub-int/2addr p1, v0

    .line 6
    return p1
.end method

.method public final o(Landroidx/recyclerview/widget/RecyclerView$State;)I
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->x()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    iget-object v0, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->u:Lcom/google/android/material/carousel/KeylineStateList;

    .line 8
    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->H()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    const/4 v1, 0x1

    .line 16
    if-gt v0, v1, :cond_0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->u:Lcom/google/android/material/carousel/KeylineStateList;

    .line 20
    .line 21
    iget-object v0, v0, Lcom/google/android/material/carousel/KeylineStateList;->a:Lcom/google/android/material/carousel/KeylineState;

    .line 22
    .line 23
    iget v0, v0, Lcom/google/android/material/carousel/KeylineState;->a:F

    .line 24
    .line 25
    invoke-virtual {p0, p1}, Lcom/google/android/material/carousel/CarouselLayoutManager;->q(Landroidx/recyclerview/widget/RecyclerView$State;)I

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    int-to-float p1, p1

    .line 30
    div-float/2addr v0, p1

    .line 31
    iget p1, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->o:I

    .line 32
    .line 33
    int-to-float p1, p1

    .line 34
    mul-float/2addr p1, v0

    .line 35
    float-to-int p1, p1

    .line 36
    return p1

    .line 37
    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 38
    return p1
.end method

.method public final p(Landroidx/recyclerview/widget/RecyclerView$State;)I
    .locals 0

    .line 1
    iget p1, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->p:I

    .line 2
    .line 3
    return p1
.end method

.method public final q(Landroidx/recyclerview/widget/RecyclerView$State;)I
    .locals 1

    .line 1
    iget p1, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->r:I

    .line 2
    .line 3
    iget v0, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->q:I

    .line 4
    .line 5
    sub-int/2addr p1, v0

    .line 6
    return p1
.end method

.method public final t()Landroidx/recyclerview/widget/RecyclerView$LayoutParams;
    .locals 2

    .line 1
    new-instance v0, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    .line 2
    .line 3
    const/4 v1, -0x2

    .line 4
    invoke-direct {v0, v1, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(II)V

    .line 5
    .line 6
    .line 7
    return-object v0
.end method

.method public final u0(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;Landroid/graphics/Rect;ZZ)Z
    .locals 3

    .line 1
    iget-object p3, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->u:Lcom/google/android/material/carousel/KeylineStateList;

    .line 2
    .line 3
    const/4 p4, 0x0

    .line 4
    if-nez p3, :cond_0

    .line 5
    .line 6
    goto :goto_0

    .line 7
    :cond_0
    invoke-static {p2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->N(Landroid/view/View;)I

    .line 8
    .line 9
    .line 10
    move-result p3

    .line 11
    invoke-static {p2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->N(Landroid/view/View;)I

    .line 12
    .line 13
    .line 14
    move-result p5

    .line 15
    invoke-virtual {p0, p5}, Lcom/google/android/material/carousel/CarouselLayoutManager;->U0(I)Lcom/google/android/material/carousel/KeylineState;

    .line 16
    .line 17
    .line 18
    move-result-object p5

    .line 19
    invoke-virtual {p0, p3, p5}, Lcom/google/android/material/carousel/CarouselLayoutManager;->X0(ILcom/google/android/material/carousel/KeylineState;)I

    .line 20
    .line 21
    .line 22
    move-result p3

    .line 23
    if-nez p3, :cond_1

    .line 24
    .line 25
    :goto_0
    return p4

    .line 26
    :cond_1
    iget p5, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->p:I

    .line 27
    .line 28
    iget v0, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->q:I

    .line 29
    .line 30
    iget v1, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->r:I

    .line 31
    .line 32
    add-int v2, p5, p3

    .line 33
    .line 34
    if-ge v2, v0, :cond_2

    .line 35
    .line 36
    sub-int p3, v0, p5

    .line 37
    .line 38
    goto :goto_1

    .line 39
    :cond_2
    if-le v2, v1, :cond_3

    .line 40
    .line 41
    sub-int p3, v1, p5

    .line 42
    .line 43
    :cond_3
    :goto_1
    iget-object v2, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->u:Lcom/google/android/material/carousel/KeylineStateList;

    .line 44
    .line 45
    add-int/2addr p5, p3

    .line 46
    int-to-float p3, p5

    .line 47
    int-to-float p5, v0

    .line 48
    int-to-float v0, v1

    .line 49
    invoke-virtual {v2, p3, p5, v0, p4}, Lcom/google/android/material/carousel/KeylineStateList;->b(FFFZ)Lcom/google/android/material/carousel/KeylineState;

    .line 50
    .line 51
    .line 52
    move-result-object p3

    .line 53
    invoke-static {p2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->N(Landroid/view/View;)I

    .line 54
    .line 55
    .line 56
    move-result p2

    .line 57
    invoke-virtual {p0, p2, p3}, Lcom/google/android/material/carousel/CarouselLayoutManager;->X0(ILcom/google/android/material/carousel/KeylineState;)I

    .line 58
    .line 59
    .line 60
    move-result p2

    .line 61
    invoke-virtual {p0}, Lcom/google/android/material/carousel/CarouselLayoutManager;->Z0()Z

    .line 62
    .line 63
    .line 64
    move-result p3

    .line 65
    if-eqz p3, :cond_4

    .line 66
    .line 67
    invoke-virtual {p1, p2, p4}, Landroidx/recyclerview/widget/RecyclerView;->scrollBy(II)V

    .line 68
    .line 69
    .line 70
    goto :goto_2

    .line 71
    :cond_4
    invoke-virtual {p1, p4, p2}, Landroidx/recyclerview/widget/RecyclerView;->scrollBy(II)V

    .line 72
    .line 73
    .line 74
    :goto_2
    const/4 p1, 0x1

    .line 75
    return p1
.end method

.method public final w0(ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/material/carousel/CarouselLayoutManager;->Z0()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/material/carousel/CarouselLayoutManager;->g1(ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)I

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    return p1

    .line 12
    :cond_0
    const/4 p1, 0x0

    .line 13
    return p1
.end method

.method public final x0(I)V
    .locals 2

    .line 1
    iput p1, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->B:I

    .line 2
    .line 3
    iget-object v0, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->u:Lcom/google/android/material/carousel/KeylineStateList;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/android/material/carousel/CarouselLayoutManager;->U0(I)Lcom/google/android/material/carousel/KeylineState;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {p0, p1, v0}, Lcom/google/android/material/carousel/CarouselLayoutManager;->W0(ILcom/google/android/material/carousel/KeylineState;)I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    iput v0, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->p:I

    .line 17
    .line 18
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->H()I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    add-int/lit8 v0, v0, -0x1

    .line 23
    .line 24
    const/4 v1, 0x0

    .line 25
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    invoke-static {p1, v1, v0}, Landroidx/core/math/MathUtils;->b(III)I

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    iput p1, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->w:I

    .line 34
    .line 35
    iget-object p1, p0, Lcom/google/android/material/carousel/CarouselLayoutManager;->u:Lcom/google/android/material/carousel/KeylineStateList;

    .line 36
    .line 37
    invoke-virtual {p0, p1}, Lcom/google/android/material/carousel/CarouselLayoutManager;->j1(Lcom/google/android/material/carousel/KeylineStateList;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->v0()V

    .line 41
    .line 42
    .line 43
    return-void
.end method

.method public final y0(ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/material/carousel/CarouselLayoutManager;->g()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/material/carousel/CarouselLayoutManager;->g1(ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)I

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    return p1

    .line 12
    :cond_0
    const/4 p1, 0x0

    .line 13
    return p1
.end method
