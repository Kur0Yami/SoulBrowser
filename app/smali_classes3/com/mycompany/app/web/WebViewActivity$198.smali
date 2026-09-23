.class Lcom/mycompany/app/web/WebViewActivity$198;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/web/WebNestView$WebQuickListener;


# instance fields
.field public final synthetic a:Lcom/mycompany/app/web/WebViewActivity;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/web/WebViewActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/web/WebViewActivity$198;->a:Lcom/mycompany/app/web/WebViewActivity;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 1

    .line 1
    sget v0, Lcom/mycompany/app/web/WebViewActivity;->Fo:I

    .line 2
    .line 3
    iget-object v0, p0, Lcom/mycompany/app/web/WebViewActivity$198;->a:Lcom/mycompany/app/web/WebViewActivity;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/mycompany/app/web/WebViewActivity;->x5()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public final b()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebViewActivity$198;->a:Lcom/mycompany/app/web/WebViewActivity;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/mycompany/app/main/MainActivity;->h0()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final c(Lcom/mycompany/app/quick/QuickAdapter$QuickItem;Z)V
    .locals 7

    .line 1
    sget v0, Lcom/mycompany/app/web/WebViewActivity;->Fo:I

    .line 2
    .line 3
    iget-object v1, p0, Lcom/mycompany/app/web/WebViewActivity$198;->a:Lcom/mycompany/app/web/WebViewActivity;

    .line 4
    .line 5
    invoke-virtual {v1}, Lcom/mycompany/app/web/WebViewActivity;->G5()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    iget-object v0, p1, Lcom/mycompany/app/quick/QuickAdapter$QuickItem;->d:Ljava/lang/String;

    .line 13
    .line 14
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    if-eqz v2, :cond_1

    .line 19
    .line 20
    iget-object v0, p1, Lcom/mycompany/app/quick/QuickAdapter$QuickItem;->e:Ljava/lang/String;

    .line 21
    .line 22
    :cond_1
    move-object v2, v0

    .line 23
    xor-int/lit8 p2, p2, 0x1

    .line 24
    .line 25
    iput-boolean p2, v1, Lcom/mycompany/app/web/WebViewActivity;->Hj:Z

    .line 26
    .line 27
    iget-object v3, p1, Lcom/mycompany/app/quick/QuickAdapter$QuickItem;->p:Ljava/lang/String;

    .line 28
    .line 29
    iget-object v5, p1, Lcom/mycompany/app/quick/QuickAdapter$QuickItem;->f:Ljava/lang/String;

    .line 30
    .line 31
    const/4 v6, 0x0

    .line 32
    const/4 v4, 0x0

    .line 33
    invoke-static/range {v1 .. v6}, Lcom/mycompany/app/web/WebViewActivity;->z1(Lcom/mycompany/app/web/WebViewActivity;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Z)V

    .line 34
    .line 35
    .line 36
    iget-object p2, v1, Lcom/mycompany/app/web/WebViewActivity;->m6:Lcom/mycompany/app/dialog/DialogUrlLink;

    .line 37
    .line 38
    if-eqz p2, :cond_2

    .line 39
    .line 40
    iget-object p1, p1, Lcom/mycompany/app/quick/QuickAdapter$QuickItem;->q:Ljava/lang/String;

    .line 41
    .line 42
    iput-object p1, p2, Lcom/mycompany/app/dialog/DialogUrlLink;->h0:Ljava/lang/String;

    .line 43
    .line 44
    :cond_2
    const/4 p1, 0x0

    .line 45
    iput-boolean p1, v1, Lcom/mycompany/app/web/WebViewActivity;->Hj:Z

    .line 46
    .line 47
    return-void
.end method

.method public final d()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebViewActivity$198;->a:Lcom/mycompany/app/web/WebViewActivity;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/web/WebViewActivity;->dm:Lcom/mycompany/app/main/MainTransNews;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    return v0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    return v0
.end method

.method public final e(Lcom/mycompany/app/quick/QuickAdapter$QuickItem;)V
    .locals 4

    .line 1
    sget v0, Lcom/mycompany/app/web/WebViewActivity;->Fo:I

    .line 2
    .line 3
    iget-object v0, p0, Lcom/mycompany/app/web/WebViewActivity$198;->a:Lcom/mycompany/app/web/WebViewActivity;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/mycompany/app/web/WebViewActivity;->G5()Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    sget v1, Lcom/mycompany/app/pref/PrefZtwo;->M:I

    .line 13
    .line 14
    if-nez v1, :cond_1

    .line 15
    .line 16
    const/4 v1, 0x0

    .line 17
    const/4 v2, 0x0

    .line 18
    invoke-virtual {v0, v1, p1, v2}, Lcom/mycompany/app/web/WebViewActivity;->E9(Ljava/lang/String;Lcom/mycompany/app/quick/QuickAdapter$QuickItem;Z)V

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    :cond_1
    const/4 v2, 0x1

    .line 23
    if-ne v1, v2, :cond_2

    .line 24
    .line 25
    goto :goto_1

    .line 26
    :cond_2
    const/4 v2, 0x2

    .line 27
    if-ne v1, v2, :cond_3

    .line 28
    .line 29
    goto :goto_1

    .line 30
    :cond_3
    const/4 v3, 0x3

    .line 31
    if-ne v1, v3, :cond_4

    .line 32
    .line 33
    :goto_0
    move v2, v3

    .line 34
    goto :goto_1

    .line 35
    :cond_4
    const/4 v3, 0x4

    .line 36
    if-ne v1, v3, :cond_5

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_5
    const/4 v3, 0x5

    .line 40
    if-ne v1, v3, :cond_6

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_6
    sget-boolean v1, Lcom/mycompany/app/pref/PrefSync;->k:Z

    .line 44
    .line 45
    if-eqz v1, :cond_7

    .line 46
    .line 47
    goto :goto_1

    .line 48
    :cond_7
    const/4 v2, 0x6

    .line 49
    :goto_1
    iget-object v1, p1, Lcom/mycompany/app/quick/QuickAdapter$QuickItem;->d:Ljava/lang/String;

    .line 50
    .line 51
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 52
    .line 53
    .line 54
    move-result v3

    .line 55
    if-eqz v3, :cond_8

    .line 56
    .line 57
    iget-object v1, p1, Lcom/mycompany/app/quick/QuickAdapter$QuickItem;->e:Ljava/lang/String;

    .line 58
    .line 59
    :cond_8
    iget-object p1, p1, Lcom/mycompany/app/quick/QuickAdapter$QuickItem;->f:Ljava/lang/String;

    .line 60
    .line 61
    invoke-virtual {v0, v2, v1, p1}, Lcom/mycompany/app/web/WebViewActivity;->g6(ILjava/lang/String;Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    return-void
.end method

.method public final f()Lcom/mycompany/app/view/MyWebBody;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebViewActivity$198;->a:Lcom/mycompany/app/web/WebViewActivity;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/web/WebViewActivity;->e2:Lcom/mycompany/app/view/MyWebBody;

    .line 4
    .line 5
    return-object v0
.end method

.method public final h()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebViewActivity$198;->a:Lcom/mycompany/app/web/WebViewActivity;

    .line 2
    .line 3
    iget v0, v0, Lcom/mycompany/app/web/WebViewActivity;->cm:I

    .line 4
    .line 5
    return v0
.end method

.method public final i(Z)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebViewActivity$198;->a:Lcom/mycompany/app/web/WebViewActivity;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->f2:Lcom/mycompany/app/view/MyWebCoord;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v1, 0x1

    .line 10
    if-nez p1, :cond_1

    .line 11
    .line 12
    invoke-virtual {v0, v1, v2}, Lcom/mycompany/app/web/WebViewActivity;->d8(IZ)V

    .line 13
    .line 14
    .line 15
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->I2:Lcom/mycompany/app/web/WebNestView;

    .line 16
    .line 17
    const/4 v3, 0x0

    .line 18
    invoke-virtual {v1, v3}, Lcom/mycompany/app/web/WebNestView;->setQuickControl(Lcom/mycompany/app/quick/QuickControl;)V

    .line 19
    .line 20
    .line 21
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->B3:Lcom/mycompany/app/quick/QuickControl;

    .line 22
    .line 23
    if-eqz v1, :cond_5

    .line 24
    .line 25
    invoke-virtual {v1}, Lcom/mycompany/app/quick/QuickControl;->b()V

    .line 26
    .line 27
    .line 28
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->f2:Lcom/mycompany/app/view/MyWebCoord;

    .line 29
    .line 30
    iget-object v4, v0, Lcom/mycompany/app/web/WebViewActivity;->B3:Lcom/mycompany/app/quick/QuickControl;

    .line 31
    .line 32
    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 33
    .line 34
    .line 35
    iput-object v3, v0, Lcom/mycompany/app/web/WebViewActivity;->B3:Lcom/mycompany/app/quick/QuickControl;

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_1
    iget-object v3, v0, Lcom/mycompany/app/web/WebViewActivity;->B3:Lcom/mycompany/app/quick/QuickControl;

    .line 39
    .line 40
    if-eqz v3, :cond_2

    .line 41
    .line 42
    invoke-virtual {v0, v1, v1}, Lcom/mycompany/app/web/WebViewActivity;->d8(IZ)V

    .line 43
    .line 44
    .line 45
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->B3:Lcom/mycompany/app/quick/QuickControl;

    .line 46
    .line 47
    iget-boolean v3, v0, Lcom/mycompany/app/web/WebViewActivity;->U1:Z

    .line 48
    .line 49
    invoke-virtual {v1, v3}, Lcom/mycompany/app/quick/QuickControl;->setQuickMode(Z)V

    .line 50
    .line 51
    .line 52
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->I2:Lcom/mycompany/app/web/WebNestView;

    .line 53
    .line 54
    iget-object v3, v0, Lcom/mycompany/app/web/WebViewActivity;->B3:Lcom/mycompany/app/quick/QuickControl;

    .line 55
    .line 56
    invoke-virtual {v1, v3}, Lcom/mycompany/app/web/WebNestView;->setQuickControl(Lcom/mycompany/app/quick/QuickControl;)V

    .line 57
    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_2
    iget-boolean v3, v0, Lcom/mycompany/app/web/WebViewActivity;->em:Z

    .line 61
    .line 62
    if-eqz v3, :cond_3

    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_3
    iput-boolean v1, v0, Lcom/mycompany/app/web/WebViewActivity;->em:Z

    .line 66
    .line 67
    iget-object v1, v0, Lcom/mycompany/app/main/MainActivity;->O0:Landroid/os/Handler;

    .line 68
    .line 69
    if-nez v1, :cond_4

    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_4
    new-instance v3, Lcom/mycompany/app/web/WebViewActivity$467;

    .line 73
    .line 74
    invoke-direct {v3, v0}, Lcom/mycompany/app/web/WebViewActivity$467;-><init>(Lcom/mycompany/app/web/WebViewActivity;)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {v1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 78
    .line 79
    .line 80
    :cond_5
    :goto_0
    if-eqz p1, :cond_6

    .line 81
    .line 82
    invoke-virtual {v0, v2}, Lcom/mycompany/app/web/WebViewActivity;->L9(Z)V

    .line 83
    .line 84
    .line 85
    :cond_6
    return-void
.end method

.method public final j()V
    .locals 1

    .line 1
    sget v0, Lcom/mycompany/app/web/WebViewActivity;->Fo:I

    .line 2
    .line 3
    iget-object v0, p0, Lcom/mycompany/app/web/WebViewActivity$198;->a:Lcom/mycompany/app/web/WebViewActivity;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/mycompany/app/web/WebViewActivity;->p4()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final k()V
    .locals 2

    .line 1
    sget v0, Lcom/mycompany/app/web/WebViewActivity;->Fo:I

    .line 2
    .line 3
    iget-object v0, p0, Lcom/mycompany/app/web/WebViewActivity$198;->a:Lcom/mycompany/app/web/WebViewActivity;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/mycompany/app/web/WebViewActivity;->G5()Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iget-boolean v1, v0, Lcom/mycompany/app/web/WebViewActivity;->pb:Z

    .line 13
    .line 14
    if-eqz v1, :cond_1

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_1
    const/4 v1, 0x1

    .line 18
    iput-boolean v1, v0, Lcom/mycompany/app/web/WebViewActivity;->pb:Z

    .line 19
    .line 20
    iget-object v0, v0, Lcom/mycompany/app/web/WebViewActivity;->f2:Lcom/mycompany/app/view/MyWebCoord;

    .line 21
    .line 22
    if-nez v0, :cond_2

    .line 23
    .line 24
    :goto_0
    return-void

    .line 25
    :cond_2
    new-instance v1, Lcom/mycompany/app/web/WebViewActivity$198$2;

    .line 26
    .line 27
    invoke-direct {v1, p0}, Lcom/mycompany/app/web/WebViewActivity$198$2;-><init>(Lcom/mycompany/app/web/WebViewActivity$198;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 31
    .line 32
    .line 33
    return-void
.end method

.method public final l()V
    .locals 2

    .line 1
    sget v0, Lcom/mycompany/app/web/WebViewActivity;->Fo:I

    .line 2
    .line 3
    iget-object v0, p0, Lcom/mycompany/app/web/WebViewActivity$198;->a:Lcom/mycompany/app/web/WebViewActivity;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/mycompany/app/web/WebViewActivity;->G5()Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iget-boolean v1, v0, Lcom/mycompany/app/web/WebViewActivity;->pb:Z

    .line 13
    .line 14
    if-eqz v1, :cond_1

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_1
    const/4 v1, 0x1

    .line 18
    iput-boolean v1, v0, Lcom/mycompany/app/web/WebViewActivity;->pb:Z

    .line 19
    .line 20
    iget-object v0, v0, Lcom/mycompany/app/web/WebViewActivity;->f2:Lcom/mycompany/app/view/MyWebCoord;

    .line 21
    .line 22
    if-nez v0, :cond_2

    .line 23
    .line 24
    :goto_0
    return-void

    .line 25
    :cond_2
    new-instance v1, Lcom/mycompany/app/web/WebViewActivity$198$1;

    .line 26
    .line 27
    invoke-direct {v1, p0}, Lcom/mycompany/app/web/WebViewActivity$198$1;-><init>(Lcom/mycompany/app/web/WebViewActivity$198;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 31
    .line 32
    .line 33
    return-void
.end method

.method public final m(Lcom/mycompany/app/quick/QuickAdapter$QuickItem;)V
    .locals 2

    .line 1
    sget v0, Lcom/mycompany/app/web/WebViewActivity;->Fo:I

    .line 2
    .line 3
    iget-object v0, p0, Lcom/mycompany/app/web/WebViewActivity$198;->a:Lcom/mycompany/app/web/WebViewActivity;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/mycompany/app/web/WebViewActivity;->G5()Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    invoke-static {v0, p1}, Lcom/mycompany/app/web/WebViewActivity;->y1(Lcom/mycompany/app/web/WebViewActivity;Lcom/mycompany/app/quick/QuickAdapter$QuickItem;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final n(Ljava/util/List;)V
    .locals 6

    .line 1
    iget-object v1, p0, Lcom/mycompany/app/web/WebViewActivity$198;->a:Lcom/mycompany/app/web/WebViewActivity;

    .line 2
    .line 3
    iget-object v0, v1, Lcom/mycompany/app/web/WebViewActivity;->dm:Lcom/mycompany/app/main/MainTransNews;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    new-instance v0, Lcom/mycompany/app/main/MainTransNews;

    .line 9
    .line 10
    iget-object v2, v1, Lcom/mycompany/app/web/WebViewActivity;->i1:Landroid/content/Context;

    .line 11
    .line 12
    iget-object v3, v1, Lcom/mycompany/app/web/WebViewActivity;->f2:Lcom/mycompany/app/view/MyWebCoord;

    .line 13
    .line 14
    new-instance v5, Lcom/mycompany/app/web/WebViewActivity$463;

    .line 15
    .line 16
    invoke-direct {v5, v1}, Lcom/mycompany/app/web/WebViewActivity$463;-><init>(Lcom/mycompany/app/web/WebViewActivity;)V

    .line 17
    .line 18
    .line 19
    move-object v4, p1

    .line 20
    invoke-direct/range {v0 .. v5}, Lcom/mycompany/app/main/MainTransNews;-><init>(Lcom/mycompany/app/main/MainActivity;Landroid/content/Context;Landroid/view/ViewGroup;Ljava/util/List;Lcom/mycompany/app/main/MainTransNews$TransNewsListener;)V

    .line 21
    .line 22
    .line 23
    iput-object v0, v1, Lcom/mycompany/app/web/WebViewActivity;->dm:Lcom/mycompany/app/main/MainTransNews;

    .line 24
    .line 25
    return-void
.end method

.method public final o(Lcom/mycompany/app/quick/QuickAdapter$QuickItem;I)V
    .locals 2

    .line 1
    sget v0, Lcom/mycompany/app/web/WebViewActivity;->Fo:I

    .line 2
    .line 3
    iget-object v0, p0, Lcom/mycompany/app/web/WebViewActivity$198;->a:Lcom/mycompany/app/web/WebViewActivity;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/mycompany/app/web/WebViewActivity;->G5()Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    invoke-static {v0, p1, p2}, Lcom/mycompany/app/web/WebViewActivity;->x1(Lcom/mycompany/app/web/WebViewActivity;Lcom/mycompany/app/quick/QuickAdapter$QuickItem;I)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final p(IIILjava/lang/String;I)V
    .locals 7

    .line 1
    sget v0, Lcom/mycompany/app/web/WebViewActivity;->Fo:I

    .line 2
    .line 3
    iget-object v0, p0, Lcom/mycompany/app/web/WebViewActivity$198;->a:Lcom/mycompany/app/web/WebViewActivity;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/mycompany/app/web/WebViewActivity;->G5()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iget-object v1, p0, Lcom/mycompany/app/web/WebViewActivity$198;->a:Lcom/mycompany/app/web/WebViewActivity;

    .line 13
    .line 14
    iget-object v0, v1, Lcom/mycompany/app/web/WebViewActivity;->I2:Lcom/mycompany/app/web/WebNestView;

    .line 15
    .line 16
    if-nez v0, :cond_1

    .line 17
    .line 18
    :goto_0
    return-void

    .line 19
    :cond_1
    move v2, p1

    .line 20
    move v3, p2

    .line 21
    move v4, p3

    .line 22
    move-object v6, p4

    .line 23
    move v5, p5

    .line 24
    invoke-static/range {v1 .. v6}, Lcom/mycompany/app/web/WebViewActivity;->C1(Lcom/mycompany/app/web/WebViewActivity;IIIILjava/lang/String;)V

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method public final q()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebViewActivity$198;->a:Lcom/mycompany/app/web/WebViewActivity;

    .line 2
    .line 3
    iget-boolean v1, v0, Lcom/mycompany/app/web/WebViewActivity;->tc:Z

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    sget-boolean v1, Lcom/mycompany/app/pref/PrefAlbum;->O:Z

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    return v0

    .line 13
    :cond_0
    invoke-virtual {v0}, Lcom/mycompany/app/web/WebViewActivity;->w5()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    return v0
.end method

.method public final r()V
    .locals 1

    .line 1
    sget-boolean v0, Lcom/mycompany/app/pref/PrefZtwo;->J:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    sget-boolean v0, Lcom/mycompany/app/pref/PrefZtri;->C:Z

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-static {}, Lcom/mycompany/app/quick/QuickView;->s()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    sget v0, Lcom/mycompany/app/web/WebViewActivity;->Fo:I

    .line 16
    .line 17
    iget-object v0, p0, Lcom/mycompany/app/web/WebViewActivity$198;->a:Lcom/mycompany/app/web/WebViewActivity;

    .line 18
    .line 19
    invoke-virtual {v0}, Lcom/mycompany/app/web/WebViewActivity;->P1()V

    .line 20
    .line 21
    .line 22
    :cond_0
    return-void
.end method

.method public final s(Landroid/view/View;)V
    .locals 8

    .line 1
    sget v0, Lcom/mycompany/app/web/WebViewActivity;->Fo:I

    .line 2
    .line 3
    iget-object v2, p0, Lcom/mycompany/app/web/WebViewActivity$198;->a:Lcom/mycompany/app/web/WebViewActivity;

    .line 4
    .line 5
    invoke-virtual {v2}, Lcom/mycompany/app/web/WebViewActivity;->G5()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iget-object v0, v2, Lcom/mycompany/app/web/WebViewActivity;->b6:Lcom/mycompany/app/view/MyPopupMenu;

    .line 13
    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_1
    invoke-virtual {v2}, Lcom/mycompany/app/web/WebViewActivity;->Q4()V

    .line 18
    .line 19
    .line 20
    if-nez p1, :cond_2

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_2
    new-instance v5, Ljava/util/ArrayList;

    .line 24
    .line 25
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 26
    .line 27
    .line 28
    new-instance v0, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;

    .line 29
    .line 30
    sget v1, Lnet/kaki87/soul2/testing/R$string;->quick_access:I

    .line 31
    .line 32
    const/4 v3, 0x0

    .line 33
    invoke-direct {v0, v3, v1}, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;-><init>(II)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    sget-boolean v0, Lcom/mycompany/app/main/MainConst;->b:Z

    .line 40
    .line 41
    if-nez v0, :cond_3

    .line 42
    .line 43
    new-instance v0, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;

    .line 44
    .line 45
    sget v1, Lnet/kaki87/soul2/testing/R$string;->news_title:I

    .line 46
    .line 47
    const/4 v4, 0x1

    .line 48
    invoke-direct {v0, v4, v1}, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;-><init>(II)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    :cond_3
    new-instance v0, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;

    .line 55
    .line 56
    const/4 v1, 0x2

    .line 57
    sget v4, Lnet/kaki87/soul2/testing/R$string;->background:I

    .line 58
    .line 59
    invoke-direct {v0, v1, v4}, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;-><init>(II)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 63
    .line 64
    .line 65
    sget-boolean v0, Lcom/mycompany/app/pref/PrefZtri;->i0:Z

    .line 66
    .line 67
    if-eqz v0, :cond_4

    .line 68
    .line 69
    new-instance v0, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;

    .line 70
    .line 71
    const/4 v1, 0x3

    .line 72
    sget v4, Lnet/kaki87/soul2/testing/R$string;->add:I

    .line 73
    .line 74
    invoke-direct {v0, v1, v4}, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;-><init>(II)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 78
    .line 79
    .line 80
    :cond_4
    new-instance v0, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;

    .line 81
    .line 82
    sget v1, Lnet/kaki87/soul2/testing/R$string;->at_bottom:I

    .line 83
    .line 84
    sget-boolean v4, Lcom/mycompany/app/pref/PrefZtwo;->y:Z

    .line 85
    .line 86
    const/4 v6, 0x4

    .line 87
    invoke-direct {v0, v6, v1, v3, v4}, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;-><init>(IIIZ)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 91
    .line 92
    .line 93
    new-instance v1, Lcom/mycompany/app/view/MyPopupMenu;

    .line 94
    .line 95
    iget-object v3, v2, Lcom/mycompany/app/web/WebViewActivity;->e2:Lcom/mycompany/app/view/MyWebBody;

    .line 96
    .line 97
    iget-boolean v0, v2, Lcom/mycompany/app/web/WebViewActivity;->U1:Z

    .line 98
    .line 99
    invoke-static {v0}, Lcom/mycompany/app/main/MainUtil;->k5(Z)Z

    .line 100
    .line 101
    .line 102
    move-result v6

    .line 103
    new-instance v7, Lcom/mycompany/app/web/WebViewActivity$320;

    .line 104
    .line 105
    invoke-direct {v7, v2}, Lcom/mycompany/app/web/WebViewActivity$320;-><init>(Lcom/mycompany/app/web/WebViewActivity;)V

    .line 106
    .line 107
    .line 108
    move-object v4, p1

    .line 109
    invoke-direct/range {v1 .. v7}, Lcom/mycompany/app/view/MyPopupMenu;-><init>(Lcom/mycompany/app/main/MainActivity;Landroid/view/View;Landroid/view/View;Ljava/util/ArrayList;ZLcom/mycompany/app/view/MyPopupMenu$MyPopupListener;)V

    .line 110
    .line 111
    .line 112
    iput-object v1, v2, Lcom/mycompany/app/web/WebViewActivity;->b6:Lcom/mycompany/app/view/MyPopupMenu;

    .line 113
    .line 114
    iput-object v1, v2, Lcom/mycompany/app/main/MainActivity;->Z0:Lcom/mycompany/app/view/MyPopupWrap;

    .line 115
    .line 116
    iget-object p1, v2, Lcom/mycompany/app/web/WebViewActivity;->f2:Lcom/mycompany/app/view/MyWebCoord;

    .line 117
    .line 118
    if-nez p1, :cond_5

    .line 119
    .line 120
    :goto_0
    return-void

    .line 121
    :cond_5
    new-instance v0, Lcom/mycompany/app/web/WebViewActivity$321;

    .line 122
    .line 123
    invoke-direct {v0, v2}, Lcom/mycompany/app/web/WebViewActivity$321;-><init>(Lcom/mycompany/app/web/WebViewActivity;)V

    .line 124
    .line 125
    .line 126
    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 127
    .line 128
    .line 129
    return-void
.end method

.method public final t(ILjava/lang/String;)V
    .locals 3

    .line 1
    sget v0, Lcom/mycompany/app/web/WebViewActivity;->Fo:I

    .line 2
    .line 3
    iget-object v0, p0, Lcom/mycompany/app/web/WebViewActivity$198;->a:Lcom/mycompany/app/web/WebViewActivity;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/mycompany/app/web/WebViewActivity;->G5()Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->I2:Lcom/mycompany/app/web/WebNestView;

    .line 13
    .line 14
    if-nez v1, :cond_1

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_1
    const/4 v1, 0x0

    .line 18
    iput-boolean v1, v0, Lcom/mycompany/app/web/WebViewActivity;->k9:Z

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Lcom/mycompany/app/web/WebViewActivity;->E7(Z)V

    .line 21
    .line 22
    .line 23
    const/4 v2, 0x1

    .line 24
    if-nez p1, :cond_4

    .line 25
    .line 26
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    if-eqz p1, :cond_2

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_2
    const/16 p1, 0x8

    .line 34
    .line 35
    invoke-static {p1}, Lcom/mycompany/app/main/MainUtil;->A6(I)Z

    .line 36
    .line 37
    .line 38
    move-result p1

    .line 39
    const/4 v1, 0x0

    .line 40
    if-eqz p1, :cond_3

    .line 41
    .line 42
    invoke-virtual {v0, v1, p2, v2, v1}, Lcom/mycompany/app/web/WebViewActivity;->O1(Lcom/mycompany/app/web/WebNestFrame;Ljava/lang/String;ZLcom/mycompany/app/web/WebViewActivity$TabAddListener;)V

    .line 43
    .line 44
    .line 45
    return-void

    .line 46
    :cond_3
    invoke-virtual {v0, p2, v1}, Lcom/mycompany/app/web/WebViewActivity;->S5(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    return-void

    .line 50
    :cond_4
    if-ne p1, v2, :cond_5

    .line 51
    .line 52
    new-instance p1, Landroid/content/Intent;

    .line 53
    .line 54
    iget-object p2, v0, Lcom/mycompany/app/web/WebViewActivity;->i1:Landroid/content/Context;

    .line 55
    .line 56
    const-class v2, Lcom/mycompany/app/quick/QuickAdd;

    .line 57
    .line 58
    invoke-direct {p1, p2, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0, p1, v1}, Lcom/mycompany/app/web/WebViewActivity;->t0(Landroid/content/Intent;I)V

    .line 62
    .line 63
    .line 64
    :cond_5
    :goto_0
    return-void
.end method

.method public final u()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebViewActivity$198;->a:Lcom/mycompany/app/web/WebViewActivity;

    .line 2
    .line 3
    iget-boolean v1, v0, Lcom/mycompany/app/web/WebViewActivity;->U1:Z

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    const/4 v1, 0x1

    .line 9
    invoke-virtual {v0, v1}, Lcom/mycompany/app/web/WebViewActivity;->U9(Z)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public final v()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebViewActivity$198;->a:Lcom/mycompany/app/web/WebViewActivity;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/web/WebViewActivity;->A3:Lcom/mycompany/app/quick/QuickSearch;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/mycompany/app/quick/QuickSearch;->n()V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public final w()V
    .locals 2

    .line 1
    sget v0, Lcom/mycompany/app/web/WebViewActivity;->Fo:I

    .line 2
    .line 3
    iget-object v0, p0, Lcom/mycompany/app/web/WebViewActivity$198;->a:Lcom/mycompany/app/web/WebViewActivity;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/mycompany/app/web/WebViewActivity;->G5()Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    const/4 v1, 0x1

    .line 13
    invoke-virtual {v0, v1, v1}, Lcom/mycompany/app/web/WebViewActivity;->V7(ZZ)Z

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public final x()Z
    .locals 1

    .line 1
    sget v0, Lcom/mycompany/app/web/WebViewActivity;->Fo:I

    .line 2
    .line 3
    iget-object v0, p0, Lcom/mycompany/app/web/WebViewActivity$198;->a:Lcom/mycompany/app/web/WebViewActivity;

    .line 4
    .line 5
    iget-object v0, v0, Lcom/mycompany/app/web/WebViewActivity;->bm:Lcom/mycompany/app/quick/QuickNews;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    return v0

    .line 11
    :cond_0
    const/4 v0, 0x0

    .line 12
    return v0
.end method

.method public final y()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebViewActivity$198;->a:Lcom/mycompany/app/web/WebViewActivity;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->lb:Lcom/mycompany/app/wview/WebFltView;

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    invoke-virtual {v1, v2}, Lcom/mycompany/app/wview/WebFltView;->setLoad(Z)V

    .line 9
    .line 10
    .line 11
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->lb:Lcom/mycompany/app/wview/WebFltView;

    .line 12
    .line 13
    invoke-virtual {v1, v2}, Lcom/mycompany/app/wview/WebFltView;->setHideBlocked(Z)V

    .line 14
    .line 15
    .line 16
    :cond_0
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->bm:Lcom/mycompany/app/quick/QuickNews;

    .line 17
    .line 18
    if-eqz v1, :cond_1

    .line 19
    .line 20
    goto/16 :goto_4

    .line 21
    .line 22
    :cond_1
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->dm:Lcom/mycompany/app/main/MainTransNews;

    .line 23
    .line 24
    const/4 v3, 0x0

    .line 25
    if-eqz v1, :cond_2

    .line 26
    .line 27
    invoke-virtual {v1}, Lcom/mycompany/app/main/MainTransNews;->b()V

    .line 28
    .line 29
    .line 30
    iput-object v3, v0, Lcom/mycompany/app/web/WebViewActivity;->dm:Lcom/mycompany/app/main/MainTransNews;

    .line 31
    .line 32
    :cond_2
    const/4 v1, 0x0

    .line 33
    iput v1, v0, Lcom/mycompany/app/web/WebViewActivity;->cm:I

    .line 34
    .line 35
    invoke-static {}, Lcom/mycompany/app/quick/QuickView;->s()Z

    .line 36
    .line 37
    .line 38
    move-result v4

    .line 39
    if-eqz v4, :cond_3

    .line 40
    .line 41
    sget-object v1, Lcom/mycompany/app/pref/PrefZtwo;->L:Ljava/lang/String;

    .line 42
    .line 43
    new-instance v3, Lcom/mycompany/app/quick/QuickNewsCustom;

    .line 44
    .line 45
    invoke-direct {v3, v2}, Lcom/mycompany/app/quick/QuickNews;-><init>(Z)V

    .line 46
    .line 47
    .line 48
    iput-object v3, v0, Lcom/mycompany/app/web/WebViewActivity;->bm:Lcom/mycompany/app/quick/QuickNews;

    .line 49
    .line 50
    goto :goto_3

    .line 51
    :cond_3
    iget-object v4, v0, Lcom/mycompany/app/web/WebViewActivity;->i1:Landroid/content/Context;

    .line 52
    .line 53
    if-nez v4, :cond_4

    .line 54
    .line 55
    goto :goto_2

    .line 56
    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    .line 57
    .line 58
    const-string v5, "https://news.google.com"

    .line 59
    .line 60
    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    sget v5, Lcom/mycompany/app/pref/PrefZtwo;->Q:I

    .line 64
    .line 65
    const/16 v6, 0x9

    .line 66
    .line 67
    if-ne v5, v6, :cond_5

    .line 68
    .line 69
    const-string v5, "/search?q="

    .line 70
    .line 71
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    sget-object v5, Lcom/mycompany/app/pref/PrefZtwo;->R:Ljava/lang/String;

    .line 75
    .line 76
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    goto :goto_0

    .line 80
    :cond_5
    const-string v5, "/headlines/section/topic/"

    .line 81
    .line 82
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    sget-object v5, Lcom/mycompany/app/quick/QuickView;->k0:[Ljava/lang/String;

    .line 86
    .line 87
    sget v7, Lcom/mycompany/app/pref/PrefZtwo;->Q:I

    .line 88
    .line 89
    aget-object v5, v5, v7

    .line 90
    .line 91
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    :goto_0
    sget v5, Lcom/mycompany/app/pref/PrefZtwo;->Q:I

    .line 95
    .line 96
    if-ne v5, v6, :cond_6

    .line 97
    .line 98
    const-string v5, "&hl="

    .line 99
    .line 100
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    goto :goto_1

    .line 104
    :cond_6
    const-string v5, "?hl="

    .line 105
    .line 106
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    :goto_1
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 110
    .line 111
    .line 112
    move-result-object v5

    .line 113
    sget v6, Lnet/kaki87/soul2/testing/R$array;->news_code:I

    .line 114
    .line 115
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v5

    .line 119
    invoke-static {v4, v5}, Lcom/mycompany/app/quick/QuickView;->l(Landroid/content/Context;[Ljava/lang/String;)Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v4

    .line 123
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v3

    .line 130
    :goto_2
    new-instance v4, Lcom/mycompany/app/quick/QuickNewsGoogle;

    .line 131
    .line 132
    iget-object v5, v0, Lcom/mycompany/app/web/WebViewActivity;->f2:Lcom/mycompany/app/view/MyWebCoord;

    .line 133
    .line 134
    invoke-direct {v4, v1}, Lcom/mycompany/app/quick/QuickNews;-><init>(Z)V

    .line 135
    .line 136
    .line 137
    iput-object v0, v4, Lcom/mycompany/app/quick/QuickNewsGoogle;->j:Lcom/mycompany/app/main/MainActivity;

    .line 138
    .line 139
    iput-object v5, v4, Lcom/mycompany/app/quick/QuickNewsGoogle;->k:Landroid/view/ViewGroup;

    .line 140
    .line 141
    iput-object v4, v0, Lcom/mycompany/app/web/WebViewActivity;->bm:Lcom/mycompany/app/quick/QuickNews;

    .line 142
    .line 143
    move-object v1, v3

    .line 144
    :goto_3
    iget-object v3, v0, Lcom/mycompany/app/web/WebViewActivity;->bm:Lcom/mycompany/app/quick/QuickNews;

    .line 145
    .line 146
    iget-object v4, v0, Lcom/mycompany/app/web/WebViewActivity;->i1:Landroid/content/Context;

    .line 147
    .line 148
    iget-object v5, v0, Lcom/mycompany/app/main/MainActivity;->O0:Landroid/os/Handler;

    .line 149
    .line 150
    new-instance v6, Lcom/mycompany/app/web/WebViewActivity$461;

    .line 151
    .line 152
    invoke-direct {v6, v0}, Lcom/mycompany/app/web/WebViewActivity$461;-><init>(Lcom/mycompany/app/web/WebViewActivity;)V

    .line 153
    .line 154
    .line 155
    invoke-virtual {v3, v4, v5, v1, v6}, Lcom/mycompany/app/quick/QuickNews;->b(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;Lcom/mycompany/app/quick/QuickNews$NewsListListener;)V

    .line 156
    .line 157
    .line 158
    iput-boolean v2, v0, Lcom/mycompany/app/web/WebViewActivity;->Fc:Z

    .line 159
    .line 160
    iget-object v1, v0, Lcom/mycompany/app/main/MainActivity;->O0:Landroid/os/Handler;

    .line 161
    .line 162
    if-nez v1, :cond_7

    .line 163
    .line 164
    :goto_4
    return-void

    .line 165
    :cond_7
    new-instance v2, Lcom/mycompany/app/web/WebViewActivity$462;

    .line 166
    .line 167
    invoke-direct {v2, v0}, Lcom/mycompany/app/web/WebViewActivity$462;-><init>(Lcom/mycompany/app/web/WebViewActivity;)V

    .line 168
    .line 169
    .line 170
    const-wide/16 v3, 0xc8

    .line 171
    .line 172
    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 173
    .line 174
    .line 175
    return-void
.end method
