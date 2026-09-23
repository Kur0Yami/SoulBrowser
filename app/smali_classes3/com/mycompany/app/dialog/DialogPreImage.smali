.class public Lcom/mycompany/app/dialog/DialogPreImage;
.super Lcom/mycompany/app/view/MyDialogBottom;
.source "SourceFile"


# static fields
.field public static final synthetic w0:I


# instance fields
.field public a0:Lcom/mycompany/app/web/WebViewActivity;

.field public b0:Landroid/content/Context;

.field public c0:Lcom/mycompany/app/dialog/DialogPreview$PreviewListener;

.field public d0:Ljava/lang/String;

.field public e0:Ljava/lang/String;

.field public f0:Landroid/widget/FrameLayout;

.field public g0:Lcom/mycompany/app/view/MyDialogRelative;

.field public h0:Landroid/widget/FrameLayout;

.field public i0:Landroid/widget/ImageView;

.field public j0:Lcom/mycompany/app/view/MyCoverView;

.field public k0:Lcom/mycompany/app/view/MyFadeFrame;

.field public l0:Lcom/mycompany/app/view/MyButtonImage;

.field public m0:Lcom/mycompany/app/view/MyButtonImage;

.field public n0:Lcom/mycompany/app/view/MyButtonImage;

.field public o0:Lcom/mycompany/app/view/MyButtonImage;

.field public p0:Lcom/mycompany/app/view/MyButtonImage;

.field public q0:Lcom/mycompany/app/view/MyFadeFrame;

.field public r0:Lcom/mycompany/app/zoom/ZoomImageAttacher;

.field public s0:Lcom/mycompany/app/view/GlideRequests;

.field public t0:Z

.field public final u0:Lcom/bumptech/glide/request/RequestListener;

.field public final v0:Lcom/bumptech/glide/request/RequestListener;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/web/WebViewActivity;Ljava/lang/String;Ljava/lang/String;Lcom/mycompany/app/dialog/DialogPreview$PreviewListener;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/mycompany/app/view/MyDialogBottom;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/mycompany/app/dialog/DialogPreImage$17;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Lcom/mycompany/app/dialog/DialogPreImage$17;-><init>(Lcom/mycompany/app/dialog/DialogPreImage;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogPreImage;->u0:Lcom/bumptech/glide/request/RequestListener;

    .line 10
    .line 11
    new-instance v0, Lcom/mycompany/app/dialog/DialogPreImage$19;

    .line 12
    .line 13
    invoke-direct {v0, p0}, Lcom/mycompany/app/dialog/DialogPreImage$19;-><init>(Lcom/mycompany/app/dialog/DialogPreImage;)V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogPreImage;->v0:Lcom/bumptech/glide/request/RequestListener;

    .line 17
    .line 18
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogPreImage;->a0:Lcom/mycompany/app/web/WebViewActivity;

    .line 19
    .line 20
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogPreImage;->b0:Landroid/content/Context;

    .line 25
    .line 26
    iput-object p2, p0, Lcom/mycompany/app/dialog/DialogPreImage;->d0:Ljava/lang/String;

    .line 27
    .line 28
    iput-object p3, p0, Lcom/mycompany/app/dialog/DialogPreImage;->e0:Ljava/lang/String;

    .line 29
    .line 30
    iput-object p4, p0, Lcom/mycompany/app/dialog/DialogPreImage;->c0:Lcom/mycompany/app/dialog/DialogPreview$PreviewListener;

    .line 31
    .line 32
    iget-object p1, p0, Lcom/mycompany/app/view/MyDialogBottom;->i:Landroid/os/Handler;

    .line 33
    .line 34
    if-nez p1, :cond_0

    .line 35
    .line 36
    return-void

    .line 37
    :cond_0
    new-instance p2, Lcom/mycompany/app/dialog/DialogPreImage$1;

    .line 38
    .line 39
    invoke-direct {p2, p0}, Lcom/mycompany/app/dialog/DialogPreImage$1;-><init>(Lcom/mycompany/app/dialog/DialogPreImage;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 43
    .line 44
    .line 45
    return-void
.end method

.method public static B(Lcom/mycompany/app/dialog/DialogPreImage;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogPreImage;->i0:Landroid/widget/ImageView;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogPreImage;->d0:Ljava/lang/String;

    .line 7
    .line 8
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/mycompany/app/dialog/DialogPreImage;->D()V

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :cond_1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogPreImage;->k0:Lcom/mycompany/app/view/MyFadeFrame;

    .line 19
    .line 20
    if-eqz v0, :cond_2

    .line 21
    .line 22
    const/4 v1, 0x0

    .line 23
    invoke-virtual {v0, v1}, Lcom/mycompany/app/view/MyFadeFrame;->h(Z)V

    .line 24
    .line 25
    .line 26
    :cond_2
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogPreImage;->j0:Lcom/mycompany/app/view/MyCoverView;

    .line 27
    .line 28
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyCoverView;->l()V

    .line 29
    .line 30
    .line 31
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogPreImage;->d0:Ljava/lang/String;

    .line 32
    .line 33
    const/4 v1, 0x0

    .line 34
    const/4 v2, 0x1

    .line 35
    invoke-static {v0, v1, v1, v2}, Lcom/mycompany/app/main/MainUtil;->V3(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-static {v0}, Lcom/mycompany/app/compress/Compress;->I(Ljava/lang/String;)Z

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    if-eqz v0, :cond_3

    .line 44
    .line 45
    new-instance v0, Lcom/mycompany/app/dialog/DialogPreImage$18;

    .line 46
    .line 47
    invoke-direct {v0, p0}, Lcom/mycompany/app/dialog/DialogPreImage$18;-><init>(Lcom/mycompany/app/dialog/DialogPreImage;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {p0, v0}, Lcom/mycompany/app/view/MyDialogBottom;->s(Ljava/lang/Runnable;)V

    .line 51
    .line 52
    .line 53
    return-void

    .line 54
    :cond_3
    new-instance v0, Lcom/mycompany/app/dialog/DialogPreImage$16;

    .line 55
    .line 56
    invoke-direct {v0, p0}, Lcom/mycompany/app/dialog/DialogPreImage$16;-><init>(Lcom/mycompany/app/dialog/DialogPreImage;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {p0, v0}, Lcom/mycompany/app/view/MyDialogBottom;->s(Ljava/lang/Runnable;)V

    .line 60
    .line 61
    .line 62
    return-void
.end method


# virtual methods
.method public final C(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogPreImage;->h0:Landroid/widget/FrameLayout;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    if-eqz p1, :cond_1

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/mycompany/app/view/MyDialogBottom;->q()Z

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    :cond_1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogPreImage;->h0:Landroid/widget/FrameLayout;

    .line 13
    .line 14
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    if-eqz p1, :cond_2

    .line 19
    .line 20
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogPreImage;->b0:Landroid/content/Context;

    .line 21
    .line 22
    const/high16 v1, 0x438c0000    # 280.0f

    .line 23
    .line 24
    invoke-static {p1, v1}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    float-to-int p1, p1

    .line 29
    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 30
    .line 31
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogPreImage;->r0:Lcom/mycompany/app/zoom/ZoomImageAttacher;

    .line 32
    .line 33
    if-eqz p1, :cond_3

    .line 34
    .line 35
    invoke-virtual {p1}, Lcom/mycompany/app/zoom/ZoomImageAttacher;->u()V

    .line 36
    .line 37
    .line 38
    return-void

    .line 39
    :cond_2
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogPreImage;->b0:Landroid/content/Context;

    .line 40
    .line 41
    const/high16 v1, 0x43a00000    # 320.0f

    .line 42
    .line 43
    invoke-static {p1, v1}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 44
    .line 45
    .line 46
    move-result p1

    .line 47
    float-to-int p1, p1

    .line 48
    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 49
    .line 50
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogPreImage;->r0:Lcom/mycompany/app/zoom/ZoomImageAttacher;

    .line 51
    .line 52
    if-eqz p1, :cond_3

    .line 53
    .line 54
    invoke-virtual {p1}, Lcom/mycompany/app/zoom/ZoomImageAttacher;->u()V

    .line 55
    .line 56
    .line 57
    :cond_3
    :goto_0
    return-void
.end method

.method public final D()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogPreImage;->i0:Landroid/widget/ImageView;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogPreImage;->i0:Landroid/widget/ImageView;

    .line 12
    .line 13
    sget v1, Lnet/kaki87/soul2/testing/R$drawable;->outline_error_dark_web_48:I

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogPreImage;->i0:Landroid/widget/ImageView;

    .line 19
    .line 20
    new-instance v1, Lcom/mycompany/app/dialog/DialogPreImage$21;

    .line 21
    .line 22
    invoke-direct {v1, p0}, Lcom/mycompany/app/dialog/DialogPreImage$21;-><init>(Lcom/mycompany/app/dialog/DialogPreImage;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 26
    .line 27
    .line 28
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
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogPreImage;->b0:Landroid/content/Context;

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogPreImage;->s0:Lcom/mycompany/app/view/GlideRequests;

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    if-eqz v0, :cond_2

    .line 13
    .line 14
    iget-object v2, p0, Lcom/mycompany/app/dialog/DialogPreImage;->i0:Landroid/widget/ImageView;

    .line 15
    .line 16
    if-eqz v2, :cond_1

    .line 17
    .line 18
    invoke-virtual {v0, v2}, Lcom/bumptech/glide/RequestManager;->o(Landroid/view/View;)V

    .line 19
    .line 20
    .line 21
    :cond_1
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogPreImage;->s0:Lcom/mycompany/app/view/GlideRequests;

    .line 22
    .line 23
    :cond_2
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogPreImage;->g0:Lcom/mycompany/app/view/MyDialogRelative;

    .line 24
    .line 25
    if-eqz v0, :cond_3

    .line 26
    .line 27
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyDialogRelative;->c()V

    .line 28
    .line 29
    .line 30
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogPreImage;->g0:Lcom/mycompany/app/view/MyDialogRelative;

    .line 31
    .line 32
    :cond_3
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogPreImage;->j0:Lcom/mycompany/app/view/MyCoverView;

    .line 33
    .line 34
    if-eqz v0, :cond_4

    .line 35
    .line 36
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyCoverView;->i()V

    .line 37
    .line 38
    .line 39
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogPreImage;->j0:Lcom/mycompany/app/view/MyCoverView;

    .line 40
    .line 41
    :cond_4
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogPreImage;->k0:Lcom/mycompany/app/view/MyFadeFrame;

    .line 42
    .line 43
    if-eqz v0, :cond_5

    .line 44
    .line 45
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyFadeFrame;->f()V

    .line 46
    .line 47
    .line 48
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogPreImage;->k0:Lcom/mycompany/app/view/MyFadeFrame;

    .line 49
    .line 50
    :cond_5
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogPreImage;->l0:Lcom/mycompany/app/view/MyButtonImage;

    .line 51
    .line 52
    if-eqz v0, :cond_6

    .line 53
    .line 54
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyButtonImage;->j()V

    .line 55
    .line 56
    .line 57
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogPreImage;->l0:Lcom/mycompany/app/view/MyButtonImage;

    .line 58
    .line 59
    :cond_6
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogPreImage;->m0:Lcom/mycompany/app/view/MyButtonImage;

    .line 60
    .line 61
    if-eqz v0, :cond_7

    .line 62
    .line 63
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyButtonImage;->j()V

    .line 64
    .line 65
    .line 66
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogPreImage;->m0:Lcom/mycompany/app/view/MyButtonImage;

    .line 67
    .line 68
    :cond_7
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogPreImage;->n0:Lcom/mycompany/app/view/MyButtonImage;

    .line 69
    .line 70
    if-eqz v0, :cond_8

    .line 71
    .line 72
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyButtonImage;->j()V

    .line 73
    .line 74
    .line 75
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogPreImage;->n0:Lcom/mycompany/app/view/MyButtonImage;

    .line 76
    .line 77
    :cond_8
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogPreImage;->o0:Lcom/mycompany/app/view/MyButtonImage;

    .line 78
    .line 79
    if-eqz v0, :cond_9

    .line 80
    .line 81
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyButtonImage;->j()V

    .line 82
    .line 83
    .line 84
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogPreImage;->o0:Lcom/mycompany/app/view/MyButtonImage;

    .line 85
    .line 86
    :cond_9
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogPreImage;->p0:Lcom/mycompany/app/view/MyButtonImage;

    .line 87
    .line 88
    if-eqz v0, :cond_a

    .line 89
    .line 90
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyButtonImage;->j()V

    .line 91
    .line 92
    .line 93
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogPreImage;->p0:Lcom/mycompany/app/view/MyButtonImage;

    .line 94
    .line 95
    :cond_a
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogPreImage;->q0:Lcom/mycompany/app/view/MyFadeFrame;

    .line 96
    .line 97
    if-eqz v0, :cond_b

    .line 98
    .line 99
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyFadeFrame;->f()V

    .line 100
    .line 101
    .line 102
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogPreImage;->q0:Lcom/mycompany/app/view/MyFadeFrame;

    .line 103
    .line 104
    :cond_b
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogPreImage;->r0:Lcom/mycompany/app/zoom/ZoomImageAttacher;

    .line 105
    .line 106
    if-eqz v0, :cond_c

    .line 107
    .line 108
    invoke-virtual {v0}, Lcom/mycompany/app/zoom/ZoomImageAttacher;->r()V

    .line 109
    .line 110
    .line 111
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogPreImage;->r0:Lcom/mycompany/app/zoom/ZoomImageAttacher;

    .line 112
    .line 113
    :cond_c
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogPreImage;->a0:Lcom/mycompany/app/web/WebViewActivity;

    .line 114
    .line 115
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogPreImage;->b0:Landroid/content/Context;

    .line 116
    .line 117
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogPreImage;->c0:Lcom/mycompany/app/dialog/DialogPreview$PreviewListener;

    .line 118
    .line 119
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogPreImage;->d0:Ljava/lang/String;

    .line 120
    .line 121
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogPreImage;->e0:Ljava/lang/String;

    .line 122
    .line 123
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogPreImage;->f0:Landroid/widget/FrameLayout;

    .line 124
    .line 125
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogPreImage;->h0:Landroid/widget/FrameLayout;

    .line 126
    .line 127
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogPreImage;->i0:Landroid/widget/ImageView;

    .line 128
    .line 129
    invoke-super {p0}, Lcom/mycompany/app/view/MyDialogBottom;->dismiss()V

    .line 130
    .line 131
    .line 132
    return-void
.end method
