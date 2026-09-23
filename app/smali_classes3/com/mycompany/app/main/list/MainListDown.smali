.class public Lcom/mycompany/app/main/list/MainListDown;
.super Lcom/mycompany/app/setting/CastActivity;
.source "SourceFile"


# static fields
.field public static W1:Ljava/lang/String;


# instance fields
.field public C1:Z

.field public D1:Z

.field public E1:J

.field public F1:Lcom/mycompany/app/view/MyMainRelative;

.field public G1:Lcom/mycompany/app/main/MainListView;

.field public H1:Lcom/mycompany/app/dialog/DialogOpenType;

.field public I1:Lcom/mycompany/app/dialog/DialogDownUrl;

.field public J1:Lcom/mycompany/app/dialog/DialogSetDown;

.field public K1:Lcom/mycompany/app/dialog/DialogDownFile;

.field public L1:Lcom/mycompany/app/dialog/DialogPreview;

.field public M1:Z

.field public N1:Z

.field public O1:Z

.field public P1:Lcom/mycompany/app/main/MainListView$ListViewHolder;

.field public Q1:Ljava/lang/String;

.field public R1:Ljava/lang/String;

.field public S1:Ljava/lang/String;

.field public T1:Ljava/lang/String;

.field public U1:Lcom/mycompany/app/cast/CastUtil;

.field public V1:Lcom/mycompany/app/main/MainDownSvc$DownItem;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static D0(Lcom/mycompany/app/main/list/MainListDown;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/setting/CastActivity;->p1:Lcom/google/android/gms/cast/framework/CastSession;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    iget-object v1, p0, Lcom/mycompany/app/main/list/MainListDown;->U1:Lcom/mycompany/app/cast/CastUtil;

    .line 7
    .line 8
    if-eqz v1, :cond_1

    .line 9
    .line 10
    :goto_0
    return-void

    .line 11
    :cond_1
    new-instance v1, Lcom/mycompany/app/cast/CastUtil;

    .line 12
    .line 13
    iget-object v2, p0, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    .line 14
    .line 15
    iget-object v3, p0, Lcom/mycompany/app/main/MainActivity;->O0:Landroid/os/Handler;

    .line 16
    .line 17
    new-instance v4, Lcom/mycompany/app/main/list/MainListDown$17;

    .line 18
    .line 19
    invoke-direct {v4, p0}, Lcom/mycompany/app/main/list/MainListDown$17;-><init>(Lcom/mycompany/app/main/list/MainListDown;)V

    .line 20
    .line 21
    .line 22
    invoke-direct {v1, v2, v0, v3, v4}, Lcom/mycompany/app/cast/CastUtil;-><init>(Landroid/content/Context;Lcom/google/android/gms/cast/framework/CastSession;Landroid/os/Handler;Lcom/mycompany/app/cast/CastUtil$CastSendListener;)V

    .line 23
    .line 24
    .line 25
    iput-object v1, p0, Lcom/mycompany/app/main/list/MainListDown;->U1:Lcom/mycompany/app/cast/CastUtil;

    .line 26
    .line 27
    const/4 v0, 0x1

    .line 28
    invoke-static {p1, v0}, Lcom/mycompany/app/main/MainUtil;->I1(Ljava/lang/String;Z)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    iget-object v1, p0, Lcom/mycompany/app/main/list/MainListDown;->U1:Lcom/mycompany/app/cast/CastUtil;

    .line 33
    .line 34
    move-object v3, p1

    .line 35
    move-object v4, p2

    .line 36
    move-object v5, p3

    .line 37
    move v6, p4

    .line 38
    invoke-virtual/range {v1 .. v6}, Lcom/mycompany/app/cast/CastUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 39
    .line 40
    .line 41
    return-void
.end method

.method public static E0(Lcom/mycompany/app/main/list/MainListDown;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-static {p0, p1, p2, v0, p3}, Lcom/mycompany/app/main/MainUtil;->d(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;ZZ)Z

    .line 3
    .line 4
    .line 5
    move-result p2

    .line 6
    if-eqz p2, :cond_0

    .line 7
    .line 8
    iget-object p0, p0, Lcom/mycompany/app/main/list/MainListDown;->G1:Lcom/mycompany/app/main/MainListView;

    .line 9
    .line 10
    if-eqz p0, :cond_4

    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/mycompany/app/main/MainListView;->y0()V

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    invoke-virtual {p0}, Lcom/mycompany/app/main/list/MainListDown;->M0()Z

    .line 17
    .line 18
    .line 19
    move-result p2

    .line 20
    if-eqz p2, :cond_1

    .line 21
    .line 22
    goto :goto_1

    .line 23
    :cond_1
    iget-object p2, p0, Lcom/mycompany/app/main/list/MainListDown;->H1:Lcom/mycompany/app/dialog/DialogOpenType;

    .line 24
    .line 25
    if-eqz p2, :cond_2

    .line 26
    .line 27
    invoke-virtual {p2}, Lcom/mycompany/app/dialog/DialogOpenType;->dismiss()V

    .line 28
    .line 29
    .line 30
    const/4 p2, 0x0

    .line 31
    iput-object p2, p0, Lcom/mycompany/app/main/list/MainListDown;->H1:Lcom/mycompany/app/dialog/DialogOpenType;

    .line 32
    .line 33
    :cond_2
    sget p2, Lnet/kaki87/soul2/testing/R$style;->DialogExpandTheme:I

    .line 34
    .line 35
    invoke-virtual {p0}, Lcom/mycompany/app/main/MainActivity;->h0()Z

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    if-eqz v1, :cond_3

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_3
    move v0, p2

    .line 43
    :goto_0
    new-instance p2, Lcom/mycompany/app/dialog/DialogOpenType;

    .line 44
    .line 45
    invoke-direct {p2, p0, v0, p1, p3}, Lcom/mycompany/app/dialog/DialogOpenType;-><init>(Landroid/app/Activity;ILjava/lang/String;Z)V

    .line 46
    .line 47
    .line 48
    iput-object p2, p0, Lcom/mycompany/app/main/list/MainListDown;->H1:Lcom/mycompany/app/dialog/DialogOpenType;

    .line 49
    .line 50
    new-instance p1, Lcom/mycompany/app/main/list/MainListDown$6;

    .line 51
    .line 52
    invoke-direct {p1, p0}, Lcom/mycompany/app/main/list/MainListDown$6;-><init>(Lcom/mycompany/app/main/list/MainListDown;)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {p2, p1}, Lcom/mycompany/app/view/MyDialogBottom;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 56
    .line 57
    .line 58
    sget-boolean p1, Lcom/mycompany/app/main/MainConst;->e:Z

    .line 59
    .line 60
    if-nez p1, :cond_5

    .line 61
    .line 62
    if-eqz v0, :cond_4

    .line 63
    .line 64
    goto :goto_2

    .line 65
    :cond_4
    :goto_1
    return-void

    .line 66
    :cond_5
    :goto_2
    iget-object v1, p0, Lcom/mycompany/app/main/list/MainListDown;->H1:Lcom/mycompany/app/dialog/DialogOpenType;

    .line 67
    .line 68
    const/4 v3, 0x0

    .line 69
    const/4 v6, 0x1

    .line 70
    const/4 v2, 0x0

    .line 71
    const/4 v4, 0x0

    .line 72
    const/4 v5, 0x0

    .line 73
    invoke-virtual/range {v1 .. v6}, Lcom/mycompany/app/view/MyDialogBottom;->x(IIZZZ)V

    .line 74
    .line 75
    .line 76
    return-void
.end method

.method public static F0(Lcom/mycompany/app/main/list/MainListDown;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/main/list/MainListDown;->L1:Lcom/mycompany/app/dialog/DialogPreview;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-virtual {p0}, Lcom/mycompany/app/main/list/MainListDown;->K0()V

    .line 7
    .line 8
    .line 9
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    sget p1, Lnet/kaki87/soul2/testing/R$string;->invalid_url:I

    .line 16
    .line 17
    invoke-static {p0, p1}, Lcom/mycompany/app/main/MainUtil;->e8(Landroid/content/Context;I)V

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :cond_1
    new-instance v0, Lcom/mycompany/app/dialog/DialogPreview;

    .line 22
    .line 23
    new-instance v6, Lcom/mycompany/app/main/list/MainListDown$14;

    .line 24
    .line 25
    invoke-direct {v6, p0, p2, p3, p4}, Lcom/mycompany/app/main/list/MainListDown$14;-><init>(Lcom/mycompany/app/main/list/MainListDown;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    const/4 v4, 0x0

    .line 29
    move-object v1, p0

    .line 30
    move-object v2, p1

    .line 31
    move-object v3, p2

    .line 32
    move-object v5, p4

    .line 33
    invoke-direct/range {v0 .. v6}, Lcom/mycompany/app/dialog/DialogPreview;-><init>(Lcom/mycompany/app/main/MainActivity;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;Lcom/mycompany/app/dialog/DialogPreview$PreviewListener;)V

    .line 34
    .line 35
    .line 36
    iput-object v0, v1, Lcom/mycompany/app/main/list/MainListDown;->L1:Lcom/mycompany/app/dialog/DialogPreview;

    .line 37
    .line 38
    new-instance p0, Lcom/mycompany/app/main/list/MainListDown$15;

    .line 39
    .line 40
    invoke-direct {p0, v1}, Lcom/mycompany/app/main/list/MainListDown$15;-><init>(Lcom/mycompany/app/main/list/MainListDown;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0, p0}, Lcom/mycompany/app/view/MyDialogBottom;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 44
    .line 45
    .line 46
    return-void
.end method

.method public static G0(Lcom/mycompany/app/main/list/MainListDown;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10

    .line 1
    invoke-virtual {p0}, Lcom/mycompany/app/main/list/MainListDown;->M0()Z

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
    invoke-virtual {p0}, Lcom/mycompany/app/main/list/MainListDown;->L0()V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Lcom/mycompany/app/main/list/MainListDown;->Q1:Ljava/lang/String;

    .line 12
    .line 13
    iput-object p2, p0, Lcom/mycompany/app/main/list/MainListDown;->R1:Ljava/lang/String;

    .line 14
    .line 15
    iput-object p3, p0, Lcom/mycompany/app/main/list/MainListDown;->S1:Ljava/lang/String;

    .line 16
    .line 17
    iput-object p4, p0, Lcom/mycompany/app/main/list/MainListDown;->T1:Ljava/lang/String;

    .line 18
    .line 19
    invoke-virtual {p0}, Lcom/mycompany/app/main/MainActivity;->h0()Z

    .line 20
    .line 21
    .line 22
    move-result v5

    .line 23
    new-instance v1, Lcom/mycompany/app/dialog/DialogSetDown;

    .line 24
    .line 25
    new-instance v9, Lcom/mycompany/app/main/list/MainListDown$10;

    .line 26
    .line 27
    invoke-direct {v9, p0}, Lcom/mycompany/app/main/list/MainListDown$10;-><init>(Lcom/mycompany/app/main/list/MainListDown;)V

    .line 28
    .line 29
    .line 30
    const/4 v6, 0x0

    .line 31
    const/4 v7, 0x0

    .line 32
    const/4 v8, 0x0

    .line 33
    move-object v2, p0

    .line 34
    move-object v3, p1

    .line 35
    move-object v4, p4

    .line 36
    invoke-direct/range {v1 .. v9}, Lcom/mycompany/app/dialog/DialogSetDown;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;ZZZILcom/mycompany/app/dialog/DialogSetDown$SetDownListener;)V

    .line 37
    .line 38
    .line 39
    iput-object v1, v2, Lcom/mycompany/app/main/list/MainListDown;->J1:Lcom/mycompany/app/dialog/DialogSetDown;

    .line 40
    .line 41
    new-instance p0, Lcom/mycompany/app/main/list/MainListDown$11;

    .line 42
    .line 43
    invoke-direct {p0, v2}, Lcom/mycompany/app/main/list/MainListDown$11;-><init>(Lcom/mycompany/app/main/list/MainListDown;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v1, p0}, Lcom/mycompany/app/view/MyDialogBottom;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 47
    .line 48
    .line 49
    return-void
.end method


# virtual methods
.method public final H0()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/main/list/MainListDown;->H1:Lcom/mycompany/app/dialog/DialogOpenType;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogOpenType;->dismiss()V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/mycompany/app/main/list/MainListDown;->H1:Lcom/mycompany/app/dialog/DialogOpenType;

    .line 10
    .line 11
    :cond_0
    invoke-virtual {p0}, Lcom/mycompany/app/main/list/MainListDown;->J0()V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/mycompany/app/main/list/MainListDown;->L0()V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/mycompany/app/main/list/MainListDown;->I0()V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Lcom/mycompany/app/main/list/MainListDown;->K0()V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public final I0()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/main/list/MainListDown;->K1:Lcom/mycompany/app/dialog/DialogDownFile;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogDownFile;->dismiss()V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/mycompany/app/main/list/MainListDown;->K1:Lcom/mycompany/app/dialog/DialogDownFile;

    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public final J0()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/main/list/MainListDown;->I1:Lcom/mycompany/app/dialog/DialogDownUrl;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogDownUrl;->dismiss()V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/mycompany/app/main/list/MainListDown;->I1:Lcom/mycompany/app/dialog/DialogDownUrl;

    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public final K0()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/main/list/MainListDown;->L1:Lcom/mycompany/app/dialog/DialogPreview;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogPreview;->dismiss()V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/mycompany/app/main/list/MainListDown;->L1:Lcom/mycompany/app/dialog/DialogPreview;

    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public final L0()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/main/list/MainListDown;->J1:Lcom/mycompany/app/dialog/DialogSetDown;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogSetDown;->dismiss()V

    .line 7
    .line 8
    .line 9
    iput-object v1, p0, Lcom/mycompany/app/main/list/MainListDown;->J1:Lcom/mycompany/app/dialog/DialogSetDown;

    .line 10
    .line 11
    :cond_0
    iput-object v1, p0, Lcom/mycompany/app/main/list/MainListDown;->Q1:Ljava/lang/String;

    .line 12
    .line 13
    iput-object v1, p0, Lcom/mycompany/app/main/list/MainListDown;->R1:Ljava/lang/String;

    .line 14
    .line 15
    iput-object v1, p0, Lcom/mycompany/app/main/list/MainListDown;->S1:Ljava/lang/String;

    .line 16
    .line 17
    iput-object v1, p0, Lcom/mycompany/app/main/list/MainListDown;->T1:Ljava/lang/String;

    .line 18
    .line 19
    return-void
.end method

.method public final M0()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/main/list/MainListDown;->H1:Lcom/mycompany/app/dialog/DialogOpenType;

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
    iget-object v0, p0, Lcom/mycompany/app/main/list/MainListDown;->I1:Lcom/mycompany/app/dialog/DialogDownUrl;

    .line 8
    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    return v1

    .line 12
    :cond_1
    iget-object v0, p0, Lcom/mycompany/app/main/list/MainListDown;->J1:Lcom/mycompany/app/dialog/DialogSetDown;

    .line 13
    .line 14
    if-eqz v0, :cond_2

    .line 15
    .line 16
    return v1

    .line 17
    :cond_2
    iget-object v0, p0, Lcom/mycompany/app/main/list/MainListDown;->K1:Lcom/mycompany/app/dialog/DialogDownFile;

    .line 18
    .line 19
    if-eqz v0, :cond_3

    .line 20
    .line 21
    return v1

    .line 22
    :cond_3
    iget-object v0, p0, Lcom/mycompany/app/main/list/MainListDown;->L1:Lcom/mycompany/app/dialog/DialogPreview;

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

.method public final dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/main/list/MainListDown;->G1:Lcom/mycompany/app/main/MainListView;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    return p1

    .line 7
    :cond_0
    invoke-virtual {v0, p1}, Lcom/mycompany/app/main/MainListView;->q(Landroid/view/MotionEvent;)V

    .line 8
    .line 9
    .line 10
    invoke-super {p0, p1}, Lcom/mycompany/app/main/MainActivity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    return p1
.end method

.method public final k0(IILandroid/content/Intent;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/main/list/MainListDown;->I1:Lcom/mycompany/app/dialog/DialogDownUrl;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1, p2, p3}, Lcom/mycompany/app/dialog/DialogDownUrl;->P(IILandroid/content/Intent;)Z

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
    iget-object v0, p0, Lcom/mycompany/app/main/list/MainListDown;->K1:Lcom/mycompany/app/dialog/DialogDownFile;

    .line 13
    .line 14
    if-eqz v0, :cond_4

    .line 15
    .line 16
    const/16 v1, 0x13

    .line 17
    .line 18
    if-ne p1, v1, :cond_4

    .line 19
    .line 20
    const/4 p1, -0x1

    .line 21
    if-ne p2, p1, :cond_4

    .line 22
    .line 23
    if-nez p3, :cond_1

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_1
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    if-nez p1, :cond_2

    .line 31
    .line 32
    iget-object p1, v0, Lcom/mycompany/app/dialog/DialogDownFile;->b0:Landroid/content/Context;

    .line 33
    .line 34
    sget p2, Lnet/kaki87/soul2/testing/R$string;->invalid_path:I

    .line 35
    .line 36
    invoke-static {p1, p2}, Lcom/mycompany/app/main/MainUtil;->e8(Landroid/content/Context;I)V

    .line 37
    .line 38
    .line 39
    return-void

    .line 40
    :cond_2
    invoke-static {p1}, Lcom/mycompany/app/main/MainUri;->a(Landroid/net/Uri;)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p2

    .line 44
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 45
    .line 46
    .line 47
    move-result p3

    .line 48
    if-eqz p3, :cond_3

    .line 49
    .line 50
    iget-object p1, v0, Lcom/mycompany/app/dialog/DialogDownFile;->b0:Landroid/content/Context;

    .line 51
    .line 52
    sget p2, Lnet/kaki87/soul2/testing/R$string;->invalid_path:I

    .line 53
    .line 54
    invoke-static {p1, p2}, Lcom/mycompany/app/main/MainUtil;->e8(Landroid/content/Context;I)V

    .line 55
    .line 56
    .line 57
    return-void

    .line 58
    :cond_3
    invoke-virtual {v0, p2}, Lcom/mycompany/app/dialog/DialogDownFile;->K(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    iget-object p2, v0, Lcom/mycompany/app/dialog/DialogDownFile;->b0:Landroid/content/Context;

    .line 62
    .line 63
    invoke-static {p2, p1}, Lcom/mycompany/app/main/MainUtil;->z7(Landroid/content/Context;Landroid/net/Uri;)V

    .line 64
    .line 65
    .line 66
    :cond_4
    :goto_0
    return-void
.end method

.method public final l0()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/main/list/MainListDown;->G1:Lcom/mycompany/app/main/MainListView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/mycompany/app/main/MainListView;->V()Z

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
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final onBackPressed()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/mycompany/app/main/MainActivity;->Y()Z

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
    invoke-virtual {p0}, Lcom/mycompany/app/main/list/MainListDown;->l0()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lcom/mycompany/app/main/MainActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/mycompany/app/main/list/MainListDown;->H1:Lcom/mycompany/app/dialog/DialogOpenType;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogOpenType;->dismiss()V

    .line 9
    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput-object v0, p0, Lcom/mycompany/app/main/list/MainListDown;->H1:Lcom/mycompany/app/dialog/DialogOpenType;

    .line 13
    .line 14
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/main/list/MainListDown;->G1:Lcom/mycompany/app/main/MainListView;

    .line 15
    .line 16
    if-nez v0, :cond_1

    .line 17
    .line 18
    goto :goto_2

    .line 19
    :cond_1
    invoke-virtual {v0, p1}, Lcom/mycompany/app/main/MainListView;->b0(Landroid/content/res/Configuration;)Z

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    if-eqz p1, :cond_3

    .line 24
    .line 25
    iget-object p1, p0, Lcom/mycompany/app/main/list/MainListDown;->F1:Lcom/mycompany/app/view/MyMainRelative;

    .line 26
    .line 27
    if-eqz p1, :cond_3

    .line 28
    .line 29
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    sget-boolean v1, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 34
    .line 35
    if-eqz v1, :cond_2

    .line 36
    .line 37
    const/high16 v1, -0x1000000

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_2
    const v1, -0x70708

    .line 41
    .line 42
    .line 43
    :goto_0
    invoke-virtual {p1, v0, v1}, Lcom/mycompany/app/view/MyMainRelative;->b(Landroid/view/Window;I)V

    .line 44
    .line 45
    .line 46
    :cond_3
    invoke-virtual {p0}, Lcom/mycompany/app/main/MainActivity;->h0()Z

    .line 47
    .line 48
    .line 49
    move-result p1

    .line 50
    iget-object v0, p0, Lcom/mycompany/app/main/list/MainListDown;->I1:Lcom/mycompany/app/dialog/DialogDownUrl;

    .line 51
    .line 52
    if-eqz v0, :cond_4

    .line 53
    .line 54
    invoke-virtual {v0, p1}, Lcom/mycompany/app/dialog/DialogDownUrl;->S(Z)V

    .line 55
    .line 56
    .line 57
    goto :goto_1

    .line 58
    :cond_4
    iget-object v0, p0, Lcom/mycompany/app/main/list/MainListDown;->K1:Lcom/mycompany/app/dialog/DialogDownFile;

    .line 59
    .line 60
    if-eqz v0, :cond_5

    .line 61
    .line 62
    invoke-virtual {v0, p1}, Lcom/mycompany/app/dialog/DialogDownFile;->G(Z)V

    .line 63
    .line 64
    .line 65
    :cond_5
    :goto_1
    iget-object v0, p0, Lcom/mycompany/app/main/list/MainListDown;->L1:Lcom/mycompany/app/dialog/DialogPreview;

    .line 66
    .line 67
    if-eqz v0, :cond_6

    .line 68
    .line 69
    invoke-virtual {v0, p1}, Lcom/mycompany/app/dialog/DialogPreview;->D(Z)V

    .line 70
    .line 71
    .line 72
    :cond_6
    :goto_2
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 23

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-super/range {p0 .. p1}, Lcom/mycompany/app/setting/CastActivity;->onCreate(Landroid/os/Bundle;)V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x1

    .line 7
    iput-boolean v1, v0, Lcom/mycompany/app/main/list/MainListDown;->C1:Z

    .line 8
    .line 9
    invoke-static {v0}, Lcom/mycompany/app/main/MainUtil;->u7(Landroid/app/Activity;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    const-string v3, "EXTRA_ID"

    .line 17
    .line 18
    const-wide/16 v4, -0x1

    .line 19
    .line 20
    invoke-virtual {v2, v3, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    .line 21
    .line 22
    .line 23
    move-result-wide v2

    .line 24
    iput-wide v2, v0, Lcom/mycompany/app/main/list/MainListDown;->E1:J

    .line 25
    .line 26
    cmp-long v2, v2, v4

    .line 27
    .line 28
    const/4 v3, 0x0

    .line 29
    if-nez v2, :cond_0

    .line 30
    .line 31
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    const-string v4, "EXTRA_PATH"

    .line 36
    .line 37
    invoke-virtual {v2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    sput-object v2, Lcom/mycompany/app/main/list/MainListDown;->W1:Ljava/lang/String;

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_0
    sput-object v3, Lcom/mycompany/app/main/list/MainListDown;->W1:Ljava/lang/String;

    .line 45
    .line 46
    :goto_0
    sget v2, Lnet/kaki87/soul2/testing/R$id;->list_title_text:I

    .line 47
    .line 48
    sget v4, Lnet/kaki87/soul2/testing/R$id;->list_icon_frame:I

    .line 49
    .line 50
    sget v5, Lnet/kaki87/soul2/testing/R$id;->list_bottom_view:I

    .line 51
    .line 52
    sget v6, Lnet/kaki87/soul2/testing/R$id;->list_cast_icon:I

    .line 53
    .line 54
    new-instance v7, Lcom/mycompany/app/view/MyMainRelative;

    .line 55
    .line 56
    invoke-direct {v7, v0}, Lcom/mycompany/app/view/MyMainRelative;-><init>(Landroid/content/Context;)V

    .line 57
    .line 58
    .line 59
    new-instance v8, Landroid/view/ViewGroup$LayoutParams;

    .line 60
    .line 61
    const/4 v9, -0x1

    .line 62
    invoke-direct {v8, v9, v9}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v7, v8}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 66
    .line 67
    .line 68
    new-instance v8, Landroid/widget/FrameLayout;

    .line 69
    .line 70
    invoke-direct {v8, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 71
    .line 72
    .line 73
    const/4 v10, 0x2

    .line 74
    invoke-static {v9, v9, v10, v5}, Landroidx/work/impl/workers/a;->h(IIII)Landroid/widget/RelativeLayout$LayoutParams;

    .line 75
    .line 76
    .line 77
    move-result-object v11

    .line 78
    invoke-virtual {v7, v8, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 79
    .line 80
    .line 81
    new-instance v11, Lcom/mycompany/app/fragment/FragmentExpandView;

    .line 82
    .line 83
    invoke-direct {v11, v0}, Lcom/mycompany/app/fragment/FragmentExpandView;-><init>(Landroid/content/Context;)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {v11, v3}, Landroid/widget/ExpandableListView;->setGroupIndicator(Landroid/graphics/drawable/Drawable;)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {v11, v3}, Landroid/widget/ExpandableListView;->setChildDivider(Landroid/graphics/drawable/Drawable;)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {v11, v3}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 93
    .line 94
    .line 95
    const/4 v12, 0x0

    .line 96
    invoke-virtual {v11, v12}, Landroid/view/View;->setVerticalScrollBarEnabled(Z)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {v11, v12}, Landroid/view/View;->setHorizontalScrollBarEnabled(Z)V

    .line 100
    .line 101
    .line 102
    new-instance v13, Landroid/graphics/drawable/ColorDrawable;

    .line 103
    .line 104
    invoke-direct {v13, v12}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 105
    .line 106
    .line 107
    invoke-virtual {v11, v13}, Landroid/widget/AbsListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 108
    .line 109
    .line 110
    new-instance v13, Landroid/widget/FrameLayout$LayoutParams;

    .line 111
    .line 112
    invoke-direct {v13, v9, v9}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 113
    .line 114
    .line 115
    sget v14, Lcom/mycompany/app/main/MainApp;->b1:I

    .line 116
    .line 117
    iput v14, v13, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 118
    .line 119
    invoke-virtual {v8, v11, v13}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 120
    .line 121
    .line 122
    new-instance v13, Lcom/mycompany/app/view/MyListGroup;

    .line 123
    .line 124
    invoke-direct {v13, v0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 125
    .line 126
    .line 127
    const/4 v14, 0x4

    .line 128
    invoke-virtual {v13, v14}, Landroid/view/View;->setVisibility(I)V

    .line 129
    .line 130
    .line 131
    const/4 v15, -0x2

    .line 132
    invoke-virtual {v8, v13, v9, v15}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 133
    .line 134
    .line 135
    move/from16 p1, v10

    .line 136
    .line 137
    new-instance v10, Lcom/mycompany/app/view/MyScrollBar;

    .line 138
    .line 139
    invoke-direct {v10, v0}, Lcom/mycompany/app/view/MyScrollBar;-><init>(Landroid/content/Context;)V

    .line 140
    .line 141
    .line 142
    sget v15, Lcom/mycompany/app/main/MainApp;->b1:I

    .line 143
    .line 144
    sget v1, Lcom/mycompany/app/main/MainApp;->i1:I

    .line 145
    .line 146
    iput v15, v10, Lcom/mycompany/app/view/MyScrollBar;->O:I

    .line 147
    .line 148
    iput v1, v10, Lcom/mycompany/app/view/MyScrollBar;->P:I

    .line 149
    .line 150
    invoke-virtual {v10, v14}, Lcom/mycompany/app/view/MyScrollBar;->setVisibility(I)V

    .line 151
    .line 152
    .line 153
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 154
    .line 155
    sget v15, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 156
    .line 157
    invoke-direct {v1, v15, v9}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 158
    .line 159
    .line 160
    const v15, 0x800005

    .line 161
    .line 162
    .line 163
    iput v15, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 164
    .line 165
    invoke-virtual {v8, v10, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 166
    .line 167
    .line 168
    new-instance v1, Lcom/mycompany/app/view/MyFadeImage;

    .line 169
    .line 170
    invoke-direct {v1, v0}, Lcom/mycompany/app/view/MyFadeImage;-><init>(Landroid/content/Context;)V

    .line 171
    .line 172
    .line 173
    sget-object v14, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    .line 174
    .line 175
    invoke-virtual {v1, v14}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 176
    .line 177
    .line 178
    sget v15, Lnet/kaki87/soul2/testing/R$drawable;->logo_gray:I

    .line 179
    .line 180
    invoke-virtual {v1, v15}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 181
    .line 182
    .line 183
    const/16 v15, 0x8

    .line 184
    .line 185
    invoke-virtual {v1, v15}, Lcom/mycompany/app/view/MyFadeImage;->setVisibility(I)V

    .line 186
    .line 187
    .line 188
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    .line 189
    .line 190
    invoke-direct {v3, v9, v9}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 191
    .line 192
    .line 193
    sget v12, Lcom/mycompany/app/main/MainApp;->b1:I

    .line 194
    .line 195
    iput v12, v3, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 196
    .line 197
    invoke-virtual {v8, v1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 198
    .line 199
    .line 200
    new-instance v3, Lcom/mycompany/app/view/MyCoverView;

    .line 201
    .line 202
    invoke-direct {v3, v0}, Lcom/mycompany/app/view/MyCoverView;-><init>(Landroid/content/Context;)V

    .line 203
    .line 204
    .line 205
    invoke-virtual {v3, v15}, Lcom/mycompany/app/view/MyCoverView;->setVisibility(I)V

    .line 206
    .line 207
    .line 208
    new-instance v12, Landroid/widget/FrameLayout$LayoutParams;

    .line 209
    .line 210
    invoke-direct {v12, v9, v9}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 211
    .line 212
    .line 213
    sget v15, Lcom/mycompany/app/main/MainApp;->b1:I

    .line 214
    .line 215
    iput v15, v12, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 216
    .line 217
    invoke-virtual {v8, v3, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 218
    .line 219
    .line 220
    new-instance v12, Lcom/mycompany/app/view/MyHeaderView;

    .line 221
    .line 222
    invoke-direct {v12, v0}, Lcom/mycompany/app/view/MyHeaderView;-><init>(Landroid/content/Context;)V

    .line 223
    .line 224
    .line 225
    sget v15, Lcom/mycompany/app/main/MainApp;->b1:I

    .line 226
    .line 227
    invoke-virtual {v8, v12, v9, v15}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 228
    .line 229
    .line 230
    new-instance v15, Lcom/mycompany/app/view/MyButtonImage;

    .line 231
    .line 232
    invoke-direct {v15, v0}, Lcom/mycompany/app/view/MyButtonImage;-><init>(Landroid/content/Context;)V

    .line 233
    .line 234
    .line 235
    invoke-virtual {v15, v14}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 236
    .line 237
    .line 238
    new-instance v9, Landroid/widget/RelativeLayout$LayoutParams;

    .line 239
    .line 240
    move-object/from16 v18, v3

    .line 241
    .line 242
    sget v3, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 243
    .line 244
    move-object/from16 v19, v1

    .line 245
    .line 246
    sget v1, Lcom/mycompany/app/main/MainApp;->b1:I

    .line 247
    .line 248
    invoke-direct {v9, v3, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 249
    .line 250
    .line 251
    sget v1, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 252
    .line 253
    invoke-virtual {v9, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 254
    .line 255
    .line 256
    invoke-virtual {v12, v15, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 257
    .line 258
    .line 259
    new-instance v1, Lcom/mycompany/app/view/MyButtonRelative;

    .line 260
    .line 261
    invoke-direct {v1, v0}, Lcom/mycompany/app/view/MyButtonRelative;-><init>(Landroid/content/Context;)V

    .line 262
    .line 263
    .line 264
    sget v3, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 265
    .line 266
    div-int/lit8 v3, v3, 0x2

    .line 267
    .line 268
    const/4 v9, 0x0

    .line 269
    invoke-virtual {v1, v3, v9}, Lcom/mycompany/app/view/MyButtonRelative;->e(IZ)V

    .line 270
    .line 271
    .line 272
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    .line 273
    .line 274
    sget v9, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 275
    .line 276
    move-object/from16 v20, v15

    .line 277
    .line 278
    const/4 v15, -0x1

    .line 279
    invoke-direct {v3, v15, v9}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 280
    .line 281
    .line 282
    const/16 v9, 0x10

    .line 283
    .line 284
    invoke-virtual {v3, v9, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 285
    .line 286
    .line 287
    sget v15, Lcom/mycompany/app/main/MainApp;->G1:I

    .line 288
    .line 289
    iput v15, v3, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 290
    .line 291
    sget v15, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 292
    .line 293
    invoke-virtual {v3, v15}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 294
    .line 295
    .line 296
    invoke-virtual {v12, v1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 297
    .line 298
    .line 299
    new-instance v3, Landroidx/appcompat/widget/AppCompatTextView;

    .line 300
    .line 301
    const/4 v15, 0x0

    .line 302
    invoke-direct {v3, v0, v15}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 303
    .line 304
    .line 305
    invoke-virtual {v3, v2}, Landroid/view/View;->setId(I)V

    .line 306
    .line 307
    .line 308
    const/4 v15, 0x1

    .line 309
    invoke-virtual {v3, v15}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 310
    .line 311
    .line 312
    const/high16 v9, 0x41900000    # 18.0f

    .line 313
    .line 314
    invoke-virtual {v3, v15, v9}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 315
    .line 316
    .line 317
    sget v9, Lnet/kaki87/soul2/testing/R$string;->down_list:I

    .line 318
    .line 319
    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setText(I)V

    .line 320
    .line 321
    .line 322
    new-instance v9, Landroid/widget/RelativeLayout$LayoutParams;

    .line 323
    .line 324
    const/4 v15, -0x2

    .line 325
    invoke-direct {v9, v15, v15}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 326
    .line 327
    .line 328
    const/16 v15, 0xf

    .line 329
    .line 330
    invoke-virtual {v9, v15}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 331
    .line 332
    .line 333
    sget v15, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 334
    .line 335
    invoke-virtual {v9, v15}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 336
    .line 337
    .line 338
    invoke-virtual {v1, v3, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 339
    .line 340
    .line 341
    new-instance v9, Landroid/widget/ImageView;

    .line 342
    .line 343
    invoke-direct {v9, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 344
    .line 345
    .line 346
    invoke-virtual {v9, v14}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 347
    .line 348
    .line 349
    new-instance v15, Landroid/widget/RelativeLayout$LayoutParams;

    .line 350
    .line 351
    move-object/from16 v21, v3

    .line 352
    .line 353
    sget v3, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 354
    .line 355
    invoke-direct {v15, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 356
    .line 357
    .line 358
    const/16 v3, 0x11

    .line 359
    .line 360
    invoke-virtual {v15, v3, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 361
    .line 362
    .line 363
    invoke-virtual {v1, v9, v15}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 364
    .line 365
    .line 366
    new-instance v2, Landroid/widget/FrameLayout;

    .line 367
    .line 368
    invoke-direct {v2, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 369
    .line 370
    .line 371
    invoke-virtual {v2, v4}, Landroid/view/View;->setId(I)V

    .line 372
    .line 373
    .line 374
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    .line 375
    .line 376
    sget v4, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 377
    .line 378
    const/4 v15, -0x2

    .line 379
    invoke-direct {v3, v15, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 380
    .line 381
    .line 382
    const/16 v4, 0x10

    .line 383
    .line 384
    invoke-virtual {v3, v4, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 385
    .line 386
    .line 387
    sget v4, Lcom/mycompany/app/main/MainApp;->G1:I

    .line 388
    .line 389
    iput v4, v3, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 390
    .line 391
    invoke-virtual {v12, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 392
    .line 393
    .line 394
    const/high16 v3, 0x41600000    # 14.0f

    .line 395
    .line 396
    invoke-static {v0, v3}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 397
    .line 398
    .line 399
    move-result v3

    .line 400
    float-to-int v3, v3

    .line 401
    new-instance v4, Lcom/mycompany/app/view/MyButtonImage;

    .line 402
    .line 403
    invoke-direct {v4, v0}, Lcom/mycompany/app/view/MyButtonImage;-><init>(Landroid/content/Context;)V

    .line 404
    .line 405
    .line 406
    invoke-virtual {v4, v3, v3, v3, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 407
    .line 408
    .line 409
    invoke-virtual {v4, v14}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 410
    .line 411
    .line 412
    new-instance v15, Landroid/widget/FrameLayout$LayoutParams;

    .line 413
    .line 414
    move-object/from16 v22, v9

    .line 415
    .line 416
    sget v9, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 417
    .line 418
    invoke-direct {v15, v9, v9}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 419
    .line 420
    .line 421
    const v9, 0x800005

    .line 422
    .line 423
    .line 424
    iput v9, v15, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 425
    .line 426
    sget v9, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 427
    .line 428
    mul-int/lit8 v9, v9, 0x2

    .line 429
    .line 430
    invoke-virtual {v15, v9}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 431
    .line 432
    .line 433
    invoke-virtual {v2, v4, v15}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 434
    .line 435
    .line 436
    new-instance v9, Lcom/mycompany/app/view/MyButtonImage;

    .line 437
    .line 438
    invoke-direct {v9, v0}, Lcom/mycompany/app/view/MyButtonImage;-><init>(Landroid/content/Context;)V

    .line 439
    .line 440
    .line 441
    invoke-virtual {v9, v3, v3, v3, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 442
    .line 443
    .line 444
    invoke-virtual {v9, v14}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 445
    .line 446
    .line 447
    new-instance v15, Landroid/widget/FrameLayout$LayoutParams;

    .line 448
    .line 449
    move-object/from16 p1, v4

    .line 450
    .line 451
    sget v4, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 452
    .line 453
    invoke-direct {v15, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 454
    .line 455
    .line 456
    const v4, 0x800005

    .line 457
    .line 458
    .line 459
    iput v4, v15, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 460
    .line 461
    sget v4, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 462
    .line 463
    invoke-virtual {v15, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 464
    .line 465
    .line 466
    invoke-virtual {v2, v9, v15}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 467
    .line 468
    .line 469
    new-instance v4, Lcom/mycompany/app/view/MyButtonImage;

    .line 470
    .line 471
    invoke-direct {v4, v0}, Lcom/mycompany/app/view/MyButtonImage;-><init>(Landroid/content/Context;)V

    .line 472
    .line 473
    .line 474
    invoke-virtual {v4, v3, v3, v3, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 475
    .line 476
    .line 477
    invoke-virtual {v4, v14}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 478
    .line 479
    .line 480
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    .line 481
    .line 482
    sget v14, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 483
    .line 484
    invoke-direct {v3, v14, v14}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 485
    .line 486
    .line 487
    const v14, 0x800005

    .line 488
    .line 489
    .line 490
    iput v14, v3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 491
    .line 492
    invoke-virtual {v2, v4, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 493
    .line 494
    .line 495
    new-instance v3, Landroidx/appcompat/widget/AppCompatTextView;

    .line 496
    .line 497
    const/4 v15, 0x0

    .line 498
    invoke-direct {v3, v0, v15}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 499
    .line 500
    .line 501
    sget v14, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 502
    .line 503
    const/4 v15, 0x0

    .line 504
    invoke-virtual {v3, v14, v15, v14, v15}, Landroid/view/View;->setPadding(IIII)V

    .line 505
    .line 506
    .line 507
    const/16 v14, 0x10

    .line 508
    .line 509
    invoke-virtual {v3, v14}, Landroid/widget/TextView;->setGravity(I)V

    .line 510
    .line 511
    .line 512
    const/4 v14, 0x3

    .line 513
    invoke-virtual {v3, v14}, Landroid/view/View;->setTextDirection(I)V

    .line 514
    .line 515
    .line 516
    const/high16 v14, 0x41800000    # 16.0f

    .line 517
    .line 518
    const/4 v15, 0x1

    .line 519
    invoke-virtual {v3, v15, v14}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 520
    .line 521
    .line 522
    const/16 v14, 0x8

    .line 523
    .line 524
    invoke-virtual {v3, v14}, Landroid/view/View;->setVisibility(I)V

    .line 525
    .line 526
    .line 527
    new-instance v14, Landroid/widget/FrameLayout$LayoutParams;

    .line 528
    .line 529
    sget v15, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 530
    .line 531
    move-object/from16 v16, v4

    .line 532
    .line 533
    const/4 v4, -0x2

    .line 534
    invoke-direct {v14, v4, v15}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 535
    .line 536
    .line 537
    const v4, 0x800005

    .line 538
    .line 539
    .line 540
    iput v4, v14, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 541
    .line 542
    const/high16 v4, 0x42500000    # 52.0f

    .line 543
    .line 544
    invoke-static {v0, v4}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 545
    .line 546
    .line 547
    move-result v4

    .line 548
    float-to-int v4, v4

    .line 549
    invoke-virtual {v14, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 550
    .line 551
    .line 552
    invoke-virtual {v2, v3, v14}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 553
    .line 554
    .line 555
    new-instance v4, Lcom/mycompany/app/view/MyButtonCheck;

    .line 556
    .line 557
    invoke-direct {v4, v0}, Lcom/mycompany/app/view/MyButtonCheck;-><init>(Landroid/content/Context;)V

    .line 558
    .line 559
    .line 560
    const/16 v14, 0x8

    .line 561
    .line 562
    invoke-virtual {v4, v14}, Lcom/mycompany/app/view/MyButtonCheck;->setVisibility(I)V

    .line 563
    .line 564
    .line 565
    new-instance v14, Landroid/widget/FrameLayout$LayoutParams;

    .line 566
    .line 567
    sget v15, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 568
    .line 569
    invoke-direct {v14, v15, v15}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 570
    .line 571
    .line 572
    const v15, 0x800005

    .line 573
    .line 574
    .line 575
    iput v15, v14, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 576
    .line 577
    invoke-virtual {v2, v4, v14}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 578
    .line 579
    .line 580
    new-instance v2, Landroid/widget/FrameLayout;

    .line 581
    .line 582
    invoke-direct {v2, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 583
    .line 584
    .line 585
    invoke-virtual {v2, v6}, Landroid/view/View;->setId(I)V

    .line 586
    .line 587
    .line 588
    const/4 v6, 0x4

    .line 589
    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 590
    .line 591
    .line 592
    new-instance v6, Landroid/widget/RelativeLayout$LayoutParams;

    .line 593
    .line 594
    sget v14, Lcom/mycompany/app/main/MainApp;->b1:I

    .line 595
    .line 596
    const/4 v15, -0x2

    .line 597
    invoke-direct {v6, v15, v14}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 598
    .line 599
    .line 600
    const/16 v14, 0x15

    .line 601
    .line 602
    invoke-virtual {v6, v14}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 603
    .line 604
    .line 605
    invoke-virtual {v12, v2, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 606
    .line 607
    .line 608
    new-instance v6, Lcom/mycompany/app/view/MyProgressBar;

    .line 609
    .line 610
    invoke-direct {v6, v0}, Lcom/mycompany/app/view/MyProgressBar;-><init>(Landroid/content/Context;)V

    .line 611
    .line 612
    .line 613
    const/high16 v14, 0x3fc00000    # 1.5f

    .line 614
    .line 615
    invoke-static {v0, v14}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 616
    .line 617
    .line 618
    move-result v14

    .line 619
    float-to-int v14, v14

    .line 620
    invoke-virtual {v6, v14}, Lcom/mycompany/app/view/MyProgressBar;->d(I)V

    .line 621
    .line 622
    .line 623
    const/high16 v14, 0x40000000    # 2.0f

    .line 624
    .line 625
    invoke-static {v0, v14}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 626
    .line 627
    .line 628
    move-result v14

    .line 629
    float-to-int v14, v14

    .line 630
    new-instance v15, Landroid/widget/FrameLayout$LayoutParams;

    .line 631
    .line 632
    move-object/from16 v17, v2

    .line 633
    .line 634
    const/4 v2, -0x1

    .line 635
    invoke-direct {v15, v2, v14}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 636
    .line 637
    .line 638
    sget v14, Lcom/mycompany/app/main/MainApp;->b1:I

    .line 639
    .line 640
    iput v14, v15, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 641
    .line 642
    invoke-virtual {v8, v6, v15}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 643
    .line 644
    .line 645
    new-instance v14, Landroid/widget/RelativeLayout;

    .line 646
    .line 647
    invoke-direct {v14, v0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 648
    .line 649
    .line 650
    invoke-virtual {v14, v5}, Landroid/view/View;->setId(I)V

    .line 651
    .line 652
    .line 653
    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    .line 654
    .line 655
    const/4 v15, -0x2

    .line 656
    invoke-direct {v5, v2, v15}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 657
    .line 658
    .line 659
    const/16 v2, 0xc

    .line 660
    .line 661
    invoke-virtual {v5, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 662
    .line 663
    .line 664
    invoke-virtual {v7, v14, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 665
    .line 666
    .line 667
    new-instance v2, Landroid/widget/FrameLayout;

    .line 668
    .line 669
    invoke-direct {v2, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 670
    .line 671
    .line 672
    const/16 v5, 0x8

    .line 673
    .line 674
    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 675
    .line 676
    .line 677
    const/4 v5, -0x1

    .line 678
    invoke-virtual {v14, v2, v5, v15}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 679
    .line 680
    .line 681
    iput-object v7, v0, Lcom/mycompany/app/main/list/MainListDown;->F1:Lcom/mycompany/app/view/MyMainRelative;

    .line 682
    .line 683
    new-instance v5, Lcom/mycompany/app/main/MainListView$ListViewHolder;

    .line 684
    .line 685
    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    .line 686
    .line 687
    .line 688
    iput-object v7, v5, Lcom/mycompany/app/main/MainListView$ListViewHolder;->a:Landroid/widget/RelativeLayout;

    .line 689
    .line 690
    iput-object v8, v5, Lcom/mycompany/app/main/MainListView$ListViewHolder;->b:Landroid/widget/FrameLayout;

    .line 691
    .line 692
    iput-object v11, v5, Lcom/mycompany/app/main/MainListView$ListViewHolder;->r:Lcom/mycompany/app/fragment/FragmentExpandView;

    .line 693
    .line 694
    iput-object v13, v5, Lcom/mycompany/app/main/MainListView$ListViewHolder;->c:Lcom/mycompany/app/view/MyListGroup;

    .line 695
    .line 696
    iput-object v10, v5, Lcom/mycompany/app/main/MainListView$ListViewHolder;->s:Lcom/mycompany/app/view/MyScrollBar;

    .line 697
    .line 698
    move-object/from16 v8, v19

    .line 699
    .line 700
    iput-object v8, v5, Lcom/mycompany/app/main/MainListView$ListViewHolder;->t:Lcom/mycompany/app/view/MyFadeImage;

    .line 701
    .line 702
    move-object/from16 v8, v18

    .line 703
    .line 704
    iput-object v8, v5, Lcom/mycompany/app/main/MainListView$ListViewHolder;->u:Lcom/mycompany/app/view/MyCoverView;

    .line 705
    .line 706
    iput-object v12, v5, Lcom/mycompany/app/main/MainListView$ListViewHolder;->d:Lcom/mycompany/app/view/MyHeaderView;

    .line 707
    .line 708
    move-object/from16 v8, v20

    .line 709
    .line 710
    iput-object v8, v5, Lcom/mycompany/app/main/MainListView$ListViewHolder;->e:Lcom/mycompany/app/view/MyButtonImage;

    .line 711
    .line 712
    iput-object v1, v5, Lcom/mycompany/app/main/MainListView$ListViewHolder;->g:Lcom/mycompany/app/view/MyButtonRelative;

    .line 713
    .line 714
    move-object/from16 v1, v21

    .line 715
    .line 716
    iput-object v1, v5, Lcom/mycompany/app/main/MainListView$ListViewHolder;->f:Landroidx/appcompat/widget/AppCompatTextView;

    .line 717
    .line 718
    move-object/from16 v1, v22

    .line 719
    .line 720
    iput-object v1, v5, Lcom/mycompany/app/main/MainListView$ListViewHolder;->h:Landroid/widget/ImageView;

    .line 721
    .line 722
    move-object/from16 v1, p1

    .line 723
    .line 724
    iput-object v1, v5, Lcom/mycompany/app/main/MainListView$ListViewHolder;->l:Lcom/mycompany/app/view/MyButtonImage;

    .line 725
    .line 726
    iput-object v9, v5, Lcom/mycompany/app/main/MainListView$ListViewHolder;->m:Lcom/mycompany/app/view/MyButtonImage;

    .line 727
    .line 728
    move-object/from16 v1, v16

    .line 729
    .line 730
    iput-object v1, v5, Lcom/mycompany/app/main/MainListView$ListViewHolder;->n:Lcom/mycompany/app/view/MyButtonImage;

    .line 731
    .line 732
    iput-object v3, v5, Lcom/mycompany/app/main/MainListView$ListViewHolder;->o:Landroidx/appcompat/widget/AppCompatTextView;

    .line 733
    .line 734
    iput-object v4, v5, Lcom/mycompany/app/main/MainListView$ListViewHolder;->p:Lcom/mycompany/app/view/MyButtonCheck;

    .line 735
    .line 736
    iput-object v6, v5, Lcom/mycompany/app/main/MainListView$ListViewHolder;->q:Lcom/mycompany/app/view/MyProgressBar;

    .line 737
    .line 738
    iput-object v5, v0, Lcom/mycompany/app/main/list/MainListDown;->P1:Lcom/mycompany/app/main/MainListView$ListViewHolder;

    .line 739
    .line 740
    move-object/from16 v1, v17

    .line 741
    .line 742
    invoke-virtual {v0, v7, v1, v2}, Lcom/mycompany/app/setting/CastActivity;->B0(Landroid/view/View;Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;)V

    .line 743
    .line 744
    .line 745
    iget-object v1, v0, Lcom/mycompany/app/main/list/MainListDown;->F1:Lcom/mycompany/app/view/MyMainRelative;

    .line 746
    .line 747
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 748
    .line 749
    .line 750
    move-result-object v2

    .line 751
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyMainRelative;->setWindow(Landroid/view/Window;)V

    .line 752
    .line 753
    .line 754
    iget-object v1, v0, Lcom/mycompany/app/main/list/MainListDown;->F1:Lcom/mycompany/app/view/MyMainRelative;

    .line 755
    .line 756
    invoke-virtual {v0, v1}, Lcom/mycompany/app/main/MainActivity;->initMainScreenOn(Landroid/view/View;)V

    .line 757
    .line 758
    .line 759
    iget-object v1, v0, Lcom/mycompany/app/main/MainActivity;->O0:Landroid/os/Handler;

    .line 760
    .line 761
    if-nez v1, :cond_1

    .line 762
    .line 763
    return-void

    .line 764
    :cond_1
    new-instance v2, Lcom/mycompany/app/main/list/MainListDown$1;

    .line 765
    .line 766
    invoke-direct {v2, v0}, Lcom/mycompany/app/main/list/MainListDown$1;-><init>(Lcom/mycompany/app/main/list/MainListDown;)V

    .line 767
    .line 768
    .line 769
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 770
    .line 771
    .line 772
    return-void
.end method

.method public final onDestroy()V
    .locals 3

    .line 1
    invoke-super {p0}, Lcom/mycompany/app/setting/CastActivity;->onDestroy()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/mycompany/app/main/list/MainListDown;->N1:Z

    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-static {v0}, Lcom/mycompany/app/main/MainApp;->p(Landroid/content/Context;)Lcom/mycompany/app/main/MainApp;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const/4 v1, 0x0

    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    iput-object v1, v0, Lcom/mycompany/app/main/MainApp;->G:Lcom/mycompany/app/main/MainDownSvc$DownListListener;

    .line 19
    .line 20
    iget-boolean v2, v0, Lcom/mycompany/app/main/MainApp;->u:Z

    .line 21
    .line 22
    if-eqz v2, :cond_1

    .line 23
    .line 24
    iget-object v0, v0, Lcom/mycompany/app/main/MainApp;->v:Lcom/mycompany/app/main/MainDownSvc;

    .line 25
    .line 26
    if-nez v0, :cond_0

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    iput-object v1, v0, Lcom/mycompany/app/main/MainDownSvc;->r:Lcom/mycompany/app/main/MainDownSvc$DownListListener;

    .line 30
    .line 31
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/mycompany/app/main/list/MainListDown;->G1:Lcom/mycompany/app/main/MainListView;

    .line 32
    .line 33
    if-eqz v0, :cond_2

    .line 34
    .line 35
    invoke-virtual {v0}, Lcom/mycompany/app/main/MainListView;->O()V

    .line 36
    .line 37
    .line 38
    iput-object v1, p0, Lcom/mycompany/app/main/list/MainListDown;->G1:Lcom/mycompany/app/main/MainListView;

    .line 39
    .line 40
    :cond_2
    sput-object v1, Lcom/mycompany/app/main/list/MainListDown;->W1:Ljava/lang/String;

    .line 41
    .line 42
    iput-object v1, p0, Lcom/mycompany/app/main/list/MainListDown;->F1:Lcom/mycompany/app/view/MyMainRelative;

    .line 43
    .line 44
    return-void
.end method

.method public final onNewIntent(Landroid/content/Intent;)V
    .locals 5

    .line 1
    invoke-super {p0, p1}, Landroidx/activity/ComponentActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/mycompany/app/main/list/MainListDown;->G1:Lcom/mycompany/app/main/MainListView;

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const-string v0, "EXTRA_ID"

    .line 10
    .line 11
    const-wide/16 v1, -0x1

    .line 12
    .line 13
    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    .line 14
    .line 15
    .line 16
    move-result-wide v3

    .line 17
    cmp-long p1, v3, v1

    .line 18
    .line 19
    if-nez p1, :cond_1

    .line 20
    .line 21
    :goto_0
    return-void

    .line 22
    :cond_1
    const/4 p1, 0x1

    .line 23
    iput-boolean p1, p0, Lcom/mycompany/app/main/list/MainListDown;->D1:Z

    .line 24
    .line 25
    iget-object p1, p0, Lcom/mycompany/app/main/list/MainListDown;->G1:Lcom/mycompany/app/main/MainListView;

    .line 26
    .line 27
    const/4 v0, 0x0

    .line 28
    invoke-virtual {p1, v3, v4, v0}, Lcom/mycompany/app/main/MainListView;->L(JZ)V

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method public final onPause()V
    .locals 3

    .line 1
    invoke-super {p0}, Lcom/mycompany/app/setting/CastActivity;->onPause()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    iget-object v1, p0, Lcom/mycompany/app/main/list/MainListDown;->G1:Lcom/mycompany/app/main/MainListView;

    .line 9
    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    invoke-virtual {v1, v0}, Lcom/mycompany/app/main/MainListView;->Q(Z)V

    .line 13
    .line 14
    .line 15
    :cond_0
    iget-object v1, p0, Lcom/mycompany/app/main/list/MainListDown;->L1:Lcom/mycompany/app/dialog/DialogPreview;

    .line 16
    .line 17
    if-eqz v1, :cond_1

    .line 18
    .line 19
    invoke-virtual {v1}, Lcom/mycompany/app/dialog/DialogPreview;->E()V

    .line 20
    .line 21
    .line 22
    :cond_1
    if-eqz v0, :cond_4

    .line 23
    .line 24
    const/4 v0, 0x0

    .line 25
    iput-boolean v0, p0, Lcom/mycompany/app/main/list/MainListDown;->N1:Z

    .line 26
    .line 27
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-static {v0}, Lcom/mycompany/app/main/MainApp;->p(Landroid/content/Context;)Lcom/mycompany/app/main/MainApp;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    if-eqz v0, :cond_3

    .line 36
    .line 37
    const/4 v1, 0x0

    .line 38
    iput-object v1, v0, Lcom/mycompany/app/main/MainApp;->G:Lcom/mycompany/app/main/MainDownSvc$DownListListener;

    .line 39
    .line 40
    iget-boolean v2, v0, Lcom/mycompany/app/main/MainApp;->u:Z

    .line 41
    .line 42
    if-eqz v2, :cond_3

    .line 43
    .line 44
    iget-object v0, v0, Lcom/mycompany/app/main/MainApp;->v:Lcom/mycompany/app/main/MainDownSvc;

    .line 45
    .line 46
    if-nez v0, :cond_2

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_2
    iput-object v1, v0, Lcom/mycompany/app/main/MainDownSvc;->r:Lcom/mycompany/app/main/MainDownSvc$DownListListener;

    .line 50
    .line 51
    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcom/mycompany/app/main/list/MainListDown;->H0()V

    .line 52
    .line 53
    .line 54
    return-void

    .line 55
    :cond_4
    const/4 v0, 0x1

    .line 56
    iput-boolean v0, p0, Lcom/mycompany/app/main/list/MainListDown;->O1:Z

    .line 57
    .line 58
    return-void
.end method

.method public final onResume()V
    .locals 4

    .line 1
    invoke-super {p0}, Lcom/mycompany/app/setting/CastActivity;->onResume()V

    .line 2
    .line 3
    .line 4
    iget-boolean v0, p0, Lcom/mycompany/app/main/list/MainListDown;->C1:Z

    .line 5
    .line 6
    xor-int/lit8 v1, v0, 0x1

    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    iget-boolean v0, p0, Lcom/mycompany/app/main/list/MainListDown;->D1:Z

    .line 12
    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    const/4 v0, 0x1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    move v0, v2

    .line 18
    :goto_0
    iput-boolean v2, p0, Lcom/mycompany/app/main/list/MainListDown;->C1:Z

    .line 19
    .line 20
    iput-boolean v2, p0, Lcom/mycompany/app/main/list/MainListDown;->D1:Z

    .line 21
    .line 22
    iget-object v3, p0, Lcom/mycompany/app/main/list/MainListDown;->G1:Lcom/mycompany/app/main/MainListView;

    .line 23
    .line 24
    if-eqz v3, :cond_1

    .line 25
    .line 26
    invoke-virtual {v3, v1, v0, v2}, Lcom/mycompany/app/main/MainListView;->R(ZZZ)V

    .line 27
    .line 28
    .line 29
    :cond_1
    iget-object v0, p0, Lcom/mycompany/app/main/list/MainListDown;->L1:Lcom/mycompany/app/dialog/DialogPreview;

    .line 30
    .line 31
    if-eqz v0, :cond_2

    .line 32
    .line 33
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogPreview;->H()V

    .line 34
    .line 35
    .line 36
    :cond_2
    return-void
.end method
