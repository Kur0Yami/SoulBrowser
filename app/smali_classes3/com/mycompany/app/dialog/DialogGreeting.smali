.class public Lcom/mycompany/app/dialog/DialogGreeting;
.super Lcom/mycompany/app/view/MyDialogBottom;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mycompany/app/dialog/DialogGreeting$LocalWebViewClient;,
        Lcom/mycompany/app/dialog/DialogGreeting$WebAppInterface;
    }
.end annotation


# static fields
.field public static final synthetic I0:I


# instance fields
.field public A0:Z

.field public B0:Ljava/lang/String;

.field public C0:I

.field public final D0:Ljava/lang/Runnable;

.field public E0:Ljava/lang/String;

.field public F0:Ljava/lang/String;

.field public G0:Ljava/lang/String;

.field public H0:Lcom/mycompany/app/web/WebTransControl;

.field public a0:Lcom/mycompany/app/main/MainActivity;

.field public b0:Landroid/content/Context;

.field public c0:Lcom/mycompany/app/dialog/DialogWebView$DialogWebListener;

.field public final d0:Z

.field public e0:Lcom/mycompany/app/view/MyDialogRelative;

.field public f0:Landroid/widget/ImageView;

.field public g0:Landroidx/appcompat/widget/AppCompatTextView;

.field public h0:Landroid/widget/FrameLayout;

.field public i0:Lcom/mycompany/app/web/WebNestView;

.field public j0:Lcom/mycompany/app/view/MyProgressBar;

.field public k0:Landroid/view/View;

.field public l0:Lcom/mycompany/app/view/MyLineFrame;

.field public m0:Z

.field public n0:Lcom/mycompany/app/web/WebTransControl;

.field public o0:Z

.field public p0:Ljava/lang/String;

.field public q0:I

.field public r0:Z

.field public s0:Ljava/lang/String;

.field public t0:Ljava/lang/String;

.field public u0:Ljava/lang/String;

.field public v0:Ljava/lang/String;

.field public w0:I

.field public x0:I

.field public y0:Lcom/mycompany/app/dialog/DialogTransLang;

.field public z0:Lcom/mycompany/app/dialog/DialogWebView;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/main/MainActivity;ZLcom/mycompany/app/dialog/DialogWebView$DialogWebListener;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/mycompany/app/view/MyDialogBottom;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/mycompany/app/dialog/DialogGreeting$9;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Lcom/mycompany/app/dialog/DialogGreeting$9;-><init>(Lcom/mycompany/app/dialog/DialogGreeting;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogGreeting;->D0:Ljava/lang/Runnable;

    .line 10
    .line 11
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogGreeting;->a0:Lcom/mycompany/app/main/MainActivity;

    .line 12
    .line 13
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogGreeting;->b0:Landroid/content/Context;

    .line 18
    .line 19
    iput-object p3, p0, Lcom/mycompany/app/dialog/DialogGreeting;->c0:Lcom/mycompany/app/dialog/DialogWebView$DialogWebListener;

    .line 20
    .line 21
    iput-boolean p2, p0, Lcom/mycompany/app/dialog/DialogGreeting;->d0:Z

    .line 22
    .line 23
    iget-object p1, p0, Lcom/mycompany/app/view/MyDialogBottom;->i:Landroid/os/Handler;

    .line 24
    .line 25
    if-nez p1, :cond_0

    .line 26
    .line 27
    return-void

    .line 28
    :cond_0
    new-instance p2, Lcom/mycompany/app/dialog/DialogGreeting$1;

    .line 29
    .line 30
    invoke-direct {p2, p0}, Lcom/mycompany/app/dialog/DialogGreeting$1;-><init>(Lcom/mycompany/app/dialog/DialogGreeting;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method public static B(Lcom/mycompany/app/dialog/DialogGreeting;Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogGreeting;->i0:Lcom/mycompany/app/web/WebNestView;

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
    iget-boolean p1, p0, Lcom/mycompany/app/dialog/DialogGreeting;->m0:Z

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
    iput-boolean p1, p0, Lcom/mycompany/app/dialog/DialogGreeting;->m0:Z

    .line 19
    .line 20
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogGreeting;->i0:Lcom/mycompany/app/web/WebNestView;

    .line 21
    .line 22
    if-nez p1, :cond_2

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_2
    new-instance v0, Lcom/mycompany/app/dialog/DialogGreeting$10;

    .line 26
    .line 27
    invoke-direct {v0, p0}, Lcom/mycompany/app/dialog/DialogGreeting$10;-><init>(Lcom/mycompany/app/dialog/DialogGreeting;)V

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
    iget-boolean p1, p0, Lcom/mycompany/app/dialog/DialogGreeting;->m0:Z

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
    iput-boolean p1, p0, Lcom/mycompany/app/dialog/DialogGreeting;->m0:Z

    .line 41
    .line 42
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogGreeting;->i0:Lcom/mycompany/app/web/WebNestView;

    .line 43
    .line 44
    if-nez p1, :cond_5

    .line 45
    .line 46
    :goto_0
    return-void

    .line 47
    :cond_5
    new-instance v0, Lcom/mycompany/app/dialog/DialogGreeting$11;

    .line 48
    .line 49
    invoke-direct {v0, p0}, Lcom/mycompany/app/dialog/DialogGreeting$11;-><init>(Lcom/mycompany/app/dialog/DialogGreeting;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {p1, v0}, Lcom/mycompany/app/web/WebNestView;->post(Ljava/lang/Runnable;)Z

    .line 53
    .line 54
    .line 55
    return-void
.end method

.method public static C(Lcom/mycompany/app/dialog/DialogGreeting;Ljava/lang/String;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogGreeting;->a0:Lcom/mycompany/app/main/MainActivity;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogGreeting;->y0:Lcom/mycompany/app/dialog/DialogTransLang;

    .line 7
    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogGreeting;->z0:Lcom/mycompany/app/dialog/DialogWebView;

    .line 12
    .line 13
    if-eqz v0, :cond_2

    .line 14
    .line 15
    :goto_0
    return-void

    .line 16
    :cond_2
    if-eqz v0, :cond_3

    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogWebView;->dismiss()V

    .line 19
    .line 20
    .line 21
    const/4 v0, 0x0

    .line 22
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogGreeting;->z0:Lcom/mycompany/app/dialog/DialogWebView;

    .line 23
    .line 24
    :cond_3
    new-instance v1, Lcom/mycompany/app/dialog/DialogWebView;

    .line 25
    .line 26
    iget-object v2, p0, Lcom/mycompany/app/dialog/DialogGreeting;->a0:Lcom/mycompany/app/main/MainActivity;

    .line 27
    .line 28
    new-instance v7, Lcom/mycompany/app/dialog/DialogGreeting$21;

    .line 29
    .line 30
    invoke-direct {v7, p0}, Lcom/mycompany/app/dialog/DialogGreeting$21;-><init>(Lcom/mycompany/app/dialog/DialogGreeting;)V

    .line 31
    .line 32
    .line 33
    const/4 v5, 0x0

    .line 34
    const/4 v6, 0x2

    .line 35
    move-object v4, p1

    .line 36
    move-object v3, p1

    .line 37
    invoke-direct/range {v1 .. v7}, Lcom/mycompany/app/dialog/DialogWebView;-><init>(Lcom/mycompany/app/main/MainActivity;Ljava/lang/String;Ljava/lang/String;ZILcom/mycompany/app/dialog/DialogWebView$DialogWebListener;)V

    .line 38
    .line 39
    .line 40
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogGreeting;->z0:Lcom/mycompany/app/dialog/DialogWebView;

    .line 41
    .line 42
    new-instance p1, Lcom/mycompany/app/dialog/DialogGreeting$22;

    .line 43
    .line 44
    invoke-direct {p1, p0}, Lcom/mycompany/app/dialog/DialogGreeting$22;-><init>(Lcom/mycompany/app/dialog/DialogGreeting;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v1, p1}, Lcom/mycompany/app/view/MyDialogBottom;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 48
    .line 49
    .line 50
    return-void
.end method


# virtual methods
.method public final D()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogGreeting;->y0:Lcom/mycompany/app/dialog/DialogTransLang;

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
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogGreeting;->y0:Lcom/mycompany/app/dialog/DialogTransLang;

    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public final E(I)V
    .locals 3

    .line 1
    iput p1, p0, Lcom/mycompany/app/dialog/DialogGreeting;->C0:I

    .line 2
    .line 3
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogGreeting;->j0:Lcom/mycompany/app/view/MyProgressBar;

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
    const/16 v1, 0x64

    .line 17
    .line 18
    if-ne p1, v1, :cond_1

    .line 19
    .line 20
    if-ne v0, v1, :cond_1

    .line 21
    .line 22
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogGreeting;->j0:Lcom/mycompany/app/view/MyProgressBar;

    .line 23
    .line 24
    const/4 v0, 0x1

    .line 25
    invoke-virtual {p1, v0}, Lcom/mycompany/app/view/MyProgressBar;->setSkipDraw(Z)V

    .line 26
    .line 27
    .line 28
    return-void

    .line 29
    :cond_1
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogGreeting;->j0:Lcom/mycompany/app/view/MyProgressBar;

    .line 30
    .line 31
    iget-boolean v2, v1, Lcom/mycompany/app/view/MyProgressBar;->B:Z

    .line 32
    .line 33
    if-eqz v2, :cond_2

    .line 34
    .line 35
    const/4 v0, 0x0

    .line 36
    invoke-virtual {v1, v0}, Lcom/mycompany/app/view/MyProgressBar;->setProgress(F)V

    .line 37
    .line 38
    .line 39
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogGreeting;->j0:Lcom/mycompany/app/view/MyProgressBar;

    .line 40
    .line 41
    const/4 v1, 0x0

    .line 42
    invoke-virtual {v0, v1}, Lcom/mycompany/app/view/MyProgressBar;->setSkipDraw(Z)V

    .line 43
    .line 44
    .line 45
    const/16 v0, 0x32

    .line 46
    .line 47
    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    .line 48
    .line 49
    .line 50
    move-result p1

    .line 51
    invoke-virtual {p0, p1}, Lcom/mycompany/app/dialog/DialogGreeting;->E(I)V

    .line 52
    .line 53
    .line 54
    return-void

    .line 55
    :cond_2
    if-lt v0, p1, :cond_3

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_3
    add-int/lit8 v0, v0, 0x3

    .line 59
    .line 60
    int-to-float p1, v0

    .line 61
    invoke-virtual {v1, p1}, Lcom/mycompany/app/view/MyProgressBar;->setProgress(F)V

    .line 62
    .line 63
    .line 64
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogGreeting;->D0:Ljava/lang/Runnable;

    .line 65
    .line 66
    if-eqz p1, :cond_4

    .line 67
    .line 68
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogGreeting;->j0:Lcom/mycompany/app/view/MyProgressBar;

    .line 69
    .line 70
    invoke-virtual {v0, p1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 71
    .line 72
    .line 73
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogGreeting;->j0:Lcom/mycompany/app/view/MyProgressBar;

    .line 74
    .line 75
    invoke-virtual {v0, p1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 76
    .line 77
    .line 78
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
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogGreeting;->b0:Landroid/content/Context;

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    invoke-virtual {p0}, Lcom/mycompany/app/dialog/DialogGreeting;->D()V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogGreeting;->z0:Lcom/mycompany/app/dialog/DialogWebView;

    .line 13
    .line 14
    const/4 v1, 0x0

    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogWebView;->dismiss()V

    .line 18
    .line 19
    .line 20
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogGreeting;->z0:Lcom/mycompany/app/dialog/DialogWebView;

    .line 21
    .line 22
    :cond_1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogGreeting;->i0:Lcom/mycompany/app/web/WebNestView;

    .line 23
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
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogGreeting;->i0:Lcom/mycompany/app/web/WebNestView;

    .line 31
    .line 32
    :cond_2
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogGreeting;->e0:Lcom/mycompany/app/view/MyDialogRelative;

    .line 33
    .line 34
    if-eqz v0, :cond_3

    .line 35
    .line 36
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyDialogRelative;->c()V

    .line 37
    .line 38
    .line 39
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogGreeting;->e0:Lcom/mycompany/app/view/MyDialogRelative;

    .line 40
    .line 41
    :cond_3
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogGreeting;->j0:Lcom/mycompany/app/view/MyProgressBar;

    .line 42
    .line 43
    if-eqz v0, :cond_4

    .line 44
    .line 45
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyProgressBar;->f()V

    .line 46
    .line 47
    .line 48
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogGreeting;->j0:Lcom/mycompany/app/view/MyProgressBar;

    .line 49
    .line 50
    :cond_4
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogGreeting;->l0:Lcom/mycompany/app/view/MyLineFrame;

    .line 51
    .line 52
    if-eqz v0, :cond_5

    .line 53
    .line 54
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyLineFrame;->g()V

    .line 55
    .line 56
    .line 57
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogGreeting;->l0:Lcom/mycompany/app/view/MyLineFrame;

    .line 58
    .line 59
    :cond_5
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogGreeting;->n0:Lcom/mycompany/app/web/WebTransControl;

    .line 60
    .line 61
    if-eqz v0, :cond_6

    .line 62
    .line 63
    invoke-virtual {v0}, Lcom/mycompany/app/web/WebTransControl;->c()V

    .line 64
    .line 65
    .line 66
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogGreeting;->n0:Lcom/mycompany/app/web/WebTransControl;

    .line 67
    .line 68
    :cond_6
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogGreeting;->a0:Lcom/mycompany/app/main/MainActivity;

    .line 69
    .line 70
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogGreeting;->b0:Landroid/content/Context;

    .line 71
    .line 72
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogGreeting;->c0:Lcom/mycompany/app/dialog/DialogWebView$DialogWebListener;

    .line 73
    .line 74
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogGreeting;->f0:Landroid/widget/ImageView;

    .line 75
    .line 76
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogGreeting;->g0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 77
    .line 78
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogGreeting;->h0:Landroid/widget/FrameLayout;

    .line 79
    .line 80
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogGreeting;->k0:Landroid/view/View;

    .line 81
    .line 82
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogGreeting;->p0:Ljava/lang/String;

    .line 83
    .line 84
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogGreeting;->s0:Ljava/lang/String;

    .line 85
    .line 86
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogGreeting;->t0:Ljava/lang/String;

    .line 87
    .line 88
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogGreeting;->u0:Ljava/lang/String;

    .line 89
    .line 90
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogGreeting;->v0:Ljava/lang/String;

    .line 91
    .line 92
    invoke-super {p0}, Lcom/mycompany/app/view/MyDialogBottom;->dismiss()V

    .line 93
    .line 94
    .line 95
    return-void
.end method
