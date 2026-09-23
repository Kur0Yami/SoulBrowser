.class public Lcom/mycompany/app/view/MyEditText;
.super Landroidx/appcompat/widget/AppCompatEditText;
.source "SourceFile"


# instance fields
.field public k:Z

.field public l:Z

.field public m:Z

.field public n:I

.field public o:F

.field public p:Landroid/graphics/Paint;

.field public q:Z

.field public final r:F

.field public final s:F

.field public t:I

.field public u:Landroid/graphics/Paint;

.field public v:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, v0}, Landroidx/appcompat/widget/AppCompatEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 3
    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Lcom/mycompany/app/view/MyEditText;->k:Z

    .line 7
    .line 8
    iput-boolean v0, p0, Lcom/mycompany/app/view/MyEditText;->q:Z

    .line 9
    .line 10
    const/high16 v1, 0x40000000    # 2.0f

    .line 11
    .line 12
    invoke-static {p1, v1}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    iput v2, p0, Lcom/mycompany/app/view/MyEditText;->s:F

    .line 17
    .line 18
    const/high16 v2, 0x41b00000    # 22.0f

    .line 19
    .line 20
    invoke-static {p1, v2}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    iget v2, p0, Lcom/mycompany/app/view/MyEditText;->s:F

    .line 25
    .line 26
    div-float/2addr v2, v1

    .line 27
    add-float/2addr v2, p1

    .line 28
    iput v2, p0, Lcom/mycompany/app/view/MyEditText;->r:F

    .line 29
    .line 30
    sget-boolean p1, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 31
    .line 32
    if-eqz p1, :cond_0

    .line 33
    .line 34
    const p1, -0x50506

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_0
    const p1, -0xe19938

    .line 39
    .line 40
    .line 41
    :goto_0
    iput p1, p0, Lcom/mycompany/app/view/MyEditText;->t:I

    .line 42
    .line 43
    new-instance p1, Landroid/graphics/Paint;

    .line 44
    .line 45
    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    .line 46
    .line 47
    .line 48
    iput-object p1, p0, Lcom/mycompany/app/view/MyEditText;->u:Landroid/graphics/Paint;

    .line 49
    .line 50
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 51
    .line 52
    .line 53
    iget-object p1, p0, Lcom/mycompany/app/view/MyEditText;->u:Landroid/graphics/Paint;

    .line 54
    .line 55
    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    .line 56
    .line 57
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 58
    .line 59
    .line 60
    iget-object p1, p0, Lcom/mycompany/app/view/MyEditText;->u:Landroid/graphics/Paint;

    .line 61
    .line 62
    iget v0, p0, Lcom/mycompany/app/view/MyEditText;->t:I

    .line 63
    .line 64
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 65
    .line 66
    .line 67
    iget p1, p0, Lcom/mycompany/app/view/MyEditText;->t:I

    .line 68
    .line 69
    const v0, -0x252526

    .line 70
    .line 71
    .line 72
    if-eq p1, v0, :cond_2

    .line 73
    .line 74
    sget-boolean p1, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 75
    .line 76
    if-eqz p1, :cond_1

    .line 77
    .line 78
    goto :goto_1

    .line 79
    :cond_1
    iget-object p1, p0, Lcom/mycompany/app/view/MyEditText;->u:Landroid/graphics/Paint;

    .line 80
    .line 81
    iget v0, p0, Lcom/mycompany/app/view/MyEditText;->s:F

    .line 82
    .line 83
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 84
    .line 85
    .line 86
    goto :goto_2

    .line 87
    :cond_2
    :goto_1
    iget-object p1, p0, Lcom/mycompany/app/view/MyEditText;->u:Landroid/graphics/Paint;

    .line 88
    .line 89
    iget v0, p0, Lcom/mycompany/app/view/MyEditText;->s:F

    .line 90
    .line 91
    div-float/2addr v0, v1

    .line 92
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 93
    .line 94
    .line 95
    :goto_2
    new-instance p1, Landroid/graphics/Rect;

    .line 96
    .line 97
    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    .line 98
    .line 99
    .line 100
    iput-object p1, p0, Lcom/mycompany/app/view/MyEditText;->v:Landroid/graphics/Rect;

    .line 101
    .line 102
    invoke-static {p0}, Lcom/mycompany/app/main/MainUtil;->c5(Landroid/widget/EditText;)V

    .line 103
    .line 104
    .line 105
    return-void
.end method


# virtual methods
.method public final b(I)V
    .locals 2

    .line 1
    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lcom/mycompany/app/view/MyEditText;->l:Z

    .line 3
    .line 4
    iput-boolean p1, p0, Lcom/mycompany/app/view/MyEditText;->m:Z

    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    iput v0, p0, Lcom/mycompany/app/view/MyEditText;->n:I

    .line 8
    .line 9
    sget-boolean v0, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    const v0, -0xc0c0c1

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const v0, -0x252526

    .line 18
    .line 19
    .line 20
    :goto_0
    const/high16 v1, 0x3f000000    # 0.5f

    .line 21
    .line 22
    iput v1, p0, Lcom/mycompany/app/view/MyEditText;->o:F

    .line 23
    .line 24
    new-instance v1, Landroid/graphics/Paint;

    .line 25
    .line 26
    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    .line 27
    .line 28
    .line 29
    iput-object v1, p0, Lcom/mycompany/app/view/MyEditText;->p:Landroid/graphics/Paint;

    .line 30
    .line 31
    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 32
    .line 33
    .line 34
    iget-object p1, p0, Lcom/mycompany/app/view/MyEditText;->p:Landroid/graphics/Paint;

    .line 35
    .line 36
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    .line 37
    .line 38
    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 39
    .line 40
    .line 41
    iget-object p1, p0, Lcom/mycompany/app/view/MyEditText;->p:Landroid/graphics/Paint;

    .line 42
    .line 43
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 44
    .line 45
    .line 46
    iget-object p1, p0, Lcom/mycompany/app/view/MyEditText;->p:Landroid/graphics/Paint;

    .line 47
    .line 48
    const/high16 v0, 0x3f800000    # 1.0f

    .line 49
    .line 50
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 51
    .line 52
    .line 53
    return-void
.end method

.method public final c()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/mycompany/app/view/MyEditText;->k:Z

    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/mycompany/app/view/MyEditText;->p:Landroid/graphics/Paint;

    .line 6
    .line 7
    iput-object v0, p0, Lcom/mycompany/app/view/MyEditText;->u:Landroid/graphics/Paint;

    .line 8
    .line 9
    iput-object v0, p0, Lcom/mycompany/app/view/MyEditText;->v:Landroid/graphics/Rect;

    .line 10
    .line 11
    return-void
.end method

.method public final d()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/view/MyEditText;->u:Landroid/graphics/Paint;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_1

    .line 6
    :cond_0
    iget v1, p0, Lcom/mycompany/app/view/MyEditText;->t:I

    .line 7
    .line 8
    sget-boolean v2, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 9
    .line 10
    const v3, -0xc0c0c1

    .line 11
    .line 12
    .line 13
    const v4, -0x50506

    .line 14
    .line 15
    .line 16
    const v5, -0xe19938

    .line 17
    .line 18
    .line 19
    const v6, -0x252526

    .line 20
    .line 21
    .line 22
    if-eqz v2, :cond_2

    .line 23
    .line 24
    if-ne v1, v5, :cond_1

    .line 25
    .line 26
    move v3, v4

    .line 27
    goto :goto_0

    .line 28
    :cond_1
    if-ne v1, v6, :cond_4

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_2
    if-ne v1, v4, :cond_3

    .line 32
    .line 33
    move v3, v5

    .line 34
    goto :goto_0

    .line 35
    :cond_3
    if-ne v1, v3, :cond_4

    .line 36
    .line 37
    move v3, v6

    .line 38
    goto :goto_0

    .line 39
    :cond_4
    move v3, v1

    .line 40
    :goto_0
    if-ne v1, v3, :cond_5

    .line 41
    .line 42
    :goto_1
    return-void

    .line 43
    :cond_5
    iput v3, p0, Lcom/mycompany/app/view/MyEditText;->t:I

    .line 44
    .line 45
    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 46
    .line 47
    .line 48
    iget v0, p0, Lcom/mycompany/app/view/MyEditText;->t:I

    .line 49
    .line 50
    if-eq v0, v6, :cond_7

    .line 51
    .line 52
    sget-boolean v0, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 53
    .line 54
    if-eqz v0, :cond_6

    .line 55
    .line 56
    goto :goto_2

    .line 57
    :cond_6
    iget-object v0, p0, Lcom/mycompany/app/view/MyEditText;->u:Landroid/graphics/Paint;

    .line 58
    .line 59
    iget v1, p0, Lcom/mycompany/app/view/MyEditText;->s:F

    .line 60
    .line 61
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 62
    .line 63
    .line 64
    goto :goto_3

    .line 65
    :cond_7
    :goto_2
    iget-object v0, p0, Lcom/mycompany/app/view/MyEditText;->u:Landroid/graphics/Paint;

    .line 66
    .line 67
    iget v1, p0, Lcom/mycompany/app/view/MyEditText;->s:F

    .line 68
    .line 69
    const/high16 v2, 0x40000000    # 2.0f

    .line 70
    .line 71
    div-float/2addr v1, v2

    .line 72
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 73
    .line 74
    .line 75
    :goto_3
    invoke-virtual {p0}, Lcom/mycompany/app/view/MyEditText;->invalidate()V

    .line 76
    .line 77
    .line 78
    return-void
.end method

.method public final invalidate()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/mycompany/app/view/MyEditText;->k:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-super {p0}, Landroid/widget/EditText;->invalidate()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final onDragEvent(Landroid/view/DragEvent;)Z
    .locals 0

    .line 1
    :try_start_0
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatEditText;->onDragEvent(Landroid/view/DragEvent;)Z

    .line 2
    .line 3
    .line 4
    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    return p1

    .line 6
    :catch_0
    const/4 p1, 0x0

    .line 7
    return p1
.end method

.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 9

    .line 1
    iget-boolean v1, p0, Lcom/mycompany/app/view/MyEditText;->k:Z

    .line 2
    .line 3
    if-nez v1, :cond_0

    .line 4
    .line 5
    goto :goto_2

    .line 6
    :cond_0
    invoke-super/range {p0 .. p1}, Landroid/widget/EditText;->onDraw(Landroid/graphics/Canvas;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 10
    .line 11
    .line 12
    move-result v6

    .line 13
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 14
    .line 15
    .line 16
    move-result v7

    .line 17
    iget-object v1, p0, Lcom/mycompany/app/view/MyEditText;->v:Landroid/graphics/Rect;

    .line 18
    .line 19
    if-eqz v1, :cond_1

    .line 20
    .line 21
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->getClipBounds(Landroid/graphics/Rect;)Z

    .line 22
    .line 23
    .line 24
    iget-object v1, p0, Lcom/mycompany/app/view/MyEditText;->v:Landroid/graphics/Rect;

    .line 25
    .line 26
    iget v1, v1, Landroid/graphics/Rect;->left:I

    .line 27
    .line 28
    :goto_0
    move v8, v1

    .line 29
    goto :goto_1

    .line 30
    :cond_1
    const/4 v1, 0x0

    .line 31
    goto :goto_0

    .line 32
    :goto_1
    if-eqz v8, :cond_2

    .line 33
    .line 34
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 35
    .line 36
    .line 37
    int-to-float v1, v8

    .line 38
    const/4 v2, 0x0

    .line 39
    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 40
    .line 41
    .line 42
    :cond_2
    iget-boolean v1, p0, Lcom/mycompany/app/view/MyEditText;->l:Z

    .line 43
    .line 44
    if-eqz v1, :cond_3

    .line 45
    .line 46
    iget-object v5, p0, Lcom/mycompany/app/view/MyEditText;->p:Landroid/graphics/Paint;

    .line 47
    .line 48
    if-eqz v5, :cond_3

    .line 49
    .line 50
    iget-boolean v1, p0, Lcom/mycompany/app/view/MyEditText;->m:Z

    .line 51
    .line 52
    if-eqz v1, :cond_3

    .line 53
    .line 54
    iget v1, p0, Lcom/mycompany/app/view/MyEditText;->n:I

    .line 55
    .line 56
    move v2, v1

    .line 57
    int-to-float v1, v2

    .line 58
    move v3, v2

    .line 59
    iget v2, p0, Lcom/mycompany/app/view/MyEditText;->o:F

    .line 60
    .line 61
    sub-int v3, v6, v3

    .line 62
    .line 63
    int-to-float v3, v3

    .line 64
    move v4, v2

    .line 65
    move-object v0, p1

    .line 66
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 67
    .line 68
    .line 69
    :cond_3
    iget-boolean v0, p0, Lcom/mycompany/app/view/MyEditText;->q:Z

    .line 70
    .line 71
    if-eqz v0, :cond_4

    .line 72
    .line 73
    iget-object v5, p0, Lcom/mycompany/app/view/MyEditText;->u:Landroid/graphics/Paint;

    .line 74
    .line 75
    if-eqz v5, :cond_4

    .line 76
    .line 77
    int-to-float v0, v7

    .line 78
    const/high16 v1, 0x40000000    # 2.0f

    .line 79
    .line 80
    div-float/2addr v0, v1

    .line 81
    iget v1, p0, Lcom/mycompany/app/view/MyEditText;->r:F

    .line 82
    .line 83
    add-float v2, v0, v1

    .line 84
    .line 85
    const/4 v1, 0x0

    .line 86
    int-to-float v3, v6

    .line 87
    move v4, v2

    .line 88
    move-object v0, p1

    .line 89
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 90
    .line 91
    .line 92
    :cond_4
    if-eqz v8, :cond_5

    .line 93
    .line 94
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 95
    .line 96
    .line 97
    :cond_5
    :goto_2
    return-void
.end method

.method public setDrawEline(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/mycompany/app/view/MyEditText;->q:Z

    .line 2
    .line 3
    if-ne v0, p1, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iput-boolean p1, p0, Lcom/mycompany/app/view/MyEditText;->q:Z

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/mycompany/app/view/MyEditText;->invalidate()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public setDrawLine(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/mycompany/app/view/MyEditText;->l:Z

    .line 2
    .line 3
    if-ne v0, p1, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iput-boolean p1, p0, Lcom/mycompany/app/view/MyEditText;->l:Z

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/mycompany/app/view/MyEditText;->invalidate()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public setElineColor(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/view/MyEditText;->u:Landroid/graphics/Paint;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_1

    .line 6
    :cond_0
    sget-boolean v1, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 7
    .line 8
    const v2, -0x252526

    .line 9
    .line 10
    .line 11
    if-eqz v1, :cond_2

    .line 12
    .line 13
    const v1, -0xe19938

    .line 14
    .line 15
    .line 16
    if-ne p1, v1, :cond_1

    .line 17
    .line 18
    const p1, -0x50506

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_1
    if-ne p1, v2, :cond_2

    .line 23
    .line 24
    const p1, -0xc0c0c1

    .line 25
    .line 26
    .line 27
    :cond_2
    :goto_0
    iget v1, p0, Lcom/mycompany/app/view/MyEditText;->t:I

    .line 28
    .line 29
    if-ne v1, p1, :cond_3

    .line 30
    .line 31
    :goto_1
    return-void

    .line 32
    :cond_3
    iput p1, p0, Lcom/mycompany/app/view/MyEditText;->t:I

    .line 33
    .line 34
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 35
    .line 36
    .line 37
    iget p1, p0, Lcom/mycompany/app/view/MyEditText;->t:I

    .line 38
    .line 39
    if-eq p1, v2, :cond_5

    .line 40
    .line 41
    sget-boolean p1, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 42
    .line 43
    if-eqz p1, :cond_4

    .line 44
    .line 45
    goto :goto_2

    .line 46
    :cond_4
    iget-object p1, p0, Lcom/mycompany/app/view/MyEditText;->u:Landroid/graphics/Paint;

    .line 47
    .line 48
    iget v0, p0, Lcom/mycompany/app/view/MyEditText;->s:F

    .line 49
    .line 50
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 51
    .line 52
    .line 53
    goto :goto_3

    .line 54
    :cond_5
    :goto_2
    iget-object p1, p0, Lcom/mycompany/app/view/MyEditText;->u:Landroid/graphics/Paint;

    .line 55
    .line 56
    iget v0, p0, Lcom/mycompany/app/view/MyEditText;->s:F

    .line 57
    .line 58
    const/high16 v1, 0x40000000    # 2.0f

    .line 59
    .line 60
    div-float/2addr v0, v1

    .line 61
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 62
    .line 63
    .line 64
    :goto_3
    invoke-virtual {p0}, Lcom/mycompany/app/view/MyEditText;->invalidate()V

    .line 65
    .line 66
    .line 67
    return-void
.end method

.method public setLinePad(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/mycompany/app/view/MyEditText;->n:I

    .line 2
    .line 3
    if-ne v0, p1, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iput p1, p0, Lcom/mycompany/app/view/MyEditText;->n:I

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/mycompany/app/view/MyEditText;->invalidate()V

    .line 9
    .line 10
    .line 11
    return-void
.end method
