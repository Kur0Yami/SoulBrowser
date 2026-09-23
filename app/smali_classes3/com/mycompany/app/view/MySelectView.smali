.class public Lcom/mycompany/app/view/MySelectView;
.super Landroid/view/View;
.source "SourceFile"


# instance fields
.field public c:I

.field public f:F

.field public g:Z

.field public h:Z

.field public i:J

.field public final j:Ljava/lang/Runnable;

.field public final k:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    new-instance p1, Lcom/mycompany/app/view/MySelectView$1;

    .line 5
    .line 6
    invoke-direct {p1, p0}, Lcom/mycompany/app/view/MySelectView$1;-><init>(Lcom/mycompany/app/view/MySelectView;)V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lcom/mycompany/app/view/MySelectView;->j:Ljava/lang/Runnable;

    .line 10
    .line 11
    new-instance p1, Lcom/mycompany/app/view/MySelectView$2;

    .line 12
    .line 13
    invoke-direct {p1, p0}, Lcom/mycompany/app/view/MySelectView$2;-><init>(Lcom/mycompany/app/view/MySelectView;)V

    .line 14
    .line 15
    .line 16
    iput-object p1, p0, Lcom/mycompany/app/view/MySelectView;->k:Ljava/lang/Runnable;

    .line 17
    .line 18
    const/4 p1, -0x1

    .line 19
    iput p1, p0, Lcom/mycompany/app/view/MySelectView;->c:I

    .line 20
    .line 21
    const p1, 0x3ecccccd    # 0.4f

    .line 22
    .line 23
    .line 24
    iput p1, p0, Lcom/mycompany/app/view/MySelectView;->f:F

    .line 25
    .line 26
    return-void
.end method


# virtual methods
.method public final a(II)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/mycompany/app/view/MySelectView;->g:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lcom/mycompany/app/view/MySelectView;->g:Z

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    iput-boolean v0, p0, Lcom/mycompany/app/view/MySelectView;->h:Z

    .line 11
    .line 12
    iput p1, p0, Lcom/mycompany/app/view/MySelectView;->c:I

    .line 13
    .line 14
    invoke-super {p0, p2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 15
    .line 16
    .line 17
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 18
    .line 19
    .line 20
    move-result-wide p1

    .line 21
    iput-wide p1, p0, Lcom/mycompany/app/view/MySelectView;->i:J

    .line 22
    .line 23
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    iget-object p2, p0, Lcom/mycompany/app/view/MySelectView;->j:Ljava/lang/Runnable;

    .line 28
    .line 29
    invoke-static {p1, p2}, Lcom/mycompany/app/main/MainApp;->N(Landroid/content/Context;Ljava/lang/Runnable;)V

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method public final b()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/mycompany/app/view/MySelectView;->g:Z

    .line 3
    .line 4
    iput-boolean v0, p0, Lcom/mycompany/app/view/MySelectView;->h:Z

    .line 5
    .line 6
    const/4 v0, -0x1

    .line 7
    iput v0, p0, Lcom/mycompany/app/view/MySelectView;->c:I

    .line 8
    .line 9
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    const/16 v1, 0x8

    .line 14
    .line 15
    if-eq v0, v1, :cond_0

    .line 16
    .line 17
    invoke-virtual {p0, v1}, Lcom/mycompany/app/view/MySelectView;->setVisibility(I)V

    .line 18
    .line 19
    .line 20
    :cond_0
    return-void
.end method

.method public final c(I)V
    .locals 1

    .line 1
    sget-boolean v0, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const v0, -0x9e9e9f

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, p1, v0}, Lcom/mycompany/app/view/MySelectView;->a(II)V

    .line 9
    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    const v0, -0x595616

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0, p1, v0}, Lcom/mycompany/app/view/MySelectView;->a(II)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public getChildPos()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/mycompany/app/view/MySelectView;->c:I

    .line 2
    .line 3
    return v0
.end method

.method public final onDetachedFromWindow()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/mycompany/app/view/MySelectView;->b()V

    .line 2
    .line 3
    .line 4
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public setMaxAlpha(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/mycompany/app/view/MySelectView;->f:F

    .line 2
    .line 3
    return-void
.end method

.method public setVisibility(I)V
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lcom/mycompany/app/view/MySelectView;->g:Z

    .line 5
    .line 6
    iput-boolean v0, p0, Lcom/mycompany/app/view/MySelectView;->h:Z

    .line 7
    .line 8
    const/4 v0, -0x1

    .line 9
    iput v0, p0, Lcom/mycompany/app/view/MySelectView;->c:I

    .line 10
    .line 11
    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 12
    .line 13
    .line 14
    return-void
.end method
