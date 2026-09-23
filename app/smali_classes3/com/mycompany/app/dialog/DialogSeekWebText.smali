.class public Lcom/mycompany/app/dialog/DialogSeekWebText;
.super Lcom/mycompany/app/view/MyDialogBottom;
.source "SourceFile"


# static fields
.field public static final synthetic T0:I


# instance fields
.field public A0:Lcom/mycompany/app/view/MyButtonImage;

.field public B0:Lcom/mycompany/app/view/MyButtonImage;

.field public C0:Landroidx/appcompat/widget/AppCompatTextView;

.field public D0:Lcom/mycompany/app/view/MyLineText;

.field public E0:Landroid/widget/FrameLayout;

.field public F0:Lcom/mycompany/app/wview/WebFltView;

.field public G0:Z

.field public H0:I

.field public I0:I

.field public J0:Z

.field public K0:Z

.field public L0:Lcom/mycompany/app/dialog/DialogEditIcon;

.field public M0:Lcom/mycompany/app/dialog/DialogSetMsg;

.field public N0:I

.field public O0:I

.field public P0:F

.field public Q0:I

.field public R0:Z

.field public final S0:Ljava/lang/Runnable;

.field public final a0:I

.field public final b0:I

.field public c0:Lcom/mycompany/app/main/MainActivity;

.field public d0:Landroid/content/Context;

.field public e0:Lcom/mycompany/app/dialog/DialogSetImage$ChangedListener;

.field public f0:Lcom/mycompany/app/web/WebNestView;

.field public g0:Landroid/widget/RelativeLayout;

.field public h0:Lcom/mycompany/app/view/MyDialogLinear;

.field public i0:Landroid/widget/RelativeLayout;

.field public j0:Lcom/mycompany/app/view/MySwitchView;

.field public k0:Landroidx/appcompat/widget/AppCompatTextView;

.field public l0:Landroidx/appcompat/widget/AppCompatTextView;

.field public m0:Lcom/mycompany/app/view/MyLineRelative;

.field public n0:Landroidx/appcompat/widget/AppCompatTextView;

.field public o0:Lcom/mycompany/app/view/MyButtonView;

.field public p0:Lcom/mycompany/app/view/MyRoundItem;

.field public q0:Landroidx/appcompat/widget/AppCompatTextView;

.field public r0:Landroidx/appcompat/widget/AppCompatTextView;

.field public s0:Landroid/widget/FrameLayout;

.field public t0:Landroid/widget/SeekBar;

.field public u0:Lcom/mycompany/app/view/MyButtonImage;

.field public v0:Lcom/mycompany/app/view/MyButtonImage;

.field public w0:Lcom/mycompany/app/view/MyRoundItem;

.field public x0:Landroidx/appcompat/widget/AppCompatTextView;

.field public y0:Landroidx/appcompat/widget/AppCompatTextView;

.field public z0:Landroid/widget/SeekBar;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/main/MainActivity;Lcom/mycompany/app/web/WebNestView;Lcom/mycompany/app/dialog/DialogSetImage$ChangedListener;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Lcom/mycompany/app/view/MyDialogBottom;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/mycompany/app/dialog/DialogSeekWebText$17;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Lcom/mycompany/app/dialog/DialogSeekWebText$17;-><init>(Lcom/mycompany/app/dialog/DialogSeekWebText;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogSeekWebText;->S0:Ljava/lang/Runnable;

    .line 10
    .line 11
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogSeekWebText;->c0:Lcom/mycompany/app/main/MainActivity;

    .line 12
    .line 13
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogSeekWebText;->d0:Landroid/content/Context;

    .line 18
    .line 19
    iput-object p3, p0, Lcom/mycompany/app/dialog/DialogSeekWebText;->e0:Lcom/mycompany/app/dialog/DialogSetImage$ChangedListener;

    .line 20
    .line 21
    iput-object p2, p0, Lcom/mycompany/app/dialog/DialogSeekWebText;->f0:Lcom/mycompany/app/web/WebNestView;

    .line 22
    .line 23
    const/16 p1, 0x32

    .line 24
    .line 25
    iput p1, p0, Lcom/mycompany/app/dialog/DialogSeekWebText;->a0:I

    .line 26
    .line 27
    const/16 p3, 0x1f4

    .line 28
    .line 29
    iput p3, p0, Lcom/mycompany/app/dialog/DialogSeekWebText;->b0:I

    .line 30
    .line 31
    sget v0, Lcom/mycompany/app/pref/PrefZtri;->p:I

    .line 32
    .line 33
    const/16 v1, 0x64

    .line 34
    .line 35
    if-lt v0, p1, :cond_0

    .line 36
    .line 37
    if-le v0, p3, :cond_1

    .line 38
    .line 39
    :cond_0
    sput v1, Lcom/mycompany/app/pref/PrefZtri;->p:I

    .line 40
    .line 41
    :cond_1
    sget v0, Lcom/mycompany/app/pref/PrefZone;->w:I

    .line 42
    .line 43
    if-lt v0, p1, :cond_2

    .line 44
    .line 45
    if-le v0, p3, :cond_3

    .line 46
    .line 47
    :cond_2
    sput v1, Lcom/mycompany/app/pref/PrefZone;->w:I

    .line 48
    .line 49
    :cond_3
    sget-boolean p1, Lcom/mycompany/app/pref/PrefZtri;->k:Z

    .line 50
    .line 51
    iput-boolean p1, p0, Lcom/mycompany/app/dialog/DialogSeekWebText;->G0:Z

    .line 52
    .line 53
    sget p1, Lcom/mycompany/app/pref/PrefZtri;->p:I

    .line 54
    .line 55
    iput p1, p0, Lcom/mycompany/app/dialog/DialogSeekWebText;->H0:I

    .line 56
    .line 57
    sget p1, Lcom/mycompany/app/pref/PrefZone;->w:I

    .line 58
    .line 59
    iput p1, p0, Lcom/mycompany/app/dialog/DialogSeekWebText;->I0:I

    .line 60
    .line 61
    sget p1, Lcom/mycompany/app/pref/PrefEditor;->r:I

    .line 62
    .line 63
    iput p1, p0, Lcom/mycompany/app/dialog/DialogSeekWebText;->N0:I

    .line 64
    .line 65
    sget p1, Lcom/mycompany/app/pref/PrefEditor;->s:I

    .line 66
    .line 67
    iput p1, p0, Lcom/mycompany/app/dialog/DialogSeekWebText;->O0:I

    .line 68
    .line 69
    sget p1, Lcom/mycompany/app/pref/PrefEditor;->t:F

    .line 70
    .line 71
    iput p1, p0, Lcom/mycompany/app/dialog/DialogSeekWebText;->P0:F

    .line 72
    .line 73
    invoke-virtual {p2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    invoke-virtual {p1}, Landroid/webkit/WebSettings;->getTextZoom()I

    .line 78
    .line 79
    .line 80
    move-result p1

    .line 81
    iput p1, p0, Lcom/mycompany/app/dialog/DialogSeekWebText;->Q0:I

    .line 82
    .line 83
    iget-object p1, p0, Lcom/mycompany/app/view/MyDialogBottom;->i:Landroid/os/Handler;

    .line 84
    .line 85
    if-nez p1, :cond_4

    .line 86
    .line 87
    return-void

    .line 88
    :cond_4
    new-instance p2, Lcom/mycompany/app/dialog/DialogSeekWebText$1;

    .line 89
    .line 90
    invoke-direct {p2, p0}, Lcom/mycompany/app/dialog/DialogSeekWebText$1;-><init>(Lcom/mycompany/app/dialog/DialogSeekWebText;)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 94
    .line 95
    .line 96
    return-void
.end method

.method public static B(Lcom/mycompany/app/dialog/DialogSeekWebText;I)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSeekWebText;->S0:Ljava/lang/Runnable;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogSeekWebText;->y0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    goto :goto_2

    .line 8
    :cond_0
    iget v1, p0, Lcom/mycompany/app/dialog/DialogSeekWebText;->a0:I

    .line 9
    .line 10
    if-ge p1, v1, :cond_1

    .line 11
    .line 12
    :goto_0
    move p1, v1

    .line 13
    goto :goto_1

    .line 14
    :cond_1
    iget v1, p0, Lcom/mycompany/app/dialog/DialogSeekWebText;->b0:I

    .line 15
    .line 16
    if-le p1, v1, :cond_2

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_2
    :goto_1
    iget-boolean v1, p0, Lcom/mycompany/app/dialog/DialogSeekWebText;->K0:Z

    .line 20
    .line 21
    if-nez v1, :cond_6

    .line 22
    .line 23
    iget v1, p0, Lcom/mycompany/app/dialog/DialogSeekWebText;->I0:I

    .line 24
    .line 25
    if-ne v1, p1, :cond_3

    .line 26
    .line 27
    goto :goto_2

    .line 28
    :cond_3
    const/4 v1, 0x1

    .line 29
    iput-boolean v1, p0, Lcom/mycompany/app/dialog/DialogSeekWebText;->K0:Z

    .line 30
    .line 31
    iput p1, p0, Lcom/mycompany/app/dialog/DialogSeekWebText;->I0:I

    .line 32
    .line 33
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogSeekWebText;->f0:Lcom/mycompany/app/web/WebNestView;

    .line 34
    .line 35
    if-nez p1, :cond_4

    .line 36
    .line 37
    goto :goto_2

    .line 38
    :cond_4
    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    iget v2, p0, Lcom/mycompany/app/dialog/DialogSeekWebText;->I0:I

    .line 43
    .line 44
    invoke-virtual {p1, v2}, Landroid/webkit/WebSettings;->setTextZoom(I)V

    .line 45
    .line 46
    .line 47
    iput-boolean v1, p0, Lcom/mycompany/app/dialog/DialogSeekWebText;->R0:Z

    .line 48
    .line 49
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogSeekWebText;->y0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 50
    .line 51
    new-instance v1, Ljava/lang/StringBuilder;

    .line 52
    .line 53
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 54
    .line 55
    .line 56
    iget v2, p0, Lcom/mycompany/app/dialog/DialogSeekWebText;->I0:I

    .line 57
    .line 58
    const-string v3, "%"

    .line 59
    .line 60
    invoke-static {v1, v2, v3, p1}, Lcom/mycompany/app/dialog/a;->t(Ljava/lang/StringBuilder;ILjava/lang/String;Landroidx/appcompat/widget/AppCompatTextView;)V

    .line 61
    .line 62
    .line 63
    iget-boolean p1, p0, Lcom/mycompany/app/dialog/DialogSeekWebText;->J0:Z

    .line 64
    .line 65
    if-eqz p1, :cond_5

    .line 66
    .line 67
    const/4 p1, 0x0

    .line 68
    iput-boolean p1, p0, Lcom/mycompany/app/dialog/DialogSeekWebText;->J0:Z

    .line 69
    .line 70
    iput-boolean p1, p0, Lcom/mycompany/app/dialog/DialogSeekWebText;->K0:Z

    .line 71
    .line 72
    return-void

    .line 73
    :cond_5
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogSeekWebText;->y0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 74
    .line 75
    invoke-virtual {p1, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 76
    .line 77
    .line 78
    iget-object p0, p0, Lcom/mycompany/app/dialog/DialogSeekWebText;->y0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 79
    .line 80
    const-wide/16 v1, 0x64

    .line 81
    .line 82
    invoke-virtual {p0, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 83
    .line 84
    .line 85
    :cond_6
    :goto_2
    return-void
.end method

.method public static C(Lcom/mycompany/app/dialog/DialogSeekWebText;I)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSeekWebText;->r0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_2

    .line 6
    :cond_0
    iget v1, p0, Lcom/mycompany/app/dialog/DialogSeekWebText;->a0:I

    .line 7
    .line 8
    if-ge p1, v1, :cond_1

    .line 9
    .line 10
    :goto_0
    move p1, v1

    .line 11
    goto :goto_1

    .line 12
    :cond_1
    iget v1, p0, Lcom/mycompany/app/dialog/DialogSeekWebText;->b0:I

    .line 13
    .line 14
    if-le p1, v1, :cond_2

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_2
    :goto_1
    iget v1, p0, Lcom/mycompany/app/dialog/DialogSeekWebText;->H0:I

    .line 18
    .line 19
    if-ne v1, p1, :cond_3

    .line 20
    .line 21
    :goto_2
    return-void

    .line 22
    :cond_3
    move v2, v1

    .line 23
    iput p1, p0, Lcom/mycompany/app/dialog/DialogSeekWebText;->H0:I

    .line 24
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogSeekWebText;->f0:Lcom/mycompany/app/web/WebNestView;

    .line 25
    if-nez v1, :cond_4

    .line 26
    goto :goto_3

    .line 27
    :cond_4
    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    .line 28
    move-result-object v3

    .line 29
    invoke-virtual {v3}, Landroid/webkit/WebSettings;->getTextZoom()I

    .line 30
    move-result v3

    .line 31
    if-eq v3, v2, :cond_5

    .line 32
    goto :goto_3

    .line 33
    :cond_5
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogSeekWebText;->f0:Lcom/mycompany/app/web/WebNestView;

    .line 34
    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    .line 35
    move-result-object v1

    .line 36
    iget v3, p0, Lcom/mycompany/app/dialog/DialogSeekWebText;->H0:I

    .line 37
    invoke-virtual {v1, v3}, Landroid/webkit/WebSettings;->setTextZoom(I)V

    .line 38
    const/4 v1, 0x1

    .line 39
    iput-boolean v1, p0, Lcom/mycompany/app/dialog/DialogSeekWebText;->R0:Z

    .line 40
    :goto_3
    new-instance p1, Ljava/lang/StringBuilder;

    .line 25
    .line 26
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 27
    .line 28
    .line 29
    iget p0, p0, Lcom/mycompany/app/dialog/DialogSeekWebText;->H0:I

    .line 30
    .line 31
    const-string v1, "%"

    .line 32
    .line 33
    invoke-static {p1, p0, v1, v0}, Lcom/mycompany/app/dialog/a;->t(Ljava/lang/StringBuilder;ILjava/lang/String;Landroidx/appcompat/widget/AppCompatTextView;)V

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method public static E(FII)Z
    .locals 1

    .line 1
    sget v0, Lcom/mycompany/app/pref/PrefEditor;->r:I

    .line 2
    .line 3
    if-ne v0, p1, :cond_1

    .line 4
    .line 5
    sget p1, Lcom/mycompany/app/pref/PrefEditor;->s:I

    .line 6
    .line 7
    if-ne p1, p2, :cond_1

    .line 8
    .line 9
    sget p1, Lcom/mycompany/app/pref/PrefEditor;->t:F

    .line 10
    .line 11
    invoke-static {p1, p0}, Ljava/lang/Float;->compare(FF)I

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    if-eqz p0, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 p0, 0x0

    .line 19
    return p0

    .line 20
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 21
    return p0
.end method


# virtual methods
.method public final D()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSeekWebText;->M0:Lcom/mycompany/app/dialog/DialogSetMsg;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogSetMsg;->dismiss()V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogSeekWebText;->M0:Lcom/mycompany/app/dialog/DialogSetMsg;

    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public final F(Z)V
    .locals 6

    .line 1
    sget-boolean v0, Lcom/mycompany/app/pref/PrefZtri;->k:Z

    .line 2
    .line 3
    iget-boolean v1, p0, Lcom/mycompany/app/dialog/DialogSeekWebText;->G0:Z

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    const/4 v3, 0x0

    .line 7
    if-ne v0, v1, :cond_1

    .line 8
    .line 9
    sget v0, Lcom/mycompany/app/pref/PrefZtri;->p:I

    .line 10
    .line 11
    iget v4, p0, Lcom/mycompany/app/dialog/DialogSeekWebText;->H0:I

    .line 12
    .line 13
    if-eq v0, v4, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    move v0, v3

    .line 17
    goto :goto_2

    .line 18
    :cond_1
    :goto_0
    sput-boolean v1, Lcom/mycompany/app/pref/PrefZtri;->k:Z

    .line 19
    .line 20
    iget v0, p0, Lcom/mycompany/app/dialog/DialogSeekWebText;->H0:I

    .line 21
    .line 22
    sput v0, Lcom/mycompany/app/pref/PrefZtri;->p:I

    .line 23
    .line 24
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSeekWebText;->d0:Landroid/content/Context;

    .line 25
    .line 26
    invoke-static {v0}, Lcom/mycompany/app/pref/PrefZtri;->r(Landroid/content/Context;)Lcom/mycompany/app/pref/PrefZtri;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    const-string v1, "mZoomSize"

    .line 31
    .line 32
    const-string v4, "mZoomIcon"

    .line 33
    .line 34
    if-eqz p1, :cond_2

    .line 35
    .line 36
    sget-boolean v5, Lcom/mycompany/app/pref/PrefZtri;->k:Z

    .line 37
    .line 38
    invoke-virtual {v0, v4, v5}, Lcom/mycompany/app/pref/PrefCore;->l(Ljava/lang/String;Z)V

    .line 39
    .line 40
    .line 41
    sget v4, Lcom/mycompany/app/pref/PrefZtri;->p:I

    .line 42
    .line 43
    invoke-virtual {v0, v4, v1}, Lcom/mycompany/app/pref/PrefCore;->n(ILjava/lang/String;)V

    .line 44
    .line 45
    .line 46
    goto :goto_1

    .line 47
    :cond_2
    invoke-virtual {v0, v4}, Lcom/mycompany/app/pref/PrefCore;->q(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0, v1}, Lcom/mycompany/app/pref/PrefCore;->q(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    :goto_1
    invoke-virtual {v0}, Lcom/mycompany/app/pref/PrefCore;->a()V

    .line 54
    .line 55
    .line 56
    move v0, v2

    .line 57
    :goto_2
    sget v1, Lcom/mycompany/app/pref/PrefZone;->w:I

    .line 58
    .line 59
    iget v4, p0, Lcom/mycompany/app/dialog/DialogSeekWebText;->I0:I

    .line 60
    .line 61
    if-eq v1, v4, :cond_4

    .line 62
    .line 63
    sput v4, Lcom/mycompany/app/pref/PrefZone;->w:I

    .line 64
    .line 65
    const-string v0, "mTextSize"

    .line 66
    .line 67
    const/16 v1, 0xf

    .line 68
    .line 69
    if-eqz p1, :cond_3

    .line 70
    .line 71
    iget-object v5, p0, Lcom/mycompany/app/dialog/DialogSeekWebText;->d0:Landroid/content/Context;

    .line 72
    .line 73
    invoke-static {v5, v1, v4, v0}, Lcom/mycompany/app/pref/PrefSet;->f(Landroid/content/Context;IILjava/lang/String;)V

    .line 74
    .line 75
    .line 76
    goto :goto_3

    .line 77
    :cond_3
    iget-object v4, p0, Lcom/mycompany/app/dialog/DialogSeekWebText;->d0:Landroid/content/Context;

    .line 78
    .line 79
    invoke-static {v4, v1, v0}, Lcom/mycompany/app/pref/PrefSet;->i(Landroid/content/Context;ILjava/lang/String;)V

    .line 80
    .line 81
    .line 82
    :goto_3
    move v0, v2

    .line 83
    :cond_4
    iget v1, p0, Lcom/mycompany/app/dialog/DialogSeekWebText;->N0:I

    .line 84
    .line 85
    iget v4, p0, Lcom/mycompany/app/dialog/DialogSeekWebText;->O0:I

    .line 86
    .line 87
    iget v5, p0, Lcom/mycompany/app/dialog/DialogSeekWebText;->P0:F

    .line 88
    .line 89
    invoke-static {v5, v1, v4}, Lcom/mycompany/app/dialog/DialogSeekWebText;->E(FII)Z

    .line 90
    .line 91
    .line 92
    move-result v1

    .line 93
    if-eqz v1, :cond_5

    .line 94
    .line 95
    sget v0, Lcom/mycompany/app/pref/PrefEditor;->r:I

    .line 96
    .line 97
    iput v0, p0, Lcom/mycompany/app/dialog/DialogSeekWebText;->N0:I

    .line 98
    .line 99
    sget v0, Lcom/mycompany/app/pref/PrefEditor;->s:I

    .line 100
    .line 101
    iput v0, p0, Lcom/mycompany/app/dialog/DialogSeekWebText;->O0:I

    .line 102
    .line 103
    sget v0, Lcom/mycompany/app/pref/PrefEditor;->t:F

    .line 104
    .line 105
    iput v0, p0, Lcom/mycompany/app/dialog/DialogSeekWebText;->P0:F

    .line 106
    .line 107
    goto :goto_4

    .line 108
    :cond_5
    move v2, v0

    .line 109
    :goto_4
    if-eqz v2, :cond_6

    .line 110
    .line 111
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSeekWebText;->e0:Lcom/mycompany/app/dialog/DialogSetImage$ChangedListener;

    .line 112
    .line 113
    if-eqz v0, :cond_6

    .line 114
    .line 115
    invoke-interface {v0}, Lcom/mycompany/app/dialog/DialogSetImage$ChangedListener;->a()V

    .line 116
    .line 117
    .line 118
    :cond_6
    iput-boolean v3, p0, Lcom/mycompany/app/dialog/DialogSeekWebText;->R0:Z

    .line 119
    .line 120
    if-eqz p1, :cond_7

    .line 121
    .line 122
    invoke-virtual {p0}, Lcom/mycompany/app/dialog/DialogSeekWebText;->dismiss()V

    .line 123
    .line 124
    .line 125
    :cond_7
    return-void
.end method

.method public final G(FII)V
    .locals 0

    .line 1
    sput p2, Lcom/mycompany/app/pref/PrefEditor;->r:I

    .line 2
    .line 3
    sput p3, Lcom/mycompany/app/pref/PrefEditor;->s:I

    .line 4
    .line 5
    sput p1, Lcom/mycompany/app/pref/PrefEditor;->t:F

    .line 6
    .line 7
    invoke-static {p3, p2}, Lcom/mycompany/app/pref/PrefEditor;->r(II)I

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    sput p1, Lcom/mycompany/app/pref/PrefEditor;->u:I

    .line 12
    .line 13
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogSeekWebText;->d0:Landroid/content/Context;

    .line 14
    .line 15
    invoke-static {p1}, Lcom/mycompany/app/pref/PrefEditor;->s(Landroid/content/Context;)Lcom/mycompany/app/pref/PrefEditor;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    const-string p2, "mZoomAlpha"

    .line 20
    .line 21
    sget p3, Lcom/mycompany/app/pref/PrefEditor;->r:I

    .line 22
    .line 23
    invoke-virtual {p1, p3, p2}, Lcom/mycompany/app/pref/PrefCore;->n(ILjava/lang/String;)V

    .line 24
    .line 25
    .line 26
    const-string p2, "mZoomColor"

    .line 27
    .line 28
    sget p3, Lcom/mycompany/app/pref/PrefEditor;->s:I

    .line 29
    .line 30
    invoke-virtual {p1, p3, p2}, Lcom/mycompany/app/pref/PrefCore;->n(ILjava/lang/String;)V

    .line 31
    .line 32
    .line 33
    const-string p2, "mZoomPos"

    .line 34
    .line 35
    sget p3, Lcom/mycompany/app/pref/PrefEditor;->t:F

    .line 36
    .line 37
    invoke-virtual {p1, p2, p3}, Lcom/mycompany/app/pref/PrefCore;->m(Ljava/lang/String;F)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1}, Lcom/mycompany/app/pref/PrefCore;->a()V

    .line 41
    .line 42
    .line 43
    return-void
.end method

.method public final H(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSeekWebText;->m0:Lcom/mycompany/app/view/MyLineRelative;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSeekWebText;->t0:Landroid/widget/SeekBar;

    .line 10
    .line 11
    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSeekWebText;->u0:Lcom/mycompany/app/view/MyButtonImage;

    .line 15
    .line 16
    invoke-virtual {v0, p1}, Lcom/mycompany/app/view/MyButtonImage;->setEnabled(Z)V

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSeekWebText;->v0:Lcom/mycompany/app/view/MyButtonImage;

    .line 20
    .line 21
    invoke-virtual {v0, p1}, Lcom/mycompany/app/view/MyButtonImage;->setEnabled(Z)V

    .line 22
    .line 23
    .line 24
    if-eqz p1, :cond_1

    .line 25
    .line 26
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogSeekWebText;->n0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 27
    .line 28
    const/high16 v0, 0x3f800000    # 1.0f

    .line 29
    .line 30
    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 31
    .line 32
    .line 33
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogSeekWebText;->o0:Lcom/mycompany/app/view/MyButtonView;

    .line 34
    .line 35
    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 36
    .line 37
    .line 38
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogSeekWebText;->q0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 39
    .line 40
    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 41
    .line 42
    .line 43
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogSeekWebText;->r0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 44
    .line 45
    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 46
    .line 47
    .line 48
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogSeekWebText;->s0:Landroid/widget/FrameLayout;

    .line 49
    .line 50
    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 51
    .line 52
    .line 53
    return-void

    .line 54
    :cond_1
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogSeekWebText;->n0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 55
    .line 56
    const v0, 0x3e4ccccd    # 0.2f

    .line 57
    .line 58
    .line 59
    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 60
    .line 61
    .line 62
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogSeekWebText;->o0:Lcom/mycompany/app/view/MyButtonView;

    .line 63
    .line 64
    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 65
    .line 66
    .line 67
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogSeekWebText;->q0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 68
    .line 69
    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 70
    .line 71
    .line 72
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogSeekWebText;->r0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 73
    .line 74
    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 75
    .line 76
    .line 77
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogSeekWebText;->s0:Landroid/widget/FrameLayout;

    .line 78
    .line 79
    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 80
    .line 81
    .line 82
    return-void
.end method

.method public final I(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSeekWebText;->F0:Lcom/mycompany/app/wview/WebFltView;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const/4 v1, 0x1

    .line 7
    if-eqz p1, :cond_1

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Lcom/mycompany/app/wview/WebFltView;->w(Z)V

    .line 10
    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_1
    invoke-virtual {v0, v1}, Lcom/mycompany/app/wview/WebFltView;->m(Z)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0, v1}, Lcom/mycompany/app/view/MyDialogBottom;->y(Z)V

    .line 17
    .line 18
    .line 19
    :goto_0
    invoke-virtual {p0, p1}, Lcom/mycompany/app/dialog/DialogSeekWebText;->H(Z)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public final dismiss()V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/mycompany/app/view/MyDialogBottom;->c:Z

    .line 3
    .line 4
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogSeekWebText;->d0:Landroid/content/Context;

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    iget-boolean v1, p0, Lcom/mycompany/app/dialog/DialogSeekWebText;->R0:Z

    .line 10
    .line 11
    if-eqz v1, :cond_1

    .line 12
    .line 13
    iput-boolean v0, p0, Lcom/mycompany/app/dialog/DialogSeekWebText;->R0:Z

    .line 14
    .line 15
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogSeekWebText;->f0:Lcom/mycompany/app/web/WebNestView;

    .line 16
    .line 17
    if-eqz v1, :cond_1

    .line 18
    .line 19
    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    iget v2, p0, Lcom/mycompany/app/dialog/DialogSeekWebText;->Q0:I

    .line 24
    .line 25
    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setTextZoom(I)V

    .line 26
    .line 27
    .line 28
    :cond_1
    iget v1, p0, Lcom/mycompany/app/dialog/DialogSeekWebText;->N0:I

    .line 29
    .line 30
    iget v2, p0, Lcom/mycompany/app/dialog/DialogSeekWebText;->O0:I

    .line 31
    .line 32
    iget v3, p0, Lcom/mycompany/app/dialog/DialogSeekWebText;->P0:F

    .line 33
    .line 34
    invoke-static {v3, v1, v2}, Lcom/mycompany/app/dialog/DialogSeekWebText;->E(FII)Z

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    if-eqz v1, :cond_2

    .line 39
    .line 40
    iget v1, p0, Lcom/mycompany/app/dialog/DialogSeekWebText;->N0:I

    .line 41
    .line 42
    iget v2, p0, Lcom/mycompany/app/dialog/DialogSeekWebText;->O0:I

    .line 43
    .line 44
    iget v3, p0, Lcom/mycompany/app/dialog/DialogSeekWebText;->P0:F

    .line 45
    .line 46
    invoke-virtual {p0, v3, v1, v2}, Lcom/mycompany/app/dialog/DialogSeekWebText;->G(FII)V

    .line 47
    .line 48
    .line 49
    :cond_2
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogSeekWebText;->L0:Lcom/mycompany/app/dialog/DialogEditIcon;

    .line 50
    .line 51
    const/4 v2, 0x0

    .line 52
    if-eqz v1, :cond_3

    .line 53
    .line 54
    invoke-virtual {v1}, Lcom/mycompany/app/dialog/DialogEditIcon;->dismiss()V

    .line 55
    .line 56
    .line 57
    iput-object v2, p0, Lcom/mycompany/app/dialog/DialogSeekWebText;->L0:Lcom/mycompany/app/dialog/DialogEditIcon;

    .line 58
    .line 59
    :cond_3
    invoke-virtual {p0}, Lcom/mycompany/app/dialog/DialogSeekWebText;->D()V

    .line 60
    .line 61
    .line 62
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogSeekWebText;->h0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 63
    .line 64
    if-eqz v1, :cond_4

    .line 65
    .line 66
    invoke-virtual {v1}, Lcom/mycompany/app/view/MyDialogLinear;->b()V

    .line 67
    .line 68
    .line 69
    iput-object v2, p0, Lcom/mycompany/app/dialog/DialogSeekWebText;->h0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 70
    .line 71
    :cond_4
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogSeekWebText;->j0:Lcom/mycompany/app/view/MySwitchView;

    .line 72
    .line 73
    if-eqz v1, :cond_5

    .line 74
    .line 75
    invoke-virtual {v1}, Lcom/mycompany/app/view/MySwitchView;->a()V

    .line 76
    .line 77
    .line 78
    iput-object v2, p0, Lcom/mycompany/app/dialog/DialogSeekWebText;->j0:Lcom/mycompany/app/view/MySwitchView;

    .line 79
    .line 80
    :cond_5
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogSeekWebText;->m0:Lcom/mycompany/app/view/MyLineRelative;

    .line 81
    .line 82
    if-eqz v1, :cond_6

    .line 83
    .line 84
    invoke-virtual {v1}, Lcom/mycompany/app/view/MyLineRelative;->e()V

    .line 85
    .line 86
    .line 87
    iput-object v2, p0, Lcom/mycompany/app/dialog/DialogSeekWebText;->m0:Lcom/mycompany/app/view/MyLineRelative;

    .line 88
    .line 89
    :cond_6
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogSeekWebText;->o0:Lcom/mycompany/app/view/MyButtonView;

    .line 90
    .line 91
    if-eqz v1, :cond_9

    .line 92
    .line 93
    iput-boolean v0, v1, Lcom/mycompany/app/view/MyButtonView;->c:Z

    .line 94
    .line 95
    iget-object v0, v1, Lcom/mycompany/app/view/MyButtonView;->o:Landroid/animation/ValueAnimator;

    .line 96
    .line 97
    if-eqz v0, :cond_7

    .line 98
    .line 99
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 100
    .line 101
    .line 102
    iput-object v2, v1, Lcom/mycompany/app/view/MyButtonView;->o:Landroid/animation/ValueAnimator;

    .line 103
    .line 104
    :cond_7
    iget-object v0, v1, Lcom/mycompany/app/view/MyButtonView;->p:Landroid/animation/ValueAnimator;

    .line 105
    .line 106
    if-eqz v0, :cond_8

    .line 107
    .line 108
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 109
    .line 110
    .line 111
    iput-object v2, v1, Lcom/mycompany/app/view/MyButtonView;->p:Landroid/animation/ValueAnimator;

    .line 112
    .line 113
    :cond_8
    iput-object v2, v1, Lcom/mycompany/app/view/MyButtonView;->j:Landroid/graphics/Paint;

    .line 114
    .line 115
    iput-object v2, v1, Lcom/mycompany/app/view/MyButtonView;->n:Landroid/graphics/Paint;

    .line 116
    .line 117
    iput-object v2, v1, Lcom/mycompany/app/view/MyButtonView;->t:Landroid/graphics/Paint;

    .line 118
    .line 119
    iput-object v2, v1, Lcom/mycompany/app/view/MyButtonView;->u:Ljava/lang/String;

    .line 120
    .line 121
    iput-object v2, v1, Lcom/mycompany/app/view/MyButtonView;->v:Landroid/graphics/Paint;

    .line 122
    .line 123
    iput-object v2, v1, Lcom/mycompany/app/view/MyButtonView;->z:Landroid/view/View$OnClickListener;

    .line 124
    .line 125
    iput-object v2, v1, Lcom/mycompany/app/view/MyButtonView;->A:Landroid/view/View$OnLongClickListener;

    .line 126
    .line 127
    iput-object v2, p0, Lcom/mycompany/app/dialog/DialogSeekWebText;->o0:Lcom/mycompany/app/view/MyButtonView;

    .line 128
    .line 129
    :cond_9
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSeekWebText;->p0:Lcom/mycompany/app/view/MyRoundItem;

    .line 130
    .line 131
    if-eqz v0, :cond_a

    .line 132
    .line 133
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyRoundItem;->b()V

    .line 134
    .line 135
    .line 136
    iput-object v2, p0, Lcom/mycompany/app/dialog/DialogSeekWebText;->p0:Lcom/mycompany/app/view/MyRoundItem;

    .line 137
    .line 138
    :cond_a
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSeekWebText;->u0:Lcom/mycompany/app/view/MyButtonImage;

    .line 139
    .line 140
    if-eqz v0, :cond_b

    .line 141
    .line 142
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyButtonImage;->j()V

    .line 143
    .line 144
    .line 145
    iput-object v2, p0, Lcom/mycompany/app/dialog/DialogSeekWebText;->u0:Lcom/mycompany/app/view/MyButtonImage;

    .line 146
    .line 147
    :cond_b
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSeekWebText;->v0:Lcom/mycompany/app/view/MyButtonImage;

    .line 148
    .line 149
    if-eqz v0, :cond_c

    .line 150
    .line 151
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyButtonImage;->j()V

    .line 152
    .line 153
    .line 154
    iput-object v2, p0, Lcom/mycompany/app/dialog/DialogSeekWebText;->v0:Lcom/mycompany/app/view/MyButtonImage;

    .line 155
    .line 156
    :cond_c
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSeekWebText;->w0:Lcom/mycompany/app/view/MyRoundItem;

    .line 157
    .line 158
    if-eqz v0, :cond_d

    .line 159
    .line 160
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyRoundItem;->b()V

    .line 161
    .line 162
    .line 163
    iput-object v2, p0, Lcom/mycompany/app/dialog/DialogSeekWebText;->w0:Lcom/mycompany/app/view/MyRoundItem;

    .line 164
    .line 165
    :cond_d
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSeekWebText;->A0:Lcom/mycompany/app/view/MyButtonImage;

    .line 166
    .line 167
    if-eqz v0, :cond_e

    .line 168
    .line 169
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyButtonImage;->j()V

    .line 170
    .line 171
    .line 172
    iput-object v2, p0, Lcom/mycompany/app/dialog/DialogSeekWebText;->A0:Lcom/mycompany/app/view/MyButtonImage;

    .line 173
    .line 174
    :cond_e
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSeekWebText;->B0:Lcom/mycompany/app/view/MyButtonImage;

    .line 175
    .line 176
    if-eqz v0, :cond_f

    .line 177
    .line 178
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyButtonImage;->j()V

    .line 179
    .line 180
    .line 181
    iput-object v2, p0, Lcom/mycompany/app/dialog/DialogSeekWebText;->B0:Lcom/mycompany/app/view/MyButtonImage;

    .line 182
    .line 183
    :cond_f
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSeekWebText;->D0:Lcom/mycompany/app/view/MyLineText;

    .line 184
    .line 185
    if-eqz v0, :cond_10

    .line 186
    .line 187
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyLineText;->u()V

    .line 188
    .line 189
    .line 190
    iput-object v2, p0, Lcom/mycompany/app/dialog/DialogSeekWebText;->D0:Lcom/mycompany/app/view/MyLineText;

    .line 191
    .line 192
    :cond_10
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSeekWebText;->F0:Lcom/mycompany/app/wview/WebFltView;

    .line 193
    .line 194
    if-eqz v0, :cond_11

    .line 195
    .line 196
    invoke-virtual {v0}, Lcom/mycompany/app/wview/WebFltView;->o()V

    .line 197
    .line 198
    .line 199
    iput-object v2, p0, Lcom/mycompany/app/dialog/DialogSeekWebText;->F0:Lcom/mycompany/app/wview/WebFltView;

    .line 200
    .line 201
    :cond_11
    iput-object v2, p0, Lcom/mycompany/app/dialog/DialogSeekWebText;->c0:Lcom/mycompany/app/main/MainActivity;

    .line 202
    .line 203
    iput-object v2, p0, Lcom/mycompany/app/dialog/DialogSeekWebText;->d0:Landroid/content/Context;

    .line 204
    .line 205
    iput-object v2, p0, Lcom/mycompany/app/dialog/DialogSeekWebText;->e0:Lcom/mycompany/app/dialog/DialogSetImage$ChangedListener;

    .line 206
    .line 207
    iput-object v2, p0, Lcom/mycompany/app/dialog/DialogSeekWebText;->g0:Landroid/widget/RelativeLayout;

    .line 208
    .line 209
    iput-object v2, p0, Lcom/mycompany/app/dialog/DialogSeekWebText;->f0:Lcom/mycompany/app/web/WebNestView;

    .line 210
    .line 211
    iput-object v2, p0, Lcom/mycompany/app/dialog/DialogSeekWebText;->i0:Landroid/widget/RelativeLayout;

    .line 212
    .line 213
    iput-object v2, p0, Lcom/mycompany/app/dialog/DialogSeekWebText;->k0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 214
    .line 215
    iput-object v2, p0, Lcom/mycompany/app/dialog/DialogSeekWebText;->l0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 216
    .line 217
    iput-object v2, p0, Lcom/mycompany/app/dialog/DialogSeekWebText;->n0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 218
    .line 219
    iput-object v2, p0, Lcom/mycompany/app/dialog/DialogSeekWebText;->q0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 220
    .line 221
    iput-object v2, p0, Lcom/mycompany/app/dialog/DialogSeekWebText;->r0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 222
    .line 223
    iput-object v2, p0, Lcom/mycompany/app/dialog/DialogSeekWebText;->s0:Landroid/widget/FrameLayout;

    .line 224
    .line 225
    iput-object v2, p0, Lcom/mycompany/app/dialog/DialogSeekWebText;->t0:Landroid/widget/SeekBar;

    .line 226
    .line 227
    iput-object v2, p0, Lcom/mycompany/app/dialog/DialogSeekWebText;->x0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 228
    .line 229
    iput-object v2, p0, Lcom/mycompany/app/dialog/DialogSeekWebText;->y0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 230
    .line 231
    iput-object v2, p0, Lcom/mycompany/app/dialog/DialogSeekWebText;->z0:Landroid/widget/SeekBar;

    .line 232
    .line 233
    iput-object v2, p0, Lcom/mycompany/app/dialog/DialogSeekWebText;->C0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 234
    .line 235
    iput-object v2, p0, Lcom/mycompany/app/dialog/DialogSeekWebText;->E0:Landroid/widget/FrameLayout;

    .line 236
    .line 237
    invoke-super {p0}, Lcom/mycompany/app/view/MyDialogBottom;->dismiss()V

    .line 238
    .line 239
    .line 240
    return-void
.end method
