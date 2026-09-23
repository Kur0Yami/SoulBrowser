.class public Lcom/mycompany/app/view/MyMainRelative;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"


# instance fields
.field public c:Lcom/mycompany/app/image/ImageSizeListener;

.field public f:Landroid/view/View;

.field public g:Landroidx/core/view/WindowInsetsControllerCompat;

.field public h:I

.field public i:I

.field public j:I

.field public k:Z

.field public l:Landroid/view/Window;

.field public m:Z

.field public n:Landroid/view/Window;

.field public o:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    sget-boolean p1, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    const/high16 p1, -0x1000000

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const p1, -0x70708

    .line 12
    .line 13
    .line 14
    :goto_0
    iput p1, p0, Lcom/mycompany/app/view/MyMainRelative;->h:I

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .line 1
    new-instance v0, Lcom/mycompany/app/view/MyMainRelative$3;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/mycompany/app/view/MyMainRelative$3;-><init>(Lcom/mycompany/app/view/MyMainRelative;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, v0}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 7
    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    invoke-virtual {p0, v0}, Landroid/view/View;->setClipToOutline(Z)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public final b(Landroid/view/Window;I)V
    .locals 5

    .line 1
    sget-boolean v0, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 2
    .line 3
    iget v1, p0, Lcom/mycompany/app/view/MyMainRelative;->h:I

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    if-eq v1, p2, :cond_0

    .line 7
    .line 8
    iput p2, p0, Lcom/mycompany/app/view/MyMainRelative;->h:I

    .line 9
    .line 10
    move v1, v2

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v1, 0x0

    .line 13
    :goto_0
    iget-boolean v3, p0, Lcom/mycompany/app/view/MyMainRelative;->k:Z

    .line 14
    .line 15
    if-eqz v3, :cond_1

    .line 16
    .line 17
    iget v3, p0, Lcom/mycompany/app/view/MyMainRelative;->j:I

    .line 18
    .line 19
    goto :goto_1

    .line 20
    :cond_1
    invoke-static {}, Lcom/mycompany/app/main/MainUtil;->l1()I

    .line 21
    .line 22
    .line 23
    move-result v3

    .line 24
    :goto_1
    if-eqz v3, :cond_2

    .line 25
    .line 26
    invoke-static {p2, v3}, Lcom/mycompany/app/main/MainUtil;->q1(II)I

    .line 27
    .line 28
    .line 29
    move-result p2

    .line 30
    :cond_2
    iget v4, p0, Lcom/mycompany/app/view/MyMainRelative;->i:I

    .line 31
    .line 32
    if-eq v4, v3, :cond_3

    .line 33
    .line 34
    iput v3, p0, Lcom/mycompany/app/view/MyMainRelative;->i:I

    .line 35
    .line 36
    goto :goto_2

    .line 37
    :cond_3
    move v2, v1

    .line 38
    :goto_2
    if-eqz v2, :cond_4

    .line 39
    .line 40
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 41
    .line 42
    .line 43
    :cond_4
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 44
    .line 45
    if-nez p1, :cond_5

    .line 46
    .line 47
    return-void

    .line 48
    :cond_5
    sget-boolean v2, Lcom/mycompany/app/main/MainConst;->e:Z

    .line 49
    .line 50
    if-nez v2, :cond_8

    .line 51
    .line 52
    invoke-static {p1}, Lcom/mycompany/app/main/MainUtil;->x3(Landroid/view/Window;)I

    .line 53
    .line 54
    .line 55
    move-result v2

    .line 56
    if-eq v2, p2, :cond_6

    .line 57
    .line 58
    invoke-static {p1, p2}, Lcom/mycompany/app/main/MainUtil;->D7(Landroid/view/Window;I)V

    .line 59
    .line 60
    .line 61
    :cond_6
    const/16 v2, 0x1a

    .line 62
    .line 63
    if-lt v1, v2, :cond_7

    .line 64
    .line 65
    invoke-static {p1}, Lcom/mycompany/app/main/MainUtil;->O2(Landroid/view/Window;)I

    .line 66
    .line 67
    .line 68
    move-result v1

    .line 69
    if-eq v1, p2, :cond_8

    .line 70
    .line 71
    invoke-static {p1, p2}, Lcom/mycompany/app/main/MainUtil;->t7(Landroid/view/Window;I)V

    .line 72
    .line 73
    .line 74
    goto :goto_3

    .line 75
    :cond_7
    invoke-static {p1}, Lcom/mycompany/app/main/MainUtil;->O2(Landroid/view/Window;)I

    .line 76
    .line 77
    .line 78
    move-result p2

    .line 79
    const/high16 v1, -0x1000000

    .line 80
    .line 81
    if-eq p2, v1, :cond_8

    .line 82
    .line 83
    invoke-static {p1, v1}, Lcom/mycompany/app/main/MainUtil;->t7(Landroid/view/Window;I)V

    .line 84
    .line 85
    .line 86
    :cond_8
    :goto_3
    iput-object p1, p0, Lcom/mycompany/app/view/MyMainRelative;->n:Landroid/view/Window;

    .line 87
    .line 88
    iput-boolean v0, p0, Lcom/mycompany/app/view/MyMainRelative;->o:Z

    .line 89
    .line 90
    new-instance p1, Lcom/mycompany/app/view/MyMainRelative$2;

    .line 91
    .line 92
    invoke-direct {p1, p0}, Lcom/mycompany/app/view/MyMainRelative$2;-><init>(Lcom/mycompany/app/view/MyMainRelative;)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {p0, p1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 96
    .line 97
    .line 98
    return-void
.end method

.method public final dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/mycompany/app/view/MyMainRelative;->h:I

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 6
    .line 7
    .line 8
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 9
    .line 10
    .line 11
    iget-boolean v0, p0, Lcom/mycompany/app/view/MyMainRelative;->k:Z

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    iget v0, p0, Lcom/mycompany/app/view/MyMainRelative;->j:I

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_1
    invoke-static {}, Lcom/mycompany/app/main/MainUtil;->l1()I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    :goto_0
    if-eqz v0, :cond_2

    .line 23
    .line 24
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 25
    .line 26
    .line 27
    :cond_2
    return-void
.end method

.method public final onSizeChanged(IIII)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/RelativeLayout;->onSizeChanged(IIII)V

    .line 2
    .line 3
    .line 4
    iget-object p3, p0, Lcom/mycompany/app/view/MyMainRelative;->c:Lcom/mycompany/app/image/ImageSizeListener;

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

.method public setListener(Lcom/mycompany/app/image/ImageSizeListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mycompany/app/view/MyMainRelative;->c:Lcom/mycompany/app/image/ImageSizeListener;

    .line 2
    .line 3
    return-void
.end method

.method public setWindow(Landroid/view/Window;)V
    .locals 3

    .line 1
    iget v0, p0, Lcom/mycompany/app/view/MyMainRelative;->h:I

    .line 2
    .line 3
    invoke-static {}, Lcom/mycompany/app/main/MainUtil;->l1()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    invoke-static {v0, v1}, Lcom/mycompany/app/main/MainUtil;->q1(II)I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    :cond_0
    iput v1, p0, Lcom/mycompany/app/view/MyMainRelative;->i:I

    .line 14
    .line 15
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 16
    .line 17
    if-nez p1, :cond_1

    .line 18
    .line 19
    return-void

    .line 20
    :cond_1
    sget-boolean v2, Lcom/mycompany/app/main/MainConst;->e:Z

    .line 21
    .line 22
    if-nez v2, :cond_4

    .line 23
    .line 24
    invoke-static {p1}, Lcom/mycompany/app/main/MainUtil;->x3(Landroid/view/Window;)I

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    if-eq v2, v0, :cond_2

    .line 29
    .line 30
    invoke-static {p1, v0}, Lcom/mycompany/app/main/MainUtil;->D7(Landroid/view/Window;I)V

    .line 31
    .line 32
    .line 33
    :cond_2
    const/16 v2, 0x1a

    .line 34
    .line 35
    if-lt v1, v2, :cond_3

    .line 36
    .line 37
    invoke-static {p1}, Lcom/mycompany/app/main/MainUtil;->O2(Landroid/view/Window;)I

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    if-eq v1, v0, :cond_4

    .line 42
    .line 43
    invoke-static {p1, v0}, Lcom/mycompany/app/main/MainUtil;->t7(Landroid/view/Window;I)V

    .line 44
    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_3
    invoke-static {p1}, Lcom/mycompany/app/main/MainUtil;->O2(Landroid/view/Window;)I

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    const/high16 v1, -0x1000000

    .line 52
    .line 53
    if-eq v0, v1, :cond_4

    .line 54
    .line 55
    invoke-static {p1, v1}, Lcom/mycompany/app/main/MainUtil;->t7(Landroid/view/Window;I)V

    .line 56
    .line 57
    .line 58
    :cond_4
    :goto_0
    iput-object p1, p0, Lcom/mycompany/app/view/MyMainRelative;->l:Landroid/view/Window;

    .line 59
    .line 60
    sget-boolean p1, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 61
    .line 62
    iput-boolean p1, p0, Lcom/mycompany/app/view/MyMainRelative;->m:Z

    .line 63
    .line 64
    new-instance p1, Lcom/mycompany/app/view/MyMainRelative$1;

    .line 65
    .line 66
    invoke-direct {p1, p0}, Lcom/mycompany/app/view/MyMainRelative$1;-><init>(Lcom/mycompany/app/view/MyMainRelative;)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {p0, p1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 70
    .line 71
    .line 72
    return-void
.end method
