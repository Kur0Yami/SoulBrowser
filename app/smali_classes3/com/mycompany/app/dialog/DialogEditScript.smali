.class public Lcom/mycompany/app/dialog/DialogEditScript;
.super Lcom/mycompany/app/dialog/DialogCast;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mycompany/app/dialog/DialogEditScript$LocalWebViewClient;,
        Lcom/mycompany/app/dialog/DialogEditScript$LocalChromeClient;,
        Lcom/mycompany/app/dialog/DialogEditScript$WebAppInterface;
    }
.end annotation


# static fields
.field public static final synthetic t0:I


# instance fields
.field public G:Lcom/mycompany/app/main/MainActivity;

.field public H:Landroid/content/Context;

.field public I:Lcom/mycompany/app/dialog/DialogEditUrl$EditUrlListener;

.field public J:Lcom/mycompany/app/main/MainItem$ChildItem;

.field public K:Z

.field public L:Lcom/mycompany/app/view/MyMainRelative;

.field public M:Lcom/mycompany/app/view/MyButtonImage;

.field public N:Landroidx/appcompat/widget/AppCompatTextView;

.field public O:Lcom/mycompany/app/view/MyButtonImage;

.field public P:Landroid/widget/RelativeLayout;

.field public Q:Landroid/widget/FrameLayout;

.field public R:Lcom/mycompany/app/web/WebSrcView;

.field public S:Z

.field public T:Lcom/mycompany/app/view/MyScrollBar;

.field public U:Landroid/view/View;

.field public V:Lcom/mycompany/app/view/MyCoverView;

.field public W:Z

.field public X:Z

.field public Y:Ljava/lang/String;

.field public Z:Ljava/lang/String;

.field public a0:Ljava/lang/String;

.field public b0:Ljava/lang/String;

.field public c0:Ljava/lang/String;

.field public d0:Lcom/mycompany/app/dialog/DialogSaveConfirm;

.field public e0:Z

.field public f0:Z

.field public g0:Ljava/lang/String;

.field public h0:Z

.field public i0:Z

.field public j0:Ljava/lang/String;

.field public k0:Ljava/lang/String;

.field public l0:Z

.field public m0:Ljava/lang/String;

.field public n0:Ljava/lang/String;

.field public o0:Z

.field public p0:Z

.field public q0:Ljava/lang/String;

.field public r0:Z

.field public s0:J


# direct methods
.method public constructor <init>(Lcom/mycompany/app/main/MainActivity;Lcom/mycompany/app/main/MainItem$ChildItem;Lcom/mycompany/app/dialog/DialogEditUrl$EditUrlListener;)V
    .locals 1

    .line 1
    sget-boolean v0, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    sget v0, Lnet/kaki87/soul2/testing/R$style;->DialogFullBlack:I

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    sget v0, Lnet/kaki87/soul2/testing/R$style;->DialogFullTheme:I

    .line 9
    .line 10
    :goto_0
    invoke-direct {p0, p1, v0}, Lcom/mycompany/app/dialog/DialogCast;-><init>(Lcom/mycompany/app/main/MainActivity;I)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/mycompany/app/view/MyDialogNormal;->j()V

    .line 14
    .line 15
    .line 16
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogEditScript;->G:Lcom/mycompany/app/main/MainActivity;

    .line 17
    .line 18
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogEditScript;->H:Landroid/content/Context;

    .line 23
    .line 24
    iput-object p3, p0, Lcom/mycompany/app/dialog/DialogEditScript;->I:Lcom/mycompany/app/dialog/DialogEditUrl$EditUrlListener;

    .line 25
    .line 26
    iput-object p2, p0, Lcom/mycompany/app/dialog/DialogEditScript;->J:Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 27
    .line 28
    sget-boolean p1, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 29
    .line 30
    iput-boolean p1, p0, Lcom/mycompany/app/dialog/DialogEditScript;->e0:Z

    .line 31
    .line 32
    iget-object p1, p0, Lcom/mycompany/app/view/MyDialogNormal;->i:Landroid/os/Handler;

    .line 33
    .line 34
    if-nez p1, :cond_1

    .line 35
    .line 36
    return-void

    .line 37
    :cond_1
    new-instance p2, Lcom/mycompany/app/dialog/DialogEditScript$1;

    .line 38
    .line 39
    invoke-direct {p2, p0}, Lcom/mycompany/app/dialog/DialogEditScript$1;-><init>(Lcom/mycompany/app/dialog/DialogEditScript;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 43
    .line 44
    .line 45
    new-instance p1, Lcom/mycompany/app/dialog/DialogEditScript$2;

    .line 46
    .line 47
    invoke-direct {p1, p0}, Lcom/mycompany/app/dialog/DialogEditScript$2;-><init>(Lcom/mycompany/app/dialog/DialogEditScript;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {p0, p1}, Lcom/mycompany/app/view/MyDialogNormal;->m(Ljava/lang/Runnable;)V

    .line 51
    .line 52
    .line 53
    return-void
.end method

.method public static r(Lcom/mycompany/app/dialog/DialogEditScript;Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogEditScript;->R:Lcom/mycompany/app/web/WebSrcView;

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
    iget-boolean p1, p0, Lcom/mycompany/app/dialog/DialogEditScript;->f0:Z

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
    iput-boolean p1, p0, Lcom/mycompany/app/dialog/DialogEditScript;->f0:Z

    .line 19
    .line 20
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogEditScript;->R:Lcom/mycompany/app/web/WebSrcView;

    .line 21
    .line 22
    if-nez p1, :cond_2

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_2
    new-instance v0, Lcom/mycompany/app/dialog/DialogEditScript$14;

    .line 26
    .line 27
    invoke-direct {v0, p0}, Lcom/mycompany/app/dialog/DialogEditScript$14;-><init>(Lcom/mycompany/app/dialog/DialogEditScript;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 31
    .line 32
    .line 33
    return-void

    .line 34
    :cond_3
    iget-boolean p1, p0, Lcom/mycompany/app/dialog/DialogEditScript;->f0:Z

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
    iput-boolean p1, p0, Lcom/mycompany/app/dialog/DialogEditScript;->f0:Z

    .line 41
    .line 42
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogEditScript;->R:Lcom/mycompany/app/web/WebSrcView;

    .line 43
    .line 44
    if-nez p1, :cond_5

    .line 45
    .line 46
    :goto_0
    return-void

    .line 47
    :cond_5
    new-instance v0, Lcom/mycompany/app/dialog/DialogEditScript$15;

    .line 48
    .line 49
    invoke-direct {v0, p0}, Lcom/mycompany/app/dialog/DialogEditScript$15;-><init>(Lcom/mycompany/app/dialog/DialogEditScript;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 53
    .line 54
    .line 55
    return-void
.end method

.method public static s(Lcom/mycompany/app/dialog/DialogEditScript;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogEditScript;->R:Lcom/mycompany/app/web/WebSrcView;

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogEditScript;->I:Lcom/mycompany/app/dialog/DialogEditUrl$EditUrlListener;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogEditScript;->c0:Ljava/lang/String;

    .line 11
    .line 12
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    iget-object p0, p0, Lcom/mycompany/app/dialog/DialogEditScript;->H:Landroid/content/Context;

    .line 19
    .line 20
    sget v0, Lnet/kaki87/soul2/testing/R$string;->empty:I

    .line 21
    .line 22
    invoke-static {p0, v0}, Lcom/mycompany/app/main/MainUtil;->e8(Landroid/content/Context;I)V

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :cond_1
    const/4 v0, 0x1

    .line 27
    iput-boolean v0, p0, Lcom/mycompany/app/dialog/DialogEditScript;->i0:Z

    .line 28
    .line 29
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogEditScript;->M:Lcom/mycompany/app/view/MyButtonImage;

    .line 30
    .line 31
    const/4 v1, 0x0

    .line 32
    invoke-virtual {v0, v1}, Lcom/mycompany/app/view/MyButtonImage;->setEnabled(Z)V

    .line 33
    .line 34
    .line 35
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogEditScript;->O:Lcom/mycompany/app/view/MyButtonImage;

    .line 36
    .line 37
    invoke-virtual {v0, v1}, Lcom/mycompany/app/view/MyButtonImage;->setEnabled(Z)V

    .line 38
    .line 39
    .line 40
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogEditScript;->V:Lcom/mycompany/app/view/MyCoverView;

    .line 41
    .line 42
    invoke-virtual {v0, v1}, Lcom/mycompany/app/view/MyCoverView;->setVisibility(I)V

    .line 43
    .line 44
    .line 45
    new-instance v0, Lcom/mycompany/app/dialog/DialogEditScript$20;

    .line 46
    .line 47
    invoke-direct {v0, p0}, Lcom/mycompany/app/dialog/DialogEditScript$20;-><init>(Lcom/mycompany/app/dialog/DialogEditScript;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {p0, v0}, Lcom/mycompany/app/view/MyDialogNormal;->m(Ljava/lang/Runnable;)V

    .line 51
    .line 52
    .line 53
    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public final dismiss()V
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/mycompany/app/view/MyDialogNormal;->c:Z

    .line 3
    .line 4
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogEditScript;->H:Landroid/content/Context;

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    invoke-virtual {p0}, Lcom/mycompany/app/dialog/DialogEditScript;->v()V

    .line 10
    .line 11
    .line 12
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogEditScript;->I:Lcom/mycompany/app/dialog/DialogEditUrl$EditUrlListener;

    .line 13
    .line 14
    const/4 v2, 0x0

    .line 15
    if-eqz v1, :cond_2

    .line 16
    .line 17
    iget-wide v3, p0, Lcom/mycompany/app/dialog/DialogEditScript;->s0:J

    .line 18
    .line 19
    const-wide/16 v5, 0x0

    .line 20
    .line 21
    cmp-long v5, v3, v5

    .line 22
    .line 23
    if-lez v5, :cond_1

    .line 24
    .line 25
    invoke-interface {v1, v3, v4, v2, v2}, Lcom/mycompany/app/dialog/DialogEditUrl$EditUrlListener;->a(JLjava/lang/String;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    :cond_1
    iput-object v2, p0, Lcom/mycompany/app/dialog/DialogEditScript;->I:Lcom/mycompany/app/dialog/DialogEditUrl$EditUrlListener;

    .line 29
    .line 30
    :cond_2
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogEditScript;->M:Lcom/mycompany/app/view/MyButtonImage;

    .line 31
    .line 32
    if-eqz v1, :cond_3

    .line 33
    .line 34
    invoke-virtual {v1}, Lcom/mycompany/app/view/MyButtonImage;->j()V

    .line 35
    .line 36
    .line 37
    iput-object v2, p0, Lcom/mycompany/app/dialog/DialogEditScript;->M:Lcom/mycompany/app/view/MyButtonImage;

    .line 38
    .line 39
    :cond_3
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogEditScript;->O:Lcom/mycompany/app/view/MyButtonImage;

    .line 40
    .line 41
    if-eqz v1, :cond_4

    .line 42
    .line 43
    invoke-virtual {v1}, Lcom/mycompany/app/view/MyButtonImage;->j()V

    .line 44
    .line 45
    .line 46
    iput-object v2, p0, Lcom/mycompany/app/dialog/DialogEditScript;->O:Lcom/mycompany/app/view/MyButtonImage;

    .line 47
    .line 48
    :cond_4
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogEditScript;->R:Lcom/mycompany/app/web/WebSrcView;

    .line 49
    .line 50
    if-eqz v1, :cond_6

    .line 51
    .line 52
    iget-boolean v3, p0, Lcom/mycompany/app/dialog/DialogEditScript;->S:Z

    .line 53
    .line 54
    if-eqz v3, :cond_5

    .line 55
    .line 56
    iput-boolean v0, p0, Lcom/mycompany/app/dialog/DialogEditScript;->S:Z

    .line 57
    .line 58
    invoke-virtual {v1}, Landroid/webkit/WebView;->stopLoading()V

    .line 59
    .line 60
    .line 61
    :cond_5
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogEditScript;->R:Lcom/mycompany/app/web/WebSrcView;

    .line 62
    .line 63
    invoke-static {v0}, Lcom/mycompany/app/main/MainUtil;->P6(Landroid/webkit/WebView;)V

    .line 64
    .line 65
    .line 66
    iput-object v2, p0, Lcom/mycompany/app/dialog/DialogEditScript;->R:Lcom/mycompany/app/web/WebSrcView;

    .line 67
    .line 68
    :cond_6
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogEditScript;->T:Lcom/mycompany/app/view/MyScrollBar;

    .line 69
    .line 70
    if-eqz v0, :cond_7

    .line 71
    .line 72
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyScrollBar;->k()V

    .line 73
    .line 74
    .line 75
    iput-object v2, p0, Lcom/mycompany/app/dialog/DialogEditScript;->T:Lcom/mycompany/app/view/MyScrollBar;

    .line 76
    .line 77
    :cond_7
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogEditScript;->V:Lcom/mycompany/app/view/MyCoverView;

    .line 78
    .line 79
    if-eqz v0, :cond_8

    .line 80
    .line 81
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyCoverView;->i()V

    .line 82
    .line 83
    .line 84
    iput-object v2, p0, Lcom/mycompany/app/dialog/DialogEditScript;->V:Lcom/mycompany/app/view/MyCoverView;

    .line 85
    .line 86
    :cond_8
    iput-object v2, p0, Lcom/mycompany/app/dialog/DialogEditScript;->G:Lcom/mycompany/app/main/MainActivity;

    .line 87
    .line 88
    iput-object v2, p0, Lcom/mycompany/app/dialog/DialogEditScript;->H:Landroid/content/Context;

    .line 89
    .line 90
    iput-object v2, p0, Lcom/mycompany/app/dialog/DialogEditScript;->J:Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 91
    .line 92
    iput-object v2, p0, Lcom/mycompany/app/dialog/DialogEditScript;->L:Lcom/mycompany/app/view/MyMainRelative;

    .line 93
    .line 94
    iput-object v2, p0, Lcom/mycompany/app/dialog/DialogEditScript;->N:Landroidx/appcompat/widget/AppCompatTextView;

    .line 95
    .line 96
    iput-object v2, p0, Lcom/mycompany/app/dialog/DialogEditScript;->P:Landroid/widget/RelativeLayout;

    .line 97
    .line 98
    iput-object v2, p0, Lcom/mycompany/app/dialog/DialogEditScript;->Q:Landroid/widget/FrameLayout;

    .line 99
    .line 100
    iput-object v2, p0, Lcom/mycompany/app/dialog/DialogEditScript;->U:Landroid/view/View;

    .line 101
    .line 102
    iput-object v2, p0, Lcom/mycompany/app/dialog/DialogEditScript;->Y:Ljava/lang/String;

    .line 103
    .line 104
    iput-object v2, p0, Lcom/mycompany/app/dialog/DialogEditScript;->Z:Ljava/lang/String;

    .line 105
    .line 106
    iput-object v2, p0, Lcom/mycompany/app/dialog/DialogEditScript;->a0:Ljava/lang/String;

    .line 107
    .line 108
    iput-object v2, p0, Lcom/mycompany/app/dialog/DialogEditScript;->b0:Ljava/lang/String;

    .line 109
    .line 110
    iput-object v2, p0, Lcom/mycompany/app/dialog/DialogEditScript;->c0:Ljava/lang/String;

    .line 111
    .line 112
    iput-object v2, p0, Lcom/mycompany/app/dialog/DialogEditScript;->g0:Ljava/lang/String;

    .line 113
    .line 114
    iput-object v2, p0, Lcom/mycompany/app/dialog/DialogEditScript;->j0:Ljava/lang/String;

    .line 115
    .line 116
    iput-object v2, p0, Lcom/mycompany/app/dialog/DialogEditScript;->k0:Ljava/lang/String;

    .line 117
    .line 118
    invoke-super {p0}, Lcom/mycompany/app/dialog/DialogCast;->dismiss()V

    .line 119
    .line 120
    .line 121
    return-void
.end method

.method public final l()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Lcom/mycompany/app/dialog/DialogEditScript;->t(Z)Z

    .line 3
    .line 4
    .line 5
    move-result v0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    invoke-virtual {p0}, Lcom/mycompany/app/dialog/DialogEditScript;->dismiss()V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public final onBackPressed()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/mycompany/app/view/MyDialogNormal;->e()Z

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
    invoke-virtual {p0}, Lcom/mycompany/app/dialog/DialogEditScript;->l()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final t(Z)Z
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/mycompany/app/dialog/DialogEditScript;->X:Z

    .line 2
    .line 3
    if-eqz v0, :cond_3

    .line 4
    .line 5
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogEditScript;->R:Lcom/mycompany/app/web/WebSrcView;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    goto :goto_1

    .line 10
    :cond_0
    iget-boolean v1, p0, Lcom/mycompany/app/dialog/DialogEditScript;->h0:Z

    .line 11
    .line 12
    const/4 v2, 0x1

    .line 13
    if-nez v1, :cond_2

    .line 14
    .line 15
    iget-boolean v1, p0, Lcom/mycompany/app/dialog/DialogEditScript;->i0:Z

    .line 16
    .line 17
    if-eqz v1, :cond_1

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_1
    iput-boolean v2, p0, Lcom/mycompany/app/dialog/DialogEditScript;->h0:Z

    .line 21
    .line 22
    iput-boolean p1, p0, Lcom/mycompany/app/dialog/DialogEditScript;->o0:Z

    .line 23
    .line 24
    const-string p1, "android.onEditText(document.querySelector(\'textarea\').value);"

    .line 25
    .line 26
    invoke-static {v0, p1, v2}, Lcom/mycompany/app/main/MainUtil;->I(Landroid/webkit/WebView;Ljava/lang/String;Z)V

    .line 27
    .line 28
    .line 29
    :cond_2
    :goto_0
    return v2

    .line 30
    :cond_3
    :goto_1
    const/4 p1, 0x0

    .line 31
    return p1
.end method

.method public final u()Ljava/lang/String;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogEditScript;->Y:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogEditScript;->Y:Ljava/lang/String;

    .line 10
    .line 11
    return-object v0

    .line 12
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 13
    .line 14
    .line 15
    move-result-wide v0

    .line 16
    :try_start_0
    new-instance v2, Ljava/text/SimpleDateFormat;

    .line 17
    .line 18
    const-string v3, "yyyyMMddhhmmssSSS"

    .line 19
    .line 20
    invoke-static {}, Lcom/mycompany/app/main/MainApp;->j()Ljava/util/Locale;

    .line 21
    .line 22
    .line 23
    move-result-object v4

    .line 24
    invoke-direct {v2, v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 25
    .line 26
    .line 27
    new-instance v3, Ljava/util/Date;

    .line 28
    .line 29
    invoke-direct {v3, v0, v1}, Ljava/util/Date;-><init>(J)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v2, v3}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    goto :goto_0

    .line 37
    :catch_0
    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    if-eqz v1, :cond_1

    .line 46
    .line 47
    const/4 v0, 0x0

    .line 48
    goto :goto_1

    .line 49
    :cond_1
    const-string v1, "User."

    .line 50
    .line 51
    invoke-static {v1, v0}, Landroid/support/v4/media/a;->C(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    :goto_1
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogEditScript;->Y:Ljava/lang/String;

    .line 56
    .line 57
    return-object v0
.end method

.method public final v()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogEditScript;->d0:Lcom/mycompany/app/dialog/DialogSaveConfirm;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogSaveConfirm;->dismiss()V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogEditScript;->d0:Lcom/mycompany/app/dialog/DialogSaveConfirm;

    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public final w()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogEditScript;->L:Lcom/mycompany/app/view/MyMainRelative;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    sget-boolean v2, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 11
    .line 12
    const v3, -0x70708

    .line 13
    .line 14
    .line 15
    const/high16 v4, -0x1000000

    .line 16
    .line 17
    if-eqz v2, :cond_1

    .line 18
    .line 19
    move v2, v4

    .line 20
    goto :goto_0

    .line 21
    :cond_1
    move v2, v3

    .line 22
    :goto_0
    invoke-virtual {v0, v1, v2}, Lcom/mycompany/app/view/MyMainRelative;->b(Landroid/view/Window;I)V

    .line 23
    .line 24
    .line 25
    sget-boolean v0, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 26
    .line 27
    const/16 v1, 0x1e

    .line 28
    .line 29
    if-eqz v0, :cond_4

    .line 30
    .line 31
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 32
    .line 33
    if-lt v0, v1, :cond_2

    .line 34
    .line 35
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    .line 40
    .line 41
    invoke-direct {v1, v4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 45
    .line 46
    .line 47
    :cond_2
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogEditScript;->M:Lcom/mycompany/app/view/MyButtonImage;

    .line 48
    .line 49
    sget v1, Lnet/kaki87/soul2/testing/R$drawable;->outline_chevron_left_dark_24:I

    .line 50
    .line 51
    invoke-virtual {v0, v1}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 52
    .line 53
    .line 54
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogEditScript;->N:Landroidx/appcompat/widget/AppCompatTextView;

    .line 55
    .line 56
    const v1, -0x50506

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 60
    .line 61
    .line 62
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogEditScript;->O:Lcom/mycompany/app/view/MyButtonImage;

    .line 63
    .line 64
    sget v1, Lnet/kaki87/soul2/testing/R$drawable;->outline_check_dark_20:I

    .line 65
    .line 66
    invoke-virtual {v0, v1}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 67
    .line 68
    .line 69
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogEditScript;->P:Landroid/widget/RelativeLayout;

    .line 70
    .line 71
    const v1, -0xdededf

    .line 72
    .line 73
    .line 74
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 75
    .line 76
    .line 77
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogEditScript;->R:Lcom/mycompany/app/web/WebSrcView;

    .line 78
    .line 79
    if-eqz v0, :cond_3

    .line 80
    .line 81
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 82
    .line 83
    .line 84
    :cond_3
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogEditScript;->T:Lcom/mycompany/app/view/MyScrollBar;

    .line 85
    .line 86
    const v1, -0xc0c0c1

    .line 87
    .line 88
    .line 89
    invoke-virtual {v0, v1}, Lcom/mycompany/app/view/MyScrollBar;->setPreColor(I)V

    .line 90
    .line 91
    .line 92
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogEditScript;->M:Lcom/mycompany/app/view/MyButtonImage;

    .line 93
    .line 94
    invoke-virtual {v0, v1}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 95
    .line 96
    .line 97
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogEditScript;->O:Lcom/mycompany/app/view/MyButtonImage;

    .line 98
    .line 99
    invoke-virtual {v0, v1}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 100
    .line 101
    .line 102
    return-void

    .line 103
    :cond_4
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 104
    .line 105
    if-lt v0, v1, :cond_5

    .line 106
    .line 107
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 108
    .line 109
    .line 110
    move-result-object v0

    .line 111
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    .line 112
    .line 113
    invoke-direct {v1, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 114
    .line 115
    .line 116
    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 117
    .line 118
    .line 119
    :cond_5
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogEditScript;->M:Lcom/mycompany/app/view/MyButtonImage;

    .line 120
    .line 121
    sget v1, Lnet/kaki87/soul2/testing/R$drawable;->outline_chevron_left_black_24:I

    .line 122
    .line 123
    invoke-virtual {v0, v1}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 124
    .line 125
    .line 126
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogEditScript;->N:Landroidx/appcompat/widget/AppCompatTextView;

    .line 127
    .line 128
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 129
    .line 130
    .line 131
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogEditScript;->O:Lcom/mycompany/app/view/MyButtonImage;

    .line 132
    .line 133
    sget v1, Lnet/kaki87/soul2/testing/R$drawable;->outline_check_black_20:I

    .line 134
    .line 135
    invoke-virtual {v0, v1}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 136
    .line 137
    .line 138
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogEditScript;->P:Landroid/widget/RelativeLayout;

    .line 139
    .line 140
    const/4 v1, -0x1

    .line 141
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 142
    .line 143
    .line 144
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogEditScript;->R:Lcom/mycompany/app/web/WebSrcView;

    .line 145
    .line 146
    if-eqz v0, :cond_6

    .line 147
    .line 148
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 149
    .line 150
    .line 151
    :cond_6
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogEditScript;->T:Lcom/mycompany/app/view/MyScrollBar;

    .line 152
    .line 153
    const v1, -0x252526

    .line 154
    .line 155
    .line 156
    invoke-virtual {v0, v1}, Lcom/mycompany/app/view/MyScrollBar;->setPreColor(I)V

    .line 157
    .line 158
    .line 159
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogEditScript;->M:Lcom/mycompany/app/view/MyButtonImage;

    .line 160
    .line 161
    const/high16 v1, 0x21000000

    .line 162
    .line 163
    invoke-virtual {v0, v1}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 164
    .line 165
    .line 166
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogEditScript;->O:Lcom/mycompany/app/view/MyButtonImage;

    .line 167
    .line 168
    invoke-virtual {v0, v1}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 169
    .line 170
    .line 171
    return-void
.end method
