.class public Lcom/mycompany/app/behavior/MyBehaviorDialog;
.super Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mycompany/app/behavior/MyBehaviorDialog$SettleRunnable;,
        Lcom/mycompany/app/behavior/MyBehaviorDialog$SavedState;,
        Lcom/mycompany/app/behavior/MyBehaviorDialog$BottomSheetCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Landroid/view/View;",
        ">",
        "Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior<",
        "TV;>;"
    }
.end annotation


# instance fields
.field public A:I

.field public B:I

.field public C:Ljava/lang/ref/WeakReference;

.field public D:Ljava/lang/ref/WeakReference;

.field public E:Z

.field public final F:Ljava/util/ArrayList;

.field public G:Landroid/view/VelocityTracker;

.field public H:I

.field public I:I

.field public J:Z

.field public K:Ljava/util/HashMap;

.field public final L:Landroidx/customview/widget/ViewDragHelper$Callback;

.field public final c:Z

.field public final f:F

.field public final g:Z

.field public final h:Z

.field public i:I

.field public j:Lcom/mycompany/app/behavior/MyBehaviorDialog$SettleRunnable;

.field public k:I

.field public l:I

.field public m:I

.field public n:Z

.field public o:Z

.field public p:Z

.field public q:Z

.field public r:I

.field public s:Z

.field public t:Landroid/view/View;

.field public u:Landroidx/customview/widget/ViewDragHelper;

.field public v:Z

.field public w:I

.field public x:Z

.field public y:I

.field public z:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/mycompany/app/behavior/MyBehaviorDialog;->c:Z

    const/4 v1, 0x0

    .line 3
    iput-object v1, p0, Lcom/mycompany/app/behavior/MyBehaviorDialog;->j:Lcom/mycompany/app/behavior/MyBehaviorDialog$SettleRunnable;

    .line 4
    iput-boolean v0, p0, Lcom/mycompany/app/behavior/MyBehaviorDialog;->o:Z

    const/4 v0, 0x4

    .line 5
    iput v0, p0, Lcom/mycompany/app/behavior/MyBehaviorDialog;->r:I

    .line 6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mycompany/app/behavior/MyBehaviorDialog;->F:Ljava/util/ArrayList;

    .line 7
    new-instance v0, Lcom/mycompany/app/behavior/MyBehaviorDialog$2;

    invoke-direct {v0, p0}, Lcom/mycompany/app/behavior/MyBehaviorDialog$2;-><init>(Lcom/mycompany/app/behavior/MyBehaviorDialog;)V

    iput-object v0, p0, Lcom/mycompany/app/behavior/MyBehaviorDialog;->L:Landroidx/customview/widget/ViewDragHelper$Callback;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 9
    iput-boolean v0, p0, Lcom/mycompany/app/behavior/MyBehaviorDialog;->c:Z

    const/4 v1, 0x0

    .line 10
    iput-object v1, p0, Lcom/mycompany/app/behavior/MyBehaviorDialog;->j:Lcom/mycompany/app/behavior/MyBehaviorDialog$SettleRunnable;

    .line 11
    iput-boolean v0, p0, Lcom/mycompany/app/behavior/MyBehaviorDialog;->o:Z

    const/4 v1, 0x4

    .line 12
    iput v1, p0, Lcom/mycompany/app/behavior/MyBehaviorDialog;->r:I

    .line 13
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/mycompany/app/behavior/MyBehaviorDialog;->F:Ljava/util/ArrayList;

    .line 14
    new-instance v1, Lcom/mycompany/app/behavior/MyBehaviorDialog$2;

    invoke-direct {v1, p0}, Lcom/mycompany/app/behavior/MyBehaviorDialog$2;-><init>(Lcom/mycompany/app/behavior/MyBehaviorDialog;)V

    iput-object v1, p0, Lcom/mycompany/app/behavior/MyBehaviorDialog;->L:Landroidx/customview/widget/ViewDragHelper$Callback;

    .line 15
    iput-boolean v0, p0, Lcom/mycompany/app/behavior/MyBehaviorDialog;->g:Z

    .line 16
    iput-boolean v0, p0, Lcom/mycompany/app/behavior/MyBehaviorDialog;->h:Z

    .line 17
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    .line 18
    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/mycompany/app/behavior/MyBehaviorDialog;->f:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p2, 0x1

    .line 20
    iput-boolean p2, p0, Lcom/mycompany/app/behavior/MyBehaviorDialog;->c:Z

    const/4 v0, 0x0

    .line 21
    iput-object v0, p0, Lcom/mycompany/app/behavior/MyBehaviorDialog;->j:Lcom/mycompany/app/behavior/MyBehaviorDialog$SettleRunnable;

    .line 22
    iput-boolean p2, p0, Lcom/mycompany/app/behavior/MyBehaviorDialog;->o:Z

    const/4 v0, 0x4

    .line 23
    iput v0, p0, Lcom/mycompany/app/behavior/MyBehaviorDialog;->r:I

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mycompany/app/behavior/MyBehaviorDialog;->F:Ljava/util/ArrayList;

    .line 25
    new-instance v0, Lcom/mycompany/app/behavior/MyBehaviorDialog$2;

    invoke-direct {v0, p0}, Lcom/mycompany/app/behavior/MyBehaviorDialog$2;-><init>(Lcom/mycompany/app/behavior/MyBehaviorDialog;)V

    iput-object v0, p0, Lcom/mycompany/app/behavior/MyBehaviorDialog;->L:Landroidx/customview/widget/ViewDragHelper$Callback;

    .line 26
    iput-boolean p2, p0, Lcom/mycompany/app/behavior/MyBehaviorDialog;->g:Z

    .line 27
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    .line 28
    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/mycompany/app/behavior/MyBehaviorDialog;->f:F

    return-void
.end method


# virtual methods
.method public final A(Landroid/view/View;)Landroid/view/View;
    .locals 3

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    goto :goto_3

    .line 4
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    const/4 v1, 0x0

    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    :goto_0
    move v0, v1

    .line 12
    goto :goto_1

    .line 13
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    if-eqz v0, :cond_2

    .line 18
    .line 19
    instance-of v2, v0, Ljava/lang/String;

    .line 20
    .line 21
    if-eqz v2, :cond_2

    .line 22
    .line 23
    const-string v2, "skip_scroll"

    .line 24
    .line 25
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-eqz v0, :cond_2

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_2
    instance-of v0, p1, Landroidx/recyclerview/widget/RecyclerView;

    .line 33
    .line 34
    if-eqz v0, :cond_5

    .line 35
    .line 36
    move-object v0, p1

    .line 37
    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    .line 38
    .line 39
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    if-nez v0, :cond_3

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_3
    instance-of v2, v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 47
    .line 48
    if-nez v2, :cond_4

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_4
    check-cast v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 52
    .line 53
    iget v0, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->p:I

    .line 54
    .line 55
    const/4 v2, 0x1

    .line 56
    if-eq v0, v2, :cond_5

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_5
    invoke-static {p1}, Landroidx/core/view/ViewCompat;->r(Landroid/view/View;)Z

    .line 60
    .line 61
    .line 62
    move-result v0

    .line 63
    :goto_1
    if-eqz v0, :cond_6

    .line 64
    .line 65
    return-object p1

    .line 66
    :cond_6
    instance-of v0, p1, Landroid/view/ViewGroup;

    .line 67
    .line 68
    if-nez v0, :cond_7

    .line 69
    .line 70
    goto :goto_3

    .line 71
    :cond_7
    check-cast p1, Landroid/view/ViewGroup;

    .line 72
    .line 73
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    .line 74
    .line 75
    .line 76
    move-result v0

    .line 77
    :goto_2
    if-ge v1, v0, :cond_9

    .line 78
    .line 79
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 80
    .line 81
    .line 82
    move-result-object v2

    .line 83
    invoke-virtual {p0, v2}, Lcom/mycompany/app/behavior/MyBehaviorDialog;->A(Landroid/view/View;)Landroid/view/View;

    .line 84
    .line 85
    .line 86
    move-result-object v2

    .line 87
    if-eqz v2, :cond_8

    .line 88
    .line 89
    return-object v2

    .line 90
    :cond_8
    add-int/lit8 v1, v1, 0x1

    .line 91
    .line 92
    goto :goto_2

    .line 93
    :cond_9
    :goto_3
    const/4 p1, 0x0

    .line 94
    return-object p1
.end method

.method public final B()I
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/mycompany/app/behavior/MyBehaviorDialog;->c:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget v0, p0, Lcom/mycompany/app/behavior/MyBehaviorDialog;->k:I

    .line 6
    .line 7
    return v0

    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    return v0
.end method

.method public final C(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/mycompany/app/behavior/MyBehaviorDialog;->n:Z

    .line 2
    .line 3
    if-eq v0, p1, :cond_1

    .line 4
    .line 5
    iput-boolean p1, p0, Lcom/mycompany/app/behavior/MyBehaviorDialog;->n:Z

    .line 6
    .line 7
    if-nez p1, :cond_0

    .line 8
    .line 9
    iget p1, p0, Lcom/mycompany/app/behavior/MyBehaviorDialog;->r:I

    .line 10
    .line 11
    const/4 v0, 0x5

    .line 12
    if-ne p1, v0, :cond_0

    .line 13
    .line 14
    const/4 p1, 0x4

    .line 15
    invoke-virtual {p0, p1}, Lcom/mycompany/app/behavior/MyBehaviorDialog;->e(I)V

    .line 16
    .line 17
    .line 18
    :cond_0
    invoke-virtual {p0}, Lcom/mycompany/app/behavior/MyBehaviorDialog;->H()V

    .line 19
    .line 20
    .line 21
    :cond_1
    return-void
.end method

.method public final D(I)V
    .locals 3

    .line 1
    iget v0, p0, Lcom/mycompany/app/behavior/MyBehaviorDialog;->r:I

    .line 2
    .line 3
    if-ne v0, p1, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    iput p1, p0, Lcom/mycompany/app/behavior/MyBehaviorDialog;->r:I

    .line 7
    .line 8
    iget-object v0, p0, Lcom/mycompany/app/behavior/MyBehaviorDialog;->C:Ljava/lang/ref/WeakReference;

    .line 9
    .line 10
    if-nez v0, :cond_1

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_1
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Landroid/view/View;

    .line 18
    .line 19
    if-nez v0, :cond_2

    .line 20
    .line 21
    :goto_0
    return-void

    .line 22
    :cond_2
    const/4 v0, 0x3

    .line 23
    const/4 v1, 0x0

    .line 24
    if-ne p1, v0, :cond_3

    .line 25
    .line 26
    const/4 v0, 0x1

    .line 27
    invoke-virtual {p0, v0}, Lcom/mycompany/app/behavior/MyBehaviorDialog;->I(Z)V

    .line 28
    .line 29
    .line 30
    goto :goto_1

    .line 31
    :cond_3
    const/4 v0, 0x6

    .line 32
    if-eq p1, v0, :cond_4

    .line 33
    .line 34
    const/4 v0, 0x5

    .line 35
    if-eq p1, v0, :cond_4

    .line 36
    .line 37
    const/4 v0, 0x4

    .line 38
    if-ne p1, v0, :cond_5

    .line 39
    .line 40
    :cond_4
    invoke-virtual {p0, v1}, Lcom/mycompany/app/behavior/MyBehaviorDialog;->I(Z)V

    .line 41
    .line 42
    .line 43
    :cond_5
    :goto_1
    iget-object v0, p0, Lcom/mycompany/app/behavior/MyBehaviorDialog;->F:Ljava/util/ArrayList;

    .line 44
    .line 45
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 46
    .line 47
    .line 48
    move-result v2

    .line 49
    if-ge v1, v2, :cond_6

    .line 50
    .line 51
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    check-cast v0, Lcom/mycompany/app/behavior/MyBehaviorDialog$BottomSheetCallback;

    .line 56
    .line 57
    invoke-virtual {v0, p1}, Lcom/mycompany/app/behavior/MyBehaviorDialog$BottomSheetCallback;->a(I)V

    .line 58
    .line 59
    .line 60
    add-int/lit8 v1, v1, 0x1

    .line 61
    .line 62
    goto :goto_1

    .line 63
    :cond_6
    invoke-virtual {p0}, Lcom/mycompany/app/behavior/MyBehaviorDialog;->H()V

    .line 64
    .line 65
    .line 66
    return-void
.end method

.method public final E(Landroid/view/View;I)V
    .locals 3

    .line 1
    const/4 v0, 0x4

    .line 2
    if-ne p2, v0, :cond_0

    .line 3
    .line 4
    iget v0, p0, Lcom/mycompany/app/behavior/MyBehaviorDialog;->m:I

    .line 5
    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v0, 0x6

    .line 8
    const/4 v1, 0x3

    .line 9
    if-ne p2, v0, :cond_1

    .line 10
    .line 11
    iget v0, p0, Lcom/mycompany/app/behavior/MyBehaviorDialog;->l:I

    .line 12
    .line 13
    iget-boolean v2, p0, Lcom/mycompany/app/behavior/MyBehaviorDialog;->c:Z

    .line 14
    .line 15
    if-eqz v2, :cond_3

    .line 16
    .line 17
    iget v2, p0, Lcom/mycompany/app/behavior/MyBehaviorDialog;->k:I

    .line 18
    .line 19
    if-gt v0, v2, :cond_3

    .line 20
    .line 21
    move p2, v1

    .line 22
    move v0, v2

    .line 23
    goto :goto_0

    .line 24
    :cond_1
    if-ne p2, v1, :cond_2

    .line 25
    .line 26
    invoke-virtual {p0}, Lcom/mycompany/app/behavior/MyBehaviorDialog;->B()I

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    goto :goto_0

    .line 31
    :cond_2
    iget-boolean v0, p0, Lcom/mycompany/app/behavior/MyBehaviorDialog;->n:Z

    .line 32
    .line 33
    if-eqz v0, :cond_4

    .line 34
    .line 35
    const/4 v0, 0x5

    .line 36
    if-ne p2, v0, :cond_4

    .line 37
    .line 38
    iget v0, p0, Lcom/mycompany/app/behavior/MyBehaviorDialog;->z:I

    .line 39
    .line 40
    :cond_3
    :goto_0
    const/4 v1, 0x0

    .line 41
    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/mycompany/app/behavior/MyBehaviorDialog;->G(Landroid/view/View;IIZ)V

    .line 42
    .line 43
    .line 44
    return-void

    .line 45
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 46
    .line 47
    const-string v0, "Illegal state argument: "

    .line 48
    .line 49
    invoke-static {p2, v0}, Landroid/support/v4/media/a;->e(ILjava/lang/String;)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p2

    .line 53
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    throw p1
.end method

.method public final F(Landroid/view/View;F)Z
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget-boolean v1, p0, Lcom/mycompany/app/behavior/MyBehaviorDialog;->q:Z

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    iget v1, p0, Lcom/mycompany/app/behavior/MyBehaviorDialog;->B:I

    .line 10
    .line 11
    if-le v0, v1, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    iget v1, p0, Lcom/mycompany/app/behavior/MyBehaviorDialog;->m:I

    .line 15
    .line 16
    if-ge v0, v1, :cond_1

    .line 17
    .line 18
    goto :goto_1

    .line 19
    :cond_1
    invoke-virtual {p0}, Lcom/mycompany/app/behavior/MyBehaviorDialog;->y()I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    int-to-float p1, p1

    .line 28
    const v1, 0x3dcccccd    # 0.1f

    .line 29
    .line 30
    .line 31
    mul-float/2addr p2, v1

    .line 32
    add-float/2addr p2, p1

    .line 33
    iget p1, p0, Lcom/mycompany/app/behavior/MyBehaviorDialog;->m:I

    .line 34
    .line 35
    int-to-float p1, p1

    .line 36
    sub-float/2addr p2, p1

    .line 37
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    .line 38
    .line 39
    .line 40
    move-result p1

    .line 41
    int-to-float p2, v0

    .line 42
    div-float/2addr p1, p2

    .line 43
    const/high16 p2, 0x3f000000    # 0.5f

    .line 44
    .line 45
    cmpl-float p1, p1, p2

    .line 46
    .line 47
    if-lez p1, :cond_2

    .line 48
    .line 49
    :goto_0
    const/4 p1, 0x1

    .line 50
    return p1

    .line 51
    :cond_2
    :goto_1
    const/4 p1, 0x0

    .line 52
    return p1
.end method

.method public final G(Landroid/view/View;IIZ)V
    .locals 1

    .line 1
    const/4 v0, 0x5

    .line 2
    if-ne p2, v0, :cond_0

    .line 3
    .line 4
    invoke-virtual {p0, p2}, Lcom/mycompany/app/behavior/MyBehaviorDialog;->D(I)V

    .line 5
    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/behavior/MyBehaviorDialog;->u:Landroidx/customview/widget/ViewDragHelper;

    .line 9
    .line 10
    if-eqz v0, :cond_4

    .line 11
    .line 12
    if-eqz p4, :cond_1

    .line 13
    .line 14
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    .line 15
    .line 16
    .line 17
    move-result p4

    .line 18
    invoke-virtual {v0, p4, p3}, Landroidx/customview/widget/ViewDragHelper;->o(II)Z

    .line 19
    .line 20
    .line 21
    move-result p3

    .line 22
    if-eqz p3, :cond_4

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    .line 26
    .line 27
    .line 28
    move-result p4

    .line 29
    invoke-virtual {v0, p1, p4, p3}, Landroidx/customview/widget/ViewDragHelper;->q(Landroid/view/View;II)Z

    .line 30
    .line 31
    .line 32
    move-result p3

    .line 33
    if-eqz p3, :cond_4

    .line 34
    .line 35
    :goto_0
    const/4 p3, 0x2

    .line 36
    invoke-virtual {p0, p3}, Lcom/mycompany/app/behavior/MyBehaviorDialog;->D(I)V

    .line 37
    .line 38
    .line 39
    iget-object p3, p0, Lcom/mycompany/app/behavior/MyBehaviorDialog;->j:Lcom/mycompany/app/behavior/MyBehaviorDialog$SettleRunnable;

    .line 40
    .line 41
    if-nez p3, :cond_2

    .line 42
    .line 43
    new-instance p3, Lcom/mycompany/app/behavior/MyBehaviorDialog$SettleRunnable;

    .line 44
    .line 45
    invoke-direct {p3, p0, p1, p2}, Lcom/mycompany/app/behavior/MyBehaviorDialog$SettleRunnable;-><init>(Lcom/mycompany/app/behavior/MyBehaviorDialog;Landroid/view/View;I)V

    .line 46
    .line 47
    .line 48
    iput-object p3, p0, Lcom/mycompany/app/behavior/MyBehaviorDialog;->j:Lcom/mycompany/app/behavior/MyBehaviorDialog$SettleRunnable;

    .line 49
    .line 50
    :cond_2
    iget-object p3, p0, Lcom/mycompany/app/behavior/MyBehaviorDialog;->j:Lcom/mycompany/app/behavior/MyBehaviorDialog$SettleRunnable;

    .line 51
    .line 52
    iget-boolean p4, p3, Lcom/mycompany/app/behavior/MyBehaviorDialog$SettleRunnable;->f:Z

    .line 53
    .line 54
    if-nez p4, :cond_3

    .line 55
    .line 56
    iput p2, p3, Lcom/mycompany/app/behavior/MyBehaviorDialog$SettleRunnable;->g:I

    .line 57
    .line 58
    invoke-virtual {p1, p3}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 59
    .line 60
    .line 61
    iget-object p1, p0, Lcom/mycompany/app/behavior/MyBehaviorDialog;->j:Lcom/mycompany/app/behavior/MyBehaviorDialog$SettleRunnable;

    .line 62
    .line 63
    const/4 p2, 0x1

    .line 64
    iput-boolean p2, p1, Lcom/mycompany/app/behavior/MyBehaviorDialog$SettleRunnable;->f:Z

    .line 65
    .line 66
    return-void

    .line 67
    :cond_3
    iput p2, p3, Lcom/mycompany/app/behavior/MyBehaviorDialog$SettleRunnable;->g:I

    .line 68
    .line 69
    return-void

    .line 70
    :cond_4
    invoke-virtual {p0, p2}, Lcom/mycompany/app/behavior/MyBehaviorDialog;->D(I)V

    .line 71
    .line 72
    .line 73
    return-void
.end method

.method public final H()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/behavior/MyBehaviorDialog;->C:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Landroid/view/View;

    .line 11
    .line 12
    if-nez v0, :cond_1

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_1
    const/high16 v1, 0x80000

    .line 16
    .line 17
    invoke-static {v0, v1}, Landroidx/core/view/ViewCompat;->v(Landroid/view/View;I)V

    .line 18
    .line 19
    .line 20
    const/4 v1, 0x0

    .line 21
    invoke-static {v0, v1}, Landroidx/core/view/ViewCompat;->s(Landroid/view/View;I)V

    .line 22
    .line 23
    .line 24
    const/high16 v2, 0x40000

    .line 25
    .line 26
    invoke-static {v0, v2}, Landroidx/core/view/ViewCompat;->v(Landroid/view/View;I)V

    .line 27
    .line 28
    .line 29
    invoke-static {v0, v1}, Landroidx/core/view/ViewCompat;->s(Landroid/view/View;I)V

    .line 30
    .line 31
    .line 32
    const/high16 v2, 0x100000

    .line 33
    .line 34
    invoke-static {v0, v2}, Landroidx/core/view/ViewCompat;->v(Landroid/view/View;I)V

    .line 35
    .line 36
    .line 37
    invoke-static {v0, v1}, Landroidx/core/view/ViewCompat;->s(Landroid/view/View;I)V

    .line 38
    .line 39
    .line 40
    iget-boolean v1, p0, Lcom/mycompany/app/behavior/MyBehaviorDialog;->n:Z

    .line 41
    .line 42
    if-eqz v1, :cond_2

    .line 43
    .line 44
    iget v1, p0, Lcom/mycompany/app/behavior/MyBehaviorDialog;->r:I

    .line 45
    .line 46
    const/4 v2, 0x5

    .line 47
    if-eq v1, v2, :cond_2

    .line 48
    .line 49
    sget-object v1, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->l:Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    .line 50
    .line 51
    new-instance v3, Lcom/mycompany/app/behavior/MyBehaviorDialog$3;

    .line 52
    .line 53
    invoke-direct {v3, p0, v2}, Lcom/mycompany/app/behavior/MyBehaviorDialog$3;-><init>(Lcom/mycompany/app/behavior/MyBehaviorDialog;I)V

    .line 54
    .line 55
    .line 56
    invoke-static {v0, v1, v3}, Landroidx/core/view/ViewCompat;->w(Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;Landroidx/core/view/accessibility/AccessibilityViewCommand;)V

    .line 57
    .line 58
    .line 59
    :cond_2
    iget v1, p0, Lcom/mycompany/app/behavior/MyBehaviorDialog;->r:I

    .line 60
    .line 61
    const/4 v2, 0x6

    .line 62
    const/4 v3, 0x4

    .line 63
    const/4 v4, 0x3

    .line 64
    if-eq v1, v4, :cond_6

    .line 65
    .line 66
    if-eq v1, v3, :cond_4

    .line 67
    .line 68
    if-eq v1, v2, :cond_3

    .line 69
    .line 70
    :goto_0
    return-void

    .line 71
    :cond_3
    sget-object v1, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->k:Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    .line 72
    .line 73
    new-instance v2, Lcom/mycompany/app/behavior/MyBehaviorDialog$3;

    .line 74
    .line 75
    invoke-direct {v2, p0, v3}, Lcom/mycompany/app/behavior/MyBehaviorDialog$3;-><init>(Lcom/mycompany/app/behavior/MyBehaviorDialog;I)V

    .line 76
    .line 77
    .line 78
    invoke-static {v0, v1, v2}, Landroidx/core/view/ViewCompat;->w(Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;Landroidx/core/view/accessibility/AccessibilityViewCommand;)V

    .line 79
    .line 80
    .line 81
    sget-object v1, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->j:Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    .line 82
    .line 83
    new-instance v2, Lcom/mycompany/app/behavior/MyBehaviorDialog$3;

    .line 84
    .line 85
    invoke-direct {v2, p0, v4}, Lcom/mycompany/app/behavior/MyBehaviorDialog$3;-><init>(Lcom/mycompany/app/behavior/MyBehaviorDialog;I)V

    .line 86
    .line 87
    .line 88
    invoke-static {v0, v1, v2}, Landroidx/core/view/ViewCompat;->w(Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;Landroidx/core/view/accessibility/AccessibilityViewCommand;)V

    .line 89
    .line 90
    .line 91
    return-void

    .line 92
    :cond_4
    iget-boolean v1, p0, Lcom/mycompany/app/behavior/MyBehaviorDialog;->c:Z

    .line 93
    .line 94
    if-eqz v1, :cond_5

    .line 95
    .line 96
    move v2, v4

    .line 97
    :cond_5
    sget-object v1, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->j:Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    .line 98
    .line 99
    new-instance v3, Lcom/mycompany/app/behavior/MyBehaviorDialog$3;

    .line 100
    .line 101
    invoke-direct {v3, p0, v2}, Lcom/mycompany/app/behavior/MyBehaviorDialog$3;-><init>(Lcom/mycompany/app/behavior/MyBehaviorDialog;I)V

    .line 102
    .line 103
    .line 104
    invoke-static {v0, v1, v3}, Landroidx/core/view/ViewCompat;->w(Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;Landroidx/core/view/accessibility/AccessibilityViewCommand;)V

    .line 105
    .line 106
    .line 107
    return-void

    .line 108
    :cond_6
    iget-boolean v1, p0, Lcom/mycompany/app/behavior/MyBehaviorDialog;->c:Z

    .line 109
    .line 110
    if-eqz v1, :cond_7

    .line 111
    .line 112
    move v2, v3

    .line 113
    :cond_7
    sget-object v1, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->k:Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    .line 114
    .line 115
    new-instance v3, Lcom/mycompany/app/behavior/MyBehaviorDialog$3;

    .line 116
    .line 117
    invoke-direct {v3, p0, v2}, Lcom/mycompany/app/behavior/MyBehaviorDialog$3;-><init>(Lcom/mycompany/app/behavior/MyBehaviorDialog;I)V

    .line 118
    .line 119
    .line 120
    invoke-static {v0, v1, v3}, Landroidx/core/view/ViewCompat;->w(Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;Landroidx/core/view/accessibility/AccessibilityViewCommand;)V

    .line 121
    .line 122
    .line 123
    return-void
.end method

.method public final I(Z)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/behavior/MyBehaviorDialog;->C:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_2

    .line 6
    :cond_0
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Landroid/view/View;

    .line 11
    .line 12
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    instance-of v1, v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    .line 17
    .line 18
    if-nez v1, :cond_1

    .line 19
    .line 20
    goto :goto_2

    .line 21
    :cond_1
    check-cast v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    .line 22
    .line 23
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    if-eqz p1, :cond_2

    .line 28
    .line 29
    iget-object v2, p0, Lcom/mycompany/app/behavior/MyBehaviorDialog;->K:Ljava/util/HashMap;

    .line 30
    .line 31
    if-nez v2, :cond_6

    .line 32
    .line 33
    new-instance v2, Ljava/util/HashMap;

    .line 34
    .line 35
    invoke-direct {v2, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 36
    .line 37
    .line 38
    iput-object v2, p0, Lcom/mycompany/app/behavior/MyBehaviorDialog;->K:Ljava/util/HashMap;

    .line 39
    .line 40
    :cond_2
    const/4 v2, 0x0

    .line 41
    :goto_0
    if-ge v2, v1, :cond_5

    .line 42
    .line 43
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 44
    .line 45
    .line 46
    move-result-object v3

    .line 47
    iget-object v4, p0, Lcom/mycompany/app/behavior/MyBehaviorDialog;->C:Ljava/lang/ref/WeakReference;

    .line 48
    .line 49
    invoke-virtual {v4}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v4

    .line 53
    if-ne v3, v4, :cond_3

    .line 54
    .line 55
    goto :goto_1

    .line 56
    :cond_3
    if-eqz p1, :cond_4

    .line 57
    .line 58
    iget-object v4, p0, Lcom/mycompany/app/behavior/MyBehaviorDialog;->K:Ljava/util/HashMap;

    .line 59
    .line 60
    invoke-virtual {v3}, Landroid/view/View;->getImportantForAccessibility()I

    .line 61
    .line 62
    .line 63
    move-result v5

    .line 64
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 65
    .line 66
    .line 67
    move-result-object v5

    .line 68
    invoke-virtual {v4, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    :cond_4
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 72
    .line 73
    goto :goto_0

    .line 74
    :cond_5
    if-nez p1, :cond_6

    .line 75
    .line 76
    const/4 p1, 0x0

    .line 77
    iput-object p1, p0, Lcom/mycompany/app/behavior/MyBehaviorDialog;->K:Ljava/util/HashMap;

    .line 78
    .line 79
    :cond_6
    :goto_2
    return-void
.end method

.method public final e(I)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/mycompany/app/behavior/MyBehaviorDialog;->r:I

    .line 2
    .line 3
    if-ne p1, v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/behavior/MyBehaviorDialog;->C:Ljava/lang/ref/WeakReference;

    .line 7
    .line 8
    if-nez v0, :cond_2

    .line 9
    .line 10
    const/4 v0, 0x4

    .line 11
    if-eq p1, v0, :cond_1

    .line 12
    .line 13
    const/4 v0, 0x3

    .line 14
    if-eq p1, v0, :cond_1

    .line 15
    .line 16
    const/4 v0, 0x6

    .line 17
    if-eq p1, v0, :cond_1

    .line 18
    .line 19
    iget-boolean v0, p0, Lcom/mycompany/app/behavior/MyBehaviorDialog;->n:Z

    .line 20
    .line 21
    if-eqz v0, :cond_3

    .line 22
    .line 23
    const/4 v0, 0x5

    .line 24
    if-ne p1, v0, :cond_3

    .line 25
    .line 26
    :cond_1
    iput p1, p0, Lcom/mycompany/app/behavior/MyBehaviorDialog;->r:I

    .line 27
    .line 28
    return-void

    .line 29
    :cond_2
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    check-cast v0, Landroid/view/View;

    .line 34
    .line 35
    if-nez v0, :cond_4

    .line 36
    .line 37
    :cond_3
    :goto_0
    return-void

    .line 38
    :cond_4
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    if-eqz v1, :cond_5

    .line 43
    .line 44
    invoke-interface {v1}, Landroid/view/ViewParent;->isLayoutRequested()Z

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    if-eqz v1, :cond_5

    .line 49
    .line 50
    invoke-virtual {v0}, Landroid/view/View;->isAttachedToWindow()Z

    .line 51
    .line 52
    .line 53
    move-result v1

    .line 54
    if-eqz v1, :cond_5

    .line 55
    .line 56
    new-instance v1, Lcom/mycompany/app/behavior/MyBehaviorDialog$1;

    .line 57
    .line 58
    invoke-direct {v1, p0, v0, p1}, Lcom/mycompany/app/behavior/MyBehaviorDialog$1;-><init>(Lcom/mycompany/app/behavior/MyBehaviorDialog;Landroid/view/View;I)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 62
    .line 63
    .line 64
    return-void

    .line 65
    :cond_5
    invoke-virtual {p0, v0, p1}, Lcom/mycompany/app/behavior/MyBehaviorDialog;->E(Landroid/view/View;I)V

    .line 66
    .line 67
    .line 68
    return-void
.end method

.method public final i(Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;)V
    .locals 0

    .line 1
    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lcom/mycompany/app/behavior/MyBehaviorDialog;->C:Ljava/lang/ref/WeakReference;

    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/behavior/MyBehaviorDialog;->u:Landroidx/customview/widget/ViewDragHelper;

    .line 5
    .line 6
    return-void
.end method

.method public final l()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/mycompany/app/behavior/MyBehaviorDialog;->C:Ljava/lang/ref/WeakReference;

    .line 3
    .line 4
    iput-object v0, p0, Lcom/mycompany/app/behavior/MyBehaviorDialog;->u:Landroidx/customview/widget/ViewDragHelper;

    .line 5
    .line 6
    return-void
.end method

.method public final m(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 9

    .line 1
    invoke-virtual {p2}, Landroid/view/View;->isShown()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    const/4 v2, 0x1

    .line 7
    if-eqz v0, :cond_d

    .line 8
    .line 9
    iget-boolean v0, p0, Lcom/mycompany/app/behavior/MyBehaviorDialog;->o:Z

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    goto/16 :goto_4

    .line 14
    .line 15
    :cond_0
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    const/4 v3, 0x5

    .line 20
    if-ne v0, v3, :cond_1

    .line 21
    .line 22
    iput-boolean v2, p0, Lcom/mycompany/app/behavior/MyBehaviorDialog;->v:Z

    .line 23
    .line 24
    return v1

    .line 25
    :cond_1
    const/4 v3, 0x0

    .line 26
    const/4 v4, -0x1

    .line 27
    if-nez v0, :cond_2

    .line 28
    .line 29
    iput v4, p0, Lcom/mycompany/app/behavior/MyBehaviorDialog;->H:I

    .line 30
    .line 31
    iget-object v5, p0, Lcom/mycompany/app/behavior/MyBehaviorDialog;->G:Landroid/view/VelocityTracker;

    .line 32
    .line 33
    if-eqz v5, :cond_2

    .line 34
    .line 35
    invoke-virtual {v5}, Landroid/view/VelocityTracker;->recycle()V

    .line 36
    .line 37
    .line 38
    iput-object v3, p0, Lcom/mycompany/app/behavior/MyBehaviorDialog;->G:Landroid/view/VelocityTracker;

    .line 39
    .line 40
    :cond_2
    iget-object v5, p0, Lcom/mycompany/app/behavior/MyBehaviorDialog;->G:Landroid/view/VelocityTracker;

    .line 41
    .line 42
    if-nez v5, :cond_3

    .line 43
    .line 44
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    .line 45
    .line 46
    .line 47
    move-result-object v5

    .line 48
    iput-object v5, p0, Lcom/mycompany/app/behavior/MyBehaviorDialog;->G:Landroid/view/VelocityTracker;

    .line 49
    .line 50
    :cond_3
    iget-object v5, p0, Lcom/mycompany/app/behavior/MyBehaviorDialog;->G:Landroid/view/VelocityTracker;

    .line 51
    .line 52
    invoke-virtual {v5, p3}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 53
    .line 54
    .line 55
    const/4 v5, 0x2

    .line 56
    if-eqz v0, :cond_5

    .line 57
    .line 58
    if-eq v0, v2, :cond_4

    .line 59
    .line 60
    const/4 p2, 0x3

    .line 61
    if-eq v0, p2, :cond_4

    .line 62
    .line 63
    goto :goto_2

    .line 64
    :cond_4
    iput-boolean v1, p0, Lcom/mycompany/app/behavior/MyBehaviorDialog;->J:Z

    .line 65
    .line 66
    iput v4, p0, Lcom/mycompany/app/behavior/MyBehaviorDialog;->H:I

    .line 67
    .line 68
    iget-boolean p2, p0, Lcom/mycompany/app/behavior/MyBehaviorDialog;->v:Z

    .line 69
    .line 70
    if-eqz p2, :cond_9

    .line 71
    .line 72
    iput-boolean v1, p0, Lcom/mycompany/app/behavior/MyBehaviorDialog;->v:Z

    .line 73
    .line 74
    return v1

    .line 75
    :cond_5
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getX()F

    .line 76
    .line 77
    .line 78
    move-result v6

    .line 79
    float-to-int v6, v6

    .line 80
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    .line 81
    .line 82
    .line 83
    move-result v7

    .line 84
    float-to-int v7, v7

    .line 85
    iput v7, p0, Lcom/mycompany/app/behavior/MyBehaviorDialog;->I:I

    .line 86
    .line 87
    iget v7, p0, Lcom/mycompany/app/behavior/MyBehaviorDialog;->r:I

    .line 88
    .line 89
    if-eq v7, v5, :cond_7

    .line 90
    .line 91
    iget-object v7, p0, Lcom/mycompany/app/behavior/MyBehaviorDialog;->D:Ljava/lang/ref/WeakReference;

    .line 92
    .line 93
    if-eqz v7, :cond_6

    .line 94
    .line 95
    invoke-virtual {v7}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    move-result-object v7

    .line 99
    check-cast v7, Landroid/view/View;

    .line 100
    .line 101
    goto :goto_0

    .line 102
    :cond_6
    move-object v7, v3

    .line 103
    :goto_0
    if-eqz v7, :cond_7

    .line 104
    .line 105
    iget v8, p0, Lcom/mycompany/app/behavior/MyBehaviorDialog;->I:I

    .line 106
    .line 107
    invoke-virtual {p1, v7, v6, v8}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->i(Landroid/view/View;II)Z

    .line 108
    .line 109
    .line 110
    move-result v7

    .line 111
    if-eqz v7, :cond_7

    .line 112
    .line 113
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getActionIndex()I

    .line 114
    .line 115
    .line 116
    move-result v7

    .line 117
    invoke-virtual {p3, v7}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 118
    .line 119
    .line 120
    move-result v7

    .line 121
    iput v7, p0, Lcom/mycompany/app/behavior/MyBehaviorDialog;->H:I

    .line 122
    .line 123
    iput-boolean v2, p0, Lcom/mycompany/app/behavior/MyBehaviorDialog;->J:Z

    .line 124
    .line 125
    :cond_7
    iget v7, p0, Lcom/mycompany/app/behavior/MyBehaviorDialog;->H:I

    .line 126
    .line 127
    if-ne v7, v4, :cond_8

    .line 128
    .line 129
    iget v4, p0, Lcom/mycompany/app/behavior/MyBehaviorDialog;->I:I

    .line 130
    .line 131
    invoke-virtual {p1, p2, v6, v4}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->i(Landroid/view/View;II)Z

    .line 132
    .line 133
    .line 134
    move-result p2

    .line 135
    if-nez p2, :cond_8

    .line 136
    .line 137
    move p2, v2

    .line 138
    goto :goto_1

    .line 139
    :cond_8
    move p2, v1

    .line 140
    :goto_1
    iput-boolean p2, p0, Lcom/mycompany/app/behavior/MyBehaviorDialog;->v:Z

    .line 141
    .line 142
    :cond_9
    :goto_2
    iget-boolean p2, p0, Lcom/mycompany/app/behavior/MyBehaviorDialog;->v:Z

    .line 143
    .line 144
    if-nez p2, :cond_a

    .line 145
    .line 146
    iget-object p2, p0, Lcom/mycompany/app/behavior/MyBehaviorDialog;->u:Landroidx/customview/widget/ViewDragHelper;

    .line 147
    .line 148
    if-eqz p2, :cond_a

    .line 149
    .line 150
    invoke-virtual {p2, p3}, Landroidx/customview/widget/ViewDragHelper;->p(Landroid/view/MotionEvent;)Z

    .line 151
    .line 152
    .line 153
    move-result p2

    .line 154
    if-eqz p2, :cond_a

    .line 155
    .line 156
    goto :goto_3

    .line 157
    :cond_a
    iget-object p2, p0, Lcom/mycompany/app/behavior/MyBehaviorDialog;->D:Ljava/lang/ref/WeakReference;

    .line 158
    .line 159
    if-eqz p2, :cond_b

    .line 160
    .line 161
    invoke-virtual {p2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 162
    .line 163
    .line 164
    move-result-object p2

    .line 165
    move-object v3, p2

    .line 166
    check-cast v3, Landroid/view/View;

    .line 167
    .line 168
    :cond_b
    if-ne v0, v5, :cond_c

    .line 169
    .line 170
    if-eqz v3, :cond_c

    .line 171
    .line 172
    iget-boolean p2, p0, Lcom/mycompany/app/behavior/MyBehaviorDialog;->v:Z

    .line 173
    .line 174
    if-nez p2, :cond_c

    .line 175
    .line 176
    iget p2, p0, Lcom/mycompany/app/behavior/MyBehaviorDialog;->r:I

    .line 177
    .line 178
    if-eq p2, v2, :cond_c

    .line 179
    .line 180
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getX()F

    .line 181
    .line 182
    .line 183
    move-result p2

    .line 184
    float-to-int p2, p2

    .line 185
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    .line 186
    .line 187
    .line 188
    move-result v0

    .line 189
    float-to-int v0, v0

    .line 190
    invoke-virtual {p1, v3, p2, v0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->i(Landroid/view/View;II)Z

    .line 191
    .line 192
    .line 193
    move-result p1

    .line 194
    if-nez p1, :cond_c

    .line 195
    .line 196
    iget-object p1, p0, Lcom/mycompany/app/behavior/MyBehaviorDialog;->u:Landroidx/customview/widget/ViewDragHelper;

    .line 197
    .line 198
    if-eqz p1, :cond_c

    .line 199
    .line 200
    iget p1, p0, Lcom/mycompany/app/behavior/MyBehaviorDialog;->I:I

    .line 201
    .line 202
    int-to-float p1, p1

    .line 203
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    .line 204
    .line 205
    .line 206
    move-result p2

    .line 207
    sub-float/2addr p1, p2

    .line 208
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    .line 209
    .line 210
    .line 211
    move-result p1

    .line 212
    iget-object p2, p0, Lcom/mycompany/app/behavior/MyBehaviorDialog;->u:Landroidx/customview/widget/ViewDragHelper;

    .line 213
    .line 214
    iget p2, p2, Landroidx/customview/widget/ViewDragHelper;->b:I

    .line 215
    .line 216
    int-to-float p2, p2

    .line 217
    cmpl-float p1, p1, p2

    .line 218
    .line 219
    if-lez p1, :cond_c

    .line 220
    .line 221
    :goto_3
    return v2

    .line 222
    :cond_c
    return v1

    .line 223
    :cond_d
    :goto_4
    iput-boolean v2, p0, Lcom/mycompany/app/behavior/MyBehaviorDialog;->v:Z

    .line 224
    .line 225
    return v1
.end method

.method public final n(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;I)Z
    .locals 6

    .line 1
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/mycompany/app/behavior/MyBehaviorDialog;->C:Ljava/lang/ref/WeakReference;

    .line 6
    .line 7
    const/4 v2, 0x1

    .line 8
    if-nez v1, :cond_0

    .line 9
    .line 10
    const/high16 v1, 0x42800000    # 64.0f

    .line 11
    .line 12
    invoke-static {v0, v1}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    float-to-int v1, v1

    .line 17
    iput v1, p0, Lcom/mycompany/app/behavior/MyBehaviorDialog;->i:I

    .line 18
    .line 19
    new-instance v1, Ljava/lang/ref/WeakReference;

    .line 20
    .line 21
    invoke-direct {v1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    iput-object v1, p0, Lcom/mycompany/app/behavior/MyBehaviorDialog;->C:Ljava/lang/ref/WeakReference;

    .line 25
    .line 26
    invoke-virtual {p0}, Lcom/mycompany/app/behavior/MyBehaviorDialog;->H()V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p2}, Landroid/view/View;->getImportantForAccessibility()I

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    if-nez v1, :cond_0

    .line 34
    .line 35
    invoke-virtual {p2, v2}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 36
    .line 37
    .line 38
    :cond_0
    iget-object v1, p0, Lcom/mycompany/app/behavior/MyBehaviorDialog;->u:Landroidx/customview/widget/ViewDragHelper;

    .line 39
    .line 40
    if-nez v1, :cond_1

    .line 41
    .line 42
    new-instance v1, Landroidx/customview/widget/ViewDragHelper;

    .line 43
    .line 44
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 45
    .line 46
    .line 47
    move-result-object v3

    .line 48
    iget-object v4, p0, Lcom/mycompany/app/behavior/MyBehaviorDialog;->L:Landroidx/customview/widget/ViewDragHelper$Callback;

    .line 49
    .line 50
    invoke-direct {v1, v3, p1, v4}, Landroidx/customview/widget/ViewDragHelper;-><init>(Landroid/content/Context;Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroidx/customview/widget/ViewDragHelper$Callback;)V

    .line 51
    .line 52
    .line 53
    iput-object v1, p0, Lcom/mycompany/app/behavior/MyBehaviorDialog;->u:Landroidx/customview/widget/ViewDragHelper;

    .line 54
    .line 55
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    .line 56
    .line 57
    .line 58
    move-result v1

    .line 59
    invoke-virtual {p1, p2, p3}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->q(Landroid/view/View;I)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    .line 63
    .line 64
    .line 65
    move-result p3

    .line 66
    iput p3, p0, Lcom/mycompany/app/behavior/MyBehaviorDialog;->y:I

    .line 67
    .line 68
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    .line 69
    .line 70
    .line 71
    move-result p1

    .line 72
    iput p1, p0, Lcom/mycompany/app/behavior/MyBehaviorDialog;->z:I

    .line 73
    .line 74
    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    .line 75
    .line 76
    .line 77
    move-result p1

    .line 78
    iput p1, p0, Lcom/mycompany/app/behavior/MyBehaviorDialog;->A:I

    .line 79
    .line 80
    iget p1, p0, Lcom/mycompany/app/behavior/MyBehaviorDialog;->z:I

    .line 81
    .line 82
    int-to-float p1, p1

    .line 83
    invoke-static {v0, p1}, Lcom/mycompany/app/main/MainUtil;->K6(Landroid/content/Context;F)F

    .line 84
    .line 85
    .line 86
    move-result p1

    .line 87
    const/high16 p3, 0x44160000    # 600.0f

    .line 88
    .line 89
    cmpg-float p1, p1, p3

    .line 90
    .line 91
    const/4 p3, 0x0

    .line 92
    if-gez p1, :cond_2

    .line 93
    .line 94
    move p1, v2

    .line 95
    goto :goto_0

    .line 96
    :cond_2
    move p1, p3

    .line 97
    :goto_0
    iput-boolean p1, p0, Lcom/mycompany/app/behavior/MyBehaviorDialog;->p:Z

    .line 98
    .line 99
    const/4 v0, 0x3

    .line 100
    if-eqz p1, :cond_3

    .line 101
    .line 102
    iput-boolean v2, p0, Lcom/mycompany/app/behavior/MyBehaviorDialog;->q:Z

    .line 103
    .line 104
    iput v0, p0, Lcom/mycompany/app/behavior/MyBehaviorDialog;->r:I

    .line 105
    .line 106
    :cond_3
    iget p1, p0, Lcom/mycompany/app/behavior/MyBehaviorDialog;->z:I

    .line 107
    .line 108
    iget v3, p0, Lcom/mycompany/app/behavior/MyBehaviorDialog;->A:I

    .line 109
    .line 110
    const/4 v4, 0x2

    .line 111
    const/4 v5, 0x4

    .line 112
    if-ne p1, v3, :cond_4

    .line 113
    .line 114
    div-int/2addr p1, v5

    .line 115
    sget v3, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 116
    .line 117
    mul-int/2addr v3, v5

    .line 118
    invoke-static {p1, v3}, Ljava/lang/Math;->min(II)I

    .line 119
    .line 120
    .line 121
    move-result p1

    .line 122
    iput p1, p0, Lcom/mycompany/app/behavior/MyBehaviorDialog;->B:I

    .line 123
    .line 124
    goto :goto_1

    .line 125
    :cond_4
    sub-int/2addr p1, v3

    .line 126
    div-int/2addr v3, v4

    .line 127
    add-int/2addr v3, p1

    .line 128
    iput v3, p0, Lcom/mycompany/app/behavior/MyBehaviorDialog;->B:I

    .line 129
    .line 130
    :goto_1
    iget p1, p0, Lcom/mycompany/app/behavior/MyBehaviorDialog;->z:I

    .line 131
    .line 132
    iget v3, p0, Lcom/mycompany/app/behavior/MyBehaviorDialog;->A:I

    .line 133
    .line 134
    sub-int/2addr p1, v3

    .line 135
    invoke-static {p3, p1}, Ljava/lang/Math;->max(II)I

    .line 136
    .line 137
    .line 138
    move-result p1

    .line 139
    iput p1, p0, Lcom/mycompany/app/behavior/MyBehaviorDialog;->k:I

    .line 140
    .line 141
    iget p1, p0, Lcom/mycompany/app/behavior/MyBehaviorDialog;->z:I

    .line 142
    .line 143
    int-to-float p1, p1

    .line 144
    const/high16 v3, 0x3f000000    # 0.5f

    .line 145
    .line 146
    mul-float/2addr v3, p1

    .line 147
    float-to-int p1, v3

    .line 148
    iput p1, p0, Lcom/mycompany/app/behavior/MyBehaviorDialog;->l:I

    .line 149
    .line 150
    invoke-virtual {p0}, Lcom/mycompany/app/behavior/MyBehaviorDialog;->y()I

    .line 151
    .line 152
    .line 153
    move-result p1

    .line 154
    iget-boolean v3, p0, Lcom/mycompany/app/behavior/MyBehaviorDialog;->c:Z

    .line 155
    .line 156
    if-eqz v3, :cond_5

    .line 157
    .line 158
    iget v3, p0, Lcom/mycompany/app/behavior/MyBehaviorDialog;->z:I

    .line 159
    .line 160
    sub-int/2addr v3, p1

    .line 161
    iget p1, p0, Lcom/mycompany/app/behavior/MyBehaviorDialog;->k:I

    .line 162
    .line 163
    invoke-static {v3, p1}, Ljava/lang/Math;->max(II)I

    .line 164
    .line 165
    .line 166
    move-result p1

    .line 167
    iput p1, p0, Lcom/mycompany/app/behavior/MyBehaviorDialog;->m:I

    .line 168
    .line 169
    goto :goto_2

    .line 170
    :cond_5
    iget v3, p0, Lcom/mycompany/app/behavior/MyBehaviorDialog;->z:I

    .line 171
    .line 172
    sub-int/2addr v3, p1

    .line 173
    iput v3, p0, Lcom/mycompany/app/behavior/MyBehaviorDialog;->m:I

    .line 174
    .line 175
    :goto_2
    iget p1, p0, Lcom/mycompany/app/behavior/MyBehaviorDialog;->r:I

    .line 176
    .line 177
    if-ne p1, v0, :cond_6

    .line 178
    .line 179
    invoke-virtual {p0}, Lcom/mycompany/app/behavior/MyBehaviorDialog;->B()I

    .line 180
    .line 181
    .line 182
    move-result p1

    .line 183
    sget-object v0, Landroidx/core/view/ViewCompat;->a:Ljava/util/WeakHashMap;

    .line 184
    .line 185
    invoke-virtual {p2, p1}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 186
    .line 187
    .line 188
    goto :goto_3

    .line 189
    :cond_6
    const/4 v0, 0x6

    .line 190
    if-ne p1, v0, :cond_7

    .line 191
    .line 192
    iget p1, p0, Lcom/mycompany/app/behavior/MyBehaviorDialog;->l:I

    .line 193
    .line 194
    sget-object v0, Landroidx/core/view/ViewCompat;->a:Ljava/util/WeakHashMap;

    .line 195
    .line 196
    invoke-virtual {p2, p1}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 197
    .line 198
    .line 199
    goto :goto_3

    .line 200
    :cond_7
    iget-boolean v0, p0, Lcom/mycompany/app/behavior/MyBehaviorDialog;->n:Z

    .line 201
    .line 202
    if-eqz v0, :cond_8

    .line 203
    .line 204
    const/4 v0, 0x5

    .line 205
    if-ne p1, v0, :cond_8

    .line 206
    .line 207
    iget p1, p0, Lcom/mycompany/app/behavior/MyBehaviorDialog;->z:I

    .line 208
    .line 209
    sget-object v0, Landroidx/core/view/ViewCompat;->a:Ljava/util/WeakHashMap;

    .line 210
    .line 211
    invoke-virtual {p2, p1}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 212
    .line 213
    .line 214
    goto :goto_3

    .line 215
    :cond_8
    if-ne p1, v5, :cond_9

    .line 216
    .line 217
    iget p1, p0, Lcom/mycompany/app/behavior/MyBehaviorDialog;->m:I

    .line 218
    .line 219
    sget-object v0, Landroidx/core/view/ViewCompat;->a:Ljava/util/WeakHashMap;

    .line 220
    .line 221
    invoke-virtual {p2, p1}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 222
    .line 223
    .line 224
    goto :goto_3

    .line 225
    :cond_9
    if-eq p1, v2, :cond_a

    .line 226
    .line 227
    if-ne p1, v4, :cond_b

    .line 228
    .line 229
    :cond_a
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    .line 230
    .line 231
    .line 232
    move-result p1

    .line 233
    sub-int/2addr v1, p1

    .line 234
    sget-object p1, Landroidx/core/view/ViewCompat;->a:Ljava/util/WeakHashMap;

    .line 235
    .line 236
    invoke-virtual {p2, v1}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 237
    .line 238
    .line 239
    :cond_b
    :goto_3
    iget-object p1, p0, Lcom/mycompany/app/behavior/MyBehaviorDialog;->t:Landroid/view/View;

    .line 240
    .line 241
    if-nez p1, :cond_d

    .line 242
    .line 243
    iget-boolean p1, p0, Lcom/mycompany/app/behavior/MyBehaviorDialog;->s:Z

    .line 244
    .line 245
    if-eqz p1, :cond_c

    .line 246
    .line 247
    const/4 p1, 0x0

    .line 248
    goto :goto_4

    .line 249
    :cond_c
    invoke-virtual {p0, p2}, Lcom/mycompany/app/behavior/MyBehaviorDialog;->A(Landroid/view/View;)Landroid/view/View;

    .line 250
    .line 251
    .line 252
    move-result-object p1

    .line 253
    :goto_4
    new-instance p2, Ljava/lang/ref/WeakReference;

    .line 254
    .line 255
    invoke-direct {p2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 256
    .line 257
    .line 258
    iput-object p2, p0, Lcom/mycompany/app/behavior/MyBehaviorDialog;->D:Ljava/lang/ref/WeakReference;

    .line 259
    .line 260
    :cond_d
    if-eqz p1, :cond_e

    .line 261
    .line 262
    instance-of p1, p1, Lcom/mycompany/app/web/WebNestView;

    .line 263
    .line 264
    if-eqz p1, :cond_e

    .line 265
    .line 266
    move p3, v2

    .line 267
    :cond_e
    iput-boolean p3, p0, Lcom/mycompany/app/behavior/MyBehaviorDialog;->E:Z

    .line 268
    .line 269
    return v2
.end method

.method public final p(Landroid/view/View;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/behavior/MyBehaviorDialog;->D:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-ne p1, v0, :cond_1

    .line 10
    .line 11
    iget p1, p0, Lcom/mycompany/app/behavior/MyBehaviorDialog;->r:I

    .line 12
    .line 13
    const/4 v0, 0x3

    .line 14
    if-ne p1, v0, :cond_0

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 p1, 0x1

    .line 18
    return p1

    .line 19
    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 20
    return p1
.end method

.method public final q(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;II[II)V
    .locals 1

    .line 1
    const/4 p1, 0x1

    .line 2
    if-ne p7, p1, :cond_0

    .line 3
    .line 4
    goto :goto_2

    .line 5
    :cond_0
    iget-object p4, p0, Lcom/mycompany/app/behavior/MyBehaviorDialog;->D:Ljava/lang/ref/WeakReference;

    .line 6
    .line 7
    if-eqz p4, :cond_1

    .line 8
    .line 9
    invoke-virtual {p4}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p4

    .line 13
    check-cast p4, Landroid/view/View;

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_1
    const/4 p4, 0x0

    .line 17
    :goto_0
    if-eq p3, p4, :cond_2

    .line 18
    .line 19
    goto :goto_2

    .line 20
    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    .line 21
    .line 22
    .line 23
    move-result p4

    .line 24
    sub-int p7, p4, p5

    .line 25
    .line 26
    if-lez p5, :cond_5

    .line 27
    .line 28
    invoke-virtual {p0}, Lcom/mycompany/app/behavior/MyBehaviorDialog;->B()I

    .line 29
    .line 30
    .line 31
    move-result p3

    .line 32
    if-ge p7, p3, :cond_3

    .line 33
    .line 34
    invoke-virtual {p0}, Lcom/mycompany/app/behavior/MyBehaviorDialog;->B()I

    .line 35
    .line 36
    .line 37
    move-result p3

    .line 38
    sub-int/2addr p4, p3

    .line 39
    aput p4, p6, p1

    .line 40
    .line 41
    neg-int p3, p4

    .line 42
    sget-object p4, Landroidx/core/view/ViewCompat;->a:Ljava/util/WeakHashMap;

    .line 43
    .line 44
    invoke-virtual {p2, p3}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 45
    .line 46
    .line 47
    const/4 p3, 0x3

    .line 48
    invoke-virtual {p0, p3}, Lcom/mycompany/app/behavior/MyBehaviorDialog;->D(I)V

    .line 49
    .line 50
    .line 51
    goto :goto_3

    .line 52
    :cond_3
    iget-boolean p3, p0, Lcom/mycompany/app/behavior/MyBehaviorDialog;->o:Z

    .line 53
    .line 54
    if-nez p3, :cond_4

    .line 55
    .line 56
    goto :goto_2

    .line 57
    :cond_4
    aput p5, p6, p1

    .line 58
    .line 59
    neg-int p3, p5

    .line 60
    sget-object p4, Landroidx/core/view/ViewCompat;->a:Ljava/util/WeakHashMap;

    .line 61
    .line 62
    invoke-virtual {p2, p3}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {p0, p1}, Lcom/mycompany/app/behavior/MyBehaviorDialog;->D(I)V

    .line 66
    .line 67
    .line 68
    goto :goto_3

    .line 69
    :cond_5
    if-gez p5, :cond_a

    .line 70
    .line 71
    const/4 v0, -0x1

    .line 72
    invoke-virtual {p3, v0}, Landroid/view/View;->canScrollVertically(I)Z

    .line 73
    .line 74
    .line 75
    move-result p3

    .line 76
    if-nez p3, :cond_9

    .line 77
    .line 78
    iget p3, p0, Lcom/mycompany/app/behavior/MyBehaviorDialog;->m:I

    .line 79
    .line 80
    if-le p7, p3, :cond_7

    .line 81
    .line 82
    iget-boolean p7, p0, Lcom/mycompany/app/behavior/MyBehaviorDialog;->n:Z

    .line 83
    .line 84
    if-eqz p7, :cond_6

    .line 85
    .line 86
    goto :goto_1

    .line 87
    :cond_6
    sub-int/2addr p4, p3

    .line 88
    aput p4, p6, p1

    .line 89
    .line 90
    neg-int p3, p4

    .line 91
    sget-object p4, Landroidx/core/view/ViewCompat;->a:Ljava/util/WeakHashMap;

    .line 92
    .line 93
    invoke-virtual {p2, p3}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 94
    .line 95
    .line 96
    const/4 p3, 0x4

    .line 97
    invoke-virtual {p0, p3}, Lcom/mycompany/app/behavior/MyBehaviorDialog;->D(I)V

    .line 98
    .line 99
    .line 100
    goto :goto_3

    .line 101
    :cond_7
    :goto_1
    iget-boolean p3, p0, Lcom/mycompany/app/behavior/MyBehaviorDialog;->o:Z

    .line 102
    .line 103
    if-nez p3, :cond_8

    .line 104
    .line 105
    :goto_2
    return-void

    .line 106
    :cond_8
    aput p5, p6, p1

    .line 107
    .line 108
    neg-int p3, p5

    .line 109
    sget-object p4, Landroidx/core/view/ViewCompat;->a:Ljava/util/WeakHashMap;

    .line 110
    .line 111
    invoke-virtual {p2, p3}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 112
    .line 113
    .line 114
    invoke-virtual {p0, p1}, Lcom/mycompany/app/behavior/MyBehaviorDialog;->D(I)V

    .line 115
    .line 116
    .line 117
    goto :goto_3

    .line 118
    :cond_9
    iget-boolean p3, p0, Lcom/mycompany/app/behavior/MyBehaviorDialog;->E:Z

    .line 119
    .line 120
    if-eqz p3, :cond_a

    .line 121
    .line 122
    iput-boolean p1, p0, Lcom/mycompany/app/behavior/MyBehaviorDialog;->v:Z

    .line 123
    .line 124
    :cond_a
    :goto_3
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    .line 125
    .line 126
    .line 127
    move-result p2

    .line 128
    invoke-virtual {p0, p2}, Lcom/mycompany/app/behavior/MyBehaviorDialog;->z(I)V

    .line 129
    .line 130
    .line 131
    iput p5, p0, Lcom/mycompany/app/behavior/MyBehaviorDialog;->w:I

    .line 132
    .line 133
    iput-boolean p1, p0, Lcom/mycompany/app/behavior/MyBehaviorDialog;->x:Z

    .line 134
    .line 135
    return-void
.end method

.method public final t(Landroid/view/View;Landroid/os/Parcelable;)V
    .locals 0

    .line 1
    :try_start_0
    check-cast p2, Lcom/mycompany/app/behavior/MyBehaviorDialog$SavedState;

    .line 2
    .line 3
    iget p1, p2, Lcom/mycompany/app/behavior/MyBehaviorDialog$SavedState;->g:I

    .line 4
    .line 5
    const/4 p2, 0x1

    .line 6
    if-eq p1, p2, :cond_1

    .line 7
    .line 8
    const/4 p2, 0x2

    .line 9
    if-ne p1, p2, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iput p1, p0, Lcom/mycompany/app/behavior/MyBehaviorDialog;->r:I

    .line 13
    .line 14
    return-void

    .line 15
    :cond_1
    :goto_0
    iget-boolean p1, p0, Lcom/mycompany/app/behavior/MyBehaviorDialog;->q:Z

    .line 16
    .line 17
    if-eqz p1, :cond_2

    .line 18
    .line 19
    const/4 p1, 0x3

    .line 20
    iput p1, p0, Lcom/mycompany/app/behavior/MyBehaviorDialog;->r:I

    .line 21
    .line 22
    return-void

    .line 23
    :cond_2
    const/4 p1, 0x4

    .line 24
    iput p1, p0, Lcom/mycompany/app/behavior/MyBehaviorDialog;->r:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 25
    .line 26
    :catch_0
    return-void
.end method

.method public final u(Landroid/view/View;)Landroid/os/Parcelable;
    .locals 1

    .line 1
    new-instance p1, Lcom/mycompany/app/behavior/MyBehaviorDialog$SavedState;

    .line 2
    .line 3
    sget-object v0, Landroid/view/View$BaseSavedState;->EMPTY_STATE:Landroid/view/AbsSavedState;

    .line 4
    .line 5
    invoke-direct {p1, p0}, Lcom/mycompany/app/behavior/MyBehaviorDialog$SavedState;-><init>(Lcom/mycompany/app/behavior/MyBehaviorDialog;)V

    .line 6
    .line 7
    .line 8
    return-object p1
.end method

.method public final v(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;Landroid/view/View;II)Z
    .locals 0

    .line 1
    const/4 p1, 0x0

    .line 2
    iput p1, p0, Lcom/mycompany/app/behavior/MyBehaviorDialog;->w:I

    .line 3
    .line 4
    iput-boolean p1, p0, Lcom/mycompany/app/behavior/MyBehaviorDialog;->x:Z

    .line 5
    .line 6
    and-int/lit8 p2, p5, 0x2

    .line 7
    .line 8
    if-eqz p2, :cond_0

    .line 9
    .line 10
    const/4 p1, 0x1

    .line 11
    :cond_0
    return p1
.end method

.method public final w(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;I)V
    .locals 3

    .line 1
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    invoke-virtual {p0}, Lcom/mycompany/app/behavior/MyBehaviorDialog;->B()I

    .line 6
    .line 7
    .line 8
    move-result p4

    .line 9
    const/4 v0, 0x3

    .line 10
    if-ne p1, p4, :cond_0

    .line 11
    .line 12
    invoke-virtual {p0, v0}, Lcom/mycompany/app/behavior/MyBehaviorDialog;->D(I)V

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    iget-object p1, p0, Lcom/mycompany/app/behavior/MyBehaviorDialog;->D:Ljava/lang/ref/WeakReference;

    .line 17
    .line 18
    if-eqz p1, :cond_10

    .line 19
    .line 20
    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    if-ne p3, p1, :cond_10

    .line 25
    .line 26
    iget-boolean p1, p0, Lcom/mycompany/app/behavior/MyBehaviorDialog;->x:Z

    .line 27
    .line 28
    if-nez p1, :cond_1

    .line 29
    .line 30
    goto/16 :goto_5

    .line 31
    .line 32
    :cond_1
    iget p1, p0, Lcom/mycompany/app/behavior/MyBehaviorDialog;->w:I

    .line 33
    .line 34
    const/4 p3, 0x6

    .line 35
    const/4 p4, 0x0

    .line 36
    if-lez p1, :cond_3

    .line 37
    .line 38
    iget-boolean p1, p0, Lcom/mycompany/app/behavior/MyBehaviorDialog;->c:Z

    .line 39
    .line 40
    if-eqz p1, :cond_2

    .line 41
    .line 42
    iget p1, p0, Lcom/mycompany/app/behavior/MyBehaviorDialog;->k:I

    .line 43
    .line 44
    goto/16 :goto_4

    .line 45
    .line 46
    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    .line 47
    .line 48
    .line 49
    move-result p1

    .line 50
    iget v1, p0, Lcom/mycompany/app/behavior/MyBehaviorDialog;->l:I

    .line 51
    .line 52
    if-le p1, v1, :cond_6

    .line 53
    .line 54
    move v0, p3

    .line 55
    move p1, v1

    .line 56
    goto/16 :goto_4

    .line 57
    .line 58
    :cond_3
    iget-boolean p1, p0, Lcom/mycompany/app/behavior/MyBehaviorDialog;->n:Z

    .line 59
    .line 60
    if-eqz p1, :cond_5

    .line 61
    .line 62
    iget-object p1, p0, Lcom/mycompany/app/behavior/MyBehaviorDialog;->G:Landroid/view/VelocityTracker;

    .line 63
    .line 64
    if-nez p1, :cond_4

    .line 65
    .line 66
    const/4 p1, 0x0

    .line 67
    goto :goto_0

    .line 68
    :cond_4
    const/16 v1, 0x3e8

    .line 69
    .line 70
    iget v2, p0, Lcom/mycompany/app/behavior/MyBehaviorDialog;->f:F

    .line 71
    .line 72
    invoke-virtual {p1, v1, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 73
    .line 74
    .line 75
    iget-object p1, p0, Lcom/mycompany/app/behavior/MyBehaviorDialog;->G:Landroid/view/VelocityTracker;

    .line 76
    .line 77
    iget v1, p0, Lcom/mycompany/app/behavior/MyBehaviorDialog;->H:I

    .line 78
    .line 79
    invoke-virtual {p1, v1}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    .line 80
    .line 81
    .line 82
    move-result p1

    .line 83
    :goto_0
    invoke-virtual {p0, p2, p1}, Lcom/mycompany/app/behavior/MyBehaviorDialog;->F(Landroid/view/View;F)Z

    .line 84
    .line 85
    .line 86
    move-result p1

    .line 87
    if-eqz p1, :cond_5

    .line 88
    .line 89
    iget p1, p0, Lcom/mycompany/app/behavior/MyBehaviorDialog;->z:I

    .line 90
    .line 91
    const/4 v0, 0x5

    .line 92
    goto/16 :goto_4

    .line 93
    .line 94
    :cond_5
    iget-boolean p1, p0, Lcom/mycompany/app/behavior/MyBehaviorDialog;->q:Z

    .line 95
    .line 96
    if-eqz p1, :cond_7

    .line 97
    .line 98
    iget-boolean p1, p0, Lcom/mycompany/app/behavior/MyBehaviorDialog;->c:Z

    .line 99
    .line 100
    if-eqz p1, :cond_6

    .line 101
    .line 102
    iget p1, p0, Lcom/mycompany/app/behavior/MyBehaviorDialog;->k:I

    .line 103
    .line 104
    goto/16 :goto_4

    .line 105
    .line 106
    :cond_6
    :goto_1
    move p1, p4

    .line 107
    goto/16 :goto_4

    .line 108
    .line 109
    :cond_7
    iget p1, p0, Lcom/mycompany/app/behavior/MyBehaviorDialog;->w:I

    .line 110
    .line 111
    const/4 v1, 0x4

    .line 112
    if-nez p1, :cond_d

    .line 113
    .line 114
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    .line 115
    .line 116
    .line 117
    move-result p1

    .line 118
    iget-boolean v2, p0, Lcom/mycompany/app/behavior/MyBehaviorDialog;->c:Z

    .line 119
    .line 120
    if-eqz v2, :cond_9

    .line 121
    .line 122
    iget p3, p0, Lcom/mycompany/app/behavior/MyBehaviorDialog;->k:I

    .line 123
    .line 124
    sub-int p3, p1, p3

    .line 125
    .line 126
    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    .line 127
    .line 128
    .line 129
    move-result p3

    .line 130
    iget v2, p0, Lcom/mycompany/app/behavior/MyBehaviorDialog;->m:I

    .line 131
    .line 132
    sub-int/2addr p1, v2

    .line 133
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    .line 134
    .line 135
    .line 136
    move-result p1

    .line 137
    if-ge p3, p1, :cond_8

    .line 138
    .line 139
    iget p1, p0, Lcom/mycompany/app/behavior/MyBehaviorDialog;->k:I

    .line 140
    .line 141
    goto :goto_4

    .line 142
    :cond_8
    iget p1, p0, Lcom/mycompany/app/behavior/MyBehaviorDialog;->m:I

    .line 143
    .line 144
    goto :goto_2

    .line 145
    :cond_9
    iget v2, p0, Lcom/mycompany/app/behavior/MyBehaviorDialog;->l:I

    .line 146
    .line 147
    if-ge p1, v2, :cond_b

    .line 148
    .line 149
    iget v1, p0, Lcom/mycompany/app/behavior/MyBehaviorDialog;->m:I

    .line 150
    .line 151
    sub-int v1, p1, v1

    .line 152
    .line 153
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    .line 154
    .line 155
    .line 156
    move-result v1

    .line 157
    if-ge p1, v1, :cond_a

    .line 158
    .line 159
    goto :goto_1

    .line 160
    :cond_a
    iget p1, p0, Lcom/mycompany/app/behavior/MyBehaviorDialog;->l:I

    .line 161
    .line 162
    goto :goto_3

    .line 163
    :cond_b
    sub-int v0, p1, v2

    .line 164
    .line 165
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    .line 166
    .line 167
    .line 168
    move-result v0

    .line 169
    iget v2, p0, Lcom/mycompany/app/behavior/MyBehaviorDialog;->m:I

    .line 170
    .line 171
    sub-int/2addr p1, v2

    .line 172
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    .line 173
    .line 174
    .line 175
    move-result p1

    .line 176
    if-ge v0, p1, :cond_c

    .line 177
    .line 178
    iget p1, p0, Lcom/mycompany/app/behavior/MyBehaviorDialog;->l:I

    .line 179
    .line 180
    goto :goto_3

    .line 181
    :cond_c
    iget p1, p0, Lcom/mycompany/app/behavior/MyBehaviorDialog;->m:I

    .line 182
    .line 183
    goto :goto_2

    .line 184
    :cond_d
    iget-boolean p1, p0, Lcom/mycompany/app/behavior/MyBehaviorDialog;->c:Z

    .line 185
    .line 186
    if-eqz p1, :cond_e

    .line 187
    .line 188
    iget p1, p0, Lcom/mycompany/app/behavior/MyBehaviorDialog;->m:I

    .line 189
    .line 190
    :goto_2
    move v0, v1

    .line 191
    goto :goto_4

    .line 192
    :cond_e
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    .line 193
    .line 194
    .line 195
    move-result p1

    .line 196
    iget v0, p0, Lcom/mycompany/app/behavior/MyBehaviorDialog;->l:I

    .line 197
    .line 198
    sub-int v0, p1, v0

    .line 199
    .line 200
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    .line 201
    .line 202
    .line 203
    move-result v0

    .line 204
    iget v2, p0, Lcom/mycompany/app/behavior/MyBehaviorDialog;->m:I

    .line 205
    .line 206
    sub-int/2addr p1, v2

    .line 207
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    .line 208
    .line 209
    .line 210
    move-result p1

    .line 211
    if-ge v0, p1, :cond_f

    .line 212
    .line 213
    iget p1, p0, Lcom/mycompany/app/behavior/MyBehaviorDialog;->l:I

    .line 214
    .line 215
    :goto_3
    move v0, p3

    .line 216
    goto :goto_4

    .line 217
    :cond_f
    iget p1, p0, Lcom/mycompany/app/behavior/MyBehaviorDialog;->m:I

    .line 218
    .line 219
    goto :goto_2

    .line 220
    :goto_4
    invoke-virtual {p0, p2, v0, p1, p4}, Lcom/mycompany/app/behavior/MyBehaviorDialog;->G(Landroid/view/View;IIZ)V

    .line 221
    .line 222
    .line 223
    iput-boolean p4, p0, Lcom/mycompany/app/behavior/MyBehaviorDialog;->x:Z

    .line 224
    .line 225
    :cond_10
    :goto_5
    return-void
.end method

.method public final x(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3

    .line 1
    invoke-virtual {p2}, Landroid/view/View;->isShown()Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    return p1

    .line 9
    :cond_0
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    iget v0, p0, Lcom/mycompany/app/behavior/MyBehaviorDialog;->r:I

    .line 14
    .line 15
    const/4 v1, 0x1

    .line 16
    if-ne v0, v1, :cond_1

    .line 17
    .line 18
    if-nez p1, :cond_1

    .line 19
    .line 20
    return v1

    .line 21
    :cond_1
    iget-object v0, p0, Lcom/mycompany/app/behavior/MyBehaviorDialog;->u:Landroidx/customview/widget/ViewDragHelper;

    .line 22
    .line 23
    if-eqz v0, :cond_2

    .line 24
    .line 25
    invoke-virtual {v0, p3}, Landroidx/customview/widget/ViewDragHelper;->j(Landroid/view/MotionEvent;)V

    .line 26
    .line 27
    .line 28
    :cond_2
    if-nez p1, :cond_3

    .line 29
    .line 30
    const/4 v0, -0x1

    .line 31
    iput v0, p0, Lcom/mycompany/app/behavior/MyBehaviorDialog;->H:I

    .line 32
    .line 33
    iget-object v0, p0, Lcom/mycompany/app/behavior/MyBehaviorDialog;->G:Landroid/view/VelocityTracker;

    .line 34
    .line 35
    if-eqz v0, :cond_3

    .line 36
    .line 37
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 38
    .line 39
    .line 40
    const/4 v0, 0x0

    .line 41
    iput-object v0, p0, Lcom/mycompany/app/behavior/MyBehaviorDialog;->G:Landroid/view/VelocityTracker;

    .line 42
    .line 43
    :cond_3
    iget-object v0, p0, Lcom/mycompany/app/behavior/MyBehaviorDialog;->G:Landroid/view/VelocityTracker;

    .line 44
    .line 45
    if-nez v0, :cond_4

    .line 46
    .line 47
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    iput-object v0, p0, Lcom/mycompany/app/behavior/MyBehaviorDialog;->G:Landroid/view/VelocityTracker;

    .line 52
    .line 53
    :cond_4
    iget-object v0, p0, Lcom/mycompany/app/behavior/MyBehaviorDialog;->G:Landroid/view/VelocityTracker;

    .line 54
    .line 55
    invoke-virtual {v0, p3}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 56
    .line 57
    .line 58
    iget-object v0, p0, Lcom/mycompany/app/behavior/MyBehaviorDialog;->u:Landroidx/customview/widget/ViewDragHelper;

    .line 59
    .line 60
    if-eqz v0, :cond_5

    .line 61
    .line 62
    const/4 v0, 0x2

    .line 63
    if-ne p1, v0, :cond_5

    .line 64
    .line 65
    iget-boolean p1, p0, Lcom/mycompany/app/behavior/MyBehaviorDialog;->v:Z

    .line 66
    .line 67
    if-nez p1, :cond_5

    .line 68
    .line 69
    iget p1, p0, Lcom/mycompany/app/behavior/MyBehaviorDialog;->I:I

    .line 70
    .line 71
    int-to-float p1, p1

    .line 72
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    .line 73
    .line 74
    .line 75
    move-result v0

    .line 76
    sub-float/2addr p1, v0

    .line 77
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    .line 78
    .line 79
    .line 80
    move-result p1

    .line 81
    iget-object v0, p0, Lcom/mycompany/app/behavior/MyBehaviorDialog;->u:Landroidx/customview/widget/ViewDragHelper;

    .line 82
    .line 83
    iget v2, v0, Landroidx/customview/widget/ViewDragHelper;->b:I

    .line 84
    .line 85
    int-to-float v2, v2

    .line 86
    cmpl-float p1, p1, v2

    .line 87
    .line 88
    if-lez p1, :cond_5

    .line 89
    .line 90
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getActionIndex()I

    .line 91
    .line 92
    .line 93
    move-result p1

    .line 94
    invoke-virtual {p3, p1}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 95
    .line 96
    .line 97
    move-result p1

    .line 98
    invoke-virtual {v0, p2, p1}, Landroidx/customview/widget/ViewDragHelper;->b(Landroid/view/View;I)V

    .line 99
    .line 100
    .line 101
    :cond_5
    iget-boolean p1, p0, Lcom/mycompany/app/behavior/MyBehaviorDialog;->v:Z

    .line 102
    .line 103
    xor-int/2addr p1, v1

    .line 104
    return p1
.end method

.method public final y()I
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/mycompany/app/behavior/MyBehaviorDialog;->g:Z

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    iget v0, p0, Lcom/mycompany/app/behavior/MyBehaviorDialog;->z:I

    .line 6
    .line 7
    iget v1, p0, Lcom/mycompany/app/behavior/MyBehaviorDialog;->y:I

    .line 8
    .line 9
    if-le v0, v1, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    move v3, v1

    .line 13
    move v1, v0

    .line 14
    move v0, v3

    .line 15
    :goto_0
    iget-boolean v2, p0, Lcom/mycompany/app/behavior/MyBehaviorDialog;->h:Z

    .line 16
    .line 17
    if-eqz v2, :cond_1

    .line 18
    .line 19
    iget v2, p0, Lcom/mycompany/app/behavior/MyBehaviorDialog;->i:I

    .line 20
    .line 21
    sub-int/2addr v0, v1

    .line 22
    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    return v0

    .line 27
    :cond_1
    iget v2, p0, Lcom/mycompany/app/behavior/MyBehaviorDialog;->i:I

    .line 28
    .line 29
    mul-int/lit8 v1, v1, 0x9

    .line 30
    .line 31
    div-int/lit8 v1, v1, 0x10

    .line 32
    .line 33
    sub-int/2addr v0, v1

    .line 34
    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    return v0

    .line 39
    :cond_2
    const/4 v0, 0x0

    .line 40
    return v0
.end method

.method public final z(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/behavior/MyBehaviorDialog;->C:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/view/View;

    .line 8
    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    iget-object v0, p0, Lcom/mycompany/app/behavior/MyBehaviorDialog;->F:Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-nez v1, :cond_1

    .line 18
    .line 19
    iget v1, p0, Lcom/mycompany/app/behavior/MyBehaviorDialog;->m:I

    .line 20
    .line 21
    if-gt p1, v1, :cond_0

    .line 22
    .line 23
    invoke-virtual {p0}, Lcom/mycompany/app/behavior/MyBehaviorDialog;->B()I

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    :cond_0
    const/4 p1, 0x0

    .line 28
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    if-ge p1, v1, :cond_1

    .line 33
    .line 34
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    check-cast v1, Lcom/mycompany/app/behavior/MyBehaviorDialog$BottomSheetCallback;

    .line 39
    .line 40
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 41
    .line 42
    .line 43
    add-int/lit8 p1, p1, 0x1

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_1
    return-void
.end method
