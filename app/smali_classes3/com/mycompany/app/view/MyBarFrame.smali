.class public Lcom/mycompany/app/view/MyBarFrame;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# static fields
.field public static final synthetic q:I


# instance fields
.field public c:Z

.field public f:I

.field public final g:F

.field public h:Landroid/graphics/Paint;

.field public i:I

.field public j:Z

.field public k:Z

.field public l:Z

.field public m:I

.field public n:Landroid/view/View;

.field public o:Landroid/view/View;

.field public p:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/web/WebViewActivity;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    sget p1, Lcom/mycompany/app/main/MainApp;->n1:I

    .line 5
    .line 6
    int-to-float p1, p1

    .line 7
    const/high16 v0, 0x40000000    # 2.0f

    .line 8
    .line 9
    div-float v0, p1, v0

    .line 10
    .line 11
    iput v0, p0, Lcom/mycompany/app/view/MyBarFrame;->g:F

    .line 12
    .line 13
    new-instance v0, Landroid/graphics/Paint;

    .line 14
    .line 15
    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 16
    .line 17
    .line 18
    iput-object v0, p0, Lcom/mycompany/app/view/MyBarFrame;->h:Landroid/graphics/Paint;

    .line 19
    .line 20
    const/4 v1, 0x1

    .line 21
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 22
    .line 23
    .line 24
    iget-object v0, p0, Lcom/mycompany/app/view/MyBarFrame;->h:Landroid/graphics/Paint;

    .line 25
    .line 26
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 29
    .line 30
    .line 31
    iget-object v0, p0, Lcom/mycompany/app/view/MyBarFrame;->h:Landroid/graphics/Paint;

    .line 32
    .line 33
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method private getBarMgnBot()I
    .locals 2

    .line 1
    sget v0, Lcom/mycompany/app/pref/PrefWeb;->x:I

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    sget v0, Lcom/mycompany/app/pref/PrefPdf;->F:I

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    :goto_0
    sget-boolean v1, Lcom/mycompany/app/pref/PrefPdf;->z:Z

    .line 11
    .line 12
    if-eqz v1, :cond_1

    .line 13
    .line 14
    sget-boolean v1, Lcom/mycompany/app/main/MainActivity;->e1:Z

    .line 15
    .line 16
    if-nez v1, :cond_1

    .line 17
    .line 18
    invoke-static {}, Lcom/mycompany/app/main/MainUtil;->G3()I

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    add-int/2addr v1, v0

    .line 23
    return v1

    .line 24
    :cond_1
    return v0
.end method

.method private getBarMgnTab()I
    .locals 2

    .line 1
    sget v0, Lcom/mycompany/app/pref/PrefWeb;->x:I

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    sget-boolean v0, Lcom/mycompany/app/pref/PrefPdf;->z:Z

    .line 7
    .line 8
    if-nez v0, :cond_3

    .line 9
    .line 10
    invoke-static {}, Lcom/mycompany/app/main/MainUtil;->G3()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    return v0

    .line 15
    :cond_0
    const/4 v1, 0x4

    .line 16
    if-ne v0, v1, :cond_3

    .line 17
    .line 18
    sget-boolean v0, Lcom/mycompany/app/pref/PrefPdf;->z:Z

    .line 19
    .line 20
    if-eqz v0, :cond_2

    .line 21
    .line 22
    sget-boolean v0, Lcom/mycompany/app/main/MainActivity;->e1:Z

    .line 23
    .line 24
    if-eqz v0, :cond_1

    .line 25
    .line 26
    invoke-static {}, Lcom/mycompany/app/main/MainUtil;->G3()I

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    invoke-static {}, Lcom/mycompany/app/main/MainUtil;->i0()I

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    return v0

    .line 39
    :cond_1
    invoke-static {}, Lcom/mycompany/app/main/MainUtil;->G3()I

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    invoke-static {}, Lcom/mycompany/app/main/MainUtil;->i0()I

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    add-int/2addr v1, v0

    .line 48
    return v1

    .line 49
    :cond_2
    invoke-static {}, Lcom/mycompany/app/main/MainUtil;->i0()I

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    return v0

    .line 54
    :cond_3
    const/4 v0, 0x0

    .line 55
    return v0
.end method

.method private getBarMgnTop()I
    .locals 2

    .line 1
    sget-boolean v0, Lcom/mycompany/app/pref/PrefPdf;->z:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    sget v0, Lcom/mycompany/app/pref/PrefWeb;->x:I

    .line 6
    .line 7
    const/4 v1, 0x3

    .line 8
    if-ne v0, v1, :cond_1

    .line 9
    .line 10
    sget v0, Lcom/mycompany/app/pref/PrefPdf;->F:I

    .line 11
    .line 12
    return v0

    .line 13
    :cond_0
    sget v0, Lcom/mycompany/app/pref/PrefWeb;->x:I

    .line 14
    .line 15
    const/4 v1, 0x1

    .line 16
    if-ne v0, v1, :cond_1

    .line 17
    .line 18
    sget v0, Lcom/mycompany/app/pref/PrefPdf;->F:I

    .line 19
    .line 20
    return v0

    .line 21
    :cond_1
    const/4 v0, 0x0

    .line 22
    return v0
.end method

.method private setChildAlpha(F)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    goto :goto_2

    .line 8
    :cond_0
    const/4 v1, 0x0

    .line 9
    :goto_0
    if-ge v1, v0, :cond_2

    .line 10
    .line 11
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    if-nez v2, :cond_1

    .line 16
    .line 17
    goto :goto_1

    .line 18
    :cond_1
    invoke-virtual {v2, p1}, Landroid/view/View;->setAlpha(F)V

    .line 19
    .line 20
    .line 21
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_2
    :goto_2
    return-void
.end method

.method private setChildVisible(I)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    goto :goto_2

    .line 8
    :cond_0
    const/4 v1, 0x0

    .line 9
    :goto_0
    if-ge v1, v0, :cond_2

    .line 10
    .line 11
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    if-nez v2, :cond_1

    .line 16
    .line 17
    goto :goto_1

    .line 18
    :cond_1
    invoke-virtual {v2, p1}, Landroid/view/View;->setVisibility(I)V

    .line 19
    .line 20
    .line 21
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_2
    :goto_2
    return-void
.end method

.method private setRoundClip(Z)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/mycompany/app/view/MyBarFrame;->c:Z

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-static {}, Lcom/mycompany/app/main/MainUtil;->V4()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    iget-boolean v1, p0, Lcom/mycompany/app/view/MyBarFrame;->k:Z

    .line 10
    .line 11
    if-ne v1, p1, :cond_0

    .line 12
    .line 13
    iget-boolean v1, p0, Lcom/mycompany/app/view/MyBarFrame;->l:Z

    .line 14
    .line 15
    if-ne v1, v0, :cond_0

    .line 16
    .line 17
    iget v1, p0, Lcom/mycompany/app/view/MyBarFrame;->m:I

    .line 18
    .line 19
    sget v2, Lcom/mycompany/app/pref/PrefWeb;->x:I

    .line 20
    .line 21
    if-ne v1, v2, :cond_0

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    iput-boolean p1, p0, Lcom/mycompany/app/view/MyBarFrame;->k:Z

    .line 25
    .line 26
    iput-boolean v0, p0, Lcom/mycompany/app/view/MyBarFrame;->l:Z

    .line 27
    .line 28
    sget p1, Lcom/mycompany/app/pref/PrefWeb;->x:I

    .line 29
    .line 30
    iput p1, p0, Lcom/mycompany/app/view/MyBarFrame;->m:I

    .line 31
    .line 32
    goto :goto_1

    .line 33
    :cond_1
    iget-boolean v0, p0, Lcom/mycompany/app/view/MyBarFrame;->k:Z

    .line 34
    .line 35
    if-ne v0, p1, :cond_2

    .line 36
    .line 37
    :goto_0
    return-void

    .line 38
    :cond_2
    iput-boolean p1, p0, Lcom/mycompany/app/view/MyBarFrame;->k:Z

    .line 39
    .line 40
    :goto_1
    iget-boolean p1, p0, Lcom/mycompany/app/view/MyBarFrame;->k:Z

    .line 41
    .line 42
    if-nez p1, :cond_3

    .line 43
    .line 44
    const/4 p1, 0x0

    .line 45
    invoke-virtual {p0, p1}, Landroid/view/View;->setClipToOutline(Z)V

    .line 46
    .line 47
    .line 48
    return-void

    .line 49
    :cond_3
    new-instance p1, Lcom/mycompany/app/view/MyBarFrame$1;

    .line 50
    .line 51
    invoke-direct {p1, p0}, Lcom/mycompany/app/view/MyBarFrame$1;-><init>(Lcom/mycompany/app/view/MyBarFrame;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {p0, p1}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 55
    .line 56
    .line 57
    const/4 p1, 0x1

    .line 58
    invoke-virtual {p0, p1}, Landroid/view/View;->setClipToOutline(Z)V

    .line 59
    .line 60
    .line 61
    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;I)V
    .locals 5

    .line 1
    const/4 v0, 0x2

    .line 2
    const/4 v1, 0x1

    .line 3
    if-nez p2, :cond_0

    .line 4
    .line 5
    iput-object p1, p0, Lcom/mycompany/app/view/MyBarFrame;->n:Landroid/view/View;

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    if-ne p2, v1, :cond_1

    .line 9
    .line 10
    iput-object p1, p0, Lcom/mycompany/app/view/MyBarFrame;->o:Landroid/view/View;

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_1
    if-ne p2, v0, :cond_2

    .line 14
    .line 15
    iput-object p1, p0, Lcom/mycompany/app/view/MyBarFrame;->p:Landroid/view/View;

    .line 16
    .line 17
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/mycompany/app/view/MyBarFrame;->e()V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0, p2}, Lcom/mycompany/app/view/MyBarFrame;->g(I)I

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    invoke-virtual {p0, p2}, Lcom/mycompany/app/view/MyBarFrame;->f(I)I

    .line 25
    .line 26
    .line 27
    move-result v3

    .line 28
    if-nez p2, :cond_3

    .line 29
    .line 30
    invoke-direct {p0}, Lcom/mycompany/app/view/MyBarFrame;->getBarMgnTop()I

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    goto :goto_1

    .line 35
    :cond_3
    if-ne p2, v1, :cond_4

    .line 36
    .line 37
    invoke-direct {p0}, Lcom/mycompany/app/view/MyBarFrame;->getBarMgnBot()I

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    goto :goto_1

    .line 42
    :cond_4
    if-ne p2, v0, :cond_5

    .line 43
    .line 44
    invoke-direct {p0}, Lcom/mycompany/app/view/MyBarFrame;->getBarMgnTab()I

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    goto :goto_1

    .line 49
    :cond_5
    const/4 v0, 0x0

    .line 50
    :goto_1
    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    .line 51
    .line 52
    invoke-direct {v4, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 53
    .line 54
    .line 55
    iput v0, v4, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 56
    .line 57
    if-ne p2, v1, :cond_6

    .line 58
    .line 59
    const v0, 0x800005

    .line 60
    .line 61
    .line 62
    iput v0, v4, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 63
    .line 64
    goto :goto_2

    .line 65
    :cond_6
    const v0, 0x800003

    .line 66
    .line 67
    .line 68
    iput v0, v4, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 69
    .line 70
    :goto_2
    const/4 v0, 0x3

    .line 71
    if-ne p2, v0, :cond_7

    .line 72
    .line 73
    const/16 p2, 0x8

    .line 74
    .line 75
    invoke-direct {p0, p2}, Lcom/mycompany/app/view/MyBarFrame;->setChildVisible(I)V

    .line 76
    .line 77
    .line 78
    :cond_7
    invoke-virtual {p0, p1, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 79
    .line 80
    .line 81
    return-void
.end method

.method public final b()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/mycompany/app/view/MyBarFrame;->e()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/mycompany/app/view/MyBarFrame;->n:Landroid/view/View;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-virtual {p0, v0, v1}, Lcom/mycompany/app/view/MyBarFrame;->c(Landroid/view/View;I)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    iget-object v1, p0, Lcom/mycompany/app/view/MyBarFrame;->o:Landroid/view/View;

    .line 12
    .line 13
    const/4 v2, 0x1

    .line 14
    invoke-virtual {p0, v1, v2}, Lcom/mycompany/app/view/MyBarFrame;->c(Landroid/view/View;I)Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    iget-object v2, p0, Lcom/mycompany/app/view/MyBarFrame;->p:Landroid/view/View;

    .line 19
    .line 20
    const/4 v3, 0x2

    .line 21
    invoke-virtual {p0, v2, v3}, Lcom/mycompany/app/view/MyBarFrame;->c(Landroid/view/View;I)Z

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    if-nez v0, :cond_1

    .line 26
    .line 27
    if-nez v1, :cond_1

    .line 28
    .line 29
    if-eqz v2, :cond_0

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    return-void

    .line 33
    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method public final c(Landroid/view/View;I)Z
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    goto :goto_1

    .line 5
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    .line 10
    .line 11
    if-nez p1, :cond_1

    .line 12
    .line 13
    goto :goto_1

    .line 14
    :cond_1
    invoke-virtual {p0, p2}, Lcom/mycompany/app/view/MyBarFrame;->g(I)I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    invoke-virtual {p0, p2}, Lcom/mycompany/app/view/MyBarFrame;->f(I)I

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    const/4 v3, 0x1

    .line 23
    if-nez p2, :cond_2

    .line 24
    .line 25
    invoke-direct {p0}, Lcom/mycompany/app/view/MyBarFrame;->getBarMgnTop()I

    .line 26
    .line 27
    .line 28
    move-result p2

    .line 29
    goto :goto_0

    .line 30
    :cond_2
    if-ne p2, v3, :cond_3

    .line 31
    .line 32
    invoke-direct {p0}, Lcom/mycompany/app/view/MyBarFrame;->getBarMgnBot()I

    .line 33
    .line 34
    .line 35
    move-result p2

    .line 36
    goto :goto_0

    .line 37
    :cond_3
    const/4 v4, 0x2

    .line 38
    if-ne p2, v4, :cond_4

    .line 39
    .line 40
    invoke-direct {p0}, Lcom/mycompany/app/view/MyBarFrame;->getBarMgnTab()I

    .line 41
    .line 42
    .line 43
    move-result p2

    .line 44
    goto :goto_0

    .line 45
    :cond_4
    move p2, v0

    .line 46
    :goto_0
    iget v4, p1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 47
    .line 48
    if-ne v4, v1, :cond_5

    .line 49
    .line 50
    iget v4, p1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 51
    .line 52
    if-ne v4, v2, :cond_5

    .line 53
    .line 54
    iget v4, p1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 55
    .line 56
    if-ne v4, p2, :cond_5

    .line 57
    .line 58
    :goto_1
    return v0

    .line 59
    :cond_5
    iput v1, p1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 60
    .line 61
    iput v2, p1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 62
    .line 63
    iput p2, p1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 64
    .line 65
    return v3
.end method

.method public final d()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/mycompany/app/view/MyBarFrame;->k:Z

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lcom/mycompany/app/view/MyBarFrame;->setRoundClip(Z)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 14

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget v1, p0, Lcom/mycompany/app/view/MyBarFrame;->f:I

    .line 9
    .line 10
    if-eqz v1, :cond_1

    .line 11
    .line 12
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 13
    .line 14
    .line 15
    :cond_1
    iget v1, p0, Lcom/mycompany/app/view/MyBarFrame;->i:I

    .line 16
    .line 17
    if-eqz v1, :cond_3

    .line 18
    .line 19
    iget-object v1, p0, Lcom/mycompany/app/view/MyBarFrame;->h:Landroid/graphics/Paint;

    .line 20
    .line 21
    if-eqz v1, :cond_3

    .line 22
    .line 23
    iget-boolean v1, p0, Lcom/mycompany/app/view/MyBarFrame;->c:Z

    .line 24
    .line 25
    if-eqz v1, :cond_2

    .line 26
    .line 27
    int-to-float v0, v0

    .line 28
    iget v1, p0, Lcom/mycompany/app/view/MyBarFrame;->g:F

    .line 29
    .line 30
    sub-float v4, v0, v1

    .line 31
    .line 32
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    int-to-float v5, v1

    .line 37
    iget v1, p0, Lcom/mycompany/app/view/MyBarFrame;->g:F

    .line 38
    .line 39
    sub-float v6, v0, v1

    .line 40
    .line 41
    iget-object v7, p0, Lcom/mycompany/app/view/MyBarFrame;->h:Landroid/graphics/Paint;

    .line 42
    .line 43
    const/4 v3, 0x0

    .line 44
    move-object v2, p1

    .line 45
    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 46
    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_2
    move-object v2, p1

    .line 50
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 51
    .line 52
    .line 53
    move-result p1

    .line 54
    int-to-float v11, p1

    .line 55
    iget v12, p0, Lcom/mycompany/app/view/MyBarFrame;->g:F

    .line 56
    .line 57
    iget-object v13, p0, Lcom/mycompany/app/view/MyBarFrame;->h:Landroid/graphics/Paint;

    .line 58
    .line 59
    const/4 v9, 0x0

    .line 60
    iget v10, p0, Lcom/mycompany/app/view/MyBarFrame;->g:F

    .line 61
    .line 62
    move-object v8, v2

    .line 63
    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 64
    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_3
    move-object v2, p1

    .line 68
    :goto_0
    invoke-super {p0, v2}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 69
    .line 70
    .line 71
    return-void
.end method

.method public final dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/mycompany/app/view/MyBarFrame;->j:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 p1, 0x1

    .line 6
    return p1

    .line 7
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    return p1
.end method

.method public final e()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/mycompany/app/view/MyBarFrame;->c:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-static {}, Lcom/mycompany/app/main/MainUtil;->H3()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    invoke-static {}, Lcom/mycompany/app/main/MainUtil;->j0()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    :goto_0
    if-nez v0, :cond_2

    .line 15
    .line 16
    iget-boolean v0, p0, Lcom/mycompany/app/view/MyBarFrame;->c:Z

    .line 17
    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    const/4 v0, 0x4

    .line 21
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    .line 22
    .line 23
    .line 24
    return-void

    .line 25
    :cond_1
    const/16 v0, 0x8

    .line 26
    .line 27
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    .line 28
    .line 29
    .line 30
    return-void

    .line 31
    :cond_2
    const/4 v0, 0x0

    .line 32
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    .line 33
    .line 34
    .line 35
    return-void
.end method

.method public final f(I)I
    .locals 1

    .line 1
    if-nez p1, :cond_1

    .line 2
    .line 3
    sget-boolean p1, Lcom/mycompany/app/pref/PrefPdf;->z:Z

    .line 4
    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    sget-boolean p1, Lcom/mycompany/app/main/MainActivity;->e1:Z

    .line 8
    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    invoke-static {}, Lcom/mycompany/app/main/MainUtil;->G3()I

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    invoke-static {}, Lcom/mycompany/app/main/MainUtil;->i0()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    return p1

    .line 24
    :cond_0
    invoke-static {}, Lcom/mycompany/app/main/MainUtil;->G3()I

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    return p1

    .line 29
    :cond_1
    const/4 v0, 0x1

    .line 30
    if-ne p1, v0, :cond_3

    .line 31
    .line 32
    sget-boolean p1, Lcom/mycompany/app/pref/PrefPdf;->z:Z

    .line 33
    .line 34
    if-eqz p1, :cond_2

    .line 35
    .line 36
    sget-boolean p1, Lcom/mycompany/app/main/MainActivity;->e1:Z

    .line 37
    .line 38
    if-eqz p1, :cond_2

    .line 39
    .line 40
    invoke-static {}, Lcom/mycompany/app/main/MainUtil;->G3()I

    .line 41
    .line 42
    .line 43
    move-result p1

    .line 44
    invoke-static {}, Lcom/mycompany/app/main/MainUtil;->i0()I

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    .line 49
    .line 50
    .line 51
    move-result p1

    .line 52
    return p1

    .line 53
    :cond_2
    invoke-static {}, Lcom/mycompany/app/main/MainUtil;->i0()I

    .line 54
    .line 55
    .line 56
    move-result p1

    .line 57
    return p1

    .line 58
    :cond_3
    const/4 v0, 0x2

    .line 59
    if-ne p1, v0, :cond_4

    .line 60
    .line 61
    sget p1, Lcom/mycompany/app/pref/PrefPdf;->F:I

    .line 62
    .line 63
    return p1

    .line 64
    :cond_4
    iget-boolean p1, p0, Lcom/mycompany/app/view/MyBarFrame;->c:Z

    .line 65
    .line 66
    if-eqz p1, :cond_5

    .line 67
    .line 68
    invoke-static {}, Lcom/mycompany/app/main/MainUtil;->G3()I

    .line 69
    .line 70
    .line 71
    move-result p1

    .line 72
    goto :goto_0

    .line 73
    :cond_5
    invoke-static {}, Lcom/mycompany/app/main/MainUtil;->i0()I

    .line 74
    .line 75
    .line 76
    move-result p1

    .line 77
    :goto_0
    sget v0, Lcom/mycompany/app/main/MainApp;->Y0:I

    .line 78
    .line 79
    if-ge p1, v0, :cond_6

    .line 80
    .line 81
    return v0

    .line 82
    :cond_6
    return p1
.end method

.method public final g(I)I
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    if-nez p1, :cond_2

    .line 3
    .line 4
    sget-boolean p1, Lcom/mycompany/app/pref/PrefPdf;->z:Z

    .line 5
    .line 6
    if-nez p1, :cond_0

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    sget-boolean p1, Lcom/mycompany/app/main/MainActivity;->e1:Z

    .line 10
    .line 11
    if-nez p1, :cond_1

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    invoke-static {p1, v0}, Lcom/mycompany/app/view/MyBarView;->c(IZ)I

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    return p1

    .line 23
    :cond_2
    if-ne p1, v0, :cond_5

    .line 24
    .line 25
    sget-boolean p1, Lcom/mycompany/app/pref/PrefPdf;->z:Z

    .line 26
    .line 27
    if-nez p1, :cond_3

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_3
    sget-boolean p1, Lcom/mycompany/app/main/MainActivity;->e1:Z

    .line 31
    .line 32
    if-nez p1, :cond_4

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_4
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 36
    .line 37
    .line 38
    move-result p1

    .line 39
    const/4 v0, 0x0

    .line 40
    invoke-static {p1, v0}, Lcom/mycompany/app/view/MyBarView;->c(IZ)I

    .line 41
    .line 42
    .line 43
    move-result p1

    .line 44
    return p1

    .line 45
    :cond_5
    :goto_0
    const/4 p1, -0x1

    .line 46
    return p1
.end method

.method public final h(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x0

    .line 5
    invoke-direct {p0, p1}, Lcom/mycompany/app/view/MyBarFrame;->setChildVisible(I)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final i(ZZ)V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-static {v0, p2}, Lcom/mycompany/app/main/MainUtil;->s0(IZ)I

    .line 3
    .line 4
    .line 5
    move-result p2

    .line 6
    const/4 v1, 0x1

    .line 7
    if-nez p2, :cond_0

    .line 8
    .line 9
    const/4 v2, -0x1

    .line 10
    sget v3, Lcom/mycompany/app/pref/PrefEditor;->I:I

    .line 11
    .line 12
    invoke-static {v2, v3}, Lcom/mycompany/app/pref/PrefEditor;->r(II)I

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/high16 v2, -0x1000000

    .line 18
    .line 19
    if-ne p2, v1, :cond_1

    .line 20
    .line 21
    sget v3, Lcom/mycompany/app/pref/PrefEditor;->I:I

    .line 22
    .line 23
    invoke-static {v2, v3}, Lcom/mycompany/app/pref/PrefEditor;->r(II)I

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    goto :goto_0

    .line 28
    :cond_1
    sget v3, Lcom/mycompany/app/pref/PrefEditor;->I:I

    .line 29
    .line 30
    invoke-static {v2, v3}, Lcom/mycompany/app/pref/PrefEditor;->r(II)I

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    :goto_0
    iget v3, p0, Lcom/mycompany/app/view/MyBarFrame;->f:I

    .line 35
    .line 36
    if-eq v3, v2, :cond_2

    .line 37
    .line 38
    iput v2, p0, Lcom/mycompany/app/view/MyBarFrame;->f:I

    .line 39
    .line 40
    move v2, v1

    .line 41
    goto :goto_1

    .line 42
    :cond_2
    move v2, v0

    .line 43
    :goto_1
    iget-object v3, p0, Lcom/mycompany/app/view/MyBarFrame;->h:Landroid/graphics/Paint;

    .line 44
    .line 45
    if-eqz v3, :cond_5

    .line 46
    .line 47
    if-eqz p1, :cond_3

    .line 48
    .line 49
    goto :goto_2

    .line 50
    :cond_3
    if-nez p2, :cond_4

    .line 51
    .line 52
    const v0, -0x7e1f1f20

    .line 53
    .line 54
    .line 55
    :cond_4
    :goto_2
    iget p2, p0, Lcom/mycompany/app/view/MyBarFrame;->i:I

    .line 56
    .line 57
    if-eq p2, v0, :cond_5

    .line 58
    .line 59
    iput v0, p0, Lcom/mycompany/app/view/MyBarFrame;->i:I

    .line 60
    .line 61
    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 62
    .line 63
    .line 64
    goto :goto_3

    .line 65
    :cond_5
    move v1, v2

    .line 66
    :goto_3
    invoke-direct {p0, p1}, Lcom/mycompany/app/view/MyBarFrame;->setRoundClip(Z)V

    .line 67
    .line 68
    .line 69
    if-eqz v1, :cond_6

    .line 70
    .line 71
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 72
    .line 73
    .line 74
    :cond_6
    return-void
.end method

.method public final j(IZZ)V
    .locals 3

    .line 1
    invoke-static {p1, p3}, Lcom/mycompany/app/main/MainUtil;->s0(IZ)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    const/4 p3, 0x1

    .line 6
    if-nez p1, :cond_0

    .line 7
    .line 8
    const/4 v0, -0x1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    if-ne p1, p3, :cond_1

    .line 11
    .line 12
    const/high16 v0, -0x1000000

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_1
    move v0, p1

    .line 16
    :goto_0
    iget v1, p0, Lcom/mycompany/app/view/MyBarFrame;->f:I

    .line 17
    .line 18
    const/4 v2, 0x0

    .line 19
    if-eq v1, v0, :cond_2

    .line 20
    .line 21
    iput v0, p0, Lcom/mycompany/app/view/MyBarFrame;->f:I

    .line 22
    .line 23
    move v0, p3

    .line 24
    goto :goto_1

    .line 25
    :cond_2
    move v0, v2

    .line 26
    :goto_1
    iget-object v1, p0, Lcom/mycompany/app/view/MyBarFrame;->h:Landroid/graphics/Paint;

    .line 27
    .line 28
    if-eqz v1, :cond_5

    .line 29
    .line 30
    if-eqz p2, :cond_3

    .line 31
    .line 32
    goto :goto_2

    .line 33
    :cond_3
    if-nez p1, :cond_4

    .line 34
    .line 35
    const v2, -0x7e1f1f20

    .line 36
    .line 37
    .line 38
    :cond_4
    :goto_2
    iget p1, p0, Lcom/mycompany/app/view/MyBarFrame;->i:I

    .line 39
    .line 40
    if-eq p1, v2, :cond_5

    .line 41
    .line 42
    iput v2, p0, Lcom/mycompany/app/view/MyBarFrame;->i:I

    .line 43
    .line 44
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 45
    .line 46
    .line 47
    goto :goto_3

    .line 48
    :cond_5
    move p3, v0

    .line 49
    :goto_3
    invoke-direct {p0, p2}, Lcom/mycompany/app/view/MyBarFrame;->setRoundClip(Z)V

    .line 50
    .line 51
    .line 52
    if-eqz p3, :cond_6

    .line 53
    .line 54
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 55
    .line 56
    .line 57
    :cond_6
    return-void
.end method

.method public final onSizeChanged(IIII)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    .line 2
    .line 3
    .line 4
    sget-boolean p1, Lcom/mycompany/app/pref/PrefPdf;->z:Z

    .line 5
    .line 6
    if-nez p1, :cond_0

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    new-instance p1, Lcom/mycompany/app/view/MyBarFrame$2;

    .line 10
    .line 11
    invoke-direct {p1, p0}, Lcom/mycompany/app/view/MyBarFrame$2;-><init>(Lcom/mycompany/app/view/MyBarFrame;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, p1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public setDisabled(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/mycompany/app/view/MyBarFrame;->j:Z

    .line 2
    .line 3
    if-ne v0, p1, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iput-boolean p1, p0, Lcom/mycompany/app/view/MyBarFrame;->j:Z

    .line 7
    .line 8
    if-eqz p1, :cond_1

    .line 9
    .line 10
    const p1, 0x3ecccccd    # 0.4f

    .line 11
    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_1
    const/high16 p1, 0x3f800000    # 1.0f

    .line 15
    .line 16
    :goto_0
    invoke-direct {p0, p1}, Lcom/mycompany/app/view/MyBarFrame;->setChildAlpha(F)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public setIsTop(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/mycompany/app/view/MyBarFrame;->c:Z

    .line 2
    .line 3
    return-void
.end method
