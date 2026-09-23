.class public Lcom/mycompany/app/editor/core/PhotoEditorView;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"


# instance fields
.field public c:I

.field public f:Landroid/widget/ImageView;

.field public g:Lcom/mycompany/app/editor/core/PhotoEffectView;

.field public h:Lcom/mycompany/app/editor/core/PhotoDrawView;

.field public i:I

.field public j:Landroid/graphics/Bitmap;


# direct methods
.method public static bridge synthetic a(Lcom/mycompany/app/editor/core/PhotoEditorView;)Landroid/graphics/Bitmap;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/mycompany/app/editor/core/PhotoEditorView;->getImageBitmap()Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method private getImageBitmap()Landroid/graphics/Bitmap;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/editor/core/PhotoEditorView;->f:Landroid/widget/ImageView;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return-object v1

    .line 7
    :cond_0
    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-nez v0, :cond_1

    .line 12
    .line 13
    return-object v1

    .line 14
    :cond_1
    instance-of v2, v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 15
    .line 16
    if-eqz v2, :cond_2

    .line 17
    .line 18
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 19
    .line 20
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    return-object v0

    .line 25
    :cond_2
    return-object v1
.end method


# virtual methods
.method public final b(Z)Landroid/widget/RelativeLayout$LayoutParams;
    .locals 3

    .line 1
    const/4 v0, -0x2

    .line 2
    const/16 v1, 0xd

    .line 3
    .line 4
    const/4 v2, -0x1

    .line 5
    invoke-static {v2, v0, v1}, Landroidx/work/impl/workers/a;->g(III)Landroid/widget/RelativeLayout$LayoutParams;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-nez p1, :cond_0

    .line 10
    .line 11
    const/16 p1, 0x12

    .line 12
    .line 13
    iget v1, p0, Lcom/mycompany/app/editor/core/PhotoEditorView;->c:I

    .line 14
    .line 15
    invoke-virtual {v0, p1, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 16
    .line 17
    .line 18
    const/16 p1, 0x13

    .line 19
    .line 20
    iget v1, p0, Lcom/mycompany/app/editor/core/PhotoEditorView;->c:I

    .line 21
    .line 22
    invoke-virtual {v0, p1, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 23
    .line 24
    .line 25
    const/4 p1, 0x6

    .line 26
    iget v1, p0, Lcom/mycompany/app/editor/core/PhotoEditorView;->c:I

    .line 27
    .line 28
    invoke-virtual {v0, p1, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 29
    .line 30
    .line 31
    const/16 p1, 0x8

    .line 32
    .line 33
    iget v1, p0, Lcom/mycompany/app/editor/core/PhotoEditorView;->c:I

    .line 34
    .line 35
    invoke-virtual {v0, p1, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 36
    .line 37
    .line 38
    :cond_0
    return-object v0
.end method

.method public getDrawView()Lcom/mycompany/app/editor/core/PhotoDrawView;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/editor/core/PhotoEditorView;->h:Lcom/mycompany/app/editor/core/PhotoDrawView;

    .line 2
    .line 3
    return-object v0
.end method

.method public getImageView()Landroid/widget/ImageView;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/editor/core/PhotoEditorView;->f:Landroid/widget/ImageView;

    .line 2
    .line 3
    return-object v0
.end method

.method public setEffectType(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/editor/core/PhotoEditorView;->g:Lcom/mycompany/app/editor/core/PhotoEffectView;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    iget v1, p0, Lcom/mycompany/app/editor/core/PhotoEditorView;->i:I

    .line 7
    .line 8
    if-ne v1, p1, :cond_1

    .line 9
    .line 10
    :goto_0
    return-void

    .line 11
    :cond_1
    iput p1, p0, Lcom/mycompany/app/editor/core/PhotoEditorView;->i:I

    .line 12
    .line 13
    invoke-virtual {v0, p1}, Lcom/mycompany/app/editor/core/PhotoEffectView;->setEffectType(I)V

    .line 14
    .line 15
    .line 16
    iget p1, p0, Lcom/mycompany/app/editor/core/PhotoEditorView;->i:I

    .line 17
    .line 18
    if-nez p1, :cond_2

    .line 19
    .line 20
    iget-object p1, p0, Lcom/mycompany/app/editor/core/PhotoEditorView;->g:Lcom/mycompany/app/editor/core/PhotoEffectView;

    .line 21
    .line 22
    const/16 v0, 0x8

    .line 23
    .line 24
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 25
    .line 26
    .line 27
    return-void

    .line 28
    :cond_2
    iget-object p1, p0, Lcom/mycompany/app/editor/core/PhotoEditorView;->g:Lcom/mycompany/app/editor/core/PhotoEffectView;

    .line 29
    .line 30
    const/4 v0, 0x0

    .line 31
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 32
    .line 33
    .line 34
    return-void
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/editor/core/PhotoEditorView;->f:Landroid/widget/ImageView;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-static {p1}, Lcom/mycompany/app/main/MainUtil;->f6(Landroid/graphics/Bitmap;)Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_5

    .line 11
    .line 12
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    check-cast v0, Landroid/view/View;

    .line 17
    .line 18
    const/4 v1, 0x0

    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-lez v2, :cond_1

    .line 30
    .line 31
    if-lez v0, :cond_1

    .line 32
    .line 33
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    .line 34
    .line 35
    .line 36
    move-result v3

    .line 37
    int-to-float v3, v3

    .line 38
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    .line 39
    .line 40
    .line 41
    move-result v4

    .line 42
    int-to-float v4, v4

    .line 43
    div-float/2addr v3, v4

    .line 44
    int-to-float v0, v0

    .line 45
    int-to-float v2, v2

    .line 46
    div-float/2addr v0, v2

    .line 47
    cmpl-float v0, v3, v0

    .line 48
    .line 49
    if-lez v0, :cond_1

    .line 50
    .line 51
    const/4 v1, 0x1

    .line 52
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    const/4 v2, -0x1

    .line 57
    const/4 v3, -0x2

    .line 58
    if-eqz v0, :cond_3

    .line 59
    .line 60
    if-eqz v1, :cond_2

    .line 61
    .line 62
    iput v3, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 63
    .line 64
    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_2
    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 68
    .line 69
    iput v3, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 70
    .line 71
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/mycompany/app/editor/core/PhotoEditorView;->f:Landroid/widget/ImageView;

    .line 72
    .line 73
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    if-eqz v0, :cond_5

    .line 78
    .line 79
    if-eqz v1, :cond_4

    .line 80
    .line 81
    iput v3, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 82
    .line 83
    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 84
    .line 85
    goto :goto_1

    .line 86
    :cond_4
    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 87
    .line 88
    iput v3, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 89
    .line 90
    :cond_5
    :goto_1
    iget-object v0, p0, Lcom/mycompany/app/editor/core/PhotoEditorView;->f:Landroid/widget/ImageView;

    .line 91
    .line 92
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 93
    .line 94
    .line 95
    iget-object v0, p0, Lcom/mycompany/app/editor/core/PhotoEditorView;->g:Lcom/mycompany/app/editor/core/PhotoEffectView;

    .line 96
    .line 97
    invoke-virtual {v0, p1}, Lcom/mycompany/app/editor/core/PhotoEffectView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 98
    .line 99
    .line 100
    return-void
.end method
