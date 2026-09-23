.class public Lcom/mycompany/app/wview/WebDownView;
.super Landroid/view/View;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mycompany/app/wview/WebDownView$EventHandler;
    }
.end annotation


# instance fields
.field public A:Landroid/graphics/drawable/Drawable;

.field public B:Landroid/graphics/Paint;

.field public C:F

.field public D:F

.field public E:Z

.field public F:Landroid/animation/ValueAnimator;

.field public G:Landroid/animation/ValueAnimator;

.field public H:Z

.field public I:I

.field public J:I

.field public K:I

.field public L:I

.field public final M:I

.field public final N:I

.field public O:I

.field public P:I

.field public Q:I

.field public R:I

.field public S:Z

.field public T:Z

.field public U:I

.field public V:I

.field public W:Lcom/mycompany/app/wview/WebDownView$EventHandler;

.field public a0:Z

.field public b0:Z

.field public c:Z

.field public c0:Landroid/graphics/Rect;

.field public d0:Ljava/util/ArrayList;

.field public e0:F

.field public f:Landroid/content/Context;

.field public f0:Z

.field public final g:Z

.field public final g0:Ljava/lang/Runnable;

.field public h:Lcom/mycompany/app/wview/WebFltView$FltViewListener;

.field public h0:F

.field public final i:I

.field public i0:Z

.field public j:I

.field public final j0:Ljava/lang/Runnable;

.field public k:I

.field public k0:F

.field public l:Landroid/graphics/Paint;

.field public l0:Z

.field public final m:I

.field public final m0:Ljava/lang/Runnable;

.field public n:I

.field public n0:F

.field public o:I

.field public o0:Z

.field public p:Landroid/graphics/Paint;

.field public final p0:Ljava/lang/Runnable;

.field public q:Landroid/animation/ValueAnimator;

.field public r:Landroid/animation/ValueAnimator;

.field public s:F

.field public t:I

.field public u:Landroid/graphics/Paint;

.field public final v:F

.field public final w:F

.field public x:I

.field public y:Z

.field public z:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/mycompany/app/wview/WebDownView$5;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Lcom/mycompany/app/wview/WebDownView$5;-><init>(Lcom/mycompany/app/wview/WebDownView;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/mycompany/app/wview/WebDownView;->g0:Ljava/lang/Runnable;

    .line 10
    .line 11
    new-instance v0, Lcom/mycompany/app/wview/WebDownView$9;

    .line 12
    .line 13
    invoke-direct {v0, p0}, Lcom/mycompany/app/wview/WebDownView$9;-><init>(Lcom/mycompany/app/wview/WebDownView;)V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/mycompany/app/wview/WebDownView;->j0:Ljava/lang/Runnable;

    .line 17
    .line 18
    new-instance v0, Lcom/mycompany/app/wview/WebDownView$14;

    .line 19
    .line 20
    invoke-direct {v0, p0}, Lcom/mycompany/app/wview/WebDownView$14;-><init>(Lcom/mycompany/app/wview/WebDownView;)V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lcom/mycompany/app/wview/WebDownView;->m0:Ljava/lang/Runnable;

    .line 24
    .line 25
    new-instance v0, Lcom/mycompany/app/wview/WebDownView$18;

    .line 26
    .line 27
    invoke-direct {v0, p0}, Lcom/mycompany/app/wview/WebDownView$18;-><init>(Lcom/mycompany/app/wview/WebDownView;)V

    .line 28
    .line 29
    .line 30
    iput-object v0, p0, Lcom/mycompany/app/wview/WebDownView;->p0:Ljava/lang/Runnable;

    .line 31
    .line 32
    iput-boolean p2, p0, Lcom/mycompany/app/wview/WebDownView;->g:Z

    .line 33
    .line 34
    const/4 v0, 0x1

    .line 35
    iput-boolean v0, p0, Lcom/mycompany/app/wview/WebDownView;->c:Z

    .line 36
    .line 37
    iput-object p1, p0, Lcom/mycompany/app/wview/WebDownView;->f:Landroid/content/Context;

    .line 38
    .line 39
    sget p1, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 40
    .line 41
    iput p1, p0, Lcom/mycompany/app/wview/WebDownView;->M:I

    .line 42
    .line 43
    iput p1, p0, Lcom/mycompany/app/wview/WebDownView;->N:I

    .line 44
    .line 45
    div-int/lit8 p1, p1, 0x2

    .line 46
    .line 47
    sget v1, Lcom/mycompany/app/main/MainApp;->j1:I

    .line 48
    .line 49
    iput v1, p0, Lcom/mycompany/app/wview/WebDownView;->i:I

    .line 50
    .line 51
    sget v1, Lcom/mycompany/app/main/MainApp;->k1:I

    .line 52
    .line 53
    iput v1, p0, Lcom/mycompany/app/wview/WebDownView;->m:I

    .line 54
    .line 55
    int-to-float p1, p1

    .line 56
    iput p1, p0, Lcom/mycompany/app/wview/WebDownView;->v:F

    .line 57
    .line 58
    iput p1, p0, Lcom/mycompany/app/wview/WebDownView;->w:F

    .line 59
    .line 60
    const/4 p1, 0x0

    .line 61
    if-eqz p2, :cond_0

    .line 62
    .line 63
    invoke-static {p1, v0}, Lcom/mycompany/app/main/MainUtil;->t4(IZ)I

    .line 64
    .line 65
    .line 66
    move-result p1

    .line 67
    iput p1, p0, Lcom/mycompany/app/wview/WebDownView;->x:I

    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_0
    invoke-static {p1, v0}, Lcom/mycompany/app/main/MainUtil;->d4(IZ)I

    .line 71
    .line 72
    .line 73
    move-result p1

    .line 74
    iput p1, p0, Lcom/mycompany/app/wview/WebDownView;->x:I

    .line 75
    .line 76
    :goto_0
    iget p1, p0, Lcom/mycompany/app/wview/WebDownView;->x:I

    .line 77
    .line 78
    invoke-direct {p0, p1}, Lcom/mycompany/app/wview/WebDownView;->setDrawIcon(I)V

    .line 79
    .line 80
    .line 81
    new-instance p1, Lcom/mycompany/app/wview/WebDownView$1;

    .line 82
    .line 83
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 84
    .line 85
    .line 86
    invoke-virtual {p0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 87
    .line 88
    .line 89
    new-instance p1, Lcom/mycompany/app/wview/WebDownView$2;

    .line 90
    .line 91
    invoke-direct {p1, p0}, Lcom/mycompany/app/wview/WebDownView$2;-><init>(Lcom/mycompany/app/wview/WebDownView;)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {p0, p1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 95
    .line 96
    .line 97
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 98
    .line 99
    const/16 p2, 0x1d

    .line 100
    .line 101
    if-lt p1, p2, :cond_1

    .line 102
    .line 103
    new-instance p1, Landroid/graphics/Rect;

    .line 104
    .line 105
    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    .line 106
    .line 107
    .line 108
    iput-object p1, p0, Lcom/mycompany/app/wview/WebDownView;->c0:Landroid/graphics/Rect;

    .line 109
    .line 110
    new-instance p1, Ljava/util/ArrayList;

    .line 111
    .line 112
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 113
    .line 114
    .line 115
    iput-object p1, p0, Lcom/mycompany/app/wview/WebDownView;->d0:Ljava/util/ArrayList;

    .line 116
    .line 117
    iget-object p2, p0, Lcom/mycompany/app/wview/WebDownView;->c0:Landroid/graphics/Rect;

    .line 118
    .line 119
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 120
    .line 121
    .line 122
    :cond_1
    return-void
.end method

.method public static bridge synthetic a(Lcom/mycompany/app/wview/WebDownView;)V
    .locals 1

    .line 1
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/mycompany/app/wview/WebDownView;->setOnlyVisibility(I)V

    return-void
.end method

.method public static bridge synthetic b(Lcom/mycompany/app/wview/WebDownView;F)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/mycompany/app/wview/WebDownView;->setValAnimHide(F)V

    return-void
.end method

.method public static bridge synthetic c(Lcom/mycompany/app/wview/WebDownView;F)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/mycompany/app/wview/WebDownView;->setValAnimShow(F)V

    return-void
.end method

.method public static bridge synthetic d(Lcom/mycompany/app/wview/WebDownView;F)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/mycompany/app/wview/WebDownView;->setValPreScaleDn(F)V

    return-void
.end method

.method public static bridge synthetic e(Lcom/mycompany/app/wview/WebDownView;F)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/mycompany/app/wview/WebDownView;->setValPreScaleUp(F)V

    return-void
.end method

.method private setDrawIcon(I)V
    .locals 4

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/wview/WebDownView;->f:Landroid/content/Context;

    .line 5
    .line 6
    invoke-static {v0, p1}, Lcom/mycompany/app/main/MainUtil;->S(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    iput-object p1, p0, Lcom/mycompany/app/wview/WebDownView;->A:Landroid/graphics/drawable/Drawable;

    .line 11
    .line 12
    if-nez p1, :cond_1

    .line 13
    .line 14
    :goto_0
    return-void

    .line 15
    :cond_1
    iget-boolean v0, p0, Lcom/mycompany/app/wview/WebDownView;->g:Z

    .line 16
    .line 17
    if-eqz v0, :cond_2

    .line 18
    .line 19
    sget v0, Lcom/mycompany/app/pref/PrefEditor;->x:F

    .line 20
    .line 21
    goto :goto_1

    .line 22
    :cond_2
    sget v0, Lcom/mycompany/app/pref/PrefEditor;->l:F

    .line 23
    .line 24
    :goto_1
    float-to-double v0, v0

    .line 25
    const-wide v2, 0x3feccccccccccccdL    # 0.9

    .line 26
    .line 27
    .line 28
    .line 29
    .line 30
    cmpl-double v0, v0, v2

    .line 31
    .line 32
    if-lez v0, :cond_3

    .line 33
    .line 34
    sget-boolean v0, Lcom/mycompany/app/main/MainApp;->L1:Z

    .line 35
    .line 36
    if-eqz v0, :cond_3

    .line 37
    .line 38
    const/16 v0, 0xb0

    .line 39
    .line 40
    iput v0, p0, Lcom/mycompany/app/wview/WebDownView;->z:I

    .line 41
    .line 42
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 43
    .line 44
    .line 45
    goto :goto_2

    .line 46
    :cond_3
    const/16 p1, 0xff

    .line 47
    .line 48
    iput p1, p0, Lcom/mycompany/app/wview/WebDownView;->z:I

    .line 49
    .line 50
    :goto_2
    sget p1, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 51
    .line 52
    iget v0, p0, Lcom/mycompany/app/wview/WebDownView;->m:I

    .line 53
    .line 54
    sub-int/2addr p1, v0

    .line 55
    div-int/lit8 p1, p1, 0x2

    .line 56
    .line 57
    add-int/2addr v0, p1

    .line 58
    iget-object v1, p0, Lcom/mycompany/app/wview/WebDownView;->A:Landroid/graphics/drawable/Drawable;

    .line 59
    .line 60
    invoke-virtual {v1, p1, p1, v0, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 61
    .line 62
    .line 63
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
    iget-object p1, p0, Lcom/mycompany/app/wview/WebDownView;->h:Lcom/mycompany/app/wview/WebFltView$FltViewListener;

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
    invoke-direct {p0, p1}, Lcom/mycompany/app/wview/WebDownView;->setOnlyVisibility(I)V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method private setValPreScaleDn(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/wview/WebDownView;->p:Landroid/graphics/Paint;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iput p1, p0, Lcom/mycompany/app/wview/WebDownView;->s:F

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/mycompany/app/wview/WebDownView;->invalidate()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method private setValPreScaleUp(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/wview/WebDownView;->p:Landroid/graphics/Paint;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iput p1, p0, Lcom/mycompany/app/wview/WebDownView;->s:F

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/mycompany/app/wview/WebDownView;->invalidate()V

    .line 9
    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final f()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/wview/WebDownView;->q:Landroid/animation/ValueAnimator;

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
    iput-object v1, p0, Lcom/mycompany/app/wview/WebDownView;->q:Landroid/animation/ValueAnimator;

    .line 10
    .line 11
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/wview/WebDownView;->r:Landroid/animation/ValueAnimator;

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 16
    .line 17
    .line 18
    iput-object v1, p0, Lcom/mycompany/app/wview/WebDownView;->r:Landroid/animation/ValueAnimator;

    .line 19
    .line 20
    :cond_1
    iget-object v0, p0, Lcom/mycompany/app/wview/WebDownView;->F:Landroid/animation/ValueAnimator;

    .line 21
    .line 22
    if-eqz v0, :cond_2

    .line 23
    .line 24
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 25
    .line 26
    .line 27
    iput-object v1, p0, Lcom/mycompany/app/wview/WebDownView;->F:Landroid/animation/ValueAnimator;

    .line 28
    .line 29
    :cond_2
    iget-object v0, p0, Lcom/mycompany/app/wview/WebDownView;->G:Landroid/animation/ValueAnimator;

    .line 30
    .line 31
    if-eqz v0, :cond_3

    .line 32
    .line 33
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 34
    .line 35
    .line 36
    iput-object v1, p0, Lcom/mycompany/app/wview/WebDownView;->G:Landroid/animation/ValueAnimator;

    .line 37
    .line 38
    :cond_3
    return-void
.end method

.method public final g()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/mycompany/app/wview/WebDownView;->c:Z

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-boolean v0, p0, Lcom/mycompany/app/wview/WebDownView;->S:Z

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
    iput-boolean v0, p0, Lcom/mycompany/app/wview/WebDownView;->S:Z

    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/mycompany/app/wview/WebDownView;->t()V

    .line 14
    .line 15
    .line 16
    :cond_1
    :goto_0
    return-void
.end method

.method public final h()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/mycompany/app/wview/WebDownView;->H:Z

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    iget-boolean v0, p0, Lcom/mycompany/app/wview/WebDownView;->S:Z

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    iget-boolean v0, p0, Lcom/mycompany/app/wview/WebDownView;->T:Z

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    :cond_0
    iput-boolean v2, p0, Lcom/mycompany/app/wview/WebDownView;->H:Z

    .line 16
    .line 17
    iput-boolean v2, p0, Lcom/mycompany/app/wview/WebDownView;->S:Z

    .line 18
    .line 19
    iput-boolean v2, p0, Lcom/mycompany/app/wview/WebDownView;->T:Z

    .line 20
    .line 21
    move v2, v1

    .line 22
    :cond_1
    iget-object v0, p0, Lcom/mycompany/app/wview/WebDownView;->q:Landroid/animation/ValueAnimator;

    .line 23
    .line 24
    const/4 v3, 0x0

    .line 25
    if-eqz v0, :cond_2

    .line 26
    .line 27
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 28
    .line 29
    .line 30
    iput-object v3, p0, Lcom/mycompany/app/wview/WebDownView;->q:Landroid/animation/ValueAnimator;

    .line 31
    .line 32
    move v2, v1

    .line 33
    :cond_2
    iget-object v0, p0, Lcom/mycompany/app/wview/WebDownView;->r:Landroid/animation/ValueAnimator;

    .line 34
    .line 35
    if-eqz v0, :cond_3

    .line 36
    .line 37
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 38
    .line 39
    .line 40
    iput-object v3, p0, Lcom/mycompany/app/wview/WebDownView;->r:Landroid/animation/ValueAnimator;

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_3
    move v1, v2

    .line 44
    :goto_0
    if-eqz v1, :cond_4

    .line 45
    .line 46
    invoke-virtual {p0}, Lcom/mycompany/app/wview/WebDownView;->invalidate()V

    .line 47
    .line 48
    .line 49
    invoke-virtual {p0}, Lcom/mycompany/app/wview/WebDownView;->k()V

    .line 50
    .line 51
    .line 52
    :cond_4
    return-void
.end method

.method public final i(Z)V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/mycompany/app/wview/WebDownView;->a0:Z

    .line 3
    .line 4
    iget-object v1, p0, Lcom/mycompany/app/wview/WebDownView;->W:Lcom/mycompany/app/wview/WebDownView$EventHandler;

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 9
    .line 10
    .line 11
    :cond_0
    const/16 v1, 0x8

    .line 12
    .line 13
    if-eqz p1, :cond_6

    .line 14
    .line 15
    iget-object p1, p0, Lcom/mycompany/app/wview/WebDownView;->G:Landroid/animation/ValueAnimator;

    .line 16
    .line 17
    if-eqz p1, :cond_1

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_1
    iget-object p1, p0, Lcom/mycompany/app/wview/WebDownView;->F:Landroid/animation/ValueAnimator;

    .line 21
    .line 22
    if-eqz p1, :cond_2

    .line 23
    .line 24
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 25
    .line 26
    .line 27
    const/4 p1, 0x0

    .line 28
    iput-object p1, p0, Lcom/mycompany/app/wview/WebDownView;->F:Landroid/animation/ValueAnimator;

    .line 29
    .line 30
    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    if-eqz p1, :cond_3

    .line 35
    .line 36
    :goto_0
    return-void

    .line 37
    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->getAlpha()F

    .line 38
    .line 39
    .line 40
    move-result p1

    .line 41
    const/4 v2, 0x0

    .line 42
    cmpg-float v3, p1, v2

    .line 43
    .line 44
    if-gtz v3, :cond_4

    .line 45
    .line 46
    invoke-direct {p0, v1}, Lcom/mycompany/app/wview/WebDownView;->setOnlyVisibility(I)V

    .line 47
    .line 48
    .line 49
    return-void

    .line 50
    :cond_4
    iget-object v1, p0, Lcom/mycompany/app/wview/WebDownView;->h:Lcom/mycompany/app/wview/WebFltView$FltViewListener;

    .line 51
    .line 52
    if-eqz v1, :cond_5

    .line 53
    .line 54
    invoke-interface {v1}, Lcom/mycompany/app/wview/WebFltView$FltViewListener;->b()V

    .line 55
    .line 56
    .line 57
    :cond_5
    iput p1, p0, Lcom/mycompany/app/wview/WebDownView;->n0:F

    .line 58
    .line 59
    iput-boolean v0, p0, Lcom/mycompany/app/wview/WebDownView;->o0:Z

    .line 60
    .line 61
    const/4 v1, 0x2

    .line 62
    new-array v1, v1, [F

    .line 63
    .line 64
    aput p1, v1, v0

    .line 65
    .line 66
    const/4 v0, 0x1

    .line 67
    aput v2, v1, v0

    .line 68
    .line 69
    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    iput-object v0, p0, Lcom/mycompany/app/wview/WebDownView;->G:Landroid/animation/ValueAnimator;

    .line 74
    .line 75
    const/high16 v1, 0x43c80000    # 400.0f

    .line 76
    .line 77
    mul-float/2addr p1, v1

    .line 78
    float-to-long v1, p1

    .line 79
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 80
    .line 81
    .line 82
    iget-object p1, p0, Lcom/mycompany/app/wview/WebDownView;->G:Landroid/animation/ValueAnimator;

    .line 83
    .line 84
    new-instance v0, Lcom/mycompany/app/wview/WebDownView$16;

    .line 85
    .line 86
    invoke-direct {v0, p0}, Lcom/mycompany/app/wview/WebDownView$16;-><init>(Lcom/mycompany/app/wview/WebDownView;)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 90
    .line 91
    .line 92
    iget-object p1, p0, Lcom/mycompany/app/wview/WebDownView;->G:Landroid/animation/ValueAnimator;

    .line 93
    .line 94
    new-instance v0, Lcom/mycompany/app/wview/WebDownView$17;

    .line 95
    .line 96
    invoke-direct {v0, p0}, Lcom/mycompany/app/wview/WebDownView$17;-><init>(Lcom/mycompany/app/wview/WebDownView;)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {p1, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 100
    .line 101
    .line 102
    iget-object p1, p0, Lcom/mycompany/app/wview/WebDownView;->G:Landroid/animation/ValueAnimator;

    .line 103
    .line 104
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    .line 105
    .line 106
    .line 107
    return-void

    .line 108
    :cond_6
    invoke-virtual {p0, v1}, Lcom/mycompany/app/wview/WebDownView;->setVisibility(I)V

    .line 109
    .line 110
    .line 111
    return-void
.end method

.method public final invalidate()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/mycompany/app/wview/WebDownView;->c:Z

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
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/mycompany/app/wview/WebDownView;->c:Z

    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/mycompany/app/wview/WebDownView;->f()V

    .line 5
    .line 6
    .line 7
    iget-object v1, p0, Lcom/mycompany/app/wview/WebDownView;->W:Lcom/mycompany/app/wview/WebDownView$EventHandler;

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 13
    .line 14
    .line 15
    iput-object v2, p0, Lcom/mycompany/app/wview/WebDownView;->W:Lcom/mycompany/app/wview/WebDownView$EventHandler;

    .line 16
    .line 17
    :cond_0
    iput-object v2, p0, Lcom/mycompany/app/wview/WebDownView;->f:Landroid/content/Context;

    .line 18
    .line 19
    iput-object v2, p0, Lcom/mycompany/app/wview/WebDownView;->h:Lcom/mycompany/app/wview/WebFltView$FltViewListener;

    .line 20
    .line 21
    iput-object v2, p0, Lcom/mycompany/app/wview/WebDownView;->l:Landroid/graphics/Paint;

    .line 22
    .line 23
    iput-object v2, p0, Lcom/mycompany/app/wview/WebDownView;->p:Landroid/graphics/Paint;

    .line 24
    .line 25
    iput-object v2, p0, Lcom/mycompany/app/wview/WebDownView;->u:Landroid/graphics/Paint;

    .line 26
    .line 27
    iput-object v2, p0, Lcom/mycompany/app/wview/WebDownView;->A:Landroid/graphics/drawable/Drawable;

    .line 28
    .line 29
    iput-object v2, p0, Lcom/mycompany/app/wview/WebDownView;->B:Landroid/graphics/Paint;

    .line 30
    .line 31
    iput-object v2, p0, Lcom/mycompany/app/wview/WebDownView;->c0:Landroid/graphics/Rect;

    .line 32
    .line 33
    iput-object v2, p0, Lcom/mycompany/app/wview/WebDownView;->d0:Ljava/util/ArrayList;

    .line 34
    .line 35
    return-void
.end method

.method public final k()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/mycompany/app/wview/WebDownView;->a0:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Lcom/mycompany/app/wview/WebDownView;->W:Lcom/mycompany/app/wview/WebDownView$EventHandler;

    .line 7
    .line 8
    if-eqz v0, :cond_3

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 11
    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    iput-object v0, p0, Lcom/mycompany/app/wview/WebDownView;->W:Lcom/mycompany/app/wview/WebDownView$EventHandler;

    .line 15
    .line 16
    return-void

    .line 17
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/wview/WebDownView;->W:Lcom/mycompany/app/wview/WebDownView$EventHandler;

    .line 18
    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_1
    iget-boolean v0, p0, Lcom/mycompany/app/wview/WebDownView;->H:Z

    .line 26
    .line 27
    if-nez v0, :cond_2

    .line 28
    .line 29
    new-instance v0, Lcom/mycompany/app/wview/WebDownView$EventHandler;

    .line 30
    .line 31
    invoke-direct {v0, p0}, Lcom/mycompany/app/wview/WebDownView$EventHandler;-><init>(Lcom/mycompany/app/wview/WebDownView;)V

    .line 32
    .line 33
    .line 34
    iput-object v0, p0, Lcom/mycompany/app/wview/WebDownView;->W:Lcom/mycompany/app/wview/WebDownView$EventHandler;

    .line 35
    .line 36
    :cond_2
    :goto_0
    iget-boolean v0, p0, Lcom/mycompany/app/wview/WebDownView;->H:Z

    .line 37
    .line 38
    if-nez v0, :cond_3

    .line 39
    .line 40
    iget-object v0, p0, Lcom/mycompany/app/wview/WebDownView;->W:Lcom/mycompany/app/wview/WebDownView$EventHandler;

    .line 41
    .line 42
    if-eqz v0, :cond_3

    .line 43
    .line 44
    const-wide/16 v2, 0x7d0

    .line 45
    .line 46
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 47
    .line 48
    .line 49
    :cond_3
    return-void
.end method

.method public final l()V
    .locals 8

    .line 1
    iget-boolean v0, p0, Lcom/mycompany/app/wview/WebDownView;->g:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    sget v0, Lcom/mycompany/app/pref/PrefEditor;->x:F

    .line 6
    .line 7
    sget v1, Lcom/mycompany/app/pref/PrefEditor;->y:I

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    sget v0, Lcom/mycompany/app/pref/PrefEditor;->l:F

    .line 11
    .line 12
    sget v1, Lcom/mycompany/app/pref/PrefEditor;->m:I

    .line 13
    .line 14
    :goto_0
    float-to-double v2, v0

    .line 15
    const-wide v4, 0x3feccccccccccccdL    # 0.9

    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    cmpl-double v0, v2, v4

    .line 21
    .line 22
    const/4 v2, 0x1

    .line 23
    const/4 v3, 0x0

    .line 24
    if-lez v0, :cond_1

    .line 25
    .line 26
    move v0, v2

    .line 27
    goto :goto_1

    .line 28
    :cond_1
    move v0, v3

    .line 29
    :goto_1
    if-eqz v0, :cond_2

    .line 30
    .line 31
    sget-boolean v4, Lcom/mycompany/app/main/MainApp;->L1:Z

    .line 32
    .line 33
    if-eqz v4, :cond_2

    .line 34
    .line 35
    move v4, v2

    .line 36
    goto :goto_2

    .line 37
    :cond_2
    move v4, v3

    .line 38
    :goto_2
    iget v5, p0, Lcom/mycompany/app/wview/WebDownView;->j:I

    .line 39
    .line 40
    const/4 v6, 0x0

    .line 41
    if-eq v5, v1, :cond_4

    .line 42
    .line 43
    iput v1, p0, Lcom/mycompany/app/wview/WebDownView;->j:I

    .line 44
    .line 45
    if-eqz v1, :cond_3

    .line 46
    .line 47
    new-instance v5, Landroid/graphics/Paint;

    .line 48
    .line 49
    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    .line 50
    .line 51
    .line 52
    iput-object v5, p0, Lcom/mycompany/app/wview/WebDownView;->l:Landroid/graphics/Paint;

    .line 53
    .line 54
    invoke-virtual {v5, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 55
    .line 56
    .line 57
    iget-object v5, p0, Lcom/mycompany/app/wview/WebDownView;->l:Landroid/graphics/Paint;

    .line 58
    .line 59
    sget-object v7, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    .line 60
    .line 61
    invoke-virtual {v5, v7}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 62
    .line 63
    .line 64
    iget-object v5, p0, Lcom/mycompany/app/wview/WebDownView;->l:Landroid/graphics/Paint;

    .line 65
    .line 66
    iget v7, p0, Lcom/mycompany/app/wview/WebDownView;->j:I

    .line 67
    .line 68
    invoke-virtual {v5, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 69
    .line 70
    .line 71
    iget-object v5, p0, Lcom/mycompany/app/wview/WebDownView;->l:Landroid/graphics/Paint;

    .line 72
    .line 73
    invoke-virtual {v5}, Landroid/graphics/Paint;->getAlpha()I

    .line 74
    .line 75
    .line 76
    move-result v5

    .line 77
    iput v5, p0, Lcom/mycompany/app/wview/WebDownView;->k:I

    .line 78
    .line 79
    goto :goto_3

    .line 80
    :cond_3
    iput-object v6, p0, Lcom/mycompany/app/wview/WebDownView;->l:Landroid/graphics/Paint;

    .line 81
    .line 82
    :goto_3
    move v5, v2

    .line 83
    goto :goto_4

    .line 84
    :cond_4
    move v5, v3

    .line 85
    :goto_4
    iget v7, p0, Lcom/mycompany/app/wview/WebDownView;->n:I

    .line 86
    .line 87
    if-eq v7, v1, :cond_6

    .line 88
    .line 89
    iput v1, p0, Lcom/mycompany/app/wview/WebDownView;->n:I

    .line 90
    .line 91
    if-eqz v1, :cond_5

    .line 92
    .line 93
    new-instance v1, Landroid/graphics/Paint;

    .line 94
    .line 95
    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    .line 96
    .line 97
    .line 98
    iput-object v1, p0, Lcom/mycompany/app/wview/WebDownView;->p:Landroid/graphics/Paint;

    .line 99
    .line 100
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 101
    .line 102
    .line 103
    iget-object v1, p0, Lcom/mycompany/app/wview/WebDownView;->p:Landroid/graphics/Paint;

    .line 104
    .line 105
    sget-object v5, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    .line 106
    .line 107
    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 108
    .line 109
    .line 110
    iget-object v1, p0, Lcom/mycompany/app/wview/WebDownView;->p:Landroid/graphics/Paint;

    .line 111
    .line 112
    iget v5, p0, Lcom/mycompany/app/wview/WebDownView;->n:I

    .line 113
    .line 114
    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 115
    .line 116
    .line 117
    iget-object v1, p0, Lcom/mycompany/app/wview/WebDownView;->p:Landroid/graphics/Paint;

    .line 118
    .line 119
    invoke-virtual {v1}, Landroid/graphics/Paint;->getAlpha()I

    .line 120
    .line 121
    .line 122
    move-result v1

    .line 123
    iput v1, p0, Lcom/mycompany/app/wview/WebDownView;->o:I

    .line 124
    .line 125
    goto :goto_5

    .line 126
    :cond_5
    iput-object v6, p0, Lcom/mycompany/app/wview/WebDownView;->p:Landroid/graphics/Paint;

    .line 127
    .line 128
    :goto_5
    move v5, v2

    .line 129
    :cond_6
    if-eqz v0, :cond_7

    .line 130
    .line 131
    const v3, -0x3f8a8a8b

    .line 132
    .line 133
    .line 134
    :cond_7
    iget v0, p0, Lcom/mycompany/app/wview/WebDownView;->t:I

    .line 135
    .line 136
    if-eq v0, v3, :cond_9

    .line 137
    .line 138
    iput v3, p0, Lcom/mycompany/app/wview/WebDownView;->t:I

    .line 139
    .line 140
    if-eqz v3, :cond_8

    .line 141
    .line 142
    new-instance v0, Landroid/graphics/Paint;

    .line 143
    .line 144
    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 145
    .line 146
    .line 147
    iput-object v0, p0, Lcom/mycompany/app/wview/WebDownView;->u:Landroid/graphics/Paint;

    .line 148
    .line 149
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 150
    .line 151
    .line 152
    iget-object v0, p0, Lcom/mycompany/app/wview/WebDownView;->u:Landroid/graphics/Paint;

    .line 153
    .line 154
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    .line 155
    .line 156
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 157
    .line 158
    .line 159
    iget-object v0, p0, Lcom/mycompany/app/wview/WebDownView;->u:Landroid/graphics/Paint;

    .line 160
    .line 161
    sget v1, Lcom/mycompany/app/main/MainApp;->n1:I

    .line 162
    .line 163
    int-to-float v1, v1

    .line 164
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 165
    .line 166
    .line 167
    iget-object v0, p0, Lcom/mycompany/app/wview/WebDownView;->u:Landroid/graphics/Paint;

    .line 168
    .line 169
    iget v1, p0, Lcom/mycompany/app/wview/WebDownView;->t:I

    .line 170
    .line 171
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 172
    .line 173
    .line 174
    goto :goto_6

    .line 175
    :cond_8
    iput-object v6, p0, Lcom/mycompany/app/wview/WebDownView;->u:Landroid/graphics/Paint;

    .line 176
    .line 177
    :goto_6
    move v5, v2

    .line 178
    :cond_9
    iget-object v0, p0, Lcom/mycompany/app/wview/WebDownView;->A:Landroid/graphics/drawable/Drawable;

    .line 179
    .line 180
    if-eqz v0, :cond_b

    .line 181
    .line 182
    if-eqz v4, :cond_a

    .line 183
    .line 184
    const/16 v1, 0xb0

    .line 185
    .line 186
    goto :goto_7

    .line 187
    :cond_a
    const/16 v1, 0xff

    .line 188
    .line 189
    :goto_7
    iget v3, p0, Lcom/mycompany/app/wview/WebDownView;->z:I

    .line 190
    .line 191
    if-eq v3, v1, :cond_b

    .line 192
    .line 193
    iput v1, p0, Lcom/mycompany/app/wview/WebDownView;->z:I

    .line 194
    .line 195
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 196
    .line 197
    .line 198
    goto :goto_8

    .line 199
    :cond_b
    move v2, v5

    .line 200
    :goto_8
    if-eqz v2, :cond_c

    .line 201
    .line 202
    invoke-virtual {p0}, Lcom/mycompany/app/wview/WebDownView;->invalidate()V

    .line 203
    .line 204
    .line 205
    :cond_c
    return-void
.end method

.method public final layout(IIII)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->layout(IIII)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/mycompany/app/wview/WebDownView;->q()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public final m()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/mycompany/app/wview/WebDownView;->g:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-static {v1, v2}, Lcom/mycompany/app/main/MainUtil;->t4(IZ)I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    invoke-static {v1, v2}, Lcom/mycompany/app/main/MainUtil;->d4(IZ)I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    :goto_0
    iget v1, p0, Lcom/mycompany/app/wview/WebDownView;->x:I

    .line 17
    .line 18
    if-ne v1, v0, :cond_1

    .line 19
    .line 20
    return-void

    .line 21
    :cond_1
    iput v0, p0, Lcom/mycompany/app/wview/WebDownView;->x:I

    .line 22
    .line 23
    invoke-direct {p0, v0}, Lcom/mycompany/app/wview/WebDownView;->setDrawIcon(I)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0}, Lcom/mycompany/app/wview/WebDownView;->invalidate()V

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method public final n()V
    .locals 5

    .line 1
    iget v0, p0, Lcom/mycompany/app/wview/WebDownView;->U:I

    .line 2
    .line 3
    const/16 v1, -0x4d2

    .line 4
    .line 5
    if-ne v0, v1, :cond_0

    .line 6
    .line 7
    iget v2, p0, Lcom/mycompany/app/wview/WebDownView;->V:I

    .line 8
    .line 9
    if-ne v2, v1, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iget v2, p0, Lcom/mycompany/app/wview/WebDownView;->I:I

    .line 13
    .line 14
    int-to-float v2, v2

    .line 15
    int-to-float v0, v0

    .line 16
    iget v3, p0, Lcom/mycompany/app/wview/WebDownView;->J:I

    .line 17
    .line 18
    int-to-float v3, v3

    .line 19
    iget v4, p0, Lcom/mycompany/app/wview/WebDownView;->V:I

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
    iput v1, p0, Lcom/mycompany/app/wview/WebDownView;->U:I

    .line 35
    .line 36
    iput v1, p0, Lcom/mycompany/app/wview/WebDownView;->V:I

    .line 37
    .line 38
    iget-object v0, p0, Lcom/mycompany/app/wview/WebDownView;->h:Lcom/mycompany/app/wview/WebFltView$FltViewListener;

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

.method public final o(II)V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lcom/mycompany/app/wview/WebDownView;->c:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget v0, p0, Lcom/mycompany/app/wview/WebDownView;->M:I

    .line 7
    .line 8
    add-int v1, p1, v0

    .line 9
    .line 10
    iget v2, p0, Lcom/mycompany/app/wview/WebDownView;->Q:I

    .line 11
    .line 12
    if-le v1, v2, :cond_1

    .line 13
    .line 14
    sub-int p1, v2, v0

    .line 15
    .line 16
    :cond_1
    iget v1, p0, Lcom/mycompany/app/wview/WebDownView;->N:I

    .line 17
    .line 18
    add-int v3, p2, v1

    .line 19
    .line 20
    iget v4, p0, Lcom/mycompany/app/wview/WebDownView;->R:I

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
    iget-boolean v3, p0, Lcom/mycompany/app/wview/WebDownView;->g:Z

    .line 34
    .line 35
    if-eqz v3, :cond_5

    .line 36
    .line 37
    int-to-float v3, p1

    .line 38
    sput v3, Lcom/mycompany/app/pref/PrefZtri;->u:F

    .line 39
    .line 40
    add-int/2addr v0, p1

    .line 41
    sub-int/2addr v2, v0

    .line 42
    int-to-float v0, v2

    .line 43
    sput v0, Lcom/mycompany/app/pref/PrefZtri;->v:F

    .line 44
    .line 45
    int-to-float v0, p2

    .line 46
    sput v0, Lcom/mycompany/app/pref/PrefZtri;->w:F

    .line 47
    .line 48
    add-int/2addr v1, p2

    .line 49
    sub-int/2addr v4, v1

    .line 50
    int-to-float v0, v4

    .line 51
    sput v0, Lcom/mycompany/app/pref/PrefZtri;->x:F

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_5
    int-to-float v3, p1

    .line 55
    sput v3, Lcom/mycompany/app/pref/PrefZtri;->y:F

    .line 56
    .line 57
    add-int/2addr v0, p1

    .line 58
    sub-int/2addr v2, v0

    .line 59
    int-to-float v0, v2

    .line 60
    sput v0, Lcom/mycompany/app/pref/PrefZtri;->z:F

    .line 61
    .line 62
    int-to-float v0, p2

    .line 63
    sput v0, Lcom/mycompany/app/pref/PrefZtri;->A:F

    .line 64
    .line 65
    add-int/2addr v1, p2

    .line 66
    sub-int/2addr v4, v1

    .line 67
    int-to-float v0, v4

    .line 68
    sput v0, Lcom/mycompany/app/pref/PrefZtri;->B:F

    .line 69
    .line 70
    :goto_0
    iget v0, p0, Lcom/mycompany/app/wview/WebDownView;->O:I

    .line 71
    .line 72
    add-int/2addr p1, v0

    .line 73
    int-to-float p1, p1

    .line 74
    invoke-virtual {p0, p1}, Landroid/view/View;->setX(F)V

    .line 75
    .line 76
    .line 77
    iget p1, p0, Lcom/mycompany/app/wview/WebDownView;->P:I

    .line 78
    .line 79
    add-int/2addr p2, p1

    .line 80
    int-to-float p1, p2

    .line 81
    invoke-virtual {p0, p1}, Landroid/view/View;->setY(F)V

    .line 82
    .line 83
    .line 84
    return-void
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/mycompany/app/wview/WebDownView;->q()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public final onDetachedFromWindow()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/mycompany/app/wview/WebDownView;->f()V

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
    iget-boolean v0, p0, Lcom/mycompany/app/wview/WebDownView;->c:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto/16 :goto_5

    .line 6
    .line 7
    :cond_0
    iget-boolean v0, p0, Lcom/mycompany/app/wview/WebDownView;->H:Z

    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    const/4 v2, 0x0

    .line 11
    if-nez v0, :cond_2

    .line 12
    .line 13
    iget-object v0, p0, Lcom/mycompany/app/wview/WebDownView;->q:Landroid/animation/ValueAnimator;

    .line 14
    .line 15
    if-nez v0, :cond_2

    .line 16
    .line 17
    iget-object v0, p0, Lcom/mycompany/app/wview/WebDownView;->r:Landroid/animation/ValueAnimator;

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
    iget-object v3, p0, Lcom/mycompany/app/wview/WebDownView;->l:Landroid/graphics/Paint;

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
    iget v3, p0, Lcom/mycompany/app/wview/WebDownView;->k:I

    .line 34
    .line 35
    int-to-float v3, v3

    .line 36
    const/high16 v5, 0x3f800000    # 1.0f

    .line 37
    .line 38
    iget v6, p0, Lcom/mycompany/app/wview/WebDownView;->s:F

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
    iget v5, p0, Lcom/mycompany/app/wview/WebDownView;->k:I

    .line 48
    .line 49
    if-le v3, v5, :cond_3

    .line 50
    .line 51
    move v3, v5

    .line 52
    :cond_3
    iget-object v5, p0, Lcom/mycompany/app/wview/WebDownView;->l:Landroid/graphics/Paint;

    .line 53
    .line 54
    invoke-virtual {v5, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 55
    .line 56
    .line 57
    goto :goto_2

    .line 58
    :cond_4
    iget v5, p0, Lcom/mycompany/app/wview/WebDownView;->k:I

    .line 59
    .line 60
    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 61
    .line 62
    .line 63
    :goto_2
    iget v3, p0, Lcom/mycompany/app/wview/WebDownView;->i:I

    .line 64
    .line 65
    int-to-float v3, v3

    .line 66
    iget-object v5, p0, Lcom/mycompany/app/wview/WebDownView;->l:Landroid/graphics/Paint;

    .line 67
    .line 68
    iget v6, p0, Lcom/mycompany/app/wview/WebDownView;->v:F

    .line 69
    .line 70
    iget v7, p0, Lcom/mycompany/app/wview/WebDownView;->w:F

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
    iget-object v0, p0, Lcom/mycompany/app/wview/WebDownView;->p:Landroid/graphics/Paint;

    .line 78
    .line 79
    if-eqz v0, :cond_6

    .line 80
    .line 81
    iget v2, p0, Lcom/mycompany/app/wview/WebDownView;->o:I

    .line 82
    .line 83
    int-to-float v2, v2

    .line 84
    iget v3, p0, Lcom/mycompany/app/wview/WebDownView;->s:F

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
    iget v0, p0, Lcom/mycompany/app/wview/WebDownView;->s:F

    .line 103
    .line 104
    iget v2, p0, Lcom/mycompany/app/wview/WebDownView;->v:F

    .line 105
    .line 106
    iget v3, p0, Lcom/mycompany/app/wview/WebDownView;->w:F

    .line 107
    .line 108
    invoke-virtual {p1, v0, v0, v2, v3}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 109
    .line 110
    .line 111
    iget v0, p0, Lcom/mycompany/app/wview/WebDownView;->m:I

    .line 112
    .line 113
    int-to-float v0, v0

    .line 114
    iget-object v2, p0, Lcom/mycompany/app/wview/WebDownView;->p:Landroid/graphics/Paint;

    .line 115
    .line 116
    iget v3, p0, Lcom/mycompany/app/wview/WebDownView;->v:F

    .line 117
    .line 118
    iget v4, p0, Lcom/mycompany/app/wview/WebDownView;->w:F

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
    iget-object v0, p0, Lcom/mycompany/app/wview/WebDownView;->u:Landroid/graphics/Paint;

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
    iget v3, p0, Lcom/mycompany/app/wview/WebDownView;->m:I

    .line 138
    .line 139
    goto :goto_4

    .line 140
    :cond_7
    iget v3, p0, Lcom/mycompany/app/wview/WebDownView;->i:I

    .line 141
    .line 142
    :goto_4
    int-to-float v3, v3

    .line 143
    sub-float/2addr v3, v2

    .line 144
    iget v2, p0, Lcom/mycompany/app/wview/WebDownView;->v:F

    .line 145
    .line 146
    iget v4, p0, Lcom/mycompany/app/wview/WebDownView;->w:F

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
    iget-object v0, p0, Lcom/mycompany/app/wview/WebDownView;->A:Landroid/graphics/drawable/Drawable;

    .line 157
    .line 158
    if-eqz v0, :cond_a

    .line 159
    .line 160
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 161
    .line 162
    .line 163
    :cond_a
    iget-object v0, p0, Lcom/mycompany/app/wview/WebDownView;->B:Landroid/graphics/Paint;

    .line 164
    .line 165
    if-eqz v0, :cond_c

    .line 166
    .line 167
    iget-boolean v1, p0, Lcom/mycompany/app/wview/WebDownView;->E:Z

    .line 168
    .line 169
    if-eqz v1, :cond_b

    .line 170
    .line 171
    iget v1, p0, Lcom/mycompany/app/wview/WebDownView;->D:F

    .line 172
    .line 173
    iget v2, p0, Lcom/mycompany/app/wview/WebDownView;->v:F

    .line 174
    .line 175
    add-float/2addr v2, v1

    .line 176
    iget v3, p0, Lcom/mycompany/app/wview/WebDownView;->w:F

    .line 177
    .line 178
    sub-float/2addr v3, v1

    .line 179
    iget v1, p0, Lcom/mycompany/app/wview/WebDownView;->C:F

    .line 180
    .line 181
    invoke-virtual {p1, v2, v3, v1, v0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 182
    .line 183
    .line 184
    return-void

    .line 185
    :cond_b
    iget v1, p0, Lcom/mycompany/app/wview/WebDownView;->D:F

    .line 186
    .line 187
    iget v2, p0, Lcom/mycompany/app/wview/WebDownView;->v:F

    .line 188
    .line 189
    sub-float/2addr v2, v1

    .line 190
    iget v3, p0, Lcom/mycompany/app/wview/WebDownView;->w:F

    .line 191
    .line 192
    sub-float/2addr v3, v1

    .line 193
    iget v1, p0, Lcom/mycompany/app/wview/WebDownView;->C:F

    .line 194
    .line 195
    invoke-virtual {p1, v2, v3, v1, v0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 196
    .line 197
    .line 198
    :cond_c
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
    invoke-virtual {p0}, Lcom/mycompany/app/wview/WebDownView;->q()V

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
    iget-object p2, p1, Lcom/mycompany/app/wview/WebDownView;->c0:Landroid/graphics/Rect;

    .line 23
    .line 24
    if-eqz p2, :cond_2

    .line 25
    .line 26
    iget-object v1, p1, Lcom/mycompany/app/wview/WebDownView;->d0:Ljava/util/ArrayList;

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
    iget-object p2, p1, Lcom/mycompany/app/wview/WebDownView;->d0:Ljava/util/ArrayList;

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
    invoke-virtual {p0}, Lcom/mycompany/app/wview/WebDownView;->q()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    .line 1
    iget-boolean v0, p0, Lcom/mycompany/app/wview/WebDownView;->c:Z

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
    iget-boolean v1, p0, Lcom/mycompany/app/wview/WebDownView;->g:Z

    .line 15
    .line 16
    const/4 v2, 0x0

    .line 17
    const/4 v3, 0x1

    .line 18
    if-eqz v0, :cond_e

    .line 19
    .line 20
    if-eq v0, v3, :cond_9

    .line 21
    .line 22
    const/4 v4, 0x2

    .line 23
    if-eq v0, v4, :cond_1

    .line 24
    .line 25
    const/4 v3, 0x3

    .line 26
    if-eq v0, v3, :cond_a

    .line 27
    .line 28
    goto/16 :goto_2

    .line 29
    .line 30
    :cond_1
    iget-boolean v0, p0, Lcom/mycompany/app/wview/WebDownView;->H:Z

    .line 31
    .line 32
    if-nez v0, :cond_2

    .line 33
    .line 34
    invoke-virtual {p0}, Lcom/mycompany/app/wview/WebDownView;->g()V

    .line 35
    .line 36
    .line 37
    iput-boolean v2, p0, Lcom/mycompany/app/wview/WebDownView;->T:Z

    .line 38
    .line 39
    invoke-virtual {p0}, Lcom/mycompany/app/wview/WebDownView;->k()V

    .line 40
    .line 41
    .line 42
    goto/16 :goto_2

    .line 43
    .line 44
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    .line 49
    .line 50
    .line 51
    move-result v1

    .line 52
    sget-boolean v4, Lcom/mycompany/app/pref/PrefZtri;->t0:Z

    .line 53
    .line 54
    const/high16 v5, 0x40000000    # 2.0f

    .line 55
    .line 56
    if-eqz v4, :cond_5

    .line 57
    .line 58
    iget-boolean v3, p0, Lcom/mycompany/app/wview/WebDownView;->T:Z

    .line 59
    .line 60
    if-eqz v3, :cond_4

    .line 61
    .line 62
    iget v2, p0, Lcom/mycompany/app/wview/WebDownView;->I:I

    .line 63
    .line 64
    int-to-float v2, v2

    .line 65
    iget v3, p0, Lcom/mycompany/app/wview/WebDownView;->J:I

    .line 66
    .line 67
    int-to-float v3, v3

    .line 68
    invoke-static {v2, v0, v3, v1}, Lcom/mycompany/app/main/MainUtil;->I0(FFFF)F

    .line 69
    .line 70
    .line 71
    move-result v2

    .line 72
    sget v3, Lcom/mycompany/app/main/MainApp;->G1:I

    .line 73
    .line 74
    int-to-float v3, v3

    .line 75
    div-float/2addr v3, v5

    .line 76
    cmpg-float v2, v2, v3

    .line 77
    .line 78
    if-gez v2, :cond_3

    .line 79
    .line 80
    goto/16 :goto_2

    .line 81
    .line 82
    :cond_3
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    .line 83
    .line 84
    .line 85
    move-result v0

    .line 86
    iput v0, p0, Lcom/mycompany/app/wview/WebDownView;->I:I

    .line 87
    .line 88
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    .line 89
    .line 90
    .line 91
    move-result v0

    .line 92
    iput v0, p0, Lcom/mycompany/app/wview/WebDownView;->J:I

    .line 93
    .line 94
    iget v1, p0, Lcom/mycompany/app/wview/WebDownView;->I:I

    .line 95
    .line 96
    iget v2, p0, Lcom/mycompany/app/wview/WebDownView;->K:I

    .line 97
    .line 98
    add-int/2addr v1, v2

    .line 99
    iget v2, p0, Lcom/mycompany/app/wview/WebDownView;->L:I

    .line 100
    .line 101
    add-int/2addr v0, v2

    .line 102
    invoke-virtual {p0, v1, v0}, Lcom/mycompany/app/wview/WebDownView;->o(II)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {p0}, Lcom/mycompany/app/wview/WebDownView;->n()V

    .line 106
    .line 107
    .line 108
    goto/16 :goto_2

    .line 109
    .line 110
    :cond_4
    iget-boolean v3, p0, Lcom/mycompany/app/wview/WebDownView;->S:Z

    .line 111
    .line 112
    if-eqz v3, :cond_10

    .line 113
    .line 114
    float-to-int v0, v0

    .line 115
    float-to-int v1, v1

    .line 116
    sget v3, Lcom/mycompany/app/main/MainApp;->C1:I

    .line 117
    .line 118
    invoke-static {v0, v1, v3, p0}, Lcom/mycompany/app/main/MainUtil;->J5(IIILandroid/view/View;)Z

    .line 119
    .line 120
    .line 121
    move-result v0

    .line 122
    if-nez v0, :cond_10

    .line 123
    .line 124
    iput-boolean v2, p0, Lcom/mycompany/app/wview/WebDownView;->H:Z

    .line 125
    .line 126
    invoke-virtual {p0}, Lcom/mycompany/app/wview/WebDownView;->g()V

    .line 127
    .line 128
    .line 129
    iput-boolean v2, p0, Lcom/mycompany/app/wview/WebDownView;->T:Z

    .line 130
    .line 131
    invoke-virtual {p0}, Lcom/mycompany/app/wview/WebDownView;->k()V

    .line 132
    .line 133
    .line 134
    goto/16 :goto_2

    .line 135
    .line 136
    :cond_5
    iget v2, p0, Lcom/mycompany/app/wview/WebDownView;->I:I

    .line 137
    .line 138
    int-to-float v2, v2

    .line 139
    iget v4, p0, Lcom/mycompany/app/wview/WebDownView;->J:I

    .line 140
    .line 141
    int-to-float v4, v4

    .line 142
    invoke-static {v2, v0, v4, v1}, Lcom/mycompany/app/main/MainUtil;->I0(FFFF)F

    .line 143
    .line 144
    .line 145
    move-result v2

    .line 146
    iget-boolean v4, p0, Lcom/mycompany/app/wview/WebDownView;->T:Z

    .line 147
    .line 148
    if-nez v4, :cond_7

    .line 149
    .line 150
    sget v4, Lcom/mycompany/app/main/MainApp;->G1:I

    .line 151
    .line 152
    int-to-float v4, v4

    .line 153
    cmpg-float v4, v2, v4

    .line 154
    .line 155
    if-gez v4, :cond_6

    .line 156
    .line 157
    goto/16 :goto_2

    .line 158
    .line 159
    :cond_6
    iput-boolean v3, p0, Lcom/mycompany/app/wview/WebDownView;->T:Z

    .line 160
    .line 161
    iget v3, p0, Lcom/mycompany/app/wview/WebDownView;->I:I

    .line 162
    .line 163
    iput v3, p0, Lcom/mycompany/app/wview/WebDownView;->U:I

    .line 164
    .line 165
    iget v3, p0, Lcom/mycompany/app/wview/WebDownView;->J:I

    .line 166
    .line 167
    iput v3, p0, Lcom/mycompany/app/wview/WebDownView;->V:I

    .line 168
    .line 169
    new-instance v3, Lcom/mycompany/app/wview/WebDownView$20;

    .line 170
    .line 171
    invoke-direct {v3, p0}, Lcom/mycompany/app/wview/WebDownView$20;-><init>(Lcom/mycompany/app/wview/WebDownView;)V

    .line 172
    .line 173
    .line 174
    invoke-virtual {p0, v3}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 175
    .line 176
    .line 177
    :cond_7
    sget v3, Lcom/mycompany/app/main/MainApp;->G1:I

    .line 178
    .line 179
    int-to-float v3, v3

    .line 180
    div-float/2addr v3, v5

    .line 181
    cmpg-float v2, v2, v3

    .line 182
    .line 183
    if-gez v2, :cond_8

    .line 184
    .line 185
    goto/16 :goto_2

    .line 186
    .line 187
    :cond_8
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    .line 188
    .line 189
    .line 190
    move-result v0

    .line 191
    iput v0, p0, Lcom/mycompany/app/wview/WebDownView;->I:I

    .line 192
    .line 193
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    .line 194
    .line 195
    .line 196
    move-result v0

    .line 197
    iput v0, p0, Lcom/mycompany/app/wview/WebDownView;->J:I

    .line 198
    .line 199
    iget v1, p0, Lcom/mycompany/app/wview/WebDownView;->I:I

    .line 200
    .line 201
    iget v2, p0, Lcom/mycompany/app/wview/WebDownView;->K:I

    .line 202
    .line 203
    add-int/2addr v1, v2

    .line 204
    iget v2, p0, Lcom/mycompany/app/wview/WebDownView;->L:I

    .line 205
    .line 206
    add-int/2addr v0, v2

    .line 207
    invoke-virtual {p0, v1, v0}, Lcom/mycompany/app/wview/WebDownView;->o(II)V

    .line 208
    .line 209
    .line 210
    invoke-virtual {p0}, Lcom/mycompany/app/wview/WebDownView;->n()V

    .line 211
    .line 212
    .line 213
    goto/16 :goto_2

    .line 214
    .line 215
    :cond_9
    iget-boolean v0, p0, Lcom/mycompany/app/wview/WebDownView;->S:Z

    .line 216
    .line 217
    if-eqz v0, :cond_a

    .line 218
    .line 219
    iget-boolean v0, p0, Lcom/mycompany/app/wview/WebDownView;->T:Z

    .line 220
    .line 221
    if-nez v0, :cond_a

    .line 222
    .line 223
    iget-object v0, p0, Lcom/mycompany/app/wview/WebDownView;->h:Lcom/mycompany/app/wview/WebFltView$FltViewListener;

    .line 224
    .line 225
    if-eqz v0, :cond_a

    .line 226
    .line 227
    new-instance v0, Lcom/mycompany/app/wview/WebDownView$21;

    .line 228
    .line 229
    invoke-direct {v0, p0}, Lcom/mycompany/app/wview/WebDownView$21;-><init>(Lcom/mycompany/app/wview/WebDownView;)V

    .line 230
    .line 231
    .line 232
    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 233
    .line 234
    .line 235
    :cond_a
    iget-boolean v0, p0, Lcom/mycompany/app/wview/WebDownView;->H:Z

    .line 236
    .line 237
    if-nez v0, :cond_b

    .line 238
    .line 239
    invoke-virtual {p0}, Lcom/mycompany/app/wview/WebDownView;->g()V

    .line 240
    .line 241
    .line 242
    iput-boolean v2, p0, Lcom/mycompany/app/wview/WebDownView;->T:Z

    .line 243
    .line 244
    invoke-virtual {p0}, Lcom/mycompany/app/wview/WebDownView;->k()V

    .line 245
    .line 246
    .line 247
    goto/16 :goto_2

    .line 248
    .line 249
    :cond_b
    iget-boolean v0, p0, Lcom/mycompany/app/wview/WebDownView;->T:Z

    .line 250
    .line 251
    if-eqz v0, :cond_d

    .line 252
    .line 253
    if-eqz v1, :cond_c

    .line 254
    .line 255
    iget-object v0, p0, Lcom/mycompany/app/wview/WebDownView;->f:Landroid/content/Context;

    .line 256
    .line 257
    invoke-static {v0}, Lcom/mycompany/app/pref/PrefZtri;->u(Landroid/content/Context;)V

    .line 258
    .line 259
    .line 260
    goto :goto_0

    .line 261
    :cond_c
    iget-object v0, p0, Lcom/mycompany/app/wview/WebDownView;->f:Landroid/content/Context;

    .line 262
    .line 263
    invoke-static {v0}, Lcom/mycompany/app/pref/PrefZtri;->t(Landroid/content/Context;)V

    .line 264
    .line 265
    .line 266
    :cond_d
    :goto_0
    iput-boolean v2, p0, Lcom/mycompany/app/wview/WebDownView;->H:Z

    .line 267
    .line 268
    invoke-virtual {p0}, Lcom/mycompany/app/wview/WebDownView;->g()V

    .line 269
    .line 270
    .line 271
    iput-boolean v2, p0, Lcom/mycompany/app/wview/WebDownView;->T:Z

    .line 272
    .line 273
    invoke-virtual {p0}, Lcom/mycompany/app/wview/WebDownView;->k()V

    .line 274
    .line 275
    .line 276
    invoke-virtual {p0}, Lcom/mycompany/app/wview/WebDownView;->invalidate()V

    .line 277
    .line 278
    .line 279
    goto :goto_2

    .line 280
    :cond_e
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    .line 281
    .line 282
    .line 283
    move-result v0

    .line 284
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    .line 285
    .line 286
    .line 287
    move-result v4

    .line 288
    iput-boolean v3, p0, Lcom/mycompany/app/wview/WebDownView;->H:Z

    .line 289
    .line 290
    iput-boolean v3, p0, Lcom/mycompany/app/wview/WebDownView;->S:Z

    .line 291
    .line 292
    iput-boolean v2, p0, Lcom/mycompany/app/wview/WebDownView;->T:Z

    .line 293
    .line 294
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    .line 295
    .line 296
    .line 297
    move-result v0

    .line 298
    iput v0, p0, Lcom/mycompany/app/wview/WebDownView;->I:I

    .line 299
    .line 300
    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    .line 301
    .line 302
    .line 303
    move-result v0

    .line 304
    iput v0, p0, Lcom/mycompany/app/wview/WebDownView;->J:I

    .line 305
    .line 306
    if-eqz v1, :cond_f

    .line 307
    .line 308
    iget v0, p0, Lcom/mycompany/app/wview/WebDownView;->Q:I

    .line 309
    .line 310
    iget v1, p0, Lcom/mycompany/app/wview/WebDownView;->M:I

    .line 311
    .line 312
    sub-int/2addr v0, v1

    .line 313
    int-to-float v0, v0

    .line 314
    sget v1, Lcom/mycompany/app/pref/PrefZtri;->u:F

    .line 315
    .line 316
    sget v3, Lcom/mycompany/app/pref/PrefZtri;->v:F

    .line 317
    .line 318
    invoke-static {v1, v3, v0, v1}, Lcom/mycompany/app/dialog/a;->a(FFFF)I

    .line 319
    .line 320
    .line 321
    move-result v0

    .line 322
    iget v1, p0, Lcom/mycompany/app/wview/WebDownView;->R:I

    .line 323
    .line 324
    iget v3, p0, Lcom/mycompany/app/wview/WebDownView;->N:I

    .line 325
    .line 326
    sub-int/2addr v1, v3

    .line 327
    int-to-float v1, v1

    .line 328
    sget v3, Lcom/mycompany/app/pref/PrefZtri;->w:F

    .line 329
    .line 330
    sget v4, Lcom/mycompany/app/pref/PrefZtri;->x:F

    .line 331
    .line 332
    invoke-static {v3, v4, v1, v3}, Lcom/mycompany/app/dialog/a;->a(FFFF)I

    .line 333
    .line 334
    .line 335
    move-result v1

    .line 336
    goto :goto_1

    .line 337
    :cond_f
    iget v0, p0, Lcom/mycompany/app/wview/WebDownView;->Q:I

    .line 338
    .line 339
    iget v1, p0, Lcom/mycompany/app/wview/WebDownView;->M:I

    .line 340
    .line 341
    sub-int/2addr v0, v1

    .line 342
    int-to-float v0, v0

    .line 343
    sget v1, Lcom/mycompany/app/pref/PrefZtri;->y:F

    .line 344
    .line 345
    sget v3, Lcom/mycompany/app/pref/PrefZtri;->z:F

    .line 346
    .line 347
    invoke-static {v1, v3, v0, v1}, Lcom/mycompany/app/dialog/a;->a(FFFF)I

    .line 348
    .line 349
    .line 350
    move-result v0

    .line 351
    iget v1, p0, Lcom/mycompany/app/wview/WebDownView;->R:I

    .line 352
    .line 353
    iget v3, p0, Lcom/mycompany/app/wview/WebDownView;->N:I

    .line 354
    .line 355
    sub-int/2addr v1, v3

    .line 356
    int-to-float v1, v1

    .line 357
    sget v3, Lcom/mycompany/app/pref/PrefZtri;->A:F

    .line 358
    .line 359
    sget v4, Lcom/mycompany/app/pref/PrefZtri;->B:F

    .line 360
    .line 361
    invoke-static {v3, v4, v1, v3}, Lcom/mycompany/app/dialog/a;->a(FFFF)I

    .line 362
    .line 363
    .line 364
    move-result v1

    .line 365
    :goto_1
    iget v3, p0, Lcom/mycompany/app/wview/WebDownView;->I:I

    .line 366
    .line 367
    sub-int/2addr v0, v3

    .line 368
    iput v0, p0, Lcom/mycompany/app/wview/WebDownView;->K:I

    .line 369
    .line 370
    iget v0, p0, Lcom/mycompany/app/wview/WebDownView;->J:I

    .line 371
    .line 372
    sub-int/2addr v1, v0

    .line 373
    iput v1, p0, Lcom/mycompany/app/wview/WebDownView;->L:I

    .line 374
    .line 375
    invoke-virtual {p0}, Lcom/mycompany/app/wview/WebDownView;->u()V

    .line 376
    .line 377
    .line 378
    iget-object v0, p0, Lcom/mycompany/app/wview/WebDownView;->W:Lcom/mycompany/app/wview/WebDownView$EventHandler;

    .line 379
    .line 380
    if-eqz v0, :cond_10

    .line 381
    .line 382
    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 383
    .line 384
    .line 385
    :cond_10
    :goto_2
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 386
    .line 387
    .line 388
    move-result p1

    .line 389
    return p1
.end method

.method public final p(Z)V
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget-object p1, p0, Lcom/mycompany/app/wview/WebDownView;->B:Landroid/graphics/Paint;

    .line 4
    .line 5
    if-nez p1, :cond_1

    .line 6
    .line 7
    new-instance p1, Landroid/graphics/Paint;

    .line 8
    .line 9
    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    .line 10
    .line 11
    .line 12
    iput-object p1, p0, Lcom/mycompany/app/wview/WebDownView;->B:Landroid/graphics/Paint;

    .line 13
    .line 14
    const/4 v0, 0x1

    .line 15
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 16
    .line 17
    .line 18
    iget-object p1, p0, Lcom/mycompany/app/wview/WebDownView;->B:Landroid/graphics/Paint;

    .line 19
    .line 20
    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    .line 21
    .line 22
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 23
    .line 24
    .line 25
    iget-object p1, p0, Lcom/mycompany/app/wview/WebDownView;->B:Landroid/graphics/Paint;

    .line 26
    .line 27
    const/high16 v0, -0x10000

    .line 28
    .line 29
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    invoke-static {p1}, Lcom/mycompany/app/main/MainUtil;->O5(Landroid/content/Context;)Z

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    iput-boolean v0, p0, Lcom/mycompany/app/wview/WebDownView;->E:Z

    .line 41
    .line 42
    const/high16 v0, 0x40400000    # 3.0f

    .line 43
    .line 44
    invoke-static {p1, v0}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    iput v0, p0, Lcom/mycompany/app/wview/WebDownView;->C:F

    .line 49
    .line 50
    const/high16 v0, 0x41300000    # 11.0f

    .line 51
    .line 52
    invoke-static {p1, v0}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 53
    .line 54
    .line 55
    move-result p1

    .line 56
    iput p1, p0, Lcom/mycompany/app/wview/WebDownView;->D:F

    .line 57
    .line 58
    invoke-virtual {p0}, Lcom/mycompany/app/wview/WebDownView;->invalidate()V

    .line 59
    .line 60
    .line 61
    return-void

    .line 62
    :cond_0
    iget-object p1, p0, Lcom/mycompany/app/wview/WebDownView;->B:Landroid/graphics/Paint;

    .line 63
    .line 64
    if-eqz p1, :cond_1

    .line 65
    .line 66
    const/4 p1, 0x0

    .line 67
    iput-object p1, p0, Lcom/mycompany/app/wview/WebDownView;->B:Landroid/graphics/Paint;

    .line 68
    .line 69
    invoke-virtual {p0}, Lcom/mycompany/app/wview/WebDownView;->invalidate()V

    .line 70
    .line 71
    .line 72
    :cond_1
    return-void
.end method

.method public final q()V
    .locals 8

    .line 1
    iget-boolean v0, p0, Lcom/mycompany/app/wview/WebDownView;->c:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto/16 :goto_2

    .line 6
    .line 7
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-eqz v0, :cond_8

    .line 12
    .line 13
    instance-of v1, v0, Landroid/view/View;

    .line 14
    .line 15
    if-nez v1, :cond_1

    .line 16
    .line 17
    goto/16 :goto_2

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
    iget v0, p0, Lcom/mycompany/app/wview/WebDownView;->O:I

    .line 50
    .line 51
    if-ne v1, v0, :cond_2

    .line 52
    .line 53
    iget v0, p0, Lcom/mycompany/app/wview/WebDownView;->P:I

    .line 54
    .line 55
    if-ne v2, v0, :cond_2

    .line 56
    .line 57
    iget v0, p0, Lcom/mycompany/app/wview/WebDownView;->Q:I

    .line 58
    .line 59
    if-ne v3, v0, :cond_2

    .line 60
    .line 61
    iget v0, p0, Lcom/mycompany/app/wview/WebDownView;->R:I

    .line 62
    .line 63
    if-ne v4, v0, :cond_2

    .line 64
    .line 65
    goto/16 :goto_2

    .line 66
    .line 67
    :cond_2
    iput v1, p0, Lcom/mycompany/app/wview/WebDownView;->O:I

    .line 68
    .line 69
    iput v2, p0, Lcom/mycompany/app/wview/WebDownView;->P:I

    .line 70
    .line 71
    iput v3, p0, Lcom/mycompany/app/wview/WebDownView;->Q:I

    .line 72
    .line 73
    iput v4, p0, Lcom/mycompany/app/wview/WebDownView;->R:I

    .line 74
    .line 75
    iget-boolean v0, p0, Lcom/mycompany/app/wview/WebDownView;->g:Z

    .line 76
    .line 77
    const/4 v1, 0x0

    .line 78
    if-eqz v0, :cond_5

    .line 79
    .line 80
    sget v0, Lcom/mycompany/app/pref/PrefZtri;->u:F

    .line 81
    .line 82
    sget v2, Lcom/mycompany/app/pref/PrefZtri;->v:F

    .line 83
    .line 84
    sget v4, Lcom/mycompany/app/pref/PrefZtri;->w:F

    .line 85
    .line 86
    sget v5, Lcom/mycompany/app/pref/PrefZtri;->x:F

    .line 87
    .line 88
    cmpg-float v6, v0, v1

    .line 89
    .line 90
    if-gez v6, :cond_3

    .line 91
    .line 92
    cmpg-float v6, v2, v1

    .line 93
    .line 94
    if-gez v6, :cond_3

    .line 95
    .line 96
    cmpg-float v6, v4, v1

    .line 97
    .line 98
    if-gez v6, :cond_3

    .line 99
    .line 100
    cmpg-float v1, v5, v1

    .line 101
    .line 102
    if-gez v1, :cond_3

    .line 103
    .line 104
    iget v1, p0, Lcom/mycompany/app/wview/WebDownView;->M:I

    .line 105
    .line 106
    sub-int/2addr v3, v1

    .line 107
    sget v1, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 108
    .line 109
    sub-int/2addr v3, v1

    .line 110
    iget-object v1, p0, Lcom/mycompany/app/wview/WebDownView;->f:Landroid/content/Context;

    .line 111
    .line 112
    const/high16 v6, 0x43a00000    # 320.0f

    .line 113
    .line 114
    invoke-static {v1, v6}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 115
    .line 116
    .line 117
    move-result v1

    .line 118
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    .line 119
    .line 120
    .line 121
    move-result v1

    .line 122
    goto :goto_0

    .line 123
    :cond_3
    iget v1, p0, Lcom/mycompany/app/wview/WebDownView;->M:I

    .line 124
    .line 125
    sub-int/2addr v3, v1

    .line 126
    int-to-float v1, v3

    .line 127
    invoke-static {v0, v2, v1, v0}, Lcom/mycompany/app/dialog/a;->a(FFFF)I

    .line 128
    .line 129
    .line 130
    move-result v3

    .line 131
    iget v1, p0, Lcom/mycompany/app/wview/WebDownView;->R:I

    .line 132
    .line 133
    iget v6, p0, Lcom/mycompany/app/wview/WebDownView;->N:I

    .line 134
    .line 135
    sub-int/2addr v1, v6

    .line 136
    int-to-float v1, v1

    .line 137
    sget v6, Lcom/mycompany/app/pref/PrefZtri;->w:F

    .line 138
    .line 139
    sget v7, Lcom/mycompany/app/pref/PrefZtri;->x:F

    .line 140
    .line 141
    invoke-static {v6, v7, v1, v6}, Lcom/mycompany/app/dialog/a;->a(FFFF)I

    .line 142
    .line 143
    .line 144
    move-result v1

    .line 145
    :goto_0
    invoke-virtual {p0, v3, v1}, Lcom/mycompany/app/wview/WebDownView;->o(II)V

    .line 146
    .line 147
    .line 148
    sget v1, Lcom/mycompany/app/pref/PrefZtri;->u:F

    .line 149
    .line 150
    invoke-static {v0, v1}, Ljava/lang/Float;->compare(FF)I

    .line 151
    .line 152
    .line 153
    move-result v0

    .line 154
    if-nez v0, :cond_4

    .line 155
    .line 156
    sget v0, Lcom/mycompany/app/pref/PrefZtri;->v:F

    .line 157
    .line 158
    invoke-static {v2, v0}, Ljava/lang/Float;->compare(FF)I

    .line 159
    .line 160
    .line 161
    move-result v0

    .line 162
    if-nez v0, :cond_4

    .line 163
    .line 164
    sget v0, Lcom/mycompany/app/pref/PrefZtri;->w:F

    .line 165
    .line 166
    invoke-static {v4, v0}, Ljava/lang/Float;->compare(FF)I

    .line 167
    .line 168
    .line 169
    move-result v0

    .line 170
    if-nez v0, :cond_4

    .line 171
    .line 172
    sget v0, Lcom/mycompany/app/pref/PrefZtri;->x:F

    .line 173
    .line 174
    invoke-static {v5, v0}, Ljava/lang/Float;->compare(FF)I

    .line 175
    .line 176
    .line 177
    move-result v0

    .line 178
    if-eqz v0, :cond_8

    .line 179
    .line 180
    :cond_4
    iget-object v0, p0, Lcom/mycompany/app/wview/WebDownView;->f:Landroid/content/Context;

    .line 181
    .line 182
    invoke-static {v0}, Lcom/mycompany/app/pref/PrefZtri;->u(Landroid/content/Context;)V

    .line 183
    .line 184
    .line 185
    return-void

    .line 186
    :cond_5
    sget v0, Lcom/mycompany/app/pref/PrefZtri;->y:F

    .line 187
    .line 188
    sget v2, Lcom/mycompany/app/pref/PrefZtri;->z:F

    .line 189
    .line 190
    sget v5, Lcom/mycompany/app/pref/PrefZtri;->A:F

    .line 191
    .line 192
    sget v6, Lcom/mycompany/app/pref/PrefZtri;->B:F

    .line 193
    .line 194
    cmpg-float v7, v0, v1

    .line 195
    .line 196
    if-gez v7, :cond_6

    .line 197
    .line 198
    cmpg-float v7, v2, v1

    .line 199
    .line 200
    if-gez v7, :cond_6

    .line 201
    .line 202
    cmpg-float v7, v5, v1

    .line 203
    .line 204
    if-gez v7, :cond_6

    .line 205
    .line 206
    cmpg-float v1, v6, v1

    .line 207
    .line 208
    if-gez v1, :cond_6

    .line 209
    .line 210
    iget v1, p0, Lcom/mycompany/app/wview/WebDownView;->M:I

    .line 211
    .line 212
    sub-int/2addr v3, v1

    .line 213
    iget v1, p0, Lcom/mycompany/app/wview/WebDownView;->N:I

    .line 214
    .line 215
    sub-int/2addr v4, v1

    .line 216
    invoke-static {}, Lcom/mycompany/app/main/MainUtil;->j0()I

    .line 217
    .line 218
    .line 219
    move-result v1

    .line 220
    sub-int/2addr v4, v1

    .line 221
    sget v1, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 222
    .line 223
    sub-int/2addr v4, v1

    .line 224
    sget v1, Lcom/mycompany/app/main/MainApp;->G1:I

    .line 225
    .line 226
    sub-int/2addr v4, v1

    .line 227
    goto :goto_1

    .line 228
    :cond_6
    iget v1, p0, Lcom/mycompany/app/wview/WebDownView;->M:I

    .line 229
    .line 230
    sub-int/2addr v3, v1

    .line 231
    int-to-float v1, v3

    .line 232
    invoke-static {v0, v2, v1, v0}, Lcom/mycompany/app/dialog/a;->a(FFFF)I

    .line 233
    .line 234
    .line 235
    move-result v3

    .line 236
    iget v1, p0, Lcom/mycompany/app/wview/WebDownView;->R:I

    .line 237
    .line 238
    iget v4, p0, Lcom/mycompany/app/wview/WebDownView;->N:I

    .line 239
    .line 240
    sub-int/2addr v1, v4

    .line 241
    int-to-float v1, v1

    .line 242
    sget v4, Lcom/mycompany/app/pref/PrefZtri;->A:F

    .line 243
    .line 244
    sget v7, Lcom/mycompany/app/pref/PrefZtri;->B:F

    .line 245
    .line 246
    invoke-static {v4, v7, v1, v4}, Lcom/mycompany/app/dialog/a;->a(FFFF)I

    .line 247
    .line 248
    .line 249
    move-result v4

    .line 250
    :goto_1
    invoke-virtual {p0, v3, v4}, Lcom/mycompany/app/wview/WebDownView;->o(II)V

    .line 251
    .line 252
    .line 253
    sget v1, Lcom/mycompany/app/pref/PrefZtri;->y:F

    .line 254
    .line 255
    invoke-static {v0, v1}, Ljava/lang/Float;->compare(FF)I

    .line 256
    .line 257
    .line 258
    move-result v0

    .line 259
    if-nez v0, :cond_7

    .line 260
    .line 261
    sget v0, Lcom/mycompany/app/pref/PrefZtri;->z:F

    .line 262
    .line 263
    invoke-static {v2, v0}, Ljava/lang/Float;->compare(FF)I

    .line 264
    .line 265
    .line 266
    move-result v0

    .line 267
    if-nez v0, :cond_7

    .line 268
    .line 269
    sget v0, Lcom/mycompany/app/pref/PrefZtri;->A:F

    .line 270
    .line 271
    invoke-static {v5, v0}, Ljava/lang/Float;->compare(FF)I

    .line 272
    .line 273
    .line 274
    move-result v0

    .line 275
    if-nez v0, :cond_7

    .line 276
    .line 277
    sget v0, Lcom/mycompany/app/pref/PrefZtri;->B:F

    .line 278
    .line 279
    invoke-static {v6, v0}, Ljava/lang/Float;->compare(FF)I

    .line 280
    .line 281
    .line 282
    move-result v0

    .line 283
    if-eqz v0, :cond_8

    .line 284
    .line 285
    :cond_7
    iget-object v0, p0, Lcom/mycompany/app/wview/WebDownView;->f:Landroid/content/Context;

    .line 286
    .line 287
    invoke-static {v0}, Lcom/mycompany/app/pref/PrefZtri;->t(Landroid/content/Context;)V

    .line 288
    .line 289
    .line 290
    :cond_8
    :goto_2
    return-void
.end method

.method public final r()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/mycompany/app/wview/WebDownView;->k()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    invoke-virtual {p0, v0}, Lcom/mycompany/app/wview/WebDownView;->setVisibility(I)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final s()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/mycompany/app/wview/WebDownView;->b0:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget-boolean v0, p0, Lcom/mycompany/app/wview/WebDownView;->y:Z

    .line 7
    .line 8
    if-eqz v0, :cond_2

    .line 9
    .line 10
    iput-boolean v1, p0, Lcom/mycompany/app/wview/WebDownView;->y:Z

    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/mycompany/app/wview/WebDownView;->t()V

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    const/4 v0, 0x1

    .line 17
    iput-boolean v0, p0, Lcom/mycompany/app/wview/WebDownView;->a0:Z

    .line 18
    .line 19
    iget-object v2, p0, Lcom/mycompany/app/wview/WebDownView;->W:Lcom/mycompany/app/wview/WebDownView$EventHandler;

    .line 20
    .line 21
    if-eqz v2, :cond_1

    .line 22
    .line 23
    invoke-virtual {v2, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 24
    .line 25
    .line 26
    :cond_1
    invoke-virtual {p0, v1}, Lcom/mycompany/app/wview/WebDownView;->setVisibility(I)V

    .line 27
    .line 28
    .line 29
    iget-boolean v1, p0, Lcom/mycompany/app/wview/WebDownView;->y:Z

    .line 30
    .line 31
    if-eqz v1, :cond_3

    .line 32
    .line 33
    :cond_2
    return-void

    .line 34
    :cond_3
    iput-boolean v0, p0, Lcom/mycompany/app/wview/WebDownView;->y:Z

    .line 35
    .line 36
    invoke-virtual {p0}, Lcom/mycompany/app/wview/WebDownView;->u()V

    .line 37
    .line 38
    .line 39
    new-instance v0, Lcom/mycompany/app/wview/WebDownView$11;

    .line 40
    .line 41
    invoke-direct {v0, p0}, Lcom/mycompany/app/wview/WebDownView$11;-><init>(Lcom/mycompany/app/wview/WebDownView;)V

    .line 42
    .line 43
    .line 44
    const-wide/16 v1, 0x7d0

    .line 45
    .line 46
    invoke-virtual {p0, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 47
    .line 48
    .line 49
    return-void
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
    invoke-virtual {p0}, Lcom/mycompany/app/wview/WebDownView;->h()V

    .line 7
    .line 8
    .line 9
    :cond_0
    return-void
.end method

.method public setHideBlocked(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/mycompany/app/wview/WebDownView;->a0:Z

    .line 2
    .line 3
    if-ne v0, p1, :cond_0

    .line 4
    .line 5
    goto :goto_1

    .line 6
    :cond_0
    iput-boolean p1, p0, Lcom/mycompany/app/wview/WebDownView;->a0:Z

    .line 7
    .line 8
    iput-boolean p1, p0, Lcom/mycompany/app/wview/WebDownView;->b0:Z

    .line 9
    .line 10
    if-eqz p1, :cond_2

    .line 11
    .line 12
    iget-object p1, p0, Lcom/mycompany/app/wview/WebDownView;->W:Lcom/mycompany/app/wview/WebDownView$EventHandler;

    .line 13
    .line 14
    const/4 v0, 0x0

    .line 15
    if-eqz p1, :cond_1

    .line 16
    .line 17
    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 18
    .line 19
    .line 20
    :cond_1
    invoke-virtual {p0, v0}, Lcom/mycompany/app/wview/WebDownView;->setVisibility(I)V

    .line 21
    .line 22
    .line 23
    return-void

    .line 24
    :cond_2
    iget-object p1, p0, Lcom/mycompany/app/wview/WebDownView;->G:Landroid/animation/ValueAnimator;

    .line 25
    .line 26
    if-eqz p1, :cond_3

    .line 27
    .line 28
    goto :goto_1

    .line 29
    :cond_3
    iget-object p1, p0, Lcom/mycompany/app/wview/WebDownView;->F:Landroid/animation/ValueAnimator;

    .line 30
    .line 31
    if-eqz p1, :cond_4

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_4
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    .line 35
    .line 36
    .line 37
    move-result p1

    .line 38
    if-nez p1, :cond_5

    .line 39
    .line 40
    :goto_0
    invoke-virtual {p0}, Lcom/mycompany/app/wview/WebDownView;->k()V

    .line 41
    .line 42
    .line 43
    :cond_5
    :goto_1
    return-void
.end method

.method public setListener(Lcom/mycompany/app/wview/WebFltView$FltViewListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mycompany/app/wview/WebDownView;->h:Lcom/mycompany/app/wview/WebFltView$FltViewListener;

    .line 2
    .line 3
    return-void
.end method

.method public setVisibility(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/wview/WebDownView;->F:Landroid/animation/ValueAnimator;

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
    iput-object v1, p0, Lcom/mycompany/app/wview/WebDownView;->F:Landroid/animation/ValueAnimator;

    .line 10
    .line 11
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/wview/WebDownView;->G:Landroid/animation/ValueAnimator;

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 16
    .line 17
    .line 18
    iput-object v1, p0, Lcom/mycompany/app/wview/WebDownView;->G:Landroid/animation/ValueAnimator;

    .line 19
    .line 20
    :cond_1
    const/high16 v0, 0x3f800000    # 1.0f

    .line 21
    .line 22
    invoke-virtual {p0, v0}, Landroid/view/View;->setAlpha(F)V

    .line 23
    .line 24
    .line 25
    invoke-super {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 26
    .line 27
    .line 28
    if-eqz p1, :cond_2

    .line 29
    .line 30
    invoke-virtual {p0}, Lcom/mycompany/app/wview/WebDownView;->h()V

    .line 31
    .line 32
    .line 33
    iget-object p1, p0, Lcom/mycompany/app/wview/WebDownView;->h:Lcom/mycompany/app/wview/WebFltView$FltViewListener;

    .line 34
    .line 35
    if-eqz p1, :cond_2

    .line 36
    .line 37
    invoke-interface {p1}, Lcom/mycompany/app/wview/WebFltView$FltViewListener;->b()V

    .line 38
    .line 39
    .line 40
    :cond_2
    return-void
.end method

.method public final t()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/wview/WebDownView;->p:Landroid/graphics/Paint;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/wview/WebDownView;->r:Landroid/animation/ValueAnimator;

    .line 7
    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_1
    iget v0, p0, Lcom/mycompany/app/wview/WebDownView;->s:F

    .line 12
    .line 13
    const v1, 0x3f4ccccd    # 0.8f

    .line 14
    .line 15
    .line 16
    cmpg-float v2, v0, v1

    .line 17
    .line 18
    if-gtz v2, :cond_2

    .line 19
    .line 20
    :goto_0
    return-void

    .line 21
    :cond_2
    iput v0, p0, Lcom/mycompany/app/wview/WebDownView;->h0:F

    .line 22
    .line 23
    const/4 v2, 0x0

    .line 24
    iput-boolean v2, p0, Lcom/mycompany/app/wview/WebDownView;->i0:Z

    .line 25
    .line 26
    const/4 v3, 0x2

    .line 27
    new-array v3, v3, [F

    .line 28
    .line 29
    aput v0, v3, v2

    .line 30
    .line 31
    const/4 v0, 0x1

    .line 32
    aput v1, v3, v0

    .line 33
    .line 34
    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    iput-object v0, p0, Lcom/mycompany/app/wview/WebDownView;->r:Landroid/animation/ValueAnimator;

    .line 39
    .line 40
    const-wide/16 v1, 0xc8

    .line 41
    .line 42
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 43
    .line 44
    .line 45
    iget-object v0, p0, Lcom/mycompany/app/wview/WebDownView;->r:Landroid/animation/ValueAnimator;

    .line 46
    .line 47
    invoke-static {v0}, Lcom/mycompany/app/dialog/a;->r(Landroid/animation/ValueAnimator;)V

    .line 48
    .line 49
    .line 50
    iget-object v0, p0, Lcom/mycompany/app/wview/WebDownView;->r:Landroid/animation/ValueAnimator;

    .line 51
    .line 52
    new-instance v1, Lcom/mycompany/app/wview/WebDownView$7;

    .line 53
    .line 54
    invoke-direct {v1, p0}, Lcom/mycompany/app/wview/WebDownView$7;-><init>(Lcom/mycompany/app/wview/WebDownView;)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 58
    .line 59
    .line 60
    iget-object v0, p0, Lcom/mycompany/app/wview/WebDownView;->r:Landroid/animation/ValueAnimator;

    .line 61
    .line 62
    new-instance v1, Lcom/mycompany/app/wview/WebDownView$8;

    .line 63
    .line 64
    invoke-direct {v1, p0}, Lcom/mycompany/app/wview/WebDownView$8;-><init>(Lcom/mycompany/app/wview/WebDownView;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 68
    .line 69
    .line 70
    iget-object v0, p0, Lcom/mycompany/app/wview/WebDownView;->q:Landroid/animation/ValueAnimator;

    .line 71
    .line 72
    if-eqz v0, :cond_3

    .line 73
    .line 74
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 75
    .line 76
    .line 77
    :cond_3
    iget-object v0, p0, Lcom/mycompany/app/wview/WebDownView;->r:Landroid/animation/ValueAnimator;

    .line 78
    .line 79
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 80
    .line 81
    .line 82
    return-void
.end method

.method public final u()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/wview/WebDownView;->p:Landroid/graphics/Paint;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/wview/WebDownView;->q:Landroid/animation/ValueAnimator;

    .line 7
    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    :goto_0
    return-void

    .line 11
    :cond_1
    const v0, 0x3f4ccccd    # 0.8f

    .line 12
    .line 13
    .line 14
    iput v0, p0, Lcom/mycompany/app/wview/WebDownView;->s:F

    .line 15
    .line 16
    iput v0, p0, Lcom/mycompany/app/wview/WebDownView;->e0:F

    .line 17
    .line 18
    const/4 v0, 0x0

    .line 19
    iput-boolean v0, p0, Lcom/mycompany/app/wview/WebDownView;->f0:Z

    .line 20
    .line 21
    const/4 v0, 0x2

    .line 22
    new-array v0, v0, [F

    .line 23
    .line 24
    fill-array-data v0, :array_0

    .line 25
    .line 26
    .line 27
    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    iput-object v0, p0, Lcom/mycompany/app/wview/WebDownView;->q:Landroid/animation/ValueAnimator;

    .line 32
    .line 33
    const-wide/16 v1, 0xc8

    .line 34
    .line 35
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 36
    .line 37
    .line 38
    iget-object v0, p0, Lcom/mycompany/app/wview/WebDownView;->q:Landroid/animation/ValueAnimator;

    .line 39
    .line 40
    invoke-static {v0}, Lcom/mycompany/app/dialog/a;->v(Landroid/animation/ValueAnimator;)V

    .line 41
    .line 42
    .line 43
    iget-object v0, p0, Lcom/mycompany/app/wview/WebDownView;->q:Landroid/animation/ValueAnimator;

    .line 44
    .line 45
    new-instance v1, Lcom/mycompany/app/wview/WebDownView$3;

    .line 46
    .line 47
    invoke-direct {v1, p0}, Lcom/mycompany/app/wview/WebDownView$3;-><init>(Lcom/mycompany/app/wview/WebDownView;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 51
    .line 52
    .line 53
    iget-object v0, p0, Lcom/mycompany/app/wview/WebDownView;->q:Landroid/animation/ValueAnimator;

    .line 54
    .line 55
    new-instance v1, Lcom/mycompany/app/wview/WebDownView$4;

    .line 56
    .line 57
    invoke-direct {v1, p0}, Lcom/mycompany/app/wview/WebDownView$4;-><init>(Lcom/mycompany/app/wview/WebDownView;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 61
    .line 62
    .line 63
    iget-object v0, p0, Lcom/mycompany/app/wview/WebDownView;->r:Landroid/animation/ValueAnimator;

    .line 64
    .line 65
    if-eqz v0, :cond_2

    .line 66
    .line 67
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 68
    .line 69
    .line 70
    :cond_2
    iget-object v0, p0, Lcom/mycompany/app/wview/WebDownView;->q:Landroid/animation/ValueAnimator;

    .line 71
    .line 72
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 73
    .line 74
    .line 75
    return-void

    .line 76
    nop

    .line 77
    :array_0
    .array-data 4
        0x3f4ccccd    # 0.8f
        0x3f800000    # 1.0f
    .end array-data
.end method
