.class Lcom/mycompany/app/web/WebViewActivity$170;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/web/WebTabBarAdapter$TabBarListener;


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
    iput-object p1, p0, Lcom/mycompany/app/web/WebViewActivity$170;->a:Lcom/mycompany/app/web/WebViewActivity;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebViewActivity$170;->a:Lcom/mycompany/app/web/WebViewActivity;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->b3:Lcom/mycompany/app/web/WebTabBarAdapter;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    :try_start_0
    iget-object v2, v0, Lcom/mycompany/app/web/WebViewActivity;->O2:Ljava/util/List;

    .line 9
    .line 10
    iget v0, v0, Lcom/mycompany/app/web/WebViewActivity;->P2:I

    .line 11
    .line 12
    invoke-virtual {v1, v0, v2}, Lcom/mycompany/app/web/WebTabBarAdapter;->J(ILjava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    .line 14
    .line 15
    :catch_0
    :goto_0
    return-void
.end method

.method public final b(ILandroid/view/View;Z)V
    .locals 7

    .line 1
    iget-object v1, p0, Lcom/mycompany/app/web/WebViewActivity$170;->a:Lcom/mycompany/app/web/WebViewActivity;

    .line 2
    .line 3
    if-eqz p3, :cond_3

    .line 4
    .line 5
    iget-object p3, v1, Lcom/mycompany/app/web/WebViewActivity;->a6:Lcom/mycompany/app/view/MyPopupMenu;

    .line 6
    .line 7
    if-eqz p3, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {v1}, Lcom/mycompany/app/web/WebViewActivity;->V4()V

    .line 11
    .line 12
    .line 13
    if-nez p2, :cond_1

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_1
    new-instance v4, Ljava/util/ArrayList;

    .line 17
    .line 18
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 19
    .line 20
    .line 21
    new-instance p3, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;

    .line 22
    .line 23
    const/4 v0, 0x0

    .line 24
    sget v2, Lnet/kaki87/soul2/testing/R$string;->edit:I

    .line 25
    .line 26
    invoke-direct {p3, v0, v2}, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;-><init>(II)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v4, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    new-instance p3, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;

    .line 33
    .line 34
    const/4 v0, 0x1

    .line 35
    sget v2, Lnet/kaki87/soul2/testing/R$string;->delete:I

    .line 36
    .line 37
    invoke-direct {p3, v0, v2}, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;-><init>(II)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v4, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    new-instance v0, Lcom/mycompany/app/view/MyPopupMenu;

    .line 44
    .line 45
    iget-object v2, v1, Lcom/mycompany/app/web/WebViewActivity;->e2:Lcom/mycompany/app/view/MyWebBody;

    .line 46
    .line 47
    iget-boolean p3, v1, Lcom/mycompany/app/web/WebViewActivity;->U1:Z

    .line 48
    .line 49
    invoke-static {p3}, Lcom/mycompany/app/main/MainUtil;->k5(Z)Z

    .line 50
    .line 51
    .line 52
    move-result v5

    .line 53
    new-instance v6, Lcom/mycompany/app/web/WebViewActivity$318;

    .line 54
    .line 55
    invoke-direct {v6, v1, p1}, Lcom/mycompany/app/web/WebViewActivity$318;-><init>(Lcom/mycompany/app/web/WebViewActivity;I)V

    .line 56
    .line 57
    .line 58
    move-object v3, p2

    .line 59
    invoke-direct/range {v0 .. v6}, Lcom/mycompany/app/view/MyPopupMenu;-><init>(Lcom/mycompany/app/main/MainActivity;Landroid/view/View;Landroid/view/View;Ljava/util/ArrayList;ZLcom/mycompany/app/view/MyPopupMenu$MyPopupListener;)V

    .line 60
    .line 61
    .line 62
    iput-object v0, v1, Lcom/mycompany/app/web/WebViewActivity;->a6:Lcom/mycompany/app/view/MyPopupMenu;

    .line 63
    .line 64
    iput-object v0, v1, Lcom/mycompany/app/main/MainActivity;->Z0:Lcom/mycompany/app/view/MyPopupWrap;

    .line 65
    .line 66
    iget-object p1, v1, Lcom/mycompany/app/web/WebViewActivity;->f2:Lcom/mycompany/app/view/MyWebCoord;

    .line 67
    .line 68
    if-nez p1, :cond_2

    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_2
    new-instance p2, Lcom/mycompany/app/web/WebViewActivity$319;

    .line 72
    .line 73
    invoke-direct {p2, v1}, Lcom/mycompany/app/web/WebViewActivity$319;-><init>(Lcom/mycompany/app/web/WebViewActivity;)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {p1, p2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 77
    .line 78
    .line 79
    return-void

    .line 80
    :cond_3
    iget-object p2, v1, Lcom/mycompany/app/web/WebViewActivity;->H2:Lcom/mycompany/app/web/WebNestFrame;

    .line 81
    .line 82
    if-nez p2, :cond_4

    .line 83
    .line 84
    goto :goto_0

    .line 85
    :cond_4
    invoke-virtual {v1}, Lcom/mycompany/app/web/WebViewActivity;->G5()Z

    .line 86
    .line 87
    .line 88
    move-result p2

    .line 89
    if-eqz p2, :cond_5

    .line 90
    .line 91
    goto :goto_0

    .line 92
    :cond_5
    iget-boolean p2, v1, Lcom/mycompany/app/web/WebViewActivity;->c3:Z

    .line 93
    .line 94
    if-eqz p2, :cond_6

    .line 95
    .line 96
    :goto_0
    return-void

    .line 97
    :cond_6
    iget p2, v1, Lcom/mycompany/app/web/WebViewActivity;->P2:I

    .line 98
    .line 99
    if-ne p1, p2, :cond_7

    .line 100
    .line 101
    const/16 p1, 0x26

    .line 102
    .line 103
    const/4 p2, 0x0

    .line 104
    invoke-virtual {v1, p2, p1}, Lcom/mycompany/app/web/WebViewActivity;->d6(Landroid/view/View;I)V

    .line 105
    .line 106
    .line 107
    return-void

    .line 108
    :cond_7
    invoke-virtual {v1, p1}, Lcom/mycompany/app/web/WebViewActivity;->A2(I)V

    .line 109
    .line 110
    .line 111
    return-void
.end method

.method public final c(Lcom/mycompany/app/web/WebTabBarAdapter$WebTabBarHolder;Landroid/view/View;IIZ)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebViewActivity$170;->a:Lcom/mycompany/app/web/WebViewActivity;

    .line 2
    .line 3
    move-object v1, p1

    .line 4
    move-object v2, p2

    .line 5
    move v3, p3

    .line 6
    move v4, p4

    .line 7
    move v5, p5

    .line 8
    invoke-static/range {v0 .. v5}, Lcom/mycompany/app/web/TabLongPressGate;->arm(Lcom/mycompany/app/web/WebViewActivity;Lcom/mycompany/app/web/WebTabBarAdapter$WebTabBarHolder;Landroid/view/View;IIZ)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final d(IIIZ)V
    .locals 14

    .line 1
    const/4 v0, 0x1

    .line 2
    iget-object v1, p0, Lcom/mycompany/app/web/WebViewActivity$170;->a:Lcom/mycompany/app/web/WebViewActivity;

    .line 3
    .line 4
    if-eqz p4, :cond_4

    .line 5
    .line 6
    iget-boolean v2, v1, Lcom/mycompany/app/web/WebViewActivity;->G1:Z

    .line 7
    .line 8
    if-eqz v2, :cond_0

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    invoke-virtual {v1}, Lcom/mycompany/app/web/WebViewActivity;->J5()Z

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    if-eqz v2, :cond_1

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_1
    invoke-virtual {v1}, Lcom/mycompany/app/web/WebViewActivity;->z6()V

    .line 19
    .line 20
    .line 21
    iget-object v2, v1, Lcom/mycompany/app/web/WebViewActivity;->b3:Lcom/mycompany/app/web/WebTabBarAdapter;

    .line 22
    .line 23
    if-nez v2, :cond_2

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_2
    invoke-virtual {v1}, Lcom/mycompany/app/web/WebViewActivity;->t3()I

    .line 27
    .line 28
    .line 29
    move-result v11

    .line 30
    invoke-virtual {v1}, Lcom/mycompany/app/web/WebViewActivity;->u3()I

    .line 31
    .line 32
    .line 33
    move-result v12

    .line 34
    new-instance v3, Lcom/mycompany/app/web/WebTabBarSubView;

    .line 35
    .line 36
    invoke-direct {v3, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 37
    .line 38
    .line 39
    iput-boolean v0, v3, Lcom/mycompany/app/web/WebTabBarSubView;->L:Z

    .line 40
    .line 41
    iput-object v1, v3, Lcom/mycompany/app/web/WebTabBarSubView;->c:Landroid/content/Context;

    .line 42
    .line 43
    iput-object v3, v1, Lcom/mycompany/app/web/WebViewActivity;->d3:Lcom/mycompany/app/web/WebTabBarSubView;

    .line 44
    .line 45
    iget-object v4, v1, Lcom/mycompany/app/web/WebViewActivity;->e2:Lcom/mycompany/app/view/MyWebBody;

    .line 46
    .line 47
    iget-object v6, v1, Lcom/mycompany/app/web/WebViewActivity;->O2:Ljava/util/List;

    .line 48
    .line 49
    iget v7, v1, Lcom/mycompany/app/web/WebViewActivity;->P2:I

    .line 50
    .line 51
    iget-boolean v10, v1, Lcom/mycompany/app/web/WebViewActivity;->U1:Z

    .line 52
    .line 53
    new-instance v13, Lcom/mycompany/app/web/WebViewActivity$177;

    .line 54
    .line 55
    invoke-direct {v13, v1}, Lcom/mycompany/app/web/WebViewActivity$177;-><init>(Lcom/mycompany/app/web/WebViewActivity;)V

    .line 56
    .line 57
    .line 58
    move v5, p1

    .line 59
    move/from16 v8, p2

    .line 60
    .line 61
    move/from16 v9, p3

    .line 62
    .line 63
    invoke-virtual/range {v3 .. v13}, Lcom/mycompany/app/web/WebTabBarSubView;->d(Lcom/mycompany/app/view/MyWebBody;ILjava/util/List;IIIZIILcom/mycompany/app/web/WebTabBarSubView$TabBarSubListener;)V

    .line 64
    .line 65
    .line 66
    iget-object p1, v1, Lcom/mycompany/app/main/MainActivity;->O0:Landroid/os/Handler;

    .line 67
    .line 68
    if-nez p1, :cond_3

    .line 69
    .line 70
    :goto_0
    return-void

    .line 71
    :cond_3
    new-instance v0, Lcom/mycompany/app/web/WebViewActivity$178;

    .line 72
    .line 73
    invoke-direct {v0, v1}, Lcom/mycompany/app/web/WebViewActivity$178;-><init>(Lcom/mycompany/app/web/WebViewActivity;)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 77
    .line 78
    .line 79
    return-void

    .line 80
    :cond_4
    sget p1, Lcom/mycompany/app/web/WebViewActivity;->Fo:I

    .line 81
    .line 82
    move/from16 v8, p2

    .line 83
    .line 84
    invoke-virtual {v1, v8, v0}, Lcom/mycompany/app/web/WebViewActivity;->c7(IZ)V

    .line 85
    .line 86
    .line 87
    return-void
.end method

.method public final e(ILjava/util/ArrayList;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebViewActivity$170;->a:Lcom/mycompany/app/web/WebViewActivity;

    .line 2
    .line 3
    if-eqz p2, :cond_1

    .line 4
    .line 5
    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

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
    iput-object p2, v0, Lcom/mycompany/app/web/WebViewActivity;->O2:Ljava/util/List;

    .line 13
    .line 14
    iput p1, v0, Lcom/mycompany/app/web/WebViewActivity;->P2:I

    .line 15
    .line 16
    new-instance p1, Lcom/mycompany/app/web/WebViewActivity$170$1;

    .line 17
    .line 18
    invoke-direct {p1, p0}, Lcom/mycompany/app/web/WebViewActivity$170$1;-><init>(Lcom/mycompany/app/web/WebViewActivity$170;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, p1}, Lcom/mycompany/app/web/WebViewActivity;->x8(Lcom/mycompany/app/web/WebViewActivity$TabViewListener;)V

    .line 22
    .line 23
    .line 24
    return-void

    .line 25
    :cond_1
    :goto_0
    sget p1, Lcom/mycompany/app/web/WebViewActivity;->Fo:I

    .line 26
    .line 27
    const/4 p1, 0x0

    .line 28
    invoke-virtual {v0, p1}, Lcom/mycompany/app/web/WebViewActivity;->x2(Z)Z

    .line 29
    .line 30
    .line 31
    return-void
.end method
