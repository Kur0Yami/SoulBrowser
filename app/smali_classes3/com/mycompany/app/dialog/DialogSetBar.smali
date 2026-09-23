.class public Lcom/mycompany/app/dialog/DialogSetBar;
.super Lcom/mycompany/app/view/MyDialogBottom;
.source "SourceFile"


# static fields
.field public static final synthetic K0:I


# instance fields
.field public A0:I

.field public B0:Z

.field public C0:Z

.field public D0:Z

.field public E0:Z

.field public F0:Lcom/mycompany/app/view/GlideRequests;

.field public G0:Landroid/graphics/drawable/Drawable;

.field public H0:F

.field public final I0:Ljava/lang/Runnable;

.field public final J0:Ljava/lang/Runnable;

.field public final a0:I

.field public final b0:I

.field public final c0:I

.field public d0:Lcom/mycompany/app/main/MainActivity;

.field public e0:Landroid/content/Context;

.field public final f0:I

.field public g0:[I

.field public h0:Lcom/mycompany/app/view/MyDialogLinear;

.field public i0:Landroid/widget/FrameLayout;

.field public j0:Lcom/mycompany/app/view/MyRoundImage;

.field public k0:Lcom/mycompany/app/view/MyBarView;

.field public l0:Landroid/widget/FrameLayout$LayoutParams;

.field public m0:Landroidx/appcompat/widget/AppCompatTextView;

.field public n0:Landroidx/appcompat/widget/AppCompatTextView;

.field public o0:Landroid/widget/SeekBar;

.field public p0:Lcom/mycompany/app/view/MyButtonImage;

.field public q0:Lcom/mycompany/app/view/MyButtonImage;

.field public r0:Landroidx/appcompat/widget/AppCompatTextView;

.field public s0:Landroidx/appcompat/widget/AppCompatTextView;

.field public t0:Landroid/widget/SeekBar;

.field public u0:Lcom/mycompany/app/view/MyButtonImage;

.field public v0:Lcom/mycompany/app/view/MyButtonImage;

.field public w0:Landroidx/appcompat/widget/AppCompatTextView;

.field public x0:Lcom/mycompany/app/view/MyLineText;

.field public y0:Lcom/mycompany/app/dialog/DialogSetMsg;

.field public z0:I


# direct methods
.method public constructor <init>(Lcom/mycompany/app/main/MainActivity;I[I)V
    .locals 3

    .line 1
    invoke-direct {p0, p1}, Lcom/mycompany/app/view/MyDialogBottom;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/mycompany/app/dialog/DialogSetBar$14;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Lcom/mycompany/app/dialog/DialogSetBar$14;-><init>(Lcom/mycompany/app/dialog/DialogSetBar;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogSetBar;->I0:Ljava/lang/Runnable;

    .line 10
    .line 11
    new-instance v0, Lcom/mycompany/app/dialog/DialogSetBar$15;

    .line 12
    .line 13
    invoke-direct {v0, p0}, Lcom/mycompany/app/dialog/DialogSetBar$15;-><init>(Lcom/mycompany/app/dialog/DialogSetBar;)V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogSetBar;->J0:Ljava/lang/Runnable;

    .line 17
    .line 18
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogSetBar;->d0:Lcom/mycompany/app/main/MainActivity;

    .line 19
    .line 20
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogSetBar;->e0:Landroid/content/Context;

    .line 25
    .line 26
    iput p2, p0, Lcom/mycompany/app/dialog/DialogSetBar;->f0:I

    .line 27
    .line 28
    iput-object p3, p0, Lcom/mycompany/app/dialog/DialogSetBar;->g0:[I

    .line 29
    .line 30
    const/16 p1, 0x5a

    .line 31
    .line 32
    iput p1, p0, Lcom/mycompany/app/dialog/DialogSetBar;->a0:I

    .line 33
    .line 34
    const/16 p3, 0x32

    .line 35
    .line 36
    iput p3, p0, Lcom/mycompany/app/dialog/DialogSetBar;->b0:I

    .line 37
    .line 38
    const/16 v0, 0xc8

    .line 39
    .line 40
    iput v0, p0, Lcom/mycompany/app/dialog/DialogSetBar;->c0:I

    .line 41
    .line 42
    const/high16 v1, 0x42c80000    # 100.0f

    .line 43
    .line 44
    if-nez p2, :cond_0

    .line 45
    .line 46
    sget p1, Lcom/mycompany/app/pref/PrefPdf;->y:I

    .line 47
    .line 48
    int-to-float p1, p1

    .line 49
    mul-float/2addr p1, v1

    .line 50
    sget p2, Lcom/mycompany/app/main/MainApp;->Y0:I

    .line 51
    .line 52
    int-to-float p2, p2

    .line 53
    div-float/2addr p1, p2

    .line 54
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    .line 55
    .line 56
    .line 57
    move-result p1

    .line 58
    iput p1, p0, Lcom/mycompany/app/dialog/DialogSetBar;->A0:I

    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_0
    const/4 v2, 0x1

    .line 62
    if-ne p2, v2, :cond_1

    .line 63
    .line 64
    sget p1, Lcom/mycompany/app/pref/PrefPdf;->A:I

    .line 65
    .line 66
    int-to-float p1, p1

    .line 67
    mul-float/2addr p1, v1

    .line 68
    sget p2, Lcom/mycompany/app/main/MainApp;->Y0:I

    .line 69
    .line 70
    int-to-float p2, p2

    .line 71
    div-float/2addr p1, p2

    .line 72
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    .line 73
    .line 74
    .line 75
    move-result p1

    .line 76
    iput p1, p0, Lcom/mycompany/app/dialog/DialogSetBar;->A0:I

    .line 77
    .line 78
    goto :goto_0

    .line 79
    :cond_1
    sget p2, Lcom/mycompany/app/pref/PrefEditor;->I:I

    .line 80
    .line 81
    iput p2, p0, Lcom/mycompany/app/dialog/DialogSetBar;->z0:I

    .line 82
    .line 83
    sget p2, Lcom/mycompany/app/pref/PrefPdf;->B:I

    .line 84
    .line 85
    int-to-float p2, p2

    .line 86
    mul-float/2addr p2, v1

    .line 87
    sget v1, Lcom/mycompany/app/main/MainApp;->Y0:I

    .line 88
    .line 89
    int-to-float v1, v1

    .line 90
    div-float/2addr p2, v1

    .line 91
    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    .line 92
    .line 93
    .line 94
    move-result p2

    .line 95
    iput p2, p0, Lcom/mycompany/app/dialog/DialogSetBar;->A0:I

    .line 96
    .line 97
    iget p2, p0, Lcom/mycompany/app/dialog/DialogSetBar;->z0:I

    .line 98
    .line 99
    if-gez p2, :cond_2

    .line 100
    .line 101
    const/4 p1, 0x0

    .line 102
    iput p1, p0, Lcom/mycompany/app/dialog/DialogSetBar;->z0:I

    .line 103
    .line 104
    goto :goto_0

    .line 105
    :cond_2
    if-le p2, p1, :cond_3

    .line 106
    .line 107
    iput p1, p0, Lcom/mycompany/app/dialog/DialogSetBar;->z0:I

    .line 108
    .line 109
    :cond_3
    :goto_0
    iget p1, p0, Lcom/mycompany/app/dialog/DialogSetBar;->A0:I

    .line 110
    .line 111
    if-ge p1, p3, :cond_4

    .line 112
    .line 113
    iput p3, p0, Lcom/mycompany/app/dialog/DialogSetBar;->A0:I

    .line 114
    .line 115
    goto :goto_1

    .line 116
    :cond_4
    if-le p1, v0, :cond_5

    .line 117
    .line 118
    iput v0, p0, Lcom/mycompany/app/dialog/DialogSetBar;->A0:I

    .line 119
    .line 120
    :cond_5
    :goto_1
    iget-object p1, p0, Lcom/mycompany/app/view/MyDialogBottom;->i:Landroid/os/Handler;

    .line 121
    .line 122
    if-nez p1, :cond_6

    .line 123
    .line 124
    return-void

    .line 125
    :cond_6
    new-instance p2, Lcom/mycompany/app/dialog/DialogSetBar$1;

    .line 126
    .line 127
    invoke-direct {p2, p0}, Lcom/mycompany/app/dialog/DialogSetBar$1;-><init>(Lcom/mycompany/app/dialog/DialogSetBar;)V

    .line 128
    .line 129
    .line 130
    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 131
    .line 132
    .line 133
    return-void
.end method

.method public static B(Lcom/mycompany/app/dialog/DialogSetBar;I)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetBar;->I0:Ljava/lang/Runnable;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogSetBar;->n0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    goto :goto_2

    .line 8
    :cond_0
    const/4 v2, 0x0

    .line 9
    if-gez p1, :cond_1

    .line 10
    .line 11
    move p1, v2

    .line 12
    goto :goto_0

    .line 13
    :cond_1
    iget v3, p0, Lcom/mycompany/app/dialog/DialogSetBar;->a0:I

    .line 14
    .line 15
    if-le p1, v3, :cond_2

    .line 16
    .line 17
    move p1, v3

    .line 18
    :cond_2
    :goto_0
    iget-boolean v3, p0, Lcom/mycompany/app/dialog/DialogSetBar;->C0:Z

    .line 19
    .line 20
    if-nez v3, :cond_7

    .line 21
    .line 22
    iget v3, p0, Lcom/mycompany/app/dialog/DialogSetBar;->z0:I

    .line 23
    .line 24
    if-ne v3, p1, :cond_3

    .line 25
    .line 26
    goto :goto_2

    .line 27
    :cond_3
    const/4 v3, 0x1

    .line 28
    iput-boolean v3, p0, Lcom/mycompany/app/dialog/DialogSetBar;->C0:Z

    .line 29
    .line 30
    iput p1, p0, Lcom/mycompany/app/dialog/DialogSetBar;->z0:I

    .line 31
    .line 32
    new-instance p1, Ljava/lang/StringBuilder;

    .line 33
    .line 34
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 35
    .line 36
    .line 37
    iget v3, p0, Lcom/mycompany/app/dialog/DialogSetBar;->z0:I

    .line 38
    .line 39
    const-string v4, "%"

    .line 40
    .line 41
    invoke-static {p1, v3, v4, v1}, Lcom/mycompany/app/dialog/a;->t(Ljava/lang/StringBuilder;ILjava/lang/String;Landroidx/appcompat/widget/AppCompatTextView;)V

    .line 42
    .line 43
    .line 44
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogSetBar;->k0:Lcom/mycompany/app/view/MyBarView;

    .line 45
    .line 46
    if-eqz p1, :cond_5

    .line 47
    .line 48
    sget-boolean v1, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 49
    .line 50
    if-eqz v1, :cond_4

    .line 51
    .line 52
    const/high16 v1, -0x1000000

    .line 53
    .line 54
    goto :goto_1

    .line 55
    :cond_4
    const/4 v1, -0x1

    .line 56
    :goto_1
    iget v3, p0, Lcom/mycompany/app/dialog/DialogSetBar;->z0:I

    .line 57
    .line 58
    invoke-static {v1, v3}, Lcom/mycompany/app/pref/PrefEditor;->r(II)I

    .line 59
    .line 60
    .line 61
    move-result v1

    .line 62
    invoke-virtual {p1, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 63
    .line 64
    .line 65
    :cond_5
    iget-boolean p1, p0, Lcom/mycompany/app/dialog/DialogSetBar;->B0:Z

    .line 66
    .line 67
    if-eqz p1, :cond_6

    .line 68
    .line 69
    iput-boolean v2, p0, Lcom/mycompany/app/dialog/DialogSetBar;->B0:Z

    .line 70
    .line 71
    iput-boolean v2, p0, Lcom/mycompany/app/dialog/DialogSetBar;->C0:Z

    .line 72
    .line 73
    return-void

    .line 74
    :cond_6
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogSetBar;->n0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 75
    .line 76
    invoke-virtual {p1, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 77
    .line 78
    .line 79
    iget-object p0, p0, Lcom/mycompany/app/dialog/DialogSetBar;->n0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 80
    .line 81
    const-wide/16 v1, 0x64

    .line 82
    .line 83
    invoke-virtual {p0, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 84
    .line 85
    .line 86
    :cond_7
    :goto_2
    return-void
.end method

.method public static C(Lcom/mycompany/app/dialog/DialogSetBar;I)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetBar;->J0:Ljava/lang/Runnable;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogSetBar;->s0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    goto :goto_2

    .line 8
    :cond_0
    iget v2, p0, Lcom/mycompany/app/dialog/DialogSetBar;->b0:I

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
    iget v2, p0, Lcom/mycompany/app/dialog/DialogSetBar;->c0:I

    .line 15
    .line 16
    if-le p1, v2, :cond_2

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_2
    :goto_1
    iget-boolean v2, p0, Lcom/mycompany/app/dialog/DialogSetBar;->E0:Z

    .line 20
    .line 21
    if-nez v2, :cond_6

    .line 22
    .line 23
    iget v2, p0, Lcom/mycompany/app/dialog/DialogSetBar;->A0:I

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
    iput-boolean v2, p0, Lcom/mycompany/app/dialog/DialogSetBar;->E0:Z

    .line 30
    .line 31
    iput p1, p0, Lcom/mycompany/app/dialog/DialogSetBar;->A0:I

    .line 32
    .line 33
    new-instance p1, Ljava/lang/StringBuilder;

    .line 34
    .line 35
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 36
    .line 37
    .line 38
    iget v2, p0, Lcom/mycompany/app/dialog/DialogSetBar;->A0:I

    .line 39
    .line 40
    const-string v3, "%"

    .line 41
    .line 42
    invoke-static {p1, v2, v3, v1}, Lcom/mycompany/app/dialog/a;->t(Ljava/lang/StringBuilder;ILjava/lang/String;Landroidx/appcompat/widget/AppCompatTextView;)V

    .line 43
    .line 44
    .line 45
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogSetBar;->l0:Landroid/widget/FrameLayout$LayoutParams;

    .line 46
    .line 47
    if-eqz p1, :cond_4

    .line 48
    .line 49
    iget v1, p0, Lcom/mycompany/app/dialog/DialogSetBar;->A0:I

    .line 50
    .line 51
    sget v2, Lcom/mycompany/app/main/MainApp;->Y0:I

    .line 52
    .line 53
    mul-int/2addr v1, v2

    .line 54
    int-to-float v1, v1

    .line 55
    const/high16 v2, 0x42c80000    # 100.0f

    .line 56
    .line 57
    div-float/2addr v1, v2

    .line 58
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    .line 59
    .line 60
    .line 61
    move-result v1

    .line 62
    iput v1, p1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 63
    .line 64
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogSetBar;->k0:Lcom/mycompany/app/view/MyBarView;

    .line 65
    .line 66
    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    .line 67
    .line 68
    .line 69
    :cond_4
    iget-boolean p1, p0, Lcom/mycompany/app/dialog/DialogSetBar;->D0:Z

    .line 70
    .line 71
    if-eqz p1, :cond_5

    .line 72
    .line 73
    const/4 p1, 0x0

    .line 74
    iput-boolean p1, p0, Lcom/mycompany/app/dialog/DialogSetBar;->D0:Z

    .line 75
    .line 76
    iput-boolean p1, p0, Lcom/mycompany/app/dialog/DialogSetBar;->E0:Z

    .line 77
    .line 78
    return-void

    .line 79
    :cond_5
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogSetBar;->s0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 80
    .line 81
    invoke-virtual {p1, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 82
    .line 83
    .line 84
    iget-object p0, p0, Lcom/mycompany/app/dialog/DialogSetBar;->s0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 85
    .line 86
    const-wide/16 v1, 0x64

    .line 87
    .line 88
    invoke-virtual {p0, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 89
    .line 90
    .line 91
    :cond_6
    :goto_2
    return-void
.end method


# virtual methods
.method public final D()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetBar;->y0:Lcom/mycompany/app/dialog/DialogSetMsg;

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
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogSetBar;->y0:Lcom/mycompany/app/dialog/DialogSetMsg;

    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public final E(Z)V
    .locals 6

    .line 1
    iget v0, p0, Lcom/mycompany/app/dialog/DialogSetBar;->A0:I

    .line 2
    .line 3
    sget v1, Lcom/mycompany/app/main/MainApp;->Y0:I

    .line 4
    .line 5
    mul-int/2addr v0, v1

    .line 6
    int-to-float v0, v0

    .line 7
    const/high16 v1, 0x42c80000    # 100.0f

    .line 8
    .line 9
    div-float/2addr v0, v1

    .line 10
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    sget v1, Lcom/mycompany/app/main/MainApp;->Y0:I

    .line 15
    .line 16
    int-to-float v1, v1

    .line 17
    const/high16 v2, 0x40000000    # 2.0f

    .line 18
    .line 19
    div-float/2addr v1, v2

    .line 20
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    if-ge v0, v1, :cond_0

    .line 25
    .line 26
    :goto_0
    move v0, v1

    .line 27
    goto :goto_1

    .line 28
    :cond_0
    sget v1, Lcom/mycompany/app/main/MainApp;->Y0:I

    .line 29
    .line 30
    mul-int/lit8 v1, v1, 0x2

    .line 31
    .line 32
    if-le v0, v1, :cond_1

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_1
    :goto_1
    const/4 v1, 0x7

    .line 36
    iget v2, p0, Lcom/mycompany/app/dialog/DialogSetBar;->f0:I

    .line 37
    .line 38
    if-nez v2, :cond_3

    .line 39
    .line 40
    sget v2, Lcom/mycompany/app/pref/PrefPdf;->y:I

    .line 41
    .line 42
    if-eq v2, v0, :cond_9

    .line 43
    .line 44
    sput v0, Lcom/mycompany/app/pref/PrefPdf;->y:I

    .line 45
    .line 46
    const-string v2, "mMidHeight"

    .line 47
    .line 48
    if-eqz p1, :cond_2

    .line 49
    .line 50
    iget-object v3, p0, Lcom/mycompany/app/dialog/DialogSetBar;->e0:Landroid/content/Context;

    .line 51
    .line 52
    invoke-static {v3, v1, v0, v2}, Lcom/mycompany/app/pref/PrefSet;->f(Landroid/content/Context;IILjava/lang/String;)V

    .line 53
    .line 54
    .line 55
    goto :goto_3

    .line 56
    :cond_2
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetBar;->e0:Landroid/content/Context;

    .line 57
    .line 58
    invoke-static {v0, v1, v2}, Lcom/mycompany/app/pref/PrefSet;->i(Landroid/content/Context;ILjava/lang/String;)V

    .line 59
    .line 60
    .line 61
    goto :goto_3

    .line 62
    :cond_3
    const/4 v3, 0x1

    .line 63
    if-ne v2, v3, :cond_5

    .line 64
    .line 65
    sget v2, Lcom/mycompany/app/pref/PrefPdf;->A:I

    .line 66
    .line 67
    if-eq v2, v0, :cond_9

    .line 68
    .line 69
    sput v0, Lcom/mycompany/app/pref/PrefPdf;->A:I

    .line 70
    .line 71
    const-string v2, "mTopHeight"

    .line 72
    .line 73
    if-eqz p1, :cond_4

    .line 74
    .line 75
    iget-object v3, p0, Lcom/mycompany/app/dialog/DialogSetBar;->e0:Landroid/content/Context;

    .line 76
    .line 77
    invoke-static {v3, v1, v0, v2}, Lcom/mycompany/app/pref/PrefSet;->f(Landroid/content/Context;IILjava/lang/String;)V

    .line 78
    .line 79
    .line 80
    goto :goto_3

    .line 81
    :cond_4
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetBar;->e0:Landroid/content/Context;

    .line 82
    .line 83
    invoke-static {v0, v1, v2}, Lcom/mycompany/app/pref/PrefSet;->i(Landroid/content/Context;ILjava/lang/String;)V

    .line 84
    .line 85
    .line 86
    goto :goto_3

    .line 87
    :cond_5
    sget v2, Lcom/mycompany/app/pref/PrefEditor;->I:I

    .line 88
    .line 89
    iget v4, p0, Lcom/mycompany/app/dialog/DialogSetBar;->z0:I

    .line 90
    .line 91
    if-eq v2, v4, :cond_7

    .line 92
    .line 93
    sput v4, Lcom/mycompany/app/pref/PrefEditor;->I:I

    .line 94
    .line 95
    const-string v2, "mBotAlpha"

    .line 96
    .line 97
    if-eqz p1, :cond_6

    .line 98
    .line 99
    iget-object v5, p0, Lcom/mycompany/app/dialog/DialogSetBar;->e0:Landroid/content/Context;

    .line 100
    .line 101
    invoke-static {v5, v3, v4, v2}, Lcom/mycompany/app/pref/PrefSet;->f(Landroid/content/Context;IILjava/lang/String;)V

    .line 102
    .line 103
    .line 104
    goto :goto_2

    .line 105
    :cond_6
    iget-object v4, p0, Lcom/mycompany/app/dialog/DialogSetBar;->e0:Landroid/content/Context;

    .line 106
    .line 107
    invoke-static {v4, v3, v2}, Lcom/mycompany/app/pref/PrefSet;->i(Landroid/content/Context;ILjava/lang/String;)V

    .line 108
    .line 109
    .line 110
    :cond_7
    :goto_2
    sget v2, Lcom/mycompany/app/pref/PrefPdf;->B:I

    .line 111
    .line 112
    if-eq v2, v0, :cond_9

    .line 113
    .line 114
    sput v0, Lcom/mycompany/app/pref/PrefPdf;->B:I

    .line 115
    .line 116
    const-string v2, "mBotHeight"

    .line 117
    .line 118
    if-eqz p1, :cond_8

    .line 119
    .line 120
    iget-object v3, p0, Lcom/mycompany/app/dialog/DialogSetBar;->e0:Landroid/content/Context;

    .line 121
    .line 122
    invoke-static {v3, v1, v0, v2}, Lcom/mycompany/app/pref/PrefSet;->f(Landroid/content/Context;IILjava/lang/String;)V

    .line 123
    .line 124
    .line 125
    goto :goto_3

    .line 126
    :cond_8
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetBar;->e0:Landroid/content/Context;

    .line 127
    .line 128
    invoke-static {v0, v1, v2}, Lcom/mycompany/app/pref/PrefSet;->i(Landroid/content/Context;ILjava/lang/String;)V

    .line 129
    .line 130
    .line 131
    :cond_9
    :goto_3
    if-eqz p1, :cond_a

    .line 132
    .line 133
    invoke-virtual {p0}, Lcom/mycompany/app/dialog/DialogSetBar;->dismiss()V

    .line 134
    .line 135
    .line 136
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
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetBar;->e0:Landroid/content/Context;

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    invoke-virtual {p0}, Lcom/mycompany/app/dialog/DialogSetBar;->D()V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetBar;->F0:Lcom/mycompany/app/view/GlideRequests;

    .line 13
    .line 14
    const/4 v1, 0x0

    .line 15
    if-eqz v0, :cond_2

    .line 16
    .line 17
    iget-object v2, p0, Lcom/mycompany/app/dialog/DialogSetBar;->j0:Lcom/mycompany/app/view/MyRoundImage;

    .line 18
    .line 19
    if-eqz v2, :cond_1

    .line 20
    .line 21
    invoke-virtual {v0, v2}, Lcom/bumptech/glide/RequestManager;->o(Landroid/view/View;)V

    .line 22
    .line 23
    .line 24
    :cond_1
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogSetBar;->F0:Lcom/mycompany/app/view/GlideRequests;

    .line 25
    .line 26
    :cond_2
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetBar;->h0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 27
    .line 28
    if-eqz v0, :cond_3

    .line 29
    .line 30
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyDialogLinear;->b()V

    .line 31
    .line 32
    .line 33
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogSetBar;->h0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 34
    .line 35
    :cond_3
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetBar;->j0:Lcom/mycompany/app/view/MyRoundImage;

    .line 36
    .line 37
    if-eqz v0, :cond_4

    .line 38
    .line 39
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyRoundImage;->k()V

    .line 40
    .line 41
    .line 42
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogSetBar;->j0:Lcom/mycompany/app/view/MyRoundImage;

    .line 43
    .line 44
    :cond_4
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetBar;->k0:Lcom/mycompany/app/view/MyBarView;

    .line 45
    .line 46
    if-eqz v0, :cond_5

    .line 47
    .line 48
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyBarView;->d()V

    .line 49
    .line 50
    .line 51
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogSetBar;->k0:Lcom/mycompany/app/view/MyBarView;

    .line 52
    .line 53
    :cond_5
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetBar;->p0:Lcom/mycompany/app/view/MyButtonImage;

    .line 54
    .line 55
    if-eqz v0, :cond_6

    .line 56
    .line 57
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyButtonImage;->j()V

    .line 58
    .line 59
    .line 60
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogSetBar;->p0:Lcom/mycompany/app/view/MyButtonImage;

    .line 61
    .line 62
    :cond_6
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetBar;->q0:Lcom/mycompany/app/view/MyButtonImage;

    .line 63
    .line 64
    if-eqz v0, :cond_7

    .line 65
    .line 66
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyButtonImage;->j()V

    .line 67
    .line 68
    .line 69
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogSetBar;->q0:Lcom/mycompany/app/view/MyButtonImage;

    .line 70
    .line 71
    :cond_7
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetBar;->u0:Lcom/mycompany/app/view/MyButtonImage;

    .line 72
    .line 73
    if-eqz v0, :cond_8

    .line 74
    .line 75
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyButtonImage;->j()V

    .line 76
    .line 77
    .line 78
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogSetBar;->u0:Lcom/mycompany/app/view/MyButtonImage;

    .line 79
    .line 80
    :cond_8
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetBar;->v0:Lcom/mycompany/app/view/MyButtonImage;

    .line 81
    .line 82
    if-eqz v0, :cond_9

    .line 83
    .line 84
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyButtonImage;->j()V

    .line 85
    .line 86
    .line 87
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogSetBar;->v0:Lcom/mycompany/app/view/MyButtonImage;

    .line 88
    .line 89
    :cond_9
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetBar;->x0:Lcom/mycompany/app/view/MyLineText;

    .line 90
    .line 91
    if-eqz v0, :cond_a

    .line 92
    .line 93
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyLineText;->u()V

    .line 94
    .line 95
    .line 96
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogSetBar;->x0:Lcom/mycompany/app/view/MyLineText;

    .line 97
    .line 98
    :cond_a
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogSetBar;->d0:Lcom/mycompany/app/main/MainActivity;

    .line 99
    .line 100
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogSetBar;->e0:Landroid/content/Context;

    .line 101
    .line 102
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogSetBar;->g0:[I

    .line 103
    .line 104
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogSetBar;->i0:Landroid/widget/FrameLayout;

    .line 105
    .line 106
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogSetBar;->l0:Landroid/widget/FrameLayout$LayoutParams;

    .line 107
    .line 108
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogSetBar;->m0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 109
    .line 110
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogSetBar;->n0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 111
    .line 112
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogSetBar;->o0:Landroid/widget/SeekBar;

    .line 113
    .line 114
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogSetBar;->r0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 115
    .line 116
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogSetBar;->s0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 117
    .line 118
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogSetBar;->t0:Landroid/widget/SeekBar;

    .line 119
    .line 120
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogSetBar;->w0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 121
    .line 122
    invoke-super {p0}, Lcom/mycompany/app/view/MyDialogBottom;->dismiss()V

    .line 123
    .line 124
    .line 125
    return-void
.end method
