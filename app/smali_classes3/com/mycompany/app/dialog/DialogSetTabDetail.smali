.class public Lcom/mycompany/app/dialog/DialogSetTabDetail;
.super Lcom/mycompany/app/view/MyDialogBottom;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mycompany/app/dialog/DialogSetTabDetail$ColorAdapter;,
        Lcom/mycompany/app/dialog/DialogSetTabDetail$ViewPagerHolder;
    }
.end annotation


# static fields
.field public static final synthetic e1:I


# instance fields
.field public A0:Lcom/mycompany/app/view/MyLineFrame;

.field public B0:Lcom/mycompany/app/view/MySwitchView;

.field public C0:Landroidx/appcompat/widget/AppCompatTextView;

.field public D0:Landroidx/appcompat/widget/AppCompatTextView;

.field public E0:Landroidx/appcompat/widget/AppCompatTextView;

.field public F0:Landroid/widget/SeekBar;

.field public G0:Lcom/mycompany/app/view/MyButtonImage;

.field public H0:Lcom/mycompany/app/view/MyButtonImage;

.field public I0:Landroidx/appcompat/widget/AppCompatTextView;

.field public J0:Landroidx/appcompat/widget/AppCompatTextView;

.field public K0:Landroid/widget/SeekBar;

.field public L0:Lcom/mycompany/app/view/MyButtonImage;

.field public M0:Lcom/mycompany/app/view/MyButtonImage;

.field public N0:Landroidx/appcompat/widget/AppCompatTextView;

.field public O0:Lcom/mycompany/app/view/MyLineText;

.field public P0:Z

.field public Q0:I

.field public R0:I

.field public S0:Z

.field public T0:I

.field public U0:I

.field public V0:Z

.field public W0:Z

.field public X0:Z

.field public Y0:Z

.field public Z0:Lcom/mycompany/app/dialog/DialogSetMsg;

.field public final a0:I

.field public a1:Lcom/mycompany/app/view/MyPopupMenu;

.field public final b0:I

.field public b1:Lcom/mycompany/app/view/GlideRequests;

.field public final c0:I

.field public final c1:Ljava/lang/Runnable;

.field public final d0:I

.field public final d1:Ljava/lang/Runnable;

.field public e0:Lcom/mycompany/app/main/MainActivity;

.field public f0:Landroid/content/Context;

.field public g0:Lcom/mycompany/app/view/MyDialogLinear;

.field public h0:Lcom/mycompany/app/view/MyRoundFrame;

.field public i0:Lcom/mycompany/app/view/MyRoundImage;

.field public j0:Ljava/util/ArrayList;

.field public k0:I

.field public l0:Landroid/widget/FrameLayout;

.field public m0:Lcom/mycompany/app/view/MyRecyclerView;

.field public n0:Lcom/mycompany/app/view/MyButtonImage;

.field public o0:Lcom/mycompany/app/web/WebTabBarAdapter;

.field public p0:Z

.field public q0:Landroid/view/ViewGroup$LayoutParams;

.field public r0:Lcom/mycompany/app/view/MyLineFrame;

.field public s0:Lcom/mycompany/app/view/MySwitchView;

.field public t0:Landroidx/appcompat/widget/AppCompatTextView;

.field public u0:Lcom/mycompany/app/view/MyRecyclerView;

.field public v0:Lcom/mycompany/app/dialog/DialogSetTabDetail$ColorAdapter;

.field public w0:Lcom/mycompany/app/view/MyLineRelative;

.field public x0:Landroid/view/View;

.field public y0:Landroidx/appcompat/widget/AppCompatTextView;

.field public z0:Landroidx/appcompat/widget/AppCompatTextView;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/main/MainActivity;)V
    .locals 4

    .line 1
    invoke-direct {p0, p1}, Lcom/mycompany/app/view/MyDialogBottom;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/mycompany/app/dialog/DialogSetTabDetail$23;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Lcom/mycompany/app/dialog/DialogSetTabDetail$23;-><init>(Lcom/mycompany/app/dialog/DialogSetTabDetail;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogSetTabDetail;->c1:Ljava/lang/Runnable;

    .line 10
    .line 11
    new-instance v0, Lcom/mycompany/app/dialog/DialogSetTabDetail$24;

    .line 12
    .line 13
    invoke-direct {v0, p0}, Lcom/mycompany/app/dialog/DialogSetTabDetail$24;-><init>(Lcom/mycompany/app/dialog/DialogSetTabDetail;)V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogSetTabDetail;->d1:Ljava/lang/Runnable;

    .line 17
    .line 18
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogSetTabDetail;->e0:Lcom/mycompany/app/main/MainActivity;

    .line 19
    .line 20
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogSetTabDetail;->f0:Landroid/content/Context;

    .line 25
    .line 26
    sget-boolean p1, Lcom/mycompany/app/pref/PrefWeb;->y:Z

    .line 27
    .line 28
    iput-boolean p1, p0, Lcom/mycompany/app/dialog/DialogSetTabDetail;->P0:Z

    .line 29
    .line 30
    sget p1, Lcom/mycompany/app/pref/PrefWeb;->z:I

    .line 31
    .line 32
    iput p1, p0, Lcom/mycompany/app/dialog/DialogSetTabDetail;->Q0:I

    .line 33
    .line 34
    sget p1, Lcom/mycompany/app/pref/PrefPdf;->C:I

    .line 35
    .line 36
    iput p1, p0, Lcom/mycompany/app/dialog/DialogSetTabDetail;->R0:I

    .line 37
    .line 38
    sget-boolean p1, Lcom/mycompany/app/pref/PrefPdf;->D:Z

    .line 39
    .line 40
    iput-boolean p1, p0, Lcom/mycompany/app/dialog/DialogSetTabDetail;->S0:Z

    .line 41
    .line 42
    sget p1, Lcom/mycompany/app/pref/PrefPdf;->E:I

    .line 43
    .line 44
    int-to-float p1, p1

    .line 45
    const/high16 v0, 0x42c80000    # 100.0f

    .line 46
    .line 47
    mul-float/2addr p1, v0

    .line 48
    sget v1, Lcom/mycompany/app/main/MainApp;->Z0:I

    .line 49
    .line 50
    int-to-float v1, v1

    .line 51
    div-float/2addr p1, v1

    .line 52
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    .line 53
    .line 54
    .line 55
    move-result p1

    .line 56
    iput p1, p0, Lcom/mycompany/app/dialog/DialogSetTabDetail;->T0:I

    .line 57
    .line 58
    sget p1, Lcom/mycompany/app/pref/PrefPdf;->F:I

    .line 59
    .line 60
    int-to-float p1, p1

    .line 61
    mul-float/2addr p1, v0

    .line 62
    sget v0, Lcom/mycompany/app/main/MainApp;->a1:I

    .line 63
    .line 64
    int-to-float v0, v0

    .line 65
    div-float/2addr p1, v0

    .line 66
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    .line 67
    .line 68
    .line 69
    move-result p1

    .line 70
    iput p1, p0, Lcom/mycompany/app/dialog/DialogSetTabDetail;->U0:I

    .line 71
    .line 72
    const/16 v0, 0x32

    .line 73
    .line 74
    iput v0, p0, Lcom/mycompany/app/dialog/DialogSetTabDetail;->a0:I

    .line 75
    .line 76
    const/16 v1, 0xc8

    .line 77
    .line 78
    iput v1, p0, Lcom/mycompany/app/dialog/DialogSetTabDetail;->b0:I

    .line 79
    .line 80
    iput v0, p0, Lcom/mycompany/app/dialog/DialogSetTabDetail;->c0:I

    .line 81
    .line 82
    iput v1, p0, Lcom/mycompany/app/dialog/DialogSetTabDetail;->d0:I

    .line 83
    .line 84
    iget v2, p0, Lcom/mycompany/app/dialog/DialogSetTabDetail;->Q0:I

    .line 85
    .line 86
    if-ltz v2, :cond_0

    .line 87
    .line 88
    sget-object v3, Lcom/mycompany/app/main/MainConst;->s:[I

    .line 89
    .line 90
    array-length v3, v3

    .line 91
    if-lt v2, v3, :cond_1

    .line 92
    .line 93
    :cond_0
    const/4 v2, 0x5

    .line 94
    iput v2, p0, Lcom/mycompany/app/dialog/DialogSetTabDetail;->Q0:I

    .line 95
    .line 96
    :cond_1
    iget v2, p0, Lcom/mycompany/app/dialog/DialogSetTabDetail;->T0:I

    .line 97
    .line 98
    if-ge v2, v0, :cond_2

    .line 99
    .line 100
    iput v0, p0, Lcom/mycompany/app/dialog/DialogSetTabDetail;->T0:I

    .line 101
    .line 102
    goto :goto_0

    .line 103
    :cond_2
    if-le v2, v1, :cond_3

    .line 104
    .line 105
    iput v1, p0, Lcom/mycompany/app/dialog/DialogSetTabDetail;->T0:I

    .line 106
    .line 107
    :cond_3
    :goto_0
    if-ge p1, v0, :cond_4

    .line 108
    .line 109
    iput v0, p0, Lcom/mycompany/app/dialog/DialogSetTabDetail;->U0:I

    .line 110
    .line 111
    goto :goto_1

    .line 112
    :cond_4
    if-le p1, v1, :cond_5

    .line 113
    .line 114
    iput v1, p0, Lcom/mycompany/app/dialog/DialogSetTabDetail;->U0:I

    .line 115
    .line 116
    :cond_5
    :goto_1
    iget-object p1, p0, Lcom/mycompany/app/view/MyDialogBottom;->i:Landroid/os/Handler;

    .line 117
    .line 118
    if-nez p1, :cond_6

    .line 119
    .line 120
    return-void

    .line 121
    :cond_6
    new-instance v0, Lcom/mycompany/app/dialog/DialogSetTabDetail$1;

    .line 122
    .line 123
    invoke-direct {v0, p0}, Lcom/mycompany/app/dialog/DialogSetTabDetail$1;-><init>(Lcom/mycompany/app/dialog/DialogSetTabDetail;)V

    .line 124
    .line 125
    .line 126
    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 127
    .line 128
    .line 129
    return-void
.end method

.method public static B(Lcom/mycompany/app/dialog/DialogSetTabDetail;IZ)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetTabDetail;->j0:Ljava/util/ArrayList;

    .line 2
    .line 3
    if-eqz v0, :cond_3

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetTabDetail;->j0:Ljava/util/ArrayList;

    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    iget v1, p0, Lcom/mycompany/app/dialog/DialogSetTabDetail;->k0:I

    .line 19
    .line 20
    if-lt v1, v0, :cond_1

    .line 21
    .line 22
    add-int/lit8 v1, v0, -0x1

    .line 23
    .line 24
    iput v1, p0, Lcom/mycompany/app/dialog/DialogSetTabDetail;->k0:I

    .line 25
    .line 26
    :cond_1
    iget v1, p0, Lcom/mycompany/app/dialog/DialogSetTabDetail;->k0:I

    .line 27
    .line 28
    if-gez v1, :cond_2

    .line 29
    .line 30
    const/4 v1, 0x0

    .line 31
    iput v1, p0, Lcom/mycompany/app/dialog/DialogSetTabDetail;->k0:I

    .line 32
    .line 33
    :cond_2
    iget v4, p0, Lcom/mycompany/app/dialog/DialogSetTabDetail;->k0:I

    .line 34
    .line 35
    iget-object v2, p0, Lcom/mycompany/app/dialog/DialogSetTabDetail;->o0:Lcom/mycompany/app/web/WebTabBarAdapter;

    .line 36
    .line 37
    iget-object v3, p0, Lcom/mycompany/app/dialog/DialogSetTabDetail;->j0:Ljava/util/ArrayList;

    .line 38
    .line 39
    const/4 v6, 0x0

    .line 40
    const/4 v7, 0x0

    .line 41
    const/4 v5, 0x0

    .line 42
    move v8, p2

    .line 43
    invoke-virtual/range {v2 .. v8}, Lcom/mycompany/app/web/WebTabBarAdapter;->L(Ljava/util/List;IZIIZ)V

    .line 44
    .line 45
    .line 46
    if-eqz p1, :cond_3

    .line 47
    .line 48
    const/4 p2, 0x2

    .line 49
    if-le v0, p2, :cond_3

    .line 50
    .line 51
    iget-object p2, p0, Lcom/mycompany/app/dialog/DialogSetTabDetail;->m0:Lcom/mycompany/app/view/MyRecyclerView;

    .line 52
    .line 53
    new-instance v0, Lcom/mycompany/app/dialog/DialogSetTabDetail$20;

    .line 54
    .line 55
    invoke-direct {v0, p0, p1, v4}, Lcom/mycompany/app/dialog/DialogSetTabDetail$20;-><init>(Lcom/mycompany/app/dialog/DialogSetTabDetail;II)V

    .line 56
    .line 57
    .line 58
    const-wide/16 p0, 0x64

    .line 59
    .line 60
    invoke-virtual {p2, v0, p0, p1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 61
    .line 62
    .line 63
    :cond_3
    :goto_0
    return-void
.end method

.method public static C(Lcom/mycompany/app/dialog/DialogSetTabDetail;I)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetTabDetail;->c1:Ljava/lang/Runnable;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogSetTabDetail;->E0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    goto :goto_2

    .line 8
    :cond_0
    iget v2, p0, Lcom/mycompany/app/dialog/DialogSetTabDetail;->a0:I

    .line 9
    .line 10
    if-ge p1, v2, :cond_1

    .line 11
    .line 12
    :goto_0
    move p1, v2

    .line 13
    goto :goto_1

    .line 14
    :cond_1
    iget v2, p0, Lcom/mycompany/app/dialog/DialogSetTabDetail;->b0:I

    .line 15
    .line 16
    if-le p1, v2, :cond_2

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_2
    :goto_1
    iget-boolean v2, p0, Lcom/mycompany/app/dialog/DialogSetTabDetail;->W0:Z

    .line 20
    .line 21
    if-nez v2, :cond_6

    .line 22
    .line 23
    iget v2, p0, Lcom/mycompany/app/dialog/DialogSetTabDetail;->T0:I

    .line 24
    .line 25
    if-ne v2, p1, :cond_3

    .line 26
    .line 27
    goto :goto_2

    .line 28
    :cond_3
    const/4 v2, 0x1

    .line 29
    iput-boolean v2, p0, Lcom/mycompany/app/dialog/DialogSetTabDetail;->W0:Z

    .line 30
    .line 31
    iput p1, p0, Lcom/mycompany/app/dialog/DialogSetTabDetail;->T0:I

    .line 32
    .line 33
    new-instance p1, Ljava/lang/StringBuilder;

    .line 34
    .line 35
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 36
    .line 37
    .line 38
    iget v2, p0, Lcom/mycompany/app/dialog/DialogSetTabDetail;->T0:I

    .line 39
    .line 40
    const-string v3, "%"

    .line 41
    .line 42
    invoke-static {p1, v2, v3, v1}, Lcom/mycompany/app/dialog/a;->t(Ljava/lang/StringBuilder;ILjava/lang/String;Landroidx/appcompat/widget/AppCompatTextView;)V

    .line 43
    .line 44
    .line 45
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogSetTabDetail;->o0:Lcom/mycompany/app/web/WebTabBarAdapter;

    .line 46
    .line 47
    if-eqz p1, :cond_4

    .line 48
    .line 49
    iget p1, p0, Lcom/mycompany/app/dialog/DialogSetTabDetail;->T0:I

    .line 50
    .line 51
    sget v1, Lcom/mycompany/app/main/MainApp;->Z0:I

    .line 52
    .line 53
    mul-int/2addr p1, v1

    .line 54
    int-to-float p1, p1

    .line 55
    const/high16 v1, 0x42c80000    # 100.0f

    .line 56
    .line 57
    div-float/2addr p1, v1

    .line 58
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    .line 59
    .line 60
    .line 61
    move-result p1

    .line 62
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogSetTabDetail;->o0:Lcom/mycompany/app/web/WebTabBarAdapter;

    .line 63
    .line 64
    iget v2, v1, Lcom/mycompany/app/web/WebTabBarAdapter;->t:I

    .line 65
    .line 66
    if-eq v2, p1, :cond_4

    .line 67
    .line 68
    iput p1, v1, Lcom/mycompany/app/web/WebTabBarAdapter;->t:I

    .line 69
    .line 70
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->g()V

    .line 71
    .line 72
    .line 73
    :cond_4
    iget-boolean p1, p0, Lcom/mycompany/app/dialog/DialogSetTabDetail;->V0:Z

    .line 74
    .line 75
    if-eqz p1, :cond_5

    .line 76
    .line 77
    const/4 p1, 0x0

    .line 78
    iput-boolean p1, p0, Lcom/mycompany/app/dialog/DialogSetTabDetail;->V0:Z

    .line 79
    .line 80
    iput-boolean p1, p0, Lcom/mycompany/app/dialog/DialogSetTabDetail;->W0:Z

    .line 81
    .line 82
    return-void

    .line 83
    :cond_5
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogSetTabDetail;->E0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 84
    .line 85
    invoke-virtual {p1, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 86
    .line 87
    .line 88
    iget-object p0, p0, Lcom/mycompany/app/dialog/DialogSetTabDetail;->E0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 89
    .line 90
    const-wide/16 v1, 0x64

    .line 91
    .line 92
    invoke-virtual {p0, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 93
    .line 94
    .line 95
    :cond_6
    :goto_2
    return-void
.end method

.method public static D(Lcom/mycompany/app/dialog/DialogSetTabDetail;I)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetTabDetail;->d1:Ljava/lang/Runnable;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogSetTabDetail;->J0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    goto :goto_2

    .line 8
    :cond_0
    iget v2, p0, Lcom/mycompany/app/dialog/DialogSetTabDetail;->c0:I

    .line 9
    .line 10
    if-ge p1, v2, :cond_1

    .line 11
    .line 12
    :goto_0
    move p1, v2

    .line 13
    goto :goto_1

    .line 14
    :cond_1
    iget v2, p0, Lcom/mycompany/app/dialog/DialogSetTabDetail;->d0:I

    .line 15
    .line 16
    if-le p1, v2, :cond_2

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_2
    :goto_1
    iget-boolean v2, p0, Lcom/mycompany/app/dialog/DialogSetTabDetail;->Y0:Z

    .line 20
    .line 21
    if-nez v2, :cond_6

    .line 22
    .line 23
    iget v2, p0, Lcom/mycompany/app/dialog/DialogSetTabDetail;->U0:I

    .line 24
    .line 25
    if-ne v2, p1, :cond_3

    .line 26
    .line 27
    goto :goto_2

    .line 28
    :cond_3
    const/4 v2, 0x1

    .line 29
    iput-boolean v2, p0, Lcom/mycompany/app/dialog/DialogSetTabDetail;->Y0:Z

    .line 30
    .line 31
    iput p1, p0, Lcom/mycompany/app/dialog/DialogSetTabDetail;->U0:I

    .line 32
    .line 33
    new-instance p1, Ljava/lang/StringBuilder;

    .line 34
    .line 35
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 36
    .line 37
    .line 38
    iget v2, p0, Lcom/mycompany/app/dialog/DialogSetTabDetail;->U0:I

    .line 39
    .line 40
    const-string v3, "%"

    .line 41
    .line 42
    invoke-static {p1, v2, v3, v1}, Lcom/mycompany/app/dialog/a;->t(Ljava/lang/StringBuilder;ILjava/lang/String;Landroidx/appcompat/widget/AppCompatTextView;)V

    .line 43
    .line 44
    .line 45
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogSetTabDetail;->q0:Landroid/view/ViewGroup$LayoutParams;

    .line 46
    .line 47
    if-eqz p1, :cond_4

    .line 48
    .line 49
    iget p1, p0, Lcom/mycompany/app/dialog/DialogSetTabDetail;->T0:I

    .line 50
    .line 51
    sget v1, Lcom/mycompany/app/main/MainApp;->Z0:I

    .line 52
    .line 53
    mul-int/2addr p1, v1

    .line 54
    int-to-float p1, p1

    .line 55
    const/high16 v1, 0x42c80000    # 100.0f

    .line 56
    .line 57
    div-float/2addr p1, v1

    .line 58
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    .line 59
    .line 60
    .line 61
    move-result p1

    .line 62
    iget-object v2, p0, Lcom/mycompany/app/dialog/DialogSetTabDetail;->q0:Landroid/view/ViewGroup$LayoutParams;

    .line 63
    .line 64
    iget v3, p0, Lcom/mycompany/app/dialog/DialogSetTabDetail;->U0:I

    .line 65
    .line 66
    sget v4, Lcom/mycompany/app/main/MainApp;->a1:I

    .line 67
    .line 68
    mul-int/2addr v3, v4

    .line 69
    int-to-float v3, v3

    .line 70
    div-float/2addr v3, v1

    .line 71
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    .line 72
    .line 73
    .line 74
    move-result v1

    .line 75
    iput v1, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 76
    .line 77
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogSetTabDetail;->l0:Landroid/widget/FrameLayout;

    .line 78
    .line 79
    invoke-virtual {v1}, Landroid/view/View;->requestLayout()V

    .line 80
    .line 81
    .line 82
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogSetTabDetail;->o0:Lcom/mycompany/app/web/WebTabBarAdapter;

    .line 83
    .line 84
    iget v2, v1, Lcom/mycompany/app/web/WebTabBarAdapter;->t:I

    .line 85
    .line 86
    if-eq v2, p1, :cond_4

    .line 87
    .line 88
    iput p1, v1, Lcom/mycompany/app/web/WebTabBarAdapter;->t:I

    .line 89
    .line 90
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->g()V

    .line 91
    .line 92
    .line 93
    :cond_4
    iget-boolean p1, p0, Lcom/mycompany/app/dialog/DialogSetTabDetail;->X0:Z

    .line 94
    .line 95
    if-eqz p1, :cond_5

    .line 96
    .line 97
    const/4 p1, 0x0

    .line 98
    iput-boolean p1, p0, Lcom/mycompany/app/dialog/DialogSetTabDetail;->X0:Z

    .line 99
    .line 100
    iput-boolean p1, p0, Lcom/mycompany/app/dialog/DialogSetTabDetail;->Y0:Z

    .line 101
    .line 102
    return-void

    .line 103
    :cond_5
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogSetTabDetail;->J0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 104
    .line 105
    invoke-virtual {p1, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 106
    .line 107
    .line 108
    iget-object p0, p0, Lcom/mycompany/app/dialog/DialogSetTabDetail;->J0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 109
    .line 110
    const-wide/16 v1, 0x64

    .line 111
    .line 112
    invoke-virtual {p0, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 113
    .line 114
    .line 115
    :cond_6
    :goto_2
    return-void
.end method


# virtual methods
.method public final E()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetTabDetail;->l0:Landroid/widget/FrameLayout;

    .line 2
    .line 3
    if-eqz v0, :cond_a

    .line 4
    .line 5
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetTabDetail;->m0:Lcom/mycompany/app/view/MyRecyclerView;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    goto/16 :goto_4

    .line 10
    .line 11
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetTabDetail;->z0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 12
    .line 13
    sget-object v1, Lcom/mycompany/app/main/MainConst;->N:[I

    .line 14
    .line 15
    iget v2, p0, Lcom/mycompany/app/dialog/DialogSetTabDetail;->R0:I

    .line 16
    .line 17
    aget v1, v1, v2

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 20
    .line 21
    .line 22
    iget v0, p0, Lcom/mycompany/app/dialog/DialogSetTabDetail;->R0:I

    .line 23
    .line 24
    const/4 v1, 0x0

    .line 25
    if-nez v0, :cond_2

    .line 26
    .line 27
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetTabDetail;->n0:Lcom/mycompany/app/view/MyButtonImage;

    .line 28
    .line 29
    if-eqz v0, :cond_a

    .line 30
    .line 31
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetTabDetail;->m0:Lcom/mycompany/app/view/MyRecyclerView;

    .line 32
    .line 33
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 38
    .line 39
    if-eqz v0, :cond_1

    .line 40
    .line 41
    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 42
    .line 43
    .line 44
    :cond_1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetTabDetail;->m0:Lcom/mycompany/app/view/MyRecyclerView;

    .line 45
    .line 46
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->requestLayout()V

    .line 47
    .line 48
    .line 49
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetTabDetail;->l0:Landroid/widget/FrameLayout;

    .line 50
    .line 51
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogSetTabDetail;->n0:Lcom/mycompany/app/view/MyButtonImage;

    .line 52
    .line 53
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 54
    .line 55
    .line 56
    const/4 v0, 0x0

    .line 57
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogSetTabDetail;->n0:Lcom/mycompany/app/view/MyButtonImage;

    .line 58
    .line 59
    return-void

    .line 60
    :cond_2
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetTabDetail;->m0:Lcom/mycompany/app/view/MyRecyclerView;

    .line 61
    .line 62
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 67
    .line 68
    const/4 v2, 0x3

    .line 69
    if-eqz v0, :cond_4

    .line 70
    .line 71
    iget v3, p0, Lcom/mycompany/app/dialog/DialogSetTabDetail;->R0:I

    .line 72
    .line 73
    if-ne v3, v2, :cond_3

    .line 74
    .line 75
    sget v3, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 76
    .line 77
    invoke-virtual {v0, v1, v1, v3, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 78
    .line 79
    .line 80
    goto :goto_0

    .line 81
    :cond_3
    sget v3, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 82
    .line 83
    invoke-virtual {v0, v3, v1, v1, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 84
    .line 85
    .line 86
    :cond_4
    :goto_0
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetTabDetail;->m0:Lcom/mycompany/app/view/MyRecyclerView;

    .line 87
    .line 88
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->requestLayout()V

    .line 89
    .line 90
    .line 91
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetTabDetail;->n0:Lcom/mycompany/app/view/MyButtonImage;

    .line 92
    .line 93
    const/4 v3, 0x5

    .line 94
    if-eqz v0, :cond_7

    .line 95
    .line 96
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 101
    .line 102
    if-eqz v0, :cond_6

    .line 103
    .line 104
    iget v1, p0, Lcom/mycompany/app/dialog/DialogSetTabDetail;->R0:I

    .line 105
    .line 106
    if-ne v1, v2, :cond_5

    .line 107
    .line 108
    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 109
    .line 110
    goto :goto_1

    .line 111
    :cond_5
    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 112
    .line 113
    :cond_6
    :goto_1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetTabDetail;->n0:Lcom/mycompany/app/view/MyButtonImage;

    .line 114
    .line 115
    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 116
    .line 117
    .line 118
    return-void

    .line 119
    :cond_7
    new-instance v0, Lcom/mycompany/app/view/MyButtonImage;

    .line 120
    .line 121
    iget-object v4, p0, Lcom/mycompany/app/dialog/DialogSetTabDetail;->f0:Landroid/content/Context;

    .line 122
    .line 123
    invoke-direct {v0, v4}, Lcom/mycompany/app/view/MyButtonImage;-><init>(Landroid/content/Context;)V

    .line 124
    .line 125
    .line 126
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogSetTabDetail;->n0:Lcom/mycompany/app/view/MyButtonImage;

    .line 127
    .line 128
    sget-object v4, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    .line 129
    .line 130
    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 131
    .line 132
    .line 133
    invoke-static {v1, v1}, Lcom/mycompany/app/main/MainUtil;->s0(IZ)I

    .line 134
    .line 135
    .line 136
    move-result v0

    .line 137
    if-nez v0, :cond_8

    .line 138
    .line 139
    iget-object v4, p0, Lcom/mycompany/app/dialog/DialogSetTabDetail;->n0:Lcom/mycompany/app/view/MyButtonImage;

    .line 140
    .line 141
    sget v5, Lnet/kaki87/soul2/testing/R$drawable;->outline_add_black_24:I

    .line 142
    .line 143
    invoke-virtual {v4, v5}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 144
    .line 145
    .line 146
    goto :goto_2

    .line 147
    :cond_8
    iget-object v4, p0, Lcom/mycompany/app/dialog/DialogSetTabDetail;->n0:Lcom/mycompany/app/view/MyButtonImage;

    .line 148
    .line 149
    sget v5, Lnet/kaki87/soul2/testing/R$drawable;->outline_add_dark_24:I

    .line 150
    .line 151
    invoke-virtual {v4, v5}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 152
    .line 153
    .line 154
    :goto_2
    iget-object v4, p0, Lcom/mycompany/app/dialog/DialogSetTabDetail;->n0:Lcom/mycompany/app/view/MyButtonImage;

    .line 155
    .line 156
    invoke-static {v0}, Lcom/mycompany/app/view/MyIconView;->i(I)F

    .line 157
    .line 158
    .line 159
    move-result v5

    .line 160
    invoke-virtual {v4, v5}, Lcom/mycompany/app/view/MyButtonImage;->setAlpha(F)V

    .line 161
    .line 162
    .line 163
    iget-object v4, p0, Lcom/mycompany/app/dialog/DialogSetTabDetail;->n0:Lcom/mycompany/app/view/MyButtonImage;

    .line 164
    .line 165
    invoke-static {v0, v1}, Lcom/mycompany/app/main/MainUtil;->P1(II)I

    .line 166
    .line 167
    .line 168
    move-result v0

    .line 169
    invoke-virtual {v4, v0}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 170
    .line 171
    .line 172
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 173
    .line 174
    sget v1, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 175
    .line 176
    const/4 v4, -0x1

    .line 177
    invoke-direct {v0, v1, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 178
    .line 179
    .line 180
    iget v1, p0, Lcom/mycompany/app/dialog/DialogSetTabDetail;->R0:I

    .line 181
    .line 182
    if-ne v1, v2, :cond_9

    .line 183
    .line 184
    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 185
    .line 186
    goto :goto_3

    .line 187
    :cond_9
    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 188
    .line 189
    :goto_3
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogSetTabDetail;->l0:Landroid/widget/FrameLayout;

    .line 190
    .line 191
    iget-object v2, p0, Lcom/mycompany/app/dialog/DialogSetTabDetail;->n0:Lcom/mycompany/app/view/MyButtonImage;

    .line 192
    .line 193
    invoke-virtual {v1, v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 194
    .line 195
    .line 196
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetTabDetail;->n0:Lcom/mycompany/app/view/MyButtonImage;

    .line 197
    .line 198
    new-instance v1, Lcom/mycompany/app/dialog/DialogSetTabDetail$19;

    .line 199
    .line 200
    invoke-direct {v1, p0}, Lcom/mycompany/app/dialog/DialogSetTabDetail$19;-><init>(Lcom/mycompany/app/dialog/DialogSetTabDetail;)V

    .line 201
    .line 202
    .line 203
    invoke-virtual {v0, v1}, Lcom/mycompany/app/view/MyButtonImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 204
    .line 205
    .line 206
    :cond_a
    :goto_4
    return-void
.end method

.method public final F()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetTabDetail;->Z0:Lcom/mycompany/app/dialog/DialogSetMsg;

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
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogSetTabDetail;->Z0:Lcom/mycompany/app/dialog/DialogSetMsg;

    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public final G(Z)V
    .locals 7

    .line 1
    sget v0, Lcom/mycompany/app/main/MainApp;->Z0:I

    .line 2
    .line 3
    int-to-float v0, v0

    .line 4
    const/high16 v1, 0x40000000    # 2.0f

    .line 5
    .line 6
    div-float/2addr v0, v1

    .line 7
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    sget v2, Lcom/mycompany/app/main/MainApp;->a1:I

    .line 12
    .line 13
    int-to-float v2, v2

    .line 14
    div-float/2addr v2, v1

    .line 15
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    iget v2, p0, Lcom/mycompany/app/dialog/DialogSetTabDetail;->T0:I

    .line 20
    .line 21
    sget v3, Lcom/mycompany/app/main/MainApp;->Z0:I

    .line 22
    .line 23
    mul-int/2addr v2, v3

    .line 24
    int-to-float v2, v2

    .line 25
    const/high16 v3, 0x42c80000    # 100.0f

    .line 26
    .line 27
    div-float/2addr v2, v3

    .line 28
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    iget v4, p0, Lcom/mycompany/app/dialog/DialogSetTabDetail;->U0:I

    .line 33
    .line 34
    sget v5, Lcom/mycompany/app/main/MainApp;->a1:I

    .line 35
    .line 36
    mul-int/2addr v4, v5

    .line 37
    int-to-float v4, v4

    .line 38
    div-float/2addr v4, v3

    .line 39
    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    .line 40
    .line 41
    .line 42
    move-result v3

    .line 43
    if-ge v2, v0, :cond_0

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_0
    sget v0, Lcom/mycompany/app/main/MainApp;->Z0:I

    .line 47
    .line 48
    mul-int/lit8 v0, v0, 0x2

    .line 49
    .line 50
    if-le v2, v0, :cond_1

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_1
    move v0, v2

    .line 54
    :goto_0
    if-ge v3, v1, :cond_2

    .line 55
    .line 56
    goto :goto_1

    .line 57
    :cond_2
    sget v1, Lcom/mycompany/app/main/MainApp;->a1:I

    .line 58
    .line 59
    mul-int/lit8 v1, v1, 0x2

    .line 60
    .line 61
    if-le v3, v1, :cond_3

    .line 62
    .line 63
    goto :goto_1

    .line 64
    :cond_3
    move v1, v3

    .line 65
    :goto_1
    sget-boolean v2, Lcom/mycompany/app/pref/PrefWeb;->y:Z

    .line 66
    .line 67
    iget-boolean v3, p0, Lcom/mycompany/app/dialog/DialogSetTabDetail;->P0:Z

    .line 68
    .line 69
    const/4 v4, 0x0

    .line 70
    if-ne v2, v3, :cond_4

    .line 71
    .line 72
    sget v2, Lcom/mycompany/app/pref/PrefWeb;->z:I

    .line 73
    .line 74
    iget v5, p0, Lcom/mycompany/app/dialog/DialogSetTabDetail;->Q0:I

    .line 75
    .line 76
    if-eq v2, v5, :cond_6

    .line 77
    .line 78
    :cond_4
    sput-boolean v3, Lcom/mycompany/app/pref/PrefWeb;->y:Z

    .line 79
    .line 80
    iget v2, p0, Lcom/mycompany/app/dialog/DialogSetTabDetail;->Q0:I

    .line 81
    .line 82
    sput v2, Lcom/mycompany/app/pref/PrefWeb;->z:I

    .line 83
    .line 84
    iget-object v2, p0, Lcom/mycompany/app/dialog/DialogSetTabDetail;->f0:Landroid/content/Context;

    .line 85
    .line 86
    invoke-static {v2, v4}, Lcom/mycompany/app/pref/PrefWeb;->r(Landroid/content/Context;Z)Lcom/mycompany/app/pref/PrefWeb;

    .line 87
    .line 88
    .line 89
    move-result-object v2

    .line 90
    const-string v3, "mTabColor"

    .line 91
    .line 92
    const-string v5, "mTabAccent"

    .line 93
    .line 94
    if-eqz p1, :cond_5

    .line 95
    .line 96
    sget-boolean v6, Lcom/mycompany/app/pref/PrefWeb;->y:Z

    .line 97
    .line 98
    invoke-virtual {v2, v5, v6}, Lcom/mycompany/app/pref/PrefCore;->l(Ljava/lang/String;Z)V

    .line 99
    .line 100
    .line 101
    sget v5, Lcom/mycompany/app/pref/PrefWeb;->z:I

    .line 102
    .line 103
    invoke-virtual {v2, v5, v3}, Lcom/mycompany/app/pref/PrefCore;->n(ILjava/lang/String;)V

    .line 104
    .line 105
    .line 106
    goto :goto_2

    .line 107
    :cond_5
    invoke-virtual {v2, v5}, Lcom/mycompany/app/pref/PrefCore;->q(Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    invoke-virtual {v2, v3}, Lcom/mycompany/app/pref/PrefCore;->q(Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    :goto_2
    invoke-virtual {v2}, Lcom/mycompany/app/pref/PrefCore;->a()V

    .line 114
    .line 115
    .line 116
    :cond_6
    sget v2, Lcom/mycompany/app/pref/PrefPdf;->C:I

    .line 117
    .line 118
    iget v3, p0, Lcom/mycompany/app/dialog/DialogSetTabDetail;->R0:I

    .line 119
    .line 120
    if-ne v2, v3, :cond_7

    .line 121
    .line 122
    sget-boolean v2, Lcom/mycompany/app/pref/PrefPdf;->D:Z

    .line 123
    .line 124
    iget-boolean v5, p0, Lcom/mycompany/app/dialog/DialogSetTabDetail;->S0:Z

    .line 125
    .line 126
    if-ne v2, v5, :cond_7

    .line 127
    .line 128
    sget v2, Lcom/mycompany/app/pref/PrefPdf;->E:I

    .line 129
    .line 130
    if-ne v2, v0, :cond_7

    .line 131
    .line 132
    sget v2, Lcom/mycompany/app/pref/PrefPdf;->F:I

    .line 133
    .line 134
    if-eq v2, v1, :cond_9

    .line 135
    .line 136
    :cond_7
    sput v3, Lcom/mycompany/app/pref/PrefPdf;->C:I

    .line 137
    .line 138
    iget-boolean v2, p0, Lcom/mycompany/app/dialog/DialogSetTabDetail;->S0:Z

    .line 139
    .line 140
    sput-boolean v2, Lcom/mycompany/app/pref/PrefPdf;->D:Z

    .line 141
    .line 142
    sput v0, Lcom/mycompany/app/pref/PrefPdf;->E:I

    .line 143
    .line 144
    sput v1, Lcom/mycompany/app/pref/PrefPdf;->F:I

    .line 145
    .line 146
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetTabDetail;->f0:Landroid/content/Context;

    .line 147
    .line 148
    invoke-static {v0, v4}, Lcom/mycompany/app/pref/PrefPdf;->r(Landroid/content/Context;Z)Lcom/mycompany/app/pref/PrefPdf;

    .line 149
    .line 150
    .line 151
    move-result-object v0

    .line 152
    const-string v1, "mTabHeight"

    .line 153
    .line 154
    const-string v2, "mTabWidth"

    .line 155
    .line 156
    const-string v3, "mTabClose"

    .line 157
    .line 158
    const-string v4, "mTabAdd"

    .line 159
    .line 160
    if-eqz p1, :cond_8

    .line 161
    .line 162
    sget v5, Lcom/mycompany/app/pref/PrefPdf;->C:I

    .line 163
    .line 164
    invoke-virtual {v0, v5, v4}, Lcom/mycompany/app/pref/PrefCore;->n(ILjava/lang/String;)V

    .line 165
    .line 166
    .line 167
    sget-boolean v4, Lcom/mycompany/app/pref/PrefPdf;->D:Z

    .line 168
    .line 169
    invoke-virtual {v0, v3, v4}, Lcom/mycompany/app/pref/PrefCore;->l(Ljava/lang/String;Z)V

    .line 170
    .line 171
    .line 172
    sget v3, Lcom/mycompany/app/pref/PrefPdf;->E:I

    .line 173
    .line 174
    invoke-virtual {v0, v3, v2}, Lcom/mycompany/app/pref/PrefCore;->n(ILjava/lang/String;)V

    .line 175
    .line 176
    .line 177
    sget v2, Lcom/mycompany/app/pref/PrefPdf;->F:I

    .line 178
    .line 179
    invoke-virtual {v0, v2, v1}, Lcom/mycompany/app/pref/PrefCore;->n(ILjava/lang/String;)V

    .line 180
    .line 181
    .line 182
    goto :goto_3

    .line 183
    :cond_8
    invoke-virtual {v0, v4}, Lcom/mycompany/app/pref/PrefCore;->q(Ljava/lang/String;)V

    .line 184
    .line 185
    .line 186
    invoke-virtual {v0, v3}, Lcom/mycompany/app/pref/PrefCore;->q(Ljava/lang/String;)V

    .line 187
    .line 188
    .line 189
    invoke-virtual {v0, v2}, Lcom/mycompany/app/pref/PrefCore;->q(Ljava/lang/String;)V

    .line 190
    .line 191
    .line 192
    invoke-virtual {v0, v1}, Lcom/mycompany/app/pref/PrefCore;->q(Ljava/lang/String;)V

    .line 193
    .line 194
    .line 195
    :goto_3
    invoke-virtual {v0}, Lcom/mycompany/app/pref/PrefCore;->a()V

    .line 196
    .line 197
    .line 198
    :cond_9
    if-eqz p1, :cond_a

    .line 199
    .line 200
    invoke-virtual {p0}, Lcom/mycompany/app/dialog/DialogSetTabDetail;->dismiss()V

    .line 201
    .line 202
    .line 203
    :cond_a
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
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetTabDetail;->f0:Landroid/content/Context;

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    invoke-virtual {p0}, Lcom/mycompany/app/dialog/DialogSetTabDetail;->F()V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetTabDetail;->a1:Lcom/mycompany/app/view/MyPopupMenu;

    .line 13
    .line 14
    const/4 v1, 0x0

    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    iput-object v1, p0, Lcom/mycompany/app/view/MyDialogBottom;->Y:Lcom/mycompany/app/view/MyPopupWrap;

    .line 18
    .line 19
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyPopupMenu;->a()V

    .line 20
    .line 21
    .line 22
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogSetTabDetail;->a1:Lcom/mycompany/app/view/MyPopupMenu;

    .line 23
    .line 24
    :cond_1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetTabDetail;->b1:Lcom/mycompany/app/view/GlideRequests;

    .line 25
    .line 26
    if-eqz v0, :cond_3

    .line 27
    .line 28
    iget-object v2, p0, Lcom/mycompany/app/dialog/DialogSetTabDetail;->i0:Lcom/mycompany/app/view/MyRoundImage;

    .line 29
    .line 30
    if-eqz v2, :cond_2

    .line 31
    .line 32
    invoke-virtual {v0, v2}, Lcom/bumptech/glide/RequestManager;->o(Landroid/view/View;)V

    .line 33
    .line 34
    .line 35
    :cond_2
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogSetTabDetail;->b1:Lcom/mycompany/app/view/GlideRequests;

    .line 36
    .line 37
    :cond_3
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetTabDetail;->g0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 38
    .line 39
    if-eqz v0, :cond_4

    .line 40
    .line 41
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyDialogLinear;->b()V

    .line 42
    .line 43
    .line 44
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogSetTabDetail;->g0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 45
    .line 46
    :cond_4
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetTabDetail;->h0:Lcom/mycompany/app/view/MyRoundFrame;

    .line 47
    .line 48
    if-eqz v0, :cond_5

    .line 49
    .line 50
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyRoundFrame;->a()V

    .line 51
    .line 52
    .line 53
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogSetTabDetail;->h0:Lcom/mycompany/app/view/MyRoundFrame;

    .line 54
    .line 55
    :cond_5
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetTabDetail;->i0:Lcom/mycompany/app/view/MyRoundImage;

    .line 56
    .line 57
    if-eqz v0, :cond_6

    .line 58
    .line 59
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyRoundImage;->k()V

    .line 60
    .line 61
    .line 62
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogSetTabDetail;->i0:Lcom/mycompany/app/view/MyRoundImage;

    .line 63
    .line 64
    :cond_6
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetTabDetail;->m0:Lcom/mycompany/app/view/MyRecyclerView;

    .line 65
    .line 66
    if-eqz v0, :cond_7

    .line 67
    .line 68
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyRecyclerView;->s0()V

    .line 69
    .line 70
    .line 71
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogSetTabDetail;->m0:Lcom/mycompany/app/view/MyRecyclerView;

    .line 72
    .line 73
    :cond_7
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetTabDetail;->n0:Lcom/mycompany/app/view/MyButtonImage;

    .line 74
    .line 75
    if-eqz v0, :cond_8

    .line 76
    .line 77
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyButtonImage;->j()V

    .line 78
    .line 79
    .line 80
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogSetTabDetail;->n0:Lcom/mycompany/app/view/MyButtonImage;

    .line 81
    .line 82
    :cond_8
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetTabDetail;->o0:Lcom/mycompany/app/web/WebTabBarAdapter;

    .line 83
    .line 84
    if-eqz v0, :cond_9

    .line 85
    .line 86
    invoke-virtual {v0}, Lcom/mycompany/app/web/WebTabBarAdapter;->H()V

    .line 87
    .line 88
    .line 89
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogSetTabDetail;->o0:Lcom/mycompany/app/web/WebTabBarAdapter;

    .line 90
    .line 91
    :cond_9
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetTabDetail;->r0:Lcom/mycompany/app/view/MyLineFrame;

    .line 92
    .line 93
    if-eqz v0, :cond_a

    .line 94
    .line 95
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyLineFrame;->g()V

    .line 96
    .line 97
    .line 98
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogSetTabDetail;->r0:Lcom/mycompany/app/view/MyLineFrame;

    .line 99
    .line 100
    :cond_a
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetTabDetail;->s0:Lcom/mycompany/app/view/MySwitchView;

    .line 101
    .line 102
    if-eqz v0, :cond_b

    .line 103
    .line 104
    invoke-virtual {v0}, Lcom/mycompany/app/view/MySwitchView;->a()V

    .line 105
    .line 106
    .line 107
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogSetTabDetail;->s0:Lcom/mycompany/app/view/MySwitchView;

    .line 108
    .line 109
    :cond_b
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetTabDetail;->u0:Lcom/mycompany/app/view/MyRecyclerView;

    .line 110
    .line 111
    if-eqz v0, :cond_c

    .line 112
    .line 113
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyRecyclerView;->s0()V

    .line 114
    .line 115
    .line 116
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogSetTabDetail;->u0:Lcom/mycompany/app/view/MyRecyclerView;

    .line 117
    .line 118
    :cond_c
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetTabDetail;->w0:Lcom/mycompany/app/view/MyLineRelative;

    .line 119
    .line 120
    if-eqz v0, :cond_d

    .line 121
    .line 122
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyLineRelative;->e()V

    .line 123
    .line 124
    .line 125
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogSetTabDetail;->w0:Lcom/mycompany/app/view/MyLineRelative;

    .line 126
    .line 127
    :cond_d
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetTabDetail;->A0:Lcom/mycompany/app/view/MyLineFrame;

    .line 128
    .line 129
    if-eqz v0, :cond_e

    .line 130
    .line 131
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyLineFrame;->g()V

    .line 132
    .line 133
    .line 134
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogSetTabDetail;->A0:Lcom/mycompany/app/view/MyLineFrame;

    .line 135
    .line 136
    :cond_e
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetTabDetail;->B0:Lcom/mycompany/app/view/MySwitchView;

    .line 137
    .line 138
    if-eqz v0, :cond_f

    .line 139
    .line 140
    invoke-virtual {v0}, Lcom/mycompany/app/view/MySwitchView;->a()V

    .line 141
    .line 142
    .line 143
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogSetTabDetail;->B0:Lcom/mycompany/app/view/MySwitchView;

    .line 144
    .line 145
    :cond_f
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetTabDetail;->G0:Lcom/mycompany/app/view/MyButtonImage;

    .line 146
    .line 147
    if-eqz v0, :cond_10

    .line 148
    .line 149
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyButtonImage;->j()V

    .line 150
    .line 151
    .line 152
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogSetTabDetail;->G0:Lcom/mycompany/app/view/MyButtonImage;

    .line 153
    .line 154
    :cond_10
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetTabDetail;->H0:Lcom/mycompany/app/view/MyButtonImage;

    .line 155
    .line 156
    if-eqz v0, :cond_11

    .line 157
    .line 158
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyButtonImage;->j()V

    .line 159
    .line 160
    .line 161
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogSetTabDetail;->H0:Lcom/mycompany/app/view/MyButtonImage;

    .line 162
    .line 163
    :cond_11
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetTabDetail;->L0:Lcom/mycompany/app/view/MyButtonImage;

    .line 164
    .line 165
    if-eqz v0, :cond_12

    .line 166
    .line 167
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyButtonImage;->j()V

    .line 168
    .line 169
    .line 170
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogSetTabDetail;->L0:Lcom/mycompany/app/view/MyButtonImage;

    .line 171
    .line 172
    :cond_12
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetTabDetail;->M0:Lcom/mycompany/app/view/MyButtonImage;

    .line 173
    .line 174
    if-eqz v0, :cond_13

    .line 175
    .line 176
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyButtonImage;->j()V

    .line 177
    .line 178
    .line 179
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogSetTabDetail;->M0:Lcom/mycompany/app/view/MyButtonImage;

    .line 180
    .line 181
    :cond_13
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetTabDetail;->O0:Lcom/mycompany/app/view/MyLineText;

    .line 182
    .line 183
    if-eqz v0, :cond_14

    .line 184
    .line 185
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyLineText;->u()V

    .line 186
    .line 187
    .line 188
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogSetTabDetail;->O0:Lcom/mycompany/app/view/MyLineText;

    .line 189
    .line 190
    :cond_14
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogSetTabDetail;->e0:Lcom/mycompany/app/main/MainActivity;

    .line 191
    .line 192
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogSetTabDetail;->f0:Landroid/content/Context;

    .line 193
    .line 194
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogSetTabDetail;->j0:Ljava/util/ArrayList;

    .line 195
    .line 196
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogSetTabDetail;->l0:Landroid/widget/FrameLayout;

    .line 197
    .line 198
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogSetTabDetail;->q0:Landroid/view/ViewGroup$LayoutParams;

    .line 199
    .line 200
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogSetTabDetail;->t0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 201
    .line 202
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogSetTabDetail;->v0:Lcom/mycompany/app/dialog/DialogSetTabDetail$ColorAdapter;

    .line 203
    .line 204
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogSetTabDetail;->x0:Landroid/view/View;

    .line 205
    .line 206
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogSetTabDetail;->y0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 207
    .line 208
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogSetTabDetail;->z0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 209
    .line 210
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogSetTabDetail;->C0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 211
    .line 212
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogSetTabDetail;->D0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 213
    .line 214
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogSetTabDetail;->E0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 215
    .line 216
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogSetTabDetail;->F0:Landroid/widget/SeekBar;

    .line 217
    .line 218
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogSetTabDetail;->I0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 219
    .line 220
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogSetTabDetail;->J0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 221
    .line 222
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogSetTabDetail;->K0:Landroid/widget/SeekBar;

    .line 223
    .line 224
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogSetTabDetail;->N0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 225
    .line 226
    invoke-super {p0}, Lcom/mycompany/app/view/MyDialogBottom;->dismiss()V

    .line 227
    .line 228
    .line 229
    return-void
.end method
