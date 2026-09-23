.class public Lcom/mycompany/app/wview/WebTtsView;
.super Landroid/view/View;
.source "SourceFile"


# instance fields
.field public A:Landroid/graphics/Paint;

.field public B:Landroid/animation/ValueAnimator;

.field public C:Landroid/animation/ValueAnimator;

.field public D:Z

.field public E:Z

.field public F:I

.field public G:I

.field public H:I

.field public I:I

.field public final J:I

.field public final K:I

.field public L:I

.field public M:I

.field public N:I

.field public O:I

.field public P:Z

.field public Q:Z

.field public R:I

.field public S:I

.field public T:Landroid/graphics/Rect;

.field public U:Ljava/util/ArrayList;

.field public V:F

.field public W:Z

.field public final a0:Ljava/lang/Runnable;

.field public b0:F

.field public c:Z

.field public c0:Z

.field public final d0:Ljava/lang/Runnable;

.field public e0:F

.field public f:Landroid/content/Context;

.field public f0:Z

.field public g:Lcom/mycompany/app/wview/WebFltView$FltViewListener;

.field public final g0:Ljava/lang/Runnable;

.field public final h:I

.field public h0:F

.field public i:I

.field public i0:Z

.field public j:I

.field public final j0:Ljava/lang/Runnable;

.field public k:Landroid/graphics/Paint;

.field public final l:I

.field public m:I

.field public n:I

.field public o:Landroid/graphics/Paint;

.field public p:Landroid/animation/ValueAnimator;

.field public q:Landroid/animation/ValueAnimator;

.field public r:F

.field public s:I

.field public t:Landroid/graphics/Paint;

.field public final u:F

.field public final v:F

.field public w:Z

.field public x:I

.field public y:Lcom/mycompany/app/view/MyProgressDrawable;

.field public z:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/mycompany/app/wview/WebTtsView$5;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Lcom/mycompany/app/wview/WebTtsView$5;-><init>(Lcom/mycompany/app/wview/WebTtsView;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/mycompany/app/wview/WebTtsView;->a0:Ljava/lang/Runnable;

    .line 10
    .line 11
    new-instance v0, Lcom/mycompany/app/wview/WebTtsView$9;

    .line 12
    .line 13
    invoke-direct {v0, p0}, Lcom/mycompany/app/wview/WebTtsView$9;-><init>(Lcom/mycompany/app/wview/WebTtsView;)V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/mycompany/app/wview/WebTtsView;->d0:Ljava/lang/Runnable;

    .line 17
    .line 18
    new-instance v0, Lcom/mycompany/app/wview/WebTtsView$13;

    .line 19
    .line 20
    invoke-direct {v0, p0}, Lcom/mycompany/app/wview/WebTtsView$13;-><init>(Lcom/mycompany/app/wview/WebTtsView;)V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lcom/mycompany/app/wview/WebTtsView;->g0:Ljava/lang/Runnable;

    .line 24
    .line 25
    new-instance v0, Lcom/mycompany/app/wview/WebTtsView$17;

    .line 26
    .line 27
    invoke-direct {v0, p0}, Lcom/mycompany/app/wview/WebTtsView$17;-><init>(Lcom/mycompany/app/wview/WebTtsView;)V

    .line 28
    .line 29
    .line 30
    iput-object v0, p0, Lcom/mycompany/app/wview/WebTtsView;->j0:Ljava/lang/Runnable;

    .line 31
    .line 32
    const/4 v0, 0x1

    .line 33
    iput-boolean v0, p0, Lcom/mycompany/app/wview/WebTtsView;->c:Z

    .line 34
    .line 35
    iput-object p1, p0, Lcom/mycompany/app/wview/WebTtsView;->f:Landroid/content/Context;

    .line 36
    .line 37
    sget p1, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 38
    .line 39
    iput p1, p0, Lcom/mycompany/app/wview/WebTtsView;->J:I

    .line 40
    .line 41
    iput p1, p0, Lcom/mycompany/app/wview/WebTtsView;->K:I

    .line 42
    .line 43
    div-int/lit8 p1, p1, 0x2

    .line 44
    .line 45
    sget v0, Lcom/mycompany/app/main/MainApp;->j1:I

    .line 46
    .line 47
    iput v0, p0, Lcom/mycompany/app/wview/WebTtsView;->h:I

    .line 48
    .line 49
    sget v0, Lcom/mycompany/app/main/MainApp;->k1:I

    .line 50
    .line 51
    iput v0, p0, Lcom/mycompany/app/wview/WebTtsView;->l:I

    .line 52
    .line 53
    int-to-float p1, p1

    .line 54
    iput p1, p0, Lcom/mycompany/app/wview/WebTtsView;->u:F

    .line 55
    .line 56
    iput p1, p0, Lcom/mycompany/app/wview/WebTtsView;->v:F

    .line 57
    .line 58
    new-instance p1, Lcom/mycompany/app/wview/WebTtsView$1;

    .line 59
    .line 60
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 61
    .line 62
    .line 63
    invoke-virtual {p0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 64
    .line 65
    .line 66
    new-instance p1, Lcom/mycompany/app/wview/WebTtsView$2;

    .line 67
    .line 68
    invoke-direct {p1, p0}, Lcom/mycompany/app/wview/WebTtsView$2;-><init>(Lcom/mycompany/app/wview/WebTtsView;)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {p0, p1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 72
    .line 73
    .line 74
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 75
    .line 76
    const/16 v0, 0x1d

    .line 77
    .line 78
    if-lt p1, v0, :cond_0

    .line 79
    .line 80
    new-instance p1, Landroid/graphics/Rect;

    .line 81
    .line 82
    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    .line 83
    .line 84
    .line 85
    iput-object p1, p0, Lcom/mycompany/app/wview/WebTtsView;->T:Landroid/graphics/Rect;

    .line 86
    .line 87
    new-instance p1, Ljava/util/ArrayList;

    .line 88
    .line 89
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 90
    .line 91
    .line 92
    iput-object p1, p0, Lcom/mycompany/app/wview/WebTtsView;->U:Ljava/util/ArrayList;

    .line 93
    .line 94
    iget-object v0, p0, Lcom/mycompany/app/wview/WebTtsView;->T:Landroid/graphics/Rect;

    .line 95
    .line 96
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 97
    .line 98
    .line 99
    :cond_0
    return-void
.end method

.method public static bridge synthetic a(Lcom/mycompany/app/wview/WebTtsView;)V
    .locals 1

    .line 1
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/mycompany/app/wview/WebTtsView;->setOnlyVisibility(I)V

    return-void
.end method

.method public static bridge synthetic b(Lcom/mycompany/app/wview/WebTtsView;F)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/mycompany/app/wview/WebTtsView;->setValAnimHide(F)V

    return-void
.end method

.method public static bridge synthetic c(Lcom/mycompany/app/wview/WebTtsView;F)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/mycompany/app/wview/WebTtsView;->setValAnimShow(F)V

    return-void
.end method

.method public static bridge synthetic d(Lcom/mycompany/app/wview/WebTtsView;F)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/mycompany/app/wview/WebTtsView;->setValPreScaleDn(F)V

    return-void
.end method

.method public static bridge synthetic e(Lcom/mycompany/app/wview/WebTtsView;F)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/mycompany/app/wview/WebTtsView;->setValPreScaleUp(F)V

    return-void
.end method

.method private setLoad(Z)V
    .locals 4

    .line 1
    iput-boolean p1, p0, Lcom/mycompany/app/wview/WebTtsView;->w:Z

    .line 2
    .line 3
    const/4 v0, -0x1

    .line 4
    if-eqz p1, :cond_2

    .line 5
    .line 6
    iget-object p1, p0, Lcom/mycompany/app/wview/WebTtsView;->y:Lcom/mycompany/app/view/MyProgressDrawable;

    .line 7
    .line 8
    if-nez p1, :cond_1

    .line 9
    .line 10
    new-instance p1, Lcom/mycompany/app/view/MyProgressDrawable;

    .line 11
    .line 12
    iget-object v1, p0, Lcom/mycompany/app/wview/WebTtsView;->f:Landroid/content/Context;

    .line 13
    .line 14
    const/high16 v2, 0x40000000    # 2.0f

    .line 15
    .line 16
    invoke-static {v1, v2}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    invoke-direct {p1, p0, v1, v0}, Lcom/mycompany/app/view/MyProgressDrawable;-><init>(Landroid/view/View;FI)V

    .line 21
    .line 22
    .line 23
    iput-object p1, p0, Lcom/mycompany/app/wview/WebTtsView;->y:Lcom/mycompany/app/view/MyProgressDrawable;

    .line 24
    .line 25
    sget v0, Lcom/mycompany/app/pref/PrefEditor;->p:F

    .line 26
    .line 27
    float-to-double v0, v0

    .line 28
    const-wide v2, 0x3feccccccccccccdL    # 0.9

    .line 29
    .line 30
    .line 31
    .line 32
    .line 33
    cmpl-double v0, v0, v2

    .line 34
    .line 35
    if-lez v0, :cond_0

    .line 36
    .line 37
    sget-boolean v0, Lcom/mycompany/app/main/MainApp;->L1:Z

    .line 38
    .line 39
    if-eqz v0, :cond_0

    .line 40
    .line 41
    const/16 v0, 0xb0

    .line 42
    .line 43
    iput v0, p0, Lcom/mycompany/app/wview/WebTtsView;->x:I

    .line 44
    .line 45
    invoke-virtual {p1, v0}, Lcom/mycompany/app/view/MyProgressDrawable;->c(I)V

    .line 46
    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_0
    const/16 p1, 0xff

    .line 50
    .line 51
    iput p1, p0, Lcom/mycompany/app/wview/WebTtsView;->x:I

    .line 52
    .line 53
    :goto_0
    sget p1, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 54
    .line 55
    iget v0, p0, Lcom/mycompany/app/wview/WebTtsView;->l:I

    .line 56
    .line 57
    sub-int/2addr p1, v0

    .line 58
    div-int/lit8 p1, p1, 0x2

    .line 59
    .line 60
    add-int/2addr v0, p1

    .line 61
    iget-object v1, p0, Lcom/mycompany/app/wview/WebTtsView;->y:Lcom/mycompany/app/view/MyProgressDrawable;

    .line 62
    .line 63
    invoke-virtual {v1, p1, p1, v0, v0}, Lcom/mycompany/app/view/MyProgressDrawable;->d(IIII)V

    .line 64
    .line 65
    .line 66
    :cond_1
    iget-object p1, p0, Lcom/mycompany/app/wview/WebTtsView;->y:Lcom/mycompany/app/view/MyProgressDrawable;

    .line 67
    .line 68
    invoke-virtual {p1}, Lcom/mycompany/app/view/MyProgressDrawable;->f()V

    .line 69
    .line 70
    .line 71
    goto :goto_1

    .line 72
    :cond_2
    iget-object p1, p0, Lcom/mycompany/app/wview/WebTtsView;->z:Landroid/graphics/RectF;

    .line 73
    .line 74
    if-nez p1, :cond_3

    .line 75
    .line 76
    sget p1, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 77
    .line 78
    sget v1, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 79
    .line 80
    sub-int/2addr v1, p1

    .line 81
    div-int/lit8 v1, v1, 0x2

    .line 82
    .line 83
    add-int/2addr p1, v1

    .line 84
    new-instance v2, Landroid/graphics/RectF;

    .line 85
    .line 86
    int-to-float v1, v1

    .line 87
    int-to-float p1, p1

    .line 88
    invoke-direct {v2, v1, v1, p1, p1}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 89
    .line 90
    .line 91
    iput-object v2, p0, Lcom/mycompany/app/wview/WebTtsView;->z:Landroid/graphics/RectF;

    .line 92
    .line 93
    :cond_3
    iget-object p1, p0, Lcom/mycompany/app/wview/WebTtsView;->A:Landroid/graphics/Paint;

    .line 94
    .line 95
    if-nez p1, :cond_4

    .line 96
    .line 97
    new-instance p1, Landroid/graphics/Paint;

    .line 98
    .line 99
    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    .line 100
    .line 101
    .line 102
    iput-object p1, p0, Lcom/mycompany/app/wview/WebTtsView;->A:Landroid/graphics/Paint;

    .line 103
    .line 104
    const/4 v1, 0x1

    .line 105
    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 106
    .line 107
    .line 108
    iget-object p1, p0, Lcom/mycompany/app/wview/WebTtsView;->A:Landroid/graphics/Paint;

    .line 109
    .line 110
    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    .line 111
    .line 112
    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 113
    .line 114
    .line 115
    iget-object p1, p0, Lcom/mycompany/app/wview/WebTtsView;->A:Landroid/graphics/Paint;

    .line 116
    .line 117
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 118
    .line 119
    .line 120
    :cond_4
    iget-object p1, p0, Lcom/mycompany/app/wview/WebTtsView;->y:Lcom/mycompany/app/view/MyProgressDrawable;

    .line 121
    .line 122
    if-eqz p1, :cond_5

    .line 123
    .line 124
    const/4 v0, 0x0

    .line 125
    iput-boolean v0, p1, Lcom/mycompany/app/view/MyProgressDrawable;->f:Z

    .line 126
    .line 127
    :cond_5
    :goto_1
    invoke-virtual {p0}, Lcom/mycompany/app/wview/WebTtsView;->invalidate()V

    .line 128
    .line 129
    .line 130
    return-void
.end method

.method private setOnlyVisibility(I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 2
    .line 3
    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    iget-object p1, p0, Lcom/mycompany/app/wview/WebTtsView;->g:Lcom/mycompany/app/wview/WebFltView$FltViewListener;

    .line 7
    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    invoke-interface {p1}, Lcom/mycompany/app/wview/WebFltView$FltViewListener;->b()V

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method private setValAnimHide(F)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private setValAnimShow(F)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    const/4 p1, 0x0

    .line 11
    invoke-direct {p0, p1}, Lcom/mycompany/app/wview/WebTtsView;->setOnlyVisibility(I)V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method private setValPreScaleDn(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/wview/WebTtsView;->o:Landroid/graphics/Paint;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iput p1, p0, Lcom/mycompany/app/wview/WebTtsView;->r:F

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/mycompany/app/wview/WebTtsView;->invalidate()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method private setValPreScaleUp(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/wview/WebTtsView;->o:Landroid/graphics/Paint;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iput p1, p0, Lcom/mycompany/app/wview/WebTtsView;->r:F

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/mycompany/app/wview/WebTtsView;->invalidate()V

    .line 9
    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final f()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/wview/WebTtsView;->p:Landroid/animation/ValueAnimator;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 7
    .line 8
    .line 9
    iput-object v1, p0, Lcom/mycompany/app/wview/WebTtsView;->p:Landroid/animation/ValueAnimator;

    .line 10
    .line 11
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/wview/WebTtsView;->q:Landroid/animation/ValueAnimator;

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 16
    .line 17
    .line 18
    iput-object v1, p0, Lcom/mycompany/app/wview/WebTtsView;->q:Landroid/animation/ValueAnimator;

    .line 19
    .line 20
    :cond_1
    iget-object v0, p0, Lcom/mycompany/app/wview/WebTtsView;->y:Lcom/mycompany/app/view/MyProgressDrawable;

    .line 21
    .line 22
    if-eqz v0, :cond_2

    .line 23
    .line 24
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyProgressDrawable;->b()V

    .line 25
    .line 26
    .line 27
    iput-object v1, p0, Lcom/mycompany/app/wview/WebTtsView;->y:Lcom/mycompany/app/view/MyProgressDrawable;

    .line 28
    .line 29
    :cond_2
    iget-object v0, p0, Lcom/mycompany/app/wview/WebTtsView;->B:Landroid/animation/ValueAnimator;

    .line 30
    .line 31
    if-eqz v0, :cond_3

    .line 32
    .line 33
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 34
    .line 35
    .line 36
    iput-object v1, p0, Lcom/mycompany/app/wview/WebTtsView;->B:Landroid/animation/ValueAnimator;

    .line 37
    .line 38
    :cond_3
    iget-object v0, p0, Lcom/mycompany/app/wview/WebTtsView;->C:Landroid/animation/ValueAnimator;

    .line 39
    .line 40
    if-eqz v0, :cond_4

    .line 41
    .line 42
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 43
    .line 44
    .line 45
    iput-object v1, p0, Lcom/mycompany/app/wview/WebTtsView;->C:Landroid/animation/ValueAnimator;

    .line 46
    .line 47
    :cond_4
    return-void
.end method

.method public final g()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/mycompany/app/wview/WebTtsView;->c:Z

    .line 2
    .line 3
    if-eqz v0, :cond_5

    .line 4
    .line 5
    iget-boolean v0, p0, Lcom/mycompany/app/wview/WebTtsView;->P:Z

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    iput-boolean v0, p0, Lcom/mycompany/app/wview/WebTtsView;->P:Z

    .line 12
    .line 13
    iget-object v1, p0, Lcom/mycompany/app/wview/WebTtsView;->o:Landroid/graphics/Paint;

    .line 14
    .line 15
    if-nez v1, :cond_1

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_1
    iget-object v1, p0, Lcom/mycompany/app/wview/WebTtsView;->q:Landroid/animation/ValueAnimator;

    .line 19
    .line 20
    if-eqz v1, :cond_2

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_2
    iget v1, p0, Lcom/mycompany/app/wview/WebTtsView;->r:F

    .line 24
    .line 25
    const v2, 0x3f4ccccd    # 0.8f

    .line 26
    .line 27
    .line 28
    cmpg-float v3, v1, v2

    .line 29
    .line 30
    if-gtz v3, :cond_3

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_3
    iput v1, p0, Lcom/mycompany/app/wview/WebTtsView;->b0:F

    .line 34
    .line 35
    iput-boolean v0, p0, Lcom/mycompany/app/wview/WebTtsView;->c0:Z

    .line 36
    .line 37
    const/4 v3, 0x2

    .line 38
    new-array v3, v3, [F

    .line 39
    .line 40
    aput v1, v3, v0

    .line 41
    .line 42
    const/4 v0, 0x1

    .line 43
    aput v2, v3, v0

    .line 44
    .line 45
    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    iput-object v0, p0, Lcom/mycompany/app/wview/WebTtsView;->q:Landroid/animation/ValueAnimator;

    .line 50
    .line 51
    const-wide/16 v1, 0xc8

    .line 52
    .line 53
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 54
    .line 55
    .line 56
    iget-object v0, p0, Lcom/mycompany/app/wview/WebTtsView;->q:Landroid/animation/ValueAnimator;

    .line 57
    .line 58
    invoke-static {v0}, Lcom/mycompany/app/dialog/a;->r(Landroid/animation/ValueAnimator;)V

    .line 59
    .line 60
    .line 61
    iget-object v0, p0, Lcom/mycompany/app/wview/WebTtsView;->q:Landroid/animation/ValueAnimator;

    .line 62
    .line 63
    new-instance v1, Lcom/mycompany/app/wview/WebTtsView$7;

    .line 64
    .line 65
    invoke-direct {v1, p0}, Lcom/mycompany/app/wview/WebTtsView$7;-><init>(Lcom/mycompany/app/wview/WebTtsView;)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 69
    .line 70
    .line 71
    iget-object v0, p0, Lcom/mycompany/app/wview/WebTtsView;->q:Landroid/animation/ValueAnimator;

    .line 72
    .line 73
    new-instance v1, Lcom/mycompany/app/wview/WebTtsView$8;

    .line 74
    .line 75
    invoke-direct {v1, p0}, Lcom/mycompany/app/wview/WebTtsView$8;-><init>(Lcom/mycompany/app/wview/WebTtsView;)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 79
    .line 80
    .line 81
    iget-object v0, p0, Lcom/mycompany/app/wview/WebTtsView;->p:Landroid/animation/ValueAnimator;

    .line 82
    .line 83
    if-eqz v0, :cond_4

    .line 84
    .line 85
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 86
    .line 87
    .line 88
    :cond_4
    iget-object v0, p0, Lcom/mycompany/app/wview/WebTtsView;->q:Landroid/animation/ValueAnimator;

    .line 89
    .line 90
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 91
    .line 92
    .line 93
    :cond_5
    :goto_0
    return-void
.end method

.method public final h()V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lcom/mycompany/app/wview/WebTtsView;->E:Z

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    if-nez v0, :cond_1

    .line 6
    .line 7
    iget-boolean v0, p0, Lcom/mycompany/app/wview/WebTtsView;->P:Z

    .line 8
    .line 9
    if-nez v0, :cond_1

    .line 10
    .line 11
    iget-boolean v0, p0, Lcom/mycompany/app/wview/WebTtsView;->Q:Z

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    move v0, v2

    .line 17
    goto :goto_1

    .line 18
    :cond_1
    :goto_0
    iput-boolean v2, p0, Lcom/mycompany/app/wview/WebTtsView;->E:Z

    .line 19
    .line 20
    iput-boolean v2, p0, Lcom/mycompany/app/wview/WebTtsView;->P:Z

    .line 21
    .line 22
    iput-boolean v2, p0, Lcom/mycompany/app/wview/WebTtsView;->Q:Z

    .line 23
    .line 24
    move v0, v1

    .line 25
    :goto_1
    iget-object v3, p0, Lcom/mycompany/app/wview/WebTtsView;->p:Landroid/animation/ValueAnimator;

    .line 26
    .line 27
    const/4 v4, 0x0

    .line 28
    if-eqz v3, :cond_2

    .line 29
    .line 30
    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->cancel()V

    .line 31
    .line 32
    .line 33
    iput-object v4, p0, Lcom/mycompany/app/wview/WebTtsView;->p:Landroid/animation/ValueAnimator;

    .line 34
    .line 35
    move v0, v1

    .line 36
    :cond_2
    iget-object v3, p0, Lcom/mycompany/app/wview/WebTtsView;->q:Landroid/animation/ValueAnimator;

    .line 37
    .line 38
    if-eqz v3, :cond_3

    .line 39
    .line 40
    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->cancel()V

    .line 41
    .line 42
    .line 43
    iput-object v4, p0, Lcom/mycompany/app/wview/WebTtsView;->q:Landroid/animation/ValueAnimator;

    .line 44
    .line 45
    goto :goto_2

    .line 46
    :cond_3
    move v1, v0

    .line 47
    :goto_2
    if-eqz v1, :cond_4

    .line 48
    .line 49
    invoke-virtual {p0}, Lcom/mycompany/app/wview/WebTtsView;->invalidate()V

    .line 50
    .line 51
    .line 52
    :cond_4
    iget-boolean v0, p0, Lcom/mycompany/app/wview/WebTtsView;->D:Z

    .line 53
    .line 54
    if-eqz v0, :cond_5

    .line 55
    .line 56
    iput-boolean v2, p0, Lcom/mycompany/app/wview/WebTtsView;->D:Z

    .line 57
    .line 58
    invoke-virtual {p0}, Lcom/mycompany/app/wview/WebTtsView;->i()V

    .line 59
    .line 60
    .line 61
    :cond_5
    return-void
.end method

.method public final i()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/wview/WebTtsView;->C:Landroid/animation/ValueAnimator;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    :goto_0
    return-void

    .line 13
    :cond_1
    iget-boolean v0, p0, Lcom/mycompany/app/wview/WebTtsView;->E:Z

    .line 14
    .line 15
    const/4 v1, 0x1

    .line 16
    if-nez v0, :cond_6

    .line 17
    .line 18
    iget-boolean v0, p0, Lcom/mycompany/app/wview/WebTtsView;->P:Z

    .line 19
    .line 20
    if-nez v0, :cond_6

    .line 21
    .line 22
    iget-boolean v0, p0, Lcom/mycompany/app/wview/WebTtsView;->Q:Z

    .line 23
    .line 24
    if-eqz v0, :cond_2

    .line 25
    .line 26
    goto :goto_1

    .line 27
    :cond_2
    iget-object v0, p0, Lcom/mycompany/app/wview/WebTtsView;->B:Landroid/animation/ValueAnimator;

    .line 28
    .line 29
    if-eqz v0, :cond_3

    .line 30
    .line 31
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 32
    .line 33
    .line 34
    const/4 v0, 0x0

    .line 35
    iput-object v0, p0, Lcom/mycompany/app/wview/WebTtsView;->B:Landroid/animation/ValueAnimator;

    .line 36
    .line 37
    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->getAlpha()F

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    const/4 v2, 0x0

    .line 42
    cmpg-float v3, v0, v2

    .line 43
    .line 44
    if-gtz v3, :cond_4

    .line 45
    .line 46
    const/16 v0, 0x8

    .line 47
    .line 48
    invoke-direct {p0, v0}, Lcom/mycompany/app/wview/WebTtsView;->setOnlyVisibility(I)V

    .line 49
    .line 50
    .line 51
    return-void

    .line 52
    :cond_4
    iget-object v3, p0, Lcom/mycompany/app/wview/WebTtsView;->g:Lcom/mycompany/app/wview/WebFltView$FltViewListener;

    .line 53
    .line 54
    if-eqz v3, :cond_5

    .line 55
    .line 56
    invoke-interface {v3}, Lcom/mycompany/app/wview/WebFltView$FltViewListener;->b()V

    .line 57
    .line 58
    .line 59
    :cond_5
    iput v0, p0, Lcom/mycompany/app/wview/WebTtsView;->h0:F

    .line 60
    .line 61
    const/4 v3, 0x0

    .line 62
    iput-boolean v3, p0, Lcom/mycompany/app/wview/WebTtsView;->i0:Z

    .line 63
    .line 64
    const/4 v4, 0x2

    .line 65
    new-array v4, v4, [F

    .line 66
    .line 67
    aput v0, v4, v3

    .line 68
    .line 69
    aput v2, v4, v1

    .line 70
    .line 71
    invoke-static {v4}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    iput-object v1, p0, Lcom/mycompany/app/wview/WebTtsView;->C:Landroid/animation/ValueAnimator;

    .line 76
    .line 77
    const/high16 v2, 0x43c80000    # 400.0f

    .line 78
    .line 79
    mul-float/2addr v0, v2

    .line 80
    float-to-long v2, v0

    .line 81
    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 82
    .line 83
    .line 84
    iget-object v0, p0, Lcom/mycompany/app/wview/WebTtsView;->C:Landroid/animation/ValueAnimator;

    .line 85
    .line 86
    new-instance v1, Lcom/mycompany/app/wview/WebTtsView$15;

    .line 87
    .line 88
    invoke-direct {v1, p0}, Lcom/mycompany/app/wview/WebTtsView$15;-><init>(Lcom/mycompany/app/wview/WebTtsView;)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 92
    .line 93
    .line 94
    iget-object v0, p0, Lcom/mycompany/app/wview/WebTtsView;->C:Landroid/animation/ValueAnimator;

    .line 95
    .line 96
    new-instance v1, Lcom/mycompany/app/wview/WebTtsView$16;

    .line 97
    .line 98
    invoke-direct {v1, p0}, Lcom/mycompany/app/wview/WebTtsView$16;-><init>(Lcom/mycompany/app/wview/WebTtsView;)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 102
    .line 103
    .line 104
    iget-object v0, p0, Lcom/mycompany/app/wview/WebTtsView;->C:Landroid/animation/ValueAnimator;

    .line 105
    .line 106
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 107
    .line 108
    .line 109
    return-void

    .line 110
    :cond_6
    :goto_1
    iput-boolean v1, p0, Lcom/mycompany/app/wview/WebTtsView;->D:Z

    .line 111
    .line 112
    return-void
.end method

.method public final invalidate()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/mycompany/app/wview/WebTtsView;->c:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-super {p0}, Landroid/view/View;->invalidate()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final j()V
    .locals 8

    .line 1
    sget v0, Lcom/mycompany/app/pref/PrefEditor;->q:I

    .line 2
    .line 3
    sget v1, Lcom/mycompany/app/pref/PrefEditor;->p:F

    .line 4
    .line 5
    float-to-double v1, v1

    .line 6
    const-wide v3, 0x3feccccccccccccdL    # 0.9

    .line 7
    .line 8
    .line 9
    .line 10
    .line 11
    cmpl-double v1, v1, v3

    .line 12
    .line 13
    const/4 v2, 0x1

    .line 14
    const/4 v3, 0x0

    .line 15
    if-lez v1, :cond_0

    .line 16
    .line 17
    move v1, v2

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    move v1, v3

    .line 20
    :goto_0
    if-eqz v1, :cond_1

    .line 21
    .line 22
    sget-boolean v4, Lcom/mycompany/app/main/MainApp;->L1:Z

    .line 23
    .line 24
    if-eqz v4, :cond_1

    .line 25
    .line 26
    move v4, v2

    .line 27
    goto :goto_1

    .line 28
    :cond_1
    move v4, v3

    .line 29
    :goto_1
    iget v5, p0, Lcom/mycompany/app/wview/WebTtsView;->i:I

    .line 30
    .line 31
    const/4 v6, 0x0

    .line 32
    if-eq v5, v0, :cond_3

    .line 33
    .line 34
    iput v0, p0, Lcom/mycompany/app/wview/WebTtsView;->i:I

    .line 35
    .line 36
    if-eqz v0, :cond_2

    .line 37
    .line 38
    new-instance v5, Landroid/graphics/Paint;

    .line 39
    .line 40
    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    .line 41
    .line 42
    .line 43
    iput-object v5, p0, Lcom/mycompany/app/wview/WebTtsView;->k:Landroid/graphics/Paint;

    .line 44
    .line 45
    invoke-virtual {v5, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 46
    .line 47
    .line 48
    iget-object v5, p0, Lcom/mycompany/app/wview/WebTtsView;->k:Landroid/graphics/Paint;

    .line 49
    .line 50
    sget-object v7, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    .line 51
    .line 52
    invoke-virtual {v5, v7}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 53
    .line 54
    .line 55
    iget-object v5, p0, Lcom/mycompany/app/wview/WebTtsView;->k:Landroid/graphics/Paint;

    .line 56
    .line 57
    iget v7, p0, Lcom/mycompany/app/wview/WebTtsView;->i:I

    .line 58
    .line 59
    invoke-virtual {v5, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 60
    .line 61
    .line 62
    iget-object v5, p0, Lcom/mycompany/app/wview/WebTtsView;->k:Landroid/graphics/Paint;

    .line 63
    .line 64
    invoke-virtual {v5}, Landroid/graphics/Paint;->getAlpha()I

    .line 65
    .line 66
    .line 67
    move-result v5

    .line 68
    iput v5, p0, Lcom/mycompany/app/wview/WebTtsView;->j:I

    .line 69
    .line 70
    goto :goto_2

    .line 71
    :cond_2
    iput-object v6, p0, Lcom/mycompany/app/wview/WebTtsView;->k:Landroid/graphics/Paint;

    .line 72
    .line 73
    :goto_2
    move v5, v2

    .line 74
    goto :goto_3

    .line 75
    :cond_3
    move v5, v3

    .line 76
    :goto_3
    iget v7, p0, Lcom/mycompany/app/wview/WebTtsView;->m:I

    .line 77
    .line 78
    if-eq v7, v0, :cond_5

    .line 79
    .line 80
    iput v0, p0, Lcom/mycompany/app/wview/WebTtsView;->m:I

    .line 81
    .line 82
    if-eqz v0, :cond_4

    .line 83
    .line 84
    new-instance v0, Landroid/graphics/Paint;

    .line 85
    .line 86
    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 87
    .line 88
    .line 89
    iput-object v0, p0, Lcom/mycompany/app/wview/WebTtsView;->o:Landroid/graphics/Paint;

    .line 90
    .line 91
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 92
    .line 93
    .line 94
    iget-object v0, p0, Lcom/mycompany/app/wview/WebTtsView;->o:Landroid/graphics/Paint;

    .line 95
    .line 96
    sget-object v5, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    .line 97
    .line 98
    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 99
    .line 100
    .line 101
    iget-object v0, p0, Lcom/mycompany/app/wview/WebTtsView;->o:Landroid/graphics/Paint;

    .line 102
    .line 103
    iget v5, p0, Lcom/mycompany/app/wview/WebTtsView;->m:I

    .line 104
    .line 105
    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 106
    .line 107
    .line 108
    iget-object v0, p0, Lcom/mycompany/app/wview/WebTtsView;->o:Landroid/graphics/Paint;

    .line 109
    .line 110
    invoke-virtual {v0}, Landroid/graphics/Paint;->getAlpha()I

    .line 111
    .line 112
    .line 113
    move-result v0

    .line 114
    iput v0, p0, Lcom/mycompany/app/wview/WebTtsView;->n:I

    .line 115
    .line 116
    goto :goto_4

    .line 117
    :cond_4
    iput-object v6, p0, Lcom/mycompany/app/wview/WebTtsView;->o:Landroid/graphics/Paint;

    .line 118
    .line 119
    :goto_4
    move v5, v2

    .line 120
    :cond_5
    if-eqz v1, :cond_6

    .line 121
    .line 122
    const v3, -0x3f8a8a8b

    .line 123
    .line 124
    .line 125
    :cond_6
    iget v0, p0, Lcom/mycompany/app/wview/WebTtsView;->s:I

    .line 126
    .line 127
    if-eq v0, v3, :cond_8

    .line 128
    .line 129
    iput v3, p0, Lcom/mycompany/app/wview/WebTtsView;->s:I

    .line 130
    .line 131
    if-eqz v3, :cond_7

    .line 132
    .line 133
    new-instance v0, Landroid/graphics/Paint;

    .line 134
    .line 135
    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 136
    .line 137
    .line 138
    iput-object v0, p0, Lcom/mycompany/app/wview/WebTtsView;->t:Landroid/graphics/Paint;

    .line 139
    .line 140
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 141
    .line 142
    .line 143
    iget-object v0, p0, Lcom/mycompany/app/wview/WebTtsView;->t:Landroid/graphics/Paint;

    .line 144
    .line 145
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    .line 146
    .line 147
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 148
    .line 149
    .line 150
    iget-object v0, p0, Lcom/mycompany/app/wview/WebTtsView;->t:Landroid/graphics/Paint;

    .line 151
    .line 152
    sget v1, Lcom/mycompany/app/main/MainApp;->n1:I

    .line 153
    .line 154
    int-to-float v1, v1

    .line 155
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 156
    .line 157
    .line 158
    iget-object v0, p0, Lcom/mycompany/app/wview/WebTtsView;->t:Landroid/graphics/Paint;

    .line 159
    .line 160
    iget v1, p0, Lcom/mycompany/app/wview/WebTtsView;->s:I

    .line 161
    .line 162
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 163
    .line 164
    .line 165
    goto :goto_5

    .line 166
    :cond_7
    iput-object v6, p0, Lcom/mycompany/app/wview/WebTtsView;->t:Landroid/graphics/Paint;

    .line 167
    .line 168
    :goto_5
    move v5, v2

    .line 169
    :cond_8
    iget-object v0, p0, Lcom/mycompany/app/wview/WebTtsView;->y:Lcom/mycompany/app/view/MyProgressDrawable;

    .line 170
    .line 171
    if-eqz v0, :cond_a

    .line 172
    .line 173
    if-eqz v4, :cond_9

    .line 174
    .line 175
    const/16 v1, 0xb0

    .line 176
    .line 177
    goto :goto_6

    .line 178
    :cond_9
    const/16 v1, 0xff

    .line 179
    .line 180
    :goto_6
    iget v3, p0, Lcom/mycompany/app/wview/WebTtsView;->x:I

    .line 181
    .line 182
    if-eq v3, v1, :cond_a

    .line 183
    .line 184
    iput v1, p0, Lcom/mycompany/app/wview/WebTtsView;->x:I

    .line 185
    .line 186
    invoke-virtual {v0, v1}, Lcom/mycompany/app/view/MyProgressDrawable;->c(I)V

    .line 187
    .line 188
    .line 189
    goto :goto_7

    .line 190
    :cond_a
    move v2, v5

    .line 191
    :goto_7
    if-eqz v2, :cond_b

    .line 192
    .line 193
    invoke-virtual {p0}, Lcom/mycompany/app/wview/WebTtsView;->invalidate()V

    .line 194
    .line 195
    .line 196
    :cond_b
    return-void
.end method

.method public final k()V
    .locals 5

    .line 1
    iget v0, p0, Lcom/mycompany/app/wview/WebTtsView;->R:I

    .line 2
    .line 3
    const/16 v1, -0x4d2

    .line 4
    .line 5
    if-ne v0, v1, :cond_0

    .line 6
    .line 7
    iget v2, p0, Lcom/mycompany/app/wview/WebTtsView;->S:I

    .line 8
    .line 9
    if-ne v2, v1, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iget v2, p0, Lcom/mycompany/app/wview/WebTtsView;->F:I

    .line 13
    .line 14
    int-to-float v2, v2

    .line 15
    int-to-float v0, v0

    .line 16
    iget v3, p0, Lcom/mycompany/app/wview/WebTtsView;->G:I

    .line 17
    .line 18
    int-to-float v3, v3

    .line 19
    iget v4, p0, Lcom/mycompany/app/wview/WebTtsView;->S:I

    .line 20
    .line 21
    int-to-float v4, v4

    .line 22
    invoke-static {v2, v0, v3, v4}, Lcom/mycompany/app/main/MainUtil;->I0(FFFF)F

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    sget v2, Lcom/mycompany/app/main/MainApp;->G1:I

    .line 27
    .line 28
    int-to-float v2, v2

    .line 29
    cmpg-float v0, v0, v2

    .line 30
    .line 31
    if-gez v0, :cond_1

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_1
    iput v1, p0, Lcom/mycompany/app/wview/WebTtsView;->R:I

    .line 35
    .line 36
    iput v1, p0, Lcom/mycompany/app/wview/WebTtsView;->S:I

    .line 37
    .line 38
    iget-object v0, p0, Lcom/mycompany/app/wview/WebTtsView;->g:Lcom/mycompany/app/wview/WebFltView$FltViewListener;

    .line 39
    .line 40
    if-eqz v0, :cond_2

    .line 41
    .line 42
    invoke-interface {v0}, Lcom/mycompany/app/wview/WebFltView$FltViewListener;->b()V

    .line 43
    .line 44
    .line 45
    :cond_2
    :goto_0
    return-void
.end method

.method public final l(II)V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lcom/mycompany/app/wview/WebTtsView;->c:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget v0, p0, Lcom/mycompany/app/wview/WebTtsView;->J:I

    .line 7
    .line 8
    add-int v1, p1, v0

    .line 9
    .line 10
    iget v2, p0, Lcom/mycompany/app/wview/WebTtsView;->N:I

    .line 11
    .line 12
    if-le v1, v2, :cond_1

    .line 13
    .line 14
    sub-int p1, v2, v0

    .line 15
    .line 16
    :cond_1
    iget v1, p0, Lcom/mycompany/app/wview/WebTtsView;->K:I

    .line 17
    .line 18
    add-int v3, p2, v1

    .line 19
    .line 20
    iget v4, p0, Lcom/mycompany/app/wview/WebTtsView;->O:I

    .line 21
    .line 22
    if-le v3, v4, :cond_2

    .line 23
    .line 24
    sub-int p2, v4, v1

    .line 25
    .line 26
    :cond_2
    const/4 v3, 0x0

    .line 27
    if-gez p1, :cond_3

    .line 28
    .line 29
    move p1, v3

    .line 30
    :cond_3
    if-gez p2, :cond_4

    .line 31
    .line 32
    move p2, v3

    .line 33
    :cond_4
    int-to-float v3, p1

    .line 34
    sput v3, Lcom/mycompany/app/pref/PrefTts;->o:F

    .line 35
    .line 36
    add-int/2addr v0, p1

    .line 37
    sub-int/2addr v2, v0

    .line 38
    int-to-float v0, v2

    .line 39
    sput v0, Lcom/mycompany/app/pref/PrefTts;->p:F

    .line 40
    .line 41
    int-to-float v0, p2

    .line 42
    sput v0, Lcom/mycompany/app/pref/PrefTts;->q:F

    .line 43
    .line 44
    add-int/2addr v1, p2

    .line 45
    sub-int/2addr v4, v1

    .line 46
    int-to-float v0, v4

    .line 47
    sput v0, Lcom/mycompany/app/pref/PrefTts;->r:F

    .line 48
    .line 49
    iget v0, p0, Lcom/mycompany/app/wview/WebTtsView;->L:I

    .line 50
    .line 51
    add-int/2addr p1, v0

    .line 52
    int-to-float p1, p1

    .line 53
    invoke-virtual {p0, p1}, Landroid/view/View;->setX(F)V

    .line 54
    .line 55
    .line 56
    iget p1, p0, Lcom/mycompany/app/wview/WebTtsView;->M:I

    .line 57
    .line 58
    add-int/2addr p2, p1

    .line 59
    int-to-float p1, p2

    .line 60
    invoke-virtual {p0, p1}, Landroid/view/View;->setY(F)V

    .line 61
    .line 62
    .line 63
    return-void
.end method

.method public final layout(IIII)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->layout(IIII)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/mycompany/app/wview/WebTtsView;->m()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public final m()V
    .locals 8

    .line 1
    iget-boolean v0, p0, Lcom/mycompany/app/wview/WebTtsView;->c:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto/16 :goto_1

    .line 6
    .line 7
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-eqz v0, :cond_6

    .line 12
    .line 13
    instance-of v1, v0, Landroid/view/View;

    .line 14
    .line 15
    if-nez v1, :cond_1

    .line 16
    .line 17
    goto/16 :goto_1

    .line 18
    .line 19
    :cond_1
    check-cast v0, Landroid/view/View;

    .line 20
    .line 21
    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    .line 30
    .line 31
    .line 32
    move-result v3

    .line 33
    sub-int/2addr v3, v1

    .line 34
    invoke-virtual {v0}, Landroid/view/View;->getPaddingRight()I

    .line 35
    .line 36
    .line 37
    move-result v4

    .line 38
    sub-int/2addr v3, v4

    .line 39
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    .line 40
    .line 41
    .line 42
    move-result v4

    .line 43
    sub-int/2addr v4, v2

    .line 44
    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    sub-int/2addr v4, v0

    .line 49
    iget v0, p0, Lcom/mycompany/app/wview/WebTtsView;->L:I

    .line 50
    .line 51
    if-ne v1, v0, :cond_2

    .line 52
    .line 53
    iget v0, p0, Lcom/mycompany/app/wview/WebTtsView;->M:I

    .line 54
    .line 55
    if-ne v2, v0, :cond_2

    .line 56
    .line 57
    iget v0, p0, Lcom/mycompany/app/wview/WebTtsView;->N:I

    .line 58
    .line 59
    if-ne v3, v0, :cond_2

    .line 60
    .line 61
    iget v0, p0, Lcom/mycompany/app/wview/WebTtsView;->O:I

    .line 62
    .line 63
    if-ne v4, v0, :cond_2

    .line 64
    .line 65
    goto :goto_1

    .line 66
    :cond_2
    iput v1, p0, Lcom/mycompany/app/wview/WebTtsView;->L:I

    .line 67
    .line 68
    iput v2, p0, Lcom/mycompany/app/wview/WebTtsView;->M:I

    .line 69
    .line 70
    iput v3, p0, Lcom/mycompany/app/wview/WebTtsView;->N:I

    .line 71
    .line 72
    iput v4, p0, Lcom/mycompany/app/wview/WebTtsView;->O:I

    .line 73
    .line 74
    sget v0, Lcom/mycompany/app/pref/PrefTts;->o:F

    .line 75
    .line 76
    sget v1, Lcom/mycompany/app/pref/PrefTts;->p:F

    .line 77
    .line 78
    sget v2, Lcom/mycompany/app/pref/PrefTts;->q:F

    .line 79
    .line 80
    sget v5, Lcom/mycompany/app/pref/PrefTts;->r:F

    .line 81
    .line 82
    const/4 v6, 0x0

    .line 83
    cmpg-float v7, v0, v6

    .line 84
    .line 85
    if-gez v7, :cond_3

    .line 86
    .line 87
    cmpg-float v7, v1, v6

    .line 88
    .line 89
    if-gez v7, :cond_3

    .line 90
    .line 91
    cmpg-float v7, v2, v6

    .line 92
    .line 93
    if-gez v7, :cond_3

    .line 94
    .line 95
    cmpg-float v6, v5, v6

    .line 96
    .line 97
    if-gez v6, :cond_3

    .line 98
    .line 99
    iget v6, p0, Lcom/mycompany/app/wview/WebTtsView;->J:I

    .line 100
    .line 101
    sub-int v6, v3, v6

    .line 102
    .line 103
    div-int/lit8 v6, v6, 0x2

    .line 104
    .line 105
    iget v7, p0, Lcom/mycompany/app/wview/WebTtsView;->K:I

    .line 106
    .line 107
    sub-int v7, v4, v7

    .line 108
    .line 109
    div-int/lit8 v7, v7, 0x2

    .line 110
    .line 111
    if-ge v3, v4, :cond_4

    .line 112
    .line 113
    sget v3, Lcom/mycompany/app/main/MainApp;->i1:I

    .line 114
    .line 115
    add-int/2addr v7, v3

    .line 116
    goto :goto_0

    .line 117
    :cond_3
    iget v4, p0, Lcom/mycompany/app/wview/WebTtsView;->J:I

    .line 118
    .line 119
    sub-int/2addr v3, v4

    .line 120
    int-to-float v3, v3

    .line 121
    invoke-static {v0, v1, v3, v0}, Lcom/mycompany/app/dialog/a;->a(FFFF)I

    .line 122
    .line 123
    .line 124
    move-result v6

    .line 125
    iget v3, p0, Lcom/mycompany/app/wview/WebTtsView;->O:I

    .line 126
    .line 127
    iget v4, p0, Lcom/mycompany/app/wview/WebTtsView;->K:I

    .line 128
    .line 129
    sub-int/2addr v3, v4

    .line 130
    int-to-float v3, v3

    .line 131
    sget v4, Lcom/mycompany/app/pref/PrefTts;->q:F

    .line 132
    .line 133
    sget v7, Lcom/mycompany/app/pref/PrefTts;->r:F

    .line 134
    .line 135
    invoke-static {v4, v7, v3, v4}, Lcom/mycompany/app/dialog/a;->a(FFFF)I

    .line 136
    .line 137
    .line 138
    move-result v7

    .line 139
    :cond_4
    :goto_0
    invoke-virtual {p0, v6, v7}, Lcom/mycompany/app/wview/WebTtsView;->l(II)V

    .line 140
    .line 141
    .line 142
    sget v3, Lcom/mycompany/app/pref/PrefTts;->o:F

    .line 143
    .line 144
    invoke-static {v0, v3}, Ljava/lang/Float;->compare(FF)I

    .line 145
    .line 146
    .line 147
    move-result v0

    .line 148
    if-nez v0, :cond_5

    .line 149
    .line 150
    sget v0, Lcom/mycompany/app/pref/PrefTts;->p:F

    .line 151
    .line 152
    invoke-static {v1, v0}, Ljava/lang/Float;->compare(FF)I

    .line 153
    .line 154
    .line 155
    move-result v0

    .line 156
    if-nez v0, :cond_5

    .line 157
    .line 158
    sget v0, Lcom/mycompany/app/pref/PrefTts;->q:F

    .line 159
    .line 160
    invoke-static {v2, v0}, Ljava/lang/Float;->compare(FF)I

    .line 161
    .line 162
    .line 163
    move-result v0

    .line 164
    if-nez v0, :cond_5

    .line 165
    .line 166
    sget v0, Lcom/mycompany/app/pref/PrefTts;->r:F

    .line 167
    .line 168
    invoke-static {v5, v0}, Ljava/lang/Float;->compare(FF)I

    .line 169
    .line 170
    .line 171
    move-result v0

    .line 172
    if-eqz v0, :cond_6

    .line 173
    .line 174
    :cond_5
    iget-object v0, p0, Lcom/mycompany/app/wview/WebTtsView;->f:Landroid/content/Context;

    .line 175
    .line 176
    invoke-static {v0}, Lcom/mycompany/app/pref/PrefTts;->t(Landroid/content/Context;)V

    .line 177
    .line 178
    .line 179
    :cond_6
    :goto_1
    return-void
.end method

.method public final n(Z)V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/mycompany/app/wview/WebTtsView;->D:Z

    .line 3
    .line 4
    invoke-direct {p0, p1}, Lcom/mycompany/app/wview/WebTtsView;->setLoad(Z)V

    .line 5
    .line 6
    .line 7
    iget-object p1, p0, Lcom/mycompany/app/wview/WebTtsView;->B:Landroid/animation/ValueAnimator;

    .line 8
    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    if-nez p1, :cond_1

    .line 17
    .line 18
    iget-object p1, p0, Lcom/mycompany/app/wview/WebTtsView;->C:Landroid/animation/ValueAnimator;

    .line 19
    .line 20
    if-nez p1, :cond_1

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_1
    iget-object p1, p0, Lcom/mycompany/app/wview/WebTtsView;->C:Landroid/animation/ValueAnimator;

    .line 24
    .line 25
    if-eqz p1, :cond_2

    .line 26
    .line 27
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 28
    .line 29
    .line 30
    const/4 p1, 0x0

    .line 31
    iput-object p1, p0, Lcom/mycompany/app/wview/WebTtsView;->C:Landroid/animation/ValueAnimator;

    .line 32
    .line 33
    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    .line 34
    .line 35
    .line 36
    move-result p1

    .line 37
    const/high16 v1, 0x3f800000    # 1.0f

    .line 38
    .line 39
    if-nez p1, :cond_3

    .line 40
    .line 41
    invoke-virtual {p0}, Landroid/view/View;->getAlpha()F

    .line 42
    .line 43
    .line 44
    move-result p1

    .line 45
    cmpl-float v2, p1, v1

    .line 46
    .line 47
    if-ltz v2, :cond_4

    .line 48
    .line 49
    :goto_0
    return-void

    .line 50
    :cond_3
    const/4 p1, 0x0

    .line 51
    :cond_4
    iput p1, p0, Lcom/mycompany/app/wview/WebTtsView;->e0:F

    .line 52
    .line 53
    iput-boolean v0, p0, Lcom/mycompany/app/wview/WebTtsView;->f0:Z

    .line 54
    .line 55
    const/4 v2, 0x2

    .line 56
    new-array v2, v2, [F

    .line 57
    .line 58
    aput p1, v2, v0

    .line 59
    .line 60
    const/4 v0, 0x1

    .line 61
    aput v1, v2, v0

    .line 62
    .line 63
    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    iput-object v0, p0, Lcom/mycompany/app/wview/WebTtsView;->B:Landroid/animation/ValueAnimator;

    .line 68
    .line 69
    sub-float/2addr v1, p1

    .line 70
    const/high16 p1, 0x43c80000    # 400.0f

    .line 71
    .line 72
    mul-float/2addr v1, p1

    .line 73
    float-to-long v1, v1

    .line 74
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 75
    .line 76
    .line 77
    iget-object p1, p0, Lcom/mycompany/app/wview/WebTtsView;->B:Landroid/animation/ValueAnimator;

    .line 78
    .line 79
    new-instance v0, Lcom/mycompany/app/wview/WebTtsView$11;

    .line 80
    .line 81
    invoke-direct {v0, p0}, Lcom/mycompany/app/wview/WebTtsView$11;-><init>(Lcom/mycompany/app/wview/WebTtsView;)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 85
    .line 86
    .line 87
    iget-object p1, p0, Lcom/mycompany/app/wview/WebTtsView;->B:Landroid/animation/ValueAnimator;

    .line 88
    .line 89
    new-instance v0, Lcom/mycompany/app/wview/WebTtsView$12;

    .line 90
    .line 91
    invoke-direct {v0, p0}, Lcom/mycompany/app/wview/WebTtsView$12;-><init>(Lcom/mycompany/app/wview/WebTtsView;)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {p1, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 95
    .line 96
    .line 97
    iget-object p1, p0, Lcom/mycompany/app/wview/WebTtsView;->B:Landroid/animation/ValueAnimator;

    .line 98
    .line 99
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    .line 100
    .line 101
    .line 102
    return-void
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/mycompany/app/wview/WebTtsView;->m()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public final onDetachedFromWindow()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/mycompany/app/wview/WebTtsView;->f()V

    .line 2
    .line 3
    .line 4
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 8

    .line 1
    iget-boolean v0, p0, Lcom/mycompany/app/wview/WebTtsView;->c:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto/16 :goto_5

    .line 6
    .line 7
    :cond_0
    iget-boolean v0, p0, Lcom/mycompany/app/wview/WebTtsView;->E:Z

    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    const/4 v2, 0x0

    .line 11
    if-nez v0, :cond_2

    .line 12
    .line 13
    iget-object v0, p0, Lcom/mycompany/app/wview/WebTtsView;->p:Landroid/animation/ValueAnimator;

    .line 14
    .line 15
    if-nez v0, :cond_2

    .line 16
    .line 17
    iget-object v0, p0, Lcom/mycompany/app/wview/WebTtsView;->q:Landroid/animation/ValueAnimator;

    .line 18
    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_1
    move v0, v2

    .line 23
    goto :goto_1

    .line 24
    :cond_2
    :goto_0
    move v0, v1

    .line 25
    :goto_1
    iget-object v3, p0, Lcom/mycompany/app/wview/WebTtsView;->k:Landroid/graphics/Paint;

    .line 26
    .line 27
    const/high16 v4, 0x40a00000    # 5.0f

    .line 28
    .line 29
    if-eqz v3, :cond_5

    .line 30
    .line 31
    if-eqz v0, :cond_4

    .line 32
    .line 33
    iget v3, p0, Lcom/mycompany/app/wview/WebTtsView;->j:I

    .line 34
    .line 35
    int-to-float v3, v3

    .line 36
    const/high16 v5, 0x3f800000    # 1.0f

    .line 37
    .line 38
    iget v6, p0, Lcom/mycompany/app/wview/WebTtsView;->r:F

    .line 39
    .line 40
    sub-float/2addr v5, v6

    .line 41
    mul-float/2addr v5, v3

    .line 42
    mul-float/2addr v5, v4

    .line 43
    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    .line 44
    .line 45
    .line 46
    move-result v3

    .line 47
    iget v5, p0, Lcom/mycompany/app/wview/WebTtsView;->j:I

    .line 48
    .line 49
    if-le v3, v5, :cond_3

    .line 50
    .line 51
    move v3, v5

    .line 52
    :cond_3
    iget-object v5, p0, Lcom/mycompany/app/wview/WebTtsView;->k:Landroid/graphics/Paint;

    .line 53
    .line 54
    invoke-virtual {v5, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 55
    .line 56
    .line 57
    goto :goto_2

    .line 58
    :cond_4
    iget v5, p0, Lcom/mycompany/app/wview/WebTtsView;->j:I

    .line 59
    .line 60
    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 61
    .line 62
    .line 63
    :goto_2
    iget v3, p0, Lcom/mycompany/app/wview/WebTtsView;->h:I

    .line 64
    .line 65
    int-to-float v3, v3

    .line 66
    iget-object v5, p0, Lcom/mycompany/app/wview/WebTtsView;->k:Landroid/graphics/Paint;

    .line 67
    .line 68
    iget v6, p0, Lcom/mycompany/app/wview/WebTtsView;->u:F

    .line 69
    .line 70
    iget v7, p0, Lcom/mycompany/app/wview/WebTtsView;->v:F

    .line 71
    .line 72
    invoke-virtual {p1, v6, v7, v3, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 73
    .line 74
    .line 75
    :cond_5
    if-eqz v0, :cond_6

    .line 76
    .line 77
    iget-object v0, p0, Lcom/mycompany/app/wview/WebTtsView;->o:Landroid/graphics/Paint;

    .line 78
    .line 79
    if-eqz v0, :cond_6

    .line 80
    .line 81
    iget v2, p0, Lcom/mycompany/app/wview/WebTtsView;->n:I

    .line 82
    .line 83
    int-to-float v2, v2

    .line 84
    iget v3, p0, Lcom/mycompany/app/wview/WebTtsView;->r:F

    .line 85
    .line 86
    const v5, 0x3f4ccccd    # 0.8f

    .line 87
    .line 88
    .line 89
    sub-float/2addr v3, v5

    .line 90
    mul-float/2addr v3, v2

    .line 91
    mul-float/2addr v3, v4

    .line 92
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    .line 93
    .line 94
    .line 95
    move-result v2

    .line 96
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 100
    .line 101
    .line 102
    iget v0, p0, Lcom/mycompany/app/wview/WebTtsView;->r:F

    .line 103
    .line 104
    iget v2, p0, Lcom/mycompany/app/wview/WebTtsView;->u:F

    .line 105
    .line 106
    iget v3, p0, Lcom/mycompany/app/wview/WebTtsView;->v:F

    .line 107
    .line 108
    invoke-virtual {p1, v0, v0, v2, v3}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 109
    .line 110
    .line 111
    iget v0, p0, Lcom/mycompany/app/wview/WebTtsView;->l:I

    .line 112
    .line 113
    int-to-float v0, v0

    .line 114
    iget-object v2, p0, Lcom/mycompany/app/wview/WebTtsView;->o:Landroid/graphics/Paint;

    .line 115
    .line 116
    iget v3, p0, Lcom/mycompany/app/wview/WebTtsView;->u:F

    .line 117
    .line 118
    iget v4, p0, Lcom/mycompany/app/wview/WebTtsView;->v:F

    .line 119
    .line 120
    invoke-virtual {p1, v3, v4, v0, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 121
    .line 122
    .line 123
    goto :goto_3

    .line 124
    :cond_6
    move v1, v2

    .line 125
    :goto_3
    iget-object v0, p0, Lcom/mycompany/app/wview/WebTtsView;->t:Landroid/graphics/Paint;

    .line 126
    .line 127
    if-eqz v0, :cond_8

    .line 128
    .line 129
    sget v2, Lcom/mycompany/app/main/MainApp;->n1:I

    .line 130
    .line 131
    int-to-float v2, v2

    .line 132
    const/high16 v3, 0x40000000    # 2.0f

    .line 133
    .line 134
    div-float/2addr v2, v3

    .line 135
    if-eqz v1, :cond_7

    .line 136
    .line 137
    iget v3, p0, Lcom/mycompany/app/wview/WebTtsView;->l:I

    .line 138
    .line 139
    goto :goto_4

    .line 140
    :cond_7
    iget v3, p0, Lcom/mycompany/app/wview/WebTtsView;->h:I

    .line 141
    .line 142
    :goto_4
    int-to-float v3, v3

    .line 143
    sub-float/2addr v3, v2

    .line 144
    iget v2, p0, Lcom/mycompany/app/wview/WebTtsView;->u:F

    .line 145
    .line 146
    iget v4, p0, Lcom/mycompany/app/wview/WebTtsView;->v:F

    .line 147
    .line 148
    invoke-virtual {p1, v2, v4, v3, v0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 149
    .line 150
    .line 151
    :cond_8
    if-eqz v1, :cond_9

    .line 152
    .line 153
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 154
    .line 155
    .line 156
    :cond_9
    iget-boolean v0, p0, Lcom/mycompany/app/wview/WebTtsView;->w:Z

    .line 157
    .line 158
    if-eqz v0, :cond_a

    .line 159
    .line 160
    iget-object v0, p0, Lcom/mycompany/app/wview/WebTtsView;->y:Lcom/mycompany/app/view/MyProgressDrawable;

    .line 161
    .line 162
    if-eqz v0, :cond_b

    .line 163
    .line 164
    invoke-virtual {v0, p1}, Lcom/mycompany/app/view/MyProgressDrawable;->a(Landroid/graphics/Canvas;)V

    .line 165
    .line 166
    .line 167
    return-void

    .line 168
    :cond_a
    iget-object v0, p0, Lcom/mycompany/app/wview/WebTtsView;->z:Landroid/graphics/RectF;

    .line 169
    .line 170
    if-eqz v0, :cond_b

    .line 171
    .line 172
    iget-object v1, p0, Lcom/mycompany/app/wview/WebTtsView;->A:Landroid/graphics/Paint;

    .line 173
    .line 174
    if-eqz v1, :cond_b

    .line 175
    .line 176
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 177
    .line 178
    .line 179
    :cond_b
    :goto_5
    return-void
.end method

.method public final onLayout(ZIIII)V
    .locals 2

    .line 1
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    .line 2
    .line 3
    .line 4
    move v0, p5

    .line 5
    move p5, p4

    .line 6
    move p4, p3

    .line 7
    move p3, p2

    .line 8
    move p2, p1

    .line 9
    move-object p1, p0

    .line 10
    invoke-virtual {p0}, Lcom/mycompany/app/wview/WebTtsView;->m()V

    .line 11
    .line 12
    .line 13
    if-eqz p2, :cond_2

    .line 14
    .line 15
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 16
    .line 17
    const/16 v1, 0x1d

    .line 18
    .line 19
    if-ge p2, v1, :cond_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    iget-object p2, p1, Lcom/mycompany/app/wview/WebTtsView;->T:Landroid/graphics/Rect;

    .line 23
    .line 24
    if-eqz p2, :cond_2

    .line 25
    .line 26
    iget-object v1, p1, Lcom/mycompany/app/wview/WebTtsView;->U:Ljava/util/ArrayList;

    .line 27
    .line 28
    if-nez v1, :cond_1

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    sub-int p3, p5, p3

    .line 32
    .line 33
    sub-int p5, v0, p4

    .line 34
    .line 35
    const/4 p4, 0x0

    .line 36
    :try_start_0
    invoke-virtual {p2, p4, p4, p3, p5}, Landroid/graphics/Rect;->set(IIII)V

    .line 37
    .line 38
    .line 39
    iget-object p2, p1, Lcom/mycompany/app/wview/WebTtsView;->U:Ljava/util/ArrayList;

    .line 40
    .line 41
    invoke-virtual {p0, p2}, Landroid/view/View;->setSystemGestureExclusionRects(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    .line 43
    .line 44
    :catch_0
    :cond_2
    :goto_0
    return-void
.end method

.method public final onSizeChanged(IIII)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/mycompany/app/wview/WebTtsView;->m()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    .line 1
    iget-boolean v0, p0, Lcom/mycompany/app/wview/WebTtsView;->c:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    return p1

    .line 10
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    const/4 v1, 0x2

    .line 15
    const/4 v2, 0x1

    .line 16
    const/4 v3, 0x0

    .line 17
    if-eqz v0, :cond_d

    .line 18
    .line 19
    if-eq v0, v2, :cond_9

    .line 20
    .line 21
    if-eq v0, v1, :cond_1

    .line 22
    .line 23
    const/4 v1, 0x3

    .line 24
    if-eq v0, v1, :cond_a

    .line 25
    .line 26
    goto/16 :goto_0

    .line 27
    .line 28
    :cond_1
    iget-boolean v0, p0, Lcom/mycompany/app/wview/WebTtsView;->E:Z

    .line 29
    .line 30
    if-nez v0, :cond_2

    .line 31
    .line 32
    invoke-virtual {p0}, Lcom/mycompany/app/wview/WebTtsView;->g()V

    .line 33
    .line 34
    .line 35
    iput-boolean v3, p0, Lcom/mycompany/app/wview/WebTtsView;->Q:Z

    .line 36
    .line 37
    goto/16 :goto_0

    .line 38
    .line 39
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    sget-boolean v4, Lcom/mycompany/app/pref/PrefZtri;->t0:Z

    .line 48
    .line 49
    const/high16 v5, 0x40000000    # 2.0f

    .line 50
    .line 51
    if-eqz v4, :cond_5

    .line 52
    .line 53
    iget-boolean v2, p0, Lcom/mycompany/app/wview/WebTtsView;->Q:Z

    .line 54
    .line 55
    if-eqz v2, :cond_4

    .line 56
    .line 57
    iget v2, p0, Lcom/mycompany/app/wview/WebTtsView;->F:I

    .line 58
    .line 59
    int-to-float v2, v2

    .line 60
    iget v3, p0, Lcom/mycompany/app/wview/WebTtsView;->G:I

    .line 61
    .line 62
    int-to-float v3, v3

    .line 63
    invoke-static {v2, v0, v3, v1}, Lcom/mycompany/app/main/MainUtil;->I0(FFFF)F

    .line 64
    .line 65
    .line 66
    move-result v2

    .line 67
    sget v3, Lcom/mycompany/app/main/MainApp;->G1:I

    .line 68
    .line 69
    int-to-float v3, v3

    .line 70
    div-float/2addr v3, v5

    .line 71
    cmpg-float v2, v2, v3

    .line 72
    .line 73
    if-gez v2, :cond_3

    .line 74
    .line 75
    goto/16 :goto_0

    .line 76
    .line 77
    :cond_3
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    .line 78
    .line 79
    .line 80
    move-result v0

    .line 81
    iput v0, p0, Lcom/mycompany/app/wview/WebTtsView;->F:I

    .line 82
    .line 83
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    .line 84
    .line 85
    .line 86
    move-result v0

    .line 87
    iput v0, p0, Lcom/mycompany/app/wview/WebTtsView;->G:I

    .line 88
    .line 89
    iget v1, p0, Lcom/mycompany/app/wview/WebTtsView;->F:I

    .line 90
    .line 91
    iget v2, p0, Lcom/mycompany/app/wview/WebTtsView;->H:I

    .line 92
    .line 93
    add-int/2addr v1, v2

    .line 94
    iget v2, p0, Lcom/mycompany/app/wview/WebTtsView;->I:I

    .line 95
    .line 96
    add-int/2addr v0, v2

    .line 97
    invoke-virtual {p0, v1, v0}, Lcom/mycompany/app/wview/WebTtsView;->l(II)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {p0}, Lcom/mycompany/app/wview/WebTtsView;->k()V

    .line 101
    .line 102
    .line 103
    goto/16 :goto_0

    .line 104
    .line 105
    :cond_4
    iget-boolean v2, p0, Lcom/mycompany/app/wview/WebTtsView;->P:Z

    .line 106
    .line 107
    if-eqz v2, :cond_11

    .line 108
    .line 109
    float-to-int v0, v0

    .line 110
    float-to-int v1, v1

    .line 111
    sget v2, Lcom/mycompany/app/main/MainApp;->C1:I

    .line 112
    .line 113
    invoke-static {v0, v1, v2, p0}, Lcom/mycompany/app/main/MainUtil;->J5(IIILandroid/view/View;)Z

    .line 114
    .line 115
    .line 116
    move-result v0

    .line 117
    if-nez v0, :cond_11

    .line 118
    .line 119
    iput-boolean v3, p0, Lcom/mycompany/app/wview/WebTtsView;->E:Z

    .line 120
    .line 121
    invoke-virtual {p0}, Lcom/mycompany/app/wview/WebTtsView;->g()V

    .line 122
    .line 123
    .line 124
    iput-boolean v3, p0, Lcom/mycompany/app/wview/WebTtsView;->Q:Z

    .line 125
    .line 126
    goto/16 :goto_0

    .line 127
    .line 128
    :cond_5
    iget v3, p0, Lcom/mycompany/app/wview/WebTtsView;->F:I

    .line 129
    .line 130
    int-to-float v3, v3

    .line 131
    iget v4, p0, Lcom/mycompany/app/wview/WebTtsView;->G:I

    .line 132
    .line 133
    int-to-float v4, v4

    .line 134
    invoke-static {v3, v0, v4, v1}, Lcom/mycompany/app/main/MainUtil;->I0(FFFF)F

    .line 135
    .line 136
    .line 137
    move-result v3

    .line 138
    iget-boolean v4, p0, Lcom/mycompany/app/wview/WebTtsView;->Q:Z

    .line 139
    .line 140
    if-nez v4, :cond_7

    .line 141
    .line 142
    sget v4, Lcom/mycompany/app/main/MainApp;->G1:I

    .line 143
    .line 144
    int-to-float v4, v4

    .line 145
    cmpg-float v4, v3, v4

    .line 146
    .line 147
    if-gez v4, :cond_6

    .line 148
    .line 149
    goto/16 :goto_0

    .line 150
    .line 151
    :cond_6
    iput-boolean v2, p0, Lcom/mycompany/app/wview/WebTtsView;->Q:Z

    .line 152
    .line 153
    iget v2, p0, Lcom/mycompany/app/wview/WebTtsView;->F:I

    .line 154
    .line 155
    iput v2, p0, Lcom/mycompany/app/wview/WebTtsView;->R:I

    .line 156
    .line 157
    iget v2, p0, Lcom/mycompany/app/wview/WebTtsView;->G:I

    .line 158
    .line 159
    iput v2, p0, Lcom/mycompany/app/wview/WebTtsView;->S:I

    .line 160
    .line 161
    new-instance v2, Lcom/mycompany/app/wview/WebTtsView$19;

    .line 162
    .line 163
    invoke-direct {v2, p0}, Lcom/mycompany/app/wview/WebTtsView$19;-><init>(Lcom/mycompany/app/wview/WebTtsView;)V

    .line 164
    .line 165
    .line 166
    invoke-virtual {p0, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 167
    .line 168
    .line 169
    :cond_7
    sget v2, Lcom/mycompany/app/main/MainApp;->G1:I

    .line 170
    .line 171
    int-to-float v2, v2

    .line 172
    div-float/2addr v2, v5

    .line 173
    cmpg-float v2, v3, v2

    .line 174
    .line 175
    if-gez v2, :cond_8

    .line 176
    .line 177
    goto/16 :goto_0

    .line 178
    .line 179
    :cond_8
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    .line 180
    .line 181
    .line 182
    move-result v0

    .line 183
    iput v0, p0, Lcom/mycompany/app/wview/WebTtsView;->F:I

    .line 184
    .line 185
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    .line 186
    .line 187
    .line 188
    move-result v0

    .line 189
    iput v0, p0, Lcom/mycompany/app/wview/WebTtsView;->G:I

    .line 190
    .line 191
    iget v1, p0, Lcom/mycompany/app/wview/WebTtsView;->F:I

    .line 192
    .line 193
    iget v2, p0, Lcom/mycompany/app/wview/WebTtsView;->H:I

    .line 194
    .line 195
    add-int/2addr v1, v2

    .line 196
    iget v2, p0, Lcom/mycompany/app/wview/WebTtsView;->I:I

    .line 197
    .line 198
    add-int/2addr v0, v2

    .line 199
    invoke-virtual {p0, v1, v0}, Lcom/mycompany/app/wview/WebTtsView;->l(II)V

    .line 200
    .line 201
    .line 202
    invoke-virtual {p0}, Lcom/mycompany/app/wview/WebTtsView;->k()V

    .line 203
    .line 204
    .line 205
    goto/16 :goto_0

    .line 206
    .line 207
    :cond_9
    iget-boolean v0, p0, Lcom/mycompany/app/wview/WebTtsView;->P:Z

    .line 208
    .line 209
    if-eqz v0, :cond_a

    .line 210
    .line 211
    iget-boolean v0, p0, Lcom/mycompany/app/wview/WebTtsView;->Q:Z

    .line 212
    .line 213
    if-nez v0, :cond_a

    .line 214
    .line 215
    iget-object v0, p0, Lcom/mycompany/app/wview/WebTtsView;->g:Lcom/mycompany/app/wview/WebFltView$FltViewListener;

    .line 216
    .line 217
    if-eqz v0, :cond_a

    .line 218
    .line 219
    new-instance v0, Lcom/mycompany/app/wview/WebTtsView$20;

    .line 220
    .line 221
    invoke-direct {v0, p0}, Lcom/mycompany/app/wview/WebTtsView$20;-><init>(Lcom/mycompany/app/wview/WebTtsView;)V

    .line 222
    .line 223
    .line 224
    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 225
    .line 226
    .line 227
    :cond_a
    iget-boolean v0, p0, Lcom/mycompany/app/wview/WebTtsView;->E:Z

    .line 228
    .line 229
    if-nez v0, :cond_b

    .line 230
    .line 231
    invoke-virtual {p0}, Lcom/mycompany/app/wview/WebTtsView;->g()V

    .line 232
    .line 233
    .line 234
    iput-boolean v3, p0, Lcom/mycompany/app/wview/WebTtsView;->Q:Z

    .line 235
    .line 236
    iget-boolean v0, p0, Lcom/mycompany/app/wview/WebTtsView;->D:Z

    .line 237
    .line 238
    if-eqz v0, :cond_11

    .line 239
    .line 240
    iput-boolean v3, p0, Lcom/mycompany/app/wview/WebTtsView;->D:Z

    .line 241
    .line 242
    invoke-virtual {p0}, Lcom/mycompany/app/wview/WebTtsView;->i()V

    .line 243
    .line 244
    .line 245
    goto/16 :goto_0

    .line 246
    .line 247
    :cond_b
    iget-boolean v0, p0, Lcom/mycompany/app/wview/WebTtsView;->Q:Z

    .line 248
    .line 249
    if-eqz v0, :cond_c

    .line 250
    .line 251
    iget-object v0, p0, Lcom/mycompany/app/wview/WebTtsView;->f:Landroid/content/Context;

    .line 252
    .line 253
    invoke-static {v0}, Lcom/mycompany/app/pref/PrefTts;->t(Landroid/content/Context;)V

    .line 254
    .line 255
    .line 256
    :cond_c
    iput-boolean v3, p0, Lcom/mycompany/app/wview/WebTtsView;->E:Z

    .line 257
    .line 258
    invoke-virtual {p0}, Lcom/mycompany/app/wview/WebTtsView;->g()V

    .line 259
    .line 260
    .line 261
    iput-boolean v3, p0, Lcom/mycompany/app/wview/WebTtsView;->Q:Z

    .line 262
    .line 263
    invoke-virtual {p0}, Lcom/mycompany/app/wview/WebTtsView;->invalidate()V

    .line 264
    .line 265
    .line 266
    iget-boolean v0, p0, Lcom/mycompany/app/wview/WebTtsView;->D:Z

    .line 267
    .line 268
    if-eqz v0, :cond_11

    .line 269
    .line 270
    iput-boolean v3, p0, Lcom/mycompany/app/wview/WebTtsView;->D:Z

    .line 271
    .line 272
    invoke-virtual {p0}, Lcom/mycompany/app/wview/WebTtsView;->i()V

    .line 273
    .line 274
    .line 275
    goto/16 :goto_0

    .line 276
    .line 277
    :cond_d
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    .line 278
    .line 279
    .line 280
    move-result v0

    .line 281
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    .line 282
    .line 283
    .line 284
    move-result v4

    .line 285
    iput-boolean v3, p0, Lcom/mycompany/app/wview/WebTtsView;->D:Z

    .line 286
    .line 287
    iput-boolean v2, p0, Lcom/mycompany/app/wview/WebTtsView;->E:Z

    .line 288
    .line 289
    iput-boolean v2, p0, Lcom/mycompany/app/wview/WebTtsView;->P:Z

    .line 290
    .line 291
    iput-boolean v3, p0, Lcom/mycompany/app/wview/WebTtsView;->Q:Z

    .line 292
    .line 293
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    .line 294
    .line 295
    .line 296
    move-result v0

    .line 297
    iput v0, p0, Lcom/mycompany/app/wview/WebTtsView;->F:I

    .line 298
    .line 299
    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    .line 300
    .line 301
    .line 302
    move-result v0

    .line 303
    iput v0, p0, Lcom/mycompany/app/wview/WebTtsView;->G:I

    .line 304
    .line 305
    iget v0, p0, Lcom/mycompany/app/wview/WebTtsView;->N:I

    .line 306
    .line 307
    iget v2, p0, Lcom/mycompany/app/wview/WebTtsView;->J:I

    .line 308
    .line 309
    sub-int/2addr v0, v2

    .line 310
    int-to-float v0, v0

    .line 311
    sget v2, Lcom/mycompany/app/pref/PrefTts;->o:F

    .line 312
    .line 313
    sget v4, Lcom/mycompany/app/pref/PrefTts;->p:F

    .line 314
    .line 315
    invoke-static {v2, v4, v0, v2}, Lcom/mycompany/app/dialog/a;->a(FFFF)I

    .line 316
    .line 317
    .line 318
    move-result v0

    .line 319
    iget v2, p0, Lcom/mycompany/app/wview/WebTtsView;->O:I

    .line 320
    .line 321
    iget v4, p0, Lcom/mycompany/app/wview/WebTtsView;->K:I

    .line 322
    .line 323
    sub-int/2addr v2, v4

    .line 324
    int-to-float v2, v2

    .line 325
    sget v4, Lcom/mycompany/app/pref/PrefTts;->q:F

    .line 326
    .line 327
    sget v5, Lcom/mycompany/app/pref/PrefTts;->r:F

    .line 328
    .line 329
    invoke-static {v4, v5, v2, v4}, Lcom/mycompany/app/dialog/a;->a(FFFF)I

    .line 330
    .line 331
    .line 332
    move-result v2

    .line 333
    iget v4, p0, Lcom/mycompany/app/wview/WebTtsView;->F:I

    .line 334
    .line 335
    sub-int/2addr v0, v4

    .line 336
    iput v0, p0, Lcom/mycompany/app/wview/WebTtsView;->H:I

    .line 337
    .line 338
    iget v0, p0, Lcom/mycompany/app/wview/WebTtsView;->G:I

    .line 339
    .line 340
    sub-int/2addr v2, v0

    .line 341
    iput v2, p0, Lcom/mycompany/app/wview/WebTtsView;->I:I

    .line 342
    .line 343
    iget-object v0, p0, Lcom/mycompany/app/wview/WebTtsView;->o:Landroid/graphics/Paint;

    .line 344
    .line 345
    if-nez v0, :cond_e

    .line 346
    .line 347
    goto :goto_0

    .line 348
    :cond_e
    iget-object v0, p0, Lcom/mycompany/app/wview/WebTtsView;->p:Landroid/animation/ValueAnimator;

    .line 349
    .line 350
    if-eqz v0, :cond_f

    .line 351
    .line 352
    goto :goto_0

    .line 353
    :cond_f
    const v0, 0x3f4ccccd    # 0.8f

    .line 354
    .line 355
    .line 356
    iput v0, p0, Lcom/mycompany/app/wview/WebTtsView;->r:F

    .line 357
    .line 358
    iput v0, p0, Lcom/mycompany/app/wview/WebTtsView;->V:F

    .line 359
    .line 360
    iput-boolean v3, p0, Lcom/mycompany/app/wview/WebTtsView;->W:Z

    .line 361
    .line 362
    new-array v0, v1, [F

    .line 363
    .line 364
    fill-array-data v0, :array_0

    .line 365
    .line 366
    .line 367
    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 368
    .line 369
    .line 370
    move-result-object v0

    .line 371
    iput-object v0, p0, Lcom/mycompany/app/wview/WebTtsView;->p:Landroid/animation/ValueAnimator;

    .line 372
    .line 373
    const-wide/16 v1, 0xc8

    .line 374
    .line 375
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 376
    .line 377
    .line 378
    iget-object v0, p0, Lcom/mycompany/app/wview/WebTtsView;->p:Landroid/animation/ValueAnimator;

    .line 379
    .line 380
    invoke-static {v0}, Lcom/mycompany/app/dialog/a;->v(Landroid/animation/ValueAnimator;)V

    .line 381
    .line 382
    .line 383
    iget-object v0, p0, Lcom/mycompany/app/wview/WebTtsView;->p:Landroid/animation/ValueAnimator;

    .line 384
    .line 385
    new-instance v1, Lcom/mycompany/app/wview/WebTtsView$3;

    .line 386
    .line 387
    invoke-direct {v1, p0}, Lcom/mycompany/app/wview/WebTtsView$3;-><init>(Lcom/mycompany/app/wview/WebTtsView;)V

    .line 388
    .line 389
    .line 390
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 391
    .line 392
    .line 393
    iget-object v0, p0, Lcom/mycompany/app/wview/WebTtsView;->p:Landroid/animation/ValueAnimator;

    .line 394
    .line 395
    new-instance v1, Lcom/mycompany/app/wview/WebTtsView$4;

    .line 396
    .line 397
    invoke-direct {v1, p0}, Lcom/mycompany/app/wview/WebTtsView$4;-><init>(Lcom/mycompany/app/wview/WebTtsView;)V

    .line 398
    .line 399
    .line 400
    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 401
    .line 402
    .line 403
    iget-object v0, p0, Lcom/mycompany/app/wview/WebTtsView;->q:Landroid/animation/ValueAnimator;

    .line 404
    .line 405
    if-eqz v0, :cond_10

    .line 406
    .line 407
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 408
    .line 409
    .line 410
    :cond_10
    iget-object v0, p0, Lcom/mycompany/app/wview/WebTtsView;->p:Landroid/animation/ValueAnimator;

    .line 411
    .line 412
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 413
    .line 414
    .line 415
    :cond_11
    :goto_0
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 416
    .line 417
    .line 418
    move-result p1

    .line 419
    return p1

    .line 420
    nop

    .line 421
    :array_0
    .array-data 4
        0x3f4ccccd    # 0.8f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public setEnabled(Z)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 2
    .line 3
    .line 4
    if-nez p1, :cond_0

    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/mycompany/app/wview/WebTtsView;->h()V

    .line 7
    .line 8
    .line 9
    :cond_0
    return-void
.end method

.method public setTtsListener(Lcom/mycompany/app/wview/WebFltView$FltViewListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mycompany/app/wview/WebTtsView;->g:Lcom/mycompany/app/wview/WebFltView$FltViewListener;

    .line 2
    .line 3
    return-void
.end method

.method public setVisibility(I)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/mycompany/app/wview/WebTtsView;->w:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Lcom/mycompany/app/wview/WebTtsView;->w:Z

    .line 7
    .line 8
    iget-object v1, p0, Lcom/mycompany/app/wview/WebTtsView;->y:Lcom/mycompany/app/view/MyProgressDrawable;

    .line 9
    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    iput-boolean v0, v1, Lcom/mycompany/app/view/MyProgressDrawable;->f:Z

    .line 13
    .line 14
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/wview/WebTtsView;->B:Landroid/animation/ValueAnimator;

    .line 15
    .line 16
    const/4 v1, 0x0

    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 20
    .line 21
    .line 22
    iput-object v1, p0, Lcom/mycompany/app/wview/WebTtsView;->B:Landroid/animation/ValueAnimator;

    .line 23
    .line 24
    :cond_1
    iget-object v0, p0, Lcom/mycompany/app/wview/WebTtsView;->C:Landroid/animation/ValueAnimator;

    .line 25
    .line 26
    if-eqz v0, :cond_2

    .line 27
    .line 28
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 29
    .line 30
    .line 31
    iput-object v1, p0, Lcom/mycompany/app/wview/WebTtsView;->C:Landroid/animation/ValueAnimator;

    .line 32
    .line 33
    :cond_2
    const/high16 v0, 0x3f800000    # 1.0f

    .line 34
    .line 35
    invoke-virtual {p0, v0}, Landroid/view/View;->setAlpha(F)V

    .line 36
    .line 37
    .line 38
    invoke-super {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 39
    .line 40
    .line 41
    if-eqz p1, :cond_3

    .line 42
    .line 43
    invoke-virtual {p0}, Lcom/mycompany/app/wview/WebTtsView;->h()V

    .line 44
    .line 45
    .line 46
    iget-object p1, p0, Lcom/mycompany/app/wview/WebTtsView;->g:Lcom/mycompany/app/wview/WebFltView$FltViewListener;

    .line 47
    .line 48
    if-eqz p1, :cond_3

    .line 49
    .line 50
    invoke-interface {p1}, Lcom/mycompany/app/wview/WebFltView$FltViewListener;->b()V

    .line 51
    .line 52
    .line 53
    :cond_3
    return-void
.end method
