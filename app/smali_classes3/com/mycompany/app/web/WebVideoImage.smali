.class public Lcom/mycompany/app/web/WebVideoImage;
.super Lcom/mycompany/app/web/WebVideoFrame;
.source "SourceFile"


# static fields
.field public static final synthetic w:I


# instance fields
.field public c:Lcom/mycompany/app/main/MainActivity;

.field public final f:Landroid/content/Context;

.field public g:Landroid/view/ViewGroup;

.field public h:Lcom/mycompany/app/web/WebNestView;

.field public i:Landroid/view/View;

.field public j:Landroid/webkit/WebChromeClient$CustomViewCallback;

.field public k:Lcom/mycompany/app/web/WebVideoFrame$VideoFrameListener;

.field public l:Lcom/mycompany/app/view/MyButtonImage;

.field public m:I

.field public n:J

.field public o:J

.field public p:Z

.field public q:Z

.field public r:Z

.field public s:Z

.field public t:Landroid/view/GestureDetector;

.field public final u:Ljava/lang/Runnable;

.field public v:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/mycompany/app/web/WebVideoImage$4;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Lcom/mycompany/app/web/WebVideoImage$4;-><init>(Lcom/mycompany/app/web/WebVideoImage;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/mycompany/app/web/WebVideoImage;->u:Ljava/lang/Runnable;

    .line 10
    .line 11
    iput-object p1, p0, Lcom/mycompany/app/web/WebVideoImage;->f:Landroid/content/Context;

    .line 12
    .line 13
    return-void
.end method

.method public static z(Lcom/mycompany/app/web/WebVideoImage;Z)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebVideoImage;->g:Landroid/view/ViewGroup;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    if-eqz p1, :cond_1

    .line 7
    .line 8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 9
    .line 10
    .line 11
    move-result-wide v0

    .line 12
    iput-wide v0, p0, Lcom/mycompany/app/web/WebVideoImage;->o:J

    .line 13
    .line 14
    goto :goto_1

    .line 15
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 16
    .line 17
    .line 18
    move-result-wide v0

    .line 19
    iget-wide v2, p0, Lcom/mycompany/app/web/WebVideoImage;->o:J

    .line 20
    .line 21
    sub-long/2addr v0, v2

    .line 22
    const-wide/16 v2, 0x3e8

    .line 23
    .line 24
    cmp-long p1, v0, v2

    .line 25
    .line 26
    if-lez p1, :cond_2

    .line 27
    .line 28
    :goto_0
    return-void

    .line 29
    :cond_2
    :goto_1
    iget-object p1, p0, Lcom/mycompany/app/web/WebVideoImage;->g:Landroid/view/ViewGroup;

    .line 30
    .line 31
    new-instance v0, Lcom/mycompany/app/web/WebVideoImage$15;

    .line 32
    .line 33
    invoke-direct {v0, p0}, Lcom/mycompany/app/web/WebVideoImage$15;-><init>(Lcom/mycompany/app/web/WebVideoImage;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 37
    .line 38
    .line 39
    return-void
.end method


# virtual methods
.method public final A()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebVideoImage;->l:Lcom/mycompany/app/view/MyButtonImage;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lcom/mycompany/app/web/WebVideoImage;->g:Landroid/view/ViewGroup;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    iget-object v1, p0, Lcom/mycompany/app/web/WebVideoImage;->u:Ljava/lang/Runnable;

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lcom/mycompany/app/web/WebVideoImage;->g:Landroid/view/ViewGroup;

    .line 16
    .line 17
    const-wide/16 v2, 0xbb8

    .line 18
    .line 19
    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 20
    .line 21
    .line 22
    :cond_1
    :goto_0
    return-void
.end method

.method public final B(Z)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebVideoImage;->g:Landroid/view/ViewGroup;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    if-eqz p1, :cond_1

    .line 7
    .line 8
    const/4 p1, 0x0

    .line 9
    iput-boolean p1, p0, Lcom/mycompany/app/web/WebVideoImage;->p:Z

    .line 10
    .line 11
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 12
    .line 13
    .line 14
    move-result-wide v0

    .line 15
    iput-wide v0, p0, Lcom/mycompany/app/web/WebVideoImage;->n:J

    .line 16
    .line 17
    iget-object p1, p0, Lcom/mycompany/app/web/WebVideoImage;->g:Landroid/view/ViewGroup;

    .line 18
    .line 19
    new-instance v0, Lcom/mycompany/app/web/WebVideoImage$13;

    .line 20
    .line 21
    invoke-direct {v0, p0}, Lcom/mycompany/app/web/WebVideoImage$13;-><init>(Lcom/mycompany/app/web/WebVideoImage;)V

    .line 22
    .line 23
    .line 24
    const-wide/16 v1, 0xbb8

    .line 25
    .line 26
    invoke-virtual {p1, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 27
    .line 28
    .line 29
    goto :goto_1

    .line 30
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 31
    .line 32
    .line 33
    move-result-wide v0

    .line 34
    iget-wide v2, p0, Lcom/mycompany/app/web/WebVideoImage;->n:J

    .line 35
    .line 36
    sub-long/2addr v0, v2

    .line 37
    const-wide/16 v2, 0x3e8

    .line 38
    .line 39
    cmp-long p1, v0, v2

    .line 40
    .line 41
    if-lez p1, :cond_2

    .line 42
    .line 43
    :goto_0
    return-void

    .line 44
    :cond_2
    :goto_1
    iget-object p1, p0, Lcom/mycompany/app/web/WebVideoImage;->g:Landroid/view/ViewGroup;

    .line 45
    .line 46
    new-instance v0, Lcom/mycompany/app/web/WebVideoImage$14;

    .line 47
    .line 48
    invoke-direct {v0, p0}, Lcom/mycompany/app/web/WebVideoImage$14;-><init>(Lcom/mycompany/app/web/WebVideoImage;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 52
    .line 53
    .line 54
    return-void
.end method

.method public final a(Ljava/lang/String;ZLcom/mycompany/app/web/WebVideoFrame$VideoFrameListener;)V
    .locals 0

    .line 1
    iput-object p3, p0, Lcom/mycompany/app/web/WebVideoImage;->k:Lcom/mycompany/app/web/WebVideoFrame$VideoFrameListener;

    .line 2
    .line 3
    invoke-virtual {p0, p2}, Lcom/mycompany/app/web/WebVideoImage;->setVideoDown(Z)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lcom/mycompany/app/web/WebVideoImage;->g:Landroid/view/ViewGroup;

    .line 7
    .line 8
    if-nez p1, :cond_0

    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    new-instance p2, Lcom/mycompany/app/web/WebVideoImage$5;

    .line 12
    .line 13
    invoke-direct {p2, p0}, Lcom/mycompany/app/web/WebVideoImage$5;-><init>(Lcom/mycompany/app/web/WebVideoImage;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1, p2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public final b(Lcom/mycompany/app/main/MainActivity;Landroid/view/ViewGroup;Lcom/mycompany/app/web/WebNestView;Ljava/lang/String;ILandroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;)V
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    if-eqz p2, :cond_0

    .line 4
    .line 5
    if-eqz p3, :cond_0

    .line 6
    .line 7
    const/4 p4, 0x1

    .line 8
    iput-boolean p4, p0, Lcom/mycompany/app/web/WebVideoImage;->r:Z

    .line 9
    .line 10
    iput-object p1, p0, Lcom/mycompany/app/web/WebVideoImage;->c:Lcom/mycompany/app/main/MainActivity;

    .line 11
    .line 12
    iput-object p2, p0, Lcom/mycompany/app/web/WebVideoImage;->g:Landroid/view/ViewGroup;

    .line 13
    .line 14
    iput-object p3, p0, Lcom/mycompany/app/web/WebVideoImage;->h:Lcom/mycompany/app/web/WebNestView;

    .line 15
    .line 16
    iput p5, p0, Lcom/mycompany/app/web/WebVideoImage;->m:I

    .line 17
    .line 18
    iput-object p6, p0, Lcom/mycompany/app/web/WebVideoImage;->i:Landroid/view/View;

    .line 19
    .line 20
    iput-object p7, p0, Lcom/mycompany/app/web/WebVideoImage;->j:Landroid/webkit/WebChromeClient$CustomViewCallback;

    .line 21
    .line 22
    const/4 p1, -0x1

    .line 23
    invoke-virtual {p2, p0, p1, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 24
    .line 25
    .line 26
    iget-object p2, p0, Lcom/mycompany/app/web/WebVideoImage;->i:Landroid/view/View;

    .line 27
    .line 28
    invoke-virtual {p0, p2, p1, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 29
    .line 30
    .line 31
    :cond_0
    return-void
.end method

.method public final c()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/mycompany/app/web/WebVideoImage;->q:Z

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-ne v1, v0, :cond_0

    .line 5
    .line 6
    goto :goto_0

    .line 7
    :cond_0
    iput-boolean v1, p0, Lcom/mycompany/app/web/WebVideoImage;->v:Z

    .line 8
    .line 9
    iget-object v0, p0, Lcom/mycompany/app/web/WebVideoImage;->g:Landroid/view/ViewGroup;

    .line 10
    .line 11
    if-nez v0, :cond_1

    .line 12
    .line 13
    :goto_0
    return-void

    .line 14
    :cond_1
    new-instance v1, Lcom/mycompany/app/web/WebVideoImage$11;

    .line 15
    .line 16
    invoke-direct {v1, p0}, Lcom/mycompany/app/web/WebVideoImage$11;-><init>(Lcom/mycompany/app/web/WebVideoImage;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public final dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-eq v0, v1, :cond_1

    .line 7
    .line 8
    const/4 v2, 0x3

    .line 9
    if-ne v0, v2, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iput-boolean v1, p0, Lcom/mycompany/app/web/WebVideoImage;->p:Z

    .line 13
    .line 14
    goto :goto_1

    .line 15
    :cond_1
    :goto_0
    invoke-virtual {p0, v1}, Lcom/mycompany/app/web/WebVideoImage;->B(Z)V

    .line 16
    .line 17
    .line 18
    :goto_1
    iget-object v0, p0, Lcom/mycompany/app/web/WebVideoImage;->t:Landroid/view/GestureDetector;

    .line 19
    .line 20
    if-eqz v0, :cond_2

    .line 21
    .line 22
    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 23
    .line 24
    .line 25
    :cond_2
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    return p1
.end method

.method public getVideoType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/mycompany/app/web/WebVideoImage;->m:I

    .line 2
    .line 3
    return v0
.end method

.method public final i()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/mycompany/app/web/WebVideoImage;->r:Z

    .line 3
    .line 4
    return-void
.end method

.method public final l()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/mycompany/app/web/WebVideoImage;->r:Z

    .line 2
    .line 3
    return v0
.end method

.method public setVideoDown(Z)V
    .locals 1

    .line 1
    iput-boolean p1, p0, Lcom/mycompany/app/web/WebVideoImage;->q:Z

    .line 2
    .line 3
    iget-object v0, p0, Lcom/mycompany/app/web/WebVideoImage;->l:Lcom/mycompany/app/view/MyButtonImage;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    if-nez p1, :cond_1

    .line 9
    .line 10
    const/16 p1, 0x8

    .line 11
    .line 12
    invoke-virtual {v0, p1}, Lcom/mycompany/app/view/MyButtonImage;->setVisibility(I)V

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :cond_1
    const/4 p1, 0x0

    .line 17
    invoke-virtual {v0, p1}, Lcom/mycompany/app/view/MyButtonImage;->setVisibility(I)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Lcom/mycompany/app/web/WebVideoImage;->A()V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public final t()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebVideoImage;->c:Lcom/mycompany/app/main/MainActivity;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    invoke-virtual {v0, p0, v2}, Lcom/mycompany/app/main/MainActivity;->s0(Landroid/view/View;Z)V

    .line 8
    .line 9
    .line 10
    iput-object v1, p0, Lcom/mycompany/app/web/WebVideoImage;->c:Lcom/mycompany/app/main/MainActivity;

    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/web/WebVideoImage;->l:Lcom/mycompany/app/view/MyButtonImage;

    .line 13
    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyButtonImage;->j()V

    .line 17
    .line 18
    .line 19
    iput-object v1, p0, Lcom/mycompany/app/web/WebVideoImage;->l:Lcom/mycompany/app/view/MyButtonImage;

    .line 20
    .line 21
    :cond_1
    iput-object v1, p0, Lcom/mycompany/app/web/WebVideoImage;->h:Lcom/mycompany/app/web/WebNestView;

    .line 22
    .line 23
    iput-object v1, p0, Lcom/mycompany/app/web/WebVideoImage;->k:Lcom/mycompany/app/web/WebVideoFrame$VideoFrameListener;

    .line 24
    .line 25
    iget-object v0, p0, Lcom/mycompany/app/web/WebVideoImage;->g:Landroid/view/ViewGroup;

    .line 26
    .line 27
    if-eqz v0, :cond_2

    .line 28
    .line 29
    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 30
    .line 31
    .line 32
    iput-object v1, p0, Lcom/mycompany/app/web/WebVideoImage;->g:Landroid/view/ViewGroup;

    .line 33
    .line 34
    :cond_2
    return-void
.end method

.method public final u()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebVideoImage;->j:Landroid/webkit/WebChromeClient$CustomViewCallback;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-interface {v0}, Landroid/webkit/WebChromeClient$CustomViewCallback;->onCustomViewHidden()V

    .line 7
    .line 8
    .line 9
    iput-object v1, p0, Lcom/mycompany/app/web/WebVideoImage;->j:Landroid/webkit/WebChromeClient$CustomViewCallback;

    .line 10
    .line 11
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/web/WebVideoImage;->i:Landroid/view/View;

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 16
    .line 17
    .line 18
    iput-object v1, p0, Lcom/mycompany/app/web/WebVideoImage;->i:Landroid/view/View;

    .line 19
    .line 20
    :cond_1
    iput-object v1, p0, Lcom/mycompany/app/web/WebVideoImage;->t:Landroid/view/GestureDetector;

    .line 21
    .line 22
    return-void
.end method
