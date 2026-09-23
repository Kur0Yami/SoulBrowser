.class public Landroidx/constraintlayout/widget/ConstraintLayout;
.super Landroid/view/ViewGroup;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;,
        Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;
    }
.end annotation


# static fields
.field public static v:Landroidx/constraintlayout/widget/SharedValues;


# instance fields
.field public final c:Landroid/util/SparseArray;

.field public final f:Ljava/util/ArrayList;

.field public final g:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

.field public h:I

.field public i:I

.field public j:I

.field public k:I

.field public l:Z

.field public m:I

.field public n:Landroidx/constraintlayout/widget/ConstraintSet;

.field public o:Landroidx/constraintlayout/widget/ConstraintLayoutStates;

.field public p:I

.field public q:Ljava/util/HashMap;

.field public final r:Landroid/util/SparseArray;

.field public final s:Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;

.field public t:I

.field public u:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->c:Landroid/util/SparseArray;

    .line 3
    new-instance p1, Ljava/util/ArrayList;

    const/4 v0, 0x4

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->f:Ljava/util/ArrayList;

    .line 4
    new-instance p1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    invoke-direct {p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;-><init>()V

    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->g:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    const/4 p1, 0x0

    .line 5
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->h:I

    .line 6
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->i:I

    const v0, 0x7fffffff

    .line 7
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->j:I

    .line 8
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->k:I

    const/4 v0, 0x1

    .line 9
    iput-boolean v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->l:Z

    const/16 v0, 0x101

    .line 10
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->m:I

    const/4 v0, 0x0

    .line 11
    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->n:Landroidx/constraintlayout/widget/ConstraintSet;

    .line 12
    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->o:Landroidx/constraintlayout/widget/ConstraintLayoutStates;

    const/4 v1, -0x1

    .line 13
    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->p:I

    .line 14
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->q:Ljava/util/HashMap;

    .line 15
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->r:Landroid/util/SparseArray;

    .line 16
    new-instance v1, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;

    invoke-direct {v1, p0, p0}, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;-><init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroidx/constraintlayout/widget/ConstraintLayout;)V

    iput-object v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->s:Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;

    .line 17
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->t:I

    .line 18
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->u:I

    .line 19
    invoke-virtual {p0, v0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->d(Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 20
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 21
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->c:Landroid/util/SparseArray;

    .line 22
    new-instance p1, Ljava/util/ArrayList;

    const/4 v0, 0x4

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->f:Ljava/util/ArrayList;

    .line 23
    new-instance p1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    invoke-direct {p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;-><init>()V

    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->g:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    const/4 p1, 0x0

    .line 24
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->h:I

    .line 25
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->i:I

    const v0, 0x7fffffff

    .line 26
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->j:I

    .line 27
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->k:I

    const/4 v0, 0x1

    .line 28
    iput-boolean v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->l:Z

    const/16 v0, 0x101

    .line 29
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->m:I

    const/4 v0, 0x0

    .line 30
    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->n:Landroidx/constraintlayout/widget/ConstraintSet;

    .line 31
    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->o:Landroidx/constraintlayout/widget/ConstraintLayoutStates;

    const/4 v0, -0x1

    .line 32
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->p:I

    .line 33
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->q:Ljava/util/HashMap;

    .line 34
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->r:Landroid/util/SparseArray;

    .line 35
    new-instance v0, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;

    invoke-direct {v0, p0, p0}, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;-><init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroidx/constraintlayout/widget/ConstraintLayout;)V

    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->s:Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;

    .line 36
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->t:I

    .line 37
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->u:I

    .line 38
    invoke-virtual {p0, p2, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->d(Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 39
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 40
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->c:Landroid/util/SparseArray;

    .line 41
    new-instance p1, Ljava/util/ArrayList;

    const/4 v0, 0x4

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->f:Ljava/util/ArrayList;

    .line 42
    new-instance p1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    invoke-direct {p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;-><init>()V

    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->g:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    const/4 p1, 0x0

    .line 43
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->h:I

    .line 44
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->i:I

    const v0, 0x7fffffff

    .line 45
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->j:I

    .line 46
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->k:I

    const/4 v0, 0x1

    .line 47
    iput-boolean v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->l:Z

    const/16 v0, 0x101

    .line 48
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->m:I

    const/4 v0, 0x0

    .line 49
    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->n:Landroidx/constraintlayout/widget/ConstraintSet;

    .line 50
    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->o:Landroidx/constraintlayout/widget/ConstraintLayoutStates;

    const/4 v0, -0x1

    .line 51
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->p:I

    .line 52
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->q:Ljava/util/HashMap;

    .line 53
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->r:Landroid/util/SparseArray;

    .line 54
    new-instance v0, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;

    invoke-direct {v0, p0, p0}, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;-><init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroidx/constraintlayout/widget/ConstraintLayout;)V

    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->s:Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;

    .line 55
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->t:I

    .line 56
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->u:I

    .line 57
    invoke-virtual {p0, p2, p3}, Landroidx/constraintlayout/widget/ConstraintLayout;->d(Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private getPaddingWidth()I
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    add-int/2addr v2, v0

    .line 19
    invoke-virtual {p0}, Landroid/view/View;->getPaddingStart()I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    invoke-virtual {p0}, Landroid/view/View;->getPaddingEnd()I

    .line 28
    .line 29
    .line 30
    move-result v3

    .line 31
    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    add-int/2addr v1, v0

    .line 36
    if-lez v1, :cond_0

    .line 37
    .line 38
    return v1

    .line 39
    :cond_0
    return v2
.end method

.method public static getSharedValues()Landroidx/constraintlayout/widget/SharedValues;
    .locals 2

    .line 1
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintLayout;->v:Landroidx/constraintlayout/widget/SharedValues;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Landroidx/constraintlayout/widget/SharedValues;

    .line 6
    .line 7
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    new-instance v1, Landroid/util/SparseIntArray;

    .line 11
    .line 12
    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    .line 13
    .line 14
    .line 15
    new-instance v1, Ljava/util/HashMap;

    .line 16
    .line 17
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 18
    .line 19
    .line 20
    iput-object v1, v0, Landroidx/constraintlayout/widget/SharedValues;->a:Ljava/util/HashMap;

    .line 21
    .line 22
    sput-object v0, Landroidx/constraintlayout/widget/ConstraintLayout;->v:Landroidx/constraintlayout/widget/SharedValues;

    .line 23
    .line 24
    :cond_0
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintLayout;->v:Landroidx/constraintlayout/widget/SharedValues;

    .line 25
    .line 26
    return-object v0
.end method


# virtual methods
.method public final b(I)Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->c:Landroid/util/SparseArray;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Landroid/view/View;

    .line 8
    .line 9
    return-object p1
.end method

.method public final c(Landroid/view/View;)Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    .locals 2

    .line 1
    if-ne p1, p0, :cond_0

    .line 2
    .line 3
    iget-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->g:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    .line 4
    .line 5
    return-object p1

    .line 6
    :cond_0
    if-eqz p1, :cond_2

    .line 7
    .line 8
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    instance-of v0, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 13
    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 21
    .line 22
    iget-object p1, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->p0:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 23
    .line 24
    return-object p1

    .line 25
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    new-instance v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 30
    .line 31
    invoke-direct {v1, v0}, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    instance-of v0, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 42
    .line 43
    if-eqz v0, :cond_2

    .line 44
    .line 45
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 50
    .line 51
    iget-object p1, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->p0:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 52
    .line 53
    return-object p1

    .line 54
    :cond_2
    const/4 p1, 0x0

    .line 55
    return-object p1
.end method

.method public final checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 0

    .line 1
    instance-of p1, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 2
    .line 3
    return p1
.end method

.method public final d(Landroid/util/AttributeSet;I)V
    .locals 7

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->g:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    .line 2
    .line 3
    iput-object p0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->g0:Landroid/view/View;

    .line 4
    .line 5
    iget-object v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->s:Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;

    .line 6
    .line 7
    iput-object v1, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->u0:Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;

    .line 8
    .line 9
    iget-object v2, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->s0:Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;

    .line 10
    .line 11
    iput-object v1, v2, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->f:Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;

    .line 12
    .line 13
    iget-object v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->c:Landroid/util/SparseArray;

    .line 14
    .line 15
    invoke-virtual {p0}, Landroid/view/View;->getId()I

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    invoke-virtual {v1, v2, p0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    const/4 v1, 0x0

    .line 23
    iput-object v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->n:Landroidx/constraintlayout/widget/ConstraintSet;

    .line 24
    .line 25
    if-eqz p1, :cond_8

    .line 26
    .line 27
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    sget-object v3, Landroidx/constraintlayout/widget/R$styleable;->ConstraintLayout_Layout:[I

    .line 32
    .line 33
    const/4 v4, 0x0

    .line 34
    invoke-virtual {v2, p1, v3, p2, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    .line 39
    .line 40
    .line 41
    move-result p2

    .line 42
    move v2, v4

    .line 43
    :goto_0
    if-ge v2, p2, :cond_7

    .line 44
    .line 45
    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getIndex(I)I

    .line 46
    .line 47
    .line 48
    move-result v3

    .line 49
    sget v5, Landroidx/constraintlayout/widget/R$styleable;->ConstraintLayout_Layout_android_minWidth:I

    .line 50
    .line 51
    if-ne v3, v5, :cond_0

    .line 52
    .line 53
    iget v5, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->h:I

    .line 54
    .line 55
    invoke-virtual {p1, v3, v5}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    .line 56
    .line 57
    .line 58
    move-result v3

    .line 59
    iput v3, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->h:I

    .line 60
    .line 61
    goto :goto_2

    .line 62
    :cond_0
    sget v5, Landroidx/constraintlayout/widget/R$styleable;->ConstraintLayout_Layout_android_minHeight:I

    .line 63
    .line 64
    if-ne v3, v5, :cond_1

    .line 65
    .line 66
    iget v5, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->i:I

    .line 67
    .line 68
    invoke-virtual {p1, v3, v5}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    .line 69
    .line 70
    .line 71
    move-result v3

    .line 72
    iput v3, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->i:I

    .line 73
    .line 74
    goto :goto_2

    .line 75
    :cond_1
    sget v5, Landroidx/constraintlayout/widget/R$styleable;->ConstraintLayout_Layout_android_maxWidth:I

    .line 76
    .line 77
    if-ne v3, v5, :cond_2

    .line 78
    .line 79
    iget v5, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->j:I

    .line 80
    .line 81
    invoke-virtual {p1, v3, v5}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    .line 82
    .line 83
    .line 84
    move-result v3

    .line 85
    iput v3, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->j:I

    .line 86
    .line 87
    goto :goto_2

    .line 88
    :cond_2
    sget v5, Landroidx/constraintlayout/widget/R$styleable;->ConstraintLayout_Layout_android_maxHeight:I

    .line 89
    .line 90
    if-ne v3, v5, :cond_3

    .line 91
    .line 92
    iget v5, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->k:I

    .line 93
    .line 94
    invoke-virtual {p1, v3, v5}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    .line 95
    .line 96
    .line 97
    move-result v3

    .line 98
    iput v3, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->k:I

    .line 99
    .line 100
    goto :goto_2

    .line 101
    :cond_3
    sget v5, Landroidx/constraintlayout/widget/R$styleable;->ConstraintLayout_Layout_layout_optimizationLevel:I

    .line 102
    .line 103
    if-ne v3, v5, :cond_4

    .line 104
    .line 105
    iget v5, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->m:I

    .line 106
    .line 107
    invoke-virtual {p1, v3, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 108
    .line 109
    .line 110
    move-result v3

    .line 111
    iput v3, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->m:I

    .line 112
    .line 113
    goto :goto_2

    .line 114
    :cond_4
    sget v5, Landroidx/constraintlayout/widget/R$styleable;->ConstraintLayout_Layout_layoutDescription:I

    .line 115
    .line 116
    if-ne v3, v5, :cond_5

    .line 117
    .line 118
    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 119
    .line 120
    .line 121
    move-result v3

    .line 122
    if-eqz v3, :cond_6

    .line 123
    .line 124
    :try_start_0
    invoke-virtual {p0, v3}, Landroidx/constraintlayout/widget/ConstraintLayout;->f(I)V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 125
    .line 126
    .line 127
    goto :goto_2

    .line 128
    :catch_0
    iput-object v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->o:Landroidx/constraintlayout/widget/ConstraintLayoutStates;

    .line 129
    .line 130
    goto :goto_2

    .line 131
    :cond_5
    sget v5, Landroidx/constraintlayout/widget/R$styleable;->ConstraintLayout_Layout_constraintSet:I

    .line 132
    .line 133
    if-ne v3, v5, :cond_6

    .line 134
    .line 135
    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 136
    .line 137
    .line 138
    move-result v3

    .line 139
    :try_start_1
    new-instance v5, Landroidx/constraintlayout/widget/ConstraintSet;

    .line 140
    .line 141
    invoke-direct {v5}, Landroidx/constraintlayout/widget/ConstraintSet;-><init>()V

    .line 142
    .line 143
    .line 144
    iput-object v5, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->n:Landroidx/constraintlayout/widget/ConstraintSet;

    .line 145
    .line 146
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 147
    .line 148
    .line 149
    move-result-object v6

    .line 150
    invoke-virtual {v5, v6, v3}, Landroidx/constraintlayout/widget/ConstraintSet;->e(Landroid/content/Context;I)V
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 151
    .line 152
    .line 153
    goto :goto_1

    .line 154
    :catch_1
    iput-object v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->n:Landroidx/constraintlayout/widget/ConstraintSet;

    .line 155
    .line 156
    :goto_1
    iput v3, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->p:I

    .line 157
    .line 158
    :cond_6
    :goto_2
    add-int/lit8 v2, v2, 0x1

    .line 159
    .line 160
    goto :goto_0

    .line 161
    :cond_7
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 162
    .line 163
    .line 164
    :cond_8
    iget p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->m:I

    .line 165
    .line 166
    iput p1, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->D0:I

    .line 167
    .line 168
    const/16 p1, 0x200

    .line 169
    .line 170
    invoke-virtual {v0, p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->R(I)Z

    .line 171
    .line 172
    .line 173
    move-result p1

    .line 174
    sput-boolean p1, Landroidx/constraintlayout/core/LinearSystem;->p:Z

    .line 175
    .line 176
    return-void
.end method

.method public dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    iget-object v2, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->f:Ljava/util/ArrayList;

    .line 5
    .line 6
    if-eqz v2, :cond_0

    .line 7
    .line 8
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 9
    .line 10
    .line 11
    move-result v3

    .line 12
    if-lez v3, :cond_0

    .line 13
    .line 14
    move v4, v1

    .line 15
    :goto_0
    if-ge v4, v3, :cond_0

    .line 16
    .line 17
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v5

    .line 21
    check-cast v5, Landroidx/constraintlayout/widget/ConstraintHelper;

    .line 22
    .line 23
    invoke-virtual {v5, v0}, Landroidx/constraintlayout/widget/ConstraintHelper;->l(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    .line 24
    .line 25
    .line 26
    add-int/lit8 v4, v4, 0x1

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    invoke-super/range {p0 .. p1}, Landroid/view/ViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0}, Landroid/view/View;->isInEditMode()Z

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    if-eqz v2, :cond_3

    .line 37
    .line 38
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    .line 39
    .line 40
    .line 41
    move-result v2

    .line 42
    int-to-float v2, v2

    .line 43
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    .line 44
    .line 45
    .line 46
    move-result v3

    .line 47
    int-to-float v3, v3

    .line 48
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 49
    .line 50
    .line 51
    move-result v4

    .line 52
    move v5, v1

    .line 53
    :goto_1
    if-ge v5, v4, :cond_3

    .line 54
    .line 55
    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 56
    .line 57
    .line 58
    move-result-object v6

    .line 59
    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    .line 60
    .line 61
    .line 62
    move-result v7

    .line 63
    const/16 v8, 0x8

    .line 64
    .line 65
    if-ne v7, v8, :cond_1

    .line 66
    .line 67
    goto/16 :goto_2

    .line 68
    .line 69
    :cond_1
    invoke-virtual {v6}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object v6

    .line 73
    if-eqz v6, :cond_2

    .line 74
    .line 75
    instance-of v7, v6, Ljava/lang/String;

    .line 76
    .line 77
    if-eqz v7, :cond_2

    .line 78
    .line 79
    check-cast v6, Ljava/lang/String;

    .line 80
    .line 81
    const-string v7, ","

    .line 82
    .line 83
    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v6

    .line 87
    array-length v7, v6

    .line 88
    const/4 v8, 0x4

    .line 89
    if-ne v7, v8, :cond_2

    .line 90
    .line 91
    aget-object v7, v6, v1

    .line 92
    .line 93
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 94
    .line 95
    .line 96
    move-result v7

    .line 97
    const/4 v8, 0x1

    .line 98
    aget-object v8, v6, v8

    .line 99
    .line 100
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 101
    .line 102
    .line 103
    move-result v8

    .line 104
    const/4 v9, 0x2

    .line 105
    aget-object v9, v6, v9

    .line 106
    .line 107
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 108
    .line 109
    .line 110
    move-result v9

    .line 111
    const/4 v10, 0x3

    .line 112
    aget-object v6, v6, v10

    .line 113
    .line 114
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 115
    .line 116
    .line 117
    move-result v6

    .line 118
    int-to-float v7, v7

    .line 119
    const/high16 v10, 0x44870000    # 1080.0f

    .line 120
    .line 121
    div-float/2addr v7, v10

    .line 122
    mul-float/2addr v7, v2

    .line 123
    float-to-int v7, v7

    .line 124
    int-to-float v8, v8

    .line 125
    const/high16 v11, 0x44f00000    # 1920.0f

    .line 126
    .line 127
    div-float/2addr v8, v11

    .line 128
    mul-float/2addr v8, v3

    .line 129
    float-to-int v8, v8

    .line 130
    int-to-float v9, v9

    .line 131
    div-float/2addr v9, v10

    .line 132
    mul-float/2addr v9, v2

    .line 133
    float-to-int v9, v9

    .line 134
    int-to-float v6, v6

    .line 135
    div-float/2addr v6, v11

    .line 136
    mul-float/2addr v6, v3

    .line 137
    float-to-int v6, v6

    .line 138
    new-instance v15, Landroid/graphics/Paint;

    .line 139
    .line 140
    invoke-direct {v15}, Landroid/graphics/Paint;-><init>()V

    .line 141
    .line 142
    .line 143
    const/high16 v10, -0x10000

    .line 144
    .line 145
    invoke-virtual {v15, v10}, Landroid/graphics/Paint;->setColor(I)V

    .line 146
    .line 147
    .line 148
    int-to-float v11, v7

    .line 149
    int-to-float v12, v8

    .line 150
    add-int/2addr v7, v9

    .line 151
    int-to-float v13, v7

    .line 152
    move v14, v12

    .line 153
    move-object/from16 v10, p1

    .line 154
    .line 155
    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 156
    .line 157
    .line 158
    move v7, v11

    .line 159
    add-int/2addr v8, v6

    .line 160
    int-to-float v14, v8

    .line 161
    move v11, v13

    .line 162
    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 163
    .line 164
    .line 165
    move v6, v12

    .line 166
    move v12, v14

    .line 167
    move v13, v7

    .line 168
    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 169
    .line 170
    .line 171
    move v7, v11

    .line 172
    move v11, v13

    .line 173
    move v14, v6

    .line 174
    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 175
    .line 176
    .line 177
    move/from16 v16, v14

    .line 178
    .line 179
    move v14, v12

    .line 180
    move/from16 v12, v16

    .line 181
    .line 182
    const v6, -0xff0100

    .line 183
    .line 184
    .line 185
    invoke-virtual {v15, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 186
    .line 187
    .line 188
    move v13, v7

    .line 189
    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 190
    .line 191
    .line 192
    move/from16 v16, v14

    .line 193
    .line 194
    move v14, v12

    .line 195
    move/from16 v12, v16

    .line 196
    .line 197
    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 198
    .line 199
    .line 200
    :cond_2
    :goto_2
    add-int/lit8 v5, v5, 0x1

    .line 201
    .line 202
    goto/16 :goto_1

    .line 203
    .line 204
    :cond_3
    return-void
.end method

.method public final e()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 10
    .line 11
    const/high16 v1, 0x400000

    .line 12
    .line 13
    and-int/2addr v0, v1

    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    invoke-virtual {p0}, Landroid/view/View;->getLayoutDirection()I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    const/4 v1, 0x1

    .line 21
    if-ne v1, v0, :cond_0

    .line 22
    .line 23
    return v1

    .line 24
    :cond_0
    const/4 v0, 0x0

    .line 25
    return v0
.end method

.method public f(I)V
    .locals 2

    .line 1
    new-instance v0, Landroidx/constraintlayout/widget/ConstraintLayoutStates;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-direct {v0, v1, p0, p1}, Landroidx/constraintlayout/widget/ConstraintLayoutStates;-><init>(Landroid/content/Context;Landroidx/constraintlayout/widget/ConstraintLayout;I)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->o:Landroidx/constraintlayout/widget/ConstraintLayoutStates;

    .line 11
    .line 12
    return-void
.end method

.method public final forceLayout()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->l:Z

    .line 3
    .line 4
    invoke-super {p0}, Landroid/view/ViewGroup;->forceLayout()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public final g(IIIIZZ)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->s:Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;

    .line 2
    .line 3
    iget v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->e:I

    .line 4
    .line 5
    iget v0, v0, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->d:I

    .line 6
    .line 7
    add-int/2addr p3, v0

    .line 8
    add-int/2addr p4, v1

    .line 9
    const/4 v0, 0x0

    .line 10
    invoke-static {p3, p1, v0}, Landroid/view/View;->resolveSizeAndState(III)I

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    invoke-static {p4, p2, v0}, Landroid/view/View;->resolveSizeAndState(III)I

    .line 15
    .line 16
    .line 17
    move-result p2

    .line 18
    const p3, 0xffffff

    .line 19
    .line 20
    .line 21
    and-int/2addr p1, p3

    .line 22
    and-int/2addr p2, p3

    .line 23
    iget p3, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->j:I

    .line 24
    .line 25
    invoke-static {p3, p1}, Ljava/lang/Math;->min(II)I

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    iget p3, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->k:I

    .line 30
    .line 31
    invoke-static {p3, p2}, Ljava/lang/Math;->min(II)I

    .line 32
    .line 33
    .line 34
    move-result p2

    .line 35
    const/high16 p3, 0x1000000

    .line 36
    .line 37
    if-eqz p5, :cond_0

    .line 38
    .line 39
    or-int/2addr p1, p3

    .line 40
    :cond_0
    if-eqz p6, :cond_1

    .line 41
    .line 42
    or-int/2addr p2, p3

    .line 43
    :cond_1
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 44
    .line 45
    .line 46
    return-void
.end method

.method public final generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .line 1
    new-instance v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 2
    .line 3
    const/4 v1, -0x2

    .line 4
    invoke-direct {v0, v1, v1}, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;-><init>(II)V

    .line 5
    .line 6
    .line 7
    return-object v0
.end method

.method public final generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .line 1
    new-instance v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public final generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .line 2
    new-instance v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    invoke-direct {v0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public getMaxHeight()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->k:I

    .line 2
    .line 3
    return v0
.end method

.method public getMaxWidth()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->j:I

    .line 2
    .line 3
    return v0
.end method

.method public getMinHeight()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->i:I

    .line 2
    .line 3
    return v0
.end method

.method public getMinWidth()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->h:I

    .line 2
    .line 3
    return v0
.end method

.method public getOptimizationLevel()I
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->g:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    .line 2
    .line 3
    iget v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->D0:I

    .line 4
    .line 5
    return v0
.end method

.method public final h(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;Landroid/util/SparseArray;ILandroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->c:Landroid/util/SparseArray;

    .line 2
    .line 3
    invoke-virtual {v0, p4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/view/View;

    .line 8
    .line 9
    invoke-virtual {p3, p4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p3

    .line 13
    check-cast p3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 14
    .line 15
    if-eqz p3, :cond_1

    .line 16
    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 20
    .line 21
    .line 22
    move-result-object p4

    .line 23
    instance-of p4, p4, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 24
    .line 25
    if-eqz p4, :cond_1

    .line 26
    .line 27
    const/4 p4, 0x1

    .line 28
    iput-boolean p4, p2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->b0:Z

    .line 29
    .line 30
    sget-object v1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->i:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    .line 31
    .line 32
    if-ne p5, v1, :cond_0

    .line 33
    .line 34
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 39
    .line 40
    iput-boolean p4, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->b0:Z

    .line 41
    .line 42
    iget-object v0, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->p0:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 43
    .line 44
    iput-boolean p4, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->D:Z

    .line 45
    .line 46
    :cond_0
    invoke-virtual {p1, v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->j(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    invoke-virtual {p3, p5}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->j(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 51
    .line 52
    .line 53
    move-result-object p3

    .line 54
    iget p5, p2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->C:I

    .line 55
    .line 56
    iget p2, p2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->B:I

    .line 57
    .line 58
    invoke-virtual {v0, p3, p5, p2, p4}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->b(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;IIZ)Z

    .line 59
    .line 60
    .line 61
    iput-boolean p4, p1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->D:Z

    .line 62
    .line 63
    sget-object p2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->f:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    .line 64
    .line 65
    invoke-virtual {p1, p2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->j(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 66
    .line 67
    .line 68
    move-result-object p2

    .line 69
    invoke-virtual {p2}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->j()V

    .line 70
    .line 71
    .line 72
    sget-object p2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->h:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    .line 73
    .line 74
    invoke-virtual {p1, p2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->j(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    invoke-virtual {p1}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->j()V

    .line 79
    .line 80
    .line 81
    :cond_1
    return-void
.end method

.method public onLayout(ZIIII)V
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    .line 6
    .line 7
    .line 8
    move-result p2

    .line 9
    const/4 p3, 0x0

    .line 10
    move p4, p3

    .line 11
    :goto_0
    if-ge p4, p1, :cond_3

    .line 12
    .line 13
    invoke-virtual {p0, p4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 14
    .line 15
    .line 16
    move-result-object p5

    .line 17
    invoke-virtual {p5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 22
    .line 23
    iget-object v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->p0:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 24
    .line 25
    invoke-virtual {p5}, Landroid/view/View;->getVisibility()I

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    const/16 v3, 0x8

    .line 30
    .line 31
    if-ne v2, v3, :cond_0

    .line 32
    .line 33
    iget-boolean v2, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->c0:Z

    .line 34
    .line 35
    if-nez v2, :cond_0

    .line 36
    .line 37
    iget-boolean v2, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->d0:Z

    .line 38
    .line 39
    if-nez v2, :cond_0

    .line 40
    .line 41
    if-nez p2, :cond_0

    .line 42
    .line 43
    goto :goto_1

    .line 44
    :cond_0
    iget-boolean v0, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->e0:Z

    .line 45
    .line 46
    if-eqz v0, :cond_1

    .line 47
    .line 48
    goto :goto_1

    .line 49
    :cond_1
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->p()I

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->q()I

    .line 54
    .line 55
    .line 56
    move-result v2

    .line 57
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->o()I

    .line 58
    .line 59
    .line 60
    move-result v3

    .line 61
    add-int/2addr v3, v0

    .line 62
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->l()I

    .line 63
    .line 64
    .line 65
    move-result v1

    .line 66
    add-int/2addr v1, v2

    .line 67
    invoke-virtual {p5, v0, v2, v3, v1}, Landroid/view/View;->layout(IIII)V

    .line 68
    .line 69
    .line 70
    instance-of v4, p5, Landroidx/constraintlayout/widget/Placeholder;

    .line 71
    .line 72
    if-eqz v4, :cond_2

    .line 73
    .line 74
    check-cast p5, Landroidx/constraintlayout/widget/Placeholder;

    .line 75
    .line 76
    invoke-virtual {p5}, Landroidx/constraintlayout/widget/Placeholder;->getContent()Landroid/view/View;

    .line 77
    .line 78
    .line 79
    move-result-object p5

    .line 80
    if-eqz p5, :cond_2

    .line 81
    .line 82
    invoke-virtual {p5, p3}, Landroid/view/View;->setVisibility(I)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {p5, v0, v2, v3, v1}, Landroid/view/View;->layout(IIII)V

    .line 86
    .line 87
    .line 88
    :cond_2
    :goto_1
    add-int/lit8 p4, p4, 0x1

    .line 89
    .line 90
    goto :goto_0

    .line 91
    :cond_3
    iget-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->f:Ljava/util/ArrayList;

    .line 92
    .line 93
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 94
    .line 95
    .line 96
    move-result p2

    .line 97
    if-lez p2, :cond_4

    .line 98
    .line 99
    :goto_2
    if-ge p3, p2, :cond_4

    .line 100
    .line 101
    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    move-result-object p4

    .line 105
    check-cast p4, Landroidx/constraintlayout/widget/ConstraintHelper;

    .line 106
    .line 107
    invoke-virtual {p4}, Landroidx/constraintlayout/widget/ConstraintHelper;->k()V

    .line 108
    .line 109
    .line 110
    add-int/lit8 p3, p3, 0x1

    .line 111
    .line 112
    goto :goto_2

    .line 113
    :cond_4
    return-void
.end method

.method public onMeasure(II)V
    .locals 41

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v6, p1

    .line 4
    .line 5
    move/from16 v7, p2

    .line 6
    .line 7
    iget v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->t:I

    .line 8
    .line 9
    if-ne v1, v6, :cond_0

    .line 10
    .line 11
    iget v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->u:I

    .line 12
    .line 13
    :cond_0
    iget-boolean v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->l:Z

    .line 14
    .line 15
    const/4 v8, 0x1

    .line 16
    const/4 v9, 0x0

    .line 17
    if-nez v1, :cond_2

    .line 18
    .line 19
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    move v2, v9

    .line 24
    :goto_0
    if-ge v2, v1, :cond_2

    .line 25
    .line 26
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    invoke-virtual {v3}, Landroid/view/View;->isLayoutRequested()Z

    .line 31
    .line 32
    .line 33
    move-result v3

    .line 34
    if-eqz v3, :cond_1

    .line 35
    .line 36
    iput-boolean v8, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->l:Z

    .line 37
    .line 38
    goto :goto_1

    .line 39
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_2
    :goto_1
    iput v6, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->t:I

    .line 43
    .line 44
    iput v7, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->u:I

    .line 45
    .line 46
    invoke-virtual {v0}, Landroidx/constraintlayout/widget/ConstraintLayout;->e()Z

    .line 47
    .line 48
    .line 49
    move-result v1

    .line 50
    iget-object v10, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->g:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    .line 51
    .line 52
    iput-boolean v1, v10, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->v0:Z

    .line 53
    .line 54
    iget-object v11, v10, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->r0:Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure;

    .line 55
    .line 56
    iget-boolean v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->l:Z

    .line 57
    .line 58
    sget-object v14, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->h:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    .line 59
    .line 60
    sget-object v16, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->g:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    .line 61
    .line 62
    sget-object v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->g:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 63
    .line 64
    sget-object v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->c:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 65
    .line 66
    sget-object v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->f:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 67
    .line 68
    if-eqz v1, :cond_56

    .line 69
    .line 70
    iput-boolean v9, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->l:Z

    .line 71
    .line 72
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 73
    .line 74
    .line 75
    move-result v1

    .line 76
    move v15, v9

    .line 77
    :goto_2
    if-ge v15, v1, :cond_4

    .line 78
    .line 79
    invoke-virtual {v0, v15}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 80
    .line 81
    .line 82
    move-result-object v17

    .line 83
    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->isLayoutRequested()Z

    .line 84
    .line 85
    .line 86
    move-result v17

    .line 87
    if-eqz v17, :cond_3

    .line 88
    .line 89
    move/from16 v21, v8

    .line 90
    .line 91
    goto :goto_3

    .line 92
    :cond_3
    add-int/lit8 v15, v15, 0x1

    .line 93
    .line 94
    goto :goto_2

    .line 95
    :cond_4
    move/from16 v21, v9

    .line 96
    .line 97
    :goto_3
    if-eqz v21, :cond_55

    .line 98
    .line 99
    invoke-virtual {v0}, Landroid/view/View;->isInEditMode()Z

    .line 100
    .line 101
    .line 102
    move-result v22

    .line 103
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 104
    .line 105
    .line 106
    move-result v1

    .line 107
    move v15, v9

    .line 108
    :goto_4
    if-ge v15, v1, :cond_6

    .line 109
    .line 110
    invoke-virtual {v0, v15}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 111
    .line 112
    .line 113
    move-result-object v2

    .line 114
    invoke-virtual {v0, v2}, Landroidx/constraintlayout/widget/ConstraintLayout;->c(Landroid/view/View;)Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 115
    .line 116
    .line 117
    move-result-object v2

    .line 118
    if-nez v2, :cond_5

    .line 119
    .line 120
    goto :goto_5

    .line 121
    :cond_5
    invoke-virtual {v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->A()V

    .line 122
    .line 123
    .line 124
    :goto_5
    add-int/lit8 v15, v15, 0x1

    .line 125
    .line 126
    goto :goto_4

    .line 127
    :cond_6
    const/4 v15, -0x1

    .line 128
    if-eqz v22, :cond_10

    .line 129
    .line 130
    move v13, v9

    .line 131
    :goto_6
    if-ge v13, v1, :cond_10

    .line 132
    .line 133
    invoke-virtual {v0, v13}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 134
    .line 135
    .line 136
    move-result-object v17

    .line 137
    :try_start_0
    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 138
    .line 139
    .line 140
    move-result-object v12

    .line 141
    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getId()I

    .line 142
    .line 143
    .line 144
    move-result v8

    .line 145
    invoke-virtual {v12, v8}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object v8

    .line 149
    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getId()I

    .line 150
    .line 151
    .line 152
    move-result v12

    .line 153
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 154
    .line 155
    .line 156
    move-result-object v12

    .line 157
    if-eqz v8, :cond_7

    .line 158
    .line 159
    const/16 v18, 0x1

    .line 160
    .line 161
    goto :goto_7

    .line 162
    :cond_7
    move/from16 v18, v9

    .line 163
    .line 164
    :goto_7
    if-eqz v18, :cond_a

    .line 165
    .line 166
    iget-object v2, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->q:Ljava/util/HashMap;

    .line 167
    .line 168
    if-nez v2, :cond_8

    .line 169
    .line 170
    new-instance v2, Ljava/util/HashMap;

    .line 171
    .line 172
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 173
    .line 174
    .line 175
    iput-object v2, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->q:Ljava/util/HashMap;

    .line 176
    .line 177
    :cond_8
    const-string v2, "/"

    .line 178
    .line 179
    invoke-virtual {v8, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 180
    .line 181
    .line 182
    move-result v2

    .line 183
    if-eq v2, v15, :cond_9

    .line 184
    .line 185
    add-int/lit8 v2, v2, 0x1

    .line 186
    .line 187
    invoke-virtual {v8, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 188
    .line 189
    .line 190
    move-result-object v2

    .line 191
    goto :goto_8

    .line 192
    :cond_9
    move-object v2, v8

    .line 193
    :goto_8
    iget-object v9, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->q:Ljava/util/HashMap;

    .line 194
    .line 195
    invoke-virtual {v9, v2, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    .line 197
    .line 198
    :cond_a
    const/16 v2, 0x2f

    .line 199
    .line 200
    invoke-virtual {v8, v2}, Ljava/lang/String;->indexOf(I)I

    .line 201
    .line 202
    .line 203
    move-result v2

    .line 204
    if-eq v2, v15, :cond_b

    .line 205
    .line 206
    add-int/lit8 v2, v2, 0x1

    .line 207
    .line 208
    invoke-virtual {v8, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 209
    .line 210
    .line 211
    move-result-object v8

    .line 212
    :cond_b
    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getId()I

    .line 213
    .line 214
    .line 215
    move-result v2

    .line 216
    if-nez v2, :cond_c

    .line 217
    .line 218
    :goto_9
    move-object v2, v10

    .line 219
    goto :goto_a

    .line 220
    :cond_c
    iget-object v9, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->c:Landroid/util/SparseArray;

    .line 221
    .line 222
    invoke-virtual {v9, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 223
    .line 224
    .line 225
    move-result-object v9

    .line 226
    check-cast v9, Landroid/view/View;

    .line 227
    .line 228
    if-nez v9, :cond_d

    .line 229
    .line 230
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 231
    .line 232
    .line 233
    move-result-object v9

    .line 234
    if-eqz v9, :cond_d

    .line 235
    .line 236
    if-eq v9, v0, :cond_d

    .line 237
    .line 238
    invoke-virtual {v9}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 239
    .line 240
    .line 241
    move-result-object v2

    .line 242
    if-ne v2, v0, :cond_d

    .line 243
    .line 244
    invoke-virtual {v0, v9}, Landroidx/constraintlayout/widget/ConstraintLayout;->onViewAdded(Landroid/view/View;)V

    .line 245
    .line 246
    .line 247
    :cond_d
    if-ne v9, v0, :cond_e

    .line 248
    .line 249
    goto :goto_9

    .line 250
    :cond_e
    if-nez v9, :cond_f

    .line 251
    .line 252
    const/4 v2, 0x0

    .line 253
    goto :goto_a

    .line 254
    :cond_f
    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 255
    .line 256
    .line 257
    move-result-object v2

    .line 258
    check-cast v2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 259
    .line 260
    iget-object v2, v2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->p0:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 261
    .line 262
    :goto_a
    iput-object v8, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->i0:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 263
    .line 264
    :catch_0
    add-int/lit8 v13, v13, 0x1

    .line 265
    .line 266
    const/4 v8, 0x1

    .line 267
    const/4 v9, 0x0

    .line 268
    goto/16 :goto_6

    .line 269
    .line 270
    :cond_10
    iget v2, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->p:I

    .line 271
    .line 272
    if-eq v2, v15, :cond_12

    .line 273
    .line 274
    const/4 v2, 0x0

    .line 275
    :goto_b
    if-ge v2, v1, :cond_12

    .line 276
    .line 277
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 278
    .line 279
    .line 280
    move-result-object v8

    .line 281
    invoke-virtual {v8}, Landroid/view/View;->getId()I

    .line 282
    .line 283
    .line 284
    move-result v9

    .line 285
    iget v12, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->p:I

    .line 286
    .line 287
    if-ne v9, v12, :cond_11

    .line 288
    .line 289
    instance-of v9, v8, Landroidx/constraintlayout/widget/Constraints;

    .line 290
    .line 291
    if-eqz v9, :cond_11

    .line 292
    .line 293
    check-cast v8, Landroidx/constraintlayout/widget/Constraints;

    .line 294
    .line 295
    invoke-virtual {v8}, Landroidx/constraintlayout/widget/Constraints;->getConstraintSet()Landroidx/constraintlayout/widget/ConstraintSet;

    .line 296
    .line 297
    .line 298
    move-result-object v8

    .line 299
    iput-object v8, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->n:Landroidx/constraintlayout/widget/ConstraintSet;

    .line 300
    .line 301
    :cond_11
    add-int/lit8 v2, v2, 0x1

    .line 302
    .line 303
    goto :goto_b

    .line 304
    :cond_12
    iget-object v2, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->n:Landroidx/constraintlayout/widget/ConstraintSet;

    .line 305
    .line 306
    if-eqz v2, :cond_13

    .line 307
    .line 308
    invoke-virtual {v2, v0}, Landroidx/constraintlayout/widget/ConstraintSet;->a(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    .line 309
    .line 310
    .line 311
    :cond_13
    iget-object v2, v10, Landroidx/constraintlayout/core/widgets/WidgetContainer;->q0:Ljava/util/ArrayList;

    .line 312
    .line 313
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 314
    .line 315
    .line 316
    iget-object v2, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->f:Ljava/util/ArrayList;

    .line 317
    .line 318
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 319
    .line 320
    .line 321
    move-result v8

    .line 322
    if-lez v8, :cond_1c

    .line 323
    .line 324
    const/4 v9, 0x0

    .line 325
    :goto_c
    if-ge v9, v8, :cond_1c

    .line 326
    .line 327
    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 328
    .line 329
    .line 330
    move-result-object v12

    .line 331
    check-cast v12, Landroidx/constraintlayout/widget/ConstraintHelper;

    .line 332
    .line 333
    iget-object v13, v12, Landroidx/constraintlayout/widget/ConstraintHelper;->l:Ljava/util/HashMap;

    .line 334
    .line 335
    invoke-virtual {v12}, Landroid/view/View;->isInEditMode()Z

    .line 336
    .line 337
    .line 338
    move-result v17

    .line 339
    if-eqz v17, :cond_14

    .line 340
    .line 341
    iget-object v15, v12, Landroidx/constraintlayout/widget/ConstraintHelper;->i:Ljava/lang/String;

    .line 342
    .line 343
    invoke-virtual {v12, v15}, Landroidx/constraintlayout/widget/ConstraintHelper;->setIds(Ljava/lang/String;)V

    .line 344
    .line 345
    .line 346
    :cond_14
    iget-object v15, v12, Landroidx/constraintlayout/widget/ConstraintHelper;->h:Landroidx/constraintlayout/core/widgets/HelperWidget;

    .line 347
    .line 348
    if-nez v15, :cond_15

    .line 349
    .line 350
    move-object/from16 v19, v2

    .line 351
    .line 352
    move-object/from16 v28, v3

    .line 353
    .line 354
    move-object/from16 v29, v4

    .line 355
    .line 356
    goto/16 :goto_12

    .line 357
    .line 358
    :cond_15
    move-object/from16 v19, v2

    .line 359
    .line 360
    const/4 v2, 0x0

    .line 361
    iput v2, v15, Landroidx/constraintlayout/core/widgets/HelperWidget;->r0:I

    .line 362
    .line 363
    iget-object v2, v15, Landroidx/constraintlayout/core/widgets/HelperWidget;->q0:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 364
    .line 365
    const/4 v15, 0x0

    .line 366
    invoke-static {v2, v15}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 367
    .line 368
    .line 369
    const/4 v2, 0x0

    .line 370
    :goto_d
    iget v15, v12, Landroidx/constraintlayout/widget/ConstraintHelper;->f:I

    .line 371
    .line 372
    if-ge v2, v15, :cond_1b

    .line 373
    .line 374
    iget-object v15, v12, Landroidx/constraintlayout/widget/ConstraintHelper;->c:[I

    .line 375
    .line 376
    aget v15, v15, v2

    .line 377
    .line 378
    invoke-virtual {v0, v15}, Landroidx/constraintlayout/widget/ConstraintLayout;->b(I)Landroid/view/View;

    .line 379
    .line 380
    .line 381
    move-result-object v20

    .line 382
    if-nez v20, :cond_17

    .line 383
    .line 384
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 385
    .line 386
    .line 387
    move-result-object v15

    .line 388
    invoke-virtual {v13, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 389
    .line 390
    .line 391
    move-result-object v15

    .line 392
    check-cast v15, Ljava/lang/String;

    .line 393
    .line 394
    move/from16 v27, v2

    .line 395
    .line 396
    invoke-virtual {v12, v0, v15}, Landroidx/constraintlayout/widget/ConstraintHelper;->g(Landroidx/constraintlayout/widget/ConstraintLayout;Ljava/lang/String;)I

    .line 397
    .line 398
    .line 399
    move-result v2

    .line 400
    move-object/from16 v28, v3

    .line 401
    .line 402
    if-eqz v2, :cond_16

    .line 403
    .line 404
    iget-object v3, v12, Landroidx/constraintlayout/widget/ConstraintHelper;->c:[I

    .line 405
    .line 406
    aput v2, v3, v27

    .line 407
    .line 408
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 409
    .line 410
    .line 411
    move-result-object v3

    .line 412
    invoke-virtual {v13, v3, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 413
    .line 414
    .line 415
    invoke-virtual {v0, v2}, Landroidx/constraintlayout/widget/ConstraintLayout;->b(I)Landroid/view/View;

    .line 416
    .line 417
    .line 418
    move-result-object v20

    .line 419
    :cond_16
    :goto_e
    move-object/from16 v2, v20

    .line 420
    .line 421
    goto :goto_f

    .line 422
    :cond_17
    move/from16 v27, v2

    .line 423
    .line 424
    move-object/from16 v28, v3

    .line 425
    .line 426
    goto :goto_e

    .line 427
    :goto_f
    if-eqz v2, :cond_1a

    .line 428
    .line 429
    iget-object v3, v12, Landroidx/constraintlayout/widget/ConstraintHelper;->h:Landroidx/constraintlayout/core/widgets/HelperWidget;

    .line 430
    .line 431
    invoke-virtual {v0, v2}, Landroidx/constraintlayout/widget/ConstraintLayout;->c(Landroid/view/View;)Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 432
    .line 433
    .line 434
    move-result-object v2

    .line 435
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 436
    .line 437
    .line 438
    if-eq v2, v3, :cond_1a

    .line 439
    .line 440
    if-nez v2, :cond_18

    .line 441
    .line 442
    goto :goto_10

    .line 443
    :cond_18
    iget v15, v3, Landroidx/constraintlayout/core/widgets/HelperWidget;->r0:I

    .line 444
    .line 445
    add-int/lit8 v15, v15, 0x1

    .line 446
    .line 447
    move-object/from16 v20, v2

    .line 448
    .line 449
    iget-object v2, v3, Landroidx/constraintlayout/core/widgets/HelperWidget;->q0:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 450
    .line 451
    move-object/from16 v29, v4

    .line 452
    .line 453
    array-length v4, v2

    .line 454
    if-le v15, v4, :cond_19

    .line 455
    .line 456
    array-length v4, v2

    .line 457
    mul-int/lit8 v4, v4, 0x2

    .line 458
    .line 459
    invoke-static {v2, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 460
    .line 461
    .line 462
    move-result-object v2

    .line 463
    check-cast v2, [Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 464
    .line 465
    iput-object v2, v3, Landroidx/constraintlayout/core/widgets/HelperWidget;->q0:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 466
    .line 467
    :cond_19
    iget-object v2, v3, Landroidx/constraintlayout/core/widgets/HelperWidget;->q0:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 468
    .line 469
    iget v4, v3, Landroidx/constraintlayout/core/widgets/HelperWidget;->r0:I

    .line 470
    .line 471
    aput-object v20, v2, v4

    .line 472
    .line 473
    add-int/lit8 v4, v4, 0x1

    .line 474
    .line 475
    iput v4, v3, Landroidx/constraintlayout/core/widgets/HelperWidget;->r0:I

    .line 476
    .line 477
    goto :goto_11

    .line 478
    :cond_1a
    :goto_10
    move-object/from16 v29, v4

    .line 479
    .line 480
    :goto_11
    add-int/lit8 v2, v27, 0x1

    .line 481
    .line 482
    move-object/from16 v3, v28

    .line 483
    .line 484
    move-object/from16 v4, v29

    .line 485
    .line 486
    goto :goto_d

    .line 487
    :cond_1b
    move-object/from16 v28, v3

    .line 488
    .line 489
    move-object/from16 v29, v4

    .line 490
    .line 491
    iget-object v2, v12, Landroidx/constraintlayout/widget/ConstraintHelper;->h:Landroidx/constraintlayout/core/widgets/HelperWidget;

    .line 492
    .line 493
    invoke-interface {v2}, Landroidx/constraintlayout/core/widgets/Helper;->a()V

    .line 494
    .line 495
    .line 496
    :goto_12
    add-int/lit8 v9, v9, 0x1

    .line 497
    .line 498
    move-object/from16 v2, v19

    .line 499
    .line 500
    move-object/from16 v3, v28

    .line 501
    .line 502
    move-object/from16 v4, v29

    .line 503
    .line 504
    const/4 v15, -0x1

    .line 505
    goto/16 :goto_c

    .line 506
    .line 507
    :cond_1c
    move-object/from16 v28, v3

    .line 508
    .line 509
    move-object/from16 v29, v4

    .line 510
    .line 511
    const/4 v2, 0x0

    .line 512
    :goto_13
    if-ge v2, v1, :cond_1f

    .line 513
    .line 514
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 515
    .line 516
    .line 517
    move-result-object v3

    .line 518
    instance-of v4, v3, Landroidx/constraintlayout/widget/Placeholder;

    .line 519
    .line 520
    if-eqz v4, :cond_1e

    .line 521
    .line 522
    check-cast v3, Landroidx/constraintlayout/widget/Placeholder;

    .line 523
    .line 524
    iget v4, v3, Landroidx/constraintlayout/widget/Placeholder;->c:I

    .line 525
    .line 526
    const/4 v8, -0x1

    .line 527
    if-ne v4, v8, :cond_1d

    .line 528
    .line 529
    invoke-virtual {v3}, Landroid/view/View;->isInEditMode()Z

    .line 530
    .line 531
    .line 532
    move-result v4

    .line 533
    if-nez v4, :cond_1d

    .line 534
    .line 535
    iget v4, v3, Landroidx/constraintlayout/widget/Placeholder;->g:I

    .line 536
    .line 537
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 538
    .line 539
    .line 540
    :cond_1d
    iget v4, v3, Landroidx/constraintlayout/widget/Placeholder;->c:I

    .line 541
    .line 542
    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 543
    .line 544
    .line 545
    move-result-object v4

    .line 546
    iput-object v4, v3, Landroidx/constraintlayout/widget/Placeholder;->f:Landroid/view/View;

    .line 547
    .line 548
    if-eqz v4, :cond_1e

    .line 549
    .line 550
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 551
    .line 552
    .line 553
    move-result-object v4

    .line 554
    check-cast v4, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 555
    .line 556
    const/4 v8, 0x1

    .line 557
    iput-boolean v8, v4, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->e0:Z

    .line 558
    .line 559
    iget-object v4, v3, Landroidx/constraintlayout/widget/Placeholder;->f:Landroid/view/View;

    .line 560
    .line 561
    const/4 v8, 0x0

    .line 562
    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    .line 563
    .line 564
    .line 565
    invoke-virtual {v3, v8}, Landroid/view/View;->setVisibility(I)V

    .line 566
    .line 567
    .line 568
    goto :goto_14

    .line 569
    :cond_1e
    const/4 v8, 0x0

    .line 570
    :goto_14
    add-int/lit8 v2, v2, 0x1

    .line 571
    .line 572
    goto :goto_13

    .line 573
    :cond_1f
    const/4 v8, 0x0

    .line 574
    iget-object v3, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->r:Landroid/util/SparseArray;

    .line 575
    .line 576
    invoke-virtual {v3}, Landroid/util/SparseArray;->clear()V

    .line 577
    .line 578
    .line 579
    invoke-virtual {v3, v8, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 580
    .line 581
    .line 582
    invoke-virtual {v0}, Landroid/view/View;->getId()I

    .line 583
    .line 584
    .line 585
    move-result v2

    .line 586
    invoke-virtual {v3, v2, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 587
    .line 588
    .line 589
    const/4 v2, 0x0

    .line 590
    :goto_15
    if-ge v2, v1, :cond_20

    .line 591
    .line 592
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 593
    .line 594
    .line 595
    move-result-object v4

    .line 596
    invoke-virtual {v0, v4}, Landroidx/constraintlayout/widget/ConstraintLayout;->c(Landroid/view/View;)Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 597
    .line 598
    .line 599
    move-result-object v8

    .line 600
    invoke-virtual {v4}, Landroid/view/View;->getId()I

    .line 601
    .line 602
    .line 603
    move-result v4

    .line 604
    invoke-virtual {v3, v4, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 605
    .line 606
    .line 607
    add-int/lit8 v2, v2, 0x1

    .line 608
    .line 609
    goto :goto_15

    .line 610
    :cond_20
    const/4 v8, 0x0

    .line 611
    :goto_16
    if-ge v8, v1, :cond_54

    .line 612
    .line 613
    invoke-virtual {v0, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 614
    .line 615
    .line 616
    move-result-object v2

    .line 617
    invoke-virtual {v0, v2}, Landroidx/constraintlayout/widget/ConstraintLayout;->c(Landroid/view/View;)Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 618
    .line 619
    .line 620
    move-result-object v13

    .line 621
    if-nez v13, :cond_22

    .line 622
    .line 623
    :cond_21
    :goto_17
    move/from16 v38, v1

    .line 624
    .line 625
    move-object/from16 v18, v3

    .line 626
    .line 627
    move-object v9, v5

    .line 628
    move/from16 v27, v8

    .line 629
    .line 630
    move-object v5, v14

    .line 631
    move-object/from16 v13, v16

    .line 632
    .line 633
    move-object/from16 v4, v28

    .line 634
    .line 635
    const/4 v3, 0x2

    .line 636
    goto/16 :goto_2d

    .line 637
    .line 638
    :cond_22
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 639
    .line 640
    .line 641
    move-result-object v4

    .line 642
    check-cast v4, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 643
    .line 644
    iget-object v9, v10, Landroidx/constraintlayout/core/widgets/WidgetContainer;->q0:Ljava/util/ArrayList;

    .line 645
    .line 646
    invoke-virtual {v9, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 647
    .line 648
    .line 649
    iget-object v9, v13, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->U:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 650
    .line 651
    if-eqz v9, :cond_23

    .line 652
    .line 653
    check-cast v9, Landroidx/constraintlayout/core/widgets/WidgetContainer;

    .line 654
    .line 655
    iget-object v9, v9, Landroidx/constraintlayout/core/widgets/WidgetContainer;->q0:Ljava/util/ArrayList;

    .line 656
    .line 657
    invoke-virtual {v9, v13}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 658
    .line 659
    .line 660
    invoke-virtual {v13}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->A()V

    .line 661
    .line 662
    .line 663
    :cond_23
    iput-object v10, v13, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->U:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 664
    .line 665
    invoke-virtual {v4}, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->a()V

    .line 666
    .line 667
    .line 668
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    .line 669
    .line 670
    .line 671
    move-result v9

    .line 672
    iput v9, v13, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->h0:I

    .line 673
    .line 674
    iget-boolean v9, v4, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->e0:Z

    .line 675
    .line 676
    if-eqz v9, :cond_24

    .line 677
    .line 678
    const/4 v9, 0x1

    .line 679
    iput-boolean v9, v13, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->E:Z

    .line 680
    .line 681
    const/16 v9, 0x8

    .line 682
    .line 683
    iput v9, v13, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->h0:I

    .line 684
    .line 685
    :cond_24
    iput-object v2, v13, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->g0:Landroid/view/View;

    .line 686
    .line 687
    instance-of v9, v2, Landroidx/constraintlayout/widget/ConstraintHelper;

    .line 688
    .line 689
    if-eqz v9, :cond_25

    .line 690
    .line 691
    check-cast v2, Landroidx/constraintlayout/widget/ConstraintHelper;

    .line 692
    .line 693
    iget-boolean v9, v10, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->v0:Z

    .line 694
    .line 695
    invoke-virtual {v2, v13, v9}, Landroidx/constraintlayout/widget/ConstraintHelper;->j(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Z)V

    .line 696
    .line 697
    .line 698
    :cond_25
    iget-boolean v2, v4, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->c0:Z

    .line 699
    .line 700
    if-eqz v2, :cond_28

    .line 701
    .line 702
    check-cast v13, Landroidx/constraintlayout/core/widgets/Guideline;

    .line 703
    .line 704
    iget v2, v4, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->m0:I

    .line 705
    .line 706
    iget v9, v4, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->n0:I

    .line 707
    .line 708
    iget v4, v4, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->o0:F

    .line 709
    .line 710
    const/high16 v12, -0x40800000    # -1.0f

    .line 711
    .line 712
    cmpl-float v15, v4, v12

    .line 713
    .line 714
    if-eqz v15, :cond_26

    .line 715
    .line 716
    if-lez v15, :cond_21

    .line 717
    .line 718
    iput v4, v13, Landroidx/constraintlayout/core/widgets/Guideline;->q0:F

    .line 719
    .line 720
    const/4 v4, -0x1

    .line 721
    iput v4, v13, Landroidx/constraintlayout/core/widgets/Guideline;->r0:I

    .line 722
    .line 723
    iput v4, v13, Landroidx/constraintlayout/core/widgets/Guideline;->s0:I

    .line 724
    .line 725
    goto :goto_17

    .line 726
    :cond_26
    const/4 v4, -0x1

    .line 727
    if-eq v2, v4, :cond_27

    .line 728
    .line 729
    if-le v2, v4, :cond_21

    .line 730
    .line 731
    iput v12, v13, Landroidx/constraintlayout/core/widgets/Guideline;->q0:F

    .line 732
    .line 733
    iput v2, v13, Landroidx/constraintlayout/core/widgets/Guideline;->r0:I

    .line 734
    .line 735
    iput v4, v13, Landroidx/constraintlayout/core/widgets/Guideline;->s0:I

    .line 736
    .line 737
    goto :goto_17

    .line 738
    :cond_27
    if-eq v9, v4, :cond_21

    .line 739
    .line 740
    if-le v9, v4, :cond_21

    .line 741
    .line 742
    iput v12, v13, Landroidx/constraintlayout/core/widgets/Guideline;->q0:F

    .line 743
    .line 744
    iput v4, v13, Landroidx/constraintlayout/core/widgets/Guideline;->r0:I

    .line 745
    .line 746
    iput v9, v13, Landroidx/constraintlayout/core/widgets/Guideline;->s0:I

    .line 747
    .line 748
    goto :goto_17

    .line 749
    :cond_28
    iget v2, v4, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->f0:I

    .line 750
    .line 751
    iget v9, v4, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->g0:I

    .line 752
    .line 753
    iget v12, v4, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->h0:I

    .line 754
    .line 755
    iget v15, v4, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->i0:I

    .line 756
    .line 757
    iget v0, v4, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->j0:I

    .line 758
    .line 759
    move/from16 v35, v0

    .line 760
    .line 761
    iget v0, v4, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->k0:I

    .line 762
    .line 763
    move/from16 v27, v8

    .line 764
    .line 765
    iget v8, v4, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->l0:F

    .line 766
    .line 767
    move/from16 v36, v0

    .line 768
    .line 769
    iget v0, v4, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->o:I

    .line 770
    .line 771
    sget-object v18, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->c:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    .line 772
    .line 773
    sget-object v37, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->f:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    .line 774
    .line 775
    move/from16 v38, v1

    .line 776
    .line 777
    const/4 v1, -0x1

    .line 778
    if-eq v0, v1, :cond_2a

    .line 779
    .line 780
    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 781
    .line 782
    .line 783
    move-result-object v0

    .line 784
    move-object/from16 v32, v0

    .line 785
    .line 786
    check-cast v32, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 787
    .line 788
    if-eqz v32, :cond_29

    .line 789
    .line 790
    iget v0, v4, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->q:F

    .line 791
    .line 792
    iget v1, v4, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->p:I

    .line 793
    .line 794
    sget-object v31, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->j:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    .line 795
    .line 796
    const/16 v35, 0x0

    .line 797
    .line 798
    move-object/from16 v33, v31

    .line 799
    .line 800
    move/from16 v34, v1

    .line 801
    .line 802
    move-object/from16 v30, v13

    .line 803
    .line 804
    invoke-virtual/range {v30 .. v35}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->t(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;II)V

    .line 805
    .line 806
    .line 807
    iput v0, v13, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->C:F

    .line 808
    .line 809
    :cond_29
    move-object/from16 v0, p0

    .line 810
    .line 811
    move-object v2, v4

    .line 812
    move-object/from16 v40, v5

    .line 813
    .line 814
    move-object v1, v13

    .line 815
    move-object v5, v14

    .line 816
    move-object/from16 v13, v16

    .line 817
    .line 818
    move-object/from16 v12, v18

    .line 819
    .line 820
    move-object/from16 v39, v28

    .line 821
    .line 822
    move-object/from16 v15, v29

    .line 823
    .line 824
    move-object/from16 v14, v37

    .line 825
    .line 826
    const/4 v9, -0x1

    .line 827
    const/16 v23, 0x0

    .line 828
    .line 829
    goto/16 :goto_21

    .line 830
    .line 831
    :cond_2a
    if-eq v2, v1, :cond_2d

    .line 832
    .line 833
    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 834
    .line 835
    .line 836
    move-result-object v0

    .line 837
    move-object/from16 v32, v0

    .line 838
    .line 839
    check-cast v32, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 840
    .line 841
    if-eqz v32, :cond_2b

    .line 842
    .line 843
    iget v0, v4, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 844
    .line 845
    move-object/from16 v33, v18

    .line 846
    .line 847
    move/from16 v34, v0

    .line 848
    .line 849
    move-object/from16 v30, v13

    .line 850
    .line 851
    move-object/from16 v31, v18

    .line 852
    .line 853
    invoke-virtual/range {v30 .. v35}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->t(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;II)V

    .line 854
    .line 855
    .line 856
    goto :goto_18

    .line 857
    :cond_2b
    move-object/from16 v31, v18

    .line 858
    .line 859
    :cond_2c
    :goto_18
    move v9, v1

    .line 860
    move v0, v15

    .line 861
    goto :goto_19

    .line 862
    :cond_2d
    move-object/from16 v31, v18

    .line 863
    .line 864
    if-eq v9, v1, :cond_2c

    .line 865
    .line 866
    invoke-virtual {v3, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 867
    .line 868
    .line 869
    move-result-object v0

    .line 870
    move-object/from16 v17, v0

    .line 871
    .line 872
    check-cast v17, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 873
    .line 874
    if-eqz v17, :cond_2c

    .line 875
    .line 876
    iget v0, v4, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 877
    .line 878
    move/from16 v19, v0

    .line 879
    .line 880
    move v9, v1

    .line 881
    move v0, v15

    .line 882
    move-object/from16 v18, v16

    .line 883
    .line 884
    move-object/from16 v16, v31

    .line 885
    .line 886
    move/from16 v20, v35

    .line 887
    .line 888
    move-object v15, v13

    .line 889
    invoke-virtual/range {v15 .. v20}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->t(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;II)V

    .line 890
    .line 891
    .line 892
    move-object/from16 v16, v18

    .line 893
    .line 894
    :goto_19
    if-eq v12, v9, :cond_30

    .line 895
    .line 896
    invoke-virtual {v3, v12}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 897
    .line 898
    .line 899
    move-result-object v0

    .line 900
    move-object/from16 v17, v0

    .line 901
    .line 902
    check-cast v17, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 903
    .line 904
    if-eqz v17, :cond_2e

    .line 905
    .line 906
    iget v0, v4, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 907
    .line 908
    move/from16 v19, v0

    .line 909
    .line 910
    move-object v15, v13

    .line 911
    move-object/from16 v18, v31

    .line 912
    .line 913
    move/from16 v20, v36

    .line 914
    .line 915
    invoke-virtual/range {v15 .. v20}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->t(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;II)V

    .line 916
    .line 917
    .line 918
    move-object/from16 v12, v18

    .line 919
    .line 920
    goto :goto_1a

    .line 921
    :cond_2e
    move-object/from16 v12, v31

    .line 922
    .line 923
    :cond_2f
    :goto_1a
    move-object/from16 v0, v16

    .line 924
    .line 925
    goto :goto_1b

    .line 926
    :cond_30
    move-object/from16 v12, v31

    .line 927
    .line 928
    move/from16 v20, v36

    .line 929
    .line 930
    if-eq v0, v9, :cond_2f

    .line 931
    .line 932
    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 933
    .line 934
    .line 935
    move-result-object v0

    .line 936
    move-object/from16 v17, v0

    .line 937
    .line 938
    check-cast v17, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 939
    .line 940
    if-eqz v17, :cond_2f

    .line 941
    .line 942
    iget v0, v4, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 943
    .line 944
    move-object/from16 v18, v16

    .line 945
    .line 946
    move/from16 v19, v0

    .line 947
    .line 948
    move-object v15, v13

    .line 949
    invoke-virtual/range {v15 .. v20}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->t(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;II)V

    .line 950
    .line 951
    .line 952
    goto :goto_1a

    .line 953
    :goto_1b
    iget v1, v4, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->h:I

    .line 954
    .line 955
    if-eq v1, v9, :cond_33

    .line 956
    .line 957
    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 958
    .line 959
    .line 960
    move-result-object v1

    .line 961
    move-object/from16 v32, v1

    .line 962
    .line 963
    check-cast v32, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 964
    .line 965
    if-eqz v32, :cond_31

    .line 966
    .line 967
    iget v1, v4, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 968
    .line 969
    iget v2, v4, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->w:I

    .line 970
    .line 971
    move-object/from16 v33, v37

    .line 972
    .line 973
    move/from16 v34, v1

    .line 974
    .line 975
    move/from16 v35, v2

    .line 976
    .line 977
    move-object/from16 v30, v13

    .line 978
    .line 979
    move-object/from16 v31, v37

    .line 980
    .line 981
    invoke-virtual/range {v30 .. v35}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->t(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;II)V

    .line 982
    .line 983
    .line 984
    goto :goto_1c

    .line 985
    :cond_31
    move-object/from16 v31, v37

    .line 986
    .line 987
    :cond_32
    :goto_1c
    const/16 v24, 0x2

    .line 988
    .line 989
    goto :goto_1d

    .line 990
    :cond_33
    move-object/from16 v31, v37

    .line 991
    .line 992
    iget v1, v4, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->i:I

    .line 993
    .line 994
    if-eq v1, v9, :cond_32

    .line 995
    .line 996
    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 997
    .line 998
    .line 999
    move-result-object v1

    .line 1000
    move-object v15, v1

    .line 1001
    check-cast v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 1002
    .line 1003
    if-eqz v15, :cond_32

    .line 1004
    .line 1005
    iget v1, v4, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 1006
    .line 1007
    iget v2, v4, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->w:I

    .line 1008
    .line 1009
    move/from16 v17, v1

    .line 1010
    .line 1011
    move/from16 v18, v2

    .line 1012
    .line 1013
    move-object/from16 v16, v14

    .line 1014
    .line 1015
    move-object/from16 v14, v31

    .line 1016
    .line 1017
    const/16 v24, 0x2

    .line 1018
    .line 1019
    invoke-virtual/range {v13 .. v18}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->t(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;II)V

    .line 1020
    .line 1021
    .line 1022
    move-object/from16 v14, v16

    .line 1023
    .line 1024
    :goto_1d
    iget v1, v4, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->j:I

    .line 1025
    .line 1026
    if-eq v1, v9, :cond_35

    .line 1027
    .line 1028
    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 1029
    .line 1030
    .line 1031
    move-result-object v1

    .line 1032
    move-object v15, v1

    .line 1033
    check-cast v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 1034
    .line 1035
    if-eqz v15, :cond_34

    .line 1036
    .line 1037
    iget v1, v4, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 1038
    .line 1039
    iget v2, v4, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->y:I

    .line 1040
    .line 1041
    move/from16 v17, v1

    .line 1042
    .line 1043
    move/from16 v18, v2

    .line 1044
    .line 1045
    move-object/from16 v16, v31

    .line 1046
    .line 1047
    invoke-virtual/range {v13 .. v18}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->t(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;II)V

    .line 1048
    .line 1049
    .line 1050
    :cond_34
    :goto_1e
    move-object v2, v4

    .line 1051
    goto :goto_1f

    .line 1052
    :cond_35
    iget v1, v4, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->k:I

    .line 1053
    .line 1054
    if-eq v1, v9, :cond_34

    .line 1055
    .line 1056
    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 1057
    .line 1058
    .line 1059
    move-result-object v1

    .line 1060
    move-object v15, v1

    .line 1061
    check-cast v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 1062
    .line 1063
    if-eqz v15, :cond_34

    .line 1064
    .line 1065
    iget v1, v4, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 1066
    .line 1067
    iget v2, v4, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->y:I

    .line 1068
    .line 1069
    move-object/from16 v16, v14

    .line 1070
    .line 1071
    move/from16 v17, v1

    .line 1072
    .line 1073
    move/from16 v18, v2

    .line 1074
    .line 1075
    invoke-virtual/range {v13 .. v18}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->t(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;II)V

    .line 1076
    .line 1077
    .line 1078
    goto :goto_1e

    .line 1079
    :goto_1f
    iget v4, v2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->l:I

    .line 1080
    .line 1081
    if-eq v4, v9, :cond_36

    .line 1082
    .line 1083
    move-object v1, v5

    .line 1084
    sget-object v5, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->i:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    .line 1085
    .line 1086
    move-object/from16 v40, v1

    .line 1087
    .line 1088
    move-object v1, v13

    .line 1089
    move-object/from16 v39, v28

    .line 1090
    .line 1091
    move-object/from16 v15, v29

    .line 1092
    .line 1093
    const/16 v23, 0x0

    .line 1094
    .line 1095
    move-object v13, v0

    .line 1096
    move-object/from16 v0, p0

    .line 1097
    .line 1098
    invoke-virtual/range {v0 .. v5}, Landroidx/constraintlayout/widget/ConstraintLayout;->h(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;Landroid/util/SparseArray;ILandroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)V

    .line 1099
    .line 1100
    .line 1101
    move-object v5, v14

    .line 1102
    move-object/from16 v14, v31

    .line 1103
    .line 1104
    goto :goto_20

    .line 1105
    :cond_36
    move-object/from16 v40, v5

    .line 1106
    .line 1107
    move-object/from16 v30, v13

    .line 1108
    .line 1109
    move-object/from16 v39, v28

    .line 1110
    .line 1111
    move-object/from16 v15, v29

    .line 1112
    .line 1113
    const/16 v23, 0x0

    .line 1114
    .line 1115
    move-object v13, v0

    .line 1116
    iget v4, v2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->m:I

    .line 1117
    .line 1118
    if-eq v4, v9, :cond_37

    .line 1119
    .line 1120
    move-object/from16 v0, p0

    .line 1121
    .line 1122
    move-object/from16 v1, v30

    .line 1123
    .line 1124
    move-object/from16 v5, v31

    .line 1125
    .line 1126
    invoke-virtual/range {v0 .. v5}, Landroidx/constraintlayout/widget/ConstraintLayout;->h(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;Landroid/util/SparseArray;ILandroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)V

    .line 1127
    .line 1128
    .line 1129
    move-object v0, v14

    .line 1130
    move-object v14, v5

    .line 1131
    move-object v5, v0

    .line 1132
    move-object/from16 v0, p0

    .line 1133
    .line 1134
    goto :goto_20

    .line 1135
    :cond_37
    iget v4, v2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->n:I

    .line 1136
    .line 1137
    move-object/from16 v0, p0

    .line 1138
    .line 1139
    move-object v5, v14

    .line 1140
    move-object/from16 v1, v30

    .line 1141
    .line 1142
    move-object/from16 v14, v31

    .line 1143
    .line 1144
    if-eq v4, v9, :cond_38

    .line 1145
    .line 1146
    invoke-virtual/range {v0 .. v5}, Landroidx/constraintlayout/widget/ConstraintLayout;->h(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;Landroid/util/SparseArray;ILandroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)V

    .line 1147
    .line 1148
    .line 1149
    :cond_38
    :goto_20
    cmpl-float v4, v8, v23

    .line 1150
    .line 1151
    if-ltz v4, :cond_39

    .line 1152
    .line 1153
    iput v8, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->e0:F

    .line 1154
    .line 1155
    :cond_39
    iget v4, v2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->E:F

    .line 1156
    .line 1157
    cmpl-float v8, v4, v23

    .line 1158
    .line 1159
    if-ltz v8, :cond_3a

    .line 1160
    .line 1161
    iput v4, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->f0:F

    .line 1162
    .line 1163
    :cond_3a
    :goto_21
    if-eqz v22, :cond_3c

    .line 1164
    .line 1165
    iget v4, v2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->S:I

    .line 1166
    .line 1167
    if-ne v4, v9, :cond_3b

    .line 1168
    .line 1169
    iget v8, v2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->T:I

    .line 1170
    .line 1171
    if-eq v8, v9, :cond_3c

    .line 1172
    .line 1173
    :cond_3b
    iget v8, v2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->T:I

    .line 1174
    .line 1175
    iput v4, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->Z:I

    .line 1176
    .line 1177
    iput v8, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->a0:I

    .line 1178
    .line 1179
    :cond_3c
    iget-boolean v4, v2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->Z:Z

    .line 1180
    .line 1181
    sget-object v8, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->h:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 1182
    .line 1183
    if-nez v4, :cond_40

    .line 1184
    .line 1185
    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 1186
    .line 1187
    if-ne v4, v9, :cond_3f

    .line 1188
    .line 1189
    iget-boolean v4, v2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->V:Z

    .line 1190
    .line 1191
    if-eqz v4, :cond_3d

    .line 1192
    .line 1193
    move-object/from16 v4, v39

    .line 1194
    .line 1195
    invoke-virtual {v1, v4}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->I(Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;)V

    .line 1196
    .line 1197
    .line 1198
    goto :goto_22

    .line 1199
    :cond_3d
    move-object/from16 v4, v39

    .line 1200
    .line 1201
    invoke-virtual {v1, v8}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->I(Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;)V

    .line 1202
    .line 1203
    .line 1204
    :goto_22
    invoke-virtual {v1, v12}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->j(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 1205
    .line 1206
    .line 1207
    move-result-object v12

    .line 1208
    iget v9, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 1209
    .line 1210
    iput v9, v12, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->g:I

    .line 1211
    .line 1212
    invoke-virtual {v1, v13}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->j(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 1213
    .line 1214
    .line 1215
    move-result-object v9

    .line 1216
    iget v12, v2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 1217
    .line 1218
    iput v12, v9, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->g:I

    .line 1219
    .line 1220
    :cond_3e
    :goto_23
    move-object/from16 v9, v40

    .line 1221
    .line 1222
    goto :goto_24

    .line 1223
    :cond_3f
    move-object/from16 v4, v39

    .line 1224
    .line 1225
    invoke-virtual {v1, v4}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->I(Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;)V

    .line 1226
    .line 1227
    .line 1228
    const/4 v9, 0x0

    .line 1229
    invoke-virtual {v1, v9}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->K(I)V

    .line 1230
    .line 1231
    .line 1232
    goto :goto_23

    .line 1233
    :cond_40
    move-object/from16 v4, v39

    .line 1234
    .line 1235
    invoke-virtual {v1, v15}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->I(Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;)V

    .line 1236
    .line 1237
    .line 1238
    iget v9, v2, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 1239
    .line 1240
    invoke-virtual {v1, v9}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->K(I)V

    .line 1241
    .line 1242
    .line 1243
    iget v9, v2, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 1244
    .line 1245
    const/4 v12, -0x2

    .line 1246
    if-ne v9, v12, :cond_3e

    .line 1247
    .line 1248
    move-object/from16 v9, v40

    .line 1249
    .line 1250
    invoke-virtual {v1, v9}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->I(Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;)V

    .line 1251
    .line 1252
    .line 1253
    :goto_24
    iget-boolean v12, v2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->a0:Z

    .line 1254
    .line 1255
    if-nez v12, :cond_43

    .line 1256
    .line 1257
    iget v12, v2, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 1258
    .line 1259
    move-object/from16 v18, v3

    .line 1260
    .line 1261
    const/4 v3, -0x1

    .line 1262
    if-ne v12, v3, :cond_42

    .line 1263
    .line 1264
    iget-boolean v12, v2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->W:Z

    .line 1265
    .line 1266
    if-eqz v12, :cond_41

    .line 1267
    .line 1268
    invoke-virtual {v1, v4}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->J(Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;)V

    .line 1269
    .line 1270
    .line 1271
    goto :goto_25

    .line 1272
    :cond_41
    invoke-virtual {v1, v8}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->J(Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;)V

    .line 1273
    .line 1274
    .line 1275
    :goto_25
    invoke-virtual {v1, v14}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->j(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 1276
    .line 1277
    .line 1278
    move-result-object v8

    .line 1279
    iget v12, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 1280
    .line 1281
    iput v12, v8, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->g:I

    .line 1282
    .line 1283
    invoke-virtual {v1, v5}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->j(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 1284
    .line 1285
    .line 1286
    move-result-object v8

    .line 1287
    iget v12, v2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 1288
    .line 1289
    iput v12, v8, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->g:I

    .line 1290
    .line 1291
    goto :goto_26

    .line 1292
    :cond_42
    invoke-virtual {v1, v4}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->J(Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;)V

    .line 1293
    .line 1294
    .line 1295
    const/4 v8, 0x0

    .line 1296
    invoke-virtual {v1, v8}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->H(I)V

    .line 1297
    .line 1298
    .line 1299
    goto :goto_26

    .line 1300
    :cond_43
    move-object/from16 v18, v3

    .line 1301
    .line 1302
    const/4 v3, -0x1

    .line 1303
    invoke-virtual {v1, v15}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->J(Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;)V

    .line 1304
    .line 1305
    .line 1306
    iget v8, v2, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 1307
    .line 1308
    invoke-virtual {v1, v8}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->H(I)V

    .line 1309
    .line 1310
    .line 1311
    iget v8, v2, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 1312
    .line 1313
    const/4 v12, -0x2

    .line 1314
    if-ne v8, v12, :cond_44

    .line 1315
    .line 1316
    invoke-virtual {v1, v9}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->J(Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;)V

    .line 1317
    .line 1318
    .line 1319
    :cond_44
    :goto_26
    iget-object v8, v2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->F:Ljava/lang/String;

    .line 1320
    .line 1321
    if-eqz v8, :cond_45

    .line 1322
    .line 1323
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    .line 1324
    .line 1325
    .line 1326
    move-result v12

    .line 1327
    if-nez v12, :cond_46

    .line 1328
    .line 1329
    :cond_45
    move-object/from16 v29, v15

    .line 1330
    .line 1331
    move/from16 v3, v23

    .line 1332
    .line 1333
    goto/16 :goto_2a

    .line 1334
    .line 1335
    :cond_46
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    .line 1336
    .line 1337
    .line 1338
    move-result v12

    .line 1339
    const/16 v14, 0x2c

    .line 1340
    .line 1341
    invoke-virtual {v8, v14}, Ljava/lang/String;->indexOf(I)I

    .line 1342
    .line 1343
    .line 1344
    move-result v14

    .line 1345
    if-lez v14, :cond_49

    .line 1346
    .line 1347
    add-int/lit8 v3, v12, -0x1

    .line 1348
    .line 1349
    if-ge v14, v3, :cond_49

    .line 1350
    .line 1351
    move/from16 v16, v12

    .line 1352
    .line 1353
    const/4 v3, 0x0

    .line 1354
    invoke-virtual {v8, v3, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 1355
    .line 1356
    .line 1357
    move-result-object v12

    .line 1358
    const-string v3, "W"

    .line 1359
    .line 1360
    invoke-virtual {v12, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 1361
    .line 1362
    .line 1363
    move-result v3

    .line 1364
    if-eqz v3, :cond_47

    .line 1365
    .line 1366
    const/4 v3, 0x0

    .line 1367
    goto :goto_27

    .line 1368
    :cond_47
    const-string v3, "H"

    .line 1369
    .line 1370
    invoke-virtual {v12, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 1371
    .line 1372
    .line 1373
    move-result v3

    .line 1374
    if-eqz v3, :cond_48

    .line 1375
    .line 1376
    const/4 v3, 0x1

    .line 1377
    goto :goto_27

    .line 1378
    :cond_48
    const/4 v3, -0x1

    .line 1379
    :goto_27
    add-int/lit8 v12, v14, 0x1

    .line 1380
    .line 1381
    goto :goto_28

    .line 1382
    :cond_49
    move/from16 v16, v12

    .line 1383
    .line 1384
    const/4 v3, -0x1

    .line 1385
    const/4 v12, 0x0

    .line 1386
    :goto_28
    const/16 v14, 0x3a

    .line 1387
    .line 1388
    invoke-virtual {v8, v14}, Ljava/lang/String;->indexOf(I)I

    .line 1389
    .line 1390
    .line 1391
    move-result v14

    .line 1392
    if-ltz v14, :cond_4b

    .line 1393
    .line 1394
    move-object/from16 v29, v15

    .line 1395
    .line 1396
    add-int/lit8 v15, v16, -0x1

    .line 1397
    .line 1398
    if-ge v14, v15, :cond_4c

    .line 1399
    .line 1400
    invoke-virtual {v8, v12, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 1401
    .line 1402
    .line 1403
    move-result-object v12

    .line 1404
    add-int/lit8 v14, v14, 0x1

    .line 1405
    .line 1406
    invoke-virtual {v8, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 1407
    .line 1408
    .line 1409
    move-result-object v8

    .line 1410
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    .line 1411
    .line 1412
    .line 1413
    move-result v14

    .line 1414
    if-lez v14, :cond_4d

    .line 1415
    .line 1416
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    .line 1417
    .line 1418
    .line 1419
    move-result v14

    .line 1420
    if-lez v14, :cond_4d

    .line 1421
    .line 1422
    :try_start_1
    invoke-static {v12}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 1423
    .line 1424
    .line 1425
    move-result v12

    .line 1426
    invoke-static {v8}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 1427
    .line 1428
    .line 1429
    move-result v8

    .line 1430
    cmpl-float v14, v12, v23

    .line 1431
    .line 1432
    if-lez v14, :cond_4d

    .line 1433
    .line 1434
    cmpl-float v14, v8, v23

    .line 1435
    .line 1436
    if-lez v14, :cond_4d

    .line 1437
    .line 1438
    const/4 v14, 0x1

    .line 1439
    if-ne v3, v14, :cond_4a

    .line 1440
    .line 1441
    div-float/2addr v8, v12

    .line 1442
    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    .line 1443
    .line 1444
    .line 1445
    move-result v8

    .line 1446
    goto :goto_29

    .line 1447
    :cond_4a
    div-float/2addr v12, v8

    .line 1448
    invoke-static {v12}, Ljava/lang/Math;->abs(F)F

    .line 1449
    .line 1450
    .line 1451
    move-result v8
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1452
    goto :goto_29

    .line 1453
    :cond_4b
    move-object/from16 v29, v15

    .line 1454
    .line 1455
    :cond_4c
    invoke-virtual {v8, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 1456
    .line 1457
    .line 1458
    move-result-object v8

    .line 1459
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    .line 1460
    .line 1461
    .line 1462
    move-result v12

    .line 1463
    if-lez v12, :cond_4d

    .line 1464
    .line 1465
    :try_start_2
    invoke-static {v8}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 1466
    .line 1467
    .line 1468
    move-result v8
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_1

    .line 1469
    goto :goto_29

    .line 1470
    :catch_1
    :cond_4d
    move/from16 v8, v23

    .line 1471
    .line 1472
    :goto_29
    cmpl-float v12, v8, v23

    .line 1473
    .line 1474
    if-lez v12, :cond_4e

    .line 1475
    .line 1476
    iput v8, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->X:F

    .line 1477
    .line 1478
    iput v3, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->Y:I

    .line 1479
    .line 1480
    goto :goto_2b

    .line 1481
    :goto_2a
    iput v3, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->X:F

    .line 1482
    .line 1483
    :cond_4e
    :goto_2b
    iget v3, v2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->G:F

    .line 1484
    .line 1485
    iget-object v8, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->l0:[F

    .line 1486
    .line 1487
    const/16 v26, 0x0

    .line 1488
    .line 1489
    aput v3, v8, v26

    .line 1490
    .line 1491
    iget v3, v2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->H:F

    .line 1492
    .line 1493
    const/16 v25, 0x1

    .line 1494
    .line 1495
    aput v3, v8, v25

    .line 1496
    .line 1497
    iget v3, v2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->I:I

    .line 1498
    .line 1499
    iput v3, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->j0:I

    .line 1500
    .line 1501
    iget v3, v2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->J:I

    .line 1502
    .line 1503
    iput v3, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->k0:I

    .line 1504
    .line 1505
    iget v3, v2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->Y:I

    .line 1506
    .line 1507
    if-ltz v3, :cond_4f

    .line 1508
    .line 1509
    const/4 v8, 0x3

    .line 1510
    if-gt v3, v8, :cond_4f

    .line 1511
    .line 1512
    iput v3, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->p:I

    .line 1513
    .line 1514
    :cond_4f
    iget v3, v2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->K:I

    .line 1515
    .line 1516
    iget v8, v2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->M:I

    .line 1517
    .line 1518
    iget v12, v2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->O:I

    .line 1519
    .line 1520
    iget v14, v2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->Q:F

    .line 1521
    .line 1522
    iput v3, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->q:I

    .line 1523
    .line 1524
    iput v8, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->t:I

    .line 1525
    .line 1526
    const v8, 0x7fffffff

    .line 1527
    .line 1528
    .line 1529
    if-ne v12, v8, :cond_50

    .line 1530
    .line 1531
    const/4 v12, 0x0

    .line 1532
    :cond_50
    iput v12, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->u:I

    .line 1533
    .line 1534
    iput v14, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->v:F

    .line 1535
    .line 1536
    const/16 v23, 0x0

    .line 1537
    .line 1538
    cmpl-float v12, v14, v23

    .line 1539
    .line 1540
    const/high16 v15, 0x3f800000    # 1.0f

    .line 1541
    .line 1542
    if-lez v12, :cond_51

    .line 1543
    .line 1544
    cmpg-float v12, v14, v15

    .line 1545
    .line 1546
    if-gez v12, :cond_51

    .line 1547
    .line 1548
    if-nez v3, :cond_51

    .line 1549
    .line 1550
    const/4 v3, 0x2

    .line 1551
    iput v3, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->q:I

    .line 1552
    .line 1553
    goto :goto_2c

    .line 1554
    :cond_51
    const/4 v3, 0x2

    .line 1555
    :goto_2c
    iget v12, v2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->L:I

    .line 1556
    .line 1557
    iget v14, v2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->N:I

    .line 1558
    .line 1559
    move/from16 v16, v15

    .line 1560
    .line 1561
    iget v15, v2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->P:I

    .line 1562
    .line 1563
    iget v2, v2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->R:F

    .line 1564
    .line 1565
    iput v12, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->r:I

    .line 1566
    .line 1567
    iput v14, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->w:I

    .line 1568
    .line 1569
    if-ne v15, v8, :cond_52

    .line 1570
    .line 1571
    const/4 v15, 0x0

    .line 1572
    :cond_52
    iput v15, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->x:I

    .line 1573
    .line 1574
    iput v2, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->y:F

    .line 1575
    .line 1576
    const/16 v23, 0x0

    .line 1577
    .line 1578
    cmpl-float v8, v2, v23

    .line 1579
    .line 1580
    if-lez v8, :cond_53

    .line 1581
    .line 1582
    cmpg-float v2, v2, v16

    .line 1583
    .line 1584
    if-gez v2, :cond_53

    .line 1585
    .line 1586
    if-nez v12, :cond_53

    .line 1587
    .line 1588
    iput v3, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->r:I

    .line 1589
    .line 1590
    :cond_53
    :goto_2d
    add-int/lit8 v8, v27, 0x1

    .line 1591
    .line 1592
    move-object/from16 v28, v4

    .line 1593
    .line 1594
    move-object v14, v5

    .line 1595
    move-object v5, v9

    .line 1596
    move-object/from16 v16, v13

    .line 1597
    .line 1598
    move-object/from16 v3, v18

    .line 1599
    .line 1600
    move/from16 v1, v38

    .line 1601
    .line 1602
    goto/16 :goto_16

    .line 1603
    .line 1604
    :cond_54
    move-object/from16 v4, v28

    .line 1605
    .line 1606
    :goto_2e
    move-object v9, v5

    .line 1607
    move-object v5, v14

    .line 1608
    move-object/from16 v13, v16

    .line 1609
    .line 1610
    const/4 v3, 0x2

    .line 1611
    goto :goto_2f

    .line 1612
    :cond_55
    move-object/from16 v29, v4

    .line 1613
    .line 1614
    move-object v4, v3

    .line 1615
    goto :goto_2e

    .line 1616
    :goto_2f
    if-eqz v21, :cond_57

    .line 1617
    .line 1618
    invoke-virtual {v11, v10}, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure;->c(Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;)V

    .line 1619
    .line 1620
    .line 1621
    goto :goto_30

    .line 1622
    :cond_56
    move-object/from16 v29, v4

    .line 1623
    .line 1624
    move-object v9, v5

    .line 1625
    move-object v5, v14

    .line 1626
    move-object/from16 v13, v16

    .line 1627
    .line 1628
    move-object v4, v3

    .line 1629
    const/4 v3, 0x2

    .line 1630
    :cond_57
    :goto_30
    iget v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->m:I

    .line 1631
    .line 1632
    invoke-static {v6}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 1633
    .line 1634
    .line 1635
    move-result v2

    .line 1636
    invoke-static {v6}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 1637
    .line 1638
    .line 1639
    move-result v8

    .line 1640
    invoke-static {v7}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 1641
    .line 1642
    .line 1643
    move-result v12

    .line 1644
    invoke-static {v7}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 1645
    .line 1646
    .line 1647
    move-result v14

    .line 1648
    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    .line 1649
    .line 1650
    .line 1651
    move-result v15

    .line 1652
    const/4 v3, 0x0

    .line 1653
    invoke-static {v3, v15}, Ljava/lang/Math;->max(II)I

    .line 1654
    .line 1655
    .line 1656
    move-result v15

    .line 1657
    move/from16 v16, v8

    .line 1658
    .line 1659
    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    .line 1660
    .line 1661
    .line 1662
    move-result v8

    .line 1663
    invoke-static {v3, v8}, Ljava/lang/Math;->max(II)I

    .line 1664
    .line 1665
    .line 1666
    move-result v8

    .line 1667
    add-int v3, v15, v8

    .line 1668
    .line 1669
    move/from16 v17, v14

    .line 1670
    .line 1671
    invoke-direct {v0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getPaddingWidth()I

    .line 1672
    .line 1673
    .line 1674
    move-result v14

    .line 1675
    move-object/from16 v18, v5

    .line 1676
    .line 1677
    iget-object v5, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->s:Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;

    .line 1678
    .line 1679
    iput v15, v5, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->b:I

    .line 1680
    .line 1681
    iput v8, v5, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->c:I

    .line 1682
    .line 1683
    iput v14, v5, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->d:I

    .line 1684
    .line 1685
    iput v3, v5, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->e:I

    .line 1686
    .line 1687
    iput v6, v5, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->f:I

    .line 1688
    .line 1689
    iput v7, v5, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->g:I

    .line 1690
    .line 1691
    invoke-virtual {v0}, Landroid/view/View;->getPaddingStart()I

    .line 1692
    .line 1693
    .line 1694
    move-result v8

    .line 1695
    move/from16 v19, v3

    .line 1696
    .line 1697
    const/4 v3, 0x0

    .line 1698
    invoke-static {v3, v8}, Ljava/lang/Math;->max(II)I

    .line 1699
    .line 1700
    .line 1701
    move-result v8

    .line 1702
    invoke-virtual {v0}, Landroid/view/View;->getPaddingEnd()I

    .line 1703
    .line 1704
    .line 1705
    move-result v6

    .line 1706
    invoke-static {v3, v6}, Ljava/lang/Math;->max(II)I

    .line 1707
    .line 1708
    .line 1709
    move-result v6

    .line 1710
    if-gtz v8, :cond_59

    .line 1711
    .line 1712
    if-lez v6, :cond_58

    .line 1713
    .line 1714
    goto :goto_31

    .line 1715
    :cond_58
    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    .line 1716
    .line 1717
    .line 1718
    move-result v6

    .line 1719
    invoke-static {v3, v6}, Ljava/lang/Math;->max(II)I

    .line 1720
    .line 1721
    .line 1722
    move-result v8

    .line 1723
    goto :goto_32

    .line 1724
    :cond_59
    :goto_31
    invoke-virtual {v0}, Landroidx/constraintlayout/widget/ConstraintLayout;->e()Z

    .line 1725
    .line 1726
    .line 1727
    move-result v3

    .line 1728
    if-eqz v3, :cond_5a

    .line 1729
    .line 1730
    move v8, v6

    .line 1731
    :cond_5a
    :goto_32
    sub-int v3, v16, v14

    .line 1732
    .line 1733
    sub-int v14, v17, v19

    .line 1734
    .line 1735
    iget v6, v5, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->e:I

    .line 1736
    .line 1737
    iget v5, v5, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->d:I

    .line 1738
    .line 1739
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 1740
    .line 1741
    .line 1742
    move-result v16

    .line 1743
    move/from16 v17, v5

    .line 1744
    .line 1745
    const/high16 v5, -0x80000000

    .line 1746
    .line 1747
    if-eq v2, v5, :cond_5e

    .line 1748
    .line 1749
    if-eqz v2, :cond_5c

    .line 1750
    .line 1751
    const/high16 v5, 0x40000000    # 2.0f

    .line 1752
    .line 1753
    if-eq v2, v5, :cond_5b

    .line 1754
    .line 1755
    move/from16 v21, v6

    .line 1756
    .line 1757
    move-object/from16 v5, v29

    .line 1758
    .line 1759
    const/4 v6, 0x0

    .line 1760
    :goto_33
    const/high16 v7, -0x80000000

    .line 1761
    .line 1762
    goto :goto_35

    .line 1763
    :cond_5b
    iget v5, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->j:I

    .line 1764
    .line 1765
    sub-int v5, v5, v17

    .line 1766
    .line 1767
    invoke-static {v5, v3}, Ljava/lang/Math;->min(II)I

    .line 1768
    .line 1769
    .line 1770
    move-result v5

    .line 1771
    move/from16 v21, v6

    .line 1772
    .line 1773
    const/high16 v7, -0x80000000

    .line 1774
    .line 1775
    move v6, v5

    .line 1776
    move-object/from16 v5, v29

    .line 1777
    .line 1778
    goto :goto_35

    .line 1779
    :cond_5c
    if-nez v16, :cond_5d

    .line 1780
    .line 1781
    iget v5, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->h:I

    .line 1782
    .line 1783
    move/from16 v21, v6

    .line 1784
    .line 1785
    const/4 v6, 0x0

    .line 1786
    invoke-static {v6, v5}, Ljava/lang/Math;->max(II)I

    .line 1787
    .line 1788
    .line 1789
    move-result v26

    .line 1790
    move-object v5, v9

    .line 1791
    move/from16 v6, v26

    .line 1792
    .line 1793
    goto :goto_33

    .line 1794
    :cond_5d
    move/from16 v21, v6

    .line 1795
    .line 1796
    const/4 v6, 0x0

    .line 1797
    :goto_34
    move-object v5, v9

    .line 1798
    goto :goto_33

    .line 1799
    :cond_5e
    move/from16 v21, v6

    .line 1800
    .line 1801
    const/4 v6, 0x0

    .line 1802
    if-nez v16, :cond_5f

    .line 1803
    .line 1804
    iget v5, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->h:I

    .line 1805
    .line 1806
    invoke-static {v6, v5}, Ljava/lang/Math;->max(II)I

    .line 1807
    .line 1808
    .line 1809
    move-result v5

    .line 1810
    move v6, v5

    .line 1811
    goto :goto_34

    .line 1812
    :cond_5f
    move v6, v3

    .line 1813
    goto :goto_34

    .line 1814
    :goto_35
    if-eq v12, v7, :cond_63

    .line 1815
    .line 1816
    if-eqz v12, :cond_61

    .line 1817
    .line 1818
    const/high16 v7, 0x40000000    # 2.0f

    .line 1819
    .line 1820
    if-eq v12, v7, :cond_60

    .line 1821
    .line 1822
    move-object/from16 v40, v9

    .line 1823
    .line 1824
    move-object/from16 v20, v13

    .line 1825
    .line 1826
    move-object/from16 v7, v29

    .line 1827
    .line 1828
    const/4 v13, 0x0

    .line 1829
    goto :goto_37

    .line 1830
    :cond_60
    iget v7, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->k:I

    .line 1831
    .line 1832
    sub-int v7, v7, v21

    .line 1833
    .line 1834
    invoke-static {v7, v14}, Ljava/lang/Math;->min(II)I

    .line 1835
    .line 1836
    .line 1837
    move-result v7

    .line 1838
    move-object/from16 v40, v9

    .line 1839
    .line 1840
    move-object/from16 v20, v13

    .line 1841
    .line 1842
    move v13, v7

    .line 1843
    move-object/from16 v7, v29

    .line 1844
    .line 1845
    goto :goto_37

    .line 1846
    :cond_61
    if-nez v16, :cond_62

    .line 1847
    .line 1848
    iget v7, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->i:I

    .line 1849
    .line 1850
    move-object/from16 v20, v13

    .line 1851
    .line 1852
    const/4 v13, 0x0

    .line 1853
    invoke-static {v13, v7}, Ljava/lang/Math;->max(II)I

    .line 1854
    .line 1855
    .line 1856
    move-result v26

    .line 1857
    move-object v7, v9

    .line 1858
    move-object/from16 v40, v7

    .line 1859
    .line 1860
    move/from16 v13, v26

    .line 1861
    .line 1862
    goto :goto_37

    .line 1863
    :cond_62
    move-object/from16 v20, v13

    .line 1864
    .line 1865
    const/4 v13, 0x0

    .line 1866
    :goto_36
    move-object v7, v9

    .line 1867
    move-object/from16 v40, v7

    .line 1868
    .line 1869
    goto :goto_37

    .line 1870
    :cond_63
    move-object/from16 v20, v13

    .line 1871
    .line 1872
    const/4 v13, 0x0

    .line 1873
    if-nez v16, :cond_64

    .line 1874
    .line 1875
    iget v7, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->i:I

    .line 1876
    .line 1877
    invoke-static {v13, v7}, Ljava/lang/Math;->max(II)I

    .line 1878
    .line 1879
    .line 1880
    move-result v7

    .line 1881
    move v13, v7

    .line 1882
    goto :goto_36

    .line 1883
    :cond_64
    move-object v7, v9

    .line 1884
    move-object/from16 v40, v7

    .line 1885
    .line 1886
    move v13, v14

    .line 1887
    :goto_37
    invoke-virtual {v10}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->o()I

    .line 1888
    .line 1889
    .line 1890
    move-result v9

    .line 1891
    move/from16 v16, v14

    .line 1892
    .line 1893
    iget-object v14, v10, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->s0:Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;

    .line 1894
    .line 1895
    if-ne v6, v9, :cond_65

    .line 1896
    .line 1897
    invoke-virtual {v10}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->l()I

    .line 1898
    .line 1899
    .line 1900
    move-result v9

    .line 1901
    if-eq v13, v9, :cond_66

    .line 1902
    .line 1903
    :cond_65
    const/4 v9, 0x1

    .line 1904
    goto :goto_39

    .line 1905
    :cond_66
    const/16 v25, 0x1

    .line 1906
    .line 1907
    :goto_38
    const/4 v9, 0x0

    .line 1908
    goto :goto_3a

    .line 1909
    :goto_39
    iput-boolean v9, v14, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->c:Z

    .line 1910
    .line 1911
    move/from16 v25, v9

    .line 1912
    .line 1913
    goto :goto_38

    .line 1914
    :goto_3a
    iput v9, v10, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->Z:I

    .line 1915
    .line 1916
    iput v9, v10, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->a0:I

    .line 1917
    .line 1918
    move/from16 v26, v9

    .line 1919
    .line 1920
    iget v9, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->j:I

    .line 1921
    .line 1922
    sub-int v9, v9, v17

    .line 1923
    .line 1924
    move/from16 v22, v9

    .line 1925
    .line 1926
    iget-object v9, v10, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->B:[I

    .line 1927
    .line 1928
    aput v22, v9, v26

    .line 1929
    .line 1930
    move-object/from16 v22, v9

    .line 1931
    .line 1932
    iget v9, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->k:I

    .line 1933
    .line 1934
    sub-int v9, v9, v21

    .line 1935
    .line 1936
    aput v9, v22, v25

    .line 1937
    .line 1938
    move/from16 v9, v26

    .line 1939
    .line 1940
    iput v9, v10, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->c0:I

    .line 1941
    .line 1942
    iput v9, v10, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->d0:I

    .line 1943
    .line 1944
    invoke-virtual {v10, v5}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->I(Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;)V

    .line 1945
    .line 1946
    .line 1947
    invoke-virtual {v10, v6}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->K(I)V

    .line 1948
    .line 1949
    .line 1950
    invoke-virtual {v10, v7}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->J(Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;)V

    .line 1951
    .line 1952
    .line 1953
    invoke-virtual {v10, v13}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->H(I)V

    .line 1954
    .line 1955
    .line 1956
    iget v5, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->h:I

    .line 1957
    .line 1958
    sub-int v5, v5, v17

    .line 1959
    .line 1960
    if-gez v5, :cond_67

    .line 1961
    .line 1962
    iput v9, v10, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->c0:I

    .line 1963
    .line 1964
    goto :goto_3b

    .line 1965
    :cond_67
    iput v5, v10, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->c0:I

    .line 1966
    .line 1967
    :goto_3b
    iget v5, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->i:I

    .line 1968
    .line 1969
    sub-int v5, v5, v21

    .line 1970
    .line 1971
    if-gez v5, :cond_68

    .line 1972
    .line 1973
    iput v9, v10, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->d0:I

    .line 1974
    .line 1975
    goto :goto_3c

    .line 1976
    :cond_68
    iput v5, v10, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->d0:I

    .line 1977
    .line 1978
    :goto_3c
    iput v8, v10, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->x0:I

    .line 1979
    .line 1980
    iput v15, v10, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->y0:I

    .line 1981
    .line 1982
    iget-object v5, v11, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure;->c:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    .line 1983
    .line 1984
    iget-object v6, v11, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure;->a:Ljava/util/ArrayList;

    .line 1985
    .line 1986
    iget-object v7, v10, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->u0:Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;

    .line 1987
    .line 1988
    iget-object v8, v10, Landroidx/constraintlayout/core/widgets/WidgetContainer;->q0:Ljava/util/ArrayList;

    .line 1989
    .line 1990
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    .line 1991
    .line 1992
    .line 1993
    move-result v8

    .line 1994
    invoke-virtual {v10}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->o()I

    .line 1995
    .line 1996
    .line 1997
    move-result v9

    .line 1998
    invoke-virtual {v10}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->l()I

    .line 1999
    .line 2000
    .line 2001
    move-result v13

    .line 2002
    const/16 v15, 0x80

    .line 2003
    .line 2004
    invoke-static {v1, v15}, Landroidx/constraintlayout/core/widgets/Optimizer;->b(II)Z

    .line 2005
    .line 2006
    .line 2007
    move-result v15

    .line 2008
    const/16 v0, 0x40

    .line 2009
    .line 2010
    if-nez v15, :cond_6a

    .line 2011
    .line 2012
    invoke-static {v1, v0}, Landroidx/constraintlayout/core/widgets/Optimizer;->b(II)Z

    .line 2013
    .line 2014
    .line 2015
    move-result v1

    .line 2016
    if-eqz v1, :cond_69

    .line 2017
    .line 2018
    goto :goto_3d

    .line 2019
    :cond_69
    const/4 v1, 0x0

    .line 2020
    goto :goto_3e

    .line 2021
    :cond_6a
    :goto_3d
    const/4 v1, 0x1

    .line 2022
    :goto_3e
    if-eqz v1, :cond_73

    .line 2023
    .line 2024
    const/4 v0, 0x0

    .line 2025
    :goto_3f
    if-ge v0, v8, :cond_73

    .line 2026
    .line 2027
    move/from16 v21, v1

    .line 2028
    .line 2029
    iget-object v1, v10, Landroidx/constraintlayout/core/widgets/WidgetContainer;->q0:Ljava/util/ArrayList;

    .line 2030
    .line 2031
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 2032
    .line 2033
    .line 2034
    move-result-object v1

    .line 2035
    check-cast v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 2036
    .line 2037
    move/from16 v22, v0

    .line 2038
    .line 2039
    iget-object v0, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->T:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 2040
    .line 2041
    move-object/from16 v27, v0

    .line 2042
    .line 2043
    const/16 v26, 0x0

    .line 2044
    .line 2045
    aget-object v0, v27, v26

    .line 2046
    .line 2047
    if-ne v0, v4, :cond_6b

    .line 2048
    .line 2049
    const/16 v28, 0x1

    .line 2050
    .line 2051
    :goto_40
    const/16 v25, 0x1

    .line 2052
    .line 2053
    goto :goto_41

    .line 2054
    :cond_6b
    const/16 v28, 0x0

    .line 2055
    .line 2056
    goto :goto_40

    .line 2057
    :goto_41
    aget-object v0, v27, v25

    .line 2058
    .line 2059
    if-ne v0, v4, :cond_6c

    .line 2060
    .line 2061
    const/4 v0, 0x1

    .line 2062
    goto :goto_42

    .line 2063
    :cond_6c
    const/4 v0, 0x0

    .line 2064
    :goto_42
    if-eqz v28, :cond_6d

    .line 2065
    .line 2066
    if-eqz v0, :cond_6d

    .line 2067
    .line 2068
    iget v0, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->X:F

    .line 2069
    .line 2070
    const/16 v23, 0x0

    .line 2071
    .line 2072
    cmpl-float v0, v0, v23

    .line 2073
    .line 2074
    if-lez v0, :cond_6d

    .line 2075
    .line 2076
    const/4 v0, 0x1

    .line 2077
    goto :goto_43

    .line 2078
    :cond_6d
    const/4 v0, 0x0

    .line 2079
    :goto_43
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->v()Z

    .line 2080
    .line 2081
    .line 2082
    move-result v27

    .line 2083
    if-eqz v27, :cond_6f

    .line 2084
    .line 2085
    if-eqz v0, :cond_6f

    .line 2086
    .line 2087
    :cond_6e
    :goto_44
    const/high16 v0, 0x40000000    # 2.0f

    .line 2088
    .line 2089
    const/16 v21, 0x0

    .line 2090
    .line 2091
    goto :goto_45

    .line 2092
    :cond_6f
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->w()Z

    .line 2093
    .line 2094
    .line 2095
    move-result v27

    .line 2096
    if-eqz v27, :cond_70

    .line 2097
    .line 2098
    if-eqz v0, :cond_70

    .line 2099
    .line 2100
    goto :goto_44

    .line 2101
    :cond_70
    instance-of v0, v1, Landroidx/constraintlayout/core/widgets/VirtualLayout;

    .line 2102
    .line 2103
    if-eqz v0, :cond_71

    .line 2104
    .line 2105
    goto :goto_44

    .line 2106
    :cond_71
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->v()Z

    .line 2107
    .line 2108
    .line 2109
    move-result v0

    .line 2110
    if-nez v0, :cond_6e

    .line 2111
    .line 2112
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->w()Z

    .line 2113
    .line 2114
    .line 2115
    move-result v0

    .line 2116
    if-eqz v0, :cond_72

    .line 2117
    .line 2118
    goto :goto_44

    .line 2119
    :cond_72
    add-int/lit8 v0, v22, 0x1

    .line 2120
    .line 2121
    move/from16 v1, v21

    .line 2122
    .line 2123
    goto :goto_3f

    .line 2124
    :cond_73
    move/from16 v21, v1

    .line 2125
    .line 2126
    const/high16 v0, 0x40000000    # 2.0f

    .line 2127
    .line 2128
    :goto_45
    if-ne v2, v0, :cond_74

    .line 2129
    .line 2130
    if-eq v12, v0, :cond_75

    .line 2131
    .line 2132
    :cond_74
    if-eqz v15, :cond_76

    .line 2133
    .line 2134
    :cond_75
    const/4 v0, 0x1

    .line 2135
    goto :goto_46

    .line 2136
    :cond_76
    const/4 v0, 0x0

    .line 2137
    :goto_46
    and-int v0, v21, v0

    .line 2138
    .line 2139
    if-eqz v0, :cond_82

    .line 2140
    .line 2141
    iget-object v1, v10, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->B:[I

    .line 2142
    .line 2143
    const/16 v26, 0x0

    .line 2144
    .line 2145
    aget v1, v1, v26

    .line 2146
    .line 2147
    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    .line 2148
    .line 2149
    .line 2150
    move-result v1

    .line 2151
    iget-object v3, v10, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->B:[I

    .line 2152
    .line 2153
    move/from16 v21, v0

    .line 2154
    .line 2155
    const/4 v0, 0x1

    .line 2156
    aget v3, v3, v0

    .line 2157
    .line 2158
    move/from16 v0, v16

    .line 2159
    .line 2160
    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    .line 2161
    .line 2162
    .line 2163
    move-result v0

    .line 2164
    const/high16 v3, 0x40000000    # 2.0f

    .line 2165
    .line 2166
    if-ne v2, v3, :cond_78

    .line 2167
    .line 2168
    invoke-virtual {v10}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->o()I

    .line 2169
    .line 2170
    .line 2171
    move-result v3

    .line 2172
    if-eq v3, v1, :cond_77

    .line 2173
    .line 2174
    invoke-virtual {v10, v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->K(I)V

    .line 2175
    .line 2176
    .line 2177
    const/4 v1, 0x1

    .line 2178
    iput-boolean v1, v14, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->b:Z

    .line 2179
    .line 2180
    :goto_47
    const/high16 v3, 0x40000000    # 2.0f

    .line 2181
    .line 2182
    goto :goto_48

    .line 2183
    :cond_77
    const/4 v1, 0x1

    .line 2184
    goto :goto_47

    .line 2185
    :cond_78
    const/4 v1, 0x1

    .line 2186
    :goto_48
    if-ne v12, v3, :cond_7a

    .line 2187
    .line 2188
    invoke-virtual {v10}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->l()I

    .line 2189
    .line 2190
    .line 2191
    move-result v3

    .line 2192
    if-eq v3, v0, :cond_79

    .line 2193
    .line 2194
    invoke-virtual {v10, v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->H(I)V

    .line 2195
    .line 2196
    .line 2197
    iput-boolean v1, v14, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->b:Z

    .line 2198
    .line 2199
    :cond_79
    const/high16 v3, 0x40000000    # 2.0f

    .line 2200
    .line 2201
    :cond_7a
    if-ne v2, v3, :cond_7b

    .line 2202
    .line 2203
    if-ne v12, v3, :cond_7b

    .line 2204
    .line 2205
    invoke-virtual {v14, v15}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->e(Z)Z

    .line 2206
    .line 2207
    .line 2208
    move-result v0

    .line 2209
    move v3, v0

    .line 2210
    move-object/from16 v28, v7

    .line 2211
    .line 2212
    move/from16 v16, v8

    .line 2213
    .line 2214
    const/high16 v0, 0x40000000    # 2.0f

    .line 2215
    .line 2216
    const/4 v1, 0x2

    .line 2217
    goto/16 :goto_4c

    .line 2218
    .line 2219
    :cond_7b
    iget-object v0, v14, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->a:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    .line 2220
    .line 2221
    iget-boolean v1, v14, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->b:Z

    .line 2222
    .line 2223
    if-eqz v1, :cond_7d

    .line 2224
    .line 2225
    iget-object v1, v0, Landroidx/constraintlayout/core/widgets/WidgetContainer;->q0:Ljava/util/ArrayList;

    .line 2226
    .line 2227
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 2228
    .line 2229
    .line 2230
    move-result v3

    .line 2231
    move/from16 v16, v8

    .line 2232
    .line 2233
    const/4 v8, 0x0

    .line 2234
    :goto_49
    if-ge v8, v3, :cond_7c

    .line 2235
    .line 2236
    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 2237
    .line 2238
    .line 2239
    move-result-object v22

    .line 2240
    add-int/lit8 v8, v8, 0x1

    .line 2241
    .line 2242
    move-object/from16 v27, v1

    .line 2243
    .line 2244
    move-object/from16 v1, v22

    .line 2245
    .line 2246
    check-cast v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 2247
    .line 2248
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->i()V

    .line 2249
    .line 2250
    .line 2251
    move/from16 v22, v3

    .line 2252
    .line 2253
    const/4 v3, 0x0

    .line 2254
    iput-boolean v3, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->a:Z

    .line 2255
    .line 2256
    move/from16 v26, v8

    .line 2257
    .line 2258
    iget-object v8, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->d:Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;

    .line 2259
    .line 2260
    move-object/from16 v28, v7

    .line 2261
    .line 2262
    iget-object v7, v8, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->e:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    .line 2263
    .line 2264
    iput-boolean v3, v7, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->j:Z

    .line 2265
    .line 2266
    iput-boolean v3, v8, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->g:Z

    .line 2267
    .line 2268
    invoke-virtual {v8}, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->n()V

    .line 2269
    .line 2270
    .line 2271
    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->e:Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    .line 2272
    .line 2273
    iget-object v7, v1, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->e:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    .line 2274
    .line 2275
    iput-boolean v3, v7, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->j:Z

    .line 2276
    .line 2277
    iput-boolean v3, v1, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->g:Z

    .line 2278
    .line 2279
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;->m()V

    .line 2280
    .line 2281
    .line 2282
    move/from16 v3, v22

    .line 2283
    .line 2284
    move/from16 v8, v26

    .line 2285
    .line 2286
    move-object/from16 v1, v27

    .line 2287
    .line 2288
    move-object/from16 v7, v28

    .line 2289
    .line 2290
    goto :goto_49

    .line 2291
    :cond_7c
    move-object/from16 v28, v7

    .line 2292
    .line 2293
    const/4 v3, 0x0

    .line 2294
    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->i()V

    .line 2295
    .line 2296
    .line 2297
    iput-boolean v3, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->a:Z

    .line 2298
    .line 2299
    iget-object v1, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->d:Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;

    .line 2300
    .line 2301
    iget-object v7, v1, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->e:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    .line 2302
    .line 2303
    iput-boolean v3, v7, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->j:Z

    .line 2304
    .line 2305
    iput-boolean v3, v1, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->g:Z

    .line 2306
    .line 2307
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->n()V

    .line 2308
    .line 2309
    .line 2310
    iget-object v1, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->e:Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    .line 2311
    .line 2312
    iget-object v7, v1, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->e:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    .line 2313
    .line 2314
    iput-boolean v3, v7, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->j:Z

    .line 2315
    .line 2316
    iput-boolean v3, v1, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->g:Z

    .line 2317
    .line 2318
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;->m()V

    .line 2319
    .line 2320
    .line 2321
    invoke-virtual {v14}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->c()V

    .line 2322
    .line 2323
    .line 2324
    goto :goto_4a

    .line 2325
    :cond_7d
    move-object/from16 v28, v7

    .line 2326
    .line 2327
    move/from16 v16, v8

    .line 2328
    .line 2329
    const/4 v3, 0x0

    .line 2330
    :goto_4a
    iget-object v1, v14, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->d:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    .line 2331
    .line 2332
    invoke-virtual {v14, v1}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->b(Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;)V

    .line 2333
    .line 2334
    .line 2335
    iput v3, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->Z:I

    .line 2336
    .line 2337
    iput v3, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->a0:I

    .line 2338
    .line 2339
    iget-object v1, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->d:Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;

    .line 2340
    .line 2341
    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->h:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 2342
    .line 2343
    invoke-virtual {v1, v3}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->d(I)V

    .line 2344
    .line 2345
    .line 2346
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->e:Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    .line 2347
    .line 2348
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->h:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 2349
    .line 2350
    invoke-virtual {v0, v3}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->d(I)V

    .line 2351
    .line 2352
    .line 2353
    const/high16 v0, 0x40000000    # 2.0f

    .line 2354
    .line 2355
    if-ne v2, v0, :cond_7e

    .line 2356
    .line 2357
    invoke-virtual {v14, v3, v15}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->f(IZ)Z

    .line 2358
    .line 2359
    .line 2360
    move-result v1

    .line 2361
    move v3, v1

    .line 2362
    const/4 v1, 0x1

    .line 2363
    goto :goto_4b

    .line 2364
    :cond_7e
    const/4 v1, 0x0

    .line 2365
    const/4 v3, 0x1

    .line 2366
    :goto_4b
    if-ne v12, v0, :cond_7f

    .line 2367
    .line 2368
    const/4 v8, 0x1

    .line 2369
    invoke-virtual {v14, v8, v15}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->f(IZ)Z

    .line 2370
    .line 2371
    .line 2372
    move-result v7

    .line 2373
    and-int/2addr v3, v7

    .line 2374
    add-int/lit8 v1, v1, 0x1

    .line 2375
    .line 2376
    :cond_7f
    :goto_4c
    if-eqz v3, :cond_83

    .line 2377
    .line 2378
    if-ne v2, v0, :cond_80

    .line 2379
    .line 2380
    const/4 v2, 0x1

    .line 2381
    goto :goto_4d

    .line 2382
    :cond_80
    const/4 v2, 0x0

    .line 2383
    :goto_4d
    if-ne v12, v0, :cond_81

    .line 2384
    .line 2385
    const/4 v0, 0x1

    .line 2386
    goto :goto_4e

    .line 2387
    :cond_81
    const/4 v0, 0x0

    .line 2388
    :goto_4e
    invoke-virtual {v10, v2, v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->L(ZZ)V

    .line 2389
    .line 2390
    .line 2391
    goto :goto_4f

    .line 2392
    :cond_82
    move/from16 v21, v0

    .line 2393
    .line 2394
    move-object/from16 v28, v7

    .line 2395
    .line 2396
    move/from16 v16, v8

    .line 2397
    .line 2398
    const/4 v1, 0x0

    .line 2399
    const/4 v3, 0x0

    .line 2400
    :cond_83
    :goto_4f
    if-eqz v3, :cond_84

    .line 2401
    .line 2402
    const/4 v3, 0x2

    .line 2403
    if-eq v1, v3, :cond_a9

    .line 2404
    .line 2405
    :cond_84
    iget v0, v10, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->D0:I

    .line 2406
    .line 2407
    if-lez v16, :cond_91

    .line 2408
    .line 2409
    iget-object v1, v10, Landroidx/constraintlayout/core/widgets/WidgetContainer;->q0:Ljava/util/ArrayList;

    .line 2410
    .line 2411
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 2412
    .line 2413
    .line 2414
    move-result v1

    .line 2415
    const/16 v2, 0x40

    .line 2416
    .line 2417
    invoke-virtual {v10, v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->R(I)Z

    .line 2418
    .line 2419
    .line 2420
    move-result v2

    .line 2421
    iget-object v3, v10, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->u0:Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;

    .line 2422
    .line 2423
    const/4 v7, 0x0

    .line 2424
    :goto_50
    if-ge v7, v1, :cond_90

    .line 2425
    .line 2426
    iget-object v8, v10, Landroidx/constraintlayout/core/widgets/WidgetContainer;->q0:Ljava/util/ArrayList;

    .line 2427
    .line 2428
    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 2429
    .line 2430
    .line 2431
    move-result-object v8

    .line 2432
    check-cast v8, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 2433
    .line 2434
    instance-of v12, v8, Landroidx/constraintlayout/core/widgets/Guideline;

    .line 2435
    .line 2436
    if-eqz v12, :cond_85

    .line 2437
    .line 2438
    :goto_51
    move/from16 v17, v1

    .line 2439
    .line 2440
    const/4 v12, 0x0

    .line 2441
    const/16 v23, 0x0

    .line 2442
    .line 2443
    goto/16 :goto_55

    .line 2444
    .line 2445
    :cond_85
    instance-of v12, v8, Landroidx/constraintlayout/core/widgets/Barrier;

    .line 2446
    .line 2447
    if-eqz v12, :cond_86

    .line 2448
    .line 2449
    goto :goto_51

    .line 2450
    :cond_86
    iget-boolean v12, v8, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->F:Z

    .line 2451
    .line 2452
    if-eqz v12, :cond_87

    .line 2453
    .line 2454
    goto :goto_51

    .line 2455
    :cond_87
    if-eqz v2, :cond_88

    .line 2456
    .line 2457
    iget-object v12, v8, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->d:Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;

    .line 2458
    .line 2459
    if-eqz v12, :cond_88

    .line 2460
    .line 2461
    iget-object v14, v8, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->e:Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    .line 2462
    .line 2463
    if-eqz v14, :cond_88

    .line 2464
    .line 2465
    iget-object v12, v12, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->e:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    .line 2466
    .line 2467
    iget-boolean v12, v12, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->j:Z

    .line 2468
    .line 2469
    if-eqz v12, :cond_88

    .line 2470
    .line 2471
    iget-object v12, v14, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->e:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    .line 2472
    .line 2473
    iget-boolean v12, v12, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->j:Z

    .line 2474
    .line 2475
    if-eqz v12, :cond_88

    .line 2476
    .line 2477
    goto :goto_51

    .line 2478
    :cond_88
    const/4 v12, 0x0

    .line 2479
    invoke-virtual {v8, v12}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->k(I)Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 2480
    .line 2481
    .line 2482
    move-result-object v14

    .line 2483
    const/4 v12, 0x1

    .line 2484
    invoke-virtual {v8, v12}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->k(I)Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 2485
    .line 2486
    .line 2487
    move-result-object v15

    .line 2488
    move/from16 v17, v1

    .line 2489
    .line 2490
    if-ne v14, v4, :cond_89

    .line 2491
    .line 2492
    iget v1, v8, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->q:I

    .line 2493
    .line 2494
    if-eq v1, v12, :cond_89

    .line 2495
    .line 2496
    if-ne v15, v4, :cond_89

    .line 2497
    .line 2498
    iget v1, v8, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->r:I

    .line 2499
    .line 2500
    if-eq v1, v12, :cond_89

    .line 2501
    .line 2502
    move v1, v12

    .line 2503
    goto :goto_52

    .line 2504
    :cond_89
    const/4 v1, 0x0

    .line 2505
    :goto_52
    if-nez v1, :cond_8c

    .line 2506
    .line 2507
    invoke-virtual {v10, v12}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->R(I)Z

    .line 2508
    .line 2509
    .line 2510
    move-result v19

    .line 2511
    if-eqz v19, :cond_8c

    .line 2512
    .line 2513
    instance-of v12, v8, Landroidx/constraintlayout/core/widgets/VirtualLayout;

    .line 2514
    .line 2515
    if-nez v12, :cond_8c

    .line 2516
    .line 2517
    if-ne v14, v4, :cond_8a

    .line 2518
    .line 2519
    iget v12, v8, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->q:I

    .line 2520
    .line 2521
    if-nez v12, :cond_8a

    .line 2522
    .line 2523
    if-eq v15, v4, :cond_8a

    .line 2524
    .line 2525
    invoke-virtual {v8}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->v()Z

    .line 2526
    .line 2527
    .line 2528
    move-result v12

    .line 2529
    if-nez v12, :cond_8a

    .line 2530
    .line 2531
    const/4 v1, 0x1

    .line 2532
    :cond_8a
    if-ne v15, v4, :cond_8b

    .line 2533
    .line 2534
    iget v12, v8, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->r:I

    .line 2535
    .line 2536
    if-nez v12, :cond_8b

    .line 2537
    .line 2538
    if-eq v14, v4, :cond_8b

    .line 2539
    .line 2540
    invoke-virtual {v8}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->v()Z

    .line 2541
    .line 2542
    .line 2543
    move-result v12

    .line 2544
    if-nez v12, :cond_8b

    .line 2545
    .line 2546
    const/4 v1, 0x1

    .line 2547
    :cond_8b
    if-eq v14, v4, :cond_8d

    .line 2548
    .line 2549
    if-ne v15, v4, :cond_8c

    .line 2550
    .line 2551
    goto :goto_53

    .line 2552
    :cond_8c
    const/16 v23, 0x0

    .line 2553
    .line 2554
    goto :goto_54

    .line 2555
    :cond_8d
    :goto_53
    iget v12, v8, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->X:F

    .line 2556
    .line 2557
    const/16 v23, 0x0

    .line 2558
    .line 2559
    cmpl-float v12, v12, v23

    .line 2560
    .line 2561
    if-lez v12, :cond_8e

    .line 2562
    .line 2563
    const/4 v1, 0x1

    .line 2564
    :cond_8e
    :goto_54
    if-eqz v1, :cond_8f

    .line 2565
    .line 2566
    const/4 v12, 0x0

    .line 2567
    goto :goto_55

    .line 2568
    :cond_8f
    const/4 v12, 0x0

    .line 2569
    invoke-virtual {v11, v12, v8, v3}, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure;->a(ILandroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;)Z

    .line 2570
    .line 2571
    .line 2572
    :goto_55
    add-int/lit8 v7, v7, 0x1

    .line 2573
    .line 2574
    move/from16 v1, v17

    .line 2575
    .line 2576
    goto/16 :goto_50

    .line 2577
    .line 2578
    :cond_90
    const/4 v12, 0x0

    .line 2579
    invoke-interface {v3}, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;->a()V

    .line 2580
    .line 2581
    .line 2582
    goto :goto_56

    .line 2583
    :cond_91
    const/4 v12, 0x0

    .line 2584
    :goto_56
    invoke-virtual {v11, v10}, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure;->c(Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;)V

    .line 2585
    .line 2586
    .line 2587
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    .line 2588
    .line 2589
    .line 2590
    move-result v1

    .line 2591
    if-lez v16, :cond_92

    .line 2592
    .line 2593
    invoke-virtual {v11, v10, v12, v9, v13}, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure;->b(Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;III)V

    .line 2594
    .line 2595
    .line 2596
    :cond_92
    if-lez v1, :cond_a8

    .line 2597
    .line 2598
    iget-object v2, v10, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->T:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 2599
    .line 2600
    aget-object v3, v2, v12

    .line 2601
    .line 2602
    move-object/from16 v4, v40

    .line 2603
    .line 2604
    if-ne v3, v4, :cond_93

    .line 2605
    .line 2606
    const/4 v3, 0x1

    .line 2607
    :goto_57
    const/16 v25, 0x1

    .line 2608
    .line 2609
    goto :goto_58

    .line 2610
    :cond_93
    move v3, v12

    .line 2611
    goto :goto_57

    .line 2612
    :goto_58
    aget-object v2, v2, v25

    .line 2613
    .line 2614
    if-ne v2, v4, :cond_94

    .line 2615
    .line 2616
    const/4 v2, 0x1

    .line 2617
    goto :goto_59

    .line 2618
    :cond_94
    move v2, v12

    .line 2619
    :goto_59
    invoke-virtual {v10}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->o()I

    .line 2620
    .line 2621
    .line 2622
    move-result v4

    .line 2623
    iget v7, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->c0:I

    .line 2624
    .line 2625
    invoke-static {v4, v7}, Ljava/lang/Math;->max(II)I

    .line 2626
    .line 2627
    .line 2628
    move-result v4

    .line 2629
    invoke-virtual {v10}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->l()I

    .line 2630
    .line 2631
    .line 2632
    move-result v7

    .line 2633
    iget v5, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->d0:I

    .line 2634
    .line 2635
    invoke-static {v7, v5}, Ljava/lang/Math;->max(II)I

    .line 2636
    .line 2637
    .line 2638
    move-result v5

    .line 2639
    move v7, v4

    .line 2640
    move v8, v5

    .line 2641
    move v4, v12

    .line 2642
    move v5, v4

    .line 2643
    :goto_5a
    if-ge v4, v1, :cond_9a

    .line 2644
    .line 2645
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 2646
    .line 2647
    .line 2648
    move-result-object v14

    .line 2649
    check-cast v14, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 2650
    .line 2651
    instance-of v15, v14, Landroidx/constraintlayout/core/widgets/VirtualLayout;

    .line 2652
    .line 2653
    if-nez v15, :cond_95

    .line 2654
    .line 2655
    move/from16 v16, v2

    .line 2656
    .line 2657
    move/from16 v17, v3

    .line 2658
    .line 2659
    move-object/from16 v12, v18

    .line 2660
    .line 2661
    move-object/from16 v15, v20

    .line 2662
    .line 2663
    move-object/from16 v2, v28

    .line 2664
    .line 2665
    goto/16 :goto_5f

    .line 2666
    .line 2667
    :cond_95
    invoke-virtual {v14}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->o()I

    .line 2668
    .line 2669
    .line 2670
    move-result v15

    .line 2671
    invoke-virtual {v14}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->l()I

    .line 2672
    .line 2673
    .line 2674
    move-result v12

    .line 2675
    move/from16 v16, v2

    .line 2676
    .line 2677
    move/from16 v17, v3

    .line 2678
    .line 2679
    move-object/from16 v2, v28

    .line 2680
    .line 2681
    const/4 v3, 0x1

    .line 2682
    invoke-virtual {v11, v3, v14, v2}, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure;->a(ILandroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;)Z

    .line 2683
    .line 2684
    .line 2685
    move-result v19

    .line 2686
    or-int v3, v5, v19

    .line 2687
    .line 2688
    invoke-virtual {v14}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->o()I

    .line 2689
    .line 2690
    .line 2691
    move-result v5

    .line 2692
    move/from16 v19, v3

    .line 2693
    .line 2694
    invoke-virtual {v14}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->l()I

    .line 2695
    .line 2696
    .line 2697
    move-result v3

    .line 2698
    if-eq v5, v15, :cond_97

    .line 2699
    .line 2700
    invoke-virtual {v14, v5}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->K(I)V

    .line 2701
    .line 2702
    .line 2703
    if-eqz v17, :cond_96

    .line 2704
    .line 2705
    invoke-virtual {v14}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->p()I

    .line 2706
    .line 2707
    .line 2708
    move-result v5

    .line 2709
    iget v15, v14, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->V:I

    .line 2710
    .line 2711
    add-int/2addr v5, v15

    .line 2712
    if-le v5, v7, :cond_96

    .line 2713
    .line 2714
    invoke-virtual {v14}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->p()I

    .line 2715
    .line 2716
    .line 2717
    move-result v5

    .line 2718
    iget v15, v14, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->V:I

    .line 2719
    .line 2720
    add-int/2addr v5, v15

    .line 2721
    move-object/from16 v15, v20

    .line 2722
    .line 2723
    invoke-virtual {v14, v15}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->j(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 2724
    .line 2725
    .line 2726
    move-result-object v19

    .line 2727
    invoke-virtual/range {v19 .. v19}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->e()I

    .line 2728
    .line 2729
    .line 2730
    move-result v19

    .line 2731
    add-int v5, v19, v5

    .line 2732
    .line 2733
    invoke-static {v7, v5}, Ljava/lang/Math;->max(II)I

    .line 2734
    .line 2735
    .line 2736
    move-result v7

    .line 2737
    goto :goto_5b

    .line 2738
    :cond_96
    move-object/from16 v15, v20

    .line 2739
    .line 2740
    :goto_5b
    const/16 v19, 0x1

    .line 2741
    .line 2742
    goto :goto_5c

    .line 2743
    :cond_97
    move-object/from16 v15, v20

    .line 2744
    .line 2745
    :goto_5c
    if-eq v3, v12, :cond_99

    .line 2746
    .line 2747
    invoke-virtual {v14, v3}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->H(I)V

    .line 2748
    .line 2749
    .line 2750
    if-eqz v16, :cond_98

    .line 2751
    .line 2752
    invoke-virtual {v14}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->q()I

    .line 2753
    .line 2754
    .line 2755
    move-result v3

    .line 2756
    iget v5, v14, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->W:I

    .line 2757
    .line 2758
    add-int/2addr v3, v5

    .line 2759
    if-le v3, v8, :cond_98

    .line 2760
    .line 2761
    invoke-virtual {v14}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->q()I

    .line 2762
    .line 2763
    .line 2764
    move-result v3

    .line 2765
    iget v5, v14, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->W:I

    .line 2766
    .line 2767
    add-int/2addr v3, v5

    .line 2768
    move-object/from16 v12, v18

    .line 2769
    .line 2770
    invoke-virtual {v14, v12}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->j(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 2771
    .line 2772
    .line 2773
    move-result-object v5

    .line 2774
    invoke-virtual {v5}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->e()I

    .line 2775
    .line 2776
    .line 2777
    move-result v5

    .line 2778
    add-int/2addr v5, v3

    .line 2779
    invoke-static {v8, v5}, Ljava/lang/Math;->max(II)I

    .line 2780
    .line 2781
    .line 2782
    move-result v8

    .line 2783
    goto :goto_5d

    .line 2784
    :cond_98
    move-object/from16 v12, v18

    .line 2785
    .line 2786
    :goto_5d
    move v3, v8

    .line 2787
    const/4 v8, 0x1

    .line 2788
    goto :goto_5e

    .line 2789
    :cond_99
    move-object/from16 v12, v18

    .line 2790
    .line 2791
    move v3, v8

    .line 2792
    move/from16 v8, v19

    .line 2793
    .line 2794
    :goto_5e
    check-cast v14, Landroidx/constraintlayout/core/widgets/VirtualLayout;

    .line 2795
    .line 2796
    iget-boolean v5, v14, Landroidx/constraintlayout/core/widgets/VirtualLayout;->y0:Z

    .line 2797
    .line 2798
    or-int/2addr v5, v8

    .line 2799
    move v8, v3

    .line 2800
    :goto_5f
    add-int/lit8 v4, v4, 0x1

    .line 2801
    .line 2802
    move-object/from16 v28, v2

    .line 2803
    .line 2804
    move-object/from16 v18, v12

    .line 2805
    .line 2806
    move-object/from16 v20, v15

    .line 2807
    .line 2808
    move/from16 v2, v16

    .line 2809
    .line 2810
    move/from16 v3, v17

    .line 2811
    .line 2812
    const/4 v12, 0x0

    .line 2813
    goto/16 :goto_5a

    .line 2814
    .line 2815
    :cond_9a
    move/from16 v16, v2

    .line 2816
    .line 2817
    move/from16 v17, v3

    .line 2818
    .line 2819
    move-object/from16 v12, v18

    .line 2820
    .line 2821
    move-object/from16 v15, v20

    .line 2822
    .line 2823
    const/4 v3, 0x0

    .line 2824
    :goto_60
    move-object/from16 v2, v28

    .line 2825
    .line 2826
    const/4 v4, 0x2

    .line 2827
    if-ge v3, v4, :cond_a8

    .line 2828
    .line 2829
    move v14, v8

    .line 2830
    move v8, v5

    .line 2831
    const/4 v5, 0x0

    .line 2832
    :goto_61
    if-ge v5, v1, :cond_a7

    .line 2833
    .line 2834
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 2835
    .line 2836
    .line 2837
    move-result-object v18

    .line 2838
    move-object/from16 v4, v18

    .line 2839
    .line 2840
    check-cast v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 2841
    .line 2842
    move/from16 v18, v1

    .line 2843
    .line 2844
    instance-of v1, v4, Landroidx/constraintlayout/core/widgets/Helper;

    .line 2845
    .line 2846
    if-eqz v1, :cond_9c

    .line 2847
    .line 2848
    instance-of v1, v4, Landroidx/constraintlayout/core/widgets/VirtualLayout;

    .line 2849
    .line 2850
    if-eqz v1, :cond_9b

    .line 2851
    .line 2852
    goto :goto_63

    .line 2853
    :cond_9b
    :goto_62
    move/from16 v19, v5

    .line 2854
    .line 2855
    const/16 v5, 0x8

    .line 2856
    .line 2857
    goto :goto_64

    .line 2858
    :cond_9c
    :goto_63
    instance-of v1, v4, Landroidx/constraintlayout/core/widgets/Guideline;

    .line 2859
    .line 2860
    if-eqz v1, :cond_9d

    .line 2861
    .line 2862
    goto :goto_62

    .line 2863
    :cond_9d
    iget v1, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->h0:I

    .line 2864
    .line 2865
    move/from16 v19, v5

    .line 2866
    .line 2867
    const/16 v5, 0x8

    .line 2868
    .line 2869
    if-ne v1, v5, :cond_9e

    .line 2870
    .line 2871
    goto :goto_64

    .line 2872
    :cond_9e
    if-eqz v21, :cond_9f

    .line 2873
    .line 2874
    iget-object v1, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->d:Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;

    .line 2875
    .line 2876
    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->e:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    .line 2877
    .line 2878
    iget-boolean v1, v1, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->j:Z

    .line 2879
    .line 2880
    if-eqz v1, :cond_9f

    .line 2881
    .line 2882
    iget-object v1, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->e:Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    .line 2883
    .line 2884
    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->e:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    .line 2885
    .line 2886
    iget-boolean v1, v1, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->j:Z

    .line 2887
    .line 2888
    if-eqz v1, :cond_9f

    .line 2889
    .line 2890
    goto :goto_64

    .line 2891
    :cond_9f
    instance-of v1, v4, Landroidx/constraintlayout/core/widgets/VirtualLayout;

    .line 2892
    .line 2893
    if-eqz v1, :cond_a0

    .line 2894
    .line 2895
    :goto_64
    move-object/from16 v28, v2

    .line 2896
    .line 2897
    move/from16 v23, v3

    .line 2898
    .line 2899
    move-object/from16 v20, v6

    .line 2900
    .line 2901
    goto/16 :goto_65

    .line 2902
    .line 2903
    :cond_a0
    invoke-virtual {v4}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->o()I

    .line 2904
    .line 2905
    .line 2906
    move-result v1

    .line 2907
    invoke-virtual {v4}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->l()I

    .line 2908
    .line 2909
    .line 2910
    move-result v5

    .line 2911
    move-object/from16 v20, v6

    .line 2912
    .line 2913
    iget v6, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->b0:I

    .line 2914
    .line 2915
    move/from16 v22, v8

    .line 2916
    .line 2917
    const/4 v8, 0x1

    .line 2918
    if-ne v3, v8, :cond_a1

    .line 2919
    .line 2920
    const/4 v8, 0x2

    .line 2921
    :cond_a1
    invoke-virtual {v11, v8, v4, v2}, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure;->a(ILandroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;)Z

    .line 2922
    .line 2923
    .line 2924
    move-result v8

    .line 2925
    or-int v8, v22, v8

    .line 2926
    .line 2927
    move-object/from16 v28, v2

    .line 2928
    .line 2929
    invoke-virtual {v4}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->o()I

    .line 2930
    .line 2931
    .line 2932
    move-result v2

    .line 2933
    move/from16 v23, v3

    .line 2934
    .line 2935
    invoke-virtual {v4}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->l()I

    .line 2936
    .line 2937
    .line 2938
    move-result v3

    .line 2939
    if-eq v2, v1, :cond_a3

    .line 2940
    .line 2941
    invoke-virtual {v4, v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->K(I)V

    .line 2942
    .line 2943
    .line 2944
    if-eqz v17, :cond_a2

    .line 2945
    .line 2946
    invoke-virtual {v4}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->p()I

    .line 2947
    .line 2948
    .line 2949
    move-result v1

    .line 2950
    iget v2, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->V:I

    .line 2951
    .line 2952
    add-int/2addr v1, v2

    .line 2953
    if-le v1, v7, :cond_a2

    .line 2954
    .line 2955
    invoke-virtual {v4}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->p()I

    .line 2956
    .line 2957
    .line 2958
    move-result v1

    .line 2959
    iget v2, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->V:I

    .line 2960
    .line 2961
    add-int/2addr v1, v2

    .line 2962
    invoke-virtual {v4, v15}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->j(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 2963
    .line 2964
    .line 2965
    move-result-object v2

    .line 2966
    invoke-virtual {v2}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->e()I

    .line 2967
    .line 2968
    .line 2969
    move-result v2

    .line 2970
    add-int/2addr v2, v1

    .line 2971
    invoke-static {v7, v2}, Ljava/lang/Math;->max(II)I

    .line 2972
    .line 2973
    .line 2974
    move-result v7

    .line 2975
    :cond_a2
    const/4 v8, 0x1

    .line 2976
    :cond_a3
    if-eq v3, v5, :cond_a5

    .line 2977
    .line 2978
    invoke-virtual {v4, v3}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->H(I)V

    .line 2979
    .line 2980
    .line 2981
    if-eqz v16, :cond_a4

    .line 2982
    .line 2983
    invoke-virtual {v4}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->q()I

    .line 2984
    .line 2985
    .line 2986
    move-result v1

    .line 2987
    iget v2, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->W:I

    .line 2988
    .line 2989
    add-int/2addr v1, v2

    .line 2990
    if-le v1, v14, :cond_a4

    .line 2991
    .line 2992
    invoke-virtual {v4}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->q()I

    .line 2993
    .line 2994
    .line 2995
    move-result v1

    .line 2996
    iget v2, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->W:I

    .line 2997
    .line 2998
    add-int/2addr v1, v2

    .line 2999
    invoke-virtual {v4, v12}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->j(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 3000
    .line 3001
    .line 3002
    move-result-object v2

    .line 3003
    invoke-virtual {v2}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->e()I

    .line 3004
    .line 3005
    .line 3006
    move-result v2

    .line 3007
    add-int/2addr v2, v1

    .line 3008
    invoke-static {v14, v2}, Ljava/lang/Math;->max(II)I

    .line 3009
    .line 3010
    .line 3011
    move-result v14

    .line 3012
    :cond_a4
    const/4 v8, 0x1

    .line 3013
    :cond_a5
    iget-boolean v1, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->D:Z

    .line 3014
    .line 3015
    if-eqz v1, :cond_a6

    .line 3016
    .line 3017
    iget v1, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->b0:I

    .line 3018
    .line 3019
    if-eq v6, v1, :cond_a6

    .line 3020
    .line 3021
    const/4 v8, 0x1

    .line 3022
    :cond_a6
    :goto_65
    add-int/lit8 v5, v19, 0x1

    .line 3023
    .line 3024
    move/from16 v1, v18

    .line 3025
    .line 3026
    move-object/from16 v6, v20

    .line 3027
    .line 3028
    move/from16 v3, v23

    .line 3029
    .line 3030
    move-object/from16 v2, v28

    .line 3031
    .line 3032
    const/4 v4, 0x2

    .line 3033
    goto/16 :goto_61

    .line 3034
    .line 3035
    :cond_a7
    move/from16 v18, v1

    .line 3036
    .line 3037
    move-object/from16 v28, v2

    .line 3038
    .line 3039
    move/from16 v23, v3

    .line 3040
    .line 3041
    move-object/from16 v20, v6

    .line 3042
    .line 3043
    move/from16 v22, v8

    .line 3044
    .line 3045
    if-eqz v22, :cond_a8

    .line 3046
    .line 3047
    add-int/lit8 v3, v23, 0x1

    .line 3048
    .line 3049
    invoke-virtual {v11, v10, v3, v9, v13}, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure;->b(Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;III)V

    .line 3050
    .line 3051
    .line 3052
    move v8, v14

    .line 3053
    move/from16 v1, v18

    .line 3054
    .line 3055
    move-object/from16 v6, v20

    .line 3056
    .line 3057
    const/4 v5, 0x0

    .line 3058
    goto/16 :goto_60

    .line 3059
    .line 3060
    :cond_a8
    iput v0, v10, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->D0:I

    .line 3061
    .line 3062
    const/16 v0, 0x200

    .line 3063
    .line 3064
    invoke-virtual {v10, v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->R(I)Z

    .line 3065
    .line 3066
    .line 3067
    move-result v0

    .line 3068
    sput-boolean v0, Landroidx/constraintlayout/core/LinearSystem;->p:Z

    .line 3069
    .line 3070
    :cond_a9
    invoke-virtual {v10}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->o()I

    .line 3071
    .line 3072
    .line 3073
    move-result v3

    .line 3074
    invoke-virtual {v10}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->l()I

    .line 3075
    .line 3076
    .line 3077
    move-result v4

    .line 3078
    iget-boolean v5, v10, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->E0:Z

    .line 3079
    .line 3080
    iget-boolean v6, v10, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->F0:Z

    .line 3081
    .line 3082
    move-object/from16 v0, p0

    .line 3083
    .line 3084
    move/from16 v1, p1

    .line 3085
    .line 3086
    move/from16 v2, p2

    .line 3087
    .line 3088
    invoke-virtual/range {v0 .. v6}, Landroidx/constraintlayout/widget/ConstraintLayout;->g(IIIIZZ)V

    .line 3089
    .line 3090
    .line 3091
    return-void
.end method

.method public onViewAdded(Landroid/view/View;)V
    .locals 4

    .line 1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onViewAdded(Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->c(Landroid/view/View;)Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    instance-of v1, p1, Landroidx/constraintlayout/widget/Guideline;

    .line 9
    .line 10
    const/4 v2, 0x1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    instance-of v0, v0, Landroidx/constraintlayout/core/widgets/Guideline;

    .line 14
    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 22
    .line 23
    new-instance v1, Landroidx/constraintlayout/core/widgets/Guideline;

    .line 24
    .line 25
    invoke-direct {v1}, Landroidx/constraintlayout/core/widgets/Guideline;-><init>()V

    .line 26
    .line 27
    .line 28
    iput-object v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->p0:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 29
    .line 30
    iput-boolean v2, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->c0:Z

    .line 31
    .line 32
    iget v0, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->U:I

    .line 33
    .line 34
    invoke-virtual {v1, v0}, Landroidx/constraintlayout/core/widgets/Guideline;->O(I)V

    .line 35
    .line 36
    .line 37
    :cond_0
    instance-of v0, p1, Landroidx/constraintlayout/widget/ConstraintHelper;

    .line 38
    .line 39
    if-eqz v0, :cond_1

    .line 40
    .line 41
    move-object v0, p1

    .line 42
    check-cast v0, Landroidx/constraintlayout/widget/ConstraintHelper;

    .line 43
    .line 44
    invoke-virtual {v0}, Landroidx/constraintlayout/widget/ConstraintHelper;->m()V

    .line 45
    .line 46
    .line 47
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    check-cast v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 52
    .line 53
    iput-boolean v2, v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->d0:Z

    .line 54
    .line 55
    iget-object v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->f:Ljava/util/ArrayList;

    .line 56
    .line 57
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    move-result v3

    .line 61
    if-nez v3, :cond_1

    .line 62
    .line 63
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    :cond_1
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->c:Landroid/util/SparseArray;

    .line 67
    .line 68
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 69
    .line 70
    .line 71
    move-result v1

    .line 72
    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 73
    .line 74
    .line 75
    iput-boolean v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->l:Z

    .line 76
    .line 77
    return-void
.end method

.method public onViewRemoved(Landroid/view/View;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onViewRemoved(Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->c:Landroid/util/SparseArray;

    .line 5
    .line 6
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->remove(I)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->c(Landroid/view/View;)Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iget-object v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->g:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    .line 18
    .line 19
    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/WidgetContainer;->q0:Ljava/util/ArrayList;

    .line 20
    .line 21
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->A()V

    .line 25
    .line 26
    .line 27
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->f:Ljava/util/ArrayList;

    .line 28
    .line 29
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    const/4 p1, 0x1

    .line 33
    iput-boolean p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->l:Z

    .line 34
    .line 35
    return-void
.end method

.method public requestLayout()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->l:Z

    .line 3
    .line 4
    invoke-super {p0}, Landroid/view/ViewGroup;->requestLayout()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public setConstraintSet(Landroidx/constraintlayout/widget/ConstraintSet;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->n:Landroidx/constraintlayout/widget/ConstraintSet;

    .line 2
    .line 3
    return-void
.end method

.method public setId(I)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getId()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget-object v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->c:Landroid/util/SparseArray;

    .line 6
    .line 7
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->remove(I)V

    .line 8
    .line 9
    .line 10
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setId(I)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Landroid/view/View;->getId()I

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    invoke-virtual {v1, p1, p0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public setMaxHeight(I)V
    .locals 1

    .line 1
    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->k:I

    .line 2
    .line 3
    if-ne p1, v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->k:I

    .line 7
    .line 8
    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->requestLayout()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public setMaxWidth(I)V
    .locals 1

    .line 1
    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->j:I

    .line 2
    .line 3
    if-ne p1, v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->j:I

    .line 7
    .line 8
    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->requestLayout()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public setMinHeight(I)V
    .locals 1

    .line 1
    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->i:I

    .line 2
    .line 3
    if-ne p1, v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->i:I

    .line 7
    .line 8
    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->requestLayout()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public setMinWidth(I)V
    .locals 1

    .line 1
    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->h:I

    .line 2
    .line 3
    if-ne p1, v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->h:I

    .line 7
    .line 8
    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->requestLayout()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public setOnConstraintsChanged(Landroidx/constraintlayout/widget/ConstraintsChangedListener;)V
    .locals 0

    return-void
.end method

.method public setOptimizationLevel(I)V
    .locals 1

    .line 1
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->m:I

    .line 2
    .line 3
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->g:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    .line 4
    .line 5
    iput p1, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->D0:I

    .line 6
    .line 7
    const/16 p1, 0x200

    .line 8
    .line 9
    invoke-virtual {v0, p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->R(I)Z

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    sput-boolean p1, Landroidx/constraintlayout/core/LinearSystem;->p:Z

    .line 14
    .line 15
    return-void
.end method

.method public final shouldDelayChildPressedState()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
