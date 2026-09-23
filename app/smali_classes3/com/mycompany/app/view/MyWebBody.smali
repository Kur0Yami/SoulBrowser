.class public Lcom/mycompany/app/view/MyWebBody;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mycompany/app/view/MyWebBody$HandListener;
    }
.end annotation


# instance fields
.field public A:F

.field public B:Landroid/graphics/drawable/Drawable;

.field public C:I

.field public D:Lcom/mycompany/app/view/MyAdNative;

.field public c:Z

.field public f:I

.field public g:Landroid/graphics/Paint;

.field public h:I

.field public i:Landroid/graphics/Rect;

.field public j:I

.field public k:Landroid/graphics/Paint;

.field public l:I

.field public m:Landroid/graphics/Rect;

.field public n:I

.field public o:I

.field public p:I

.field public q:I

.field public r:Landroid/graphics/Paint;

.field public s:Landroid/graphics/Rect;

.field public t:Landroid/graphics/Rect;

.field public u:Landroid/graphics/Rect;

.field public v:Landroid/graphics/Rect;

.field public w:Lcom/mycompany/app/image/ImageSizeListener;

.field public x:Lcom/mycompany/app/view/MyWebBody$HandListener;

.field public y:Z

.field public z:F


# direct methods
.method public static a(Lcom/mycompany/app/view/MyWebBody;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/view/MyWebBody;->D:Lcom/mycompany/app/view/MyAdNative;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    iput-object v1, p0, Lcom/mycompany/app/view/MyWebBody;->D:Lcom/mycompany/app/view/MyAdNative;

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    const/high16 v2, 0x43aa0000    # 340.0f

    .line 14
    .line 15
    invoke-static {v1, v2}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    float-to-int v1, v1

    .line 20
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 21
    .line 22
    const/4 v3, -0x1

    .line 23
    invoke-direct {v2, v3, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 24
    .line 25
    .line 26
    const/4 v1, 0x0

    .line 27
    const/4 v3, 0x1

    .line 28
    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/view/ViewGroup;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    .line 30
    .line 31
    :catch_0
    :goto_0
    return-void
.end method

.method public static d(I)Landroid/graphics/Paint;
    .locals 2

    .line 1
    new-instance v0, Landroid/graphics/Paint;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x1

    .line 7
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 8
    .line 9
    .line 10
    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 13
    .line 14
    .line 15
    if-eqz p0, :cond_0

    .line 16
    .line 17
    invoke-virtual {v0, p0}, Landroid/graphics/Paint;->setColor(I)V

    .line 18
    .line 19
    .line 20
    :cond_0
    return-object v0
.end method

.method private setHandNotiPos(Landroid/app/Activity;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/view/MyWebBody;->B:Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    div-int/lit8 v0, v0, 0x2

    .line 11
    .line 12
    invoke-virtual {p0, p1}, Lcom/mycompany/app/view/MyWebBody;->e(Landroid/app/Activity;)I

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    div-int/lit8 p1, p1, 0x2

    .line 17
    .line 18
    sget v1, Lcom/mycompany/app/main/MainApp;->f1:I

    .line 19
    .line 20
    sget v2, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 21
    .line 22
    sub-int/2addr v1, v2

    .line 23
    div-int/lit8 v1, v1, 0x2

    .line 24
    .line 25
    sub-int v2, v0, v1

    .line 26
    .line 27
    sub-int v3, p1, v1

    .line 28
    .line 29
    add-int/2addr v0, v1

    .line 30
    add-int/2addr p1, v1

    .line 31
    iget-object v1, p0, Lcom/mycompany/app/view/MyWebBody;->B:Landroid/graphics/drawable/Drawable;

    .line 32
    .line 33
    invoke-virtual {v1, v2, v3, v0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 37
    .line 38
    .line 39
    return-void
.end method


# virtual methods
.method public final b(Lcom/mycompany/app/view/MyAdNative;Landroid/os/Handler;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/view/MyWebBody;->D:Lcom/mycompany/app/view/MyAdNative;

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
    iput-object p1, p0, Lcom/mycompany/app/view/MyWebBody;->D:Lcom/mycompany/app/view/MyAdNative;

    .line 26
    .line 27
    if-nez p2, :cond_3

    .line 28
    .line 29
    new-instance p2, Landroid/os/Handler;

    .line 30
    .line 31
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    invoke-direct {p2, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 36
    .line 37
    .line 38
    :cond_3
    new-instance p1, Lcom/mycompany/app/view/MyWebBody$1;

    .line 39
    .line 40
    invoke-direct {p1, p0}, Lcom/mycompany/app/view/MyWebBody$1;-><init>(Lcom/mycompany/app/view/MyWebBody;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p2, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 44
    .line 45
    .line 46
    return-void

    .line 47
    :catch_0
    const/4 p1, 0x0

    .line 48
    iput-object p1, p0, Lcom/mycompany/app/view/MyWebBody;->D:Lcom/mycompany/app/view/MyAdNative;

    .line 49
    .line 50
    return-void
.end method

.method public final c(Landroid/view/View;Landroid/widget/RelativeLayout$LayoutParams;)V
    .locals 2

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    const/4 v0, 0x1

    .line 5
    const/4 v1, 0x0

    .line 6
    :try_start_0
    invoke-virtual {p0, p1, v1, p2, v0}, Landroid/view/ViewGroup;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    .line 8
    .line 9
    :catch_0
    return-void
.end method

.method public final dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/mycompany/app/view/MyWebBody;->h:I

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/mycompany/app/view/MyWebBody;->i:Landroid/graphics/Rect;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v1, p0, Lcom/mycompany/app/view/MyWebBody;->g:Landroid/graphics/Paint;

    .line 10
    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 14
    .line 15
    .line 16
    :cond_0
    iget v0, p0, Lcom/mycompany/app/view/MyWebBody;->l:I

    .line 17
    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    iget-object v0, p0, Lcom/mycompany/app/view/MyWebBody;->m:Landroid/graphics/Rect;

    .line 21
    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    iget-object v1, p0, Lcom/mycompany/app/view/MyWebBody;->k:Landroid/graphics/Paint;

    .line 25
    .line 26
    if-eqz v1, :cond_1

    .line 27
    .line 28
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 29
    .line 30
    .line 31
    :cond_1
    iget v0, p0, Lcom/mycompany/app/view/MyWebBody;->o:I

    .line 32
    .line 33
    if-eqz v0, :cond_2

    .line 34
    .line 35
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 36
    .line 37
    .line 38
    :cond_2
    iget-object v0, p0, Lcom/mycompany/app/view/MyWebBody;->B:Landroid/graphics/drawable/Drawable;

    .line 39
    .line 40
    if-eqz v0, :cond_3

    .line 41
    .line 42
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 43
    .line 44
    .line 45
    :cond_3
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 46
    .line 47
    .line 48
    iget v0, p0, Lcom/mycompany/app/view/MyWebBody;->q:I

    .line 49
    .line 50
    if-eqz v0, :cond_7

    .line 51
    .line 52
    iget-object v0, p0, Lcom/mycompany/app/view/MyWebBody;->r:Landroid/graphics/Paint;

    .line 53
    .line 54
    if-eqz v0, :cond_7

    .line 55
    .line 56
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 57
    .line 58
    .line 59
    move-result v0

    .line 60
    if-lez v0, :cond_4

    .line 61
    .line 62
    iget-object v0, p0, Lcom/mycompany/app/view/MyWebBody;->s:Landroid/graphics/Rect;

    .line 63
    .line 64
    if-eqz v0, :cond_4

    .line 65
    .line 66
    iget-object v1, p0, Lcom/mycompany/app/view/MyWebBody;->r:Landroid/graphics/Paint;

    .line 67
    .line 68
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 69
    .line 70
    .line 71
    :cond_4
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 72
    .line 73
    .line 74
    move-result v0

    .line 75
    if-lez v0, :cond_5

    .line 76
    .line 77
    iget-object v0, p0, Lcom/mycompany/app/view/MyWebBody;->t:Landroid/graphics/Rect;

    .line 78
    .line 79
    if-eqz v0, :cond_5

    .line 80
    .line 81
    iget-object v1, p0, Lcom/mycompany/app/view/MyWebBody;->r:Landroid/graphics/Paint;

    .line 82
    .line 83
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 84
    .line 85
    .line 86
    :cond_5
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    .line 87
    .line 88
    .line 89
    move-result v0

    .line 90
    if-lez v0, :cond_6

    .line 91
    .line 92
    iget-object v0, p0, Lcom/mycompany/app/view/MyWebBody;->u:Landroid/graphics/Rect;

    .line 93
    .line 94
    if-eqz v0, :cond_6

    .line 95
    .line 96
    iget-object v1, p0, Lcom/mycompany/app/view/MyWebBody;->r:Landroid/graphics/Paint;

    .line 97
    .line 98
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 99
    .line 100
    .line 101
    :cond_6
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    .line 102
    .line 103
    .line 104
    move-result v0

    .line 105
    if-lez v0, :cond_7

    .line 106
    .line 107
    iget-object v0, p0, Lcom/mycompany/app/view/MyWebBody;->v:Landroid/graphics/Rect;

    .line 108
    .line 109
    if-eqz v0, :cond_7

    .line 110
    .line 111
    iget-object v1, p0, Lcom/mycompany/app/view/MyWebBody;->r:Landroid/graphics/Paint;

    .line 112
    .line 113
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 114
    .line 115
    .line 116
    :cond_7
    iget v0, p0, Lcom/mycompany/app/view/MyWebBody;->p:I

    .line 117
    .line 118
    if-eqz v0, :cond_8

    .line 119
    .line 120
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 121
    .line 122
    .line 123
    :cond_8
    return-void
.end method

.method public final e(Landroid/app/Activity;)I
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_1

    .line 6
    .line 7
    invoke-static {p1}, Lcom/mycompany/app/main/MainUtil;->E0(Landroid/app/Activity;)Lcom/mycompany/app/main/MainUtil$SizeItem;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    if-nez p1, :cond_0

    .line 12
    .line 13
    const/4 p1, 0x0

    .line 14
    :goto_0
    move v0, p1

    .line 15
    goto :goto_1

    .line 16
    :cond_0
    iget p1, p1, Lcom/mycompany/app/main/MainUtil$SizeItem;->b:I

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_1
    :goto_1
    sget p1, Lcom/mycompany/app/pref/PrefTts;->J:I

    .line 20
    .line 21
    const/16 v1, 0x32

    .line 22
    .line 23
    if-ge p1, v1, :cond_2

    .line 24
    .line 25
    sput v1, Lcom/mycompany/app/pref/PrefTts;->J:I

    .line 26
    .line 27
    goto :goto_2

    .line 28
    :cond_2
    const/16 v1, 0x5a

    .line 29
    .line 30
    if-le p1, v1, :cond_3

    .line 31
    .line 32
    sput v1, Lcom/mycompany/app/pref/PrefTts;->J:I

    .line 33
    .line 34
    :cond_3
    :goto_2
    int-to-float p1, v0

    .line 35
    sget v0, Lcom/mycompany/app/pref/PrefTts;->J:I

    .line 36
    .line 37
    int-to-float v0, v0

    .line 38
    const/high16 v1, 0x42c80000    # 100.0f

    .line 39
    .line 40
    div-float/2addr v0, v1

    .line 41
    const/high16 v1, 0x3f800000    # 1.0f

    .line 42
    .line 43
    sub-float/2addr v1, v0

    .line 44
    mul-float/2addr v1, p1

    .line 45
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    .line 46
    .line 47
    .line 48
    move-result p1

    .line 49
    return p1
.end method

.method public final f(II)V
    .locals 6

    .line 1
    iget v0, p0, Lcom/mycompany/app/view/MyWebBody;->q:I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    if-eqz p1, :cond_3

    .line 7
    .line 8
    if-nez p2, :cond_1

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_1
    iget-object v0, p0, Lcom/mycompany/app/view/MyWebBody;->t:Landroid/graphics/Rect;

    .line 12
    .line 13
    if-nez v0, :cond_2

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    .line 29
    .line 30
    .line 31
    move-result v3

    .line 32
    iget-object v4, p0, Lcom/mycompany/app/view/MyWebBody;->t:Landroid/graphics/Rect;

    .line 33
    .line 34
    const/4 v5, 0x0

    .line 35
    invoke-virtual {v4, v5, v5, p1, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 36
    .line 37
    .line 38
    iget-object v4, p0, Lcom/mycompany/app/view/MyWebBody;->v:Landroid/graphics/Rect;

    .line 39
    .line 40
    sub-int v3, p2, v3

    .line 41
    .line 42
    invoke-virtual {v4, v5, v3, p1, p2}, Landroid/graphics/Rect;->set(IIII)V

    .line 43
    .line 44
    .line 45
    iget-object p2, p0, Lcom/mycompany/app/view/MyWebBody;->s:Landroid/graphics/Rect;

    .line 46
    .line 47
    invoke-virtual {p2, v5, v1, v0, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 48
    .line 49
    .line 50
    iget-object p2, p0, Lcom/mycompany/app/view/MyWebBody;->u:Landroid/graphics/Rect;

    .line 51
    .line 52
    sub-int v0, p1, v2

    .line 53
    .line 54
    invoke-virtual {p2, v0, v1, p1, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 55
    .line 56
    .line 57
    :cond_3
    :goto_0
    return-void
.end method

.method public final g(Lcom/mycompany/app/web/WebViewActivity;ZI)V
    .locals 0

    .line 1
    invoke-static {p3, p2}, Lcom/mycompany/app/main/MainUtil;->s0(IZ)I

    .line 2
    .line 3
    .line 4
    move-result p2

    .line 5
    if-nez p2, :cond_0

    .line 6
    .line 7
    sget p2, Lnet/kaki87/soul2/testing/R$drawable;->outline_keyboard_arrow_up_black_24:I

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    sget p2, Lnet/kaki87/soul2/testing/R$drawable;->outline_keyboard_arrow_up_dark_24:I

    .line 11
    .line 12
    :goto_0
    iget p3, p0, Lcom/mycompany/app/view/MyWebBody;->C:I

    .line 13
    .line 14
    if-ne p3, p2, :cond_1

    .line 15
    .line 16
    return-void

    .line 17
    :cond_1
    iput p2, p0, Lcom/mycompany/app/view/MyWebBody;->C:I

    .line 18
    .line 19
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 20
    .line 21
    .line 22
    move-result-object p2

    .line 23
    iget p3, p0, Lcom/mycompany/app/view/MyWebBody;->C:I

    .line 24
    .line 25
    invoke-static {p2, p3}, Lcom/mycompany/app/main/MainUtil;->S(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 26
    .line 27
    .line 28
    move-result-object p2

    .line 29
    iput-object p2, p0, Lcom/mycompany/app/view/MyWebBody;->B:Landroid/graphics/drawable/Drawable;

    .line 30
    .line 31
    const/16 p3, 0xb2

    .line 32
    .line 33
    invoke-virtual {p2, p3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 34
    .line 35
    .line 36
    invoke-direct {p0, p1}, Lcom/mycompany/app/view/MyWebBody;->setHandNotiPos(Landroid/app/Activity;)V

    .line 37
    .line 38
    .line 39
    return-void
.end method

.method public getBotColor()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/mycompany/app/view/MyWebBody;->j:I

    .line 2
    .line 3
    return v0
.end method

.method public getRectBottom()I
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    sub-int/2addr v0, v1

    .line 10
    return v0
.end method

.method public getRectEnd()I
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/mycompany/app/view/MyWebBody;->c:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0

    .line 10
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    sub-int/2addr v0, v1

    .line 19
    return v0
.end method

.method public getRectHeight()I
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    sub-int/2addr v0, v1

    .line 10
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    sub-int/2addr v0, v1

    .line 15
    return v0
.end method

.method public getRectStart()I
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/mycompany/app/view/MyWebBody;->c:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    sub-int/2addr v0, v1

    .line 14
    return v0

    .line 15
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    return v0
.end method

.method public getRectTop()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public getRectWidth()I
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    sub-int/2addr v0, v1

    .line 10
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    sub-int/2addr v0, v1

    .line 15
    return v0
.end method

.method public getTopColor()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/mycompany/app/view/MyWebBody;->f:I

    .line 2
    .line 3
    return v0
.end method

.method public final onSizeChanged(IIII)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/RelativeLayout;->onSizeChanged(IIII)V

    .line 2
    .line 3
    .line 4
    sget-boolean p3, Lcom/mycompany/app/main/MainConst;->d:Z

    .line 5
    .line 6
    if-nez p3, :cond_0

    .line 7
    .line 8
    goto :goto_1

    .line 9
    :cond_0
    iget p3, p0, Lcom/mycompany/app/view/MyWebBody;->h:I

    .line 10
    .line 11
    const/4 p4, 0x0

    .line 12
    if-nez p3, :cond_1

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_1
    if-eqz p1, :cond_4

    .line 16
    .line 17
    if-nez p2, :cond_2

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_2
    iget-object v0, p0, Lcom/mycompany/app/view/MyWebBody;->i:Landroid/graphics/Rect;

    .line 21
    .line 22
    if-nez v0, :cond_3

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_3
    invoke-virtual {v0, p4, p4, p1, p3}, Landroid/graphics/Rect;->set(IIII)V

    .line 26
    .line 27
    .line 28
    :cond_4
    :goto_0
    iget p3, p0, Lcom/mycompany/app/view/MyWebBody;->l:I

    .line 29
    .line 30
    if-nez p3, :cond_5

    .line 31
    .line 32
    goto :goto_1

    .line 33
    :cond_5
    if-eqz p1, :cond_8

    .line 34
    .line 35
    if-nez p2, :cond_6

    .line 36
    .line 37
    goto :goto_1

    .line 38
    :cond_6
    iget-object v0, p0, Lcom/mycompany/app/view/MyWebBody;->m:Landroid/graphics/Rect;

    .line 39
    .line 40
    if-nez v0, :cond_7

    .line 41
    .line 42
    goto :goto_1

    .line 43
    :cond_7
    sub-int p3, p2, p3

    .line 44
    .line 45
    invoke-virtual {v0, p4, p3, p1, p2}, Landroid/graphics/Rect;->set(IIII)V

    .line 46
    .line 47
    .line 48
    :cond_8
    :goto_1
    invoke-virtual {p0, p1, p2}, Lcom/mycompany/app/view/MyWebBody;->f(II)V

    .line 49
    .line 50
    .line 51
    iget-object p3, p0, Lcom/mycompany/app/view/MyWebBody;->x:Lcom/mycompany/app/view/MyWebBody$HandListener;

    .line 52
    .line 53
    if-eqz p3, :cond_9

    .line 54
    .line 55
    const/4 p3, 0x0

    .line 56
    invoke-direct {p0, p3}, Lcom/mycompany/app/view/MyWebBody;->setHandNotiPos(Landroid/app/Activity;)V

    .line 57
    .line 58
    .line 59
    :cond_9
    iget-object p3, p0, Lcom/mycompany/app/view/MyWebBody;->w:Lcom/mycompany/app/image/ImageSizeListener;

    .line 60
    .line 61
    if-eqz p3, :cond_a

    .line 62
    .line 63
    invoke-interface {p3, p0, p1, p2}, Lcom/mycompany/app/image/ImageSizeListener;->a(Landroid/view/View;II)V

    .line 64
    .line 65
    .line 66
    :cond_a
    return-void
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/view/MyWebBody;->x:Lcom/mycompany/app/view/MyWebBody$HandListener;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    return p1

    .line 10
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    const/4 v2, 0x1

    .line 23
    if-eqz p1, :cond_9

    .line 24
    .line 25
    const/4 v3, 0x0

    .line 26
    if-eq p1, v2, :cond_7

    .line 27
    .line 28
    const/4 v4, 0x2

    .line 29
    if-eq p1, v4, :cond_1

    .line 30
    .line 31
    const/4 v0, 0x3

    .line 32
    if-eq p1, v0, :cond_8

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_1
    iget p1, p0, Lcom/mycompany/app/view/MyWebBody;->z:F

    .line 36
    .line 37
    sub-float p1, v0, p1

    .line 38
    .line 39
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    .line 40
    .line 41
    .line 42
    move-result p1

    .line 43
    iget v4, p0, Lcom/mycompany/app/view/MyWebBody;->A:F

    .line 44
    .line 45
    sub-float v4, v1, v4

    .line 46
    .line 47
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    .line 48
    .line 49
    .line 50
    move-result v4

    .line 51
    sget v5, Lcom/mycompany/app/main/MainApp;->f1:I

    .line 52
    .line 53
    int-to-float v5, v5

    .line 54
    cmpl-float v6, p1, v5

    .line 55
    .line 56
    if-gtz v6, :cond_3

    .line 57
    .line 58
    cmpl-float v7, v4, v5

    .line 59
    .line 60
    if-lez v7, :cond_2

    .line 61
    .line 62
    goto :goto_1

    .line 63
    :cond_2
    :goto_0
    return v2

    .line 64
    :cond_3
    :goto_1
    cmpg-float p1, p1, v5

    .line 65
    .line 66
    if-gez p1, :cond_5

    .line 67
    .line 68
    cmpl-float p1, v4, v5

    .line 69
    .line 70
    if-lez p1, :cond_5

    .line 71
    .line 72
    iget p1, p0, Lcom/mycompany/app/view/MyWebBody;->A:F

    .line 73
    .line 74
    cmpg-float p1, v1, p1

    .line 75
    .line 76
    if-gez p1, :cond_4

    .line 77
    .line 78
    move v3, v2

    .line 79
    :cond_4
    iput-boolean v3, p0, Lcom/mycompany/app/view/MyWebBody;->y:Z

    .line 80
    .line 81
    goto :goto_2

    .line 82
    :cond_5
    if-lez v6, :cond_6

    .line 83
    .line 84
    cmpg-float p1, v4, v5

    .line 85
    .line 86
    if-gez p1, :cond_6

    .line 87
    .line 88
    iput-boolean v3, p0, Lcom/mycompany/app/view/MyWebBody;->y:Z

    .line 89
    .line 90
    :cond_6
    :goto_2
    iput v0, p0, Lcom/mycompany/app/view/MyWebBody;->z:F

    .line 91
    .line 92
    iput v1, p0, Lcom/mycompany/app/view/MyWebBody;->A:F

    .line 93
    .line 94
    return v2

    .line 95
    :cond_7
    iget-boolean p1, p0, Lcom/mycompany/app/view/MyWebBody;->y:Z

    .line 96
    .line 97
    if-eqz p1, :cond_8

    .line 98
    .line 99
    iget-object p1, p0, Lcom/mycompany/app/view/MyWebBody;->x:Lcom/mycompany/app/view/MyWebBody$HandListener;

    .line 100
    .line 101
    if-eqz p1, :cond_8

    .line 102
    .line 103
    new-instance p1, Lcom/mycompany/app/view/MyWebBody$2;

    .line 104
    .line 105
    invoke-direct {p1, p0}, Lcom/mycompany/app/view/MyWebBody$2;-><init>(Lcom/mycompany/app/view/MyWebBody;)V

    .line 106
    .line 107
    .line 108
    invoke-virtual {p0, p1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 109
    .line 110
    .line 111
    :cond_8
    iput-boolean v3, p0, Lcom/mycompany/app/view/MyWebBody;->y:Z

    .line 112
    .line 113
    return v2

    .line 114
    :cond_9
    iput-boolean v2, p0, Lcom/mycompany/app/view/MyWebBody;->y:Z

    .line 115
    .line 116
    iput v0, p0, Lcom/mycompany/app/view/MyWebBody;->z:F

    .line 117
    .line 118
    iput v1, p0, Lcom/mycompany/app/view/MyWebBody;->A:F

    .line 119
    .line 120
    return v2
.end method

.method public setBotColor(I)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/view/MyWebBody;->k:Landroid/graphics/Paint;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_2

    .line 6
    :cond_0
    sget v0, Lcom/mycompany/app/pref/PrefMain;->w:I

    .line 7
    .line 8
    iget v1, p0, Lcom/mycompany/app/view/MyWebBody;->l:I

    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    const/4 v3, 0x1

    .line 12
    if-eq v1, v0, :cond_6

    .line 13
    .line 14
    iput v0, p0, Lcom/mycompany/app/view/MyWebBody;->l:I

    .line 15
    .line 16
    if-nez v0, :cond_1

    .line 17
    .line 18
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    iget v4, p0, Lcom/mycompany/app/view/MyWebBody;->l:I

    .line 31
    .line 32
    if-nez v4, :cond_2

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_2
    if-eqz v0, :cond_5

    .line 36
    .line 37
    if-nez v1, :cond_3

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_3
    iget-object v5, p0, Lcom/mycompany/app/view/MyWebBody;->m:Landroid/graphics/Rect;

    .line 41
    .line 42
    if-nez v5, :cond_4

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_4
    sub-int v4, v1, v4

    .line 46
    .line 47
    invoke-virtual {v5, v2, v4, v0, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 48
    .line 49
    .line 50
    :cond_5
    :goto_0
    move v2, v3

    .line 51
    :cond_6
    iget v0, p0, Lcom/mycompany/app/view/MyWebBody;->j:I

    .line 52
    .line 53
    if-eq v0, p1, :cond_7

    .line 54
    .line 55
    iput p1, p0, Lcom/mycompany/app/view/MyWebBody;->j:I

    .line 56
    .line 57
    iget-object v0, p0, Lcom/mycompany/app/view/MyWebBody;->k:Landroid/graphics/Paint;

    .line 58
    .line 59
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 60
    .line 61
    .line 62
    goto :goto_1

    .line 63
    :cond_7
    move v3, v2

    .line 64
    :goto_1
    if-eqz v3, :cond_8

    .line 65
    .line 66
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 67
    .line 68
    .line 69
    :cond_8
    :goto_2
    return-void
.end method

.method public setEditColor(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/view/MyWebBody;->r:Landroid/graphics/Paint;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget v1, p0, Lcom/mycompany/app/view/MyWebBody;->q:I

    .line 7
    .line 8
    if-eq v1, p1, :cond_1

    .line 9
    .line 10
    iput p1, p0, Lcom/mycompany/app/view/MyWebBody;->q:I

    .line 11
    .line 12
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 13
    .line 14
    .line 15
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    invoke-virtual {p0, p1, v0}, Lcom/mycompany/app/view/MyWebBody;->f(II)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method public setFilterColor(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/mycompany/app/view/MyWebBody;->p:I

    .line 2
    .line 3
    if-ne v0, p1, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iput p1, p0, Lcom/mycompany/app/view/MyWebBody;->p:I

    .line 7
    .line 8
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public setHandListener(Lcom/mycompany/app/view/MyWebBody$HandListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mycompany/app/view/MyWebBody;->x:Lcom/mycompany/app/view/MyWebBody$HandListener;

    .line 2
    .line 3
    return-void
.end method

.method public setOldTheme(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/mycompany/app/view/MyWebBody;->o:I

    .line 2
    .line 3
    if-ne v0, p1, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iput p1, p0, Lcom/mycompany/app/view/MyWebBody;->o:I

    .line 7
    .line 8
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final setPadding(IIII)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    .line 2
    .line 3
    .line 4
    iget p1, p0, Lcom/mycompany/app/view/MyWebBody;->q:I

    .line 5
    .line 6
    if-nez p1, :cond_0

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 14
    .line 15
    .line 16
    move-result p2

    .line 17
    invoke-virtual {p0, p1, p2}, Lcom/mycompany/app/view/MyWebBody;->f(II)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public final setPaddingRelative(IIII)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/RelativeLayout;->setPaddingRelative(IIII)V

    .line 2
    .line 3
    .line 4
    iget p1, p0, Lcom/mycompany/app/view/MyWebBody;->q:I

    .line 5
    .line 6
    if-nez p1, :cond_0

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 14
    .line 15
    .line 16
    move-result p2

    .line 17
    invoke-virtual {p0, p1, p2}, Lcom/mycompany/app/view/MyWebBody;->f(II)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public setSizeListener(Lcom/mycompany/app/image/ImageSizeListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mycompany/app/view/MyWebBody;->w:Lcom/mycompany/app/image/ImageSizeListener;

    .line 2
    .line 3
    return-void
.end method

.method public setTopColor(I)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/view/MyWebBody;->g:Landroid/graphics/Paint;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_2

    .line 6
    :cond_0
    sget v0, Lcom/mycompany/app/pref/PrefMain;->u:I

    .line 7
    .line 8
    sget-boolean v1, Lcom/mycompany/app/pref/PrefTts;->H:Z

    .line 9
    .line 10
    if-eqz v1, :cond_1

    .line 11
    .line 12
    iget v1, p0, Lcom/mycompany/app/view/MyWebBody;->n:I

    .line 13
    .line 14
    add-int/2addr v0, v1

    .line 15
    :cond_1
    iget v1, p0, Lcom/mycompany/app/view/MyWebBody;->h:I

    .line 16
    .line 17
    const/4 v2, 0x0

    .line 18
    const/4 v3, 0x1

    .line 19
    if-eq v1, v0, :cond_7

    .line 20
    .line 21
    iput v0, p0, Lcom/mycompany/app/view/MyWebBody;->h:I

    .line 22
    .line 23
    if-nez v0, :cond_2

    .line 24
    .line 25
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 26
    .line 27
    .line 28
    return-void

    .line 29
    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    iget v4, p0, Lcom/mycompany/app/view/MyWebBody;->h:I

    .line 38
    .line 39
    if-nez v4, :cond_3

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_3
    if-eqz v0, :cond_6

    .line 43
    .line 44
    if-nez v1, :cond_4

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_4
    iget-object v1, p0, Lcom/mycompany/app/view/MyWebBody;->i:Landroid/graphics/Rect;

    .line 48
    .line 49
    if-nez v1, :cond_5

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_5
    invoke-virtual {v1, v2, v2, v0, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 53
    .line 54
    .line 55
    :cond_6
    :goto_0
    move v2, v3

    .line 56
    :cond_7
    iget v0, p0, Lcom/mycompany/app/view/MyWebBody;->f:I

    .line 57
    .line 58
    if-eq v0, p1, :cond_8

    .line 59
    .line 60
    iput p1, p0, Lcom/mycompany/app/view/MyWebBody;->f:I

    .line 61
    .line 62
    iget-object v0, p0, Lcom/mycompany/app/view/MyWebBody;->g:Landroid/graphics/Paint;

    .line 63
    .line 64
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 65
    .line 66
    .line 67
    goto :goto_1

    .line 68
    :cond_8
    move v3, v2

    .line 69
    :goto_1
    if-eqz v3, :cond_9

    .line 70
    .line 71
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 72
    .line 73
    .line 74
    :cond_9
    :goto_2
    return-void
.end method
