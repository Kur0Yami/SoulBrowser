.class public Lcom/mycompany/app/web/WebEmgDialog;
.super Lcom/mycompany/app/dialog/DialogCast;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mycompany/app/web/WebEmgDialog$TypeTask;,
        Lcom/mycompany/app/web/WebEmgDialog$LocalWebViewClient;,
        Lcom/mycompany/app/web/WebEmgDialog$WebAppInterface;
    }
.end annotation


# static fields
.field public static final synthetic K0:I


# instance fields
.field public A0:Lcom/mycompany/app/web/WebEmgLoad;

.field public B0:Z

.field public C0:Z

.field public D0:Z

.field public E0:Z

.field public F0:Ljava/lang/String;

.field public G:Lcom/mycompany/app/web/WebViewActivity;

.field public G0:Z

.field public H:Landroid/content/Context;

.field public final H0:Ljava/lang/Runnable;

.field public I:Lcom/mycompany/app/web/WebGridDialog$WebImgListener;

.field public I0:I

.field public J:Z

.field public J0:Lcom/mycompany/app/cast/CastUtil;

.field public K:Lcom/mycompany/app/view/MyMainRelative;

.field public L:Lcom/mycompany/app/view/MyButtonImage;

.field public M:Landroidx/appcompat/widget/AppCompatTextView;

.field public N:Lcom/mycompany/app/view/MyButtonImage;

.field public O:Lcom/mycompany/app/view/MyButtonImage;

.field public P:Landroidx/appcompat/widget/AppCompatTextView;

.field public Q:Lcom/mycompany/app/view/MyButtonCheck;

.field public R:Lcom/mycompany/app/view/MyProgressBar;

.field public S:Lcom/mycompany/app/view/MyRecyclerView;

.field public T:Lcom/mycompany/app/view/MyScrollBar;

.field public U:Lcom/mycompany/app/view/MyFadeImage;

.field public V:Lcom/mycompany/app/view/MyCoverView;

.field public W:Lcom/mycompany/app/view/MyLineText;

.field public X:Lcom/mycompany/app/view/MyLineText;

.field public Y:Landroidx/appcompat/widget/AppCompatTextView;

.field public Z:Landroidx/appcompat/widget/AppCompatTextView;

.field public a0:Z

.field public b0:Lcom/mycompany/app/web/WebGridAdapter;

.field public c0:Lcom/mycompany/app/view/MyManagerGrid;

.field public d0:I

.field public e0:I

.field public f0:I

.field public g0:Lcom/mycompany/app/web/WebEmgTask;

.field public h0:Lcom/mycompany/app/web/WebNestView;

.field public i0:Ljava/lang/String;

.field public j0:Ljava/lang/String;

.field public k0:Ljava/util/ArrayList;

.field public l0:Lcom/mycompany/app/data/DataUrl$ImgCntItem;

.field public m0:Lcom/mycompany/app/web/WebEmgDialog$TypeTask;

.field public n0:Lcom/mycompany/app/dialog/DialogConfirm;

.field public o0:Lcom/mycompany/app/dialog/DialogImageType;

.field public p0:I

.field public q0:Lcom/mycompany/app/dialog/DialogDownList;

.field public r0:Lcom/mycompany/app/dialog/DialogDownZip;

.field public s0:Lcom/mycompany/app/dialog/DialogCreateAlbum;

.field public t0:I

.field public u0:J

.field public v0:Z

.field public w0:Z

.field public x0:Z

.field public y0:I

.field public z0:Lcom/mycompany/app/web/WebEmgLoad;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/web/WebViewActivity;Ljava/lang/String;Lcom/mycompany/app/web/WebGridDialog$WebImgListener;)V
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
    new-instance v0, Lcom/mycompany/app/web/WebEmgDialog$32;

    .line 14
    .line 15
    invoke-direct {v0, p0}, Lcom/mycompany/app/web/WebEmgDialog$32;-><init>(Lcom/mycompany/app/web/WebEmgDialog;)V

    .line 16
    .line 17
    .line 18
    iput-object v0, p0, Lcom/mycompany/app/web/WebEmgDialog;->H0:Ljava/lang/Runnable;

    .line 19
    .line 20
    invoke-virtual {p0}, Lcom/mycompany/app/view/MyDialogNormal;->j()V

    .line 21
    .line 22
    .line 23
    iput-object p1, p0, Lcom/mycompany/app/web/WebEmgDialog;->G:Lcom/mycompany/app/web/WebViewActivity;

    .line 24
    .line 25
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    iput-object p1, p0, Lcom/mycompany/app/web/WebEmgDialog;->H:Landroid/content/Context;

    .line 30
    .line 31
    iput-object p3, p0, Lcom/mycompany/app/web/WebEmgDialog;->I:Lcom/mycompany/app/web/WebGridDialog$WebImgListener;

    .line 32
    .line 33
    const/4 p1, 0x1

    .line 34
    iput-boolean p1, p0, Lcom/mycompany/app/web/WebEmgDialog;->J:Z

    .line 35
    .line 36
    sget-boolean p1, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 37
    .line 38
    iput-boolean p1, p0, Lcom/mycompany/app/web/WebEmgDialog;->B0:Z

    .line 39
    .line 40
    iput-object p2, p0, Lcom/mycompany/app/web/WebEmgDialog;->i0:Ljava/lang/String;

    .line 41
    .line 42
    const/4 p1, 0x0

    .line 43
    iput p1, p0, Lcom/mycompany/app/web/WebEmgDialog;->f0:I

    .line 44
    .line 45
    iget-object p1, p0, Lcom/mycompany/app/view/MyDialogNormal;->i:Landroid/os/Handler;

    .line 46
    .line 47
    if-nez p1, :cond_1

    .line 48
    .line 49
    return-void

    .line 50
    :cond_1
    new-instance p2, Lcom/mycompany/app/web/WebEmgDialog$1;

    .line 51
    .line 52
    invoke-direct {p2, p0}, Lcom/mycompany/app/web/WebEmgDialog$1;-><init>(Lcom/mycompany/app/web/WebEmgDialog;)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 56
    .line 57
    .line 58
    return-void
.end method

.method public static r(Lcom/mycompany/app/web/WebEmgDialog;Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebEmgDialog;->h0:Lcom/mycompany/app/web/WebNestView;

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
    iget-boolean p1, p0, Lcom/mycompany/app/web/WebEmgDialog;->C0:Z

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
    iput-boolean p1, p0, Lcom/mycompany/app/web/WebEmgDialog;->C0:Z

    .line 19
    .line 20
    iget-object p1, p0, Lcom/mycompany/app/web/WebEmgDialog;->h0:Lcom/mycompany/app/web/WebNestView;

    .line 21
    .line 22
    if-nez p1, :cond_2

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_2
    new-instance v0, Lcom/mycompany/app/web/WebEmgDialog$18;

    .line 26
    .line 27
    invoke-direct {v0, p0}, Lcom/mycompany/app/web/WebEmgDialog$18;-><init>(Lcom/mycompany/app/web/WebEmgDialog;)V

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
    iget-boolean p1, p0, Lcom/mycompany/app/web/WebEmgDialog;->C0:Z

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
    iput-boolean p1, p0, Lcom/mycompany/app/web/WebEmgDialog;->C0:Z

    .line 41
    .line 42
    iget-object p1, p0, Lcom/mycompany/app/web/WebEmgDialog;->h0:Lcom/mycompany/app/web/WebNestView;

    .line 43
    .line 44
    if-nez p1, :cond_5

    .line 45
    .line 46
    :goto_0
    return-void

    .line 47
    :cond_5
    new-instance v0, Lcom/mycompany/app/web/WebEmgDialog$19;

    .line 48
    .line 49
    invoke-direct {v0, p0}, Lcom/mycompany/app/web/WebEmgDialog$19;-><init>(Lcom/mycompany/app/web/WebEmgDialog;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {p1, v0}, Lcom/mycompany/app/web/WebNestView;->post(Ljava/lang/Runnable;)Z

    .line 53
    .line 54
    .line 55
    return-void
.end method

.method public static s(Lcom/mycompany/app/web/WebEmgDialog;I)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebEmgDialog;->S:Lcom/mycompany/app/view/MyRecyclerView;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_2

    .line 6
    :cond_0
    iget v0, p0, Lcom/mycompany/app/web/WebEmgDialog;->f0:I

    .line 7
    .line 8
    const/4 v1, 0x2

    .line 9
    if-ne v0, v1, :cond_1

    .line 10
    .line 11
    goto :goto_2

    .line 12
    :cond_1
    const/4 v1, -0x1

    .line 13
    const/4 v2, 0x1

    .line 14
    if-ne p1, v1, :cond_2

    .line 15
    .line 16
    iput p1, p0, Lcom/mycompany/app/web/WebEmgDialog;->t0:I

    .line 17
    .line 18
    iput-boolean v2, p0, Lcom/mycompany/app/web/WebEmgDialog;->w0:Z

    .line 19
    .line 20
    goto :goto_1

    .line 21
    :cond_2
    const/16 v1, 0x64

    .line 22
    .line 23
    if-eq p1, v1, :cond_6

    .line 24
    .line 25
    iget v1, p0, Lcom/mycompany/app/web/WebEmgDialog;->t0:I

    .line 26
    .line 27
    const-wide/16 v3, 0x190

    .line 28
    .line 29
    const-wide/16 v5, 0x0

    .line 30
    .line 31
    if-ne v1, p1, :cond_5

    .line 32
    .line 33
    iget-boolean p1, p0, Lcom/mycompany/app/web/WebEmgDialog;->v0:Z

    .line 34
    .line 35
    if-nez p1, :cond_4

    .line 36
    .line 37
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 38
    .line 39
    .line 40
    move-result-wide v0

    .line 41
    iget-wide v7, p0, Lcom/mycompany/app/web/WebEmgDialog;->u0:J

    .line 42
    .line 43
    cmp-long p1, v7, v5

    .line 44
    .line 45
    if-nez p1, :cond_3

    .line 46
    .line 47
    iput-wide v0, p0, Lcom/mycompany/app/web/WebEmgDialog;->u0:J

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_3
    sub-long/2addr v0, v7

    .line 51
    const-wide/16 v5, 0x1388

    .line 52
    .line 53
    cmp-long p1, v0, v5

    .line 54
    .line 55
    if-lez p1, :cond_4

    .line 56
    .line 57
    iput-boolean v2, p0, Lcom/mycompany/app/web/WebEmgDialog;->v0:Z

    .line 58
    .line 59
    iget-object p1, p0, Lcom/mycompany/app/web/WebEmgDialog;->H:Landroid/content/Context;

    .line 60
    .line 61
    sget v0, Lnet/kaki87/soul2/testing/R$string;->server_delay:I

    .line 62
    .line 63
    invoke-static {p1, v0}, Lcom/mycompany/app/main/MainUtil;->e8(Landroid/content/Context;I)V

    .line 64
    .line 65
    .line 66
    :cond_4
    :goto_0
    iget-object p1, p0, Lcom/mycompany/app/web/WebEmgDialog;->V:Lcom/mycompany/app/view/MyCoverView;

    .line 67
    .line 68
    new-instance v0, Lcom/mycompany/app/web/WebEmgDialog$24;

    .line 69
    .line 70
    invoke-direct {v0, p0}, Lcom/mycompany/app/web/WebEmgDialog$24;-><init>(Lcom/mycompany/app/web/WebEmgDialog;)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {p1, v0, v3, v4}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 74
    .line 75
    .line 76
    return-void

    .line 77
    :cond_5
    iput p1, p0, Lcom/mycompany/app/web/WebEmgDialog;->t0:I

    .line 78
    .line 79
    iput-wide v5, p0, Lcom/mycompany/app/web/WebEmgDialog;->u0:J

    .line 80
    .line 81
    const/16 v1, 0x1e

    .line 82
    .line 83
    if-ge p1, v1, :cond_6

    .line 84
    .line 85
    iget-object p1, p0, Lcom/mycompany/app/web/WebEmgDialog;->V:Lcom/mycompany/app/view/MyCoverView;

    .line 86
    .line 87
    new-instance v0, Lcom/mycompany/app/web/WebEmgDialog$25;

    .line 88
    .line 89
    invoke-direct {v0, p0}, Lcom/mycompany/app/web/WebEmgDialog$25;-><init>(Lcom/mycompany/app/web/WebEmgDialog;)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {p1, v0, v3, v4}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 93
    .line 94
    .line 95
    return-void

    .line 96
    :cond_6
    :goto_1
    if-eqz v0, :cond_7

    .line 97
    .line 98
    :goto_2
    return-void

    .line 99
    :cond_7
    iput v2, p0, Lcom/mycompany/app/web/WebEmgDialog;->f0:I

    .line 100
    .line 101
    iget-object p1, p0, Lcom/mycompany/app/web/WebEmgDialog;->V:Lcom/mycompany/app/view/MyCoverView;

    .line 102
    .line 103
    new-instance v0, Lcom/mycompany/app/web/WebEmgDialog$26;

    .line 104
    .line 105
    invoke-direct {v0, p0}, Lcom/mycompany/app/web/WebEmgDialog$26;-><init>(Lcom/mycompany/app/web/WebEmgDialog;)V

    .line 106
    .line 107
    .line 108
    const-wide/16 v1, 0xc8

    .line 109
    .line 110
    invoke-virtual {p1, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 111
    .line 112
    .line 113
    return-void
.end method

.method public static t(Lcom/mycompany/app/web/WebEmgDialog;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebEmgDialog;->b0:Lcom/mycompany/app/web/WebGridAdapter;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-boolean v1, v0, Lcom/mycompany/app/web/WebGridAdapter;->i:Z

    .line 7
    .line 8
    if-eqz v1, :cond_1

    .line 9
    .line 10
    iget-object v1, p0, Lcom/mycompany/app/web/WebEmgDialog;->i0:Ljava/lang/String;

    .line 11
    .line 12
    iget-object v2, p0, Lcom/mycompany/app/web/WebEmgDialog;->j0:Ljava/lang/String;

    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/mycompany/app/web/WebGridAdapter;->x()Ljava/util/ArrayList;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {p0, v1, v2, v0}, Lcom/mycompany/app/web/WebEmgDialog;->K(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    :cond_1
    iget-object v1, p0, Lcom/mycompany/app/web/WebEmgDialog;->i0:Ljava/lang/String;

    .line 23
    .line 24
    iget-object v2, p0, Lcom/mycompany/app/web/WebEmgDialog;->j0:Ljava/lang/String;

    .line 25
    .line 26
    iget-object v0, v0, Lcom/mycompany/app/web/WebGridAdapter;->f:Ljava/util/List;

    .line 27
    .line 28
    invoke-virtual {p0, v1, v2, v0}, Lcom/mycompany/app/web/WebEmgDialog;->K(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method public static u(Lcom/mycompany/app/web/WebEmgDialog;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebEmgDialog;->b0:Lcom/mycompany/app/web/WebGridAdapter;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-boolean v1, v0, Lcom/mycompany/app/web/WebGridAdapter;->i:Z

    .line 7
    .line 8
    if-eqz v1, :cond_1

    .line 9
    .line 10
    iget-object v1, p0, Lcom/mycompany/app/web/WebEmgDialog;->i0:Ljava/lang/String;

    .line 11
    .line 12
    iget-object v2, p0, Lcom/mycompany/app/web/WebEmgDialog;->j0:Ljava/lang/String;

    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/mycompany/app/web/WebGridAdapter;->x()Ljava/util/ArrayList;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {p0, v1, v2, v0}, Lcom/mycompany/app/web/WebEmgDialog;->M(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    :cond_1
    iget-object v1, p0, Lcom/mycompany/app/web/WebEmgDialog;->i0:Ljava/lang/String;

    .line 23
    .line 24
    iget-object v2, p0, Lcom/mycompany/app/web/WebEmgDialog;->j0:Ljava/lang/String;

    .line 25
    .line 26
    iget-object v0, v0, Lcom/mycompany/app/web/WebGridAdapter;->f:Ljava/util/List;

    .line 27
    .line 28
    invoke-virtual {p0, v1, v2, v0}, Lcom/mycompany/app/web/WebEmgDialog;->M(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method public static v(Lcom/mycompany/app/web/WebEmgDialog;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebEmgDialog;->b0:Lcom/mycompany/app/web/WebGridAdapter;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-boolean v1, v0, Lcom/mycompany/app/web/WebGridAdapter;->i:Z

    .line 7
    .line 8
    if-eqz v1, :cond_1

    .line 9
    .line 10
    iget-object v1, p0, Lcom/mycompany/app/web/WebEmgDialog;->i0:Ljava/lang/String;

    .line 11
    .line 12
    iget-object v2, p0, Lcom/mycompany/app/web/WebEmgDialog;->j0:Ljava/lang/String;

    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/mycompany/app/web/WebGridAdapter;->x()Ljava/util/ArrayList;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {p0, v1, v2, v0}, Lcom/mycompany/app/web/WebEmgDialog;->L(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    :cond_1
    iget-object v1, p0, Lcom/mycompany/app/web/WebEmgDialog;->i0:Ljava/lang/String;

    .line 23
    .line 24
    iget-object v2, p0, Lcom/mycompany/app/web/WebEmgDialog;->j0:Ljava/lang/String;

    .line 25
    .line 26
    iget-object v0, v0, Lcom/mycompany/app/web/WebGridAdapter;->f:Ljava/util/List;

    .line 27
    .line 28
    invoke-virtual {p0, v1, v2, v0}, Lcom/mycompany/app/web/WebEmgDialog;->L(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method public static w(Lcom/mycompany/app/web/WebEmgDialog;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebEmgDialog;->R:Lcom/mycompany/app/view/MyProgressBar;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    new-instance v1, Lcom/mycompany/app/web/WebEmgDialog$27;

    .line 7
    .line 8
    invoke-direct {v1, p0}, Lcom/mycompany/app/web/WebEmgDialog$27;-><init>(Lcom/mycompany/app/web/WebEmgDialog;)V

    .line 9
    .line 10
    .line 11
    const/4 p0, 0x1

    .line 12
    invoke-virtual {v0, p0, p0, v1}, Lcom/mycompany/app/view/MyProgressBar;->k(ZILcom/mycompany/app/view/MyProgressBar$MyProgressListener;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public static x(Lcom/mycompany/app/web/WebEmgDialog;I)V
    .locals 3

    .line 1
    sget-boolean v0, Lcom/mycompany/app/pref/PrefAlbum;->j:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/web/WebEmgDialog;->G:Lcom/mycompany/app/web/WebViewActivity;

    .line 7
    .line 8
    if-nez v0, :cond_1

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_1
    invoke-virtual {p0}, Lcom/mycompany/app/web/WebEmgDialog;->D()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_2

    .line 16
    .line 17
    :goto_0
    return-void

    .line 18
    :cond_2
    invoke-virtual {p0}, Lcom/mycompany/app/web/WebEmgDialog;->B()V

    .line 19
    .line 20
    .line 21
    new-instance v0, Lcom/mycompany/app/dialog/DialogConfirm;

    .line 22
    .line 23
    iget-object v1, p0, Lcom/mycompany/app/web/WebEmgDialog;->G:Lcom/mycompany/app/web/WebViewActivity;

    .line 24
    .line 25
    new-instance v2, Lcom/mycompany/app/web/WebEmgDialog$34;

    .line 26
    .line 27
    invoke-direct {v2, p0}, Lcom/mycompany/app/web/WebEmgDialog$34;-><init>(Lcom/mycompany/app/web/WebEmgDialog;)V

    .line 28
    .line 29
    .line 30
    invoke-direct {v0, v1, v2}, Lcom/mycompany/app/dialog/DialogConfirm;-><init>(Lcom/mycompany/app/main/MainActivity;Lcom/mycompany/app/dialog/DialogConfirm$DialogConfListener;)V

    .line 31
    .line 32
    .line 33
    iput-object v0, p0, Lcom/mycompany/app/web/WebEmgDialog;->n0:Lcom/mycompany/app/dialog/DialogConfirm;

    .line 34
    .line 35
    new-instance v1, Lcom/mycompany/app/web/WebEmgDialog$35;

    .line 36
    .line 37
    invoke-direct {v1, p0, p1}, Lcom/mycompany/app/web/WebEmgDialog$35;-><init>(Lcom/mycompany/app/web/WebEmgDialog;I)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0, v1}, Lcom/mycompany/app/view/MyDialogBottom;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 41
    .line 42
    .line 43
    return-void
.end method

.method public static y(Lcom/mycompany/app/web/WebEmgDialog;)V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lcom/mycompany/app/web/WebEmgDialog;->a0:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    goto :goto_1

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/web/WebEmgDialog;->b0:Lcom/mycompany/app/web/WebGridAdapter;

    .line 7
    .line 8
    if-eqz v0, :cond_6

    .line 9
    .line 10
    iget-object v0, p0, Lcom/mycompany/app/web/WebEmgDialog;->k0:Ljava/util/ArrayList;

    .line 11
    .line 12
    if-nez v0, :cond_1

    .line 13
    .line 14
    goto :goto_1

    .line 15
    :cond_1
    iget-object v0, p0, Lcom/mycompany/app/web/WebEmgDialog;->H:Landroid/content/Context;

    .line 16
    .line 17
    invoke-static {v0}, Lcom/mycompany/app/data/DataUrl;->b(Landroid/content/Context;)Lcom/mycompany/app/data/DataUrl;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    iget-object v0, v0, Lcom/mycompany/app/data/DataUrl;->a:Ljava/util/List;

    .line 22
    .line 23
    if-eqz v0, :cond_6

    .line 24
    .line 25
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    if-eqz v1, :cond_2

    .line 30
    .line 31
    goto :goto_1

    .line 32
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    iget-object v2, p0, Lcom/mycompany/app/web/WebEmgDialog;->k0:Ljava/util/ArrayList;

    .line 37
    .line 38
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 39
    .line 40
    .line 41
    move-result v2

    .line 42
    if-eq v1, v2, :cond_3

    .line 43
    .line 44
    goto :goto_1

    .line 45
    :cond_3
    const/4 v2, 0x0

    .line 46
    :goto_0
    if-ge v2, v1, :cond_4

    .line 47
    .line 48
    iget-object v3, p0, Lcom/mycompany/app/web/WebEmgDialog;->k0:Ljava/util/ArrayList;

    .line 49
    .line 50
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v4

    .line 54
    check-cast v4, Ljava/lang/String;

    .line 55
    .line 56
    invoke-virtual {v3, v2, v4}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    add-int/lit8 v2, v2, 0x1

    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_4
    iget-object v1, p0, Lcom/mycompany/app/web/WebEmgDialog;->b0:Lcom/mycompany/app/web/WebGridAdapter;

    .line 63
    .line 64
    invoke-virtual {v1, v0}, Lcom/mycompany/app/web/WebGridAdapter;->I(Ljava/util/List;)V

    .line 65
    .line 66
    .line 67
    iget-object v0, p0, Lcom/mycompany/app/view/MyDialogNormal;->i:Landroid/os/Handler;

    .line 68
    .line 69
    if-nez v0, :cond_5

    .line 70
    .line 71
    goto :goto_1

    .line 72
    :cond_5
    new-instance v1, Lcom/mycompany/app/web/WebEmgDialog$30;

    .line 73
    .line 74
    invoke-direct {v1, p0}, Lcom/mycompany/app/web/WebEmgDialog$30;-><init>(Lcom/mycompany/app/web/WebEmgDialog;)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 78
    .line 79
    .line 80
    :cond_6
    :goto_1
    return-void
.end method


# virtual methods
.method public final A()I
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebEmgDialog;->G:Lcom/mycompany/app/web/WebViewActivity;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/mycompany/app/main/MainUtil;->E0(Landroid/app/Activity;)Lcom/mycompany/app/main/MainUtil$SizeItem;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    iget v0, v0, Lcom/mycompany/app/main/MainUtil$SizeItem;->a:I

    .line 12
    .line 13
    :goto_0
    const/4 v1, 0x3

    .line 14
    iput v1, p0, Lcom/mycompany/app/web/WebEmgDialog;->d0:I

    .line 15
    .line 16
    sget v2, Lcom/mycompany/app/main/MainApp;->p1:I

    .line 17
    .line 18
    const/4 v3, 0x4

    .line 19
    mul-int/2addr v3, v2

    .line 20
    sub-int v2, v0, v3

    .line 21
    .line 22
    div-int/2addr v2, v1

    .line 23
    :goto_1
    sget v1, Lcom/mycompany/app/main/MainApp;->o1:I

    .line 24
    .line 25
    if-le v2, v1, :cond_1

    .line 26
    .line 27
    iget v1, p0, Lcom/mycompany/app/web/WebEmgDialog;->d0:I

    .line 28
    .line 29
    add-int/lit8 v2, v1, 0x1

    .line 30
    .line 31
    iput v2, p0, Lcom/mycompany/app/web/WebEmgDialog;->d0:I

    .line 32
    .line 33
    sget v3, Lcom/mycompany/app/main/MainApp;->p1:I

    .line 34
    .line 35
    add-int/lit8 v1, v1, 0x2

    .line 36
    .line 37
    mul-int/2addr v1, v3

    .line 38
    sub-int v1, v0, v1

    .line 39
    .line 40
    div-int v2, v1, v2

    .line 41
    .line 42
    goto :goto_1

    .line 43
    :cond_1
    return v2
.end method

.method public final B()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebEmgDialog;->n0:Lcom/mycompany/app/dialog/DialogConfirm;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogConfirm;->dismiss()V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/mycompany/app/web/WebEmgDialog;->n0:Lcom/mycompany/app/dialog/DialogConfirm;

    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public final C()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebEmgDialog;->R:Lcom/mycompany/app/view/MyProgressBar;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    goto :goto_0

    .line 7
    :cond_0
    iget v0, p0, Lcom/mycompany/app/web/WebEmgDialog;->f0:I

    .line 8
    .line 9
    const/4 v2, 0x2

    .line 10
    if-eq v0, v2, :cond_1

    .line 11
    .line 12
    return v1

    .line 13
    :cond_1
    iget-object v0, p0, Lcom/mycompany/app/web/WebEmgDialog;->m0:Lcom/mycompany/app/web/WebEmgDialog$TypeTask;

    .line 14
    .line 15
    if-nez v0, :cond_2

    .line 16
    .line 17
    const/4 v0, 0x1

    .line 18
    return v0

    .line 19
    :cond_2
    :goto_0
    return v1
.end method

.method public final D()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebEmgDialog;->n0:Lcom/mycompany/app/dialog/DialogConfirm;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/web/WebEmgDialog;->o0:Lcom/mycompany/app/dialog/DialogImageType;

    .line 8
    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    return v1

    .line 12
    :cond_1
    iget-object v0, p0, Lcom/mycompany/app/web/WebEmgDialog;->q0:Lcom/mycompany/app/dialog/DialogDownList;

    .line 13
    .line 14
    if-eqz v0, :cond_2

    .line 15
    .line 16
    return v1

    .line 17
    :cond_2
    iget-object v0, p0, Lcom/mycompany/app/web/WebEmgDialog;->r0:Lcom/mycompany/app/dialog/DialogDownZip;

    .line 18
    .line 19
    if-eqz v0, :cond_3

    .line 20
    .line 21
    return v1

    .line 22
    :cond_3
    iget-object v0, p0, Lcom/mycompany/app/web/WebEmgDialog;->s0:Lcom/mycompany/app/dialog/DialogCreateAlbum;

    .line 23
    .line 24
    if-eqz v0, :cond_4

    .line 25
    .line 26
    return v1

    .line 27
    :cond_4
    const/4 v0, 0x0

    .line 28
    return v0
.end method

.method public final E()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebEmgDialog;->b0:Lcom/mycompany/app/web/WebGridAdapter;

    .line 2
    .line 3
    if-eqz v0, :cond_10

    .line 4
    .line 5
    iget-object v0, p0, Lcom/mycompany/app/web/WebEmgDialog;->c0:Lcom/mycompany/app/view/MyManagerGrid;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    goto/16 :goto_b

    .line 10
    .line 11
    :cond_0
    invoke-virtual {p0}, Lcom/mycompany/app/web/WebEmgDialog;->A()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    iput v0, p0, Lcom/mycompany/app/web/WebEmgDialog;->e0:I

    .line 16
    .line 17
    iget-object v0, p0, Lcom/mycompany/app/web/WebEmgDialog;->c0:Lcom/mycompany/app/view/MyManagerGrid;

    .line 18
    .line 19
    iget v1, v0, Landroidx/recyclerview/widget/GridLayoutManager;->F:I

    .line 20
    .line 21
    iget v2, p0, Lcom/mycompany/app/web/WebEmgDialog;->d0:I

    .line 22
    .line 23
    if-eq v1, v2, :cond_1

    .line 24
    .line 25
    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/GridLayoutManager;->x1(I)V

    .line 26
    .line 27
    .line 28
    :cond_1
    iget-object v0, p0, Lcom/mycompany/app/web/WebEmgDialog;->b0:Lcom/mycompany/app/web/WebGridAdapter;

    .line 29
    .line 30
    iget v1, p0, Lcom/mycompany/app/web/WebEmgDialog;->e0:I

    .line 31
    .line 32
    iget v2, v0, Lcom/mycompany/app/web/WebGridAdapter;->h:I

    .line 33
    .line 34
    if-ne v2, v1, :cond_2

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_2
    iput v1, v0, Lcom/mycompany/app/web/WebGridAdapter;->h:I

    .line 38
    .line 39
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->g()V

    .line 40
    .line 41
    .line 42
    :goto_0
    iget-boolean v0, p0, Lcom/mycompany/app/web/WebEmgDialog;->B0:Z

    .line 43
    .line 44
    sget-boolean v1, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 45
    .line 46
    if-eq v0, v1, :cond_f

    .line 47
    .line 48
    iput-boolean v1, p0, Lcom/mycompany/app/web/WebEmgDialog;->B0:Z

    .line 49
    .line 50
    iget-object v0, p0, Lcom/mycompany/app/web/WebEmgDialog;->K:Lcom/mycompany/app/view/MyMainRelative;

    .line 51
    .line 52
    if-nez v0, :cond_3

    .line 53
    .line 54
    goto/16 :goto_a

    .line 55
    .line 56
    :cond_3
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    sget-boolean v2, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 61
    .line 62
    const v3, -0x70708

    .line 63
    .line 64
    .line 65
    const/high16 v4, -0x1000000

    .line 66
    .line 67
    if-eqz v2, :cond_4

    .line 68
    .line 69
    move v2, v4

    .line 70
    goto :goto_1

    .line 71
    :cond_4
    move v2, v3

    .line 72
    :goto_1
    invoke-virtual {v0, v1, v2}, Lcom/mycompany/app/view/MyMainRelative;->b(Landroid/view/Window;I)V

    .line 73
    .line 74
    .line 75
    sget-boolean v0, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 76
    .line 77
    const v1, -0xe19938

    .line 78
    .line 79
    .line 80
    const v2, -0x50506

    .line 81
    .line 82
    .line 83
    if-eqz v0, :cond_5

    .line 84
    .line 85
    iget-object v0, p0, Lcom/mycompany/app/web/WebEmgDialog;->M:Landroidx/appcompat/widget/AppCompatTextView;

    .line 86
    .line 87
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 88
    .line 89
    .line 90
    iget-object v0, p0, Lcom/mycompany/app/web/WebEmgDialog;->P:Landroidx/appcompat/widget/AppCompatTextView;

    .line 91
    .line 92
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 93
    .line 94
    .line 95
    iget-object v0, p0, Lcom/mycompany/app/web/WebEmgDialog;->L:Lcom/mycompany/app/view/MyButtonImage;

    .line 96
    .line 97
    sget v3, Lnet/kaki87/soul2/testing/R$drawable;->outline_chevron_left_dark_24:I

    .line 98
    .line 99
    invoke-virtual {v0, v3}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 100
    .line 101
    .line 102
    iget-object v0, p0, Lcom/mycompany/app/web/WebEmgDialog;->N:Lcom/mycompany/app/view/MyButtonImage;

    .line 103
    .line 104
    sget v3, Lnet/kaki87/soul2/testing/R$drawable;->outline_filter_list_dark_24:I

    .line 105
    .line 106
    invoke-virtual {v0, v3}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 107
    .line 108
    .line 109
    iget-object v0, p0, Lcom/mycompany/app/web/WebEmgDialog;->O:Lcom/mycompany/app/view/MyButtonImage;

    .line 110
    .line 111
    sget v3, Lnet/kaki87/soul2/testing/R$drawable;->outline_refresh_dark_24:I

    .line 112
    .line 113
    invoke-virtual {v0, v3}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 114
    .line 115
    .line 116
    iget-object v0, p0, Lcom/mycompany/app/web/WebEmgDialog;->S:Lcom/mycompany/app/view/MyRecyclerView;

    .line 117
    .line 118
    const v3, -0xdededf

    .line 119
    .line 120
    .line 121
    invoke-virtual {v0, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 122
    .line 123
    .line 124
    iget-object v0, p0, Lcom/mycompany/app/web/WebEmgDialog;->W:Lcom/mycompany/app/view/MyLineText;

    .line 125
    .line 126
    sget v3, Lnet/kaki87/soul2/testing/R$drawable;->selector_normal_dark:I

    .line 127
    .line 128
    invoke-virtual {v0, v3}, Landroidx/appcompat/widget/AppCompatTextView;->setBackgroundResource(I)V

    .line 129
    .line 130
    .line 131
    iget-object v0, p0, Lcom/mycompany/app/web/WebEmgDialog;->X:Lcom/mycompany/app/view/MyLineText;

    .line 132
    .line 133
    sget v3, Lnet/kaki87/soul2/testing/R$drawable;->selector_normal_dark:I

    .line 134
    .line 135
    invoke-virtual {v0, v3}, Landroidx/appcompat/widget/AppCompatTextView;->setBackgroundResource(I)V

    .line 136
    .line 137
    .line 138
    iget-object v0, p0, Lcom/mycompany/app/web/WebEmgDialog;->Y:Landroidx/appcompat/widget/AppCompatTextView;

    .line 139
    .line 140
    sget v3, Lnet/kaki87/soul2/testing/R$drawable;->selector_normal_dark:I

    .line 141
    .line 142
    invoke-virtual {v0, v3}, Landroidx/appcompat/widget/AppCompatTextView;->setBackgroundResource(I)V

    .line 143
    .line 144
    .line 145
    iget-object v0, p0, Lcom/mycompany/app/web/WebEmgDialog;->Z:Landroidx/appcompat/widget/AppCompatTextView;

    .line 146
    .line 147
    invoke-virtual {v0, v4}, Landroid/view/View;->setBackgroundColor(I)V

    .line 148
    .line 149
    .line 150
    iget-object v0, p0, Lcom/mycompany/app/web/WebEmgDialog;->Z:Landroidx/appcompat/widget/AppCompatTextView;

    .line 151
    .line 152
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 153
    .line 154
    .line 155
    iget-object v0, p0, Lcom/mycompany/app/web/WebEmgDialog;->Q:Lcom/mycompany/app/view/MyButtonCheck;

    .line 156
    .line 157
    sget v3, Lnet/kaki87/soul2/testing/R$drawable;->baseline_check_circle_dark_24:I

    .line 158
    .line 159
    sget v4, Lnet/kaki87/soul2/testing/R$drawable;->outline_radio_button_unchecked_dark_24:I

    .line 160
    .line 161
    invoke-virtual {v0, v3, v4}, Lcom/mycompany/app/view/MyButtonCheck;->p(II)V

    .line 162
    .line 163
    .line 164
    iget-object v0, p0, Lcom/mycompany/app/web/WebEmgDialog;->L:Lcom/mycompany/app/view/MyButtonImage;

    .line 165
    .line 166
    const v3, -0xc0c0c1

    .line 167
    .line 168
    .line 169
    invoke-virtual {v0, v3}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 170
    .line 171
    .line 172
    iget-object v0, p0, Lcom/mycompany/app/web/WebEmgDialog;->N:Lcom/mycompany/app/view/MyButtonImage;

    .line 173
    .line 174
    invoke-virtual {v0, v3}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 175
    .line 176
    .line 177
    iget-object v0, p0, Lcom/mycompany/app/web/WebEmgDialog;->O:Lcom/mycompany/app/view/MyButtonImage;

    .line 178
    .line 179
    invoke-virtual {v0, v3}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 180
    .line 181
    .line 182
    iget-object v0, p0, Lcom/mycompany/app/web/WebEmgDialog;->Q:Lcom/mycompany/app/view/MyButtonCheck;

    .line 183
    .line 184
    invoke-virtual {v0, v3}, Lcom/mycompany/app/view/MyButtonCheck;->setBgPreColor(I)V

    .line 185
    .line 186
    .line 187
    goto :goto_2

    .line 188
    :cond_5
    iget-object v0, p0, Lcom/mycompany/app/web/WebEmgDialog;->M:Landroidx/appcompat/widget/AppCompatTextView;

    .line 189
    .line 190
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 191
    .line 192
    .line 193
    iget-object v0, p0, Lcom/mycompany/app/web/WebEmgDialog;->P:Landroidx/appcompat/widget/AppCompatTextView;

    .line 194
    .line 195
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 196
    .line 197
    .line 198
    iget-object v0, p0, Lcom/mycompany/app/web/WebEmgDialog;->L:Lcom/mycompany/app/view/MyButtonImage;

    .line 199
    .line 200
    sget v4, Lnet/kaki87/soul2/testing/R$drawable;->outline_chevron_left_black_24:I

    .line 201
    .line 202
    invoke-virtual {v0, v4}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 203
    .line 204
    .line 205
    iget-object v0, p0, Lcom/mycompany/app/web/WebEmgDialog;->N:Lcom/mycompany/app/view/MyButtonImage;

    .line 206
    .line 207
    sget v4, Lnet/kaki87/soul2/testing/R$drawable;->outline_filter_list_black_24:I

    .line 208
    .line 209
    invoke-virtual {v0, v4}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 210
    .line 211
    .line 212
    iget-object v0, p0, Lcom/mycompany/app/web/WebEmgDialog;->O:Lcom/mycompany/app/view/MyButtonImage;

    .line 213
    .line 214
    sget v4, Lnet/kaki87/soul2/testing/R$drawable;->outline_refresh_black_24:I

    .line 215
    .line 216
    invoke-virtual {v0, v4}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 217
    .line 218
    .line 219
    iget-object v0, p0, Lcom/mycompany/app/web/WebEmgDialog;->S:Lcom/mycompany/app/view/MyRecyclerView;

    .line 220
    .line 221
    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 222
    .line 223
    .line 224
    iget-object v0, p0, Lcom/mycompany/app/web/WebEmgDialog;->W:Lcom/mycompany/app/view/MyLineText;

    .line 225
    .line 226
    sget v4, Lnet/kaki87/soul2/testing/R$drawable;->selector_normal_gray:I

    .line 227
    .line 228
    invoke-virtual {v0, v4}, Landroidx/appcompat/widget/AppCompatTextView;->setBackgroundResource(I)V

    .line 229
    .line 230
    .line 231
    iget-object v0, p0, Lcom/mycompany/app/web/WebEmgDialog;->X:Lcom/mycompany/app/view/MyLineText;

    .line 232
    .line 233
    sget v4, Lnet/kaki87/soul2/testing/R$drawable;->selector_normal_gray:I

    .line 234
    .line 235
    invoke-virtual {v0, v4}, Landroidx/appcompat/widget/AppCompatTextView;->setBackgroundResource(I)V

    .line 236
    .line 237
    .line 238
    iget-object v0, p0, Lcom/mycompany/app/web/WebEmgDialog;->Y:Landroidx/appcompat/widget/AppCompatTextView;

    .line 239
    .line 240
    sget v4, Lnet/kaki87/soul2/testing/R$drawable;->selector_normal_gray:I

    .line 241
    .line 242
    invoke-virtual {v0, v4}, Landroidx/appcompat/widget/AppCompatTextView;->setBackgroundResource(I)V

    .line 243
    .line 244
    .line 245
    iget-object v0, p0, Lcom/mycompany/app/web/WebEmgDialog;->Z:Landroidx/appcompat/widget/AppCompatTextView;

    .line 246
    .line 247
    invoke-virtual {v0, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 248
    .line 249
    .line 250
    iget-object v0, p0, Lcom/mycompany/app/web/WebEmgDialog;->Z:Landroidx/appcompat/widget/AppCompatTextView;

    .line 251
    .line 252
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 253
    .line 254
    .line 255
    iget-object v0, p0, Lcom/mycompany/app/web/WebEmgDialog;->Q:Lcom/mycompany/app/view/MyButtonCheck;

    .line 256
    .line 257
    sget v3, Lnet/kaki87/soul2/testing/R$drawable;->baseline_check_circle_black_24:I

    .line 258
    .line 259
    sget v4, Lnet/kaki87/soul2/testing/R$drawable;->outline_radio_button_unchecked_black_24:I

    .line 260
    .line 261
    invoke-virtual {v0, v3, v4}, Lcom/mycompany/app/view/MyButtonCheck;->p(II)V

    .line 262
    .line 263
    .line 264
    iget-object v0, p0, Lcom/mycompany/app/web/WebEmgDialog;->L:Lcom/mycompany/app/view/MyButtonImage;

    .line 265
    .line 266
    const/high16 v3, 0x21000000

    .line 267
    .line 268
    invoke-virtual {v0, v3}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 269
    .line 270
    .line 271
    iget-object v0, p0, Lcom/mycompany/app/web/WebEmgDialog;->N:Lcom/mycompany/app/view/MyButtonImage;

    .line 272
    .line 273
    invoke-virtual {v0, v3}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 274
    .line 275
    .line 276
    iget-object v0, p0, Lcom/mycompany/app/web/WebEmgDialog;->O:Lcom/mycompany/app/view/MyButtonImage;

    .line 277
    .line 278
    invoke-virtual {v0, v3}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 279
    .line 280
    .line 281
    iget-object v0, p0, Lcom/mycompany/app/web/WebEmgDialog;->Q:Lcom/mycompany/app/view/MyButtonCheck;

    .line 282
    .line 283
    invoke-virtual {v0, v3}, Lcom/mycompany/app/view/MyButtonCheck;->setBgPreColor(I)V

    .line 284
    .line 285
    .line 286
    :goto_2
    iget-object v0, p0, Lcom/mycompany/app/web/WebEmgDialog;->W:Lcom/mycompany/app/view/MyLineText;

    .line 287
    .line 288
    invoke-virtual {v0}, Landroid/view/View;->isEnabled()Z

    .line 289
    .line 290
    .line 291
    move-result v0

    .line 292
    const v3, -0x252526

    .line 293
    .line 294
    .line 295
    const v4, -0x7f7f80

    .line 296
    .line 297
    .line 298
    if-eqz v0, :cond_7

    .line 299
    .line 300
    iget-object v0, p0, Lcom/mycompany/app/web/WebEmgDialog;->W:Lcom/mycompany/app/view/MyLineText;

    .line 301
    .line 302
    sget-boolean v5, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 303
    .line 304
    if-eqz v5, :cond_6

    .line 305
    .line 306
    move v5, v2

    .line 307
    goto :goto_3

    .line 308
    :cond_6
    move v5, v1

    .line 309
    :goto_3
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 310
    .line 311
    .line 312
    goto :goto_5

    .line 313
    :cond_7
    iget-object v0, p0, Lcom/mycompany/app/web/WebEmgDialog;->W:Lcom/mycompany/app/view/MyLineText;

    .line 314
    .line 315
    sget-boolean v5, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 316
    .line 317
    if-eqz v5, :cond_8

    .line 318
    .line 319
    move v5, v4

    .line 320
    goto :goto_4

    .line 321
    :cond_8
    move v5, v3

    .line 322
    :goto_4
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 323
    .line 324
    .line 325
    :goto_5
    iget-object v0, p0, Lcom/mycompany/app/web/WebEmgDialog;->X:Lcom/mycompany/app/view/MyLineText;

    .line 326
    .line 327
    invoke-virtual {v0}, Landroid/view/View;->isEnabled()Z

    .line 328
    .line 329
    .line 330
    move-result v0

    .line 331
    if-eqz v0, :cond_a

    .line 332
    .line 333
    iget-object v0, p0, Lcom/mycompany/app/web/WebEmgDialog;->X:Lcom/mycompany/app/view/MyLineText;

    .line 334
    .line 335
    sget-boolean v5, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 336
    .line 337
    if-eqz v5, :cond_9

    .line 338
    .line 339
    move v5, v2

    .line 340
    goto :goto_6

    .line 341
    :cond_9
    move v5, v1

    .line 342
    :goto_6
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 343
    .line 344
    .line 345
    goto :goto_8

    .line 346
    :cond_a
    iget-object v0, p0, Lcom/mycompany/app/web/WebEmgDialog;->X:Lcom/mycompany/app/view/MyLineText;

    .line 347
    .line 348
    sget-boolean v5, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 349
    .line 350
    if-eqz v5, :cond_b

    .line 351
    .line 352
    move v5, v4

    .line 353
    goto :goto_7

    .line 354
    :cond_b
    move v5, v3

    .line 355
    :goto_7
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 356
    .line 357
    .line 358
    :goto_8
    iget-object v0, p0, Lcom/mycompany/app/web/WebEmgDialog;->Y:Landroidx/appcompat/widget/AppCompatTextView;

    .line 359
    .line 360
    invoke-virtual {v0}, Landroid/view/View;->isEnabled()Z

    .line 361
    .line 362
    .line 363
    move-result v0

    .line 364
    if-eqz v0, :cond_d

    .line 365
    .line 366
    iget-object v0, p0, Lcom/mycompany/app/web/WebEmgDialog;->Y:Landroidx/appcompat/widget/AppCompatTextView;

    .line 367
    .line 368
    sget-boolean v3, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 369
    .line 370
    if-eqz v3, :cond_c

    .line 371
    .line 372
    move v1, v2

    .line 373
    :cond_c
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 374
    .line 375
    .line 376
    goto :goto_9

    .line 377
    :cond_d
    iget-object v0, p0, Lcom/mycompany/app/web/WebEmgDialog;->Y:Landroidx/appcompat/widget/AppCompatTextView;

    .line 378
    .line 379
    sget-boolean v1, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 380
    .line 381
    if-eqz v1, :cond_e

    .line 382
    .line 383
    move v3, v4

    .line 384
    :cond_e
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 385
    .line 386
    .line 387
    :goto_9
    iget-object v0, p0, Lcom/mycompany/app/web/WebEmgDialog;->b0:Lcom/mycompany/app/web/WebGridAdapter;

    .line 388
    .line 389
    if-eqz v0, :cond_f

    .line 390
    .line 391
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->g()V

    .line 392
    .line 393
    .line 394
    :cond_f
    :goto_a
    invoke-virtual {p0}, Lcom/mycompany/app/view/MyDialogNormal;->f()V

    .line 395
    .line 396
    .line 397
    :cond_10
    :goto_b
    return-void
.end method

.method public final F(Z)V
    .locals 2

    .line 1
    if-eqz p1, :cond_8

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/mycompany/app/web/WebEmgDialog;->B()V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lcom/mycompany/app/web/WebEmgDialog;->o0:Lcom/mycompany/app/dialog/DialogImageType;

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    invoke-virtual {p1}, Lcom/mycompany/app/dialog/DialogImageType;->dismiss()V

    .line 12
    .line 13
    .line 14
    iput-object v0, p0, Lcom/mycompany/app/web/WebEmgDialog;->o0:Lcom/mycompany/app/dialog/DialogImageType;

    .line 15
    .line 16
    :cond_0
    iget-object p1, p0, Lcom/mycompany/app/web/WebEmgDialog;->q0:Lcom/mycompany/app/dialog/DialogDownList;

    .line 17
    .line 18
    if-eqz p1, :cond_1

    .line 19
    .line 20
    invoke-virtual {p1}, Lcom/mycompany/app/dialog/DialogDownList;->dismiss()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lcom/mycompany/app/web/WebEmgDialog;->q0:Lcom/mycompany/app/dialog/DialogDownList;

    .line 24
    .line 25
    :cond_1
    iget-object p1, p0, Lcom/mycompany/app/web/WebEmgDialog;->r0:Lcom/mycompany/app/dialog/DialogDownZip;

    .line 26
    .line 27
    if-eqz p1, :cond_2

    .line 28
    .line 29
    invoke-virtual {p1}, Lcom/mycompany/app/dialog/DialogDownZip;->dismiss()V

    .line 30
    .line 31
    .line 32
    iput-object v0, p0, Lcom/mycompany/app/web/WebEmgDialog;->r0:Lcom/mycompany/app/dialog/DialogDownZip;

    .line 33
    .line 34
    :cond_2
    iget-object p1, p0, Lcom/mycompany/app/web/WebEmgDialog;->s0:Lcom/mycompany/app/dialog/DialogCreateAlbum;

    .line 35
    .line 36
    if-eqz p1, :cond_3

    .line 37
    .line 38
    invoke-virtual {p1}, Lcom/mycompany/app/dialog/DialogCreateAlbum;->dismiss()V

    .line 39
    .line 40
    .line 41
    iput-object v0, p0, Lcom/mycompany/app/web/WebEmgDialog;->s0:Lcom/mycompany/app/dialog/DialogCreateAlbum;

    .line 42
    .line 43
    :cond_3
    iget-object p1, p0, Lcom/mycompany/app/web/WebEmgDialog;->m0:Lcom/mycompany/app/web/WebEmgDialog$TypeTask;

    .line 44
    .line 45
    if-eqz p1, :cond_4

    .line 46
    .line 47
    const/4 v1, 0x1

    .line 48
    iput-boolean v1, p1, Lcom/mycompany/app/async/MyAsyncTask;->c:Z

    .line 49
    .line 50
    :cond_4
    iput-object v0, p0, Lcom/mycompany/app/web/WebEmgDialog;->m0:Lcom/mycompany/app/web/WebEmgDialog$TypeTask;

    .line 51
    .line 52
    iget-object p1, p0, Lcom/mycompany/app/web/WebEmgDialog;->g0:Lcom/mycompany/app/web/WebEmgTask;

    .line 53
    .line 54
    if-eqz p1, :cond_5

    .line 55
    .line 56
    invoke-virtual {p1}, Lcom/mycompany/app/web/WebEmgTask;->d()V

    .line 57
    .line 58
    .line 59
    iput-object v0, p0, Lcom/mycompany/app/web/WebEmgDialog;->g0:Lcom/mycompany/app/web/WebEmgTask;

    .line 60
    .line 61
    :cond_5
    iget-object p1, p0, Lcom/mycompany/app/web/WebEmgDialog;->z0:Lcom/mycompany/app/web/WebEmgLoad;

    .line 62
    .line 63
    if-eqz p1, :cond_6

    .line 64
    .line 65
    invoke-virtual {p1}, Lcom/mycompany/app/web/WebEmgLoad;->b()V

    .line 66
    .line 67
    .line 68
    iput-object v0, p0, Lcom/mycompany/app/web/WebEmgDialog;->z0:Lcom/mycompany/app/web/WebEmgLoad;

    .line 69
    .line 70
    :cond_6
    iget-object p1, p0, Lcom/mycompany/app/web/WebEmgDialog;->A0:Lcom/mycompany/app/web/WebEmgLoad;

    .line 71
    .line 72
    if-eqz p1, :cond_7

    .line 73
    .line 74
    invoke-virtual {p1}, Lcom/mycompany/app/web/WebEmgLoad;->b()V

    .line 75
    .line 76
    .line 77
    iput-object v0, p0, Lcom/mycompany/app/web/WebEmgDialog;->A0:Lcom/mycompany/app/web/WebEmgLoad;

    .line 78
    .line 79
    :cond_7
    return-void

    .line 80
    :cond_8
    sget p1, Lcom/mycompany/app/pref/PrefAlbum;->k:I

    .line 81
    .line 82
    iput p1, p0, Lcom/mycompany/app/web/WebEmgDialog;->y0:I

    .line 83
    .line 84
    return-void
.end method

.method public final G()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/mycompany/app/web/WebEmgDialog;->J:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Lcom/mycompany/app/web/WebEmgDialog;->J:Z

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    invoke-virtual {p0}, Lcom/mycompany/app/web/WebEmgDialog;->C()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    iget-object v0, p0, Lcom/mycompany/app/web/WebEmgDialog;->S:Lcom/mycompany/app/view/MyRecyclerView;

    .line 16
    .line 17
    const/4 v1, 0x1

    .line 18
    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Lcom/mycompany/app/web/WebEmgDialog;->R:Lcom/mycompany/app/view/MyProgressBar;

    .line 22
    .line 23
    const/4 v1, 0x2

    .line 24
    invoke-virtual {v0, v1}, Lcom/mycompany/app/view/MyProgressBar;->setIncrease(I)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0}, Lcom/mycompany/app/web/WebEmgDialog;->H()V

    .line 28
    .line 29
    .line 30
    :cond_1
    iget v0, p0, Lcom/mycompany/app/web/WebEmgDialog;->y0:I

    .line 31
    .line 32
    sget v1, Lcom/mycompany/app/pref/PrefAlbum;->k:I

    .line 33
    .line 34
    if-eq v0, v1, :cond_2

    .line 35
    .line 36
    iget-object v2, p0, Lcom/mycompany/app/web/WebEmgDialog;->l0:Lcom/mycompany/app/data/DataUrl$ImgCntItem;

    .line 37
    .line 38
    invoke-static {v2, v0, v1}, Lcom/mycompany/app/main/MainUtil;->f(Lcom/mycompany/app/data/DataUrl$ImgCntItem;II)Z

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    if-eqz v0, :cond_2

    .line 43
    .line 44
    iget-object v0, p0, Lcom/mycompany/app/web/WebEmgDialog;->k0:Ljava/util/ArrayList;

    .line 45
    .line 46
    sget v1, Lcom/mycompany/app/pref/PrefAlbum;->k:I

    .line 47
    .line 48
    invoke-virtual {p0, v1, v0}, Lcom/mycompany/app/web/WebEmgDialog;->z(ILjava/util/ArrayList;)V

    .line 49
    .line 50
    .line 51
    :cond_2
    return-void
.end method

.method public final H()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebEmgDialog;->b0:Lcom/mycompany/app/web/WebGridAdapter;

    .line 2
    .line 3
    if-eqz v0, :cond_12

    .line 4
    .line 5
    iget-object v1, p0, Lcom/mycompany/app/web/WebEmgDialog;->W:Lcom/mycompany/app/view/MyLineText;

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    goto/16 :goto_a

    .line 10
    .line 11
    :cond_0
    iget-boolean v1, v0, Lcom/mycompany/app/web/WebGridAdapter;->i:Z

    .line 12
    .line 13
    const v2, -0x252526

    .line 14
    .line 15
    .line 16
    const v3, -0x7f7f80

    .line 17
    .line 18
    .line 19
    const v4, -0xe19938

    .line 20
    .line 21
    .line 22
    const v5, -0x50506

    .line 23
    .line 24
    .line 25
    const/4 v6, 0x1

    .line 26
    const/4 v7, 0x0

    .line 27
    if-eqz v1, :cond_9

    .line 28
    .line 29
    iget v0, v0, Lcom/mycompany/app/web/WebGridAdapter;->k:I

    .line 30
    .line 31
    if-lez v0, :cond_1

    .line 32
    .line 33
    invoke-virtual {p0}, Lcom/mycompany/app/web/WebEmgDialog;->C()Z

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    goto :goto_0

    .line 38
    :cond_1
    move v0, v7

    .line 39
    :goto_0
    if-eqz v0, :cond_5

    .line 40
    .line 41
    iget-object v0, p0, Lcom/mycompany/app/web/WebEmgDialog;->W:Lcom/mycompany/app/view/MyLineText;

    .line 42
    .line 43
    invoke-virtual {v0, v6}, Landroid/view/View;->setEnabled(Z)V

    .line 44
    .line 45
    .line 46
    iget-object v0, p0, Lcom/mycompany/app/web/WebEmgDialog;->X:Lcom/mycompany/app/view/MyLineText;

    .line 47
    .line 48
    invoke-virtual {v0, v6}, Landroid/view/View;->setEnabled(Z)V

    .line 49
    .line 50
    .line 51
    iget-object v0, p0, Lcom/mycompany/app/web/WebEmgDialog;->Y:Landroidx/appcompat/widget/AppCompatTextView;

    .line 52
    .line 53
    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 54
    .line 55
    .line 56
    iget-object v0, p0, Lcom/mycompany/app/web/WebEmgDialog;->W:Lcom/mycompany/app/view/MyLineText;

    .line 57
    .line 58
    sget-boolean v1, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 59
    .line 60
    if-eqz v1, :cond_2

    .line 61
    .line 62
    move v1, v5

    .line 63
    goto :goto_1

    .line 64
    :cond_2
    move v1, v4

    .line 65
    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 66
    .line 67
    .line 68
    iget-object v0, p0, Lcom/mycompany/app/web/WebEmgDialog;->X:Lcom/mycompany/app/view/MyLineText;

    .line 69
    .line 70
    sget-boolean v1, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 71
    .line 72
    if-eqz v1, :cond_3

    .line 73
    .line 74
    move v1, v5

    .line 75
    goto :goto_2

    .line 76
    :cond_3
    move v1, v4

    .line 77
    :goto_2
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 78
    .line 79
    .line 80
    iget-object v0, p0, Lcom/mycompany/app/web/WebEmgDialog;->Y:Landroidx/appcompat/widget/AppCompatTextView;

    .line 81
    .line 82
    sget-boolean v1, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 83
    .line 84
    if-eqz v1, :cond_4

    .line 85
    .line 86
    move v4, v5

    .line 87
    :cond_4
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 88
    .line 89
    .line 90
    return-void

    .line 91
    :cond_5
    iget-object v0, p0, Lcom/mycompany/app/web/WebEmgDialog;->W:Lcom/mycompany/app/view/MyLineText;

    .line 92
    .line 93
    invoke-virtual {v0, v7}, Landroid/view/View;->setEnabled(Z)V

    .line 94
    .line 95
    .line 96
    iget-object v0, p0, Lcom/mycompany/app/web/WebEmgDialog;->X:Lcom/mycompany/app/view/MyLineText;

    .line 97
    .line 98
    invoke-virtual {v0, v7}, Landroid/view/View;->setEnabled(Z)V

    .line 99
    .line 100
    .line 101
    iget-object v0, p0, Lcom/mycompany/app/web/WebEmgDialog;->Y:Landroidx/appcompat/widget/AppCompatTextView;

    .line 102
    .line 103
    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 104
    .line 105
    .line 106
    iget-object v0, p0, Lcom/mycompany/app/web/WebEmgDialog;->W:Lcom/mycompany/app/view/MyLineText;

    .line 107
    .line 108
    sget-boolean v1, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 109
    .line 110
    if-eqz v1, :cond_6

    .line 111
    .line 112
    move v1, v3

    .line 113
    goto :goto_3

    .line 114
    :cond_6
    move v1, v2

    .line 115
    :goto_3
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 116
    .line 117
    .line 118
    iget-object v0, p0, Lcom/mycompany/app/web/WebEmgDialog;->X:Lcom/mycompany/app/view/MyLineText;

    .line 119
    .line 120
    sget-boolean v1, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 121
    .line 122
    if-eqz v1, :cond_7

    .line 123
    .line 124
    move v1, v3

    .line 125
    goto :goto_4

    .line 126
    :cond_7
    move v1, v2

    .line 127
    :goto_4
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 128
    .line 129
    .line 130
    iget-object v0, p0, Lcom/mycompany/app/web/WebEmgDialog;->Y:Landroidx/appcompat/widget/AppCompatTextView;

    .line 131
    .line 132
    sget-boolean v1, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 133
    .line 134
    if-eqz v1, :cond_8

    .line 135
    .line 136
    move v2, v3

    .line 137
    :cond_8
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 138
    .line 139
    .line 140
    return-void

    .line 141
    :cond_9
    invoke-virtual {v0}, Lcom/mycompany/app/web/WebGridAdapter;->y()I

    .line 142
    .line 143
    .line 144
    move-result v0

    .line 145
    if-lez v0, :cond_a

    .line 146
    .line 147
    iget-object v0, p0, Lcom/mycompany/app/web/WebEmgDialog;->U:Lcom/mycompany/app/view/MyFadeImage;

    .line 148
    .line 149
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyFadeImage;->d()V

    .line 150
    .line 151
    .line 152
    invoke-virtual {p0}, Lcom/mycompany/app/web/WebEmgDialog;->C()Z

    .line 153
    .line 154
    .line 155
    move-result v0

    .line 156
    goto :goto_5

    .line 157
    :cond_a
    iget-object v0, p0, Lcom/mycompany/app/web/WebEmgDialog;->U:Lcom/mycompany/app/view/MyFadeImage;

    .line 158
    .line 159
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyFadeImage;->f()V

    .line 160
    .line 161
    .line 162
    move v0, v7

    .line 163
    :goto_5
    if-eqz v0, :cond_e

    .line 164
    .line 165
    iget-object v0, p0, Lcom/mycompany/app/web/WebEmgDialog;->W:Lcom/mycompany/app/view/MyLineText;

    .line 166
    .line 167
    invoke-virtual {v0, v6}, Landroid/view/View;->setEnabled(Z)V

    .line 168
    .line 169
    .line 170
    iget-object v0, p0, Lcom/mycompany/app/web/WebEmgDialog;->X:Lcom/mycompany/app/view/MyLineText;

    .line 171
    .line 172
    invoke-virtual {v0, v6}, Landroid/view/View;->setEnabled(Z)V

    .line 173
    .line 174
    .line 175
    iget-object v0, p0, Lcom/mycompany/app/web/WebEmgDialog;->Y:Landroidx/appcompat/widget/AppCompatTextView;

    .line 176
    .line 177
    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 178
    .line 179
    .line 180
    iget-object v0, p0, Lcom/mycompany/app/web/WebEmgDialog;->W:Lcom/mycompany/app/view/MyLineText;

    .line 181
    .line 182
    sget-boolean v1, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 183
    .line 184
    if-eqz v1, :cond_b

    .line 185
    .line 186
    move v1, v5

    .line 187
    goto :goto_6

    .line 188
    :cond_b
    move v1, v4

    .line 189
    :goto_6
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 190
    .line 191
    .line 192
    iget-object v0, p0, Lcom/mycompany/app/web/WebEmgDialog;->X:Lcom/mycompany/app/view/MyLineText;

    .line 193
    .line 194
    sget-boolean v1, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 195
    .line 196
    if-eqz v1, :cond_c

    .line 197
    .line 198
    move v1, v5

    .line 199
    goto :goto_7

    .line 200
    :cond_c
    move v1, v4

    .line 201
    :goto_7
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 202
    .line 203
    .line 204
    iget-object v0, p0, Lcom/mycompany/app/web/WebEmgDialog;->Y:Landroidx/appcompat/widget/AppCompatTextView;

    .line 205
    .line 206
    sget-boolean v1, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 207
    .line 208
    if-eqz v1, :cond_d

    .line 209
    .line 210
    move v4, v5

    .line 211
    :cond_d
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 212
    .line 213
    .line 214
    return-void

    .line 215
    :cond_e
    iget-object v0, p0, Lcom/mycompany/app/web/WebEmgDialog;->W:Lcom/mycompany/app/view/MyLineText;

    .line 216
    .line 217
    invoke-virtual {v0, v7}, Landroid/view/View;->setEnabled(Z)V

    .line 218
    .line 219
    .line 220
    iget-object v0, p0, Lcom/mycompany/app/web/WebEmgDialog;->X:Lcom/mycompany/app/view/MyLineText;

    .line 221
    .line 222
    invoke-virtual {v0, v7}, Landroid/view/View;->setEnabled(Z)V

    .line 223
    .line 224
    .line 225
    iget-object v0, p0, Lcom/mycompany/app/web/WebEmgDialog;->Y:Landroidx/appcompat/widget/AppCompatTextView;

    .line 226
    .line 227
    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 228
    .line 229
    .line 230
    iget-object v0, p0, Lcom/mycompany/app/web/WebEmgDialog;->W:Lcom/mycompany/app/view/MyLineText;

    .line 231
    .line 232
    sget-boolean v1, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 233
    .line 234
    if-eqz v1, :cond_f

    .line 235
    .line 236
    move v1, v3

    .line 237
    goto :goto_8

    .line 238
    :cond_f
    move v1, v2

    .line 239
    :goto_8
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 240
    .line 241
    .line 242
    iget-object v0, p0, Lcom/mycompany/app/web/WebEmgDialog;->X:Lcom/mycompany/app/view/MyLineText;

    .line 243
    .line 244
    sget-boolean v1, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 245
    .line 246
    if-eqz v1, :cond_10

    .line 247
    .line 248
    move v1, v3

    .line 249
    goto :goto_9

    .line 250
    :cond_10
    move v1, v2

    .line 251
    :goto_9
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 252
    .line 253
    .line 254
    iget-object v0, p0, Lcom/mycompany/app/web/WebEmgDialog;->Y:Landroidx/appcompat/widget/AppCompatTextView;

    .line 255
    .line 256
    sget-boolean v1, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 257
    .line 258
    if-eqz v1, :cond_11

    .line 259
    .line 260
    move v2, v3

    .line 261
    :cond_11
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 262
    .line 263
    .line 264
    :cond_12
    :goto_a
    return-void
.end method

.method public final I()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebEmgDialog;->Z:Landroidx/appcompat/widget/AppCompatTextView;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-boolean v1, p0, Lcom/mycompany/app/web/WebEmgDialog;->a0:Z

    .line 7
    .line 8
    if-eqz v1, :cond_1

    .line 9
    .line 10
    const/16 v1, 0x8

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :cond_1
    iget-object v0, p0, Lcom/mycompany/app/web/WebEmgDialog;->k0:Ljava/util/ArrayList;

    .line 17
    .line 18
    if-eqz v0, :cond_3

    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-eqz v0, :cond_2

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_2
    new-instance v0, Lcom/mycompany/app/web/WebEmgDialog$31;

    .line 28
    .line 29
    invoke-direct {v0, p0}, Lcom/mycompany/app/web/WebEmgDialog$31;-><init>(Lcom/mycompany/app/web/WebEmgDialog;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0, v0}, Lcom/mycompany/app/view/MyDialogNormal;->m(Ljava/lang/Runnable;)V

    .line 33
    .line 34
    .line 35
    return-void

    .line 36
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/mycompany/app/web/WebEmgDialog;->Z:Landroidx/appcompat/widget/AppCompatTextView;

    .line 37
    .line 38
    const/4 v1, 0x0

    .line 39
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 40
    .line 41
    .line 42
    return-void
.end method

.method public final J(IZ)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebEmgDialog;->b0:Lcom/mycompany/app/web/WebGridAdapter;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto/16 :goto_0

    .line 6
    .line 7
    :cond_0
    iget-boolean v1, v0, Lcom/mycompany/app/web/WebGridAdapter;->i:Z

    .line 8
    .line 9
    if-ne p2, v1, :cond_1

    .line 10
    .line 11
    goto/16 :goto_0

    .line 12
    .line 13
    :cond_1
    invoke-virtual {v0, p1, p2}, Lcom/mycompany/app/web/WebGridAdapter;->E(IZ)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/mycompany/app/web/WebEmgDialog;->H()V

    .line 17
    .line 18
    .line 19
    const/4 p1, 0x1

    .line 20
    const/4 v0, 0x0

    .line 21
    if-eqz p2, :cond_7

    .line 22
    .line 23
    iget-object p2, p0, Lcom/mycompany/app/web/WebEmgDialog;->P:Landroidx/appcompat/widget/AppCompatTextView;

    .line 24
    .line 25
    if-eqz p2, :cond_2

    .line 26
    .line 27
    iget-object v1, p0, Lcom/mycompany/app/web/WebEmgDialog;->b0:Lcom/mycompany/app/web/WebGridAdapter;

    .line 28
    .line 29
    iget v2, v1, Lcom/mycompany/app/web/WebGridAdapter;->k:I

    .line 30
    .line 31
    invoke-virtual {v1}, Lcom/mycompany/app/web/WebGridAdapter;->y()I

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    invoke-static {v2, v1}, Lcom/mycompany/app/main/MainUtil;->h3(II)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 40
    .line 41
    .line 42
    :cond_2
    iget-object p2, p0, Lcom/mycompany/app/web/WebEmgDialog;->Q:Lcom/mycompany/app/view/MyButtonCheck;

    .line 43
    .line 44
    if-eqz p2, :cond_3

    .line 45
    .line 46
    iget-object v1, p0, Lcom/mycompany/app/web/WebEmgDialog;->b0:Lcom/mycompany/app/web/WebGridAdapter;

    .line 47
    .line 48
    invoke-virtual {v1}, Lcom/mycompany/app/web/WebGridAdapter;->A()Z

    .line 49
    .line 50
    .line 51
    move-result v1

    .line 52
    invoke-virtual {p2, v1, p1}, Lcom/mycompany/app/view/MyButtonCheck;->q(ZZ)V

    .line 53
    .line 54
    .line 55
    :cond_3
    iget-object p2, p0, Lcom/mycompany/app/web/WebEmgDialog;->N:Lcom/mycompany/app/view/MyButtonImage;

    .line 56
    .line 57
    if-eqz p2, :cond_4

    .line 58
    .line 59
    iget-object v1, p0, Lcom/mycompany/app/web/WebEmgDialog;->H:Landroid/content/Context;

    .line 60
    .line 61
    sget v2, Lnet/kaki87/soul2/testing/R$anim;->ic_scale_out:I

    .line 62
    .line 63
    invoke-static {v1, p2, v2, p1}, Lcom/mycompany/app/main/MainUtil;->h8(Landroid/content/Context;Landroid/view/View;IZ)V

    .line 64
    .line 65
    .line 66
    :cond_4
    iget-object p2, p0, Lcom/mycompany/app/web/WebEmgDialog;->O:Lcom/mycompany/app/view/MyButtonImage;

    .line 67
    .line 68
    if-eqz p2, :cond_5

    .line 69
    .line 70
    iget-object v1, p0, Lcom/mycompany/app/web/WebEmgDialog;->H:Landroid/content/Context;

    .line 71
    .line 72
    sget v2, Lnet/kaki87/soul2/testing/R$anim;->ic_rotate_out:I

    .line 73
    .line 74
    invoke-static {v1, p2, v2, p1}, Lcom/mycompany/app/main/MainUtil;->h8(Landroid/content/Context;Landroid/view/View;IZ)V

    .line 75
    .line 76
    .line 77
    :cond_5
    iget-object p1, p0, Lcom/mycompany/app/web/WebEmgDialog;->P:Landroidx/appcompat/widget/AppCompatTextView;

    .line 78
    .line 79
    if-eqz p1, :cond_6

    .line 80
    .line 81
    iget-object p2, p0, Lcom/mycompany/app/web/WebEmgDialog;->H:Landroid/content/Context;

    .line 82
    .line 83
    sget v1, Lnet/kaki87/soul2/testing/R$anim;->ic_scale_in:I

    .line 84
    .line 85
    invoke-static {p2, p1, v1, v0}, Lcom/mycompany/app/main/MainUtil;->h8(Landroid/content/Context;Landroid/view/View;IZ)V

    .line 86
    .line 87
    .line 88
    :cond_6
    iget-object p1, p0, Lcom/mycompany/app/web/WebEmgDialog;->Q:Lcom/mycompany/app/view/MyButtonCheck;

    .line 89
    .line 90
    if-eqz p1, :cond_b

    .line 91
    .line 92
    iget-object p2, p0, Lcom/mycompany/app/web/WebEmgDialog;->H:Landroid/content/Context;

    .line 93
    .line 94
    sget v1, Lnet/kaki87/soul2/testing/R$anim;->ic_rotate_in:I

    .line 95
    .line 96
    invoke-static {p2, p1, v1, v0}, Lcom/mycompany/app/main/MainUtil;->h8(Landroid/content/Context;Landroid/view/View;IZ)V

    .line 97
    .line 98
    .line 99
    return-void

    .line 100
    :cond_7
    iget-object p2, p0, Lcom/mycompany/app/web/WebEmgDialog;->N:Lcom/mycompany/app/view/MyButtonImage;

    .line 101
    .line 102
    if-eqz p2, :cond_8

    .line 103
    .line 104
    iget-object v1, p0, Lcom/mycompany/app/web/WebEmgDialog;->H:Landroid/content/Context;

    .line 105
    .line 106
    sget v2, Lnet/kaki87/soul2/testing/R$anim;->ic_scale_in:I

    .line 107
    .line 108
    invoke-static {v1, p2, v2, v0}, Lcom/mycompany/app/main/MainUtil;->h8(Landroid/content/Context;Landroid/view/View;IZ)V

    .line 109
    .line 110
    .line 111
    :cond_8
    iget-object p2, p0, Lcom/mycompany/app/web/WebEmgDialog;->O:Lcom/mycompany/app/view/MyButtonImage;

    .line 112
    .line 113
    if-eqz p2, :cond_9

    .line 114
    .line 115
    iget-object v1, p0, Lcom/mycompany/app/web/WebEmgDialog;->H:Landroid/content/Context;

    .line 116
    .line 117
    sget v2, Lnet/kaki87/soul2/testing/R$anim;->ic_rotate_in:I

    .line 118
    .line 119
    invoke-static {v1, p2, v2, v0}, Lcom/mycompany/app/main/MainUtil;->h8(Landroid/content/Context;Landroid/view/View;IZ)V

    .line 120
    .line 121
    .line 122
    :cond_9
    iget-object p2, p0, Lcom/mycompany/app/web/WebEmgDialog;->P:Landroidx/appcompat/widget/AppCompatTextView;

    .line 123
    .line 124
    if-eqz p2, :cond_a

    .line 125
    .line 126
    iget-object v0, p0, Lcom/mycompany/app/web/WebEmgDialog;->H:Landroid/content/Context;

    .line 127
    .line 128
    sget v1, Lnet/kaki87/soul2/testing/R$anim;->ic_scale_out:I

    .line 129
    .line 130
    invoke-static {v0, p2, v1, p1}, Lcom/mycompany/app/main/MainUtil;->h8(Landroid/content/Context;Landroid/view/View;IZ)V

    .line 131
    .line 132
    .line 133
    :cond_a
    iget-object p2, p0, Lcom/mycompany/app/web/WebEmgDialog;->Q:Lcom/mycompany/app/view/MyButtonCheck;

    .line 134
    .line 135
    if-eqz p2, :cond_b

    .line 136
    .line 137
    iget-object v0, p0, Lcom/mycompany/app/web/WebEmgDialog;->H:Landroid/content/Context;

    .line 138
    .line 139
    sget v1, Lnet/kaki87/soul2/testing/R$anim;->ic_rotate_out:I

    .line 140
    .line 141
    invoke-static {v0, p2, v1, p1}, Lcom/mycompany/app/main/MainUtil;->h8(Landroid/content/Context;Landroid/view/View;IZ)V

    .line 142
    .line 143
    .line 144
    :cond_b
    :goto_0
    return-void
.end method

.method public final K(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebEmgDialog;->G:Lcom/mycompany/app/web/WebViewActivity;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p0}, Lcom/mycompany/app/web/WebEmgDialog;->D()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    :goto_0
    return-void

    .line 13
    :cond_1
    iget-object v0, p0, Lcom/mycompany/app/web/WebEmgDialog;->s0:Lcom/mycompany/app/dialog/DialogCreateAlbum;

    .line 14
    .line 15
    if-eqz v0, :cond_2

    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogCreateAlbum;->dismiss()V

    .line 18
    .line 19
    .line 20
    const/4 v0, 0x0

    .line 21
    iput-object v0, p0, Lcom/mycompany/app/web/WebEmgDialog;->s0:Lcom/mycompany/app/dialog/DialogCreateAlbum;

    .line 22
    .line 23
    :cond_2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    if-nez p1, :cond_6

    .line 28
    .line 29
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    if-eqz p1, :cond_3

    .line 34
    .line 35
    goto :goto_2

    .line 36
    :cond_3
    if-eqz p3, :cond_5

    .line 37
    .line 38
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    .line 39
    .line 40
    .line 41
    move-result p1

    .line 42
    if-eqz p1, :cond_4

    .line 43
    .line 44
    goto :goto_1

    .line 45
    :cond_4
    new-instance v0, Lcom/mycompany/app/dialog/DialogCreateAlbum;

    .line 46
    .line 47
    iget-object v1, p0, Lcom/mycompany/app/web/WebEmgDialog;->G:Lcom/mycompany/app/web/WebViewActivity;

    .line 48
    .line 49
    iget-object v4, p0, Lcom/mycompany/app/web/WebEmgDialog;->i0:Ljava/lang/String;

    .line 50
    .line 51
    new-instance v5, Lcom/mycompany/app/web/WebEmgDialog$42;

    .line 52
    .line 53
    invoke-direct {v5, p0}, Lcom/mycompany/app/web/WebEmgDialog$42;-><init>(Lcom/mycompany/app/web/WebEmgDialog;)V

    .line 54
    .line 55
    .line 56
    move-object v2, p2

    .line 57
    move-object v3, p3

    .line 58
    invoke-direct/range {v0 .. v5}, Lcom/mycompany/app/dialog/DialogCreateAlbum;-><init>(Lcom/mycompany/app/web/WebViewActivity;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/mycompany/app/dialog/DialogSetFull$DialogApplyListener;)V

    .line 59
    .line 60
    .line 61
    iput-object v0, p0, Lcom/mycompany/app/web/WebEmgDialog;->s0:Lcom/mycompany/app/dialog/DialogCreateAlbum;

    .line 62
    .line 63
    new-instance p1, Lcom/mycompany/app/web/WebEmgDialog$43;

    .line 64
    .line 65
    invoke-direct {p1, p0}, Lcom/mycompany/app/web/WebEmgDialog$43;-><init>(Lcom/mycompany/app/web/WebEmgDialog;)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v0, p1}, Lcom/mycompany/app/view/MyDialogBottom;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 69
    .line 70
    .line 71
    return-void

    .line 72
    :cond_5
    :goto_1
    iget-object p1, p0, Lcom/mycompany/app/web/WebEmgDialog;->H:Landroid/content/Context;

    .line 73
    .line 74
    sget p2, Lnet/kaki87/soul2/testing/R$string;->no_image:I

    .line 75
    .line 76
    invoke-static {p1, p2}, Lcom/mycompany/app/main/MainUtil;->e8(Landroid/content/Context;I)V

    .line 77
    .line 78
    .line 79
    return-void

    .line 80
    :cond_6
    :goto_2
    iget-object p1, p0, Lcom/mycompany/app/web/WebEmgDialog;->H:Landroid/content/Context;

    .line 81
    .line 82
    sget p2, Lnet/kaki87/soul2/testing/R$string;->invalid_url:I

    .line 83
    .line 84
    invoke-static {p1, p2}, Lcom/mycompany/app/main/MainUtil;->e8(Landroid/content/Context;I)V

    .line 85
    .line 86
    .line 87
    return-void
.end method

.method public final L(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebEmgDialog;->G:Lcom/mycompany/app/web/WebViewActivity;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p0}, Lcom/mycompany/app/web/WebEmgDialog;->D()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    :goto_0
    return-void

    .line 13
    :cond_1
    iget-object v0, p0, Lcom/mycompany/app/web/WebEmgDialog;->q0:Lcom/mycompany/app/dialog/DialogDownList;

    .line 14
    .line 15
    if-eqz v0, :cond_2

    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogDownList;->dismiss()V

    .line 18
    .line 19
    .line 20
    const/4 v0, 0x0

    .line 21
    iput-object v0, p0, Lcom/mycompany/app/web/WebEmgDialog;->q0:Lcom/mycompany/app/dialog/DialogDownList;

    .line 22
    .line 23
    :cond_2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    if-nez p1, :cond_6

    .line 28
    .line 29
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    if-eqz p1, :cond_3

    .line 34
    .line 35
    goto :goto_2

    .line 36
    :cond_3
    if-eqz p3, :cond_5

    .line 37
    .line 38
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    .line 39
    .line 40
    .line 41
    move-result p1

    .line 42
    if-eqz p1, :cond_4

    .line 43
    .line 44
    goto :goto_1

    .line 45
    :cond_4
    new-instance v0, Lcom/mycompany/app/dialog/DialogDownList;

    .line 46
    .line 47
    iget-object v1, p0, Lcom/mycompany/app/web/WebEmgDialog;->G:Lcom/mycompany/app/web/WebViewActivity;

    .line 48
    .line 49
    iget-object v4, p0, Lcom/mycompany/app/web/WebEmgDialog;->i0:Ljava/lang/String;

    .line 50
    .line 51
    new-instance v5, Lcom/mycompany/app/web/WebEmgDialog$38;

    .line 52
    .line 53
    invoke-direct {v5, p0}, Lcom/mycompany/app/web/WebEmgDialog$38;-><init>(Lcom/mycompany/app/web/WebEmgDialog;)V

    .line 54
    .line 55
    .line 56
    move-object v2, p2

    .line 57
    move-object v3, p3

    .line 58
    invoke-direct/range {v0 .. v5}, Lcom/mycompany/app/dialog/DialogDownList;-><init>(Lcom/mycompany/app/web/WebViewActivity;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/mycompany/app/dialog/DialogSetFull$DialogApplyListener;)V

    .line 59
    .line 60
    .line 61
    iput-object v0, p0, Lcom/mycompany/app/web/WebEmgDialog;->q0:Lcom/mycompany/app/dialog/DialogDownList;

    .line 62
    .line 63
    new-instance p1, Lcom/mycompany/app/web/WebEmgDialog$39;

    .line 64
    .line 65
    invoke-direct {p1, p0}, Lcom/mycompany/app/web/WebEmgDialog$39;-><init>(Lcom/mycompany/app/web/WebEmgDialog;)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v0, p1}, Lcom/mycompany/app/view/MyDialogBottom;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 69
    .line 70
    .line 71
    return-void

    .line 72
    :cond_5
    :goto_1
    iget-object p1, p0, Lcom/mycompany/app/web/WebEmgDialog;->H:Landroid/content/Context;

    .line 73
    .line 74
    sget p2, Lnet/kaki87/soul2/testing/R$string;->no_image:I

    .line 75
    .line 76
    invoke-static {p1, p2}, Lcom/mycompany/app/main/MainUtil;->e8(Landroid/content/Context;I)V

    .line 77
    .line 78
    .line 79
    return-void

    .line 80
    :cond_6
    :goto_2
    iget-object p1, p0, Lcom/mycompany/app/web/WebEmgDialog;->H:Landroid/content/Context;

    .line 81
    .line 82
    sget p2, Lnet/kaki87/soul2/testing/R$string;->invalid_url:I

    .line 83
    .line 84
    invoke-static {p1, p2}, Lcom/mycompany/app/main/MainUtil;->e8(Landroid/content/Context;I)V

    .line 85
    .line 86
    .line 87
    return-void
.end method

.method public final M(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebEmgDialog;->G:Lcom/mycompany/app/web/WebViewActivity;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p0}, Lcom/mycompany/app/web/WebEmgDialog;->D()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    :goto_0
    return-void

    .line 13
    :cond_1
    iget-object v0, p0, Lcom/mycompany/app/web/WebEmgDialog;->r0:Lcom/mycompany/app/dialog/DialogDownZip;

    .line 14
    .line 15
    if-eqz v0, :cond_2

    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogDownZip;->dismiss()V

    .line 18
    .line 19
    .line 20
    const/4 v0, 0x0

    .line 21
    iput-object v0, p0, Lcom/mycompany/app/web/WebEmgDialog;->r0:Lcom/mycompany/app/dialog/DialogDownZip;

    .line 22
    .line 23
    :cond_2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    if-nez p1, :cond_6

    .line 28
    .line 29
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    if-eqz p1, :cond_3

    .line 34
    .line 35
    goto :goto_2

    .line 36
    :cond_3
    if-eqz p3, :cond_5

    .line 37
    .line 38
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    .line 39
    .line 40
    .line 41
    move-result p1

    .line 42
    if-eqz p1, :cond_4

    .line 43
    .line 44
    goto :goto_1

    .line 45
    :cond_4
    new-instance v0, Lcom/mycompany/app/dialog/DialogDownZip;

    .line 46
    .line 47
    iget-object v1, p0, Lcom/mycompany/app/web/WebEmgDialog;->G:Lcom/mycompany/app/web/WebViewActivity;

    .line 48
    .line 49
    iget-object v4, p0, Lcom/mycompany/app/web/WebEmgDialog;->i0:Ljava/lang/String;

    .line 50
    .line 51
    new-instance v5, Lcom/mycompany/app/web/WebEmgDialog$40;

    .line 52
    .line 53
    invoke-direct {v5, p0}, Lcom/mycompany/app/web/WebEmgDialog$40;-><init>(Lcom/mycompany/app/web/WebEmgDialog;)V

    .line 54
    .line 55
    .line 56
    move-object v2, p2

    .line 57
    move-object v3, p3

    .line 58
    invoke-direct/range {v0 .. v5}, Lcom/mycompany/app/dialog/DialogDownZip;-><init>(Lcom/mycompany/app/web/WebViewActivity;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/mycompany/app/dialog/DialogSetFull$DialogApplyListener;)V

    .line 59
    .line 60
    .line 61
    iput-object v0, p0, Lcom/mycompany/app/web/WebEmgDialog;->r0:Lcom/mycompany/app/dialog/DialogDownZip;

    .line 62
    .line 63
    new-instance p1, Lcom/mycompany/app/web/WebEmgDialog$41;

    .line 64
    .line 65
    invoke-direct {p1, p0}, Lcom/mycompany/app/web/WebEmgDialog$41;-><init>(Lcom/mycompany/app/web/WebEmgDialog;)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v0, p1}, Lcom/mycompany/app/view/MyDialogBottom;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 69
    .line 70
    .line 71
    return-void

    .line 72
    :cond_5
    :goto_1
    iget-object p1, p0, Lcom/mycompany/app/web/WebEmgDialog;->H:Landroid/content/Context;

    .line 73
    .line 74
    sget p2, Lnet/kaki87/soul2/testing/R$string;->no_image:I

    .line 75
    .line 76
    invoke-static {p1, p2}, Lcom/mycompany/app/main/MainUtil;->e8(Landroid/content/Context;I)V

    .line 77
    .line 78
    .line 79
    return-void

    .line 80
    :cond_6
    :goto_2
    iget-object p1, p0, Lcom/mycompany/app/web/WebEmgDialog;->H:Landroid/content/Context;

    .line 81
    .line 82
    sget p2, Lnet/kaki87/soul2/testing/R$string;->invalid_url:I

    .line 83
    .line 84
    invoke-static {p1, p2}, Lcom/mycompany/app/main/MainUtil;->e8(Landroid/content/Context;I)V

    .line 85
    .line 86
    .line 87
    return-void
.end method

.method public final dismiss()V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/mycompany/app/view/MyDialogNormal;->c:Z

    .line 3
    .line 4
    iget-object v1, p0, Lcom/mycompany/app/web/WebEmgDialog;->H:Landroid/content/Context;

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    const/4 v1, 0x1

    .line 10
    invoke-virtual {p0, v1}, Lcom/mycompany/app/web/WebEmgDialog;->F(Z)V

    .line 11
    .line 12
    .line 13
    iget-object v2, p0, Lcom/mycompany/app/web/WebEmgDialog;->L:Lcom/mycompany/app/view/MyButtonImage;

    .line 14
    .line 15
    const/4 v3, 0x0

    .line 16
    if-eqz v2, :cond_1

    .line 17
    .line 18
    invoke-virtual {v2}, Lcom/mycompany/app/view/MyButtonImage;->j()V

    .line 19
    .line 20
    .line 21
    iput-object v3, p0, Lcom/mycompany/app/web/WebEmgDialog;->L:Lcom/mycompany/app/view/MyButtonImage;

    .line 22
    .line 23
    :cond_1
    iget-object v2, p0, Lcom/mycompany/app/web/WebEmgDialog;->N:Lcom/mycompany/app/view/MyButtonImage;

    .line 24
    .line 25
    if-eqz v2, :cond_2

    .line 26
    .line 27
    invoke-virtual {v2}, Lcom/mycompany/app/view/MyButtonImage;->j()V

    .line 28
    .line 29
    .line 30
    iput-object v3, p0, Lcom/mycompany/app/web/WebEmgDialog;->N:Lcom/mycompany/app/view/MyButtonImage;

    .line 31
    .line 32
    :cond_2
    iget-object v2, p0, Lcom/mycompany/app/web/WebEmgDialog;->O:Lcom/mycompany/app/view/MyButtonImage;

    .line 33
    .line 34
    if-eqz v2, :cond_3

    .line 35
    .line 36
    invoke-virtual {v2}, Lcom/mycompany/app/view/MyButtonImage;->j()V

    .line 37
    .line 38
    .line 39
    iput-object v3, p0, Lcom/mycompany/app/web/WebEmgDialog;->O:Lcom/mycompany/app/view/MyButtonImage;

    .line 40
    .line 41
    :cond_3
    iget-object v2, p0, Lcom/mycompany/app/web/WebEmgDialog;->Q:Lcom/mycompany/app/view/MyButtonCheck;

    .line 42
    .line 43
    if-eqz v2, :cond_4

    .line 44
    .line 45
    invoke-virtual {v2}, Lcom/mycompany/app/view/MyButtonCheck;->l()V

    .line 46
    .line 47
    .line 48
    iput-object v3, p0, Lcom/mycompany/app/web/WebEmgDialog;->Q:Lcom/mycompany/app/view/MyButtonCheck;

    .line 49
    .line 50
    :cond_4
    iget-object v2, p0, Lcom/mycompany/app/web/WebEmgDialog;->R:Lcom/mycompany/app/view/MyProgressBar;

    .line 51
    .line 52
    if-eqz v2, :cond_5

    .line 53
    .line 54
    invoke-virtual {v2}, Lcom/mycompany/app/view/MyProgressBar;->f()V

    .line 55
    .line 56
    .line 57
    iput-object v3, p0, Lcom/mycompany/app/web/WebEmgDialog;->R:Lcom/mycompany/app/view/MyProgressBar;

    .line 58
    .line 59
    :cond_5
    iget-object v2, p0, Lcom/mycompany/app/web/WebEmgDialog;->S:Lcom/mycompany/app/view/MyRecyclerView;

    .line 60
    .line 61
    if-eqz v2, :cond_6

    .line 62
    .line 63
    invoke-virtual {v2}, Lcom/mycompany/app/view/MyRecyclerView;->s0()V

    .line 64
    .line 65
    .line 66
    iput-object v3, p0, Lcom/mycompany/app/web/WebEmgDialog;->S:Lcom/mycompany/app/view/MyRecyclerView;

    .line 67
    .line 68
    :cond_6
    iget-object v2, p0, Lcom/mycompany/app/web/WebEmgDialog;->T:Lcom/mycompany/app/view/MyScrollBar;

    .line 69
    .line 70
    if-eqz v2, :cond_7

    .line 71
    .line 72
    invoke-virtual {v2}, Lcom/mycompany/app/view/MyScrollBar;->k()V

    .line 73
    .line 74
    .line 75
    iput-object v3, p0, Lcom/mycompany/app/web/WebEmgDialog;->T:Lcom/mycompany/app/view/MyScrollBar;

    .line 76
    .line 77
    :cond_7
    iget-object v2, p0, Lcom/mycompany/app/web/WebEmgDialog;->U:Lcom/mycompany/app/view/MyFadeImage;

    .line 78
    .line 79
    if-eqz v2, :cond_8

    .line 80
    .line 81
    invoke-virtual {v2}, Lcom/mycompany/app/view/MyFadeImage;->e()V

    .line 82
    .line 83
    .line 84
    iput-object v3, p0, Lcom/mycompany/app/web/WebEmgDialog;->U:Lcom/mycompany/app/view/MyFadeImage;

    .line 85
    .line 86
    :cond_8
    iget-object v2, p0, Lcom/mycompany/app/web/WebEmgDialog;->V:Lcom/mycompany/app/view/MyCoverView;

    .line 87
    .line 88
    if-eqz v2, :cond_9

    .line 89
    .line 90
    invoke-virtual {v2}, Lcom/mycompany/app/view/MyCoverView;->i()V

    .line 91
    .line 92
    .line 93
    iput-object v3, p0, Lcom/mycompany/app/web/WebEmgDialog;->V:Lcom/mycompany/app/view/MyCoverView;

    .line 94
    .line 95
    :cond_9
    iget-object v2, p0, Lcom/mycompany/app/web/WebEmgDialog;->W:Lcom/mycompany/app/view/MyLineText;

    .line 96
    .line 97
    if-eqz v2, :cond_a

    .line 98
    .line 99
    invoke-virtual {v2}, Lcom/mycompany/app/view/MyLineText;->u()V

    .line 100
    .line 101
    .line 102
    iput-object v3, p0, Lcom/mycompany/app/web/WebEmgDialog;->W:Lcom/mycompany/app/view/MyLineText;

    .line 103
    .line 104
    :cond_a
    iget-object v2, p0, Lcom/mycompany/app/web/WebEmgDialog;->X:Lcom/mycompany/app/view/MyLineText;

    .line 105
    .line 106
    if-eqz v2, :cond_b

    .line 107
    .line 108
    invoke-virtual {v2}, Lcom/mycompany/app/view/MyLineText;->u()V

    .line 109
    .line 110
    .line 111
    iput-object v3, p0, Lcom/mycompany/app/web/WebEmgDialog;->X:Lcom/mycompany/app/view/MyLineText;

    .line 112
    .line 113
    :cond_b
    iget-object v2, p0, Lcom/mycompany/app/web/WebEmgDialog;->h0:Lcom/mycompany/app/web/WebNestView;

    .line 114
    .line 115
    if-eqz v2, :cond_c

    .line 116
    .line 117
    invoke-static {v2, v1}, Lcom/mycompany/app/main/MainUtil;->F(Landroid/webkit/WebView;Z)V

    .line 118
    .line 119
    .line 120
    iput-object v3, p0, Lcom/mycompany/app/web/WebEmgDialog;->h0:Lcom/mycompany/app/web/WebNestView;

    .line 121
    .line 122
    :cond_c
    iget-object v1, p0, Lcom/mycompany/app/web/WebEmgDialog;->G:Lcom/mycompany/app/web/WebViewActivity;

    .line 123
    .line 124
    if-eqz v1, :cond_d

    .line 125
    .line 126
    invoke-virtual {v1, v3, v0}, Lcom/mycompany/app/main/MainActivity;->n0(Landroid/view/View;Z)V

    .line 127
    .line 128
    .line 129
    iput-object v3, p0, Lcom/mycompany/app/web/WebEmgDialog;->G:Lcom/mycompany/app/web/WebViewActivity;

    .line 130
    .line 131
    :cond_d
    iput-object v3, p0, Lcom/mycompany/app/web/WebEmgDialog;->H:Landroid/content/Context;

    .line 132
    .line 133
    iput-object v3, p0, Lcom/mycompany/app/web/WebEmgDialog;->I:Lcom/mycompany/app/web/WebGridDialog$WebImgListener;

    .line 134
    .line 135
    iput-object v3, p0, Lcom/mycompany/app/web/WebEmgDialog;->K:Lcom/mycompany/app/view/MyMainRelative;

    .line 136
    .line 137
    iput-object v3, p0, Lcom/mycompany/app/web/WebEmgDialog;->M:Landroidx/appcompat/widget/AppCompatTextView;

    .line 138
    .line 139
    iput-object v3, p0, Lcom/mycompany/app/web/WebEmgDialog;->P:Landroidx/appcompat/widget/AppCompatTextView;

    .line 140
    .line 141
    iput-object v3, p0, Lcom/mycompany/app/web/WebEmgDialog;->Y:Landroidx/appcompat/widget/AppCompatTextView;

    .line 142
    .line 143
    iput-object v3, p0, Lcom/mycompany/app/web/WebEmgDialog;->c0:Lcom/mycompany/app/view/MyManagerGrid;

    .line 144
    .line 145
    iput-object v3, p0, Lcom/mycompany/app/web/WebEmgDialog;->Z:Landroidx/appcompat/widget/AppCompatTextView;

    .line 146
    .line 147
    iput-object v3, p0, Lcom/mycompany/app/web/WebEmgDialog;->i0:Ljava/lang/String;

    .line 148
    .line 149
    iput-object v3, p0, Lcom/mycompany/app/web/WebEmgDialog;->j0:Ljava/lang/String;

    .line 150
    .line 151
    iput-object v3, p0, Lcom/mycompany/app/web/WebEmgDialog;->k0:Ljava/util/ArrayList;

    .line 152
    .line 153
    iput-object v3, p0, Lcom/mycompany/app/web/WebEmgDialog;->l0:Lcom/mycompany/app/data/DataUrl$ImgCntItem;

    .line 154
    .line 155
    iget-object v0, p0, Lcom/mycompany/app/web/WebEmgDialog;->b0:Lcom/mycompany/app/web/WebGridAdapter;

    .line 156
    .line 157
    if-eqz v0, :cond_e

    .line 158
    .line 159
    invoke-virtual {v0}, Lcom/mycompany/app/web/WebGridAdapter;->C()V

    .line 160
    .line 161
    .line 162
    iput-object v3, p0, Lcom/mycompany/app/web/WebEmgDialog;->b0:Lcom/mycompany/app/web/WebGridAdapter;

    .line 163
    .line 164
    :cond_e
    invoke-super {p0}, Lcom/mycompany/app/dialog/DialogCast;->dismiss()V

    .line 165
    .line 166
    .line 167
    return-void
.end method

.method public final dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 1
    if-eqz p1, :cond_3

    .line 2
    .line 3
    iget-object v0, p0, Lcom/mycompany/app/web/WebEmgDialog;->T:Lcom/mycompany/app/view/MyScrollBar;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    const/4 v1, 0x1

    .line 13
    if-eq v0, v1, :cond_1

    .line 14
    .line 15
    const/4 v1, 0x3

    .line 16
    if-ne v0, v1, :cond_2

    .line 17
    .line 18
    :cond_1
    iget-object v0, p0, Lcom/mycompany/app/web/WebEmgDialog;->T:Lcom/mycompany/app/view/MyScrollBar;

    .line 19
    .line 20
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyFadeView;->e()V

    .line 21
    .line 22
    .line 23
    :cond_2
    invoke-super {p0, p1}, Lcom/mycompany/app/dialog/DialogCast;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    return p1

    .line 28
    :cond_3
    :goto_0
    invoke-super {p0, p1}, Lcom/mycompany/app/dialog/DialogCast;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    return p1
.end method

.method public final l()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebEmgDialog;->b0:Lcom/mycompany/app/web/WebGridAdapter;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-boolean v0, v0, Lcom/mycompany/app/web/WebGridAdapter;->i:Z

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    const/4 v1, -0x1

    .line 11
    invoke-virtual {p0, v1, v0}, Lcom/mycompany/app/web/WebEmgDialog;->J(IZ)V

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    invoke-virtual {p0}, Lcom/mycompany/app/web/WebEmgDialog;->dismiss()V

    .line 16
    .line 17
    .line 18
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
    invoke-virtual {p0}, Lcom/mycompany/app/web/WebEmgDialog;->l()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final z(ILjava/util/ArrayList;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebEmgDialog;->m0:Lcom/mycompany/app/web/WebEmgDialog$TypeTask;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iput-boolean v1, v0, Lcom/mycompany/app/async/MyAsyncTask;->c:Z

    .line 7
    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/mycompany/app/web/WebEmgDialog;->m0:Lcom/mycompany/app/web/WebEmgDialog$TypeTask;

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    iput v2, p0, Lcom/mycompany/app/web/WebEmgDialog;->p0:I

    .line 13
    .line 14
    if-eqz p2, :cond_1

    .line 15
    .line 16
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    .line 17
    .line 18
    .line 19
    move-result v3

    .line 20
    if-lez v3, :cond_1

    .line 21
    .line 22
    move v3, v1

    .line 23
    goto :goto_0

    .line 24
    :cond_1
    move v3, v2

    .line 25
    :goto_0
    if-eqz v3, :cond_3

    .line 26
    .line 27
    if-nez p1, :cond_2

    .line 28
    .line 29
    goto :goto_1

    .line 30
    :cond_2
    move v4, v2

    .line 31
    goto :goto_2

    .line 32
    :cond_3
    :goto_1
    move v4, v1

    .line 33
    :goto_2
    if-eqz v3, :cond_4

    .line 34
    .line 35
    if-nez p1, :cond_4

    .line 36
    .line 37
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    .line 38
    .line 39
    .line 40
    move-result v3

    .line 41
    iput v3, p0, Lcom/mycompany/app/web/WebEmgDialog;->p0:I

    .line 42
    .line 43
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 44
    .line 45
    iget-object v5, p0, Lcom/mycompany/app/web/WebEmgDialog;->H:Landroid/content/Context;

    .line 46
    .line 47
    sget v6, Lnet/kaki87/soul2/testing/R$string;->filtered_image:I

    .line 48
    .line 49
    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v5

    .line 53
    iget v6, p0, Lcom/mycompany/app/web/WebEmgDialog;->p0:I

    .line 54
    .line 55
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 56
    .line 57
    .line 58
    move-result-object v6

    .line 59
    new-array v7, v1, [Ljava/lang/Object;

    .line 60
    .line 61
    aput-object v6, v7, v2

    .line 62
    .line 63
    invoke-static {v3, v5, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v2

    .line 67
    iget-object v3, p0, Lcom/mycompany/app/web/WebEmgDialog;->H:Landroid/content/Context;

    .line 68
    .line 69
    invoke-static {v3, v2}, Lcom/mycompany/app/main/MainUtil;->f8(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 70
    .line 71
    .line 72
    :cond_4
    if-nez v4, :cond_6

    .line 73
    .line 74
    const/16 v2, 0x7e

    .line 75
    .line 76
    if-ne p1, v2, :cond_5

    .line 77
    .line 78
    goto :goto_3

    .line 79
    :cond_5
    new-instance v0, Lcom/mycompany/app/web/WebEmgDialog$TypeTask;

    .line 80
    .line 81
    invoke-direct {v0, p0, p2, p1}, Lcom/mycompany/app/web/WebEmgDialog$TypeTask;-><init>(Lcom/mycompany/app/web/WebEmgDialog;Ljava/util/List;I)V

    .line 82
    .line 83
    .line 84
    iput-object v0, p0, Lcom/mycompany/app/web/WebEmgDialog;->m0:Lcom/mycompany/app/web/WebEmgDialog$TypeTask;

    .line 85
    .line 86
    iget-object p1, p0, Lcom/mycompany/app/web/WebEmgDialog;->H:Landroid/content/Context;

    .line 87
    .line 88
    invoke-virtual {v0, p1}, Lcom/mycompany/app/async/MyAsyncTask;->b(Landroid/content/Context;)V

    .line 89
    .line 90
    .line 91
    return-void

    .line 92
    :cond_6
    :goto_3
    iget-object p1, p0, Lcom/mycompany/app/web/WebEmgDialog;->b0:Lcom/mycompany/app/web/WebGridAdapter;

    .line 93
    .line 94
    if-nez p1, :cond_7

    .line 95
    .line 96
    goto :goto_4

    .line 97
    :cond_7
    if-eqz v4, :cond_8

    .line 98
    .line 99
    move-object p2, v0

    .line 100
    :cond_8
    invoke-virtual {p1, p2}, Lcom/mycompany/app/web/WebGridAdapter;->F(Ljava/util/List;)V

    .line 101
    .line 102
    .line 103
    iget-object p1, p0, Lcom/mycompany/app/web/WebEmgDialog;->V:Lcom/mycompany/app/view/MyCoverView;

    .line 104
    .line 105
    if-eqz p1, :cond_9

    .line 106
    .line 107
    invoke-virtual {p1, v1}, Lcom/mycompany/app/view/MyCoverView;->f(Z)V

    .line 108
    .line 109
    .line 110
    :cond_9
    invoke-virtual {p0}, Lcom/mycompany/app/web/WebEmgDialog;->C()Z

    .line 111
    .line 112
    .line 113
    move-result p1

    .line 114
    if-eqz p1, :cond_a

    .line 115
    .line 116
    iget-object p1, p0, Lcom/mycompany/app/web/WebEmgDialog;->S:Lcom/mycompany/app/view/MyRecyclerView;

    .line 117
    .line 118
    invoke-virtual {p1, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 119
    .line 120
    .line 121
    iget-object p1, p0, Lcom/mycompany/app/web/WebEmgDialog;->R:Lcom/mycompany/app/view/MyProgressBar;

    .line 122
    .line 123
    const/4 p2, 0x2

    .line 124
    invoke-virtual {p1, p2}, Lcom/mycompany/app/view/MyProgressBar;->setIncrease(I)V

    .line 125
    .line 126
    .line 127
    invoke-virtual {p0}, Lcom/mycompany/app/web/WebEmgDialog;->H()V

    .line 128
    .line 129
    .line 130
    :cond_a
    :goto_4
    return-void
.end method
