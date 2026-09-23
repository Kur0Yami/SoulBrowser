.class public abstract Landroidx/recyclerview/widget/ItemTouchHelper$Callback;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/widget/ItemTouchHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Callback"
.end annotation


# static fields
.field public static final b:Landroid/view/animation/Interpolator;

.field public static final c:Landroid/view/animation/Interpolator;


# instance fields
.field public a:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroidx/recyclerview/widget/ItemTouchHelper$Callback$1;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->b:Landroid/view/animation/Interpolator;

    .line 7
    .line 8
    new-instance v0, Landroidx/recyclerview/widget/ItemTouchHelper$Callback$2;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->c:Landroid/view/animation/Interpolator;

    .line 14
    .line 15
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, -0x1

    .line 5
    iput v0, p0, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->a:I

    .line 6
    .line 7
    return-void
.end method

.method public static c(II)I
    .locals 3

    .line 1
    const v0, 0x303030

    .line 2
    .line 3
    .line 4
    and-int v1, p0, v0

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    return p0

    .line 9
    :cond_0
    not-int v2, v1

    .line 10
    and-int/2addr p0, v2

    .line 11
    if-nez p1, :cond_1

    .line 12
    .line 13
    shr-int/lit8 p1, v1, 0x2

    .line 14
    .line 15
    :goto_0
    or-int/2addr p0, p1

    .line 16
    return p0

    .line 17
    :cond_1
    shr-int/lit8 p1, v1, 0x1

    .line 18
    .line 19
    const v1, -0x303031

    .line 20
    .line 21
    .line 22
    and-int/2addr v1, p1

    .line 23
    or-int/2addr p0, v1

    .line 24
    and-int/2addr p1, v0

    .line 25
    shr-int/lit8 p1, p1, 0x2

    .line 26
    .line 27
    goto :goto_0
.end method

.method public static d(II)I
    .locals 3

    .line 1
    const v0, 0xc0c0c

    and-int v1, p0, v0

    if-nez v1, :cond_0

    return p0

    :cond_0
    not-int v2, v1

    and-int/2addr p0, v2

    if-nez p1, :cond_1

    shl-int/lit8 p1, v1, 0x2

    :goto_0
    or-int/2addr p0, p1

    return p0

    :cond_1
    shl-int/lit8 p1, v1, 0x1

    const v1, -0xc0c0d

    and-int/2addr v1, p1

    or-int/2addr p0, v1

    and-int/2addr p1, v0

    shl-int/lit8 p1, p1, 0x2

    goto :goto_0
.end method

.method public static j(II)I
    .locals 1

    .line 1
    or-int v0, p1, p0

    shl-int/lit8 p1, p1, 0x8

    or-int/2addr p1, v0

    shl-int/lit8 p0, p0, 0x10

    or-int/2addr p0, p1

    return p0
.end method


# virtual methods
.method public a(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0

    .line 1
    return-void
.end method

.method public b(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 1

    .line 1
    iget-object p1, p2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->a:Landroid/view/View;

    .line 2
    .line 3
    sget p2, Landroidx/recyclerview/R$id;->item_touch_helper_previous_elevation:I

    .line 4
    .line 5
    invoke-virtual {p1, p2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p2

    .line 9
    instance-of v0, p2, Ljava/lang/Float;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    check-cast p2, Ljava/lang/Float;

    .line 14
    .line 15
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    .line 16
    .line 17
    .line 18
    move-result p2

    .line 19
    invoke-static {p1, p2}, Landroidx/core/view/ViewCompat;->E(Landroid/view/View;F)V

    .line 20
    .line 21
    .line 22
    :cond_0
    sget p2, Landroidx/recyclerview/R$id;->item_touch_helper_previous_elevation:I

    .line 23
    .line 24
    const/4 v0, 0x0

    .line 25
    invoke-virtual {p1, p2, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    const/4 p2, 0x0

    .line 29
    invoke-virtual {p1, p2}, Landroid/view/View;->setTranslationX(F)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1, p2}, Landroid/view/View;->setTranslationY(F)V

    .line 33
    .line 34
    .line 35
    return-void
.end method

.method public e()I
    .locals 1

    .line 1
    const/4 v0, 0x0

    return v0
.end method

.method public abstract f()I
.end method

.method public final g(Landroidx/recyclerview/widget/RecyclerView;IIJ)I
    .locals 6

    .line 1
    iget v0, p0, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->a:I

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    sget v0, Landroidx/recyclerview/R$dimen;->item_touch_helper_max_drag_scroll_per_frame:I

    .line 11
    .line 12
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    iput p1, p0, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->a:I

    .line 17
    .line 18
    :cond_0
    iget p1, p0, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->a:I

    .line 19
    .line 20
    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    int-to-float v2, p3

    .line 25
    invoke-static {v2}, Ljava/lang/Math;->signum(F)F

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    float-to-int v2, v2

    .line 30
    int-to-float v0, v0

    .line 31
    const/high16 v3, 0x3f800000    # 1.0f

    .line 32
    .line 33
    mul-float/2addr v0, v3

    .line 34
    int-to-float p2, p2

    .line 35
    div-float/2addr v0, p2

    .line 36
    invoke-static {v3, v0}, Ljava/lang/Math;->min(FF)F

    .line 37
    .line 38
    .line 39
    move-result p2

    .line 40
    mul-int/2addr v2, p1

    .line 41
    int-to-float p1, v2

    .line 42
    sget-object v0, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->c:Landroid/view/animation/Interpolator;

    .line 43
    .line 44
    check-cast v0, Landroidx/recyclerview/widget/ItemTouchHelper$Callback$2;

    .line 45
    .line 46
    invoke-virtual {v0, p2}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback$2;->getInterpolation(F)F

    .line 47
    .line 48
    .line 49
    move-result p2

    .line 50
    mul-float/2addr p1, p2

    .line 51
    float-to-int p1, p1

    .line 52
    const-wide/16 v4, 0x7d0

    .line 53
    .line 54
    cmp-long p2, p4, v4

    .line 55
    .line 56
    if-lez p2, :cond_1

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_1
    long-to-float p2, p4

    .line 60
    const/high16 p4, 0x44fa0000    # 2000.0f

    .line 61
    .line 62
    div-float v3, p2, p4

    .line 63
    .line 64
    :goto_0
    int-to-float p1, p1

    .line 65
    sget-object p2, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->b:Landroid/view/animation/Interpolator;

    .line 66
    .line 67
    check-cast p2, Landroidx/recyclerview/widget/ItemTouchHelper$Callback$1;

    .line 68
    .line 69
    invoke-virtual {p2, v3}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback$1;->getInterpolation(F)F

    .line 70
    .line 71
    .line 72
    move-result p2

    .line 73
    mul-float/2addr p1, p2

    .line 74
    float-to-int p1, p1

    .line 75
    if-nez p1, :cond_3

    .line 76
    .line 77
    if-lez p3, :cond_2

    .line 78
    .line 79
    const/4 p1, 0x1

    .line 80
    return p1

    .line 81
    :cond_2
    return v1

    .line 82
    :cond_3
    return p1
.end method

.method public h()Z
    .locals 1

    .line 1
    instance-of v0, p0, Lcom/mycompany/app/quick/ListDragHelper;

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public i()Z
    .locals 1

    .line 1
    instance-of v0, p0, Lcom/mycompany/app/quick/ListDragHelper;

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public k(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;FFIZ)V
    .locals 3

    .line 1
    iget-object p1, p3, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->a:Landroid/view/View;

    .line 2
    .line 3
    if-eqz p7, :cond_3

    .line 4
    .line 5
    sget p3, Landroidx/recyclerview/R$id;->item_touch_helper_previous_elevation:I

    .line 6
    .line 7
    invoke-virtual {p1, p3}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p3

    .line 11
    if-nez p3, :cond_3

    .line 12
    .line 13
    invoke-static {p1}, Landroidx/core/view/ViewCompat;->k(Landroid/view/View;)F

    .line 14
    .line 15
    .line 16
    move-result p3

    .line 17
    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 18
    .line 19
    .line 20
    move-result-object p3

    .line 21
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    .line 22
    .line 23
    .line 24
    move-result p6

    .line 25
    const/4 p7, 0x0

    .line 26
    const/4 v0, 0x0

    .line 27
    :goto_0
    if-ge v0, p6, :cond_2

    .line 28
    .line 29
    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    if-ne v1, p1, :cond_0

    .line 34
    .line 35
    goto :goto_1

    .line 36
    :cond_0
    invoke-static {v1}, Landroidx/core/view/ViewCompat;->k(Landroid/view/View;)F

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    cmpl-float v2, v1, p7

    .line 41
    .line 42
    if-lez v2, :cond_1

    .line 43
    .line 44
    move p7, v1

    .line 45
    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_2
    const/high16 p2, 0x3f800000    # 1.0f

    .line 49
    .line 50
    add-float/2addr p7, p2

    .line 51
    invoke-static {p1, p7}, Landroidx/core/view/ViewCompat;->E(Landroid/view/View;F)V

    .line 52
    .line 53
    .line 54
    sget p2, Landroidx/recyclerview/R$id;->item_touch_helper_previous_elevation:I

    .line 55
    .line 56
    invoke-virtual {p1, p2, p3}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 57
    .line 58
    .line 59
    :cond_3
    invoke-virtual {p1, p4}, Landroid/view/View;->setTranslationX(F)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {p1, p5}, Landroid/view/View;->setTranslationY(F)V

    .line 63
    .line 64
    .line 65
    return-void
.end method

.method public abstract l(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
.end method

.method public m(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 1
    return-void
.end method

.method public abstract n()V
.end method
