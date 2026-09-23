.class public Lcom/mycompany/app/dialog/DialogEditUp;
.super Lcom/mycompany/app/view/MyDialogBottom;
.source "SourceFile"


# static fields
.field public static final synthetic D0:I


# instance fields
.field public A0:Lcom/mycompany/app/view/GlideRequests;

.field public B0:Landroid/graphics/drawable/Drawable;

.field public C0:F

.field public final a0:I

.field public b0:Lcom/mycompany/app/main/MainActivity;

.field public c0:Landroid/content/Context;

.field public d0:Lcom/mycompany/app/view/MyDialogLinear;

.field public e0:Lcom/mycompany/app/view/MyMoveFrame;

.field public f0:Lcom/mycompany/app/view/MyRoundImage;

.field public g0:Lcom/mycompany/app/view/MyButtonImage;

.field public h0:Lcom/mycompany/app/view/MyLineRelative;

.field public i0:Landroid/view/View;

.field public j0:Landroidx/appcompat/widget/AppCompatTextView;

.field public k0:Landroidx/appcompat/widget/AppCompatTextView;

.field public l0:Landroidx/appcompat/widget/AppCompatTextView;

.field public m0:Landroidx/appcompat/widget/AppCompatTextView;

.field public n0:Landroidx/appcompat/widget/AppCompatTextView;

.field public o0:Landroid/widget/SeekBar;

.field public p0:Lcom/mycompany/app/view/MyButtonImage;

.field public q0:Lcom/mycompany/app/view/MyButtonImage;

.field public r0:Landroidx/appcompat/widget/AppCompatTextView;

.field public s0:Lcom/mycompany/app/view/MyLineText;

.field public t0:Lcom/mycompany/app/dialog/DialogSetMsg;

.field public u0:I

.field public v0:I

.field public w0:I

.field public x0:I

.field public y0:Z

.field public z0:Lcom/mycompany/app/view/MyPopupMenu;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/main/MainActivity;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Lcom/mycompany/app/view/MyDialogBottom;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogEditUp;->b0:Lcom/mycompany/app/main/MainActivity;

    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogEditUp;->c0:Landroid/content/Context;

    .line 11
    .line 12
    sget p1, Lcom/mycompany/app/pref/PrefZone;->y:I

    .line 13
    .line 14
    iput p1, p0, Lcom/mycompany/app/dialog/DialogEditUp;->u0:I

    .line 15
    .line 16
    sget p1, Lcom/mycompany/app/pref/PrefEditor;->J:I

    .line 17
    .line 18
    iput p1, p0, Lcom/mycompany/app/dialog/DialogEditUp;->v0:I

    .line 19
    .line 20
    sget-boolean v0, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 21
    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    const/high16 v0, -0x1000000

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    const/4 v0, -0x1

    .line 28
    :goto_0
    iput v0, p0, Lcom/mycompany/app/dialog/DialogEditUp;->w0:I

    .line 29
    .line 30
    const/16 v1, 0x5a

    .line 31
    .line 32
    iput v1, p0, Lcom/mycompany/app/dialog/DialogEditUp;->a0:I

    .line 33
    .line 34
    if-ltz p1, :cond_1

    .line 35
    .line 36
    if-le p1, v1, :cond_2

    .line 37
    .line 38
    :cond_1
    const/16 p1, 0x19

    .line 39
    .line 40
    iput p1, p0, Lcom/mycompany/app/dialog/DialogEditUp;->v0:I

    .line 41
    .line 42
    :cond_2
    iget p1, p0, Lcom/mycompany/app/dialog/DialogEditUp;->v0:I

    .line 43
    .line 44
    invoke-static {v0, p1}, Lcom/mycompany/app/pref/PrefEditor;->r(II)I

    .line 45
    .line 46
    .line 47
    move-result p1

    .line 48
    iput p1, p0, Lcom/mycompany/app/dialog/DialogEditUp;->x0:I

    .line 49
    .line 50
    iget-object p1, p0, Lcom/mycompany/app/view/MyDialogBottom;->i:Landroid/os/Handler;

    .line 51
    .line 52
    if-nez p1, :cond_3

    .line 53
    .line 54
    return-void

    .line 55
    :cond_3
    new-instance v0, Lcom/mycompany/app/dialog/DialogEditUp$1;

    .line 56
    .line 57
    invoke-direct {v0, p0}, Lcom/mycompany/app/dialog/DialogEditUp$1;-><init>(Lcom/mycompany/app/dialog/DialogEditUp;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 61
    .line 62
    .line 63
    return-void
.end method

.method public static B(Lcom/mycompany/app/dialog/DialogEditUp;I)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogEditUp;->n0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    iget v0, p0, Lcom/mycompany/app/dialog/DialogEditUp;->v0:I

    .line 7
    .line 8
    if-ne v0, p1, :cond_1

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_1
    iget-boolean v0, p0, Lcom/mycompany/app/dialog/DialogEditUp;->y0:Z

    .line 12
    .line 13
    if-eqz v0, :cond_2

    .line 14
    .line 15
    :goto_0
    return-void

    .line 16
    :cond_2
    const/4 v0, 0x1

    .line 17
    iput-boolean v0, p0, Lcom/mycompany/app/dialog/DialogEditUp;->y0:Z

    .line 18
    .line 19
    iput p1, p0, Lcom/mycompany/app/dialog/DialogEditUp;->v0:I

    .line 20
    .line 21
    iget v0, p0, Lcom/mycompany/app/dialog/DialogEditUp;->w0:I

    .line 22
    .line 23
    invoke-static {v0, p1}, Lcom/mycompany/app/pref/PrefEditor;->r(II)I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    iput v0, p0, Lcom/mycompany/app/dialog/DialogEditUp;->x0:I

    .line 28
    .line 29
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogEditUp;->g0:Lcom/mycompany/app/view/MyButtonImage;

    .line 30
    .line 31
    if-eqz v1, :cond_3

    .line 32
    .line 33
    invoke-virtual {v1, v0}, Lcom/mycompany/app/view/MyButtonImage;->setBgNorColor(I)V

    .line 34
    .line 35
    .line 36
    :cond_3
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogEditUp;->n0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 37
    .line 38
    new-instance v1, Ljava/lang/StringBuilder;

    .line 39
    .line 40
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 41
    .line 42
    .line 43
    iget v2, p0, Lcom/mycompany/app/dialog/DialogEditUp;->v0:I

    .line 44
    .line 45
    const-string v3, "%"

    .line 46
    .line 47
    invoke-static {v1, v2, v3, v0}, Lcom/mycompany/app/dialog/a;->t(Ljava/lang/StringBuilder;ILjava/lang/String;Landroidx/appcompat/widget/AppCompatTextView;)V

    .line 48
    .line 49
    .line 50
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogEditUp;->n0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 51
    .line 52
    new-instance v1, Lcom/mycompany/app/dialog/DialogEditUp$15;

    .line 53
    .line 54
    invoke-direct {v1, p0, p1}, Lcom/mycompany/app/dialog/DialogEditUp$15;-><init>(Lcom/mycompany/app/dialog/DialogEditUp;I)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 58
    .line 59
    .line 60
    return-void
.end method


# virtual methods
.method public final C()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogEditUp;->t0:Lcom/mycompany/app/dialog/DialogSetMsg;

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
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogEditUp;->t0:Lcom/mycompany/app/dialog/DialogSetMsg;

    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public final D(Z)V
    .locals 4

    .line 1
    sget v0, Lcom/mycompany/app/pref/PrefZone;->y:I

    .line 2
    .line 3
    iget v1, p0, Lcom/mycompany/app/dialog/DialogEditUp;->u0:I

    .line 4
    .line 5
    if-eq v0, v1, :cond_1

    .line 6
    .line 7
    sput v1, Lcom/mycompany/app/pref/PrefZone;->y:I

    .line 8
    .line 9
    const-string v0, "mShowUpPos"

    .line 10
    .line 11
    const/16 v2, 0xf

    .line 12
    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    iget-object v3, p0, Lcom/mycompany/app/dialog/DialogEditUp;->c0:Landroid/content/Context;

    .line 16
    .line 17
    invoke-static {v3, v2, v1, v0}, Lcom/mycompany/app/pref/PrefSet;->f(Landroid/content/Context;IILjava/lang/String;)V

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogEditUp;->c0:Landroid/content/Context;

    .line 22
    .line 23
    invoke-static {v1, v2, v0}, Lcom/mycompany/app/pref/PrefSet;->i(Landroid/content/Context;ILjava/lang/String;)V

    .line 24
    .line 25
    .line 26
    :cond_1
    :goto_0
    sget v0, Lcom/mycompany/app/pref/PrefEditor;->J:I

    .line 27
    .line 28
    iget v1, p0, Lcom/mycompany/app/dialog/DialogEditUp;->v0:I

    .line 29
    .line 30
    if-eq v0, v1, :cond_3

    .line 31
    .line 32
    sput v1, Lcom/mycompany/app/pref/PrefEditor;->J:I

    .line 33
    .line 34
    const-string v0, "mUpAlpha"

    .line 35
    .line 36
    const/4 v2, 0x1

    .line 37
    if-eqz p1, :cond_2

    .line 38
    .line 39
    iget-object v3, p0, Lcom/mycompany/app/dialog/DialogEditUp;->c0:Landroid/content/Context;

    .line 40
    .line 41
    invoke-static {v3, v2, v1, v0}, Lcom/mycompany/app/pref/PrefSet;->f(Landroid/content/Context;IILjava/lang/String;)V

    .line 42
    .line 43
    .line 44
    goto :goto_1

    .line 45
    :cond_2
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogEditUp;->c0:Landroid/content/Context;

    .line 46
    .line 47
    invoke-static {v1, v2, v0}, Lcom/mycompany/app/pref/PrefSet;->i(Landroid/content/Context;ILjava/lang/String;)V

    .line 48
    .line 49
    .line 50
    :cond_3
    :goto_1
    if-eqz p1, :cond_4

    .line 51
    .line 52
    invoke-virtual {p0}, Lcom/mycompany/app/dialog/DialogEditUp;->dismiss()V

    .line 53
    .line 54
    .line 55
    :cond_4
    return-void
.end method

.method public final E(IZ)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogEditUp;->k0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_1

    .line 6
    :cond_0
    if-eqz p2, :cond_1

    .line 7
    .line 8
    iget p2, p0, Lcom/mycompany/app/dialog/DialogEditUp;->u0:I

    .line 9
    .line 10
    if-ne p2, p1, :cond_1

    .line 11
    .line 12
    goto :goto_1

    .line 13
    :cond_1
    iput p1, p0, Lcom/mycompany/app/dialog/DialogEditUp;->u0:I

    .line 14
    .line 15
    sget-object p2, Lcom/mycompany/app/main/MainConst;->N:[I

    .line 16
    .line 17
    aget p1, p2, p1

    .line 18
    .line 19
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 20
    .line 21
    .line 22
    iget p1, p0, Lcom/mycompany/app/dialog/DialogEditUp;->u0:I

    .line 23
    .line 24
    const/4 p2, 0x1

    .line 25
    const/4 v0, 0x0

    .line 26
    if-ne p1, p2, :cond_2

    .line 27
    .line 28
    sget p1, Lcom/mycompany/app/main/MainApp;->G1:I

    .line 29
    .line 30
    const/16 p2, 0x13

    .line 31
    .line 32
    move v1, p2

    .line 33
    move p2, v0

    .line 34
    goto :goto_0

    .line 35
    :cond_2
    const/4 p2, 0x2

    .line 36
    if-ne p1, p2, :cond_3

    .line 37
    .line 38
    const/16 p2, 0x11

    .line 39
    .line 40
    move v1, p2

    .line 41
    move p1, v0

    .line 42
    move p2, p1

    .line 43
    goto :goto_0

    .line 44
    :cond_3
    const/4 p2, 0x3

    .line 45
    if-ne p1, p2, :cond_5

    .line 46
    .line 47
    sget p1, Lcom/mycompany/app/main/MainApp;->G1:I

    .line 48
    .line 49
    const/16 p2, 0x15

    .line 50
    .line 51
    move v1, p2

    .line 52
    move p2, p1

    .line 53
    move p1, v0

    .line 54
    :goto_0
    iget-object v2, p0, Lcom/mycompany/app/dialog/DialogEditUp;->g0:Lcom/mycompany/app/view/MyButtonImage;

    .line 55
    .line 56
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 57
    .line 58
    .line 59
    move-result-object v2

    .line 60
    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 61
    .line 62
    if-nez v2, :cond_4

    .line 63
    .line 64
    :goto_1
    return-void

    .line 65
    :cond_4
    iput v1, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 66
    .line 67
    iput p1, v2, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 68
    .line 69
    iput p2, v2, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 70
    .line 71
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogEditUp;->g0:Lcom/mycompany/app/view/MyButtonImage;

    .line 72
    .line 73
    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    .line 74
    .line 75
    .line 76
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogEditUp;->g0:Lcom/mycompany/app/view/MyButtonImage;

    .line 77
    .line 78
    invoke-virtual {p1, v0}, Lcom/mycompany/app/view/MyButtonImage;->setVisibility(I)V

    .line 79
    .line 80
    .line 81
    return-void

    .line 82
    :cond_5
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogEditUp;->g0:Lcom/mycompany/app/view/MyButtonImage;

    .line 83
    .line 84
    const/16 p2, 0x8

    .line 85
    .line 86
    invoke-virtual {p1, p2}, Lcom/mycompany/app/view/MyButtonImage;->setVisibility(I)V

    .line 87
    .line 88
    .line 89
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
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogEditUp;->c0:Landroid/content/Context;

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    invoke-virtual {p0}, Lcom/mycompany/app/dialog/DialogEditUp;->C()V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogEditUp;->z0:Lcom/mycompany/app/view/MyPopupMenu;

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
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogEditUp;->z0:Lcom/mycompany/app/view/MyPopupMenu;

    .line 23
    .line 24
    :cond_1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogEditUp;->A0:Lcom/mycompany/app/view/GlideRequests;

    .line 25
    .line 26
    if-eqz v0, :cond_3

    .line 27
    .line 28
    iget-object v2, p0, Lcom/mycompany/app/dialog/DialogEditUp;->f0:Lcom/mycompany/app/view/MyRoundImage;

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
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogEditUp;->A0:Lcom/mycompany/app/view/GlideRequests;

    .line 36
    .line 37
    :cond_3
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogEditUp;->d0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 38
    .line 39
    if-eqz v0, :cond_4

    .line 40
    .line 41
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyDialogLinear;->b()V

    .line 42
    .line 43
    .line 44
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogEditUp;->d0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 45
    .line 46
    :cond_4
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogEditUp;->e0:Lcom/mycompany/app/view/MyMoveFrame;

    .line 47
    .line 48
    if-eqz v0, :cond_6

    .line 49
    .line 50
    iget-object v2, v0, Lcom/mycompany/app/view/MyMoveFrame;->A:Landroid/animation/ValueAnimator;

    .line 51
    .line 52
    if-eqz v2, :cond_5

    .line 53
    .line 54
    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->cancel()V

    .line 55
    .line 56
    .line 57
    iput-object v1, v0, Lcom/mycompany/app/view/MyMoveFrame;->A:Landroid/animation/ValueAnimator;

    .line 58
    .line 59
    :cond_5
    iput-object v1, v0, Lcom/mycompany/app/view/MyMoveFrame;->c:Lcom/mycompany/app/dialog/DialogSeekAudio$DialogSeekListener;

    .line 60
    .line 61
    iput-object v1, v0, Lcom/mycompany/app/view/MyMoveFrame;->f:Landroid/graphics/drawable/Drawable;

    .line 62
    .line 63
    iput-object v1, v0, Lcom/mycompany/app/view/MyMoveFrame;->h:Landroid/graphics/Paint;

    .line 64
    .line 65
    iput-object v1, v0, Lcom/mycompany/app/view/MyMoveFrame;->i:Landroid/graphics/Paint;

    .line 66
    .line 67
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogEditUp;->e0:Lcom/mycompany/app/view/MyMoveFrame;

    .line 68
    .line 69
    :cond_6
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogEditUp;->f0:Lcom/mycompany/app/view/MyRoundImage;

    .line 70
    .line 71
    if-eqz v0, :cond_7

    .line 72
    .line 73
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyRoundImage;->k()V

    .line 74
    .line 75
    .line 76
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogEditUp;->f0:Lcom/mycompany/app/view/MyRoundImage;

    .line 77
    .line 78
    :cond_7
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogEditUp;->g0:Lcom/mycompany/app/view/MyButtonImage;

    .line 79
    .line 80
    if-eqz v0, :cond_8

    .line 81
    .line 82
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyButtonImage;->j()V

    .line 83
    .line 84
    .line 85
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogEditUp;->g0:Lcom/mycompany/app/view/MyButtonImage;

    .line 86
    .line 87
    :cond_8
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogEditUp;->h0:Lcom/mycompany/app/view/MyLineRelative;

    .line 88
    .line 89
    if-eqz v0, :cond_9

    .line 90
    .line 91
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyLineRelative;->e()V

    .line 92
    .line 93
    .line 94
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogEditUp;->h0:Lcom/mycompany/app/view/MyLineRelative;

    .line 95
    .line 96
    :cond_9
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogEditUp;->p0:Lcom/mycompany/app/view/MyButtonImage;

    .line 97
    .line 98
    if-eqz v0, :cond_a

    .line 99
    .line 100
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyButtonImage;->j()V

    .line 101
    .line 102
    .line 103
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogEditUp;->p0:Lcom/mycompany/app/view/MyButtonImage;

    .line 104
    .line 105
    :cond_a
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogEditUp;->q0:Lcom/mycompany/app/view/MyButtonImage;

    .line 106
    .line 107
    if-eqz v0, :cond_b

    .line 108
    .line 109
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyButtonImage;->j()V

    .line 110
    .line 111
    .line 112
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogEditUp;->q0:Lcom/mycompany/app/view/MyButtonImage;

    .line 113
    .line 114
    :cond_b
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogEditUp;->s0:Lcom/mycompany/app/view/MyLineText;

    .line 115
    .line 116
    if-eqz v0, :cond_c

    .line 117
    .line 118
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyLineText;->u()V

    .line 119
    .line 120
    .line 121
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogEditUp;->s0:Lcom/mycompany/app/view/MyLineText;

    .line 122
    .line 123
    :cond_c
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogEditUp;->b0:Lcom/mycompany/app/main/MainActivity;

    .line 124
    .line 125
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogEditUp;->c0:Landroid/content/Context;

    .line 126
    .line 127
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogEditUp;->i0:Landroid/view/View;

    .line 128
    .line 129
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogEditUp;->j0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 130
    .line 131
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogEditUp;->k0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 132
    .line 133
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogEditUp;->l0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 134
    .line 135
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogEditUp;->m0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 136
    .line 137
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogEditUp;->n0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 138
    .line 139
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogEditUp;->o0:Landroid/widget/SeekBar;

    .line 140
    .line 141
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogEditUp;->r0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 142
    .line 143
    invoke-super {p0}, Lcom/mycompany/app/view/MyDialogBottom;->dismiss()V

    .line 144
    .line 145
    .line 146
    return-void
.end method
