.class public Lcom/mycompany/app/view/MyFadeText;
.super Landroidx/appcompat/widget/AppCompatTextView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mycompany/app/view/MyFadeText$EventHandler;
    }
.end annotation


# instance fields
.field public A:F

.field public B:Z

.field public final C:Ljava/lang/Runnable;

.field public l:Z

.field public m:I

.field public n:I

.field public o:Landroid/animation/ValueAnimator;

.field public p:Landroid/animation/ValueAnimator;

.field public q:Lcom/mycompany/app/view/MyFadeText$EventHandler;

.field public r:Z

.field public s:Z

.field public t:Z

.field public u:Z

.field public v:Z

.field public w:Lcom/mycompany/app/view/MyFadeListener;

.field public x:F

.field public y:Z

.field public final z:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, v0}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 3
    .line 4
    .line 5
    new-instance p1, Lcom/mycompany/app/view/MyFadeText$3;

    .line 6
    .line 7
    invoke-direct {p1, p0}, Lcom/mycompany/app/view/MyFadeText$3;-><init>(Lcom/mycompany/app/view/MyFadeText;)V

    .line 8
    .line 9
    .line 10
    iput-object p1, p0, Lcom/mycompany/app/view/MyFadeText;->z:Ljava/lang/Runnable;

    .line 11
    .line 12
    new-instance p1, Lcom/mycompany/app/view/MyFadeText$7;

    .line 13
    .line 14
    invoke-direct {p1, p0}, Lcom/mycompany/app/view/MyFadeText$7;-><init>(Lcom/mycompany/app/view/MyFadeText;)V

    .line 15
    .line 16
    .line 17
    iput-object p1, p0, Lcom/mycompany/app/view/MyFadeText;->C:Ljava/lang/Runnable;

    .line 18
    .line 19
    const/4 p1, 0x1

    .line 20
    iput-boolean p1, p0, Lcom/mycompany/app/view/MyFadeText;->l:Z

    .line 21
    .line 22
    const/16 p1, 0x190

    .line 23
    .line 24
    iput p1, p0, Lcom/mycompany/app/view/MyFadeText;->m:I

    .line 25
    .line 26
    const/16 p1, 0xbb8

    .line 27
    .line 28
    iput p1, p0, Lcom/mycompany/app/view/MyFadeText;->n:I

    .line 29
    .line 30
    const/4 p1, 0x0

    .line 31
    iput-boolean p1, p0, Lcom/mycompany/app/view/MyFadeText;->r:Z

    .line 32
    .line 33
    iput-boolean p1, p0, Lcom/mycompany/app/view/MyFadeText;->s:Z

    .line 34
    .line 35
    iput-boolean p1, p0, Lcom/mycompany/app/view/MyFadeText;->t:Z

    .line 36
    .line 37
    iput-boolean p1, p0, Lcom/mycompany/app/view/MyFadeText;->u:Z

    .line 38
    .line 39
    return-void
.end method

.method public static bridge synthetic q(Lcom/mycompany/app/view/MyFadeText;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/mycompany/app/view/MyFadeText;->setOnlyVisibility(I)V

    return-void
.end method

.method public static bridge synthetic r(Lcom/mycompany/app/view/MyFadeText;F)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/mycompany/app/view/MyFadeText;->setValAnimHide(F)V

    return-void
.end method

.method public static bridge synthetic s(Lcom/mycompany/app/view/MyFadeText;F)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/mycompany/app/view/MyFadeText;->setValAnimShow(F)V

    return-void
.end method

.method private setOnlyVisibility(I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2
    .line 3
    .line 4
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
    invoke-direct {p0, p1}, Lcom/mycompany/app/view/MyFadeText;->setOnlyVisibility(I)V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method


# virtual methods
.method public final dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/mycompany/app/view/MyFadeText;->r:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-super {p0, p1}, Landroid/widget/TextView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

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
    const/4 v1, 0x0

    .line 15
    const/4 v2, 0x1

    .line 16
    if-nez v0, :cond_1

    .line 17
    .line 18
    iput-boolean v2, p0, Lcom/mycompany/app/view/MyFadeText;->v:Z

    .line 19
    .line 20
    iget-object v0, p0, Lcom/mycompany/app/view/MyFadeText;->q:Lcom/mycompany/app/view/MyFadeText$EventHandler;

    .line 21
    .line 22
    if-eqz v0, :cond_3

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_1
    if-eq v0, v2, :cond_2

    .line 29
    .line 30
    const/4 v2, 0x3

    .line 31
    if-ne v0, v2, :cond_3

    .line 32
    .line 33
    :cond_2
    iput-boolean v1, p0, Lcom/mycompany/app/view/MyFadeText;->v:Z

    .line 34
    .line 35
    iget-object v0, p0, Lcom/mycompany/app/view/MyFadeText;->q:Lcom/mycompany/app/view/MyFadeText$EventHandler;

    .line 36
    .line 37
    if-eqz v0, :cond_3

    .line 38
    .line 39
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 40
    .line 41
    .line 42
    iget-boolean v0, p0, Lcom/mycompany/app/view/MyFadeText;->s:Z

    .line 43
    .line 44
    if-eqz v0, :cond_3

    .line 45
    .line 46
    iget-object v0, p0, Lcom/mycompany/app/view/MyFadeText;->q:Lcom/mycompany/app/view/MyFadeText$EventHandler;

    .line 47
    .line 48
    iget v2, p0, Lcom/mycompany/app/view/MyFadeText;->n:I

    .line 49
    .line 50
    int-to-long v2, v2

    .line 51
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 52
    .line 53
    .line 54
    :cond_3
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/TextView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 55
    .line 56
    .line 57
    move-result p1

    .line 58
    return p1
.end method

.method public final invalidate()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/mycompany/app/view/MyFadeText;->l:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-super {p0}, Landroid/widget/TextView;->invalidate()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final onDetachedFromWindow()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/view/MyFadeText;->o:Landroid/animation/ValueAnimator;

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
    iput-object v1, p0, Lcom/mycompany/app/view/MyFadeText;->o:Landroid/animation/ValueAnimator;

    .line 10
    .line 11
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/view/MyFadeText;->p:Landroid/animation/ValueAnimator;

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 16
    .line 17
    .line 18
    iput-object v1, p0, Lcom/mycompany/app/view/MyFadeText;->p:Landroid/animation/ValueAnimator;

    .line 19
    .line 20
    :cond_1
    invoke-super {p0}, Landroidx/appcompat/widget/AppCompatTextView;->onDetachedFromWindow()V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public setAnimTime(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/mycompany/app/view/MyFadeText;->m:I

    .line 2
    .line 3
    return-void
.end method

.method public setAutoHide(Z)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/mycompany/app/view/MyFadeText;->s:Z

    .line 2
    .line 3
    if-ne v0, p1, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    iput-boolean p1, p0, Lcom/mycompany/app/view/MyFadeText;->s:Z

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    if-nez p1, :cond_2

    .line 10
    .line 11
    iget-object p1, p0, Lcom/mycompany/app/view/MyFadeText;->q:Lcom/mycompany/app/view/MyFadeText$EventHandler;

    .line 12
    .line 13
    if-eqz p1, :cond_1

    .line 14
    .line 15
    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 16
    .line 17
    .line 18
    const/4 p1, 0x0

    .line 19
    iput-object p1, p0, Lcom/mycompany/app/view/MyFadeText;->q:Lcom/mycompany/app/view/MyFadeText$EventHandler;

    .line 20
    .line 21
    :cond_1
    invoke-virtual {p0, v0}, Lcom/mycompany/app/view/MyFadeText;->setVisibility(I)V

    .line 22
    .line 23
    .line 24
    return-void

    .line 25
    :cond_2
    iget-object p1, p0, Lcom/mycompany/app/view/MyFadeText;->q:Lcom/mycompany/app/view/MyFadeText$EventHandler;

    .line 26
    .line 27
    if-nez p1, :cond_3

    .line 28
    .line 29
    new-instance p1, Lcom/mycompany/app/view/MyFadeText$EventHandler;

    .line 30
    .line 31
    invoke-direct {p1, p0}, Lcom/mycompany/app/view/MyFadeText$EventHandler;-><init>(Lcom/mycompany/app/view/MyFadeText;)V

    .line 32
    .line 33
    .line 34
    iput-object p1, p0, Lcom/mycompany/app/view/MyFadeText;->q:Lcom/mycompany/app/view/MyFadeText$EventHandler;

    .line 35
    .line 36
    :cond_3
    iget-object p1, p0, Lcom/mycompany/app/view/MyFadeText;->o:Landroid/animation/ValueAnimator;

    .line 37
    .line 38
    if-eqz p1, :cond_4

    .line 39
    .line 40
    goto :goto_1

    .line 41
    :cond_4
    iget-object p1, p0, Lcom/mycompany/app/view/MyFadeText;->p:Landroid/animation/ValueAnimator;

    .line 42
    .line 43
    if-eqz p1, :cond_5

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_5
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    .line 47
    .line 48
    .line 49
    move-result p1

    .line 50
    if-eqz p1, :cond_6

    .line 51
    .line 52
    :goto_0
    return-void

    .line 53
    :cond_6
    :goto_1
    iget-object p1, p0, Lcom/mycompany/app/view/MyFadeText;->q:Lcom/mycompany/app/view/MyFadeText$EventHandler;

    .line 54
    .line 55
    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 56
    .line 57
    .line 58
    iget-object p1, p0, Lcom/mycompany/app/view/MyFadeText;->q:Lcom/mycompany/app/view/MyFadeText$EventHandler;

    .line 59
    .line 60
    iget v1, p0, Lcom/mycompany/app/view/MyFadeText;->n:I

    .line 61
    .line 62
    int-to-long v1, v1

    .line 63
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 64
    .line 65
    .line 66
    return-void
.end method

.method public setBlocking(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/mycompany/app/view/MyFadeText;->t:Z

    .line 2
    .line 3
    return-void
.end method

.method public setEnabled(Z)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 2
    .line 3
    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    const/high16 p1, 0x3f800000    # 1.0f

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/high16 p1, 0x3f000000    # 0.5f

    .line 10
    .line 11
    :goto_0
    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public setInvisible(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/mycompany/app/view/MyFadeText;->u:Z

    .line 2
    .line 3
    return-void
.end method

.method public setListener(Lcom/mycompany/app/view/MyFadeListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mycompany/app/view/MyFadeText;->w:Lcom/mycompany/app/view/MyFadeListener;

    .line 2
    .line 3
    return-void
.end method

.method public setShowTime(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/mycompany/app/view/MyFadeText;->n:I

    .line 2
    .line 3
    return-void
.end method

.method public setTouchable(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/mycompany/app/view/MyFadeText;->r:Z

    .line 2
    .line 3
    return-void
.end method

.method public setVisibility(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/view/MyFadeText;->o:Landroid/animation/ValueAnimator;

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
    iput-object v1, p0, Lcom/mycompany/app/view/MyFadeText;->o:Landroid/animation/ValueAnimator;

    .line 10
    .line 11
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/view/MyFadeText;->p:Landroid/animation/ValueAnimator;

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 16
    .line 17
    .line 18
    iput-object v1, p0, Lcom/mycompany/app/view/MyFadeText;->p:Landroid/animation/ValueAnimator;

    .line 19
    .line 20
    :cond_1
    iget-object v0, p0, Lcom/mycompany/app/view/MyFadeText;->q:Lcom/mycompany/app/view/MyFadeText$EventHandler;

    .line 21
    .line 22
    const/4 v1, 0x0

    .line 23
    if-eqz v0, :cond_2

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 26
    .line 27
    .line 28
    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    if-eqz v0, :cond_3

    .line 33
    .line 34
    const/high16 v0, 0x3f800000    # 1.0f

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_3
    const/high16 v0, 0x3f000000    # 0.5f

    .line 38
    .line 39
    :goto_0
    invoke-virtual {p0, v0}, Landroid/view/View;->setAlpha(F)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    if-eq v0, p1, :cond_5

    .line 47
    .line 48
    iput-boolean v1, p0, Lcom/mycompany/app/view/MyFadeText;->v:Z

    .line 49
    .line 50
    iget-object v0, p0, Lcom/mycompany/app/view/MyFadeText;->w:Lcom/mycompany/app/view/MyFadeListener;

    .line 51
    .line 52
    if-eqz v0, :cond_5

    .line 53
    .line 54
    if-nez p1, :cond_4

    .line 55
    .line 56
    const/4 v2, 0x1

    .line 57
    goto :goto_1

    .line 58
    :cond_4
    move v2, v1

    .line 59
    :goto_1
    invoke-interface {v0, v2, v1}, Lcom/mycompany/app/view/MyFadeListener;->b(ZZ)V

    .line 60
    .line 61
    .line 62
    :cond_5
    invoke-super {p0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 63
    .line 64
    .line 65
    return-void
.end method

.method public final t()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/view/MyFadeText;->q:Lcom/mycompany/app/view/MyFadeText$EventHandler;

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
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/view/MyFadeText;->p:Landroid/animation/ValueAnimator;

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_1
    iget-object v0, p0, Lcom/mycompany/app/view/MyFadeText;->o:Landroid/animation/ValueAnimator;

    .line 15
    .line 16
    if-eqz v0, :cond_3

    .line 17
    .line 18
    iget-boolean v2, p0, Lcom/mycompany/app/view/MyFadeText;->t:Z

    .line 19
    .line 20
    if-eqz v2, :cond_2

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_2
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 24
    .line 25
    .line 26
    const/4 v0, 0x0

    .line 27
    iput-object v0, p0, Lcom/mycompany/app/view/MyFadeText;->o:Landroid/animation/ValueAnimator;

    .line 28
    .line 29
    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-eqz v0, :cond_4

    .line 34
    .line 35
    :goto_0
    return-void

    .line 36
    :cond_4
    iput-boolean v1, p0, Lcom/mycompany/app/view/MyFadeText;->v:Z

    .line 37
    .line 38
    invoke-virtual {p0}, Landroid/view/View;->getAlpha()F

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    iput v0, p0, Lcom/mycompany/app/view/MyFadeText;->A:F

    .line 43
    .line 44
    iput-boolean v1, p0, Lcom/mycompany/app/view/MyFadeText;->B:Z

    .line 45
    .line 46
    const/4 v2, 0x2

    .line 47
    new-array v2, v2, [F

    .line 48
    .line 49
    aput v0, v2, v1

    .line 50
    .line 51
    const/4 v1, 0x0

    .line 52
    const/4 v3, 0x1

    .line 53
    aput v1, v2, v3

    .line 54
    .line 55
    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    iput-object v1, p0, Lcom/mycompany/app/view/MyFadeText;->p:Landroid/animation/ValueAnimator;

    .line 60
    .line 61
    iget v2, p0, Lcom/mycompany/app/view/MyFadeText;->m:I

    .line 62
    .line 63
    int-to-float v2, v2

    .line 64
    mul-float/2addr v0, v2

    .line 65
    float-to-long v2, v0

    .line 66
    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 67
    .line 68
    .line 69
    iget-object v0, p0, Lcom/mycompany/app/view/MyFadeText;->p:Landroid/animation/ValueAnimator;

    .line 70
    .line 71
    new-instance v1, Lcom/mycompany/app/view/MyFadeText$5;

    .line 72
    .line 73
    invoke-direct {v1, p0}, Lcom/mycompany/app/view/MyFadeText$5;-><init>(Lcom/mycompany/app/view/MyFadeText;)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 77
    .line 78
    .line 79
    iget-object v0, p0, Lcom/mycompany/app/view/MyFadeText;->p:Landroid/animation/ValueAnimator;

    .line 80
    .line 81
    new-instance v1, Lcom/mycompany/app/view/MyFadeText$6;

    .line 82
    .line 83
    invoke-direct {v1, p0}, Lcom/mycompany/app/view/MyFadeText$6;-><init>(Lcom/mycompany/app/view/MyFadeText;)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 87
    .line 88
    .line 89
    iget-object v0, p0, Lcom/mycompany/app/view/MyFadeText;->p:Landroid/animation/ValueAnimator;

    .line 90
    .line 91
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 92
    .line 93
    .line 94
    return-void
.end method

.method public final u()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/view/MyFadeText;->q:Lcom/mycompany/app/view/MyFadeText$EventHandler;

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
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/view/MyFadeText;->o:Landroid/animation/ValueAnimator;

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    goto :goto_3

    .line 14
    :cond_1
    iget-object v0, p0, Lcom/mycompany/app/view/MyFadeText;->p:Landroid/animation/ValueAnimator;

    .line 15
    .line 16
    if-eqz v0, :cond_3

    .line 17
    .line 18
    iget-boolean v2, p0, Lcom/mycompany/app/view/MyFadeText;->s:Z

    .line 19
    .line 20
    if-eqz v2, :cond_2

    .line 21
    .line 22
    iget-boolean v2, p0, Lcom/mycompany/app/view/MyFadeText;->t:Z

    .line 23
    .line 24
    if-eqz v2, :cond_2

    .line 25
    .line 26
    goto :goto_3

    .line 27
    :cond_2
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 28
    .line 29
    .line 30
    const/4 v0, 0x0

    .line 31
    iput-object v0, p0, Lcom/mycompany/app/view/MyFadeText;->p:Landroid/animation/ValueAnimator;

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    if-nez v0, :cond_4

    .line 39
    .line 40
    iget-object v0, p0, Lcom/mycompany/app/view/MyFadeText;->q:Lcom/mycompany/app/view/MyFadeText$EventHandler;

    .line 41
    .line 42
    if-eqz v0, :cond_7

    .line 43
    .line 44
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 45
    .line 46
    .line 47
    iget-boolean v0, p0, Lcom/mycompany/app/view/MyFadeText;->s:Z

    .line 48
    .line 49
    if-eqz v0, :cond_7

    .line 50
    .line 51
    iget-boolean v0, p0, Lcom/mycompany/app/view/MyFadeText;->v:Z

    .line 52
    .line 53
    if-nez v0, :cond_7

    .line 54
    .line 55
    iget-object v0, p0, Lcom/mycompany/app/view/MyFadeText;->q:Lcom/mycompany/app/view/MyFadeText$EventHandler;

    .line 56
    .line 57
    iget v2, p0, Lcom/mycompany/app/view/MyFadeText;->n:I

    .line 58
    .line 59
    int-to-long v2, v2

    .line 60
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 61
    .line 62
    .line 63
    return-void

    .line 64
    :cond_4
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    .line 65
    .line 66
    .line 67
    move-result v0

    .line 68
    if-nez v0, :cond_5

    .line 69
    .line 70
    invoke-virtual {p0}, Landroid/view/View;->getAlpha()F

    .line 71
    .line 72
    .line 73
    move-result v0

    .line 74
    goto :goto_1

    .line 75
    :cond_5
    const/4 v0, 0x0

    .line 76
    :goto_1
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    .line 77
    .line 78
    .line 79
    move-result v2

    .line 80
    const/high16 v3, 0x3f800000    # 1.0f

    .line 81
    .line 82
    if-eqz v2, :cond_6

    .line 83
    .line 84
    move v2, v3

    .line 85
    goto :goto_2

    .line 86
    :cond_6
    const/high16 v2, 0x3f000000    # 0.5f

    .line 87
    .line 88
    :goto_2
    cmpl-float v4, v0, v2

    .line 89
    .line 90
    if-ltz v4, :cond_8

    .line 91
    .line 92
    :cond_7
    :goto_3
    return-void

    .line 93
    :cond_8
    iput v0, p0, Lcom/mycompany/app/view/MyFadeText;->x:F

    .line 94
    .line 95
    iput-boolean v1, p0, Lcom/mycompany/app/view/MyFadeText;->y:Z

    .line 96
    .line 97
    const/4 v4, 0x2

    .line 98
    new-array v4, v4, [F

    .line 99
    .line 100
    aput v0, v4, v1

    .line 101
    .line 102
    const/4 v1, 0x1

    .line 103
    aput v2, v4, v1

    .line 104
    .line 105
    invoke-static {v4}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 106
    .line 107
    .line 108
    move-result-object v1

    .line 109
    iput-object v1, p0, Lcom/mycompany/app/view/MyFadeText;->o:Landroid/animation/ValueAnimator;

    .line 110
    .line 111
    sub-float/2addr v3, v0

    .line 112
    iget v0, p0, Lcom/mycompany/app/view/MyFadeText;->m:I

    .line 113
    .line 114
    int-to-float v0, v0

    .line 115
    mul-float/2addr v3, v0

    .line 116
    float-to-long v2, v3

    .line 117
    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 118
    .line 119
    .line 120
    iget-object v0, p0, Lcom/mycompany/app/view/MyFadeText;->o:Landroid/animation/ValueAnimator;

    .line 121
    .line 122
    new-instance v1, Lcom/mycompany/app/view/MyFadeText$1;

    .line 123
    .line 124
    invoke-direct {v1, p0}, Lcom/mycompany/app/view/MyFadeText$1;-><init>(Lcom/mycompany/app/view/MyFadeText;)V

    .line 125
    .line 126
    .line 127
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 128
    .line 129
    .line 130
    iget-object v0, p0, Lcom/mycompany/app/view/MyFadeText;->o:Landroid/animation/ValueAnimator;

    .line 131
    .line 132
    new-instance v1, Lcom/mycompany/app/view/MyFadeText$2;

    .line 133
    .line 134
    invoke-direct {v1, p0}, Lcom/mycompany/app/view/MyFadeText$2;-><init>(Lcom/mycompany/app/view/MyFadeText;)V

    .line 135
    .line 136
    .line 137
    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 138
    .line 139
    .line 140
    iget-object v0, p0, Lcom/mycompany/app/view/MyFadeText;->o:Landroid/animation/ValueAnimator;

    .line 141
    .line 142
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 143
    .line 144
    .line 145
    return-void
.end method
