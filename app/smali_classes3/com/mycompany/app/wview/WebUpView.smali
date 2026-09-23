.class public Lcom/mycompany/app/wview/WebUpView;
.super Landroid/view/View;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mycompany/app/wview/WebUpView$UpViewListener;,
        Lcom/mycompany/app/wview/WebUpView$EventHandler;
    }
.end annotation


# instance fields
.field public A:Z

.field public B:Lcom/mycompany/app/wview/WebUpView$EventHandler;

.field public C:F

.field public D:Z

.field public final E:Ljava/lang/Runnable;

.field public F:F

.field public G:Z

.field public final H:Ljava/lang/Runnable;

.field public c:Z

.field public f:Landroid/content/Context;

.field public g:Lcom/mycompany/app/wview/WebUpView$UpViewListener;

.field public h:Z

.field public final i:I

.field public j:I

.field public k:I

.field public l:Landroid/graphics/Paint;

.field public final m:I

.field public n:I

.field public o:I

.field public p:Landroid/graphics/Paint;

.field public q:Landroid/animation/ValueAnimator;

.field public r:Landroid/animation/ValueAnimator;

.field public s:F

.field public t:I

.field public u:Landroid/graphics/Paint;

.field public final v:I

.field public final w:I

.field public x:I

.field public y:Landroid/graphics/drawable/Drawable;

.field public z:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/mycompany/app/wview/WebUpView$5;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Lcom/mycompany/app/wview/WebUpView$5;-><init>(Lcom/mycompany/app/wview/WebUpView;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/mycompany/app/wview/WebUpView;->E:Ljava/lang/Runnable;

    .line 10
    .line 11
    new-instance v0, Lcom/mycompany/app/wview/WebUpView$9;

    .line 12
    .line 13
    invoke-direct {v0, p0}, Lcom/mycompany/app/wview/WebUpView$9;-><init>(Lcom/mycompany/app/wview/WebUpView;)V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/mycompany/app/wview/WebUpView;->H:Ljava/lang/Runnable;

    .line 17
    .line 18
    const/4 v0, 0x1

    .line 19
    iput-boolean v0, p0, Lcom/mycompany/app/wview/WebUpView;->c:Z

    .line 20
    .line 21
    iput-object p1, p0, Lcom/mycompany/app/wview/WebUpView;->f:Landroid/content/Context;

    .line 22
    .line 23
    sget p1, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 24
    .line 25
    div-int/lit8 p1, p1, 0x2

    .line 26
    .line 27
    sget v0, Lcom/mycompany/app/main/MainApp;->j1:I

    .line 28
    .line 29
    iput v0, p0, Lcom/mycompany/app/wview/WebUpView;->i:I

    .line 30
    .line 31
    sget v0, Lcom/mycompany/app/main/MainApp;->k1:I

    .line 32
    .line 33
    iput v0, p0, Lcom/mycompany/app/wview/WebUpView;->m:I

    .line 34
    .line 35
    iput p1, p0, Lcom/mycompany/app/wview/WebUpView;->v:I

    .line 36
    .line 37
    iput p1, p0, Lcom/mycompany/app/wview/WebUpView;->w:I

    .line 38
    .line 39
    new-instance p1, Lcom/mycompany/app/wview/WebUpView$1;

    .line 40
    .line 41
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 45
    .line 46
    .line 47
    new-instance p1, Lcom/mycompany/app/wview/WebUpView$2;

    .line 48
    .line 49
    invoke-direct {p1, p0}, Lcom/mycompany/app/wview/WebUpView$2;-><init>(Lcom/mycompany/app/wview/WebUpView;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {p0, p1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 53
    .line 54
    .line 55
    return-void
.end method

.method public static bridge synthetic a(Lcom/mycompany/app/wview/WebUpView;F)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/mycompany/app/wview/WebUpView;->setValPreScaleDn(F)V

    return-void
.end method

.method public static bridge synthetic b(Lcom/mycompany/app/wview/WebUpView;F)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/mycompany/app/wview/WebUpView;->setValPreScaleUp(F)V

    return-void
.end method

.method private setValPreScaleDn(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/wview/WebUpView;->p:Landroid/graphics/Paint;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iput p1, p0, Lcom/mycompany/app/wview/WebUpView;->s:F

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/mycompany/app/wview/WebUpView;->invalidate()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method private setValPreScaleUp(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/wview/WebUpView;->p:Landroid/graphics/Paint;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iput p1, p0, Lcom/mycompany/app/wview/WebUpView;->s:F

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/mycompany/app/wview/WebUpView;->invalidate()V

    .line 9
    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final c()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/mycompany/app/wview/WebUpView;->z:Z

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    iget-boolean v0, p0, Lcom/mycompany/app/wview/WebUpView;->A:Z

    .line 8
    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    :cond_0
    iput-boolean v2, p0, Lcom/mycompany/app/wview/WebUpView;->z:Z

    .line 12
    .line 13
    iput-boolean v2, p0, Lcom/mycompany/app/wview/WebUpView;->A:Z

    .line 14
    .line 15
    move v2, v1

    .line 16
    :cond_1
    iget-object v0, p0, Lcom/mycompany/app/wview/WebUpView;->q:Landroid/animation/ValueAnimator;

    .line 17
    .line 18
    const/4 v3, 0x0

    .line 19
    if-eqz v0, :cond_2

    .line 20
    .line 21
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 22
    .line 23
    .line 24
    iput-object v3, p0, Lcom/mycompany/app/wview/WebUpView;->q:Landroid/animation/ValueAnimator;

    .line 25
    .line 26
    move v2, v1

    .line 27
    :cond_2
    iget-object v0, p0, Lcom/mycompany/app/wview/WebUpView;->r:Landroid/animation/ValueAnimator;

    .line 28
    .line 29
    if-eqz v0, :cond_3

    .line 30
    .line 31
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 32
    .line 33
    .line 34
    iput-object v3, p0, Lcom/mycompany/app/wview/WebUpView;->r:Landroid/animation/ValueAnimator;

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_3
    move v1, v2

    .line 38
    :goto_0
    if-eqz v1, :cond_4

    .line 39
    .line 40
    invoke-virtual {p0}, Lcom/mycompany/app/wview/WebUpView;->invalidate()V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0}, Lcom/mycompany/app/wview/WebUpView;->f()V

    .line 44
    .line 45
    .line 46
    :cond_4
    return-void
.end method

.method public final d()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/wview/WebUpView;->B:Lcom/mycompany/app/wview/WebUpView$EventHandler;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 7
    .line 8
    .line 9
    :cond_0
    const/16 v0, 0x8

    .line 10
    .line 11
    invoke-virtual {p0, v0}, Lcom/mycompany/app/wview/WebUpView;->setVisibility(I)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public final e()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/mycompany/app/wview/WebUpView;->c:Z

    .line 3
    .line 4
    iget-object v1, p0, Lcom/mycompany/app/wview/WebUpView;->q:Landroid/animation/ValueAnimator;

    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 10
    .line 11
    .line 12
    iput-object v2, p0, Lcom/mycompany/app/wview/WebUpView;->q:Landroid/animation/ValueAnimator;

    .line 13
    .line 14
    :cond_0
    iget-object v1, p0, Lcom/mycompany/app/wview/WebUpView;->r:Landroid/animation/ValueAnimator;

    .line 15
    .line 16
    if-eqz v1, :cond_1

    .line 17
    .line 18
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 19
    .line 20
    .line 21
    iput-object v2, p0, Lcom/mycompany/app/wview/WebUpView;->r:Landroid/animation/ValueAnimator;

    .line 22
    .line 23
    :cond_1
    iget-object v1, p0, Lcom/mycompany/app/wview/WebUpView;->B:Lcom/mycompany/app/wview/WebUpView$EventHandler;

    .line 24
    .line 25
    if-eqz v1, :cond_2

    .line 26
    .line 27
    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 28
    .line 29
    .line 30
    iput-object v2, p0, Lcom/mycompany/app/wview/WebUpView;->B:Lcom/mycompany/app/wview/WebUpView$EventHandler;

    .line 31
    .line 32
    :cond_2
    iput-object v2, p0, Lcom/mycompany/app/wview/WebUpView;->f:Landroid/content/Context;

    .line 33
    .line 34
    iput-object v2, p0, Lcom/mycompany/app/wview/WebUpView;->g:Lcom/mycompany/app/wview/WebUpView$UpViewListener;

    .line 35
    .line 36
    iput-object v2, p0, Lcom/mycompany/app/wview/WebUpView;->l:Landroid/graphics/Paint;

    .line 37
    .line 38
    iput-object v2, p0, Lcom/mycompany/app/wview/WebUpView;->p:Landroid/graphics/Paint;

    .line 39
    .line 40
    iput-object v2, p0, Lcom/mycompany/app/wview/WebUpView;->u:Landroid/graphics/Paint;

    .line 41
    .line 42
    iput-object v2, p0, Lcom/mycompany/app/wview/WebUpView;->y:Landroid/graphics/drawable/Drawable;

    .line 43
    .line 44
    return-void
.end method

.method public final f()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/wview/WebUpView;->B:Lcom/mycompany/app/wview/WebUpView$EventHandler;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 7
    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    iget-boolean v0, p0, Lcom/mycompany/app/wview/WebUpView;->z:Z

    .line 11
    .line 12
    if-nez v0, :cond_1

    .line 13
    .line 14
    new-instance v0, Lcom/mycompany/app/wview/WebUpView$EventHandler;

    .line 15
    .line 16
    invoke-direct {v0, p0}, Lcom/mycompany/app/wview/WebUpView$EventHandler;-><init>(Lcom/mycompany/app/wview/WebUpView;)V

    .line 17
    .line 18
    .line 19
    iput-object v0, p0, Lcom/mycompany/app/wview/WebUpView;->B:Lcom/mycompany/app/wview/WebUpView$EventHandler;

    .line 20
    .line 21
    :cond_1
    :goto_0
    iget-boolean v0, p0, Lcom/mycompany/app/wview/WebUpView;->z:Z

    .line 22
    .line 23
    if-nez v0, :cond_2

    .line 24
    .line 25
    iget-object v0, p0, Lcom/mycompany/app/wview/WebUpView;->B:Lcom/mycompany/app/wview/WebUpView$EventHandler;

    .line 26
    .line 27
    if-eqz v0, :cond_2

    .line 28
    .line 29
    const-wide/16 v2, 0x7d0

    .line 30
    .line 31
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 32
    .line 33
    .line 34
    :cond_2
    return-void
.end method

.method public final g()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/wview/WebUpView;->p:Landroid/graphics/Paint;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/wview/WebUpView;->r:Landroid/animation/ValueAnimator;

    .line 7
    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_1
    iget v0, p0, Lcom/mycompany/app/wview/WebUpView;->s:F

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
    iput v0, p0, Lcom/mycompany/app/wview/WebUpView;->F:F

    .line 22
    .line 23
    const/4 v2, 0x0

    .line 24
    iput-boolean v2, p0, Lcom/mycompany/app/wview/WebUpView;->G:Z

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
    iput-object v0, p0, Lcom/mycompany/app/wview/WebUpView;->r:Landroid/animation/ValueAnimator;

    .line 39
    .line 40
    const-wide/16 v1, 0xc8

    .line 41
    .line 42
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 43
    .line 44
    .line 45
    iget-object v0, p0, Lcom/mycompany/app/wview/WebUpView;->r:Landroid/animation/ValueAnimator;

    .line 46
    .line 47
    invoke-static {v0}, Lcom/mycompany/app/dialog/a;->r(Landroid/animation/ValueAnimator;)V

    .line 48
    .line 49
    .line 50
    iget-object v0, p0, Lcom/mycompany/app/wview/WebUpView;->r:Landroid/animation/ValueAnimator;

    .line 51
    .line 52
    new-instance v1, Lcom/mycompany/app/wview/WebUpView$7;

    .line 53
    .line 54
    invoke-direct {v1, p0}, Lcom/mycompany/app/wview/WebUpView$7;-><init>(Lcom/mycompany/app/wview/WebUpView;)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 58
    .line 59
    .line 60
    iget-object v0, p0, Lcom/mycompany/app/wview/WebUpView;->r:Landroid/animation/ValueAnimator;

    .line 61
    .line 62
    new-instance v1, Lcom/mycompany/app/wview/WebUpView$8;

    .line 63
    .line 64
    invoke-direct {v1, p0}, Lcom/mycompany/app/wview/WebUpView$8;-><init>(Lcom/mycompany/app/wview/WebUpView;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 68
    .line 69
    .line 70
    iget-object v0, p0, Lcom/mycompany/app/wview/WebUpView;->q:Landroid/animation/ValueAnimator;

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
    iget-object v0, p0, Lcom/mycompany/app/wview/WebUpView;->r:Landroid/animation/ValueAnimator;

    .line 78
    .line 79
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 80
    .line 81
    .line 82
    return-void
.end method

.method public final invalidate()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/mycompany/app/wview/WebUpView;->c:Z

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

.method public final onDetachedFromWindow()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/wview/WebUpView;->q:Landroid/animation/ValueAnimator;

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
    iput-object v1, p0, Lcom/mycompany/app/wview/WebUpView;->q:Landroid/animation/ValueAnimator;

    .line 10
    .line 11
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/wview/WebUpView;->r:Landroid/animation/ValueAnimator;

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 16
    .line 17
    .line 18
    iput-object v1, p0, Lcom/mycompany/app/wview/WebUpView;->r:Landroid/animation/ValueAnimator;

    .line 19
    .line 20
    :cond_1
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 8

    .line 1
    iget-boolean v0, p0, Lcom/mycompany/app/wview/WebUpView;->c:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto/16 :goto_4

    .line 6
    .line 7
    :cond_0
    iget-boolean v0, p0, Lcom/mycompany/app/wview/WebUpView;->z:Z

    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    const/4 v2, 0x0

    .line 11
    if-nez v0, :cond_2

    .line 12
    .line 13
    iget-object v0, p0, Lcom/mycompany/app/wview/WebUpView;->q:Landroid/animation/ValueAnimator;

    .line 14
    .line 15
    if-nez v0, :cond_2

    .line 16
    .line 17
    iget-object v0, p0, Lcom/mycompany/app/wview/WebUpView;->r:Landroid/animation/ValueAnimator;

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
    iget v3, p0, Lcom/mycompany/app/wview/WebUpView;->k:I

    .line 26
    .line 27
    const/high16 v4, 0x40a00000    # 5.0f

    .line 28
    .line 29
    if-eqz v0, :cond_3

    .line 30
    .line 31
    int-to-float v3, v3

    .line 32
    const/high16 v5, 0x3f800000    # 1.0f

    .line 33
    .line 34
    iget v6, p0, Lcom/mycompany/app/wview/WebUpView;->s:F

    .line 35
    .line 36
    sub-float/2addr v5, v6

    .line 37
    mul-float/2addr v5, v3

    .line 38
    mul-float/2addr v5, v4

    .line 39
    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    .line 40
    .line 41
    .line 42
    move-result v3

    .line 43
    iget v5, p0, Lcom/mycompany/app/wview/WebUpView;->k:I

    .line 44
    .line 45
    if-le v3, v5, :cond_3

    .line 46
    .line 47
    move v3, v5

    .line 48
    :cond_3
    iget-object v5, p0, Lcom/mycompany/app/wview/WebUpView;->l:Landroid/graphics/Paint;

    .line 49
    .line 50
    if-eqz v5, :cond_4

    .line 51
    .line 52
    invoke-virtual {v5, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 53
    .line 54
    .line 55
    iget v3, p0, Lcom/mycompany/app/wview/WebUpView;->v:I

    .line 56
    .line 57
    int-to-float v3, v3

    .line 58
    iget v5, p0, Lcom/mycompany/app/wview/WebUpView;->w:I

    .line 59
    .line 60
    int-to-float v5, v5

    .line 61
    iget v6, p0, Lcom/mycompany/app/wview/WebUpView;->i:I

    .line 62
    .line 63
    int-to-float v6, v6

    .line 64
    iget-object v7, p0, Lcom/mycompany/app/wview/WebUpView;->l:Landroid/graphics/Paint;

    .line 65
    .line 66
    invoke-virtual {p1, v3, v5, v6, v7}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 67
    .line 68
    .line 69
    :cond_4
    if-eqz v0, :cond_5

    .line 70
    .line 71
    iget-object v0, p0, Lcom/mycompany/app/wview/WebUpView;->p:Landroid/graphics/Paint;

    .line 72
    .line 73
    if-eqz v0, :cond_5

    .line 74
    .line 75
    iget v2, p0, Lcom/mycompany/app/wview/WebUpView;->o:I

    .line 76
    .line 77
    int-to-float v2, v2

    .line 78
    iget v3, p0, Lcom/mycompany/app/wview/WebUpView;->s:F

    .line 79
    .line 80
    const v5, 0x3f4ccccd    # 0.8f

    .line 81
    .line 82
    .line 83
    sub-float/2addr v3, v5

    .line 84
    mul-float/2addr v3, v2

    .line 85
    mul-float/2addr v3, v4

    .line 86
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    .line 87
    .line 88
    .line 89
    move-result v2

    .line 90
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 94
    .line 95
    .line 96
    iget v0, p0, Lcom/mycompany/app/wview/WebUpView;->s:F

    .line 97
    .line 98
    iget v2, p0, Lcom/mycompany/app/wview/WebUpView;->v:I

    .line 99
    .line 100
    int-to-float v2, v2

    .line 101
    iget v3, p0, Lcom/mycompany/app/wview/WebUpView;->w:I

    .line 102
    .line 103
    int-to-float v3, v3

    .line 104
    invoke-virtual {p1, v0, v0, v2, v3}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 105
    .line 106
    .line 107
    iget v0, p0, Lcom/mycompany/app/wview/WebUpView;->v:I

    .line 108
    .line 109
    int-to-float v0, v0

    .line 110
    iget v2, p0, Lcom/mycompany/app/wview/WebUpView;->w:I

    .line 111
    .line 112
    int-to-float v2, v2

    .line 113
    iget v3, p0, Lcom/mycompany/app/wview/WebUpView;->m:I

    .line 114
    .line 115
    int-to-float v3, v3

    .line 116
    iget-object v4, p0, Lcom/mycompany/app/wview/WebUpView;->p:Landroid/graphics/Paint;

    .line 117
    .line 118
    invoke-virtual {p1, v0, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 119
    .line 120
    .line 121
    goto :goto_2

    .line 122
    :cond_5
    move v1, v2

    .line 123
    :goto_2
    iget-object v0, p0, Lcom/mycompany/app/wview/WebUpView;->u:Landroid/graphics/Paint;

    .line 124
    .line 125
    if-eqz v0, :cond_7

    .line 126
    .line 127
    sget v2, Lcom/mycompany/app/main/MainApp;->n1:I

    .line 128
    .line 129
    int-to-float v2, v2

    .line 130
    const/high16 v3, 0x40000000    # 2.0f

    .line 131
    .line 132
    div-float/2addr v2, v3

    .line 133
    iget v3, p0, Lcom/mycompany/app/wview/WebUpView;->v:I

    .line 134
    .line 135
    int-to-float v3, v3

    .line 136
    iget v4, p0, Lcom/mycompany/app/wview/WebUpView;->w:I

    .line 137
    .line 138
    int-to-float v4, v4

    .line 139
    if-eqz v1, :cond_6

    .line 140
    .line 141
    iget v5, p0, Lcom/mycompany/app/wview/WebUpView;->m:I

    .line 142
    .line 143
    goto :goto_3

    .line 144
    :cond_6
    iget v5, p0, Lcom/mycompany/app/wview/WebUpView;->i:I

    .line 145
    .line 146
    :goto_3
    int-to-float v5, v5

    .line 147
    sub-float/2addr v5, v2

    .line 148
    invoke-virtual {p1, v3, v4, v5, v0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 149
    .line 150
    .line 151
    :cond_7
    if-eqz v1, :cond_8

    .line 152
    .line 153
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 154
    .line 155
    .line 156
    :cond_8
    iget-object v0, p0, Lcom/mycompany/app/wview/WebUpView;->y:Landroid/graphics/drawable/Drawable;

    .line 157
    .line 158
    if-eqz v0, :cond_9

    .line 159
    .line 160
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 161
    .line 162
    .line 163
    :cond_9
    :goto_4
    return-void
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/mycompany/app/wview/WebUpView;->c:Z

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
    if-eqz v0, :cond_9

    .line 18
    .line 19
    if-eq v0, v2, :cond_4

    .line 20
    .line 21
    if-eq v0, v1, :cond_1

    .line 22
    .line 23
    const/4 v1, 0x3

    .line 24
    if-eq v0, v1, :cond_5

    .line 25
    .line 26
    goto/16 :goto_1

    .line 27
    .line 28
    :cond_1
    iget-boolean v0, p0, Lcom/mycompany/app/wview/WebUpView;->z:Z

    .line 29
    .line 30
    if-nez v0, :cond_3

    .line 31
    .line 32
    iget-boolean v0, p0, Lcom/mycompany/app/wview/WebUpView;->A:Z

    .line 33
    .line 34
    if-eqz v0, :cond_2

    .line 35
    .line 36
    iput-boolean v3, p0, Lcom/mycompany/app/wview/WebUpView;->A:Z

    .line 37
    .line 38
    invoke-virtual {p0}, Lcom/mycompany/app/wview/WebUpView;->g()V

    .line 39
    .line 40
    .line 41
    :cond_2
    invoke-virtual {p0}, Lcom/mycompany/app/wview/WebUpView;->f()V

    .line 42
    .line 43
    .line 44
    goto/16 :goto_1

    .line 45
    .line 46
    :cond_3
    iget-boolean v0, p0, Lcom/mycompany/app/wview/WebUpView;->A:Z

    .line 47
    .line 48
    if-eqz v0, :cond_d

    .line 49
    .line 50
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    float-to-int v0, v0

    .line 55
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    .line 56
    .line 57
    .line 58
    move-result v1

    .line 59
    float-to-int v1, v1

    .line 60
    sget v2, Lcom/mycompany/app/main/MainApp;->C1:I

    .line 61
    .line 62
    invoke-static {v0, v1, v2, p0}, Lcom/mycompany/app/main/MainUtil;->J5(IIILandroid/view/View;)Z

    .line 63
    .line 64
    .line 65
    move-result v0

    .line 66
    if-nez v0, :cond_d

    .line 67
    .line 68
    iput-boolean v3, p0, Lcom/mycompany/app/wview/WebUpView;->z:Z

    .line 69
    .line 70
    iput-boolean v3, p0, Lcom/mycompany/app/wview/WebUpView;->A:Z

    .line 71
    .line 72
    invoke-virtual {p0}, Lcom/mycompany/app/wview/WebUpView;->g()V

    .line 73
    .line 74
    .line 75
    invoke-virtual {p0}, Lcom/mycompany/app/wview/WebUpView;->f()V

    .line 76
    .line 77
    .line 78
    goto/16 :goto_1

    .line 79
    .line 80
    :cond_4
    iget-boolean v0, p0, Lcom/mycompany/app/wview/WebUpView;->A:Z

    .line 81
    .line 82
    if-eqz v0, :cond_5

    .line 83
    .line 84
    iget-object v0, p0, Lcom/mycompany/app/wview/WebUpView;->g:Lcom/mycompany/app/wview/WebUpView$UpViewListener;

    .line 85
    .line 86
    if-eqz v0, :cond_5

    .line 87
    .line 88
    new-instance v0, Lcom/mycompany/app/wview/WebUpView$11;

    .line 89
    .line 90
    invoke-direct {v0, p0}, Lcom/mycompany/app/wview/WebUpView$11;-><init>(Lcom/mycompany/app/wview/WebUpView;)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 94
    .line 95
    .line 96
    :cond_5
    iget-boolean v0, p0, Lcom/mycompany/app/wview/WebUpView;->z:Z

    .line 97
    .line 98
    if-nez v0, :cond_7

    .line 99
    .line 100
    iget-boolean v0, p0, Lcom/mycompany/app/wview/WebUpView;->A:Z

    .line 101
    .line 102
    if-eqz v0, :cond_6

    .line 103
    .line 104
    iput-boolean v3, p0, Lcom/mycompany/app/wview/WebUpView;->A:Z

    .line 105
    .line 106
    invoke-virtual {p0}, Lcom/mycompany/app/wview/WebUpView;->g()V

    .line 107
    .line 108
    .line 109
    :cond_6
    invoke-virtual {p0}, Lcom/mycompany/app/wview/WebUpView;->f()V

    .line 110
    .line 111
    .line 112
    goto :goto_1

    .line 113
    :cond_7
    iput-boolean v3, p0, Lcom/mycompany/app/wview/WebUpView;->z:Z

    .line 114
    .line 115
    iget-boolean v0, p0, Lcom/mycompany/app/wview/WebUpView;->A:Z

    .line 116
    .line 117
    if-eqz v0, :cond_8

    .line 118
    .line 119
    iput-boolean v3, p0, Lcom/mycompany/app/wview/WebUpView;->A:Z

    .line 120
    .line 121
    invoke-virtual {p0}, Lcom/mycompany/app/wview/WebUpView;->g()V

    .line 122
    .line 123
    .line 124
    :cond_8
    invoke-virtual {p0}, Lcom/mycompany/app/wview/WebUpView;->f()V

    .line 125
    .line 126
    .line 127
    invoke-virtual {p0}, Lcom/mycompany/app/wview/WebUpView;->invalidate()V

    .line 128
    .line 129
    .line 130
    goto :goto_1

    .line 131
    :cond_9
    iput-boolean v2, p0, Lcom/mycompany/app/wview/WebUpView;->z:Z

    .line 132
    .line 133
    iput-boolean v2, p0, Lcom/mycompany/app/wview/WebUpView;->A:Z

    .line 134
    .line 135
    iget-object v0, p0, Lcom/mycompany/app/wview/WebUpView;->p:Landroid/graphics/Paint;

    .line 136
    .line 137
    if-nez v0, :cond_a

    .line 138
    .line 139
    goto :goto_0

    .line 140
    :cond_a
    iget-object v0, p0, Lcom/mycompany/app/wview/WebUpView;->q:Landroid/animation/ValueAnimator;

    .line 141
    .line 142
    if-eqz v0, :cond_b

    .line 143
    .line 144
    goto :goto_0

    .line 145
    :cond_b
    const v0, 0x3f4ccccd    # 0.8f

    .line 146
    .line 147
    .line 148
    iput v0, p0, Lcom/mycompany/app/wview/WebUpView;->s:F

    .line 149
    .line 150
    iput v0, p0, Lcom/mycompany/app/wview/WebUpView;->C:F

    .line 151
    .line 152
    iput-boolean v3, p0, Lcom/mycompany/app/wview/WebUpView;->D:Z

    .line 153
    .line 154
    new-array v0, v1, [F

    .line 155
    .line 156
    fill-array-data v0, :array_0

    .line 157
    .line 158
    .line 159
    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 160
    .line 161
    .line 162
    move-result-object v0

    .line 163
    iput-object v0, p0, Lcom/mycompany/app/wview/WebUpView;->q:Landroid/animation/ValueAnimator;

    .line 164
    .line 165
    const-wide/16 v1, 0xc8

    .line 166
    .line 167
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 168
    .line 169
    .line 170
    iget-object v0, p0, Lcom/mycompany/app/wview/WebUpView;->q:Landroid/animation/ValueAnimator;

    .line 171
    .line 172
    invoke-static {v0}, Lcom/mycompany/app/dialog/a;->v(Landroid/animation/ValueAnimator;)V

    .line 173
    .line 174
    .line 175
    iget-object v0, p0, Lcom/mycompany/app/wview/WebUpView;->q:Landroid/animation/ValueAnimator;

    .line 176
    .line 177
    new-instance v1, Lcom/mycompany/app/wview/WebUpView$3;

    .line 178
    .line 179
    invoke-direct {v1, p0}, Lcom/mycompany/app/wview/WebUpView$3;-><init>(Lcom/mycompany/app/wview/WebUpView;)V

    .line 180
    .line 181
    .line 182
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 183
    .line 184
    .line 185
    iget-object v0, p0, Lcom/mycompany/app/wview/WebUpView;->q:Landroid/animation/ValueAnimator;

    .line 186
    .line 187
    new-instance v1, Lcom/mycompany/app/wview/WebUpView$4;

    .line 188
    .line 189
    invoke-direct {v1, p0}, Lcom/mycompany/app/wview/WebUpView$4;-><init>(Lcom/mycompany/app/wview/WebUpView;)V

    .line 190
    .line 191
    .line 192
    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 193
    .line 194
    .line 195
    iget-object v0, p0, Lcom/mycompany/app/wview/WebUpView;->r:Landroid/animation/ValueAnimator;

    .line 196
    .line 197
    if-eqz v0, :cond_c

    .line 198
    .line 199
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 200
    .line 201
    .line 202
    :cond_c
    iget-object v0, p0, Lcom/mycompany/app/wview/WebUpView;->q:Landroid/animation/ValueAnimator;

    .line 203
    .line 204
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 205
    .line 206
    .line 207
    :goto_0
    iget-object v0, p0, Lcom/mycompany/app/wview/WebUpView;->B:Lcom/mycompany/app/wview/WebUpView$EventHandler;

    .line 208
    .line 209
    if-eqz v0, :cond_d

    .line 210
    .line 211
    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 212
    .line 213
    .line 214
    :cond_d
    :goto_1
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 215
    .line 216
    .line 217
    move-result p1

    .line 218
    return p1

    .line 219
    :array_0
    .array-data 4
        0x3f4ccccd    # 0.8f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public setBgColors(Z)V
    .locals 5

    .line 1
    invoke-static {p1}, Lcom/mycompany/app/main/MainUtil;->k5(Z)Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    const/high16 p1, -0x1000000

    .line 8
    .line 9
    sget v0, Lcom/mycompany/app/pref/PrefEditor;->J:I

    .line 10
    .line 11
    invoke-static {p1, v0}, Lcom/mycompany/app/pref/PrefEditor;->r(II)I

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    sget v0, Lnet/kaki87/soul2/testing/R$drawable;->outline_arrow_upward_dark_24:I

    .line 16
    .line 17
    const v1, -0xc0c0c1

    .line 18
    .line 19
    .line 20
    const v2, -0x3f8a8a8b

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const/4 p1, -0x1

    .line 25
    sget v0, Lcom/mycompany/app/pref/PrefEditor;->J:I

    .line 26
    .line 27
    invoke-static {p1, v0}, Lcom/mycompany/app/pref/PrefEditor;->r(II)I

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    sget v0, Lnet/kaki87/soul2/testing/R$drawable;->outline_arrow_upward_black_24:I

    .line 32
    .line 33
    const v1, -0x1f1f20

    .line 34
    .line 35
    .line 36
    const v2, -0x7f8a8a8b

    .line 37
    .line 38
    .line 39
    :goto_0
    iget v3, p0, Lcom/mycompany/app/wview/WebUpView;->j:I

    .line 40
    .line 41
    const/4 v4, 0x1

    .line 42
    if-eq v3, p1, :cond_2

    .line 43
    .line 44
    iput p1, p0, Lcom/mycompany/app/wview/WebUpView;->j:I

    .line 45
    .line 46
    if-eqz p1, :cond_1

    .line 47
    .line 48
    new-instance p1, Landroid/graphics/Paint;

    .line 49
    .line 50
    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    .line 51
    .line 52
    .line 53
    iput-object p1, p0, Lcom/mycompany/app/wview/WebUpView;->l:Landroid/graphics/Paint;

    .line 54
    .line 55
    invoke-virtual {p1, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 56
    .line 57
    .line 58
    iget-object p1, p0, Lcom/mycompany/app/wview/WebUpView;->l:Landroid/graphics/Paint;

    .line 59
    .line 60
    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    .line 61
    .line 62
    invoke-virtual {p1, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 63
    .line 64
    .line 65
    iget-object p1, p0, Lcom/mycompany/app/wview/WebUpView;->l:Landroid/graphics/Paint;

    .line 66
    .line 67
    iget v3, p0, Lcom/mycompany/app/wview/WebUpView;->j:I

    .line 68
    .line 69
    invoke-virtual {p1, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 70
    .line 71
    .line 72
    iget-object p1, p0, Lcom/mycompany/app/wview/WebUpView;->l:Landroid/graphics/Paint;

    .line 73
    .line 74
    invoke-virtual {p1}, Landroid/graphics/Paint;->getAlpha()I

    .line 75
    .line 76
    .line 77
    move-result p1

    .line 78
    iput p1, p0, Lcom/mycompany/app/wview/WebUpView;->k:I

    .line 79
    .line 80
    goto :goto_1

    .line 81
    :cond_1
    const/4 p1, 0x0

    .line 82
    iput-object p1, p0, Lcom/mycompany/app/wview/WebUpView;->l:Landroid/graphics/Paint;

    .line 83
    .line 84
    :goto_1
    move p1, v4

    .line 85
    goto :goto_2

    .line 86
    :cond_2
    const/4 p1, 0x0

    .line 87
    :goto_2
    iget v3, p0, Lcom/mycompany/app/wview/WebUpView;->n:I

    .line 88
    .line 89
    if-eq v3, v1, :cond_3

    .line 90
    .line 91
    iput v1, p0, Lcom/mycompany/app/wview/WebUpView;->n:I

    .line 92
    .line 93
    new-instance p1, Landroid/graphics/Paint;

    .line 94
    .line 95
    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    .line 96
    .line 97
    .line 98
    iput-object p1, p0, Lcom/mycompany/app/wview/WebUpView;->p:Landroid/graphics/Paint;

    .line 99
    .line 100
    invoke-virtual {p1, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 101
    .line 102
    .line 103
    iget-object p1, p0, Lcom/mycompany/app/wview/WebUpView;->p:Landroid/graphics/Paint;

    .line 104
    .line 105
    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    .line 106
    .line 107
    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 108
    .line 109
    .line 110
    iget-object p1, p0, Lcom/mycompany/app/wview/WebUpView;->p:Landroid/graphics/Paint;

    .line 111
    .line 112
    iget v1, p0, Lcom/mycompany/app/wview/WebUpView;->n:I

    .line 113
    .line 114
    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 115
    .line 116
    .line 117
    iget-object p1, p0, Lcom/mycompany/app/wview/WebUpView;->p:Landroid/graphics/Paint;

    .line 118
    .line 119
    invoke-virtual {p1}, Landroid/graphics/Paint;->getAlpha()I

    .line 120
    .line 121
    .line 122
    move-result p1

    .line 123
    iput p1, p0, Lcom/mycompany/app/wview/WebUpView;->o:I

    .line 124
    .line 125
    move p1, v4

    .line 126
    :cond_3
    iget v1, p0, Lcom/mycompany/app/wview/WebUpView;->t:I

    .line 127
    .line 128
    if-eq v1, v2, :cond_4

    .line 129
    .line 130
    iput v2, p0, Lcom/mycompany/app/wview/WebUpView;->t:I

    .line 131
    .line 132
    new-instance p1, Landroid/graphics/Paint;

    .line 133
    .line 134
    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    .line 135
    .line 136
    .line 137
    iput-object p1, p0, Lcom/mycompany/app/wview/WebUpView;->u:Landroid/graphics/Paint;

    .line 138
    .line 139
    invoke-virtual {p1, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 140
    .line 141
    .line 142
    iget-object p1, p0, Lcom/mycompany/app/wview/WebUpView;->u:Landroid/graphics/Paint;

    .line 143
    .line 144
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    .line 145
    .line 146
    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 147
    .line 148
    .line 149
    iget-object p1, p0, Lcom/mycompany/app/wview/WebUpView;->u:Landroid/graphics/Paint;

    .line 150
    .line 151
    sget v1, Lcom/mycompany/app/main/MainApp;->n1:I

    .line 152
    .line 153
    int-to-float v1, v1

    .line 154
    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 155
    .line 156
    .line 157
    iget-object p1, p0, Lcom/mycompany/app/wview/WebUpView;->u:Landroid/graphics/Paint;

    .line 158
    .line 159
    iget v1, p0, Lcom/mycompany/app/wview/WebUpView;->t:I

    .line 160
    .line 161
    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 162
    .line 163
    .line 164
    move p1, v4

    .line 165
    :cond_4
    iget v1, p0, Lcom/mycompany/app/wview/WebUpView;->x:I

    .line 166
    .line 167
    if-eq v1, v0, :cond_5

    .line 168
    .line 169
    iput v0, p0, Lcom/mycompany/app/wview/WebUpView;->x:I

    .line 170
    .line 171
    iget-object p1, p0, Lcom/mycompany/app/wview/WebUpView;->f:Landroid/content/Context;

    .line 172
    .line 173
    invoke-static {p1, v0}, Lcom/mycompany/app/main/MainUtil;->S(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 174
    .line 175
    .line 176
    move-result-object p1

    .line 177
    iput-object p1, p0, Lcom/mycompany/app/wview/WebUpView;->y:Landroid/graphics/drawable/Drawable;

    .line 178
    .line 179
    sget v0, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 180
    .line 181
    iget v1, p0, Lcom/mycompany/app/wview/WebUpView;->m:I

    .line 182
    .line 183
    sub-int/2addr v0, v1

    .line 184
    div-int/lit8 v0, v0, 0x2

    .line 185
    .line 186
    add-int/2addr v1, v0

    .line 187
    invoke-virtual {p1, v0, v0, v1, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 188
    .line 189
    .line 190
    goto :goto_3

    .line 191
    :cond_5
    move v4, p1

    .line 192
    :goto_3
    if-eqz v4, :cond_6

    .line 193
    .line 194
    invoke-virtual {p0}, Lcom/mycompany/app/wview/WebUpView;->invalidate()V

    .line 195
    .line 196
    .line 197
    :cond_6
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
    invoke-virtual {p0}, Lcom/mycompany/app/wview/WebUpView;->c()V

    .line 7
    .line 8
    .line 9
    :cond_0
    return-void
.end method

.method public setVisibility(I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 2
    .line 3
    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/mycompany/app/wview/WebUpView;->c()V

    .line 7
    .line 8
    .line 9
    :cond_0
    return-void
.end method
