.class public Lcom/mycompany/app/view/MyScrollBar;
.super Lcom/mycompany/app/view/MyFadeView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mycompany/app/view/MyScrollBar$ScrollBarListener;
    }
.end annotation


# instance fields
.field public A:I

.field public B:F

.field public C:I

.field public D:F

.field public E:F

.field public F:I

.field public G:F

.field public H:F

.field public I:F

.field public J:F

.field public K:F

.field public L:Z

.field public M:Z

.field public N:Z

.field public O:I

.field public P:I

.field public Q:Z

.field public R:Z

.field public S:Z

.field public T:Lcom/mycompany/app/view/MyScrollBar$ScrollBarListener;

.field public U:Landroid/graphics/drawable/Drawable;

.field public V:I

.field public W:I

.field public a0:Z

.field public b0:I

.field public c0:I

.field public d0:F

.field public e0:I

.field public f0:Z

.field public g0:I

.field public h0:I

.field public i0:Landroid/graphics/Paint;

.field public j0:Landroid/graphics/RectF;

.field public k0:I

.field public l0:I

.field public m0:Landroid/graphics/Paint;

.field public n0:Landroid/animation/ValueAnimator;

.field public o0:Landroid/animation/ValueAnimator;

.field public p0:F

.field public q0:Landroid/graphics/RectF;

.field public r0:Z

.field public s0:F

.field public t0:Z

.field public final u0:Ljava/lang/Runnable;

.field public v0:F

.field public w0:Z

.field public x:I

.field public final x0:Ljava/lang/Runnable;

.field public y:I

.field public z:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/mycompany/app/view/MyFadeView;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance v0, Lcom/mycompany/app/view/MyScrollBar$3;

    invoke-direct {v0, p0}, Lcom/mycompany/app/view/MyScrollBar$3;-><init>(Lcom/mycompany/app/view/MyScrollBar;)V

    iput-object v0, p0, Lcom/mycompany/app/view/MyScrollBar;->u0:Ljava/lang/Runnable;

    .line 3
    new-instance v0, Lcom/mycompany/app/view/MyScrollBar$7;

    invoke-direct {v0, p0}, Lcom/mycompany/app/view/MyScrollBar$7;-><init>(Lcom/mycompany/app/view/MyScrollBar;)V

    iput-object v0, p0, Lcom/mycompany/app/view/MyScrollBar;->x0:Ljava/lang/Runnable;

    const/4 v0, 0x0

    .line 4
    invoke-virtual {p0, p1, v0}, Lcom/mycompany/app/view/MyScrollBar;->i(Landroid/content/Context;Z)V

    return-void
.end method

.method public constructor <init>(Lcom/mycompany/app/web/WebViewActivity;)V
    .locals 1

    .line 5
    invoke-direct {p0, p1}, Lcom/mycompany/app/view/MyFadeView;-><init>(Landroid/content/Context;)V

    .line 6
    new-instance v0, Lcom/mycompany/app/view/MyScrollBar$3;

    invoke-direct {v0, p0}, Lcom/mycompany/app/view/MyScrollBar$3;-><init>(Lcom/mycompany/app/view/MyScrollBar;)V

    iput-object v0, p0, Lcom/mycompany/app/view/MyScrollBar;->u0:Ljava/lang/Runnable;

    .line 7
    new-instance v0, Lcom/mycompany/app/view/MyScrollBar$7;

    invoke-direct {v0, p0}, Lcom/mycompany/app/view/MyScrollBar$7;-><init>(Lcom/mycompany/app/view/MyScrollBar;)V

    iput-object v0, p0, Lcom/mycompany/app/view/MyScrollBar;->x0:Ljava/lang/Runnable;

    const/4 v0, 0x1

    .line 8
    invoke-virtual {p0, p1, v0}, Lcom/mycompany/app/view/MyScrollBar;->i(Landroid/content/Context;Z)V

    return-void
.end method

.method public static bridge synthetic g(Lcom/mycompany/app/view/MyScrollBar;F)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/mycompany/app/view/MyScrollBar;->setValPreScaleDn(F)V

    return-void
.end method

.method public static bridge synthetic h(Lcom/mycompany/app/view/MyScrollBar;F)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/mycompany/app/view/MyScrollBar;->setValPreScaleUp(F)V

    return-void
.end method

.method private setScrollPos(F)V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/mycompany/app/view/MyScrollBar;->a0:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    iput-boolean p1, p0, Lcom/mycompany/app/view/MyScrollBar;->a0:Z

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    iget-boolean v0, p0, Lcom/mycompany/app/view/MyScrollBar;->Q:Z

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    iget v1, p0, Lcom/mycompany/app/view/MyScrollBar;->B:F

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_1
    iget v1, p0, Lcom/mycompany/app/view/MyScrollBar;->G:F

    .line 17
    .line 18
    :goto_0
    if-eqz v0, :cond_2

    .line 19
    .line 20
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    goto :goto_1

    .line 25
    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    :goto_1
    iget v2, p0, Lcom/mycompany/app/view/MyScrollBar;->O:I

    .line 30
    .line 31
    int-to-float v2, v2

    .line 32
    add-float/2addr v2, v1

    .line 33
    iget v3, p0, Lcom/mycompany/app/view/MyScrollBar;->P:I

    .line 34
    .line 35
    sub-int/2addr v0, v3

    .line 36
    int-to-float v0, v0

    .line 37
    sub-float/2addr v0, v1

    .line 38
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    .line 43
    .line 44
    .line 45
    move-result p1

    .line 46
    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    .line 47
    .line 48
    .line 49
    move-result p1

    .line 50
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    .line 55
    .line 56
    .line 57
    move-result p1

    .line 58
    iput p1, p0, Lcom/mycompany/app/view/MyScrollBar;->c0:I

    .line 59
    .line 60
    iget v0, p0, Lcom/mycompany/app/view/MyScrollBar;->b0:I

    .line 61
    .line 62
    const/4 v1, 0x1

    .line 63
    if-ne p1, v0, :cond_3

    .line 64
    .line 65
    invoke-virtual {p0, v1}, Lcom/mycompany/app/view/MyFadeView;->f(Z)V

    .line 66
    .line 67
    .line 68
    return-void

    .line 69
    :cond_3
    iput p1, p0, Lcom/mycompany/app/view/MyScrollBar;->b0:I

    .line 70
    .line 71
    iput-boolean v1, p0, Lcom/mycompany/app/view/MyScrollBar;->f0:Z

    .line 72
    .line 73
    invoke-virtual {p0}, Lcom/mycompany/app/view/MyScrollBar;->invalidate()V

    .line 74
    .line 75
    .line 76
    invoke-virtual {p0, v1}, Lcom/mycompany/app/view/MyFadeView;->f(Z)V

    .line 77
    .line 78
    .line 79
    return-void
.end method

.method private setValPreScaleDn(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/view/MyScrollBar;->T:Lcom/mycompany/app/view/MyScrollBar$ScrollBarListener;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iput p1, p0, Lcom/mycompany/app/view/MyScrollBar;->p0:F

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/mycompany/app/view/MyScrollBar;->invalidate()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method private setValPreScaleUp(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/view/MyScrollBar;->T:Lcom/mycompany/app/view/MyScrollBar$ScrollBarListener;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iput p1, p0, Lcom/mycompany/app/view/MyScrollBar;->p0:F

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/mycompany/app/view/MyScrollBar;->invalidate()V

    .line 9
    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final i(Landroid/content/Context;Z)V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/mycompany/app/view/MyScrollBar;->M:Z

    .line 3
    .line 4
    if-eqz p2, :cond_1

    .line 5
    .line 6
    iput-boolean v0, p0, Lcom/mycompany/app/view/MyFadeView;->f:Z

    .line 7
    .line 8
    invoke-static {}, Lcom/mycompany/app/main/MainUtil;->H3()I

    .line 9
    .line 10
    .line 11
    move-result p2

    .line 12
    iput p2, p0, Lcom/mycompany/app/view/MyScrollBar;->O:I

    .line 13
    .line 14
    sget p2, Lcom/mycompany/app/pref/PrefZone;->x:I

    .line 15
    .line 16
    if-ne p2, v0, :cond_0

    .line 17
    .line 18
    iput-boolean v0, p0, Lcom/mycompany/app/view/MyScrollBar;->N:Z

    .line 19
    .line 20
    :cond_0
    move p2, v0

    .line 21
    goto :goto_0

    .line 22
    :cond_1
    const/4 p2, 0x0

    .line 23
    :goto_0
    const/16 v1, 0x3e8

    .line 24
    .line 25
    invoke-virtual {p0, v1}, Lcom/mycompany/app/view/MyFadeView;->setShowTime(I)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0, v0}, Lcom/mycompany/app/view/MyFadeView;->setTouchable(Z)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0, v0}, Lcom/mycompany/app/view/MyFadeView;->setAutoHide(Z)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0, v0}, Lcom/mycompany/app/view/MyFadeView;->setInvisible(Z)V

    .line 35
    .line 36
    .line 37
    const/4 v1, -0x1

    .line 38
    iput v1, p0, Lcom/mycompany/app/view/MyScrollBar;->b0:I

    .line 39
    .line 40
    iput v1, p0, Lcom/mycompany/app/view/MyScrollBar;->e0:I

    .line 41
    .line 42
    if-eqz p2, :cond_2

    .line 43
    .line 44
    iput-boolean v0, p0, Lcom/mycompany/app/view/MyScrollBar;->R:Z

    .line 45
    .line 46
    iput-boolean v0, p0, Lcom/mycompany/app/view/MyScrollBar;->S:Z

    .line 47
    .line 48
    return-void

    .line 49
    :cond_2
    invoke-static {p1}, Lcom/mycompany/app/main/MainUtil;->O5(Landroid/content/Context;)Z

    .line 50
    .line 51
    .line 52
    move-result p1

    .line 53
    iput-boolean p1, p0, Lcom/mycompany/app/view/MyScrollBar;->L:Z

    .line 54
    .line 55
    return-void
.end method

.method public final invalidate()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/mycompany/app/view/MyScrollBar;->M:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-super {p0}, Lcom/mycompany/app/view/MyFadeView;->invalidate()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final j()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/mycompany/app/view/MyScrollBar;->r0:Z

    .line 2
    .line 3
    return v0
.end method

.method public final k()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/mycompany/app/view/MyScrollBar;->M:Z

    .line 3
    .line 4
    iput-boolean v0, p0, Lcom/mycompany/app/view/MyFadeView;->c:Z

    .line 5
    .line 6
    iget-object v1, p0, Lcom/mycompany/app/view/MyFadeView;->i:Landroid/animation/ValueAnimator;

    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 12
    .line 13
    .line 14
    iput-object v2, p0, Lcom/mycompany/app/view/MyFadeView;->i:Landroid/animation/ValueAnimator;

    .line 15
    .line 16
    :cond_0
    iget-object v1, p0, Lcom/mycompany/app/view/MyFadeView;->j:Landroid/animation/ValueAnimator;

    .line 17
    .line 18
    if-eqz v1, :cond_1

    .line 19
    .line 20
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 21
    .line 22
    .line 23
    iput-object v2, p0, Lcom/mycompany/app/view/MyFadeView;->j:Landroid/animation/ValueAnimator;

    .line 24
    .line 25
    :cond_1
    iput-object v2, p0, Lcom/mycompany/app/view/MyFadeView;->q:Lcom/mycompany/app/view/MyFadeListener;

    .line 26
    .line 27
    iget-object v1, p0, Lcom/mycompany/app/view/MyFadeView;->k:Lcom/mycompany/app/view/MyFadeView$EventHandler;

    .line 28
    .line 29
    if-eqz v1, :cond_2

    .line 30
    .line 31
    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 32
    .line 33
    .line 34
    iput-object v2, p0, Lcom/mycompany/app/view/MyFadeView;->k:Lcom/mycompany/app/view/MyFadeView$EventHandler;

    .line 35
    .line 36
    :cond_2
    iget-object v0, p0, Lcom/mycompany/app/view/MyScrollBar;->n0:Landroid/animation/ValueAnimator;

    .line 37
    .line 38
    if-eqz v0, :cond_3

    .line 39
    .line 40
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 41
    .line 42
    .line 43
    iput-object v2, p0, Lcom/mycompany/app/view/MyScrollBar;->n0:Landroid/animation/ValueAnimator;

    .line 44
    .line 45
    :cond_3
    iget-object v0, p0, Lcom/mycompany/app/view/MyScrollBar;->o0:Landroid/animation/ValueAnimator;

    .line 46
    .line 47
    if-eqz v0, :cond_4

    .line 48
    .line 49
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 50
    .line 51
    .line 52
    iput-object v2, p0, Lcom/mycompany/app/view/MyScrollBar;->o0:Landroid/animation/ValueAnimator;

    .line 53
    .line 54
    :cond_4
    iput-object v2, p0, Lcom/mycompany/app/view/MyScrollBar;->T:Lcom/mycompany/app/view/MyScrollBar$ScrollBarListener;

    .line 55
    .line 56
    iput-object v2, p0, Lcom/mycompany/app/view/MyScrollBar;->U:Landroid/graphics/drawable/Drawable;

    .line 57
    .line 58
    iput-object v2, p0, Lcom/mycompany/app/view/MyScrollBar;->i0:Landroid/graphics/Paint;

    .line 59
    .line 60
    iput-object v2, p0, Lcom/mycompany/app/view/MyScrollBar;->m0:Landroid/graphics/Paint;

    .line 61
    .line 62
    iput-object v2, p0, Lcom/mycompany/app/view/MyScrollBar;->j0:Landroid/graphics/RectF;

    .line 63
    .line 64
    iput-object v2, p0, Lcom/mycompany/app/view/MyScrollBar;->q0:Landroid/graphics/RectF;

    .line 65
    .line 66
    return-void
.end method

.method public final l()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/view/MyScrollBar;->i0:Landroid/graphics/Paint;

    .line 2
    .line 3
    if-eqz v0, :cond_3

    .line 4
    .line 5
    iget-object v1, p0, Lcom/mycompany/app/view/MyScrollBar;->m0:Landroid/graphics/Paint;

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    goto :goto_2

    .line 10
    :cond_0
    sget-boolean v1, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 11
    .line 12
    if-eqz v1, :cond_1

    .line 13
    .line 14
    const v2, -0x50506

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_1
    const v2, -0x595616

    .line 19
    .line 20
    .line 21
    :goto_0
    iput v2, p0, Lcom/mycompany/app/view/MyScrollBar;->g0:I

    .line 22
    .line 23
    if-eqz v1, :cond_2

    .line 24
    .line 25
    const v1, -0xc0c0c1

    .line 26
    .line 27
    .line 28
    goto :goto_1

    .line 29
    :cond_2
    const v1, -0x252526

    .line 30
    .line 31
    .line 32
    :goto_1
    iput v1, p0, Lcom/mycompany/app/view/MyScrollBar;->k0:I

    .line 33
    .line 34
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 35
    .line 36
    .line 37
    iget-object v0, p0, Lcom/mycompany/app/view/MyScrollBar;->m0:Landroid/graphics/Paint;

    .line 38
    .line 39
    iget v1, p0, Lcom/mycompany/app/view/MyScrollBar;->k0:I

    .line 40
    .line 41
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 42
    .line 43
    .line 44
    iget-object v0, p0, Lcom/mycompany/app/view/MyScrollBar;->m0:Landroid/graphics/Paint;

    .line 45
    .line 46
    iget v1, p0, Lcom/mycompany/app/view/MyScrollBar;->l0:I

    .line 47
    .line 48
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 49
    .line 50
    .line 51
    :cond_3
    :goto_2
    return-void
.end method

.method public final m(FZ)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/view/MyScrollBar;->T:Lcom/mycompany/app/view/MyScrollBar$ScrollBarListener;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto/16 :goto_6

    .line 6
    .line 7
    :cond_0
    iget-boolean v1, p0, Lcom/mycompany/app/view/MyScrollBar;->R:Z

    .line 8
    .line 9
    if-eqz v1, :cond_1

    .line 10
    .line 11
    invoke-interface {v0}, Lcom/mycompany/app/view/MyScrollBar$ScrollBarListener;->f()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    iget-object v1, p0, Lcom/mycompany/app/view/MyScrollBar;->T:Lcom/mycompany/app/view/MyScrollBar$ScrollBarListener;

    .line 16
    .line 17
    invoke-interface {v1}, Lcom/mycompany/app/view/MyScrollBar$ScrollBarListener;->g()I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    sub-int/2addr v0, v1

    .line 22
    goto :goto_0

    .line 23
    :cond_1
    iget v0, p0, Lcom/mycompany/app/view/MyScrollBar;->W:I

    .line 24
    .line 25
    iget v1, p0, Lcom/mycompany/app/view/MyScrollBar;->V:I

    .line 26
    .line 27
    sub-int/2addr v0, v1

    .line 28
    add-int/lit8 v0, v0, 0x1

    .line 29
    .line 30
    :goto_0
    if-gtz v0, :cond_2

    .line 31
    .line 32
    goto/16 :goto_6

    .line 33
    .line 34
    :cond_2
    iget-boolean v1, p0, Lcom/mycompany/app/view/MyScrollBar;->Q:Z

    .line 35
    .line 36
    if-eqz v1, :cond_3

    .line 37
    .line 38
    iget v2, p0, Lcom/mycompany/app/view/MyScrollBar;->A:I

    .line 39
    .line 40
    goto :goto_1

    .line 41
    :cond_3
    iget v2, p0, Lcom/mycompany/app/view/MyScrollBar;->F:I

    .line 42
    .line 43
    :goto_1
    if-eqz v1, :cond_4

    .line 44
    .line 45
    iget v3, p0, Lcom/mycompany/app/view/MyScrollBar;->B:F

    .line 46
    .line 47
    goto :goto_2

    .line 48
    :cond_4
    iget v3, p0, Lcom/mycompany/app/view/MyScrollBar;->G:F

    .line 49
    .line 50
    :goto_2
    if-eqz v1, :cond_5

    .line 51
    .line 52
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 53
    .line 54
    .line 55
    move-result v1

    .line 56
    goto :goto_3

    .line 57
    :cond_5
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 58
    .line 59
    .line 60
    move-result v1

    .line 61
    :goto_3
    iget v4, p0, Lcom/mycompany/app/view/MyScrollBar;->O:I

    .line 62
    .line 63
    iget v5, p0, Lcom/mycompany/app/view/MyScrollBar;->P:I

    .line 64
    .line 65
    add-int/2addr v5, v4

    .line 66
    add-int/2addr v5, v2

    .line 67
    sub-int/2addr v1, v5

    .line 68
    if-gtz v1, :cond_6

    .line 69
    .line 70
    goto :goto_6

    .line 71
    :cond_6
    int-to-float v2, v4

    .line 72
    add-float/2addr v2, v3

    .line 73
    sub-float/2addr p1, v2

    .line 74
    const/4 v2, 0x0

    .line 75
    cmpg-float v3, p1, v2

    .line 76
    .line 77
    if-gtz v3, :cond_7

    .line 78
    .line 79
    move p1, v2

    .line 80
    goto :goto_4

    .line 81
    :cond_7
    int-to-float v1, v1

    .line 82
    cmpl-float v3, p1, v1

    .line 83
    .line 84
    if-ltz v3, :cond_8

    .line 85
    .line 86
    const/high16 p1, 0x3f800000    # 1.0f

    .line 87
    .line 88
    goto :goto_4

    .line 89
    :cond_8
    div-float/2addr p1, v1

    .line 90
    :goto_4
    iget-boolean v1, p0, Lcom/mycompany/app/view/MyScrollBar;->R:Z

    .line 91
    .line 92
    if-eqz v1, :cond_9

    .line 93
    .line 94
    int-to-float v0, v0

    .line 95
    mul-float/2addr v0, p1

    .line 96
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    .line 97
    .line 98
    .line 99
    move-result v0

    .line 100
    goto :goto_5

    .line 101
    :cond_9
    int-to-float v0, v0

    .line 102
    mul-float v1, v0, p1

    .line 103
    .line 104
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    .line 105
    .line 106
    .line 107
    move-result v2

    .line 108
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    .line 109
    .line 110
    .line 111
    move-result v1

    .line 112
    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    .line 113
    .line 114
    .line 115
    move-result v1

    .line 116
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    .line 117
    .line 118
    .line 119
    move-result v0

    .line 120
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    .line 121
    .line 122
    .line 123
    move-result v0

    .line 124
    :goto_5
    iget v1, p0, Lcom/mycompany/app/view/MyScrollBar;->d0:F

    .line 125
    .line 126
    cmpg-float v2, p1, v1

    .line 127
    .line 128
    if-gez v2, :cond_a

    .line 129
    .line 130
    iget v2, p0, Lcom/mycompany/app/view/MyScrollBar;->e0:I

    .line 131
    .line 132
    if-gt v0, v2, :cond_d

    .line 133
    .line 134
    :cond_a
    cmpl-float v1, p1, v1

    .line 135
    .line 136
    if-lez v1, :cond_b

    .line 137
    .line 138
    iget v1, p0, Lcom/mycompany/app/view/MyScrollBar;->e0:I

    .line 139
    .line 140
    if-ge v0, v1, :cond_b

    .line 141
    .line 142
    goto :goto_6

    .line 143
    :cond_b
    iput p1, p0, Lcom/mycompany/app/view/MyScrollBar;->d0:F

    .line 144
    .line 145
    iget p1, p0, Lcom/mycompany/app/view/MyScrollBar;->e0:I

    .line 146
    .line 147
    if-ne v0, p1, :cond_c

    .line 148
    .line 149
    goto :goto_6

    .line 150
    :cond_c
    iput v0, p0, Lcom/mycompany/app/view/MyScrollBar;->e0:I

    .line 151
    .line 152
    if-eqz p2, :cond_d

    .line 153
    .line 154
    iget-object p1, p0, Lcom/mycompany/app/view/MyScrollBar;->T:Lcom/mycompany/app/view/MyScrollBar$ScrollBarListener;

    .line 155
    .line 156
    invoke-interface {p1, v0}, Lcom/mycompany/app/view/MyScrollBar$ScrollBarListener;->c(I)V

    .line 157
    .line 158
    .line 159
    :cond_d
    :goto_6
    return-void
.end method

.method public final n()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/mycompany/app/view/MyScrollBar;->R:Z

    .line 3
    .line 4
    iput-boolean v0, p0, Lcom/mycompany/app/view/MyScrollBar;->S:Z

    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p0, Lcom/mycompany/app/view/MyScrollBar;->L:Z

    .line 8
    .line 9
    return-void
.end method

.method public final o()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/mycompany/app/view/MyScrollBar;->V:I

    .line 2
    .line 3
    iget v1, p0, Lcom/mycompany/app/view/MyScrollBar;->W:I

    .line 4
    .line 5
    invoke-virtual {p0, v0, v1}, Lcom/mycompany/app/view/MyScrollBar;->p(II)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final onDetachedFromWindow()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/view/MyScrollBar;->n0:Landroid/animation/ValueAnimator;

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
    iput-object v1, p0, Lcom/mycompany/app/view/MyScrollBar;->n0:Landroid/animation/ValueAnimator;

    .line 10
    .line 11
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/view/MyScrollBar;->o0:Landroid/animation/ValueAnimator;

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 16
    .line 17
    .line 18
    iput-object v1, p0, Lcom/mycompany/app/view/MyScrollBar;->o0:Landroid/animation/ValueAnimator;

    .line 19
    .line 20
    :cond_1
    invoke-super {p0}, Lcom/mycompany/app/view/MyFadeView;->onDetachedFromWindow()V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 8

    .line 1
    iget-boolean v0, p0, Lcom/mycompany/app/view/MyScrollBar;->M:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto/16 :goto_e

    .line 6
    .line 7
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/view/MyScrollBar;->T:Lcom/mycompany/app/view/MyScrollBar$ScrollBarListener;

    .line 8
    .line 9
    if-nez v0, :cond_1

    .line 10
    .line 11
    goto/16 :goto_e

    .line 12
    .line 13
    :cond_1
    iget-boolean v0, p0, Lcom/mycompany/app/view/MyScrollBar;->f0:Z

    .line 14
    .line 15
    const/4 v1, 0x0

    .line 16
    if-eqz v0, :cond_4

    .line 17
    .line 18
    iput-boolean v1, p0, Lcom/mycompany/app/view/MyScrollBar;->f0:Z

    .line 19
    .line 20
    iget-object v0, p0, Lcom/mycompany/app/view/MyScrollBar;->U:Landroid/graphics/drawable/Drawable;

    .line 21
    .line 22
    iget v2, p0, Lcom/mycompany/app/view/MyScrollBar;->c0:I

    .line 23
    .line 24
    if-nez v0, :cond_2

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_2
    iget-boolean v3, p0, Lcom/mycompany/app/view/MyScrollBar;->Q:Z

    .line 28
    .line 29
    if-eqz v3, :cond_3

    .line 30
    .line 31
    int-to-float v2, v2

    .line 32
    iget v3, p0, Lcom/mycompany/app/view/MyScrollBar;->B:F

    .line 33
    .line 34
    sub-float/2addr v2, v3

    .line 35
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    iget v3, p0, Lcom/mycompany/app/view/MyScrollBar;->A:I

    .line 40
    .line 41
    add-int/2addr v3, v2

    .line 42
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 43
    .line 44
    .line 45
    move-result v4

    .line 46
    iget v5, p0, Lcom/mycompany/app/view/MyScrollBar;->C:I

    .line 47
    .line 48
    sub-int/2addr v4, v5

    .line 49
    div-int/lit8 v4, v4, 0x2

    .line 50
    .line 51
    add-int/2addr v5, v4

    .line 52
    invoke-virtual {v0, v2, v4, v3, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 53
    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 57
    .line 58
    .line 59
    move-result v3

    .line 60
    int-to-float v2, v2

    .line 61
    iget v4, p0, Lcom/mycompany/app/view/MyScrollBar;->G:F

    .line 62
    .line 63
    sub-float/2addr v2, v4

    .line 64
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    .line 65
    .line 66
    .line 67
    move-result v2

    .line 68
    iget v4, p0, Lcom/mycompany/app/view/MyScrollBar;->F:I

    .line 69
    .line 70
    add-int/2addr v4, v2

    .line 71
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 72
    .line 73
    .line 74
    :cond_4
    :goto_0
    iget-object v0, p0, Lcom/mycompany/app/view/MyScrollBar;->n0:Landroid/animation/ValueAnimator;

    .line 75
    .line 76
    if-nez v0, :cond_5

    .line 77
    .line 78
    iget-object v0, p0, Lcom/mycompany/app/view/MyScrollBar;->o0:Landroid/animation/ValueAnimator;

    .line 79
    .line 80
    if-eqz v0, :cond_6

    .line 81
    .line 82
    :cond_5
    const/4 v1, 0x1

    .line 83
    :cond_6
    iget-boolean v0, p0, Lcom/mycompany/app/view/MyScrollBar;->Q:Z

    .line 84
    .line 85
    const v2, 0x3f4ccccd    # 0.8f

    .line 86
    .line 87
    .line 88
    const/high16 v3, 0x3f800000    # 1.0f

    .line 89
    .line 90
    const/high16 v4, 0x40a00000    # 5.0f

    .line 91
    .line 92
    if-eqz v0, :cond_c

    .line 93
    .line 94
    iget-object v0, p0, Lcom/mycompany/app/view/MyScrollBar;->i0:Landroid/graphics/Paint;

    .line 95
    .line 96
    const/high16 v5, 0x40000000    # 2.0f

    .line 97
    .line 98
    if-eqz v0, :cond_a

    .line 99
    .line 100
    iget-boolean v6, p0, Lcom/mycompany/app/view/MyScrollBar;->r0:Z

    .line 101
    .line 102
    if-nez v6, :cond_8

    .line 103
    .line 104
    if-eqz v1, :cond_7

    .line 105
    .line 106
    goto :goto_1

    .line 107
    :cond_7
    iget v3, p0, Lcom/mycompany/app/view/MyScrollBar;->h0:I

    .line 108
    .line 109
    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 110
    .line 111
    .line 112
    iget v0, p0, Lcom/mycompany/app/view/MyScrollBar;->c0:I

    .line 113
    .line 114
    int-to-float v0, v0

    .line 115
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 116
    .line 117
    .line 118
    move-result v3

    .line 119
    int-to-float v3, v3

    .line 120
    div-float/2addr v3, v5

    .line 121
    iget v6, p0, Lcom/mycompany/app/view/MyScrollBar;->D:F

    .line 122
    .line 123
    iget-object v7, p0, Lcom/mycompany/app/view/MyScrollBar;->i0:Landroid/graphics/Paint;

    .line 124
    .line 125
    invoke-virtual {p1, v0, v3, v6, v7}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 126
    .line 127
    .line 128
    goto :goto_2

    .line 129
    :cond_8
    :goto_1
    if-eqz v1, :cond_a

    .line 130
    .line 131
    iget v0, p0, Lcom/mycompany/app/view/MyScrollBar;->h0:I

    .line 132
    .line 133
    int-to-float v0, v0

    .line 134
    iget v6, p0, Lcom/mycompany/app/view/MyScrollBar;->p0:F

    .line 135
    .line 136
    sub-float/2addr v3, v6

    .line 137
    mul-float/2addr v3, v0

    .line 138
    mul-float/2addr v3, v4

    .line 139
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    .line 140
    .line 141
    .line 142
    move-result v0

    .line 143
    iget v3, p0, Lcom/mycompany/app/view/MyScrollBar;->h0:I

    .line 144
    .line 145
    if-le v0, v3, :cond_9

    .line 146
    .line 147
    move v0, v3

    .line 148
    :cond_9
    iget-object v3, p0, Lcom/mycompany/app/view/MyScrollBar;->i0:Landroid/graphics/Paint;

    .line 149
    .line 150
    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 151
    .line 152
    .line 153
    iget v0, p0, Lcom/mycompany/app/view/MyScrollBar;->c0:I

    .line 154
    .line 155
    int-to-float v0, v0

    .line 156
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 157
    .line 158
    .line 159
    move-result v3

    .line 160
    int-to-float v3, v3

    .line 161
    div-float/2addr v3, v5

    .line 162
    iget v6, p0, Lcom/mycompany/app/view/MyScrollBar;->D:F

    .line 163
    .line 164
    iget-object v7, p0, Lcom/mycompany/app/view/MyScrollBar;->i0:Landroid/graphics/Paint;

    .line 165
    .line 166
    invoke-virtual {p1, v0, v3, v6, v7}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 167
    .line 168
    .line 169
    :cond_a
    :goto_2
    iget-object v0, p0, Lcom/mycompany/app/view/MyScrollBar;->m0:Landroid/graphics/Paint;

    .line 170
    .line 171
    if-eqz v0, :cond_18

    .line 172
    .line 173
    iget-boolean v3, p0, Lcom/mycompany/app/view/MyScrollBar;->r0:Z

    .line 174
    .line 175
    if-nez v3, :cond_b

    .line 176
    .line 177
    if-eqz v1, :cond_18

    .line 178
    .line 179
    :cond_b
    iget v1, p0, Lcom/mycompany/app/view/MyScrollBar;->l0:I

    .line 180
    .line 181
    int-to-float v1, v1

    .line 182
    iget v3, p0, Lcom/mycompany/app/view/MyScrollBar;->p0:F

    .line 183
    .line 184
    sub-float/2addr v3, v2

    .line 185
    mul-float/2addr v3, v1

    .line 186
    mul-float/2addr v3, v4

    .line 187
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    .line 188
    .line 189
    .line 190
    move-result v1

    .line 191
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 192
    .line 193
    .line 194
    iget v0, p0, Lcom/mycompany/app/view/MyScrollBar;->c0:I

    .line 195
    .line 196
    int-to-float v0, v0

    .line 197
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 198
    .line 199
    .line 200
    move-result v1

    .line 201
    int-to-float v1, v1

    .line 202
    div-float/2addr v1, v5

    .line 203
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 204
    .line 205
    .line 206
    iget v2, p0, Lcom/mycompany/app/view/MyScrollBar;->p0:F

    .line 207
    .line 208
    invoke-virtual {p1, v2, v2, v0, v1}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 209
    .line 210
    .line 211
    sget v2, Lcom/mycompany/app/main/MainApp;->k1:I

    .line 212
    .line 213
    int-to-float v2, v2

    .line 214
    iget-object v3, p0, Lcom/mycompany/app/view/MyScrollBar;->m0:Landroid/graphics/Paint;

    .line 215
    .line 216
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 217
    .line 218
    .line 219
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 220
    .line 221
    .line 222
    goto/16 :goto_d

    .line 223
    .line 224
    :cond_c
    iget-object v0, p0, Lcom/mycompany/app/view/MyScrollBar;->i0:Landroid/graphics/Paint;

    .line 225
    .line 226
    if-eqz v0, :cond_14

    .line 227
    .line 228
    iget-object v5, p0, Lcom/mycompany/app/view/MyScrollBar;->j0:Landroid/graphics/RectF;

    .line 229
    .line 230
    if-eqz v5, :cond_14

    .line 231
    .line 232
    iget-boolean v5, p0, Lcom/mycompany/app/view/MyScrollBar;->r0:Z

    .line 233
    .line 234
    if-nez v5, :cond_10

    .line 235
    .line 236
    if-eqz v1, :cond_d

    .line 237
    .line 238
    goto :goto_6

    .line 239
    :cond_d
    iget v3, p0, Lcom/mycompany/app/view/MyScrollBar;->h0:I

    .line 240
    .line 241
    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 242
    .line 243
    .line 244
    iget-boolean v0, p0, Lcom/mycompany/app/view/MyScrollBar;->N:Z

    .line 245
    .line 246
    if-nez v0, :cond_f

    .line 247
    .line 248
    iget-boolean v0, p0, Lcom/mycompany/app/view/MyScrollBar;->L:Z

    .line 249
    .line 250
    if-eqz v0, :cond_e

    .line 251
    .line 252
    goto :goto_4

    .line 253
    :cond_e
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 254
    .line 255
    .line 256
    move-result v0

    .line 257
    int-to-float v0, v0

    .line 258
    iget v3, p0, Lcom/mycompany/app/view/MyScrollBar;->J:F

    .line 259
    .line 260
    :goto_3
    sub-float/2addr v0, v3

    .line 261
    goto :goto_5

    .line 262
    :cond_f
    :goto_4
    iget v0, p0, Lcom/mycompany/app/view/MyScrollBar;->J:F

    .line 263
    .line 264
    iget v3, p0, Lcom/mycompany/app/view/MyScrollBar;->y:I

    .line 265
    .line 266
    int-to-float v3, v3

    .line 267
    goto :goto_3

    .line 268
    :goto_5
    iget v3, p0, Lcom/mycompany/app/view/MyScrollBar;->c0:I

    .line 269
    .line 270
    int-to-float v3, v3

    .line 271
    iget v5, p0, Lcom/mycompany/app/view/MyScrollBar;->H:F

    .line 272
    .line 273
    sub-float/2addr v3, v5

    .line 274
    iget-object v5, p0, Lcom/mycompany/app/view/MyScrollBar;->j0:Landroid/graphics/RectF;

    .line 275
    .line 276
    iget v6, p0, Lcom/mycompany/app/view/MyScrollBar;->y:I

    .line 277
    .line 278
    int-to-float v6, v6

    .line 279
    add-float/2addr v6, v0

    .line 280
    iget v7, p0, Lcom/mycompany/app/view/MyScrollBar;->z:I

    .line 281
    .line 282
    int-to-float v7, v7

    .line 283
    add-float/2addr v7, v3

    .line 284
    invoke-virtual {v5, v0, v3, v6, v7}, Landroid/graphics/RectF;->set(FFFF)V

    .line 285
    .line 286
    .line 287
    iget-object v0, p0, Lcom/mycompany/app/view/MyScrollBar;->j0:Landroid/graphics/RectF;

    .line 288
    .line 289
    iget v3, p0, Lcom/mycompany/app/view/MyScrollBar;->x:I

    .line 290
    .line 291
    int-to-float v3, v3

    .line 292
    iget-object v5, p0, Lcom/mycompany/app/view/MyScrollBar;->i0:Landroid/graphics/Paint;

    .line 293
    .line 294
    invoke-virtual {p1, v0, v3, v3, v5}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 295
    .line 296
    .line 297
    goto :goto_a

    .line 298
    :cond_10
    :goto_6
    if-eqz v1, :cond_14

    .line 299
    .line 300
    iget v0, p0, Lcom/mycompany/app/view/MyScrollBar;->h0:I

    .line 301
    .line 302
    int-to-float v0, v0

    .line 303
    iget v5, p0, Lcom/mycompany/app/view/MyScrollBar;->p0:F

    .line 304
    .line 305
    sub-float/2addr v3, v5

    .line 306
    mul-float/2addr v3, v0

    .line 307
    mul-float/2addr v3, v4

    .line 308
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    .line 309
    .line 310
    .line 311
    move-result v0

    .line 312
    iget v3, p0, Lcom/mycompany/app/view/MyScrollBar;->h0:I

    .line 313
    .line 314
    if-le v0, v3, :cond_11

    .line 315
    .line 316
    move v0, v3

    .line 317
    :cond_11
    iget-object v3, p0, Lcom/mycompany/app/view/MyScrollBar;->i0:Landroid/graphics/Paint;

    .line 318
    .line 319
    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 320
    .line 321
    .line 322
    iget-boolean v0, p0, Lcom/mycompany/app/view/MyScrollBar;->N:Z

    .line 323
    .line 324
    if-nez v0, :cond_13

    .line 325
    .line 326
    iget-boolean v0, p0, Lcom/mycompany/app/view/MyScrollBar;->L:Z

    .line 327
    .line 328
    if-eqz v0, :cond_12

    .line 329
    .line 330
    goto :goto_8

    .line 331
    :cond_12
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 332
    .line 333
    .line 334
    move-result v0

    .line 335
    int-to-float v0, v0

    .line 336
    iget v3, p0, Lcom/mycompany/app/view/MyScrollBar;->J:F

    .line 337
    .line 338
    :goto_7
    sub-float/2addr v0, v3

    .line 339
    goto :goto_9

    .line 340
    :cond_13
    :goto_8
    iget v0, p0, Lcom/mycompany/app/view/MyScrollBar;->J:F

    .line 341
    .line 342
    iget v3, p0, Lcom/mycompany/app/view/MyScrollBar;->y:I

    .line 343
    .line 344
    int-to-float v3, v3

    .line 345
    goto :goto_7

    .line 346
    :goto_9
    iget v3, p0, Lcom/mycompany/app/view/MyScrollBar;->c0:I

    .line 347
    .line 348
    int-to-float v3, v3

    .line 349
    iget v5, p0, Lcom/mycompany/app/view/MyScrollBar;->H:F

    .line 350
    .line 351
    sub-float/2addr v3, v5

    .line 352
    iget-object v5, p0, Lcom/mycompany/app/view/MyScrollBar;->j0:Landroid/graphics/RectF;

    .line 353
    .line 354
    iget v6, p0, Lcom/mycompany/app/view/MyScrollBar;->y:I

    .line 355
    .line 356
    int-to-float v6, v6

    .line 357
    add-float/2addr v6, v0

    .line 358
    iget v7, p0, Lcom/mycompany/app/view/MyScrollBar;->z:I

    .line 359
    .line 360
    int-to-float v7, v7

    .line 361
    add-float/2addr v7, v3

    .line 362
    invoke-virtual {v5, v0, v3, v6, v7}, Landroid/graphics/RectF;->set(FFFF)V

    .line 363
    .line 364
    .line 365
    iget-object v0, p0, Lcom/mycompany/app/view/MyScrollBar;->j0:Landroid/graphics/RectF;

    .line 366
    .line 367
    iget v3, p0, Lcom/mycompany/app/view/MyScrollBar;->x:I

    .line 368
    .line 369
    int-to-float v3, v3

    .line 370
    iget-object v5, p0, Lcom/mycompany/app/view/MyScrollBar;->i0:Landroid/graphics/Paint;

    .line 371
    .line 372
    invoke-virtual {p1, v0, v3, v3, v5}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 373
    .line 374
    .line 375
    :cond_14
    :goto_a
    iget-object v0, p0, Lcom/mycompany/app/view/MyScrollBar;->m0:Landroid/graphics/Paint;

    .line 376
    .line 377
    if-eqz v0, :cond_18

    .line 378
    .line 379
    iget-object v3, p0, Lcom/mycompany/app/view/MyScrollBar;->q0:Landroid/graphics/RectF;

    .line 380
    .line 381
    if-eqz v3, :cond_18

    .line 382
    .line 383
    iget-boolean v3, p0, Lcom/mycompany/app/view/MyScrollBar;->r0:Z

    .line 384
    .line 385
    if-nez v3, :cond_15

    .line 386
    .line 387
    if-eqz v1, :cond_18

    .line 388
    .line 389
    :cond_15
    iget v1, p0, Lcom/mycompany/app/view/MyScrollBar;->l0:I

    .line 390
    .line 391
    int-to-float v1, v1

    .line 392
    iget v3, p0, Lcom/mycompany/app/view/MyScrollBar;->p0:F

    .line 393
    .line 394
    sub-float/2addr v3, v2

    .line 395
    mul-float/2addr v3, v1

    .line 396
    mul-float/2addr v3, v4

    .line 397
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    .line 398
    .line 399
    .line 400
    move-result v1

    .line 401
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 402
    .line 403
    .line 404
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 405
    .line 406
    .line 407
    move-result v0

    .line 408
    int-to-float v0, v0

    .line 409
    iget-boolean v1, p0, Lcom/mycompany/app/view/MyScrollBar;->N:Z

    .line 410
    .line 411
    if-nez v1, :cond_17

    .line 412
    .line 413
    iget-boolean v1, p0, Lcom/mycompany/app/view/MyScrollBar;->L:Z

    .line 414
    .line 415
    if-eqz v1, :cond_16

    .line 416
    .line 417
    goto :goto_b

    .line 418
    :cond_16
    move v1, v0

    .line 419
    goto :goto_c

    .line 420
    :cond_17
    :goto_b
    const/4 v1, 0x0

    .line 421
    :goto_c
    iget v2, p0, Lcom/mycompany/app/view/MyScrollBar;->c0:I

    .line 422
    .line 423
    int-to-float v2, v2

    .line 424
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 425
    .line 426
    .line 427
    iget v3, p0, Lcom/mycompany/app/view/MyScrollBar;->p0:F

    .line 428
    .line 429
    invoke-virtual {p1, v3, v3, v1, v2}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 430
    .line 431
    .line 432
    iget-object v3, p0, Lcom/mycompany/app/view/MyScrollBar;->q0:Landroid/graphics/RectF;

    .line 433
    .line 434
    sub-float v4, v1, v0

    .line 435
    .line 436
    iget v5, p0, Lcom/mycompany/app/view/MyScrollBar;->K:F

    .line 437
    .line 438
    sub-float v6, v2, v5

    .line 439
    .line 440
    add-float/2addr v1, v0

    .line 441
    add-float/2addr v2, v5

    .line 442
    invoke-virtual {v3, v4, v6, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 443
    .line 444
    .line 445
    iget-object v0, p0, Lcom/mycompany/app/view/MyScrollBar;->q0:Landroid/graphics/RectF;

    .line 446
    .line 447
    iget-object v1, p0, Lcom/mycompany/app/view/MyScrollBar;->m0:Landroid/graphics/Paint;

    .line 448
    .line 449
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 450
    .line 451
    .line 452
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 453
    .line 454
    .line 455
    :cond_18
    :goto_d
    iget-object v0, p0, Lcom/mycompany/app/view/MyScrollBar;->U:Landroid/graphics/drawable/Drawable;

    .line 456
    .line 457
    if-eqz v0, :cond_19

    .line 458
    .line 459
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 460
    .line 461
    .line 462
    :cond_19
    :goto_e
    return-void
.end method

.method public final onSizeChanged(IIII)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/mycompany/app/view/MyScrollBar;->V:I

    .line 2
    .line 3
    iget v1, p0, Lcom/mycompany/app/view/MyScrollBar;->W:I

    .line 4
    .line 5
    invoke-virtual {p0, v0, v1}, Lcom/mycompany/app/view/MyScrollBar;->p(II)V

    .line 6
    .line 7
    .line 8
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/view/MyScrollBar;->T:Lcom/mycompany/app/view/MyScrollBar$ScrollBarListener;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    iput-boolean v1, p0, Lcom/mycompany/app/view/MyScrollBar;->r0:Z

    .line 7
    .line 8
    return v1

    .line 9
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    const/4 v2, 0x2

    .line 14
    const-wide/16 v3, 0xc8

    .line 15
    .line 16
    const v5, 0x3f4ccccd    # 0.8f

    .line 17
    .line 18
    .line 19
    const/4 v6, 0x1

    .line 20
    if-eqz v0, :cond_a

    .line 21
    .line 22
    if-eq v0, v6, :cond_4

    .line 23
    .line 24
    if-eq v0, v2, :cond_1

    .line 25
    .line 26
    const/4 p1, 0x3

    .line 27
    if-eq v0, p1, :cond_4

    .line 28
    .line 29
    goto/16 :goto_3

    .line 30
    .line 31
    :cond_1
    iget-boolean v0, p0, Lcom/mycompany/app/view/MyScrollBar;->r0:Z

    .line 32
    .line 33
    if-nez v0, :cond_2

    .line 34
    .line 35
    goto/16 :goto_2

    .line 36
    .line 37
    :cond_2
    iget-boolean v0, p0, Lcom/mycompany/app/view/MyScrollBar;->Q:Z

    .line 38
    .line 39
    if-eqz v0, :cond_3

    .line 40
    .line 41
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 42
    .line 43
    .line 44
    move-result p1

    .line 45
    goto :goto_0

    .line 46
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 47
    .line 48
    .line 49
    move-result p1

    .line 50
    :goto_0
    invoke-direct {p0, p1}, Lcom/mycompany/app/view/MyScrollBar;->setScrollPos(F)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {p0, p1, v6}, Lcom/mycompany/app/view/MyScrollBar;->m(FZ)V

    .line 54
    .line 55
    .line 56
    return v6

    .line 57
    :cond_4
    iget-boolean p1, p0, Lcom/mycompany/app/view/MyScrollBar;->r0:Z

    .line 58
    .line 59
    if-eqz p1, :cond_9

    .line 60
    .line 61
    invoke-virtual {p0, v6}, Lcom/mycompany/app/view/MyFadeView;->f(Z)V

    .line 62
    .line 63
    .line 64
    iget-object p1, p0, Lcom/mycompany/app/view/MyScrollBar;->T:Lcom/mycompany/app/view/MyScrollBar$ScrollBarListener;

    .line 65
    .line 66
    if-nez p1, :cond_5

    .line 67
    .line 68
    goto :goto_1

    .line 69
    :cond_5
    iget-object p1, p0, Lcom/mycompany/app/view/MyScrollBar;->o0:Landroid/animation/ValueAnimator;

    .line 70
    .line 71
    if-eqz p1, :cond_6

    .line 72
    .line 73
    goto :goto_1

    .line 74
    :cond_6
    iget p1, p0, Lcom/mycompany/app/view/MyScrollBar;->p0:F

    .line 75
    .line 76
    cmpg-float v0, p1, v5

    .line 77
    .line 78
    if-gtz v0, :cond_7

    .line 79
    .line 80
    goto :goto_1

    .line 81
    :cond_7
    iput p1, p0, Lcom/mycompany/app/view/MyScrollBar;->v0:F

    .line 82
    .line 83
    iput-boolean v1, p0, Lcom/mycompany/app/view/MyScrollBar;->w0:Z

    .line 84
    .line 85
    new-array v0, v2, [F

    .line 86
    .line 87
    aput p1, v0, v1

    .line 88
    .line 89
    aput v5, v0, v6

    .line 90
    .line 91
    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 92
    .line 93
    .line 94
    move-result-object p1

    .line 95
    iput-object p1, p0, Lcom/mycompany/app/view/MyScrollBar;->o0:Landroid/animation/ValueAnimator;

    .line 96
    .line 97
    invoke-virtual {p1, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 98
    .line 99
    .line 100
    iget-object p1, p0, Lcom/mycompany/app/view/MyScrollBar;->o0:Landroid/animation/ValueAnimator;

    .line 101
    .line 102
    invoke-static {p1}, Lcom/mycompany/app/dialog/a;->r(Landroid/animation/ValueAnimator;)V

    .line 103
    .line 104
    .line 105
    iget-object p1, p0, Lcom/mycompany/app/view/MyScrollBar;->o0:Landroid/animation/ValueAnimator;

    .line 106
    .line 107
    new-instance v0, Lcom/mycompany/app/view/MyScrollBar$5;

    .line 108
    .line 109
    invoke-direct {v0, p0}, Lcom/mycompany/app/view/MyScrollBar$5;-><init>(Lcom/mycompany/app/view/MyScrollBar;)V

    .line 110
    .line 111
    .line 112
    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 113
    .line 114
    .line 115
    iget-object p1, p0, Lcom/mycompany/app/view/MyScrollBar;->o0:Landroid/animation/ValueAnimator;

    .line 116
    .line 117
    new-instance v0, Lcom/mycompany/app/view/MyScrollBar$6;

    .line 118
    .line 119
    invoke-direct {v0, p0}, Lcom/mycompany/app/view/MyScrollBar$6;-><init>(Lcom/mycompany/app/view/MyScrollBar;)V

    .line 120
    .line 121
    .line 122
    invoke-virtual {p1, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 123
    .line 124
    .line 125
    iget-object p1, p0, Lcom/mycompany/app/view/MyScrollBar;->n0:Landroid/animation/ValueAnimator;

    .line 126
    .line 127
    if-eqz p1, :cond_8

    .line 128
    .line 129
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 130
    .line 131
    .line 132
    :cond_8
    iget-object p1, p0, Lcom/mycompany/app/view/MyScrollBar;->o0:Landroid/animation/ValueAnimator;

    .line 133
    .line 134
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    .line 135
    .line 136
    .line 137
    :goto_1
    iput-boolean v1, p0, Lcom/mycompany/app/view/MyScrollBar;->r0:Z

    .line 138
    .line 139
    :cond_9
    iget-object p1, p0, Lcom/mycompany/app/view/MyScrollBar;->T:Lcom/mycompany/app/view/MyScrollBar$ScrollBarListener;

    .line 140
    .line 141
    if-eqz p1, :cond_12

    .line 142
    .line 143
    invoke-interface {p1}, Lcom/mycompany/app/view/MyScrollBar$ScrollBarListener;->e()V

    .line 144
    .line 145
    .line 146
    return v6

    .line 147
    :cond_a
    iget-boolean v0, p0, Lcom/mycompany/app/view/MyScrollBar;->Q:Z

    .line 148
    .line 149
    if-eqz v0, :cond_c

    .line 150
    .line 151
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 152
    .line 153
    .line 154
    move-result p1

    .line 155
    iget v0, p0, Lcom/mycompany/app/view/MyScrollBar;->c0:I

    .line 156
    .line 157
    int-to-float v0, v0

    .line 158
    iget v7, p0, Lcom/mycompany/app/view/MyScrollBar;->E:F

    .line 159
    .line 160
    sub-float v8, v0, v7

    .line 161
    .line 162
    cmpg-float v8, p1, v8

    .line 163
    .line 164
    if-gez v8, :cond_b

    .line 165
    .line 166
    goto :goto_2

    .line 167
    :cond_b
    add-float/2addr v0, v7

    .line 168
    cmpl-float v0, p1, v0

    .line 169
    .line 170
    if-lez v0, :cond_10

    .line 171
    .line 172
    goto :goto_2

    .line 173
    :cond_c
    iget-boolean v0, p0, Lcom/mycompany/app/view/MyScrollBar;->N:Z

    .line 174
    .line 175
    if-eqz v0, :cond_d

    .line 176
    .line 177
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 178
    .line 179
    .line 180
    move-result v0

    .line 181
    iget v7, p0, Lcom/mycompany/app/view/MyScrollBar;->F:I

    .line 182
    .line 183
    int-to-float v7, v7

    .line 184
    cmpl-float v0, v0, v7

    .line 185
    .line 186
    if-lez v0, :cond_e

    .line 187
    .line 188
    goto :goto_2

    .line 189
    :cond_d
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 190
    .line 191
    .line 192
    move-result v0

    .line 193
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 194
    .line 195
    .line 196
    move-result v7

    .line 197
    iget v8, p0, Lcom/mycompany/app/view/MyScrollBar;->F:I

    .line 198
    .line 199
    sub-int/2addr v7, v8

    .line 200
    int-to-float v7, v7

    .line 201
    cmpg-float v0, v0, v7

    .line 202
    .line 203
    if-gez v0, :cond_e

    .line 204
    .line 205
    goto :goto_2

    .line 206
    :cond_e
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 207
    .line 208
    .line 209
    move-result p1

    .line 210
    iget v0, p0, Lcom/mycompany/app/view/MyScrollBar;->c0:I

    .line 211
    .line 212
    int-to-float v0, v0

    .line 213
    iget v7, p0, Lcom/mycompany/app/view/MyScrollBar;->I:F

    .line 214
    .line 215
    sub-float v8, v0, v7

    .line 216
    .line 217
    cmpg-float v8, p1, v8

    .line 218
    .line 219
    if-gez v8, :cond_f

    .line 220
    .line 221
    goto :goto_2

    .line 222
    :cond_f
    add-float/2addr v0, v7

    .line 223
    cmpl-float v0, p1, v0

    .line 224
    .line 225
    if-lez v0, :cond_10

    .line 226
    .line 227
    :goto_2
    return v1

    .line 228
    :cond_10
    iput-boolean v6, p0, Lcom/mycompany/app/view/MyScrollBar;->r0:Z

    .line 229
    .line 230
    invoke-virtual {p0, v6}, Lcom/mycompany/app/view/MyFadeView;->f(Z)V

    .line 231
    .line 232
    .line 233
    invoke-direct {p0, p1}, Lcom/mycompany/app/view/MyScrollBar;->setScrollPos(F)V

    .line 234
    .line 235
    .line 236
    invoke-virtual {p0, p1, v1}, Lcom/mycompany/app/view/MyScrollBar;->m(FZ)V

    .line 237
    .line 238
    .line 239
    iget-object p1, p0, Lcom/mycompany/app/view/MyScrollBar;->T:Lcom/mycompany/app/view/MyScrollBar$ScrollBarListener;

    .line 240
    .line 241
    if-nez p1, :cond_11

    .line 242
    .line 243
    goto :goto_3

    .line 244
    :cond_11
    iget-object p1, p0, Lcom/mycompany/app/view/MyScrollBar;->n0:Landroid/animation/ValueAnimator;

    .line 245
    .line 246
    if-eqz p1, :cond_13

    .line 247
    .line 248
    :cond_12
    :goto_3
    return v6

    .line 249
    :cond_13
    iput v5, p0, Lcom/mycompany/app/view/MyScrollBar;->p0:F

    .line 250
    .line 251
    iput v5, p0, Lcom/mycompany/app/view/MyScrollBar;->s0:F

    .line 252
    .line 253
    iput-boolean v1, p0, Lcom/mycompany/app/view/MyScrollBar;->t0:Z

    .line 254
    .line 255
    new-array p1, v2, [F

    .line 256
    .line 257
    fill-array-data p1, :array_0

    .line 258
    .line 259
    .line 260
    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 261
    .line 262
    .line 263
    move-result-object p1

    .line 264
    iput-object p1, p0, Lcom/mycompany/app/view/MyScrollBar;->n0:Landroid/animation/ValueAnimator;

    .line 265
    .line 266
    invoke-virtual {p1, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 267
    .line 268
    .line 269
    iget-object p1, p0, Lcom/mycompany/app/view/MyScrollBar;->n0:Landroid/animation/ValueAnimator;

    .line 270
    .line 271
    invoke-static {p1}, Lcom/mycompany/app/dialog/a;->v(Landroid/animation/ValueAnimator;)V

    .line 272
    .line 273
    .line 274
    iget-object p1, p0, Lcom/mycompany/app/view/MyScrollBar;->n0:Landroid/animation/ValueAnimator;

    .line 275
    .line 276
    new-instance v0, Lcom/mycompany/app/view/MyScrollBar$1;

    .line 277
    .line 278
    invoke-direct {v0, p0}, Lcom/mycompany/app/view/MyScrollBar$1;-><init>(Lcom/mycompany/app/view/MyScrollBar;)V

    .line 279
    .line 280
    .line 281
    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 282
    .line 283
    .line 284
    iget-object p1, p0, Lcom/mycompany/app/view/MyScrollBar;->n0:Landroid/animation/ValueAnimator;

    .line 285
    .line 286
    new-instance v0, Lcom/mycompany/app/view/MyScrollBar$2;

    .line 287
    .line 288
    invoke-direct {v0, p0}, Lcom/mycompany/app/view/MyScrollBar$2;-><init>(Lcom/mycompany/app/view/MyScrollBar;)V

    .line 289
    .line 290
    .line 291
    invoke-virtual {p1, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 292
    .line 293
    .line 294
    iget-object p1, p0, Lcom/mycompany/app/view/MyScrollBar;->o0:Landroid/animation/ValueAnimator;

    .line 295
    .line 296
    if-eqz p1, :cond_14

    .line 297
    .line 298
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 299
    .line 300
    .line 301
    :cond_14
    iget-object p1, p0, Lcom/mycompany/app/view/MyScrollBar;->n0:Landroid/animation/ValueAnimator;

    .line 302
    .line 303
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    .line 304
    .line 305
    .line 306
    return v6

    .line 307
    :array_0
    .array-data 4
        0x3f4ccccd    # 0.8f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public final p(II)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/view/MyScrollBar;->T:Lcom/mycompany/app/view/MyScrollBar$ScrollBarListener;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_3

    .line 6
    :cond_0
    iget-boolean v0, p0, Lcom/mycompany/app/view/MyScrollBar;->R:Z

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    if-nez v0, :cond_1

    .line 10
    .line 11
    iput p1, p0, Lcom/mycompany/app/view/MyScrollBar;->V:I

    .line 12
    .line 13
    iput p2, p0, Lcom/mycompany/app/view/MyScrollBar;->W:I

    .line 14
    .line 15
    if-nez p2, :cond_1

    .line 16
    .line 17
    invoke-virtual {p0, v1}, Lcom/mycompany/app/view/MyFadeView;->d(Z)V

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :cond_1
    iget-boolean p1, p0, Lcom/mycompany/app/view/MyScrollBar;->Q:Z

    .line 22
    .line 23
    if-eqz p1, :cond_2

    .line 24
    .line 25
    iget p2, p0, Lcom/mycompany/app/view/MyScrollBar;->A:I

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_2
    iget p2, p0, Lcom/mycompany/app/view/MyScrollBar;->F:I

    .line 29
    .line 30
    :goto_0
    if-eqz p1, :cond_3

    .line 31
    .line 32
    iget v0, p0, Lcom/mycompany/app/view/MyScrollBar;->B:F

    .line 33
    .line 34
    goto :goto_1

    .line 35
    :cond_3
    iget v0, p0, Lcom/mycompany/app/view/MyScrollBar;->G:F

    .line 36
    .line 37
    :goto_1
    if-eqz p1, :cond_4

    .line 38
    .line 39
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 40
    .line 41
    .line 42
    move-result p1

    .line 43
    goto :goto_2

    .line 44
    :cond_4
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 45
    .line 46
    .line 47
    move-result p1

    .line 48
    :goto_2
    iget v2, p0, Lcom/mycompany/app/view/MyScrollBar;->O:I

    .line 49
    .line 50
    iget v3, p0, Lcom/mycompany/app/view/MyScrollBar;->P:I

    .line 51
    .line 52
    add-int/2addr v2, v3

    .line 53
    add-int/2addr v2, p2

    .line 54
    sub-int/2addr p1, v2

    .line 55
    if-gtz p1, :cond_5

    .line 56
    .line 57
    invoke-virtual {p0, v1}, Lcom/mycompany/app/view/MyFadeView;->d(Z)V

    .line 58
    .line 59
    .line 60
    return-void

    .line 61
    :cond_5
    iget-object p2, p0, Lcom/mycompany/app/view/MyScrollBar;->T:Lcom/mycompany/app/view/MyScrollBar$ScrollBarListener;

    .line 62
    .line 63
    invoke-interface {p2}, Lcom/mycompany/app/view/MyScrollBar$ScrollBarListener;->f()I

    .line 64
    .line 65
    .line 66
    move-result p2

    .line 67
    iget-object v2, p0, Lcom/mycompany/app/view/MyScrollBar;->T:Lcom/mycompany/app/view/MyScrollBar$ScrollBarListener;

    .line 68
    .line 69
    invoke-interface {v2}, Lcom/mycompany/app/view/MyScrollBar$ScrollBarListener;->g()I

    .line 70
    .line 71
    .line 72
    move-result v2

    .line 73
    sub-int/2addr p2, v2

    .line 74
    if-gtz p2, :cond_6

    .line 75
    .line 76
    invoke-virtual {p0, v1}, Lcom/mycompany/app/view/MyFadeView;->d(Z)V

    .line 77
    .line 78
    .line 79
    return-void

    .line 80
    :cond_6
    iget-boolean v1, p0, Lcom/mycompany/app/view/MyScrollBar;->r0:Z

    .line 81
    .line 82
    if-eqz v1, :cond_7

    .line 83
    .line 84
    :goto_3
    return-void

    .line 85
    :cond_7
    iget-object v1, p0, Lcom/mycompany/app/view/MyScrollBar;->T:Lcom/mycompany/app/view/MyScrollBar$ScrollBarListener;

    .line 86
    .line 87
    invoke-interface {v1}, Lcom/mycompany/app/view/MyScrollBar$ScrollBarListener;->d()I

    .line 88
    .line 89
    .line 90
    move-result v1

    .line 91
    if-gtz v1, :cond_8

    .line 92
    .line 93
    const/4 p2, 0x0

    .line 94
    goto :goto_4

    .line 95
    :cond_8
    if-lt v1, p2, :cond_9

    .line 96
    .line 97
    const/high16 p2, 0x3f800000    # 1.0f

    .line 98
    .line 99
    goto :goto_4

    .line 100
    :cond_9
    int-to-float v1, v1

    .line 101
    int-to-float p2, p2

    .line 102
    div-float p2, v1, p2

    .line 103
    .line 104
    :goto_4
    iget v1, p0, Lcom/mycompany/app/view/MyScrollBar;->O:I

    .line 105
    .line 106
    int-to-float v1, v1

    .line 107
    add-float/2addr v1, v0

    .line 108
    int-to-float p1, p1

    .line 109
    mul-float/2addr p1, p2

    .line 110
    add-float/2addr p1, v1

    .line 111
    invoke-direct {p0, p1}, Lcom/mycompany/app/view/MyScrollBar;->setScrollPos(F)V

    .line 112
    .line 113
    .line 114
    invoke-virtual {p0}, Lcom/mycompany/app/view/MyFadeView;->e()V

    .line 115
    .line 116
    .line 117
    return-void
.end method

.method public setListener(Lcom/mycompany/app/view/MyScrollBar$ScrollBarListener;)V
    .locals 6

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iput-object p1, p0, Lcom/mycompany/app/view/MyScrollBar;->T:Lcom/mycompany/app/view/MyScrollBar$ScrollBarListener;

    .line 6
    .line 7
    iget-boolean p1, p0, Lcom/mycompany/app/view/MyScrollBar;->Q:Z

    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    const/high16 v2, 0x40000000    # 2.0f

    .line 11
    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    sget p1, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 15
    .line 16
    iput p1, p0, Lcom/mycompany/app/view/MyScrollBar;->A:I

    .line 17
    .line 18
    int-to-float p1, p1

    .line 19
    div-float/2addr p1, v2

    .line 20
    iput p1, p0, Lcom/mycompany/app/view/MyScrollBar;->B:F

    .line 21
    .line 22
    sget v2, Lcom/mycompany/app/main/MainApp;->j1:I

    .line 23
    .line 24
    mul-int/lit8 v3, v2, 0x2

    .line 25
    .line 26
    iput v3, p0, Lcom/mycompany/app/view/MyScrollBar;->C:I

    .line 27
    .line 28
    int-to-float v2, v2

    .line 29
    iput v2, p0, Lcom/mycompany/app/view/MyScrollBar;->D:F

    .line 30
    .line 31
    sget v2, Lcom/mycompany/app/main/MainApp;->C1:I

    .line 32
    .line 33
    int-to-float v2, v2

    .line 34
    add-float/2addr p1, v2

    .line 35
    iput p1, p0, Lcom/mycompany/app/view/MyScrollBar;->E:F

    .line 36
    .line 37
    sget p1, Lnet/kaki87/soul2/testing/R$drawable;->outline_integration_instructions_2_white_24:I

    .line 38
    .line 39
    invoke-static {v0, p1}, Lcom/mycompany/app/main/MainUtil;->S(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    iput-object p1, p0, Lcom/mycompany/app/view/MyScrollBar;->U:Landroid/graphics/drawable/Drawable;

    .line 44
    .line 45
    const/high16 p1, -0x5f000000

    .line 46
    .line 47
    iput p1, p0, Lcom/mycompany/app/view/MyScrollBar;->g0:I

    .line 48
    .line 49
    const p1, -0x5e8a8a8b

    .line 50
    .line 51
    .line 52
    iput p1, p0, Lcom/mycompany/app/view/MyScrollBar;->k0:I

    .line 53
    .line 54
    new-instance p1, Landroid/graphics/Paint;

    .line 55
    .line 56
    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    .line 57
    .line 58
    .line 59
    iput-object p1, p0, Lcom/mycompany/app/view/MyScrollBar;->i0:Landroid/graphics/Paint;

    .line 60
    .line 61
    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 62
    .line 63
    .line 64
    iget-object p1, p0, Lcom/mycompany/app/view/MyScrollBar;->i0:Landroid/graphics/Paint;

    .line 65
    .line 66
    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    .line 67
    .line 68
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 69
    .line 70
    .line 71
    iget-object p1, p0, Lcom/mycompany/app/view/MyScrollBar;->i0:Landroid/graphics/Paint;

    .line 72
    .line 73
    iget v2, p0, Lcom/mycompany/app/view/MyScrollBar;->g0:I

    .line 74
    .line 75
    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 76
    .line 77
    .line 78
    new-instance p1, Landroid/graphics/Paint;

    .line 79
    .line 80
    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    .line 81
    .line 82
    .line 83
    iput-object p1, p0, Lcom/mycompany/app/view/MyScrollBar;->m0:Landroid/graphics/Paint;

    .line 84
    .line 85
    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 86
    .line 87
    .line 88
    iget-object p1, p0, Lcom/mycompany/app/view/MyScrollBar;->m0:Landroid/graphics/Paint;

    .line 89
    .line 90
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 91
    .line 92
    .line 93
    iget-object p1, p0, Lcom/mycompany/app/view/MyScrollBar;->m0:Landroid/graphics/Paint;

    .line 94
    .line 95
    iget v0, p0, Lcom/mycompany/app/view/MyScrollBar;->k0:I

    .line 96
    .line 97
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 98
    .line 99
    .line 100
    iget-object p1, p0, Lcom/mycompany/app/view/MyScrollBar;->i0:Landroid/graphics/Paint;

    .line 101
    .line 102
    invoke-virtual {p1}, Landroid/graphics/Paint;->getAlpha()I

    .line 103
    .line 104
    .line 105
    move-result p1

    .line 106
    iput p1, p0, Lcom/mycompany/app/view/MyScrollBar;->h0:I

    .line 107
    .line 108
    iget-object p1, p0, Lcom/mycompany/app/view/MyScrollBar;->m0:Landroid/graphics/Paint;

    .line 109
    .line 110
    invoke-virtual {p1}, Landroid/graphics/Paint;->getAlpha()I

    .line 111
    .line 112
    .line 113
    move-result p1

    .line 114
    iput p1, p0, Lcom/mycompany/app/view/MyScrollBar;->l0:I

    .line 115
    .line 116
    return-void

    .line 117
    :cond_0
    sget p1, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 118
    .line 119
    iput p1, p0, Lcom/mycompany/app/view/MyScrollBar;->x:I

    .line 120
    .line 121
    sget p1, Lcom/mycompany/app/main/MainApp;->G1:I

    .line 122
    .line 123
    mul-int/lit8 p1, p1, 0x3

    .line 124
    .line 125
    iput p1, p0, Lcom/mycompany/app/view/MyScrollBar;->y:I

    .line 126
    .line 127
    sget p1, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 128
    .line 129
    mul-int/lit8 p1, p1, 0x2

    .line 130
    .line 131
    iput p1, p0, Lcom/mycompany/app/view/MyScrollBar;->z:I

    .line 132
    .line 133
    iget-boolean p1, p0, Lcom/mycompany/app/view/MyScrollBar;->S:Z

    .line 134
    .line 135
    if-eqz p1, :cond_1

    .line 136
    .line 137
    const/high16 p1, 0x42000000    # 32.0f

    .line 138
    .line 139
    invoke-static {v0, p1}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 140
    .line 141
    .line 142
    move-result p1

    .line 143
    float-to-int p1, p1

    .line 144
    goto :goto_0

    .line 145
    :cond_1
    sget p1, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 146
    .line 147
    :goto_0
    sget v3, Lcom/mycompany/app/main/MainApp;->f1:I

    .line 148
    .line 149
    iput v3, p0, Lcom/mycompany/app/view/MyScrollBar;->F:I

    .line 150
    .line 151
    int-to-float v3, v3

    .line 152
    div-float/2addr v3, v2

    .line 153
    iput v3, p0, Lcom/mycompany/app/view/MyScrollBar;->G:F

    .line 154
    .line 155
    iget v4, p0, Lcom/mycompany/app/view/MyScrollBar;->z:I

    .line 156
    .line 157
    int-to-float v4, v4

    .line 158
    div-float/2addr v4, v2

    .line 159
    iput v4, p0, Lcom/mycompany/app/view/MyScrollBar;->H:F

    .line 160
    .line 161
    sget v4, Lcom/mycompany/app/main/MainApp;->C1:I

    .line 162
    .line 163
    int-to-float v4, v4

    .line 164
    add-float/2addr v3, v4

    .line 165
    iput v3, p0, Lcom/mycompany/app/view/MyScrollBar;->I:F

    .line 166
    .line 167
    iget v4, p0, Lcom/mycompany/app/view/MyScrollBar;->y:I

    .line 168
    .line 169
    int-to-float v5, v4

    .line 170
    sub-int/2addr p1, v4

    .line 171
    int-to-float p1, p1

    .line 172
    div-float/2addr p1, v2

    .line 173
    add-float/2addr p1, v5

    .line 174
    iput p1, p0, Lcom/mycompany/app/view/MyScrollBar;->J:F

    .line 175
    .line 176
    mul-float/2addr v3, v2

    .line 177
    iput v3, p0, Lcom/mycompany/app/view/MyScrollBar;->K:F

    .line 178
    .line 179
    sget p1, Lnet/kaki87/soul2/testing/R$drawable;->outline_unfold_more_2_white_36:I

    .line 180
    .line 181
    invoke-static {v0, p1}, Lcom/mycompany/app/main/MainUtil;->S(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 182
    .line 183
    .line 184
    move-result-object p1

    .line 185
    iput-object p1, p0, Lcom/mycompany/app/view/MyScrollBar;->U:Landroid/graphics/drawable/Drawable;

    .line 186
    .line 187
    iget-boolean p1, p0, Lcom/mycompany/app/view/MyScrollBar;->S:Z

    .line 188
    .line 189
    if-eqz p1, :cond_2

    .line 190
    .line 191
    const p1, -0x5e5a5a5b

    .line 192
    .line 193
    .line 194
    iput p1, p0, Lcom/mycompany/app/view/MyScrollBar;->g0:I

    .line 195
    .line 196
    goto :goto_2

    .line 197
    :cond_2
    sget-boolean p1, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 198
    .line 199
    if-eqz p1, :cond_3

    .line 200
    .line 201
    const p1, -0x50506

    .line 202
    .line 203
    .line 204
    goto :goto_1

    .line 205
    :cond_3
    const p1, -0x595616

    .line 206
    .line 207
    .line 208
    :goto_1
    iput p1, p0, Lcom/mycompany/app/view/MyScrollBar;->g0:I

    .line 209
    .line 210
    :goto_2
    sget-boolean p1, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 211
    .line 212
    if-eqz p1, :cond_4

    .line 213
    .line 214
    const p1, -0xc0c0c1

    .line 215
    .line 216
    .line 217
    goto :goto_3

    .line 218
    :cond_4
    const p1, -0x252526

    .line 219
    .line 220
    .line 221
    :goto_3
    iput p1, p0, Lcom/mycompany/app/view/MyScrollBar;->k0:I

    .line 222
    .line 223
    const/16 p1, 0xa1

    .line 224
    .line 225
    iput p1, p0, Lcom/mycompany/app/view/MyScrollBar;->h0:I

    .line 226
    .line 227
    iput p1, p0, Lcom/mycompany/app/view/MyScrollBar;->l0:I

    .line 228
    .line 229
    new-instance p1, Landroid/graphics/Paint;

    .line 230
    .line 231
    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    .line 232
    .line 233
    .line 234
    iput-object p1, p0, Lcom/mycompany/app/view/MyScrollBar;->i0:Landroid/graphics/Paint;

    .line 235
    .line 236
    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 237
    .line 238
    .line 239
    iget-object p1, p0, Lcom/mycompany/app/view/MyScrollBar;->i0:Landroid/graphics/Paint;

    .line 240
    .line 241
    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    .line 242
    .line 243
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 244
    .line 245
    .line 246
    iget-object p1, p0, Lcom/mycompany/app/view/MyScrollBar;->i0:Landroid/graphics/Paint;

    .line 247
    .line 248
    iget v2, p0, Lcom/mycompany/app/view/MyScrollBar;->g0:I

    .line 249
    .line 250
    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 251
    .line 252
    .line 253
    new-instance p1, Landroid/graphics/Paint;

    .line 254
    .line 255
    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    .line 256
    .line 257
    .line 258
    iput-object p1, p0, Lcom/mycompany/app/view/MyScrollBar;->m0:Landroid/graphics/Paint;

    .line 259
    .line 260
    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 261
    .line 262
    .line 263
    iget-object p1, p0, Lcom/mycompany/app/view/MyScrollBar;->m0:Landroid/graphics/Paint;

    .line 264
    .line 265
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 266
    .line 267
    .line 268
    iget-object p1, p0, Lcom/mycompany/app/view/MyScrollBar;->m0:Landroid/graphics/Paint;

    .line 269
    .line 270
    iget v0, p0, Lcom/mycompany/app/view/MyScrollBar;->k0:I

    .line 271
    .line 272
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 273
    .line 274
    .line 275
    iget-object p1, p0, Lcom/mycompany/app/view/MyScrollBar;->m0:Landroid/graphics/Paint;

    .line 276
    .line 277
    iget v0, p0, Lcom/mycompany/app/view/MyScrollBar;->l0:I

    .line 278
    .line 279
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 280
    .line 281
    .line 282
    new-instance p1, Landroid/graphics/RectF;

    .line 283
    .line 284
    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    .line 285
    .line 286
    .line 287
    iput-object p1, p0, Lcom/mycompany/app/view/MyScrollBar;->j0:Landroid/graphics/RectF;

    .line 288
    .line 289
    new-instance p1, Landroid/graphics/RectF;

    .line 290
    .line 291
    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    .line 292
    .line 293
    .line 294
    iput-object p1, p0, Lcom/mycompany/app/view/MyScrollBar;->q0:Landroid/graphics/RectF;

    .line 295
    .line 296
    return-void
.end method

.method public setNorColor(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/view/MyScrollBar;->i0:Landroid/graphics/Paint;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    sget-boolean v1, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 7
    .line 8
    if-eqz v1, :cond_1

    .line 9
    .line 10
    const v1, -0x595616

    .line 11
    .line 12
    .line 13
    if-ne p1, v1, :cond_1

    .line 14
    .line 15
    const p1, -0x50506

    .line 16
    .line 17
    .line 18
    :cond_1
    iget v1, p0, Lcom/mycompany/app/view/MyScrollBar;->g0:I

    .line 19
    .line 20
    if-ne v1, p1, :cond_2

    .line 21
    .line 22
    :goto_0
    return-void

    .line 23
    :cond_2
    iput p1, p0, Lcom/mycompany/app/view/MyScrollBar;->g0:I

    .line 24
    .line 25
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0}, Lcom/mycompany/app/view/MyScrollBar;->invalidate()V

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method public setOneItem(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/mycompany/app/view/MyScrollBar;->R:Z

    .line 2
    .line 3
    return-void
.end method

.method public setPadBot(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/mycompany/app/view/MyScrollBar;->P:I

    .line 2
    .line 3
    return-void
.end method

.method public setPadTop(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/mycompany/app/view/MyScrollBar;->O:I

    .line 2
    .line 3
    return-void
.end method

.method public setPosLeft(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/mycompany/app/view/MyScrollBar;->N:Z

    .line 2
    .line 3
    if-ne v0, p1, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iput-boolean p1, p0, Lcom/mycompany/app/view/MyScrollBar;->N:Z

    .line 7
    .line 8
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public setPreColor(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/mycompany/app/view/MyScrollBar;->k0:I

    .line 2
    .line 3
    if-eq v0, p1, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lcom/mycompany/app/view/MyScrollBar;->m0:Landroid/graphics/Paint;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    iput p1, p0, Lcom/mycompany/app/view/MyScrollBar;->k0:I

    .line 11
    .line 12
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 13
    .line 14
    .line 15
    iget-object p1, p0, Lcom/mycompany/app/view/MyScrollBar;->m0:Landroid/graphics/Paint;

    .line 16
    .line 17
    iget v0, p0, Lcom/mycompany/app/view/MyScrollBar;->l0:I

    .line 18
    .line 19
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0}, Lcom/mycompany/app/view/MyScrollBar;->invalidate()V

    .line 23
    .line 24
    .line 25
    :cond_1
    :goto_0
    return-void
.end method

.method public setVisibility(I)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Lcom/mycompany/app/view/MyFadeView;->setVisibility(I)V

    .line 2
    .line 3
    .line 4
    if-eqz p1, :cond_3

    .line 5
    .line 6
    iget-boolean p1, p0, Lcom/mycompany/app/view/MyScrollBar;->r0:Z

    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    const/4 v1, 0x0

    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    iput-boolean v1, p0, Lcom/mycompany/app/view/MyScrollBar;->r0:Z

    .line 13
    .line 14
    move v1, v0

    .line 15
    :cond_0
    iget-object p1, p0, Lcom/mycompany/app/view/MyScrollBar;->n0:Landroid/animation/ValueAnimator;

    .line 16
    .line 17
    const/4 v2, 0x0

    .line 18
    if-eqz p1, :cond_1

    .line 19
    .line 20
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 21
    .line 22
    .line 23
    iput-object v2, p0, Lcom/mycompany/app/view/MyScrollBar;->n0:Landroid/animation/ValueAnimator;

    .line 24
    .line 25
    move v1, v0

    .line 26
    :cond_1
    iget-object p1, p0, Lcom/mycompany/app/view/MyScrollBar;->o0:Landroid/animation/ValueAnimator;

    .line 27
    .line 28
    if-eqz p1, :cond_2

    .line 29
    .line 30
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 31
    .line 32
    .line 33
    iput-object v2, p0, Lcom/mycompany/app/view/MyScrollBar;->o0:Landroid/animation/ValueAnimator;

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_2
    move v0, v1

    .line 37
    :goto_0
    if-eqz v0, :cond_3

    .line 38
    .line 39
    invoke-virtual {p0}, Lcom/mycompany/app/view/MyScrollBar;->invalidate()V

    .line 40
    .line 41
    .line 42
    :cond_3
    return-void
.end method
