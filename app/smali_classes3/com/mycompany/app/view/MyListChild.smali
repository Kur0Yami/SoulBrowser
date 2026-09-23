.class public Lcom/mycompany/app/view/MyListChild;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"


# instance fields
.field public final c:Z

.field public final f:Landroid/graphics/Paint;

.field public g:Z

.field public h:Z

.field public i:Z

.field public final j:I

.field public k:Z

.field public l:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x1

    .line 5
    iput-boolean p1, p0, Lcom/mycompany/app/view/MyListChild;->c:Z

    .line 6
    .line 7
    sget-boolean v0, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 8
    .line 9
    iput-boolean v0, p0, Lcom/mycompany/app/view/MyListChild;->k:Z

    .line 10
    .line 11
    new-instance v0, Landroid/graphics/Paint;

    .line 12
    .line 13
    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/mycompany/app/view/MyListChild;->f:Landroid/graphics/Paint;

    .line 17
    .line 18
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 19
    .line 20
    .line 21
    iget-object p1, p0, Lcom/mycompany/app/view/MyListChild;->f:Landroid/graphics/Paint;

    .line 22
    .line 23
    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    .line 24
    .line 25
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 26
    .line 27
    .line 28
    iget-object p1, p0, Lcom/mycompany/app/view/MyListChild;->f:Landroid/graphics/Paint;

    .line 29
    .line 30
    sget-boolean v0, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 31
    .line 32
    if-eqz v0, :cond_0

    .line 33
    .line 34
    const v0, -0xc0c0c1

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_0
    const v0, -0x252526

    .line 39
    .line 40
    .line 41
    :goto_0
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 42
    .line 43
    .line 44
    iget-object p1, p0, Lcom/mycompany/app/view/MyListChild;->f:Landroid/graphics/Paint;

    .line 45
    .line 46
    const/high16 v0, 0x3f000000    # 0.5f

    .line 47
    .line 48
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 49
    .line 50
    .line 51
    sget p1, Lcom/mycompany/app/main/MainApp;->m1:I

    .line 52
    .line 53
    iput p1, p0, Lcom/mycompany/app/view/MyListChild;->j:I

    .line 54
    .line 55
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lcom/mycompany/app/view/MyListChild;->g:Z

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    if-nez v0, :cond_1

    .line 6
    .line 7
    iget-boolean v3, p0, Lcom/mycompany/app/view/MyListChild;->h:Z

    .line 8
    .line 9
    if-eqz v3, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    move v3, v2

    .line 13
    goto :goto_1

    .line 14
    :cond_1
    :goto_0
    move v3, v1

    .line 15
    :goto_1
    iget-boolean v4, p0, Lcom/mycompany/app/view/MyListChild;->i:Z

    .line 16
    .line 17
    if-ne v4, v3, :cond_2

    .line 18
    .line 19
    return-void

    .line 20
    :cond_2
    iput-boolean v3, p0, Lcom/mycompany/app/view/MyListChild;->i:Z

    .line 21
    .line 22
    if-nez v0, :cond_3

    .line 23
    .line 24
    iget-boolean v0, p0, Lcom/mycompany/app/view/MyListChild;->h:Z

    .line 25
    .line 26
    if-nez v0, :cond_3

    .line 27
    .line 28
    invoke-virtual {p0, v2}, Landroid/view/View;->setClipToOutline(Z)V

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    :cond_3
    new-instance v0, Lcom/mycompany/app/view/MyListChild$1;

    .line 33
    .line 34
    invoke-direct {v0, p0}, Lcom/mycompany/app/view/MyListChild$1;-><init>(Lcom/mycompany/app/view/MyListChild;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0, v0}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0, v1}, Landroid/view/View;->setClipToOutline(Z)V

    .line 41
    .line 42
    .line 43
    return-void
.end method

.method public final b(ZZ)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/mycompany/app/view/MyListChild;->g:Z

    .line 2
    .line 3
    if-ne v0, p1, :cond_0

    .line 4
    .line 5
    iget-boolean v0, p0, Lcom/mycompany/app/view/MyListChild;->h:Z

    .line 6
    .line 7
    if-ne v0, p2, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iput-boolean p1, p0, Lcom/mycompany/app/view/MyListChild;->g:Z

    .line 11
    .line 12
    iput-boolean p2, p0, Lcom/mycompany/app/view/MyListChild;->h:Z

    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/mycompany/app/view/MyListChild;->a()V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Landroid/view/View;->invalidateOutline()V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public final dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 9

    .line 1
    iget-boolean v0, p0, Lcom/mycompany/app/view/MyListChild;->c:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    iget v0, p0, Lcom/mycompany/app/view/MyListChild;->l:I

    .line 7
    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 11
    .line 12
    .line 13
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lcom/mycompany/app/view/MyListChild;->f:Landroid/graphics/Paint;

    .line 17
    .line 18
    if-nez v0, :cond_2

    .line 19
    .line 20
    :goto_0
    return-void

    .line 21
    :cond_2
    iget-boolean v1, p0, Lcom/mycompany/app/view/MyListChild;->k:Z

    .line 22
    .line 23
    sget-boolean v2, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 24
    .line 25
    if-eq v1, v2, :cond_4

    .line 26
    .line 27
    iput-boolean v2, p0, Lcom/mycompany/app/view/MyListChild;->k:Z

    .line 28
    .line 29
    if-eqz v2, :cond_3

    .line 30
    .line 31
    const v1, -0xc0c0c1

    .line 32
    .line 33
    .line 34
    goto :goto_1

    .line 35
    :cond_3
    const v1, -0x252526

    .line 36
    .line 37
    .line 38
    :goto_1
    :try_start_0
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    .line 40
    .line 41
    :catch_0
    :cond_4
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 46
    .line 47
    .line 48
    move-result v1

    .line 49
    sget v2, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 50
    .line 51
    int-to-float v4, v2

    .line 52
    int-to-float v1, v1

    .line 53
    const/high16 v3, 0x3f000000    # 0.5f

    .line 54
    .line 55
    sub-float v5, v1, v3

    .line 56
    .line 57
    sub-int/2addr v0, v2

    .line 58
    int-to-float v6, v0

    .line 59
    iget-object v8, p0, Lcom/mycompany/app/view/MyListChild;->f:Landroid/graphics/Paint;

    .line 60
    .line 61
    move v7, v5

    .line 62
    move-object v3, p1

    .line 63
    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 64
    .line 65
    .line 66
    return-void
.end method

.method public final invalidate()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/mycompany/app/view/MyListChild;->c:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-super {p0}, Landroid/widget/RelativeLayout;->invalidate()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public setBackColor(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/mycompany/app/view/MyListChild;->l:I

    .line 2
    .line 3
    if-ne v0, p1, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iput p1, p0, Lcom/mycompany/app/view/MyListChild;->l:I

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/mycompany/app/view/MyListChild;->invalidate()V

    .line 9
    .line 10
    .line 11
    return-void
.end method
