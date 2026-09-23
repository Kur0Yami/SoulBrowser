.class public Lcom/mycompany/app/web/WebVideoProgress;
.super Lcom/mycompany/app/view/MyFadeLinear;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mycompany/app/web/WebVideoProgress$WebVidProgListener;
    }
.end annotation


# instance fields
.field public A:Landroid/widget/ImageView;

.field public B:Lcom/mycompany/app/view/MyTextView;

.field public C:Lcom/mycompany/app/view/MyProgressVideo;

.field public D:F

.field public E:J

.field public F:F

.field public G:Landroid/graphics/Paint;

.field public H:Landroid/graphics/RectF;

.field public I:I

.field public J:I

.field public K:I

.field public x:Z

.field public y:I

.field public z:Lcom/mycompany/app/web/WebVideoProgress$WebVidProgListener;


# virtual methods
.method public final dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/mycompany/app/web/WebVideoProgress;->x:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/web/WebVideoProgress;->G:Landroid/graphics/Paint;

    .line 7
    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    iget-object v1, p0, Lcom/mycompany/app/web/WebVideoProgress;->H:Landroid/graphics/RectF;

    .line 11
    .line 12
    if-eqz v1, :cond_1

    .line 13
    .line 14
    sget v2, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 15
    .line 16
    int-to-float v2, v2

    .line 17
    invoke-virtual {p1, v1, v2, v2, v0}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 18
    .line 19
    .line 20
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public final f()V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/mycompany/app/web/WebVideoProgress;->x:Z

    .line 3
    .line 4
    invoke-super {p0}, Lcom/mycompany/app/view/MyFadeLinear;->f()V

    .line 5
    .line 6
    .line 7
    iget-object v1, p0, Lcom/mycompany/app/web/WebVideoProgress;->C:Lcom/mycompany/app/view/MyProgressVideo;

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    if-eqz v1, :cond_2

    .line 11
    .line 12
    iput-boolean v0, v1, Lcom/mycompany/app/view/MyProgressVideo;->i:Z

    .line 13
    .line 14
    iget-object v0, v1, Lcom/mycompany/app/view/MyProgressVideo;->j:Landroid/content/Context;

    .line 15
    .line 16
    if-nez v0, :cond_0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    iget-object v3, v1, Lcom/mycompany/app/view/MyProgressVideo;->x:Lcom/mycompany/app/view/MyProgressVideo$EventReceiver;

    .line 20
    .line 21
    if-nez v3, :cond_1

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_1
    invoke-virtual {v0, v3}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 25
    .line 26
    .line 27
    iput-object v2, v1, Lcom/mycompany/app/view/MyProgressVideo;->x:Lcom/mycompany/app/view/MyProgressVideo$EventReceiver;

    .line 28
    .line 29
    :goto_0
    iput-object v2, v1, Lcom/mycompany/app/view/MyProgressVideo;->j:Landroid/content/Context;

    .line 30
    .line 31
    iput-object v2, v1, Lcom/mycompany/app/view/MyProgressVideo;->l:Lcom/mycompany/app/view/MyProgressVideo$ProgVideoListener;

    .line 32
    .line 33
    iput-object v2, v1, Lcom/mycompany/app/view/MyProgressVideo;->m:Landroid/media/AudioManager;

    .line 34
    .line 35
    iput-object v2, v1, Lcom/mycompany/app/view/MyProgressVideo;->o:Landroid/graphics/Paint;

    .line 36
    .line 37
    iput-object v2, v1, Lcom/mycompany/app/view/MyProgressVideo;->p:Landroid/graphics/Paint;

    .line 38
    .line 39
    iput-object v2, p0, Lcom/mycompany/app/web/WebVideoProgress;->C:Lcom/mycompany/app/view/MyProgressVideo;

    .line 40
    .line 41
    :cond_2
    iput-object v2, p0, Lcom/mycompany/app/web/WebVideoProgress;->z:Lcom/mycompany/app/web/WebVideoProgress$WebVidProgListener;

    .line 42
    .line 43
    iput-object v2, p0, Lcom/mycompany/app/web/WebVideoProgress;->A:Landroid/widget/ImageView;

    .line 44
    .line 45
    iput-object v2, p0, Lcom/mycompany/app/web/WebVideoProgress;->B:Lcom/mycompany/app/view/MyTextView;

    .line 46
    .line 47
    iput-object v2, p0, Lcom/mycompany/app/web/WebVideoProgress;->G:Landroid/graphics/Paint;

    .line 48
    .line 49
    iput-object v2, p0, Lcom/mycompany/app/web/WebVideoProgress;->H:Landroid/graphics/RectF;

    .line 50
    .line 51
    return-void
.end method

.method public getProgress()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebVideoProgress;->C:Lcom/mycompany/app/view/MyProgressVideo;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    return v0

    .line 7
    :cond_0
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyProgressVideo;->getProgress()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    return v0
.end method

.method public final h(II)V
    .locals 0

    .line 1
    if-eqz p1, :cond_4

    .line 2
    .line 3
    if-nez p2, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    sget p2, Lcom/mycompany/app/main/MainApp;->i1:I

    .line 11
    .line 12
    mul-int/lit8 p2, p2, 0x2

    .line 13
    .line 14
    sub-int/2addr p1, p2

    .line 15
    if-gtz p1, :cond_1

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_1
    sget p2, Lcom/mycompany/app/main/MainApp;->f1:I

    .line 19
    .line 20
    add-int/2addr p2, p1

    .line 21
    iput p2, p0, Lcom/mycompany/app/web/WebVideoProgress;->I:I

    .line 22
    .line 23
    iget-object p2, p0, Lcom/mycompany/app/web/WebVideoProgress;->C:Lcom/mycompany/app/view/MyProgressVideo;

    .line 24
    .line 25
    if-nez p2, :cond_2

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 29
    .line 30
    .line 31
    move-result-object p2

    .line 32
    if-nez p2, :cond_3

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_3
    iput p1, p2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 36
    .line 37
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 38
    .line 39
    .line 40
    move-result p1

    .line 41
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 42
    .line 43
    .line 44
    move-result p2

    .line 45
    invoke-virtual {p0, p1, p2}, Lcom/mycompany/app/web/WebVideoProgress;->j(II)V

    .line 46
    .line 47
    .line 48
    :cond_4
    :goto_0
    return-void
.end method

.method public final i(ILcom/mycompany/app/web/WebVideoProgress$WebVidProgListener;)V
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/mycompany/app/web/WebVideoProgress;->x:Z

    .line 3
    .line 4
    iput p1, p0, Lcom/mycompany/app/web/WebVideoProgress;->y:I

    .line 5
    .line 6
    iput-object p2, p0, Lcom/mycompany/app/web/WebVideoProgress;->z:Lcom/mycompany/app/web/WebVideoProgress$WebVidProgListener;

    .line 7
    .line 8
    iget-object p1, p0, Lcom/mycompany/app/web/WebVideoProgress;->C:Lcom/mycompany/app/view/MyProgressVideo;

    .line 9
    .line 10
    if-nez p1, :cond_0

    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    const p2, -0x1e240

    .line 14
    .line 15
    .line 16
    iput p2, p0, Lcom/mycompany/app/web/WebVideoProgress;->J:I

    .line 17
    .line 18
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 19
    .line 20
    .line 21
    move-result-object p2

    .line 22
    iget v1, p0, Lcom/mycompany/app/web/WebVideoProgress;->y:I

    .line 23
    .line 24
    new-instance v2, Lcom/mycompany/app/web/WebVideoProgress$1;

    .line 25
    .line 26
    invoke-direct {v2, p0}, Lcom/mycompany/app/web/WebVideoProgress$1;-><init>(Lcom/mycompany/app/web/WebVideoProgress;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1, p2, v1, v2}, Lcom/mycompany/app/view/MyProgressVideo;->c(Landroid/content/Context;ILcom/mycompany/app/view/MyProgressVideo$ProgVideoListener;)V

    .line 30
    .line 31
    .line 32
    new-instance p1, Landroid/graphics/Paint;

    .line 33
    .line 34
    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    .line 35
    .line 36
    .line 37
    iput-object p1, p0, Lcom/mycompany/app/web/WebVideoProgress;->G:Landroid/graphics/Paint;

    .line 38
    .line 39
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 40
    .line 41
    .line 42
    iget-object p1, p0, Lcom/mycompany/app/web/WebVideoProgress;->G:Landroid/graphics/Paint;

    .line 43
    .line 44
    sget-object p2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    .line 45
    .line 46
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 47
    .line 48
    .line 49
    iget-object p1, p0, Lcom/mycompany/app/web/WebVideoProgress;->G:Landroid/graphics/Paint;

    .line 50
    .line 51
    const/high16 p2, 0x61000000

    .line 52
    .line 53
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 54
    .line 55
    .line 56
    new-instance p1, Landroid/graphics/RectF;

    .line 57
    .line 58
    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    .line 59
    .line 60
    .line 61
    iput-object p1, p0, Lcom/mycompany/app/web/WebVideoProgress;->H:Landroid/graphics/RectF;

    .line 62
    .line 63
    return-void
.end method

.method public final invalidate()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/mycompany/app/web/WebVideoProgress;->x:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-super {p0}, Lcom/mycompany/app/view/MyFadeLinear;->invalidate()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final j(II)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebVideoProgress;->H:Landroid/graphics/RectF;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget v1, p0, Lcom/mycompany/app/web/WebVideoProgress;->I:I

    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    if-lez v1, :cond_1

    .line 10
    .line 11
    sub-int/2addr p1, v1

    .line 12
    div-int/lit8 p1, p1, 0x2

    .line 13
    .line 14
    int-to-float v3, p1

    .line 15
    add-int/2addr p1, v1

    .line 16
    int-to-float p1, p1

    .line 17
    int-to-float p2, p2

    .line 18
    invoke-virtual {v0, v3, v2, p1, p2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    :cond_1
    int-to-float p1, p1

    .line 23
    int-to-float p2, p2

    .line 24
    invoke-virtual {v0, v2, v2, p1, p2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method public final k(Landroid/view/MotionEvent;F)F
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebVideoProgress;->C:Lcom/mycompany/app/view/MyProgressVideo;

    .line 2
    .line 3
    const/high16 v1, -0x40800000    # -1.0f

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    goto :goto_1

    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    invoke-virtual {p0, v0}, Lcom/mycompany/app/view/MyFadeLinear;->setVisibility(I)V

    .line 10
    .line 11
    .line 12
    iget v0, p0, Lcom/mycompany/app/web/WebVideoProgress;->D:F

    .line 13
    .line 14
    invoke-static {v0, v1}, Ljava/lang/Float;->compare(FF)I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-nez v0, :cond_1

    .line 19
    .line 20
    iget-object p1, p0, Lcom/mycompany/app/web/WebVideoProgress;->C:Lcom/mycompany/app/view/MyProgressVideo;

    .line 21
    .line 22
    invoke-virtual {p1}, Lcom/mycompany/app/view/MyProgressVideo;->getSize()F

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    iput p1, p0, Lcom/mycompany/app/web/WebVideoProgress;->D:F

    .line 27
    .line 28
    return v1

    .line 29
    :cond_1
    iget v0, p0, Lcom/mycompany/app/web/WebVideoProgress;->y:I

    .line 30
    .line 31
    const/4 v2, 0x3

    .line 32
    if-ne v0, v2, :cond_2

    .line 33
    .line 34
    iget v0, p0, Lcom/mycompany/app/web/WebVideoProgress;->F:F

    .line 35
    .line 36
    add-float/2addr v0, p2

    .line 37
    goto :goto_0

    .line 38
    :cond_2
    iget v0, p0, Lcom/mycompany/app/web/WebVideoProgress;->D:F

    .line 39
    .line 40
    sub-float/2addr v0, p2

    .line 41
    :goto_0
    iget-object p2, p0, Lcom/mycompany/app/web/WebVideoProgress;->C:Lcom/mycompany/app/view/MyProgressVideo;

    .line 42
    .line 43
    invoke-virtual {p2, p1, v0}, Lcom/mycompany/app/view/MyProgressVideo;->g(Landroid/view/MotionEvent;F)V

    .line 44
    .line 45
    .line 46
    const/4 p1, 0x0

    .line 47
    cmpg-float p2, v0, p1

    .line 48
    .line 49
    if-gez p2, :cond_3

    .line 50
    .line 51
    iput p1, p0, Lcom/mycompany/app/web/WebVideoProgress;->D:F

    .line 52
    .line 53
    iget p2, p0, Lcom/mycompany/app/web/WebVideoProgress;->y:I

    .line 54
    .line 55
    if-ne p2, v2, :cond_4

    .line 56
    .line 57
    iput p1, p0, Lcom/mycompany/app/web/WebVideoProgress;->F:F

    .line 58
    .line 59
    return v1

    .line 60
    :cond_3
    iget-object p1, p0, Lcom/mycompany/app/web/WebVideoProgress;->C:Lcom/mycompany/app/view/MyProgressVideo;

    .line 61
    .line 62
    invoke-virtual {p1}, Lcom/mycompany/app/view/MyProgressVideo;->getMaxSize()F

    .line 63
    .line 64
    .line 65
    move-result p1

    .line 66
    cmpl-float p1, v0, p1

    .line 67
    .line 68
    if-lez p1, :cond_5

    .line 69
    .line 70
    iget-object p1, p0, Lcom/mycompany/app/web/WebVideoProgress;->C:Lcom/mycompany/app/view/MyProgressVideo;

    .line 71
    .line 72
    invoke-virtual {p1}, Lcom/mycompany/app/view/MyProgressVideo;->getMaxSize()F

    .line 73
    .line 74
    .line 75
    move-result p1

    .line 76
    iput p1, p0, Lcom/mycompany/app/web/WebVideoProgress;->D:F

    .line 77
    .line 78
    iget p2, p0, Lcom/mycompany/app/web/WebVideoProgress;->y:I

    .line 79
    .line 80
    if-ne p2, v2, :cond_4

    .line 81
    .line 82
    iput p1, p0, Lcom/mycompany/app/web/WebVideoProgress;->F:F

    .line 83
    .line 84
    :cond_4
    :goto_1
    return v1

    .line 85
    :cond_5
    iget p1, p0, Lcom/mycompany/app/web/WebVideoProgress;->D:F

    .line 86
    .line 87
    return p1
.end method

.method public final l(Landroid/widget/ImageView;Lcom/mycompany/app/view/MyTextView;Lcom/mycompany/app/view/MyProgressVideo;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mycompany/app/web/WebVideoProgress;->A:Landroid/widget/ImageView;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/mycompany/app/web/WebVideoProgress;->B:Lcom/mycompany/app/view/MyTextView;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/mycompany/app/web/WebVideoProgress;->C:Lcom/mycompany/app/view/MyProgressVideo;

    .line 6
    .line 7
    return-void
.end method

.method public final m()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/mycompany/app/web/WebVideoProgress;->y:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-ne v0, v1, :cond_2

    .line 5
    .line 6
    sget-boolean v0, Lcom/mycompany/app/pref/PrefVideo;->u:Z

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    sget v0, Lcom/mycompany/app/pref/PrefVideo;->v:I

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    iget v0, p0, Lcom/mycompany/app/web/WebVideoProgress;->J:I

    .line 14
    .line 15
    const v1, -0x1e240

    .line 16
    .line 17
    .line 18
    if-ne v0, v1, :cond_1

    .line 19
    .line 20
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-static {v0}, Lcom/mycompany/app/main/MainUtil;->D3(Landroid/content/Context;)I

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    iput v0, p0, Lcom/mycompany/app/web/WebVideoProgress;->J:I

    .line 29
    .line 30
    :cond_1
    iget v0, p0, Lcom/mycompany/app/web/WebVideoProgress;->J:I

    .line 31
    .line 32
    :goto_0
    invoke-virtual {p0, v0}, Lcom/mycompany/app/web/WebVideoProgress;->setProgress(I)V

    .line 33
    .line 34
    .line 35
    :cond_2
    const-wide/16 v0, 0x0

    .line 36
    .line 37
    invoke-virtual {p0, v0, v1, v0, v1}, Lcom/mycompany/app/web/WebVideoProgress;->n(JJ)V

    .line 38
    .line 39
    .line 40
    return-void
.end method

.method public final n(JJ)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebVideoProgress;->C:Lcom/mycompany/app/view/MyProgressVideo;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    const/4 v0, 0x0

    .line 7
    invoke-virtual {p0, v0}, Lcom/mycompany/app/view/MyFadeLinear;->setVisibility(I)V

    .line 8
    .line 9
    .line 10
    const/high16 v0, -0x40800000    # -1.0f

    .line 11
    .line 12
    iput v0, p0, Lcom/mycompany/app/web/WebVideoProgress;->D:F

    .line 13
    .line 14
    iget v0, p0, Lcom/mycompany/app/web/WebVideoProgress;->y:I

    .line 15
    .line 16
    const/4 v1, 0x3

    .line 17
    if-ne v0, v1, :cond_3

    .line 18
    .line 19
    cmp-long v0, p3, p1

    .line 20
    .line 21
    if-lez v0, :cond_1

    .line 22
    .line 23
    move-wide p3, p1

    .line 24
    :cond_1
    iput-wide p1, p0, Lcom/mycompany/app/web/WebVideoProgress;->E:J

    .line 25
    .line 26
    iget-object v0, p0, Lcom/mycompany/app/web/WebVideoProgress;->C:Lcom/mycompany/app/view/MyProgressVideo;

    .line 27
    .line 28
    long-to-float p3, p3

    .line 29
    long-to-float p1, p1

    .line 30
    div-float/2addr p3, p1

    .line 31
    const/high16 p1, 0x447a0000    # 1000.0f

    .line 32
    .line 33
    mul-float/2addr p3, p1

    .line 34
    invoke-static {p3}, Ljava/lang/Math;->round(F)I

    .line 35
    .line 36
    .line 37
    move-result p1

    .line 38
    iget p2, v0, Lcom/mycompany/app/view/MyProgressVideo;->q:I

    .line 39
    .line 40
    if-nez p2, :cond_2

    .line 41
    .line 42
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 43
    .line 44
    .line 45
    move-result-object p2

    .line 46
    if-eqz p2, :cond_2

    .line 47
    .line 48
    iget p2, p2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 49
    .line 50
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    .line 51
    .line 52
    .line 53
    move-result p3

    .line 54
    invoke-virtual {v0, p2, p3}, Lcom/mycompany/app/view/MyProgressVideo;->d(II)V

    .line 55
    .line 56
    .line 57
    :cond_2
    invoke-virtual {v0, p1}, Lcom/mycompany/app/view/MyProgressVideo;->a(I)I

    .line 58
    .line 59
    .line 60
    iget p1, v0, Lcom/mycompany/app/view/MyProgressVideo;->u:F

    .line 61
    .line 62
    iput p1, p0, Lcom/mycompany/app/web/WebVideoProgress;->F:F

    .line 63
    .line 64
    :cond_3
    :goto_0
    return-void
.end method

.method public final onSizeChanged(IIII)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;->onSizeChanged(IIII)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, p1, p2}, Lcom/mycompany/app/web/WebVideoProgress;->j(II)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public setProgress(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebVideoProgress;->C:Lcom/mycompany/app/view/MyProgressVideo;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-virtual {v0, p1}, Lcom/mycompany/app/view/MyProgressVideo;->a(I)I

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    iget-object v0, p0, Lcom/mycompany/app/web/WebVideoProgress;->B:Lcom/mycompany/app/view/MyTextView;

    .line 11
    .line 12
    new-instance v1, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    const-string v2, ""

    .line 15
    .line 16
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 27
    .line 28
    .line 29
    return-void
.end method
