.class public Lcom/mycompany/app/dialog/DialogWebVie2;
.super Lcom/mycompany/app/view/MyDialogBottom;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mycompany/app/dialog/DialogWebVie2$LocalWebViewClient;,
        Lcom/mycompany/app/dialog/DialogWebVie2$LocalChromeClient;,
        Lcom/mycompany/app/dialog/DialogWebVie2$WebAppInterface;
    }
.end annotation


# static fields
.field public static final synthetic q1:I


# instance fields
.field public A0:Lcom/mycompany/app/view/MyScrollBar;

.field public B0:Lcom/mycompany/app/wview/WebUpView;

.field public C0:Lcom/mycompany/app/view/MyScrollNavi;

.field public D0:Lcom/mycompany/app/view/MyScrollNavi;

.field public E0:Landroid/view/GestureDetector;

.field public F0:F

.field public G0:F

.field public H0:F

.field public I0:Z

.field public J0:I

.field public K0:I

.field public L0:I

.field public M0:Z

.field public N0:I

.field public O0:I

.field public P0:Z

.field public Q0:Z

.field public R0:Z

.field public S0:Z

.field public T0:Ljava/lang/String;

.field public U0:Landroid/view/View;

.field public V0:Lcom/mycompany/app/web/WebTransControl;

.field public W0:Lcom/mycompany/app/view/MyLineFrame;

.field public X0:Z

.field public Y0:I

.field public Z0:Z

.field public final a0:I

.field public a1:Ljava/lang/String;

.field public b0:Lcom/mycompany/app/setting/SettingInfo;

.field public b1:Ljava/lang/String;

.field public c0:Landroid/content/Context;

.field public c1:Ljava/lang/String;

.field public d0:Lcom/mycompany/app/dialog/DialogWebView$DialogWebListener;

.field public d1:I

.field public final e0:Z

.field public e1:I

.field public final f0:Z

.field public f1:Lcom/mycompany/app/dialog/DialogTransLang;

.field public final g0:Z

.field public g1:Lcom/mycompany/app/web/WebClean;

.field public final h0:Z

.field public h1:Z

.field public i0:Z

.field public i1:Ljava/lang/String;

.field public final j0:I

.field public j1:I

.field public k0:Ljava/lang/String;

.field public final k1:Ljava/lang/Runnable;

.field public l0:Ljava/lang/String;

.field public l1:Z

.field public m0:Ljava/lang/String;

.field public final m1:Ljava/lang/Runnable;

.field public n0:Ljava/lang/String;

.field public n1:Ljava/lang/String;

.field public o0:Z

.field public o1:Ljava/lang/String;

.field public p0:Ljava/lang/String;

.field public p1:Lcom/mycompany/app/web/WebTransControl;

.field public q0:Lcom/mycompany/app/view/MyDialogRelative;

.field public r0:Landroid/widget/FrameLayout;

.field public r1:Lcom/mycompany/app/view/MyButtonImage;

.field public s0:Landroidx/appcompat/widget/AppCompatTextView;

.field public t0:Lcom/mycompany/app/view/MyButtonImage;

.field public u0:Lcom/mycompany/app/view/MyButtonImage;

.field public v0:Lcom/mycompany/app/view/MyButtonImage;

.field public w0:Lcom/mycompany/app/view/MyButtonImage;

.field public x0:Landroid/widget/FrameLayout;

.field public y0:Lcom/mycompany/app/web/WebNestView;

.field public z0:Lcom/mycompany/app/view/MyProgressBar;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/setting/SettingInfo;Ljava/lang/String;IZLcom/mycompany/app/dialog/DialogWebView$DialogWebListener;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/mycompany/app/view/MyDialogBottom;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/mycompany/app/dialog/DialogWebVie2$19;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Lcom/mycompany/app/dialog/DialogWebVie2$19;-><init>(Lcom/mycompany/app/dialog/DialogWebVie2;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogWebVie2;->k1:Ljava/lang/Runnable;

    .line 10
    .line 11
    new-instance v0, Lcom/mycompany/app/dialog/DialogWebVie2$20;

    .line 12
    .line 13
    invoke-direct {v0, p0}, Lcom/mycompany/app/dialog/DialogWebVie2$20;-><init>(Lcom/mycompany/app/dialog/DialogWebVie2;)V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogWebVie2;->m1:Ljava/lang/Runnable;

    .line 17
    .line 18
    const/4 v0, 0x0

    .line 19
    iput v0, p0, Lcom/mycompany/app/view/MyDialogBottom;->w:I

    .line 20
    .line 21
    invoke-virtual {p0}, Lcom/mycompany/app/view/MyDialogBottom;->m()V

    .line 22
    .line 23
    .line 24
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogWebVie2;->b0:Lcom/mycompany/app/setting/SettingInfo;

    .line 25
    .line 26
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogWebVie2;->c0:Landroid/content/Context;

    .line 31
    .line 32
    iput-object p5, p0, Lcom/mycompany/app/dialog/DialogWebVie2;->d0:Lcom/mycompany/app/dialog/DialogWebView$DialogWebListener;

    .line 33
    .line 34
    iput-object p2, p0, Lcom/mycompany/app/dialog/DialogWebVie2;->k0:Ljava/lang/String;

    .line 35
    .line 36
    iput-object p2, p0, Lcom/mycompany/app/dialog/DialogWebVie2;->m0:Ljava/lang/String;

    .line 37
    .line 38
    iput p3, p0, Lcom/mycompany/app/dialog/DialogWebVie2;->j0:I

    .line 39
    .line 40
    const/4 p1, 0x1

    .line 41
    invoke-static {p2, p1}, Lcom/mycompany/app/main/MainUtil;->I1(Ljava/lang/String;Z)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p2

    .line 45
    iput-object p2, p0, Lcom/mycompany/app/dialog/DialogWebVie2;->l0:Ljava/lang/String;

    .line 46
    .line 47
    iput-boolean p4, p0, Lcom/mycompany/app/dialog/DialogWebVie2;->f0:Z

    .line 48
    .line 49
    if-nez p4, :cond_1

    .line 50
    .line 51
    sget-boolean p2, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 52
    .line 53
    if-eqz p2, :cond_0

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_0
    move p2, v0

    .line 57
    goto :goto_1

    .line 58
    :cond_1
    :goto_0
    move p2, p1

    .line 59
    :goto_1
    iput-boolean p2, p0, Lcom/mycompany/app/dialog/DialogWebVie2;->g0:Z

    .line 60
    .line 61
    if-nez p4, :cond_3

    .line 62
    .line 63
    sget-boolean p2, Lcom/mycompany/app/main/MainApp;->L1:Z

    .line 64
    .line 65
    if-eqz p2, :cond_2

    .line 66
    .line 67
    goto :goto_2

    .line 68
    :cond_2
    move p1, v0

    .line 69
    :cond_3
    :goto_2
    iput-boolean p1, p0, Lcom/mycompany/app/dialog/DialogWebVie2;->h0:Z

    .line 70
    .line 71
    if-nez p4, :cond_4

    .line 72
    .line 73
    goto :goto_3

    .line 74
    :cond_4
    sget-boolean p1, Lcom/mycompany/app/pref/PrefWeb;->M:Z

    .line 75
    .line 76
    iput-boolean p1, p0, Lcom/mycompany/app/dialog/DialogWebVie2;->i0:Z

    .line 77
    .line 78
    sget-boolean p1, Lcom/mycompany/app/main/MainApp;->L1:Z

    .line 79
    .line 80
    if-eqz p1, :cond_5

    .line 81
    .line 82
    sput-boolean v0, Lcom/mycompany/app/pref/PrefWeb;->M:Z

    .line 83
    .line 84
    :cond_5
    :goto_3
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogWebVie2;->c0:Landroid/content/Context;

    .line 85
    .line 86
    invoke-static {p1, v0}, Lcom/mycompany/app/main/MainApp;->v(Landroid/content/Context;Z)Lcom/mycompany/app/web/WebClean;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogWebVie2;->g1:Lcom/mycompany/app/web/WebClean;

    .line 91
    .line 92
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogWebVie2;->c0:Landroid/content/Context;

    .line 93
    .line 94
    invoke-static {p1}, Lcom/mycompany/app/main/MainUtil;->O5(Landroid/content/Context;)Z

    .line 95
    .line 96
    .line 97
    move-result p1

    .line 98
    iput-boolean p1, p0, Lcom/mycompany/app/dialog/DialogWebVie2;->e0:Z

    .line 99
    .line 100
    sget p1, Lcom/mycompany/app/main/MainApp;->s1:I

    .line 101
    .line 102
    div-int/lit8 p1, p1, 0x2

    .line 103
    .line 104
    iput p1, p0, Lcom/mycompany/app/dialog/DialogWebVie2;->a0:I

    .line 105
    .line 106
    iget-object p1, p0, Lcom/mycompany/app/view/MyDialogBottom;->i:Landroid/os/Handler;

    .line 107
    .line 108
    if-nez p1, :cond_6

    .line 109
    .line 110
    return-void

    .line 111
    :cond_6
    new-instance p2, Lcom/mycompany/app/dialog/DialogWebVie2$1;

    .line 112
    .line 113
    invoke-direct {p2, p0}, Lcom/mycompany/app/dialog/DialogWebVie2$1;-><init>(Lcom/mycompany/app/dialog/DialogWebVie2;)V

    .line 114
    .line 115
    .line 116
    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 117
    .line 118
    .line 119
    return-void
.end method

.method public static B(Lcom/mycompany/app/dialog/DialogWebVie2;Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogWebVie2;->y0:Lcom/mycompany/app/web/WebNestView;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    invoke-static {p1}, Lcom/mycompany/app/main/MainUtil;->D5(Ljava/lang/String;)Z

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    if-eqz p1, :cond_3

    .line 11
    .line 12
    iget-boolean p1, p0, Lcom/mycompany/app/dialog/DialogWebVie2;->Q0:Z

    .line 13
    .line 14
    if-nez p1, :cond_1

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_1
    const/4 p1, 0x0

    .line 18
    iput-boolean p1, p0, Lcom/mycompany/app/dialog/DialogWebVie2;->Q0:Z

    .line 19
    .line 20
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogWebVie2;->y0:Lcom/mycompany/app/web/WebNestView;

    .line 21
    .line 22
    if-nez p1, :cond_2

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_2
    new-instance v0, Lcom/mycompany/app/dialog/DialogWebVie2$15;

    .line 26
    .line 27
    invoke-direct {v0, p0}, Lcom/mycompany/app/dialog/DialogWebVie2$15;-><init>(Lcom/mycompany/app/dialog/DialogWebVie2;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1, v0}, Lcom/mycompany/app/web/WebNestView;->post(Ljava/lang/Runnable;)Z

    .line 31
    .line 32
    .line 33
    return-void

    .line 34
    :cond_3
    iget-boolean p1, p0, Lcom/mycompany/app/dialog/DialogWebVie2;->Q0:Z

    .line 35
    .line 36
    if-eqz p1, :cond_4

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_4
    const/4 p1, 0x1

    .line 40
    iput-boolean p1, p0, Lcom/mycompany/app/dialog/DialogWebVie2;->Q0:Z

    .line 41
    .line 42
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogWebVie2;->y0:Lcom/mycompany/app/web/WebNestView;

    .line 43
    .line 44
    if-nez p1, :cond_5

    .line 45
    .line 46
    :goto_0
    return-void

    .line 47
    :cond_5
    new-instance v0, Lcom/mycompany/app/dialog/DialogWebVie2$16;

    .line 48
    .line 49
    invoke-direct {v0, p0}, Lcom/mycompany/app/dialog/DialogWebVie2$16;-><init>(Lcom/mycompany/app/dialog/DialogWebVie2;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {p1, v0}, Lcom/mycompany/app/web/WebNestView;->post(Ljava/lang/Runnable;)Z

    .line 53
    .line 54
    .line 55
    return-void
.end method

.method public static C(Lcom/mycompany/app/dialog/DialogWebVie2;)V
    .locals 2

    .line 1
    sget v0, Lcom/mycompany/app/pref/PrefZone;->y:I

    .line 2
    .line 3
    if-eqz v0, :cond_3

    .line 4
    .line 5
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogWebVie2;->B0:Lcom/mycompany/app/wview/WebUpView;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    iget-boolean v1, p0, Lcom/mycompany/app/dialog/DialogWebVie2;->I0:Z

    .line 11
    .line 12
    if-nez v1, :cond_1

    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/mycompany/app/wview/WebUpView;->d()V

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :cond_1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogWebVie2;->y0:Lcom/mycompany/app/web/WebNestView;

    .line 19
    .line 20
    invoke-virtual {v0}, Landroid/view/View;->getScrollY()I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogWebVie2;->x0:Landroid/widget/FrameLayout;

    .line 25
    .line 26
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    if-le v0, v1, :cond_2

    .line 31
    .line 32
    iget-object p0, p0, Lcom/mycompany/app/dialog/DialogWebVie2;->B0:Lcom/mycompany/app/wview/WebUpView;

    .line 33
    .line 34
    invoke-virtual {p0}, Lcom/mycompany/app/wview/WebUpView;->f()V

    .line 35
    .line 36
    .line 37
    const/4 v0, 0x0

    .line 38
    invoke-virtual {p0, v0}, Lcom/mycompany/app/wview/WebUpView;->setVisibility(I)V

    .line 39
    .line 40
    .line 41
    return-void

    .line 42
    :cond_2
    iget-object p0, p0, Lcom/mycompany/app/dialog/DialogWebVie2;->B0:Lcom/mycompany/app/wview/WebUpView;

    .line 43
    .line 44
    invoke-virtual {p0}, Lcom/mycompany/app/wview/WebUpView;->d()V

    .line 45
    .line 46
    .line 47
    :cond_3
    :goto_0
    return-void
.end method

.method public static D(Lcom/mycompany/app/dialog/DialogWebVie2;Ljava/lang/String;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/mycompany/app/dialog/DialogWebVie2;->X0:Z

    .line 3
    .line 4
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogWebVie2;->b1:Ljava/lang/String;

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    sget-object p1, Lcom/mycompany/app/pref/PrefAlbum;->y:Ljava/lang/String;

    .line 14
    .line 15
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogWebVie2;->b1:Ljava/lang/String;

    .line 16
    .line 17
    :goto_0
    iget-object p0, p0, Lcom/mycompany/app/dialog/DialogWebVie2;->y0:Lcom/mycompany/app/web/WebNestView;

    .line 18
    .line 19
    const-string p1, "onTransUser"

    .line 20
    .line 21
    invoke-static {p0, p1}, Lcom/mycompany/app/main/MainUtil;->O7(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public static E(Lcom/mycompany/app/dialog/DialogWebVie2;Lcom/mycompany/app/web/WebNestView;Ljava/lang/String;)Z
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_10

    .line 3
    .line 4
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    goto/16 :goto_5

    .line 11
    .line 12
    :cond_0
    const-string v1, "https://"

    .line 13
    .line 14
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    const-string v3, "UTF-8"

    .line 19
    .line 20
    const/4 v4, 0x0

    .line 21
    if-eqz v2, :cond_2

    .line 22
    .line 23
    :catch_0
    :cond_1
    :goto_0
    move-object v2, v4

    .line 24
    goto :goto_2

    .line 25
    :cond_2
    const-string v2, "https://www.google.com/"

    .line 26
    .line 27
    invoke-virtual {p2, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    if-nez v2, :cond_3

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_3
    :try_start_0
    const-string v2, "https"

    .line 35
    .line 36
    const/16 v5, 0x17

    .line 37
    .line 38
    invoke-virtual {p2, v2, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    .line 39
    .line 40
    .line 41
    move-result v2

    .line 42
    if-ge v2, v5, :cond_4

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_4
    invoke-virtual {p2, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    invoke-virtual {v2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 50
    .line 51
    .line 52
    move-result v5

    .line 53
    const/16 v6, 0x26

    .line 54
    .line 55
    if-eqz v5, :cond_7

    .line 56
    .line 57
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 58
    .line 59
    .line 60
    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    if-eqz v1, :cond_5

    .line 62
    .line 63
    goto :goto_2

    .line 64
    :cond_5
    :try_start_1
    invoke-virtual {v2, v6}, Ljava/lang/String;->indexOf(I)I

    .line 65
    .line 66
    .line 67
    move-result v1

    .line 68
    if-gtz v1, :cond_6

    .line 69
    .line 70
    goto :goto_2

    .line 71
    :cond_6
    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 76
    .line 77
    .line 78
    move-result v5
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 79
    if-nez v5, :cond_a

    .line 80
    .line 81
    :goto_1
    move-object v2, v1

    .line 82
    goto :goto_2

    .line 83
    :cond_7
    :try_start_2
    invoke-static {v2, v3}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v2

    .line 87
    invoke-virtual {v2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 88
    .line 89
    .line 90
    move-result v1

    .line 91
    if-eqz v1, :cond_1

    .line 92
    .line 93
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 94
    .line 95
    .line 96
    move-result v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 97
    if-eqz v1, :cond_8

    .line 98
    .line 99
    goto :goto_2

    .line 100
    :cond_8
    :try_start_3
    invoke-virtual {v2, v6}, Ljava/lang/String;->indexOf(I)I

    .line 101
    .line 102
    .line 103
    move-result v1

    .line 104
    if-gtz v1, :cond_9

    .line 105
    .line 106
    goto :goto_2

    .line 107
    :cond_9
    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v1

    .line 111
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 112
    .line 113
    .line 114
    move-result v5
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 115
    if-nez v5, :cond_a

    .line 116
    .line 117
    goto :goto_1

    .line 118
    :catch_1
    :cond_a
    :goto_2
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 119
    .line 120
    .line 121
    move-result v1

    .line 122
    const/4 v5, 0x1

    .line 123
    if-nez v1, :cond_b

    .line 124
    .line 125
    invoke-virtual {p1, v2, v4}, Lcom/mycompany/app/web/WebNestView;->z(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    .line 127
    .line 128
    :goto_3
    move v0, v5

    .line 129
    goto :goto_5

    .line 130
    :cond_b
    const-string v1, "http"

    .line 131
    .line 132
    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 133
    .line 134
    .line 135
    move-result v1

    .line 136
    if-eqz v1, :cond_d

    .line 137
    .line 138
    const-string p0, "://"

    .line 139
    .line 140
    const/4 v1, 0x4

    .line 141
    invoke-virtual {p2, p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    .line 142
    .line 143
    .line 144
    move-result p0

    .line 145
    if-nez p0, :cond_c

    .line 146
    .line 147
    const-string p0, "s://"

    .line 148
    .line 149
    invoke-virtual {p2, p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    .line 150
    .line 151
    .line 152
    move-result p0

    .line 153
    if-nez p0, :cond_c

    .line 154
    .line 155
    :try_start_4
    invoke-static {p2, v3}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object p2
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 159
    :catch_2
    :cond_c
    invoke-static {p2}, Landroid/webkit/URLUtil;->isNetworkUrl(Ljava/lang/String;)Z

    .line 160
    .line 161
    .line 162
    move-result p0

    .line 163
    if-eqz p0, :cond_e

    .line 164
    .line 165
    invoke-static {p2}, Lcom/mycompany/app/web/PdfPreview;->isPdfUrl(Ljava/lang/String;)Z

    .line 168
    .line 169
    .line 170
    move-result p0

    .line 171
    if-eqz p0, :cond_e

    .line 172
    .line 173
    goto :goto_3

    .line 174
    :cond_d
    const-string v1, "tel:"

    .line 175
    .line 176
    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 177
    .line 178
    .line 179
    move-result v1

    .line 180
    if-nez v1, :cond_f

    .line 181
    .line 182
    const-string v1, "mailto:"

    .line 183
    .line 184
    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 185
    .line 186
    .line 187
    move-result v1

    .line 188
    if-nez v1, :cond_f

    .line 189
    .line 190
    const-string v1, "sms:"

    .line 191
    .line 192
    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 193
    .line 194
    .line 195
    move-result v1

    .line 196
    if-eqz v1, :cond_e

    .line 197
    .line 198
    goto :goto_4

    .line 199
    :cond_e
    invoke-static {p2}, Lcom/mycompany/app/main/MainUtil;->a6(Ljava/lang/String;)Z

    .line 200
    .line 201
    .line 202
    move-result p0

    .line 203
    if-nez p0, :cond_10

    .line 204
    .line 205
    invoke-static {p2, v5}, Lcom/mycompany/app/main/MainUtil;->Z1(Ljava/lang/String;Z)Ljava/lang/String;

    .line 206
    .line 207
    .line 208
    move-result-object p0

    .line 209
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 210
    .line 211
    .line 212
    move-result p2

    .line 213
    if-nez p2, :cond_10

    .line 214
    .line 215
    invoke-virtual {p1, p0, v4}, Lcom/mycompany/app/web/WebNestView;->z(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    .line 217
    .line 218
    goto :goto_3

    .line 219
    :cond_f
    :goto_4
    iget-object p0, p0, Lcom/mycompany/app/dialog/DialogWebVie2;->b0:Lcom/mycompany/app/setting/SettingInfo;

    .line 220
    .line 221
    invoke-static {p0, p2}, Lcom/mycompany/app/main/MainUtil;->A4(Landroid/app/Activity;Ljava/lang/String;)Z

    .line 222
    .line 223
    .line 224
    goto :goto_3

    .line 225
    :cond_10
    :goto_5
    return v0
.end method


# virtual methods
.method public final F()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogWebVie2;->f1:Lcom/mycompany/app/dialog/DialogTransLang;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogTransLang;->dismiss()V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogWebVie2;->f1:Lcom/mycompany/app/dialog/DialogTransLang;

    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public final G(ZZ)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/mycompany/app/dialog/DialogWebVie2;->J0:I

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogWebVie2;->y0:Lcom/mycompany/app/web/WebNestView;

    .line 7
    .line 8
    if-nez v0, :cond_1

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_1
    const/4 v0, 0x2

    .line 12
    iput v0, p0, Lcom/mycompany/app/dialog/DialogWebVie2;->J0:I

    .line 13
    .line 14
    const/4 v0, 0x0

    .line 15
    iput v0, p0, Lcom/mycompany/app/dialog/DialogWebVie2;->K0:I

    .line 16
    .line 17
    iput v0, p0, Lcom/mycompany/app/dialog/DialogWebVie2;->L0:I

    .line 18
    .line 19
    iput-boolean v0, p0, Lcom/mycompany/app/dialog/DialogWebVie2;->M0:Z

    .line 20
    .line 21
    iput v0, p0, Lcom/mycompany/app/dialog/DialogWebVie2;->N0:I

    .line 22
    .line 23
    iput v0, p0, Lcom/mycompany/app/dialog/DialogWebVie2;->O0:I

    .line 24
    .line 25
    iput-boolean v0, p0, Lcom/mycompany/app/dialog/DialogWebVie2;->P0:Z

    .line 26
    .line 27
    if-eqz p1, :cond_9

    .line 28
    .line 29
    iget-boolean p1, p0, Lcom/mycompany/app/dialog/DialogWebVie2;->e0:Z

    .line 30
    .line 31
    if-eqz p1, :cond_5

    .line 32
    .line 33
    if-eqz p2, :cond_3

    .line 34
    .line 35
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogWebVie2;->C0:Lcom/mycompany/app/view/MyScrollNavi;

    .line 36
    .line 37
    if-eqz p1, :cond_2

    .line 38
    .line 39
    invoke-virtual {p1}, Lcom/mycompany/app/view/MyScrollNavi;->c()V

    .line 40
    .line 41
    .line 42
    :cond_2
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogWebVie2;->D0:Lcom/mycompany/app/view/MyScrollNavi;

    .line 43
    .line 44
    if-eqz p1, :cond_b

    .line 45
    .line 46
    invoke-virtual {p1}, Lcom/mycompany/app/view/MyScrollNavi;->c()V

    .line 47
    .line 48
    .line 49
    return-void

    .line 50
    :cond_3
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogWebVie2;->C0:Lcom/mycompany/app/view/MyScrollNavi;

    .line 51
    .line 52
    if-eqz p1, :cond_4

    .line 53
    .line 54
    invoke-virtual {p1}, Lcom/mycompany/app/view/MyScrollNavi;->c()V

    .line 55
    .line 56
    .line 57
    :cond_4
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogWebVie2;->D0:Lcom/mycompany/app/view/MyScrollNavi;

    .line 58
    .line 59
    if-eqz p1, :cond_b

    .line 60
    .line 61
    invoke-virtual {p1}, Lcom/mycompany/app/view/MyScrollNavi;->c()V

    .line 62
    .line 63
    .line 64
    return-void

    .line 65
    :cond_5
    if-eqz p2, :cond_7

    .line 66
    .line 67
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogWebVie2;->C0:Lcom/mycompany/app/view/MyScrollNavi;

    .line 68
    .line 69
    if-eqz p1, :cond_6

    .line 70
    .line 71
    invoke-virtual {p1}, Lcom/mycompany/app/view/MyScrollNavi;->c()V

    .line 72
    .line 73
    .line 74
    :cond_6
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogWebVie2;->D0:Lcom/mycompany/app/view/MyScrollNavi;

    .line 75
    .line 76
    if-eqz p1, :cond_b

    .line 77
    .line 78
    invoke-virtual {p1}, Lcom/mycompany/app/view/MyScrollNavi;->c()V

    .line 79
    .line 80
    .line 81
    return-void

    .line 82
    :cond_7
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogWebVie2;->C0:Lcom/mycompany/app/view/MyScrollNavi;

    .line 83
    .line 84
    if-eqz p1, :cond_8

    .line 85
    .line 86
    invoke-virtual {p1}, Lcom/mycompany/app/view/MyScrollNavi;->c()V

    .line 87
    .line 88
    .line 89
    :cond_8
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogWebVie2;->D0:Lcom/mycompany/app/view/MyScrollNavi;

    .line 90
    .line 91
    if-eqz p1, :cond_b

    .line 92
    .line 93
    invoke-virtual {p1}, Lcom/mycompany/app/view/MyScrollNavi;->c()V

    .line 94
    .line 95
    .line 96
    return-void

    .line 97
    :cond_9
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogWebVie2;->C0:Lcom/mycompany/app/view/MyScrollNavi;

    .line 98
    .line 99
    if-eqz p1, :cond_a

    .line 100
    .line 101
    invoke-virtual {p1}, Lcom/mycompany/app/view/MyScrollNavi;->c()V

    .line 102
    .line 103
    .line 104
    :cond_a
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogWebVie2;->D0:Lcom/mycompany/app/view/MyScrollNavi;

    .line 105
    .line 106
    if-eqz p1, :cond_b

    .line 107
    .line 108
    invoke-virtual {p1}, Lcom/mycompany/app/view/MyScrollNavi;->c()V

    .line 109
    .line 110
    .line 111
    :cond_b
    :goto_0
    return-void
.end method

.method public final H()Z
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    invoke-virtual {p0, v0, v1}, Lcom/mycompany/app/dialog/DialogWebVie2;->G(ZZ)V

    .line 4
    .line 5
    .line 6
    iget-object v2, p0, Lcom/mycompany/app/dialog/DialogWebVie2;->y0:Lcom/mycompany/app/web/WebNestView;

    .line 7
    .line 8
    if-nez v2, :cond_0

    .line 9
    .line 10
    return v1

    .line 11
    :cond_0
    invoke-virtual {v2}, Landroid/webkit/WebView;->canGoForward()Z

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    if-eqz v2, :cond_1

    .line 16
    .line 17
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogWebVie2;->y0:Lcom/mycompany/app/web/WebNestView;

    .line 18
    .line 19
    invoke-virtual {v1}, Lcom/mycompany/app/web/WebNestView;->goForward()V

    .line 20
    .line 21
    .line 22
    return v0

    .line 23
    :cond_1
    return v1
.end method

.method public final I()Z
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0, v0}, Lcom/mycompany/app/dialog/DialogWebVie2;->G(ZZ)V

    .line 3
    .line 4
    .line 5
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogWebVie2;->y0:Lcom/mycompany/app/web/WebNestView;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_0

    .line 9
    .line 10
    return v2

    .line 11
    :cond_0
    invoke-virtual {v1}, Landroid/webkit/WebView;->canGoBack()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogWebVie2;->y0:Lcom/mycompany/app/web/WebNestView;

    .line 18
    .line 19
    invoke-virtual {v1}, Lcom/mycompany/app/web/WebNestView;->goBack()V

    .line 20
    .line 21
    .line 22
    return v0

    .line 23
    :cond_1
    return v2
.end method

.method public final J(I)V
    .locals 4

    .line 1
    iput p1, p0, Lcom/mycompany/app/dialog/DialogWebVie2;->j1:I

    .line 2
    .line 3
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogWebVie2;->z0:Lcom/mycompany/app/view/MyProgressBar;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyProgressBar;->getProgress()F

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    const/16 v1, 0x8

    .line 17
    .line 18
    const/16 v2, 0x64

    .line 19
    .line 20
    const/4 v3, 0x0

    .line 21
    if-ne p1, v2, :cond_1

    .line 22
    .line 23
    if-ne v0, v2, :cond_1

    .line 24
    .line 25
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogWebVie2;->z0:Lcom/mycompany/app/view/MyProgressBar;

    .line 26
    .line 27
    const/4 v0, 0x1

    .line 28
    invoke-virtual {p1, v0}, Lcom/mycompany/app/view/MyProgressBar;->setSkipDraw(Z)V

    .line 29
    .line 30
    .line 31
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogWebVie2;->t0:Lcom/mycompany/app/view/MyButtonImage;

    .line 32
    .line 33
    invoke-virtual {p1, v3}, Lcom/mycompany/app/view/MyButtonImage;->setVisibility(I)V

    .line 34
    .line 35
    .line 36
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogWebVie2;->u0:Lcom/mycompany/app/view/MyButtonImage;

    .line 37
    .line 38
    invoke-virtual {p1, v1}, Lcom/mycompany/app/view/MyButtonImage;->setVisibility(I)V

    .line 39
    .line 40
    .line 41
    return-void

    .line 42
    :cond_1
    iget-object v2, p0, Lcom/mycompany/app/dialog/DialogWebVie2;->t0:Lcom/mycompany/app/view/MyButtonImage;

    .line 43
    .line 44
    invoke-virtual {v2, v1}, Lcom/mycompany/app/view/MyButtonImage;->setVisibility(I)V

    .line 45
    .line 46
    .line 47
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogWebVie2;->u0:Lcom/mycompany/app/view/MyButtonImage;

    .line 48
    .line 49
    invoke-virtual {v1, v3}, Lcom/mycompany/app/view/MyButtonImage;->setVisibility(I)V

    .line 50
    .line 51
    .line 52
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogWebVie2;->z0:Lcom/mycompany/app/view/MyProgressBar;

    .line 53
    .line 54
    iget-boolean v2, v1, Lcom/mycompany/app/view/MyProgressBar;->B:Z

    .line 55
    .line 56
    if-eqz v2, :cond_2

    .line 57
    .line 58
    const/4 v0, 0x0

    .line 59
    invoke-virtual {v1, v0}, Lcom/mycompany/app/view/MyProgressBar;->setProgress(F)V

    .line 60
    .line 61
    .line 62
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogWebVie2;->z0:Lcom/mycompany/app/view/MyProgressBar;

    .line 63
    .line 64
    invoke-virtual {v0, v3}, Lcom/mycompany/app/view/MyProgressBar;->setSkipDraw(Z)V

    .line 65
    .line 66
    .line 67
    const/16 v0, 0x32

    .line 68
    .line 69
    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    .line 70
    .line 71
    .line 72
    move-result p1

    .line 73
    invoke-virtual {p0, p1}, Lcom/mycompany/app/dialog/DialogWebVie2;->J(I)V

    .line 74
    .line 75
    .line 76
    return-void

    .line 77
    :cond_2
    if-lt v0, p1, :cond_3

    .line 78
    .line 79
    goto :goto_0

    .line 80
    :cond_3
    add-int/lit8 v0, v0, 0x3

    .line 81
    .line 82
    int-to-float p1, v0

    .line 83
    invoke-virtual {v1, p1}, Lcom/mycompany/app/view/MyProgressBar;->setProgress(F)V

    .line 84
    .line 85
    .line 86
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogWebVie2;->k1:Ljava/lang/Runnable;

    .line 87
    .line 88
    if-eqz p1, :cond_4

    .line 89
    .line 90
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogWebVie2;->z0:Lcom/mycompany/app/view/MyProgressBar;

    .line 91
    .line 92
    invoke-virtual {v0, p1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 93
    .line 94
    .line 95
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogWebVie2;->z0:Lcom/mycompany/app/view/MyProgressBar;

    .line 96
    .line 97
    invoke-virtual {v0, p1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 98
    .line 99
    .line 100
    :cond_4
    :goto_0
    return-void
.end method

.method public final dismiss()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/mycompany/app/view/MyDialogBottom;->c:Z

    .line 3
    .line 4
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogWebVie2;->c0:Landroid/content/Context;

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    iget-boolean v0, p0, Lcom/mycompany/app/dialog/DialogWebVie2;->f0:Z

    .line 10
    .line 11
    if-nez v0, :cond_1

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_1
    iget-boolean v0, p0, Lcom/mycompany/app/dialog/DialogWebVie2;->i0:Z

    .line 15
    .line 16
    sput-boolean v0, Lcom/mycompany/app/pref/PrefWeb;->M:Z

    .line 17
    .line 18
    :goto_0
    invoke-virtual {p0}, Lcom/mycompany/app/dialog/DialogWebVie2;->F()V

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogWebVie2;->y0:Lcom/mycompany/app/web/WebNestView;

    .line 22
    .line 23
    const/4 v1, 0x0

    .line 24
    if-eqz v0, :cond_2

    .line 25
    .line 26
    const/4 v2, 0x1

    .line 27
    invoke-static {v0, v2}, Lcom/mycompany/app/main/MainUtil;->F(Landroid/webkit/WebView;Z)V

    .line 28
    .line 29
    .line 30
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogWebVie2;->y0:Lcom/mycompany/app/web/WebNestView;

    .line 31
    .line 32
    :cond_2
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogWebVie2;->q0:Lcom/mycompany/app/view/MyDialogRelative;

    .line 33
    .line 34
    if-eqz v0, :cond_3

    .line 35
    .line 36
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyDialogRelative;->c()V

    .line 37
    .line 38
    .line 39
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogWebVie2;->q0:Lcom/mycompany/app/view/MyDialogRelative;

    .line 40
    .line 41
    :cond_3
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogWebVie2;->t0:Lcom/mycompany/app/view/MyButtonImage;

    .line 42
    .line 43
    if-eqz v0, :cond_4

    .line 44
    .line 45
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyButtonImage;->j()V

    .line 46
    .line 47
    .line 48
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogWebVie2;->t0:Lcom/mycompany/app/view/MyButtonImage;

    .line 49
    .line 50
    :cond_4
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogWebVie2;->u0:Lcom/mycompany/app/view/MyButtonImage;

    .line 51
    .line 52
    if-eqz v0, :cond_5

    .line 53
    .line 54
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyButtonImage;->j()V

    .line 55
    .line 56
    .line 57
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogWebVie2;->u0:Lcom/mycompany/app/view/MyButtonImage;

    .line 58
    .line 59
    :cond_5
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogWebVie2;->v0:Lcom/mycompany/app/view/MyButtonImage;

    .line 60
    .line 61
    if-eqz v0, :cond_6

    .line 62
    .line 63
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyButtonImage;->j()V

    .line 64
    .line 65
    .line 66
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogWebVie2;->v0:Lcom/mycompany/app/view/MyButtonImage;

    .line 67
    .line 68
    :cond_6
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogWebVie2;->w0:Lcom/mycompany/app/view/MyButtonImage;

    .line 69
    .line 70
    if-eqz v0, :cond_7

    .line 71
    .line 72
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyButtonImage;->j()V

    .line 73
    .line 74
    .line 75
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogWebVie2;->w0:Lcom/mycompany/app/view/MyButtonImage;

    .line 76
    .line 77
    :cond_7
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogWebVie2;->z0:Lcom/mycompany/app/view/MyProgressBar;

    .line 78
    .line 79
    if-eqz v0, :cond_8

    .line 80
    .line 81
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyProgressBar;->f()V

    .line 82
    .line 83
    .line 84
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogWebVie2;->z0:Lcom/mycompany/app/view/MyProgressBar;

    .line 85
    .line 86
    :cond_8
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogWebVie2;->A0:Lcom/mycompany/app/view/MyScrollBar;

    .line 87
    .line 88
    if-eqz v0, :cond_9

    .line 89
    .line 90
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyScrollBar;->k()V

    .line 91
    .line 92
    .line 93
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogWebVie2;->A0:Lcom/mycompany/app/view/MyScrollBar;

    .line 94
    .line 95
    :cond_9
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogWebVie2;->B0:Lcom/mycompany/app/wview/WebUpView;

    .line 96
    .line 97
    if-eqz v0, :cond_a

    .line 98
    .line 99
    invoke-virtual {v0}, Lcom/mycompany/app/wview/WebUpView;->e()V

    .line 100
    .line 101
    .line 102
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogWebVie2;->B0:Lcom/mycompany/app/wview/WebUpView;

    .line 103
    .line 104
    :cond_a
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogWebVie2;->C0:Lcom/mycompany/app/view/MyScrollNavi;

    .line 105
    .line 106
    if-eqz v0, :cond_b

    .line 107
    .line 108
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyScrollNavi;->g()V

    .line 109
    .line 110
    .line 111
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogWebVie2;->C0:Lcom/mycompany/app/view/MyScrollNavi;

    .line 112
    .line 113
    :cond_b
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogWebVie2;->D0:Lcom/mycompany/app/view/MyScrollNavi;

    .line 114
    .line 115
    if-eqz v0, :cond_c

    .line 116
    .line 117
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyScrollNavi;->g()V

    .line 118
    .line 119
    .line 120
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogWebVie2;->D0:Lcom/mycompany/app/view/MyScrollNavi;

    .line 121
    .line 122
    :cond_c
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogWebVie2;->V0:Lcom/mycompany/app/web/WebTransControl;

    .line 123
    .line 124
    if-eqz v0, :cond_d

    .line 125
    .line 126
    invoke-virtual {v0}, Lcom/mycompany/app/web/WebTransControl;->c()V

    .line 127
    .line 128
    .line 129
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogWebVie2;->V0:Lcom/mycompany/app/web/WebTransControl;

    .line 130
    .line 131
    :cond_d
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogWebVie2;->b0:Lcom/mycompany/app/setting/SettingInfo;

    .line 132
    .line 133
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogWebVie2;->c0:Landroid/content/Context;

    .line 134
    .line 135
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogWebVie2;->d0:Lcom/mycompany/app/dialog/DialogWebView$DialogWebListener;

    .line 136
    .line 137
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogWebVie2;->l0:Ljava/lang/String;

    .line 138
    .line 139
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogWebVie2;->m0:Ljava/lang/String;

    .line 140
    .line 141
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogWebVie2;->n0:Ljava/lang/String;

    .line 142
    .line 143
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogWebVie2;->p0:Ljava/lang/String;

    .line 144
    .line 145
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogWebVie2;->r0:Landroid/widget/FrameLayout;

    .line 146
    .line 147
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogWebVie2;->s0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 148
    .line 149
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogWebVie2;->x0:Landroid/widget/FrameLayout;

    .line 150
    .line 151
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogWebVie2;->E0:Landroid/view/GestureDetector;

    .line 152
    .line 153
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogWebVie2;->g1:Lcom/mycompany/app/web/WebClean;

    .line 154
    .line 155
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogWebVie2;->W0:Lcom/mycompany/app/view/MyLineFrame;

    .line 156
    .line 157
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogWebVie2;->U0:Landroid/view/View;

    .line 158
    .line 159
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogWebVie2;->a1:Ljava/lang/String;

    .line 160
    .line 161
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogWebVie2;->b1:Ljava/lang/String;

    .line 162
    .line 163
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogWebVie2;->c1:Ljava/lang/String;

    .line 164
    .line 165
    invoke-super {p0}, Lcom/mycompany/app/view/MyDialogBottom;->dismiss()V

    .line 166
    .line 167
    .line 168
    return-void
.end method

.method public final dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 12

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogWebVie2;->E0:Landroid/view/GestureDetector;

    .line 6
    .line 7
    if-eqz v1, :cond_1

    .line 8
    .line 9
    invoke-virtual {v1, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 10
    .line 11
    .line 12
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    const/4 v2, 0x3

    .line 17
    const/4 v3, 0x2

    .line 18
    const/4 v4, 0x1

    .line 19
    if-eqz v1, :cond_28

    .line 20
    .line 21
    iget-boolean v5, p0, Lcom/mycompany/app/dialog/DialogWebVie2;->e0:Z

    .line 22
    .line 23
    if-eq v1, v4, :cond_1f

    .line 24
    .line 25
    if-eq v1, v3, :cond_2

    .line 26
    .line 27
    if-eq v1, v2, :cond_1f

    .line 28
    .line 29
    goto/16 :goto_6

    .line 30
    .line 31
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 36
    .line 37
    .line 38
    move-result v6

    .line 39
    iget v7, p0, Lcom/mycompany/app/dialog/DialogWebVie2;->H0:F

    .line 40
    .line 41
    sub-float v8, v6, v7

    .line 42
    .line 43
    sget v9, Lcom/mycompany/app/main/MainApp;->r1:I

    .line 44
    .line 45
    int-to-float v9, v9

    .line 46
    cmpl-float v8, v8, v9

    .line 47
    .line 48
    if-lez v8, :cond_4

    .line 49
    .line 50
    iput v6, p0, Lcom/mycompany/app/dialog/DialogWebVie2;->H0:F

    .line 51
    .line 52
    iget-object v7, p0, Lcom/mycompany/app/dialog/DialogWebVie2;->A0:Lcom/mycompany/app/view/MyScrollBar;

    .line 53
    .line 54
    if-eqz v7, :cond_3

    .line 55
    .line 56
    iget-boolean v7, v7, Lcom/mycompany/app/view/MyScrollBar;->r0:Z

    .line 57
    .line 58
    if-eqz v7, :cond_3

    .line 59
    .line 60
    iput-boolean v0, p0, Lcom/mycompany/app/dialog/DialogWebVie2;->I0:Z

    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_3
    iput-boolean v4, p0, Lcom/mycompany/app/dialog/DialogWebVie2;->I0:Z

    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_4
    sub-float/2addr v7, v6

    .line 67
    cmpl-float v7, v7, v9

    .line 68
    .line 69
    if-lez v7, :cond_6

    .line 70
    .line 71
    iput v6, p0, Lcom/mycompany/app/dialog/DialogWebVie2;->H0:F

    .line 72
    .line 73
    iget-object v7, p0, Lcom/mycompany/app/dialog/DialogWebVie2;->A0:Lcom/mycompany/app/view/MyScrollBar;

    .line 74
    .line 75
    if-eqz v7, :cond_5

    .line 76
    .line 77
    iget-boolean v7, v7, Lcom/mycompany/app/view/MyScrollBar;->r0:Z

    .line 78
    .line 79
    if-eqz v7, :cond_5

    .line 80
    .line 81
    iput-boolean v4, p0, Lcom/mycompany/app/dialog/DialogWebVie2;->I0:Z

    .line 82
    .line 83
    goto :goto_0

    .line 84
    :cond_5
    iput-boolean v0, p0, Lcom/mycompany/app/dialog/DialogWebVie2;->I0:Z

    .line 85
    .line 86
    :cond_6
    :goto_0
    iget v7, p0, Lcom/mycompany/app/dialog/DialogWebVie2;->K0:I

    .line 87
    .line 88
    if-nez v7, :cond_7

    .line 89
    .line 90
    goto/16 :goto_6

    .line 91
    .line 92
    :cond_7
    iget v8, p0, Lcom/mycompany/app/dialog/DialogWebVie2;->L0:I

    .line 93
    .line 94
    iget v9, p0, Lcom/mycompany/app/dialog/DialogWebVie2;->a0:I

    .line 95
    .line 96
    if-nez v8, :cond_19

    .line 97
    .line 98
    iget-object v8, p0, Lcom/mycompany/app/dialog/DialogWebVie2;->y0:Lcom/mycompany/app/web/WebNestView;

    .line 99
    .line 100
    if-nez v8, :cond_8

    .line 101
    .line 102
    goto/16 :goto_6

    .line 103
    .line 104
    :cond_8
    iget-boolean v10, p0, Lcom/mycompany/app/dialog/DialogWebVie2;->M0:Z

    .line 105
    .line 106
    if-nez v10, :cond_a

    .line 107
    .line 108
    iget-boolean v11, v8, Lcom/mycompany/app/web/WebNestView;->V0:Z

    .line 109
    .line 110
    if-eqz v11, :cond_b

    .line 111
    .line 112
    if-ne v7, v2, :cond_9

    .line 113
    .line 114
    iput v3, p0, Lcom/mycompany/app/dialog/DialogWebVie2;->J0:I

    .line 115
    .line 116
    iput v0, p0, Lcom/mycompany/app/dialog/DialogWebVie2;->K0:I

    .line 117
    .line 118
    goto/16 :goto_6

    .line 119
    .line 120
    :cond_9
    iget v11, p0, Lcom/mycompany/app/dialog/DialogWebVie2;->O0:I

    .line 121
    .line 122
    add-int/2addr v11, v4

    .line 123
    iput v11, p0, Lcom/mycompany/app/dialog/DialogWebVie2;->O0:I

    .line 124
    .line 125
    if-le v11, v3, :cond_b

    .line 126
    .line 127
    iput v3, p0, Lcom/mycompany/app/dialog/DialogWebVie2;->J0:I

    .line 128
    .line 129
    iput v0, p0, Lcom/mycompany/app/dialog/DialogWebVie2;->K0:I

    .line 130
    .line 131
    goto/16 :goto_6

    .line 132
    .line 133
    :cond_a
    iget-object v11, p0, Lcom/mycompany/app/dialog/DialogWebVie2;->A0:Lcom/mycompany/app/view/MyScrollBar;

    .line 134
    .line 135
    if-eqz v11, :cond_b

    .line 136
    .line 137
    iget-boolean v11, v11, Lcom/mycompany/app/view/MyScrollBar;->r0:Z

    .line 138
    .line 139
    if-eqz v11, :cond_b

    .line 140
    .line 141
    iput v3, p0, Lcom/mycompany/app/dialog/DialogWebVie2;->J0:I

    .line 142
    .line 143
    iput v0, p0, Lcom/mycompany/app/dialog/DialogWebVie2;->K0:I

    .line 144
    .line 145
    goto/16 :goto_6

    .line 146
    .line 147
    :cond_b
    iget-boolean v11, p0, Lcom/mycompany/app/dialog/DialogWebVie2;->P0:Z

    .line 148
    .line 149
    if-nez v11, :cond_11

    .line 150
    .line 151
    if-eqz v10, :cond_c

    .line 152
    .line 153
    iget v2, p0, Lcom/mycompany/app/dialog/DialogWebVie2;->F0:F

    .line 154
    .line 155
    sub-float v2, v1, v2

    .line 156
    .line 157
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    .line 158
    .line 159
    .line 160
    move-result v2

    .line 161
    int-to-float v3, v9

    .line 162
    cmpl-float v2, v2, v3

    .line 163
    .line 164
    if-lez v2, :cond_19

    .line 165
    .line 166
    iput-boolean v4, p0, Lcom/mycompany/app/dialog/DialogWebVie2;->P0:Z

    .line 167
    .line 168
    iput v0, p0, Lcom/mycompany/app/dialog/DialogWebVie2;->O0:I

    .line 169
    .line 170
    goto/16 :goto_4

    .line 171
    .line 172
    :cond_c
    invoke-virtual {v8}, Lcom/mycompany/app/web/WebNestView;->x()Z

    .line 173
    .line 174
    .line 175
    move-result v5

    .line 176
    if-eqz v5, :cond_d

    .line 177
    .line 178
    iget v5, p0, Lcom/mycompany/app/dialog/DialogWebVie2;->N0:I

    .line 179
    .line 180
    add-int/2addr v5, v4

    .line 181
    iput v5, p0, Lcom/mycompany/app/dialog/DialogWebVie2;->N0:I

    .line 182
    .line 183
    iput v0, p0, Lcom/mycompany/app/dialog/DialogWebVie2;->O0:I

    .line 184
    .line 185
    goto :goto_1

    .line 186
    :cond_d
    iput v0, p0, Lcom/mycompany/app/dialog/DialogWebVie2;->N0:I

    .line 187
    .line 188
    :goto_1
    iget v5, p0, Lcom/mycompany/app/dialog/DialogWebVie2;->K0:I

    .line 189
    .line 190
    if-ne v5, v2, :cond_f

    .line 191
    .line 192
    iget v2, p0, Lcom/mycompany/app/dialog/DialogWebVie2;->N0:I

    .line 193
    .line 194
    if-le v2, v3, :cond_e

    .line 195
    .line 196
    move v0, v4

    .line 197
    :cond_e
    iput-boolean v0, p0, Lcom/mycompany/app/dialog/DialogWebVie2;->P0:Z

    .line 198
    .line 199
    goto :goto_4

    .line 200
    :cond_f
    iget v2, p0, Lcom/mycompany/app/dialog/DialogWebVie2;->N0:I

    .line 201
    .line 202
    if-lez v2, :cond_10

    .line 203
    .line 204
    move v0, v4

    .line 205
    :cond_10
    iput-boolean v0, p0, Lcom/mycompany/app/dialog/DialogWebVie2;->P0:Z

    .line 206
    .line 207
    goto :goto_4

    .line 208
    :cond_11
    iget v10, p0, Lcom/mycompany/app/dialog/DialogWebVie2;->F0:F

    .line 209
    .line 210
    cmpl-float v10, v1, v10

    .line 211
    .line 212
    if-lez v10, :cond_14

    .line 213
    .line 214
    if-eq v7, v4, :cond_12

    .line 215
    .line 216
    if-ne v7, v2, :cond_17

    .line 217
    .line 218
    :cond_12
    iget v2, p0, Lcom/mycompany/app/dialog/DialogWebVie2;->J0:I

    .line 219
    .line 220
    if-nez v2, :cond_17

    .line 221
    .line 222
    if-eqz v5, :cond_13

    .line 223
    .line 224
    invoke-virtual {v8}, Landroid/webkit/WebView;->canGoForward()Z

    .line 225
    .line 226
    .line 227
    move-result v2

    .line 228
    goto :goto_2

    .line 229
    :cond_13
    invoke-virtual {v8}, Landroid/webkit/WebView;->canGoBack()Z

    .line 230
    .line 231
    .line 232
    move-result v2

    .line 233
    :goto_2
    if-nez v2, :cond_17

    .line 234
    .line 235
    iput v3, p0, Lcom/mycompany/app/dialog/DialogWebVie2;->J0:I

    .line 236
    .line 237
    iput v0, p0, Lcom/mycompany/app/dialog/DialogWebVie2;->K0:I

    .line 238
    .line 239
    goto/16 :goto_6

    .line 240
    .line 241
    :cond_14
    if-eq v7, v3, :cond_15

    .line 242
    .line 243
    if-ne v7, v2, :cond_17

    .line 244
    .line 245
    :cond_15
    iget v2, p0, Lcom/mycompany/app/dialog/DialogWebVie2;->J0:I

    .line 246
    .line 247
    if-nez v2, :cond_17

    .line 248
    .line 249
    if-eqz v5, :cond_16

    .line 250
    .line 251
    invoke-virtual {v8}, Landroid/webkit/WebView;->canGoBack()Z

    .line 252
    .line 253
    .line 254
    move-result v2

    .line 255
    goto :goto_3

    .line 256
    :cond_16
    invoke-virtual {v8}, Landroid/webkit/WebView;->canGoForward()Z

    .line 257
    .line 258
    .line 259
    move-result v2

    .line 260
    :goto_3
    if-nez v2, :cond_17

    .line 261
    .line 262
    iput v3, p0, Lcom/mycompany/app/dialog/DialogWebVie2;->J0:I

    .line 263
    .line 264
    iput v0, p0, Lcom/mycompany/app/dialog/DialogWebVie2;->K0:I

    .line 265
    .line 266
    goto/16 :goto_6

    .line 267
    .line 268
    :cond_17
    iget v0, p0, Lcom/mycompany/app/dialog/DialogWebVie2;->F0:F

    .line 269
    .line 270
    cmpl-float v0, v1, v0

    .line 271
    .line 272
    if-lez v0, :cond_18

    .line 273
    .line 274
    move v3, v4

    .line 275
    :cond_18
    iput v3, p0, Lcom/mycompany/app/dialog/DialogWebVie2;->L0:I

    .line 276
    .line 277
    iput v1, p0, Lcom/mycompany/app/dialog/DialogWebVie2;->F0:F

    .line 278
    .line 279
    iput v6, p0, Lcom/mycompany/app/dialog/DialogWebVie2;->G0:F

    .line 280
    .line 281
    :cond_19
    :goto_4
    iget v0, p0, Lcom/mycompany/app/dialog/DialogWebVie2;->L0:I

    .line 282
    .line 283
    if-nez v0, :cond_1a

    .line 284
    .line 285
    goto/16 :goto_6

    .line 286
    .line 287
    :cond_1a
    iget-object v2, p0, Lcom/mycompany/app/dialog/DialogWebVie2;->y0:Lcom/mycompany/app/web/WebNestView;

    .line 288
    .line 289
    if-nez v2, :cond_1b

    .line 290
    .line 291
    goto/16 :goto_6

    .line 292
    .line 293
    :cond_1b
    iput-boolean v4, v2, Lcom/mycompany/app/web/WebNestView;->S0:Z

    .line 294
    .line 295
    if-ne v0, v4, :cond_1d

    .line 296
    .line 297
    iget v0, p0, Lcom/mycompany/app/dialog/DialogWebVie2;->J0:I

    .line 298
    .line 299
    if-nez v0, :cond_2c

    .line 300
    .line 301
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogWebVie2;->C0:Lcom/mycompany/app/view/MyScrollNavi;

    .line 302
    .line 303
    if-eqz v0, :cond_2c

    .line 304
    .line 305
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyScrollNavi;->f()Z

    .line 306
    .line 307
    .line 308
    move-result v0

    .line 309
    if-nez v0, :cond_1c

    .line 310
    .line 311
    iget v0, p0, Lcom/mycompany/app/dialog/DialogWebVie2;->F0:F

    .line 312
    .line 313
    cmpl-float v0, v1, v0

    .line 314
    .line 315
    if-lez v0, :cond_2c

    .line 316
    .line 317
    iget v0, p0, Lcom/mycompany/app/dialog/DialogWebVie2;->G0:F

    .line 318
    .line 319
    sub-float/2addr v6, v0

    .line 320
    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    .line 321
    .line 322
    .line 323
    move-result v0

    .line 324
    int-to-float v2, v9

    .line 325
    cmpg-float v0, v0, v2

    .line 326
    .line 327
    if-gez v0, :cond_2c

    .line 328
    .line 329
    :cond_1c
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogWebVie2;->C0:Lcom/mycompany/app/view/MyScrollNavi;

    .line 330
    .line 331
    iget v2, p0, Lcom/mycompany/app/dialog/DialogWebVie2;->F0:F

    .line 332
    .line 333
    invoke-virtual {v0, v2, v1}, Lcom/mycompany/app/view/MyScrollNavi;->h(FF)V

    .line 334
    .line 335
    .line 336
    goto/16 :goto_6

    .line 337
    .line 338
    :cond_1d
    iget v0, p0, Lcom/mycompany/app/dialog/DialogWebVie2;->J0:I

    .line 339
    .line 340
    if-nez v0, :cond_2c

    .line 341
    .line 342
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogWebVie2;->D0:Lcom/mycompany/app/view/MyScrollNavi;

    .line 343
    .line 344
    if-eqz v0, :cond_2c

    .line 345
    .line 346
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyScrollNavi;->f()Z

    .line 347
    .line 348
    .line 349
    move-result v0

    .line 350
    if-nez v0, :cond_1e

    .line 351
    .line 352
    iget v0, p0, Lcom/mycompany/app/dialog/DialogWebVie2;->F0:F

    .line 353
    .line 354
    cmpg-float v0, v1, v0

    .line 355
    .line 356
    if-gez v0, :cond_2c

    .line 357
    .line 358
    iget v0, p0, Lcom/mycompany/app/dialog/DialogWebVie2;->G0:F

    .line 359
    .line 360
    sub-float/2addr v6, v0

    .line 361
    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    .line 362
    .line 363
    .line 364
    move-result v0

    .line 365
    int-to-float v2, v9

    .line 366
    cmpg-float v0, v0, v2

    .line 367
    .line 368
    if-gez v0, :cond_2c

    .line 369
    .line 370
    :cond_1e
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogWebVie2;->D0:Lcom/mycompany/app/view/MyScrollNavi;

    .line 371
    .line 372
    iget v2, p0, Lcom/mycompany/app/dialog/DialogWebVie2;->F0:F

    .line 373
    .line 374
    invoke-virtual {v0, v2, v1}, Lcom/mycompany/app/view/MyScrollNavi;->h(FF)V

    .line 375
    .line 376
    .line 377
    goto/16 :goto_6

    .line 378
    .line 379
    :cond_1f
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogWebVie2;->y0:Lcom/mycompany/app/web/WebNestView;

    .line 380
    .line 381
    if-nez v1, :cond_20

    .line 382
    .line 383
    goto/16 :goto_6

    .line 384
    .line 385
    :cond_20
    iget v1, p0, Lcom/mycompany/app/dialog/DialogWebVie2;->J0:I

    .line 386
    .line 387
    if-nez v1, :cond_25

    .line 388
    .line 389
    iget v1, p0, Lcom/mycompany/app/dialog/DialogWebVie2;->L0:I

    .line 390
    .line 391
    if-ne v1, v4, :cond_22

    .line 392
    .line 393
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogWebVie2;->C0:Lcom/mycompany/app/view/MyScrollNavi;

    .line 394
    .line 395
    if-eqz v1, :cond_24

    .line 396
    .line 397
    invoke-virtual {v1}, Lcom/mycompany/app/view/MyScrollNavi;->e()Z

    .line 398
    .line 399
    .line 400
    move-result v1

    .line 401
    if-eqz v1, :cond_24

    .line 402
    .line 403
    if-eqz v5, :cond_21

    .line 404
    .line 405
    invoke-virtual {p0}, Lcom/mycompany/app/dialog/DialogWebVie2;->H()Z

    .line 406
    .line 407
    .line 408
    goto :goto_5

    .line 409
    :cond_21
    invoke-virtual {p0}, Lcom/mycompany/app/dialog/DialogWebVie2;->I()Z

    .line 410
    .line 411
    .line 412
    goto :goto_5

    .line 413
    :cond_22
    if-ne v1, v3, :cond_24

    .line 414
    .line 415
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogWebVie2;->D0:Lcom/mycompany/app/view/MyScrollNavi;

    .line 416
    .line 417
    if-eqz v1, :cond_24

    .line 418
    .line 419
    invoke-virtual {v1}, Lcom/mycompany/app/view/MyScrollNavi;->e()Z

    .line 420
    .line 421
    .line 422
    move-result v1

    .line 423
    if-eqz v1, :cond_24

    .line 424
    .line 425
    if-eqz v5, :cond_23

    .line 426
    .line 427
    invoke-virtual {p0}, Lcom/mycompany/app/dialog/DialogWebVie2;->I()Z

    .line 428
    .line 429
    .line 430
    goto :goto_5

    .line 431
    :cond_23
    invoke-virtual {p0}, Lcom/mycompany/app/dialog/DialogWebVie2;->H()Z

    .line 432
    .line 433
    .line 434
    goto :goto_5

    .line 435
    :cond_24
    move v4, v0

    .line 436
    :goto_5
    if-nez v4, :cond_25

    .line 437
    .line 438
    invoke-virtual {p0, v0, v0}, Lcom/mycompany/app/dialog/DialogWebVie2;->G(ZZ)V

    .line 439
    .line 440
    .line 441
    :cond_25
    iput v3, p0, Lcom/mycompany/app/dialog/DialogWebVie2;->J0:I

    .line 442
    .line 443
    iput v0, p0, Lcom/mycompany/app/dialog/DialogWebVie2;->K0:I

    .line 444
    .line 445
    iput v0, p0, Lcom/mycompany/app/dialog/DialogWebVie2;->L0:I

    .line 446
    .line 447
    iput-boolean v0, p0, Lcom/mycompany/app/dialog/DialogWebVie2;->M0:Z

    .line 448
    .line 449
    iput v0, p0, Lcom/mycompany/app/dialog/DialogWebVie2;->N0:I

    .line 450
    .line 451
    iput v0, p0, Lcom/mycompany/app/dialog/DialogWebVie2;->O0:I

    .line 452
    .line 453
    iput-boolean v0, p0, Lcom/mycompany/app/dialog/DialogWebVie2;->P0:Z

    .line 454
    .line 455
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogWebVie2;->C0:Lcom/mycompany/app/view/MyScrollNavi;

    .line 456
    .line 457
    if-eqz v0, :cond_26

    .line 458
    .line 459
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyScrollNavi;->c()V

    .line 460
    .line 461
    .line 462
    :cond_26
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogWebVie2;->D0:Lcom/mycompany/app/view/MyScrollNavi;

    .line 463
    .line 464
    if-eqz v0, :cond_27

    .line 465
    .line 466
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyScrollNavi;->c()V

    .line 467
    .line 468
    .line 469
    :cond_27
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogWebVie2;->A0:Lcom/mycompany/app/view/MyScrollBar;

    .line 470
    .line 471
    if-eqz v0, :cond_2c

    .line 472
    .line 473
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyFadeView;->e()V

    .line 474
    .line 475
    .line 476
    goto/16 :goto_6

    .line 477
    .line 478
    :cond_28
    iput v3, p0, Lcom/mycompany/app/dialog/DialogWebVie2;->J0:I

    .line 479
    .line 480
    iput v0, p0, Lcom/mycompany/app/dialog/DialogWebVie2;->K0:I

    .line 481
    .line 482
    iput v0, p0, Lcom/mycompany/app/dialog/DialogWebVie2;->L0:I

    .line 483
    .line 484
    iput-boolean v0, p0, Lcom/mycompany/app/dialog/DialogWebVie2;->M0:Z

    .line 485
    .line 486
    iput v0, p0, Lcom/mycompany/app/dialog/DialogWebVie2;->N0:I

    .line 487
    .line 488
    iput v0, p0, Lcom/mycompany/app/dialog/DialogWebVie2;->O0:I

    .line 489
    .line 490
    iput-boolean v0, p0, Lcom/mycompany/app/dialog/DialogWebVie2;->P0:Z

    .line 491
    .line 492
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogWebVie2;->y0:Lcom/mycompany/app/web/WebNestView;

    .line 493
    .line 494
    if-nez v1, :cond_29

    .line 495
    .line 496
    goto :goto_6

    .line 497
    :cond_29
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 498
    .line 499
    .line 500
    move-result v1

    .line 501
    iput v1, p0, Lcom/mycompany/app/dialog/DialogWebVie2;->F0:F

    .line 502
    .line 503
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 504
    .line 505
    .line 506
    move-result v1

    .line 507
    iput v1, p0, Lcom/mycompany/app/dialog/DialogWebVie2;->G0:F

    .line 508
    .line 509
    iput v1, p0, Lcom/mycompany/app/dialog/DialogWebVie2;->H0:F

    .line 510
    .line 511
    sget v1, Lcom/mycompany/app/pref/PrefZone;->R:I

    .line 512
    .line 513
    iget v5, p0, Lcom/mycompany/app/dialog/DialogWebVie2;->F0:F

    .line 514
    .line 515
    sget v6, Lcom/mycompany/app/main/MainApp;->r1:I

    .line 516
    .line 517
    add-int/2addr v6, v1

    .line 518
    int-to-float v6, v6

    .line 519
    cmpg-float v6, v5, v6

    .line 520
    .line 521
    if-gez v6, :cond_2a

    .line 522
    .line 523
    int-to-float v1, v1

    .line 524
    cmpg-float v1, v5, v1

    .line 525
    .line 526
    if-gez v1, :cond_2c

    .line 527
    .line 528
    sget v1, Lcom/mycompany/app/pref/PrefZone;->M:I

    .line 529
    .line 530
    if-nez v1, :cond_2c

    .line 531
    .line 532
    iput v0, p0, Lcom/mycompany/app/dialog/DialogWebVie2;->J0:I

    .line 533
    .line 534
    iput v4, p0, Lcom/mycompany/app/dialog/DialogWebVie2;->K0:I

    .line 535
    .line 536
    iput-boolean v4, p0, Lcom/mycompany/app/dialog/DialogWebVie2;->M0:Z

    .line 537
    .line 538
    goto :goto_6

    .line 539
    :cond_2a
    sget v1, Lcom/mycompany/app/pref/PrefZone;->S:I

    .line 540
    .line 541
    iget-object v6, p0, Lcom/mycompany/app/dialog/DialogWebVie2;->q0:Lcom/mycompany/app/view/MyDialogRelative;

    .line 542
    .line 543
    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    .line 544
    .line 545
    .line 546
    move-result v6

    .line 547
    sget v7, Lcom/mycompany/app/main/MainApp;->r1:I

    .line 548
    .line 549
    add-int/2addr v7, v1

    .line 550
    sub-int/2addr v6, v7

    .line 551
    int-to-float v6, v6

    .line 552
    cmpl-float v5, v5, v6

    .line 553
    .line 554
    if-lez v5, :cond_2b

    .line 555
    .line 556
    iget v2, p0, Lcom/mycompany/app/dialog/DialogWebVie2;->F0:F

    .line 557
    .line 558
    iget-object v5, p0, Lcom/mycompany/app/dialog/DialogWebVie2;->q0:Lcom/mycompany/app/view/MyDialogRelative;

    .line 559
    .line 560
    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    .line 561
    .line 562
    .line 563
    move-result v5

    .line 564
    sub-int/2addr v5, v1

    .line 565
    int-to-float v1, v5

    .line 566
    cmpl-float v1, v2, v1

    .line 567
    .line 568
    if-lez v1, :cond_2c

    .line 569
    .line 570
    sget v1, Lcom/mycompany/app/pref/PrefZone;->N:I

    .line 571
    .line 572
    if-nez v1, :cond_2c

    .line 573
    .line 574
    iput v0, p0, Lcom/mycompany/app/dialog/DialogWebVie2;->J0:I

    .line 575
    .line 576
    iput v3, p0, Lcom/mycompany/app/dialog/DialogWebVie2;->K0:I

    .line 577
    .line 578
    iput-boolean v4, p0, Lcom/mycompany/app/dialog/DialogWebVie2;->M0:Z

    .line 579
    .line 580
    goto :goto_6

    .line 581
    :cond_2b
    sget v1, Lcom/mycompany/app/pref/PrefZone;->O:I

    .line 582
    .line 583
    if-nez v1, :cond_2c

    .line 584
    .line 585
    iput v0, p0, Lcom/mycompany/app/dialog/DialogWebVie2;->J0:I

    .line 586
    .line 587
    iput v2, p0, Lcom/mycompany/app/dialog/DialogWebVie2;->K0:I

    .line 588
    .line 589
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogWebVie2;->k0:Ljava/lang/String;

    .line 590
    .line 591
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 592
    .line 593
    .line 594
    move-result v0

    .line 595
    iput-boolean v0, p0, Lcom/mycompany/app/dialog/DialogWebVie2;->M0:Z

    .line 596
    .line 597
    :cond_2c
    :goto_6
    invoke-super {p0, p1}, Lcom/mycompany/app/view/MyDialogBottom;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 598
    .line 599
    .line 600
    move-result p1

    .line 601
    return p1
.end method

.method public final onBackPressed()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/mycompany/app/view/MyDialogBottom;->e()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-virtual {p0}, Lcom/mycompany/app/dialog/DialogWebVie2;->r()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final r()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogWebVie2;->y0:Lcom/mycompany/app/web/WebNestView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogWebVie2;->y0:Lcom/mycompany/app/web/WebNestView;

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/mycompany/app/web/WebNestView;->goBack()V

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :cond_0
    invoke-virtual {p0}, Lcom/mycompany/app/dialog/DialogWebVie2;->dismiss()V

    .line 18
    .line 19
    .line 20
    return-void
.end method
