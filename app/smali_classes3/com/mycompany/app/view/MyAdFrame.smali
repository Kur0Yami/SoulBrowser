.class public Lcom/mycompany/app/view/MyAdFrame;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# instance fields
.field public c:I

.field public f:Lcom/mycompany/app/image/ImageSizeListener;

.field public g:Lcom/mycompany/app/view/MyAdNative;

.field public h:Z


# virtual methods
.method public final a(Lcom/mycompany/app/view/MyAdNative;ZLandroid/os/Handler;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/view/MyAdFrame;->g:Lcom/mycompany/app/view/MyAdNative;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    if-nez p1, :cond_1

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_1
    :try_start_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    if-eqz v0, :cond_2

    .line 14
    .line 15
    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_2

    .line 20
    .line 21
    :goto_0
    return-void

    .line 22
    :cond_2
    invoke-static {p1}, Lcom/mycompany/app/main/MainUtil;->V6(Landroid/view/View;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0}, Landroid/view/ViewGroup;->removeAllViewsInLayout()V

    .line 26
    .line 27
    .line 28
    iput-object p1, p0, Lcom/mycompany/app/view/MyAdFrame;->g:Lcom/mycompany/app/view/MyAdNative;

    .line 29
    .line 30
    iput-boolean p2, p0, Lcom/mycompany/app/view/MyAdFrame;->h:Z

    .line 31
    .line 32
    if-nez p3, :cond_3

    .line 33
    .line 34
    new-instance p3, Landroid/os/Handler;

    .line 35
    .line 36
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    invoke-direct {p3, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 41
    .line 42
    .line 43
    :cond_3
    new-instance p1, Lcom/mycompany/app/view/MyAdFrame$1;

    .line 44
    .line 45
    invoke-direct {p1, p0}, Lcom/mycompany/app/view/MyAdFrame$1;-><init>(Lcom/mycompany/app/view/MyAdFrame;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {p3, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    .line 50
    .line 51
    return-void

    .line 52
    :catch_0
    const/4 p1, 0x0

    .line 53
    iput-object p1, p0, Lcom/mycompany/app/view/MyAdFrame;->g:Lcom/mycompany/app/view/MyAdNative;

    .line 54
    .line 55
    return-void
.end method

.method public final onMeasure(II)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/mycompany/app/view/MyAdFrame;->c:I

    .line 2
    .line 3
    if-lez v0, :cond_0

    .line 4
    .line 5
    const/high16 p2, 0x40000000    # 2.0f

    .line 6
    .line 7
    invoke-static {v0, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 8
    .line 9
    .line 10
    move-result p2

    .line 11
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public final onSizeChanged(IIII)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    .line 2
    .line 3
    .line 4
    iget-object p3, p0, Lcom/mycompany/app/view/MyAdFrame;->f:Lcom/mycompany/app/image/ImageSizeListener;

    .line 5
    .line 6
    if-eqz p3, :cond_0

    .line 7
    .line 8
    invoke-interface {p3, p0, p1, p2}, Lcom/mycompany/app/image/ImageSizeListener;->a(Landroid/view/View;II)V

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public setFixedHeight(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/mycompany/app/view/MyAdFrame;->c:I

    .line 2
    .line 3
    return-void
.end method

.method public setListener(Lcom/mycompany/app/image/ImageSizeListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mycompany/app/view/MyAdFrame;->f:Lcom/mycompany/app/image/ImageSizeListener;

    .line 2
    .line 3
    return-void
.end method
