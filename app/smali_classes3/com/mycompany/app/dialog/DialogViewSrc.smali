.class public Lcom/mycompany/app/dialog/DialogViewSrc;
.super Lcom/mycompany/app/dialog/DialogCast;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mycompany/app/dialog/DialogViewSrc$LocalWebViewClient;,
        Lcom/mycompany/app/dialog/DialogViewSrc$LocalChromeClient;
    }
.end annotation


# static fields
.field public static final synthetic s0:I


# instance fields
.field public G:Lcom/mycompany/app/main/MainActivity;

.field public H:Landroid/content/Context;

.field public I:Lcom/mycompany/app/web/WebNestView;

.field public J:Lcom/mycompany/app/view/MyMainRelative;

.field public K:Lcom/mycompany/app/view/MyButtonImage;

.field public L:Lcom/mycompany/app/view/MyButtonImage;

.field public M:Landroid/widget/RelativeLayout;

.field public N:Landroid/widget/FrameLayout;

.field public O:Lcom/mycompany/app/web/WebSrcView;

.field public P:Z

.field public Q:Lcom/mycompany/app/view/MyScrollBar;

.field public R:Landroid/widget/FrameLayout;

.field public S:Landroid/view/View;

.field public T:Lcom/mycompany/app/view/MyProgressBar;

.field public U:Lcom/mycompany/app/view/MyFadeFrame;

.field public V:Landroid/widget/LinearLayout;

.field public W:Lcom/mycompany/app/view/MyButtonImage;

.field public X:Lcom/mycompany/app/view/MyButtonImage;

.field public Y:Lcom/mycompany/app/view/MyCoverView;

.field public Z:Lcom/mycompany/app/view/MyFadeFrame;

.field public a0:Lcom/mycompany/app/view/MyFindView;

.field public b0:Landroid/view/GestureDetector;

.field public c0:Ljava/lang/String;

.field public d0:Z

.field public e0:Ljava/lang/String;

.field public f0:Z

.field public g0:Ljava/lang/String;

.field public h0:Lcom/mycompany/app/dialog/DialogSaveSource;

.field public i0:Lcom/mycompany/app/dialog/DialogSeekBright;

.field public j0:Z

.field public k0:Ljava/lang/String;

.field public l0:Z

.field public m0:Ljava/lang/String;

.field public n0:I

.field public final o0:Ljava/lang/Runnable;

.field public p0:Z

.field public final q0:Ljava/lang/Runnable;

.field public r0:Lcom/mycompany/app/view/MySnackbar;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/main/MainActivity;Lcom/mycompany/app/web/WebNestView;Ljava/lang/String;Ljava/lang/String;)V
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
    new-instance v0, Lcom/mycompany/app/dialog/DialogViewSrc$24;

    .line 14
    .line 15
    invoke-direct {v0, p0}, Lcom/mycompany/app/dialog/DialogViewSrc$24;-><init>(Lcom/mycompany/app/dialog/DialogViewSrc;)V

    .line 16
    .line 17
    .line 18
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogViewSrc;->o0:Ljava/lang/Runnable;

    .line 19
    .line 20
    new-instance v0, Lcom/mycompany/app/dialog/DialogViewSrc$25;

    .line 21
    .line 22
    invoke-direct {v0, p0}, Lcom/mycompany/app/dialog/DialogViewSrc$25;-><init>(Lcom/mycompany/app/dialog/DialogViewSrc;)V

    .line 23
    .line 24
    .line 25
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogViewSrc;->q0:Ljava/lang/Runnable;

    .line 26
    .line 27
    invoke-virtual {p0}, Lcom/mycompany/app/view/MyDialogNormal;->j()V

    .line 28
    .line 29
    .line 30
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogViewSrc;->G:Lcom/mycompany/app/main/MainActivity;

    .line 31
    .line 32
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogViewSrc;->H:Landroid/content/Context;

    .line 37
    .line 38
    iput-object p2, p0, Lcom/mycompany/app/dialog/DialogViewSrc;->I:Lcom/mycompany/app/web/WebNestView;

    .line 39
    .line 40
    iput-object p3, p0, Lcom/mycompany/app/dialog/DialogViewSrc;->c0:Ljava/lang/String;

    .line 41
    .line 42
    iput-object p4, p0, Lcom/mycompany/app/dialog/DialogViewSrc;->e0:Ljava/lang/String;

    .line 43
    .line 44
    sget-boolean p1, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 45
    .line 46
    iput-boolean p1, p0, Lcom/mycompany/app/dialog/DialogViewSrc;->j0:Z

    .line 47
    .line 48
    iget-object p1, p0, Lcom/mycompany/app/view/MyDialogNormal;->i:Landroid/os/Handler;

    .line 49
    .line 50
    if-nez p1, :cond_1

    .line 51
    .line 52
    return-void

    .line 53
    :cond_1
    new-instance p2, Lcom/mycompany/app/dialog/DialogViewSrc$1;

    .line 54
    .line 55
    invoke-direct {p2, p0}, Lcom/mycompany/app/dialog/DialogViewSrc$1;-><init>(Lcom/mycompany/app/dialog/DialogViewSrc;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 59
    .line 60
    .line 61
    return-void
.end method


# virtual methods
.method public final dismiss()V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/mycompany/app/view/MyDialogNormal;->c:Z

    .line 3
    .line 4
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogViewSrc;->H:Landroid/content/Context;

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogViewSrc;->h0:Lcom/mycompany/app/dialog/DialogSaveSource;

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    if-eqz v1, :cond_1

    .line 13
    .line 14
    invoke-virtual {v1}, Lcom/mycompany/app/dialog/DialogSaveSource;->dismiss()V

    .line 15
    .line 16
    .line 17
    iput-object v2, p0, Lcom/mycompany/app/dialog/DialogViewSrc;->h0:Lcom/mycompany/app/dialog/DialogSaveSource;

    .line 18
    .line 19
    :cond_1
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogViewSrc;->i0:Lcom/mycompany/app/dialog/DialogSeekBright;

    .line 20
    .line 21
    if-eqz v1, :cond_2

    .line 22
    .line 23
    invoke-virtual {v1}, Lcom/mycompany/app/dialog/DialogSeekBright;->dismiss()V

    .line 24
    .line 25
    .line 26
    iput-object v2, p0, Lcom/mycompany/app/dialog/DialogViewSrc;->i0:Lcom/mycompany/app/dialog/DialogSeekBright;

    .line 27
    .line 28
    :cond_2
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogViewSrc;->a0:Lcom/mycompany/app/view/MyFindView;

    .line 29
    .line 30
    if-eqz v1, :cond_3

    .line 31
    .line 32
    invoke-virtual {v1}, Lcom/mycompany/app/view/MyFindView;->c()V

    .line 33
    .line 34
    .line 35
    iput-object v2, p0, Lcom/mycompany/app/dialog/DialogViewSrc;->a0:Lcom/mycompany/app/view/MyFindView;

    .line 36
    .line 37
    :cond_3
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogViewSrc;->K:Lcom/mycompany/app/view/MyButtonImage;

    .line 38
    .line 39
    if-eqz v1, :cond_4

    .line 40
    .line 41
    invoke-virtual {v1}, Lcom/mycompany/app/view/MyButtonImage;->j()V

    .line 42
    .line 43
    .line 44
    iput-object v2, p0, Lcom/mycompany/app/dialog/DialogViewSrc;->K:Lcom/mycompany/app/view/MyButtonImage;

    .line 45
    .line 46
    :cond_4
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogViewSrc;->L:Lcom/mycompany/app/view/MyButtonImage;

    .line 47
    .line 48
    if-eqz v1, :cond_5

    .line 49
    .line 50
    invoke-virtual {v1}, Lcom/mycompany/app/view/MyButtonImage;->j()V

    .line 51
    .line 52
    .line 53
    iput-object v2, p0, Lcom/mycompany/app/dialog/DialogViewSrc;->L:Lcom/mycompany/app/view/MyButtonImage;

    .line 54
    .line 55
    :cond_5
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogViewSrc;->O:Lcom/mycompany/app/web/WebSrcView;

    .line 56
    .line 57
    if-eqz v1, :cond_7

    .line 58
    .line 59
    iget-boolean v3, p0, Lcom/mycompany/app/dialog/DialogViewSrc;->P:Z

    .line 60
    .line 61
    if-eqz v3, :cond_6

    .line 62
    .line 63
    iput-boolean v0, p0, Lcom/mycompany/app/dialog/DialogViewSrc;->P:Z

    .line 64
    .line 65
    invoke-virtual {v1}, Landroid/webkit/WebView;->stopLoading()V

    .line 66
    .line 67
    .line 68
    :cond_6
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogViewSrc;->O:Lcom/mycompany/app/web/WebSrcView;

    .line 69
    .line 70
    invoke-static {v1}, Lcom/mycompany/app/main/MainUtil;->P6(Landroid/webkit/WebView;)V

    .line 71
    .line 72
    .line 73
    iput-object v2, p0, Lcom/mycompany/app/dialog/DialogViewSrc;->O:Lcom/mycompany/app/web/WebSrcView;

    .line 74
    .line 75
    :cond_7
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogViewSrc;->Q:Lcom/mycompany/app/view/MyScrollBar;

    .line 76
    .line 77
    if-eqz v1, :cond_8

    .line 78
    .line 79
    invoke-virtual {v1}, Lcom/mycompany/app/view/MyScrollBar;->k()V

    .line 80
    .line 81
    .line 82
    iput-object v2, p0, Lcom/mycompany/app/dialog/DialogViewSrc;->Q:Lcom/mycompany/app/view/MyScrollBar;

    .line 83
    .line 84
    :cond_8
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogViewSrc;->T:Lcom/mycompany/app/view/MyProgressBar;

    .line 85
    .line 86
    if-eqz v1, :cond_9

    .line 87
    .line 88
    invoke-virtual {v1}, Lcom/mycompany/app/view/MyProgressBar;->f()V

    .line 89
    .line 90
    .line 91
    iput-object v2, p0, Lcom/mycompany/app/dialog/DialogViewSrc;->T:Lcom/mycompany/app/view/MyProgressBar;

    .line 92
    .line 93
    :cond_9
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogViewSrc;->U:Lcom/mycompany/app/view/MyFadeFrame;

    .line 94
    .line 95
    if-eqz v1, :cond_a

    .line 96
    .line 97
    invoke-virtual {v1}, Lcom/mycompany/app/view/MyFadeFrame;->f()V

    .line 98
    .line 99
    .line 100
    iput-object v2, p0, Lcom/mycompany/app/dialog/DialogViewSrc;->U:Lcom/mycompany/app/view/MyFadeFrame;

    .line 101
    .line 102
    :cond_a
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogViewSrc;->W:Lcom/mycompany/app/view/MyButtonImage;

    .line 103
    .line 104
    if-eqz v1, :cond_b

    .line 105
    .line 106
    invoke-virtual {v1}, Lcom/mycompany/app/view/MyButtonImage;->j()V

    .line 107
    .line 108
    .line 109
    iput-object v2, p0, Lcom/mycompany/app/dialog/DialogViewSrc;->W:Lcom/mycompany/app/view/MyButtonImage;

    .line 110
    .line 111
    :cond_b
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogViewSrc;->X:Lcom/mycompany/app/view/MyButtonImage;

    .line 112
    .line 113
    if-eqz v1, :cond_c

    .line 114
    .line 115
    invoke-virtual {v1}, Lcom/mycompany/app/view/MyButtonImage;->j()V

    .line 116
    .line 117
    .line 118
    iput-object v2, p0, Lcom/mycompany/app/dialog/DialogViewSrc;->X:Lcom/mycompany/app/view/MyButtonImage;

    .line 119
    .line 120
    :cond_c
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogViewSrc;->Y:Lcom/mycompany/app/view/MyCoverView;

    .line 121
    .line 122
    if-eqz v1, :cond_d

    .line 123
    .line 124
    invoke-virtual {v1}, Lcom/mycompany/app/view/MyCoverView;->i()V

    .line 125
    .line 126
    .line 127
    iput-object v2, p0, Lcom/mycompany/app/dialog/DialogViewSrc;->Y:Lcom/mycompany/app/view/MyCoverView;

    .line 128
    .line 129
    :cond_d
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogViewSrc;->Z:Lcom/mycompany/app/view/MyFadeFrame;

    .line 130
    .line 131
    if-eqz v1, :cond_e

    .line 132
    .line 133
    invoke-virtual {v1}, Lcom/mycompany/app/view/MyFadeFrame;->f()V

    .line 134
    .line 135
    .line 136
    iput-object v2, p0, Lcom/mycompany/app/dialog/DialogViewSrc;->Z:Lcom/mycompany/app/view/MyFadeFrame;

    .line 137
    .line 138
    :cond_e
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogViewSrc;->G:Lcom/mycompany/app/main/MainActivity;

    .line 139
    .line 140
    if-eqz v1, :cond_f

    .line 141
    .line 142
    invoke-virtual {v1, v2, v0}, Lcom/mycompany/app/main/MainActivity;->n0(Landroid/view/View;Z)V

    .line 143
    .line 144
    .line 145
    iput-object v2, p0, Lcom/mycompany/app/dialog/DialogViewSrc;->G:Lcom/mycompany/app/main/MainActivity;

    .line 146
    .line 147
    :cond_f
    iput-object v2, p0, Lcom/mycompany/app/dialog/DialogViewSrc;->H:Landroid/content/Context;

    .line 148
    .line 149
    iput-object v2, p0, Lcom/mycompany/app/dialog/DialogViewSrc;->I:Lcom/mycompany/app/web/WebNestView;

    .line 150
    .line 151
    iput-object v2, p0, Lcom/mycompany/app/dialog/DialogViewSrc;->J:Lcom/mycompany/app/view/MyMainRelative;

    .line 152
    .line 153
    iput-object v2, p0, Lcom/mycompany/app/dialog/DialogViewSrc;->M:Landroid/widget/RelativeLayout;

    .line 154
    .line 155
    iput-object v2, p0, Lcom/mycompany/app/dialog/DialogViewSrc;->N:Landroid/widget/FrameLayout;

    .line 156
    .line 157
    iput-object v2, p0, Lcom/mycompany/app/dialog/DialogViewSrc;->R:Landroid/widget/FrameLayout;

    .line 158
    .line 159
    iput-object v2, p0, Lcom/mycompany/app/dialog/DialogViewSrc;->S:Landroid/view/View;

    .line 160
    .line 161
    iput-object v2, p0, Lcom/mycompany/app/dialog/DialogViewSrc;->V:Landroid/widget/LinearLayout;

    .line 162
    .line 163
    iput-object v2, p0, Lcom/mycompany/app/dialog/DialogViewSrc;->b0:Landroid/view/GestureDetector;

    .line 164
    .line 165
    iput-object v2, p0, Lcom/mycompany/app/dialog/DialogViewSrc;->c0:Ljava/lang/String;

    .line 166
    .line 167
    iput-object v2, p0, Lcom/mycompany/app/dialog/DialogViewSrc;->e0:Ljava/lang/String;

    .line 168
    .line 169
    iput-object v2, p0, Lcom/mycompany/app/dialog/DialogViewSrc;->g0:Ljava/lang/String;

    .line 170
    .line 171
    invoke-super {p0}, Lcom/mycompany/app/dialog/DialogCast;->dismiss()V

    .line 172
    .line 173
    .line 174
    return-void
.end method

.method public final dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    return p1

    .line 5
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x1

    .line 10
    if-eq v0, v1, :cond_1

    .line 11
    .line 12
    const/4 v1, 0x3

    .line 13
    if-ne v0, v1, :cond_3

    .line 14
    .line 15
    :cond_1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogViewSrc;->Q:Lcom/mycompany/app/view/MyScrollBar;

    .line 16
    .line 17
    if-eqz v0, :cond_2

    .line 18
    .line 19
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyFadeView;->e()V

    .line 20
    .line 21
    .line 22
    :cond_2
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogViewSrc;->U:Lcom/mycompany/app/view/MyFadeFrame;

    .line 23
    .line 24
    if-eqz v0, :cond_3

    .line 25
    .line 26
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyFadeFrame;->g()V

    .line 27
    .line 28
    .line 29
    :cond_3
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogViewSrc;->b0:Landroid/view/GestureDetector;

    .line 30
    .line 31
    if-eqz v0, :cond_4

    .line 32
    .line 33
    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 34
    .line 35
    .line 36
    :cond_4
    invoke-super {p0, p1}, Lcom/mycompany/app/dialog/DialogCast;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 37
    .line 38
    .line 39
    move-result p1

    .line 40
    return p1
.end method

.method public final l()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogViewSrc;->a0:Lcom/mycompany/app/view/MyFindView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogViewSrc;->a0:Lcom/mycompany/app/view/MyFindView;

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyFindView;->a()V

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogViewSrc;->O:Lcom/mycompany/app/web/WebSrcView;

    .line 18
    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-eqz v0, :cond_1

    .line 26
    .line 27
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogViewSrc;->O:Lcom/mycompany/app/web/WebSrcView;

    .line 28
    .line 29
    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    .line 30
    .line 31
    .line 32
    return-void

    .line 33
    :cond_1
    invoke-virtual {p0}, Lcom/mycompany/app/dialog/DialogViewSrc;->dismiss()V

    .line 34
    .line 35
    .line 36
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
    invoke-virtual {p0}, Lcom/mycompany/app/dialog/DialogViewSrc;->l()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final r()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogViewSrc;->J:Lcom/mycompany/app/view/MyMainRelative;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto/16 :goto_3

    .line 6
    .line 7
    :cond_0
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    sget-boolean v2, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 12
    .line 13
    const v3, -0x70708

    .line 14
    .line 15
    .line 16
    const/high16 v4, -0x1000000

    .line 17
    .line 18
    if-eqz v2, :cond_1

    .line 19
    .line 20
    move v2, v4

    .line 21
    goto :goto_0

    .line 22
    :cond_1
    move v2, v3

    .line 23
    :goto_0
    invoke-virtual {v0, v1, v2}, Lcom/mycompany/app/view/MyMainRelative;->b(Landroid/view/Window;I)V

    .line 24
    .line 25
    .line 26
    sget-boolean v0, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 27
    .line 28
    const/16 v1, 0x1e

    .line 29
    .line 30
    const v2, -0xdededf

    .line 31
    .line 32
    .line 33
    const/4 v5, -0x1

    .line 34
    if-eqz v0, :cond_3

    .line 35
    .line 36
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 37
    .line 38
    if-lt v0, v1, :cond_2

    .line 39
    .line 40
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    .line 45
    .line 46
    invoke-direct {v1, v4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 50
    .line 51
    .line 52
    :cond_2
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogViewSrc;->M:Landroid/widget/RelativeLayout;

    .line 53
    .line 54
    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 55
    .line 56
    .line 57
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogViewSrc;->N:Landroid/widget/FrameLayout;

    .line 58
    .line 59
    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 60
    .line 61
    .line 62
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogViewSrc;->T:Lcom/mycompany/app/view/MyProgressBar;

    .line 63
    .line 64
    const v1, -0x37000001

    .line 65
    .line 66
    .line 67
    invoke-virtual {v0, v1, v4}, Lcom/mycompany/app/view/MyProgressBar;->g(II)V

    .line 68
    .line 69
    .line 70
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogViewSrc;->Q:Lcom/mycompany/app/view/MyScrollBar;

    .line 71
    .line 72
    const v1, -0xc0c0c1

    .line 73
    .line 74
    .line 75
    invoke-virtual {v0, v1}, Lcom/mycompany/app/view/MyScrollBar;->setPreColor(I)V

    .line 76
    .line 77
    .line 78
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogViewSrc;->V:Landroid/widget/LinearLayout;

    .line 79
    .line 80
    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 81
    .line 82
    .line 83
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogViewSrc;->K:Lcom/mycompany/app/view/MyButtonImage;

    .line 84
    .line 85
    sget v3, Lnet/kaki87/soul2/testing/R$drawable;->outline_chevron_left_dark_24:I

    .line 86
    .line 87
    invoke-virtual {v0, v3}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 88
    .line 89
    .line 90
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogViewSrc;->L:Lcom/mycompany/app/view/MyButtonImage;

    .line 91
    .line 92
    sget v3, Lnet/kaki87/soul2/testing/R$drawable;->outline_download_dark_20:I

    .line 93
    .line 94
    invoke-virtual {v0, v3}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 95
    .line 96
    .line 97
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogViewSrc;->W:Lcom/mycompany/app/view/MyButtonImage;

    .line 98
    .line 99
    sget v3, Lnet/kaki87/soul2/testing/R$drawable;->outline_brightness_6_dark_24:I

    .line 100
    .line 101
    invoke-virtual {v0, v3}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 102
    .line 103
    .line 104
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogViewSrc;->X:Lcom/mycompany/app/view/MyButtonImage;

    .line 105
    .line 106
    sget v3, Lnet/kaki87/soul2/testing/R$drawable;->outline_search_dark_24:I

    .line 107
    .line 108
    invoke-virtual {v0, v3}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 109
    .line 110
    .line 111
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogViewSrc;->K:Lcom/mycompany/app/view/MyButtonImage;

    .line 112
    .line 113
    invoke-virtual {v0, v4, v1}, Lcom/mycompany/app/view/MyButtonImage;->k(II)V

    .line 114
    .line 115
    .line 116
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogViewSrc;->L:Lcom/mycompany/app/view/MyButtonImage;

    .line 117
    .line 118
    invoke-virtual {v0, v4, v1}, Lcom/mycompany/app/view/MyButtonImage;->k(II)V

    .line 119
    .line 120
    .line 121
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogViewSrc;->W:Lcom/mycompany/app/view/MyButtonImage;

    .line 122
    .line 123
    const v3, -0xafafb0

    .line 124
    .line 125
    .line 126
    invoke-virtual {v0, v3}, Lcom/mycompany/app/view/MyButtonImage;->setBgNorColor(I)V

    .line 127
    .line 128
    .line 129
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogViewSrc;->X:Lcom/mycompany/app/view/MyButtonImage;

    .line 130
    .line 131
    invoke-virtual {v0, v3}, Lcom/mycompany/app/view/MyButtonImage;->setBgNorColor(I)V

    .line 132
    .line 133
    .line 134
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogViewSrc;->W:Lcom/mycompany/app/view/MyButtonImage;

    .line 135
    .line 136
    invoke-virtual {v0, v1}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 137
    .line 138
    .line 139
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogViewSrc;->X:Lcom/mycompany/app/view/MyButtonImage;

    .line 140
    .line 141
    invoke-virtual {v0, v1}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 142
    .line 143
    .line 144
    goto :goto_1

    .line 145
    :cond_3
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 146
    .line 147
    if-lt v0, v1, :cond_4

    .line 148
    .line 149
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 150
    .line 151
    .line 152
    move-result-object v0

    .line 153
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    .line 154
    .line 155
    invoke-direct {v1, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 156
    .line 157
    .line 158
    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 159
    .line 160
    .line 161
    :cond_4
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogViewSrc;->M:Landroid/widget/RelativeLayout;

    .line 162
    .line 163
    invoke-virtual {v0, v5}, Landroid/view/View;->setBackgroundColor(I)V

    .line 164
    .line 165
    .line 166
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogViewSrc;->N:Landroid/widget/FrameLayout;

    .line 167
    .line 168
    invoke-virtual {v0, v5}, Landroid/view/View;->setBackgroundColor(I)V

    .line 169
    .line 170
    .line 171
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogViewSrc;->T:Lcom/mycompany/app/view/MyProgressBar;

    .line 172
    .line 173
    const v1, -0xc6b655

    .line 174
    .line 175
    .line 176
    invoke-virtual {v0, v1, v3}, Lcom/mycompany/app/view/MyProgressBar;->g(II)V

    .line 177
    .line 178
    .line 179
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogViewSrc;->Q:Lcom/mycompany/app/view/MyScrollBar;

    .line 180
    .line 181
    const v1, -0x252526

    .line 182
    .line 183
    .line 184
    invoke-virtual {v0, v1}, Lcom/mycompany/app/view/MyScrollBar;->setPreColor(I)V

    .line 185
    .line 186
    .line 187
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogViewSrc;->V:Landroid/widget/LinearLayout;

    .line 188
    .line 189
    invoke-virtual {v0, v5}, Landroid/view/View;->setBackgroundColor(I)V

    .line 190
    .line 191
    .line 192
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogViewSrc;->K:Lcom/mycompany/app/view/MyButtonImage;

    .line 193
    .line 194
    sget v1, Lnet/kaki87/soul2/testing/R$drawable;->outline_chevron_left_black_24:I

    .line 195
    .line 196
    invoke-virtual {v0, v1}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 197
    .line 198
    .line 199
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogViewSrc;->L:Lcom/mycompany/app/view/MyButtonImage;

    .line 200
    .line 201
    sget v1, Lnet/kaki87/soul2/testing/R$drawable;->outline_download_black_20:I

    .line 202
    .line 203
    invoke-virtual {v0, v1}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 204
    .line 205
    .line 206
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogViewSrc;->W:Lcom/mycompany/app/view/MyButtonImage;

    .line 207
    .line 208
    sget v1, Lnet/kaki87/soul2/testing/R$drawable;->outline_brightness_6_black_24:I

    .line 209
    .line 210
    invoke-virtual {v0, v1}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 211
    .line 212
    .line 213
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogViewSrc;->X:Lcom/mycompany/app/view/MyButtonImage;

    .line 214
    .line 215
    sget v1, Lnet/kaki87/soul2/testing/R$drawable;->outline_search_black_24:I

    .line 216
    .line 217
    invoke-virtual {v0, v1}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 218
    .line 219
    .line 220
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogViewSrc;->K:Lcom/mycompany/app/view/MyButtonImage;

    .line 221
    .line 222
    const v1, -0x1f1f20

    .line 223
    .line 224
    .line 225
    invoke-virtual {v0, v5, v1}, Lcom/mycompany/app/view/MyButtonImage;->k(II)V

    .line 226
    .line 227
    .line 228
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogViewSrc;->L:Lcom/mycompany/app/view/MyButtonImage;

    .line 229
    .line 230
    invoke-virtual {v0, v5, v1}, Lcom/mycompany/app/view/MyButtonImage;->k(II)V

    .line 231
    .line 232
    .line 233
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogViewSrc;->W:Lcom/mycompany/app/view/MyButtonImage;

    .line 234
    .line 235
    invoke-virtual {v0, v3}, Lcom/mycompany/app/view/MyButtonImage;->setBgNorColor(I)V

    .line 236
    .line 237
    .line 238
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogViewSrc;->X:Lcom/mycompany/app/view/MyButtonImage;

    .line 239
    .line 240
    invoke-virtual {v0, v3}, Lcom/mycompany/app/view/MyButtonImage;->setBgNorColor(I)V

    .line 241
    .line 242
    .line 243
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogViewSrc;->W:Lcom/mycompany/app/view/MyButtonImage;

    .line 244
    .line 245
    invoke-virtual {v0, v1}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 246
    .line 247
    .line 248
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogViewSrc;->X:Lcom/mycompany/app/view/MyButtonImage;

    .line 249
    .line 250
    invoke-virtual {v0, v1}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 251
    .line 252
    .line 253
    :goto_1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogViewSrc;->O:Lcom/mycompany/app/web/WebSrcView;

    .line 254
    .line 255
    if-eqz v0, :cond_6

    .line 256
    .line 257
    sget-boolean v1, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 258
    .line 259
    if-eqz v1, :cond_5

    .line 260
    .line 261
    goto :goto_2

    .line 262
    :cond_5
    move v2, v5

    .line 263
    :goto_2
    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 264
    .line 265
    .line 266
    :cond_6
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogViewSrc;->a0:Lcom/mycompany/app/view/MyFindView;

    .line 267
    .line 268
    if-eqz v0, :cond_7

    .line 269
    .line 270
    const/4 v1, 0x0

    .line 271
    invoke-virtual {v0, v1, v1, v1}, Lcom/mycompany/app/view/MyFindView;->e(IIZ)V

    .line 272
    .line 273
    .line 274
    :cond_7
    :goto_3
    return-void
.end method

.method public final s(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogViewSrc;->O:Lcom/mycompany/app/web/WebSrcView;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const/4 v1, 0x0

    .line 7
    if-eqz p1, :cond_1

    .line 8
    .line 9
    const-string p1, "if(document.head){if(!document.getElementById(\'sb_dark_style\')){var ele=document.createElement(\'style\');ele.id=\'sb_dark_style\';ele.innerText=\'body{-webkit-filter:invert(1)hue-rotate(180deg);}\';document.head.appendChild(ele);}}"

    .line 10
    .line 11
    invoke-static {v0, p1, v1}, Lcom/mycompany/app/main/MainUtil;->J(Landroid/webkit/WebView;Ljava/lang/String;Z)V

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :cond_1
    const-string p1, "var edk=document.getElementById(\'sb_dark_style\');if(edk){document.head.removeChild(edk);}"

    .line 16
    .line 17
    invoke-static {v0, p1, v1}, Lcom/mycompany/app/main/MainUtil;->J(Landroid/webkit/WebView;Ljava/lang/String;Z)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public final t()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/mycompany/app/dialog/DialogViewSrc;->f0:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lcom/mycompany/app/dialog/DialogViewSrc;->f0:Z

    .line 8
    .line 9
    sget-boolean v0, Lcom/mycompany/app/pref/PrefRead;->l:Z

    .line 10
    .line 11
    if-eqz v0, :cond_3

    .line 12
    .line 13
    if-eqz v0, :cond_3

    .line 14
    .line 15
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogViewSrc;->Z:Lcom/mycompany/app/view/MyFadeFrame;

    .line 16
    .line 17
    if-nez v0, :cond_3

    .line 18
    .line 19
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogViewSrc;->J:Lcom/mycompany/app/view/MyMainRelative;

    .line 20
    .line 21
    if-nez v0, :cond_1

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_1
    iget-object v0, p0, Lcom/mycompany/app/view/MyDialogNormal;->i:Landroid/os/Handler;

    .line 25
    .line 26
    if-nez v0, :cond_2

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_2
    new-instance v1, Lcom/mycompany/app/dialog/DialogViewSrc$16;

    .line 30
    .line 31
    invoke-direct {v1, p0}, Lcom/mycompany/app/dialog/DialogViewSrc$16;-><init>(Lcom/mycompany/app/dialog/DialogViewSrc;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 35
    .line 36
    .line 37
    :cond_3
    :goto_0
    return-void
.end method

.method public final u(I)V
    .locals 3

    .line 1
    iput p1, p0, Lcom/mycompany/app/dialog/DialogViewSrc;->n0:I

    .line 2
    .line 3
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogViewSrc;->T:Lcom/mycompany/app/view/MyProgressBar;

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
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogViewSrc;->T:Lcom/mycompany/app/view/MyProgressBar;

    .line 23
    .line 24
    const/4 v0, 0x1

    .line 25
    invoke-virtual {p1, v0}, Lcom/mycompany/app/view/MyProgressBar;->setSkipDraw(Z)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0}, Lcom/mycompany/app/dialog/DialogViewSrc;->t()V

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    :cond_1
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogViewSrc;->T:Lcom/mycompany/app/view/MyProgressBar;

    .line 33
    .line 34
    iget-boolean v2, v1, Lcom/mycompany/app/view/MyProgressBar;->B:Z

    .line 35
    .line 36
    if-eqz v2, :cond_2

    .line 37
    .line 38
    const/4 v0, 0x0

    .line 39
    invoke-virtual {v1, v0}, Lcom/mycompany/app/view/MyProgressBar;->setProgress(F)V

    .line 40
    .line 41
    .line 42
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogViewSrc;->T:Lcom/mycompany/app/view/MyProgressBar;

    .line 43
    .line 44
    const/4 v1, 0x0

    .line 45
    invoke-virtual {v0, v1}, Lcom/mycompany/app/view/MyProgressBar;->setSkipDraw(Z)V

    .line 46
    .line 47
    .line 48
    const/16 v0, 0x32

    .line 49
    .line 50
    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    .line 51
    .line 52
    .line 53
    move-result p1

    .line 54
    invoke-virtual {p0, p1}, Lcom/mycompany/app/dialog/DialogViewSrc;->u(I)V

    .line 55
    .line 56
    .line 57
    return-void

    .line 58
    :cond_2
    if-lt v0, p1, :cond_3

    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_3
    add-int/lit8 v0, v0, 0x3

    .line 62
    .line 63
    int-to-float p1, v0

    .line 64
    invoke-virtual {v1, p1}, Lcom/mycompany/app/view/MyProgressBar;->setProgress(F)V

    .line 65
    .line 66
    .line 67
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogViewSrc;->o0:Ljava/lang/Runnable;

    .line 68
    .line 69
    if-eqz p1, :cond_4

    .line 70
    .line 71
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogViewSrc;->T:Lcom/mycompany/app/view/MyProgressBar;

    .line 72
    .line 73
    invoke-virtual {v0, p1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 74
    .line 75
    .line 76
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogViewSrc;->T:Lcom/mycompany/app/view/MyProgressBar;

    .line 77
    .line 78
    invoke-virtual {v0, p1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 79
    .line 80
    .line 81
    :cond_4
    :goto_0
    return-void
.end method

.method public final v()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogViewSrc;->G:Lcom/mycompany/app/main/MainActivity;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogViewSrc;->h0:Lcom/mycompany/app/dialog/DialogSaveSource;

    .line 7
    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_1
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogViewSrc;->i0:Lcom/mycompany/app/dialog/DialogSeekBright;

    .line 12
    .line 13
    if-eqz v1, :cond_2

    .line 14
    .line 15
    :goto_0
    return-void

    .line 16
    :cond_2
    if-eqz v0, :cond_3

    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogSaveSource;->dismiss()V

    .line 19
    .line 20
    .line 21
    const/4 v0, 0x0

    .line 22
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogViewSrc;->h0:Lcom/mycompany/app/dialog/DialogSaveSource;

    .line 23
    .line 24
    :cond_3
    new-instance v1, Lcom/mycompany/app/dialog/DialogSaveSource;

    .line 25
    .line 26
    iget-object v2, p0, Lcom/mycompany/app/dialog/DialogViewSrc;->G:Lcom/mycompany/app/main/MainActivity;

    .line 27
    .line 28
    iget-object v3, p0, Lcom/mycompany/app/dialog/DialogViewSrc;->e0:Ljava/lang/String;

    .line 29
    .line 30
    iget-object v4, p0, Lcom/mycompany/app/dialog/DialogViewSrc;->g0:Ljava/lang/String;

    .line 31
    .line 32
    new-instance v6, Lcom/mycompany/app/dialog/DialogViewSrc$26;

    .line 33
    .line 34
    invoke-direct {v6, p0}, Lcom/mycompany/app/dialog/DialogViewSrc$26;-><init>(Lcom/mycompany/app/dialog/DialogViewSrc;)V

    .line 35
    .line 36
    .line 37
    const/4 v5, 0x0

    .line 38
    invoke-direct/range {v1 .. v6}, Lcom/mycompany/app/dialog/DialogSaveSource;-><init>(Lcom/mycompany/app/main/MainActivity;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/mycompany/app/dialog/DialogDownPage$DownPageListener;)V

    .line 39
    .line 40
    .line 41
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogViewSrc;->h0:Lcom/mycompany/app/dialog/DialogSaveSource;

    .line 42
    .line 43
    new-instance v0, Lcom/mycompany/app/dialog/DialogViewSrc$27;

    .line 44
    .line 45
    invoke-direct {v0, p0}, Lcom/mycompany/app/dialog/DialogViewSrc$27;-><init>(Lcom/mycompany/app/dialog/DialogViewSrc;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v1, v0}, Lcom/mycompany/app/view/MyDialogBottom;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 49
    .line 50
    .line 51
    return-void
.end method
