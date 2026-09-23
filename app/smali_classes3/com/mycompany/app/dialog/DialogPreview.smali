.class public Lcom/mycompany/app/dialog/DialogPreview;
.super Lcom/mycompany/app/view/MyDialogBottom;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mycompany/app/dialog/DialogPreview$PreviewListener;,
        Lcom/mycompany/app/dialog/DialogPreview$LocalWebViewClient;
    }
.end annotation


# static fields
.field public static final synthetic j1:I


# instance fields
.field public A0:Lcom/mycompany/app/view/MyButtonImage;

.field public B0:Lcom/mycompany/app/view/MyButtonImage;

.field public C0:Lcom/mycompany/app/view/MyButtonImage;

.field public D0:Lcom/mycompany/app/view/MyFadeFrame;

.field public E0:Lcom/mycompany/app/zoom/ZoomImageAttacher;

.field public F0:Lcom/mycompany/app/zoom/ZoomVideoAttacher;

.field public G0:Landroid/view/GestureDetector;

.field public H0:Z

.field public I0:J

.field public J0:Lcom/mycompany/app/view/GlideRequests;

.field public K0:Z

.field public L0:Ljava/lang/String;

.field public M0:Ljava/lang/String;

.field public N0:Z

.field public O0:Z

.field public P0:Ljava/lang/String;

.field public final Q0:Lcom/bumptech/glide/request/RequestListener;

.field public R0:Ljava/lang/String;

.field public final S0:Lcom/bumptech/glide/request/RequestListener;

.field public T0:Ljava/lang/String;

.field public U0:Ljava/lang/String;

.field public V0:Ljava/lang/String;

.field public W0:Ljava/lang/String;

.field public X0:Ljava/lang/String;

.field public Y0:Ljava/lang/String;

.field public Z0:Ljava/lang/String;

.field public a0:Lcom/mycompany/app/main/MainActivity;

.field public a1:Ljava/lang/String;

.field public b0:Landroid/content/Context;

.field public b1:Ljava/lang/String;

.field public c0:Lcom/mycompany/app/dialog/DialogPreview$PreviewListener;

.field public c1:Ljava/lang/String;

.field public d0:Ljava/lang/String;

.field public d1:Ljava/lang/String;

.field public e0:Ljava/lang/String;

.field public e1:Z

.field public f0:Ljava/lang/String;

.field public f1:Ljava/lang/String;

.field public g0:Landroid/graphics/Bitmap;

.field public final g1:Ljava/lang/Runnable;

.field public h0:Ljava/lang/String;

.field public h1:I

.field public i0:I

.field public i1:I

.field public final j0:Z

.field public k0:Landroid/widget/FrameLayout;

.field public l0:Lcom/mycompany/app/view/MyDialogRelative;

.field public m0:Landroid/widget/FrameLayout;

.field public n0:Lcom/mycompany/app/view/MyPlayerView;

.field public o0:Lcom/mycompany/app/video/VideoSeekControl;

.field public p0:Z

.field public q0:I

.field public r0:Landroid/widget/ImageView;

.field public s0:Lcom/mycompany/app/view/MyWebSafe;

.field public t0:Z

.field public u0:Landroid/view/View;

.field public v0:Landroidx/appcompat/widget/AppCompatTextView;

.field public w0:Lcom/mycompany/app/view/MyCoverView;

.field public x0:Lcom/mycompany/app/view/MyFadeFrame;

.field public y0:Lcom/mycompany/app/view/MyButtonImage;

.field public z0:Lcom/mycompany/app/view/MyButtonImage;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/main/MainActivity;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;Lcom/mycompany/app/dialog/DialogPreview$PreviewListener;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/mycompany/app/view/MyDialogBottom;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/mycompany/app/dialog/DialogPreview$17;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Lcom/mycompany/app/dialog/DialogPreview$17;-><init>(Lcom/mycompany/app/dialog/DialogPreview;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogPreview;->Q0:Lcom/bumptech/glide/request/RequestListener;

    .line 10
    .line 11
    new-instance v0, Lcom/mycompany/app/dialog/DialogPreview$19;

    .line 12
    .line 13
    invoke-direct {v0, p0}, Lcom/mycompany/app/dialog/DialogPreview$19;-><init>(Lcom/mycompany/app/dialog/DialogPreview;)V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogPreview;->S0:Lcom/bumptech/glide/request/RequestListener;

    .line 17
    .line 18
    new-instance v0, Lcom/mycompany/app/dialog/DialogPreview$38;

    .line 19
    .line 20
    invoke-direct {v0, p0}, Lcom/mycompany/app/dialog/DialogPreview$38;-><init>(Lcom/mycompany/app/dialog/DialogPreview;)V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogPreview;->g1:Ljava/lang/Runnable;

    .line 24
    .line 25
    invoke-static {p2}, Lcom/mycompany/app/main/MainUtil;->r5(Ljava/lang/String;)Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-eqz v0, :cond_0

    .line 30
    .line 31
    const/4 p5, 0x1

    .line 32
    iput-boolean p5, p0, Lcom/mycompany/app/dialog/DialogPreview;->j0:Z

    .line 33
    .line 34
    const-string p5, "video/*"

    .line 35
    .line 36
    :cond_0
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogPreview;->a0:Lcom/mycompany/app/main/MainActivity;

    .line 37
    .line 38
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogPreview;->b0:Landroid/content/Context;

    .line 43
    .line 44
    iput-object p2, p0, Lcom/mycompany/app/dialog/DialogPreview;->d0:Ljava/lang/String;

    .line 45
    .line 46
    iput-object p3, p0, Lcom/mycompany/app/dialog/DialogPreview;->f0:Ljava/lang/String;

    .line 47
    .line 48
    iput-object p4, p0, Lcom/mycompany/app/dialog/DialogPreview;->g0:Landroid/graphics/Bitmap;

    .line 49
    .line 50
    iput-object p5, p0, Lcom/mycompany/app/dialog/DialogPreview;->h0:Ljava/lang/String;

    .line 51
    .line 52
    iput-object p6, p0, Lcom/mycompany/app/dialog/DialogPreview;->c0:Lcom/mycompany/app/dialog/DialogPreview$PreviewListener;

    .line 53
    .line 54
    const-string p1, "blob:"

    .line 55
    .line 56
    invoke-virtual {p1, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 57
    .line 58
    .line 59
    move-result p1

    .line 60
    if-eqz p1, :cond_1

    .line 61
    .line 62
    iput-object p2, p0, Lcom/mycompany/app/dialog/DialogPreview;->e0:Ljava/lang/String;

    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_1
    invoke-static {p2}, Lcom/mycompany/app/main/MainUtil;->O0(Ljava/lang/String;)Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogPreview;->e0:Ljava/lang/String;

    .line 70
    .line 71
    :goto_0
    iget-object p1, p0, Lcom/mycompany/app/view/MyDialogBottom;->i:Landroid/os/Handler;

    .line 72
    .line 73
    if-nez p1, :cond_2

    .line 74
    .line 75
    return-void

    .line 76
    :cond_2
    new-instance p2, Lcom/mycompany/app/dialog/DialogPreview$1;

    .line 77
    .line 78
    invoke-direct {p2, p0}, Lcom/mycompany/app/dialog/DialogPreview$1;-><init>(Lcom/mycompany/app/dialog/DialogPreview;)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 82
    .line 83
    .line 84
    return-void
.end method

.method public static B(Lcom/mycompany/app/dialog/DialogPreview;I)V
    .locals 2

    .line 1
    if-gez p1, :cond_0

    .line 2
    .line 3
    goto :goto_1

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogPreview;->n0:Lcom/mycompany/app/view/MyPlayerView;

    .line 5
    .line 6
    if-nez v0, :cond_1

    .line 7
    .line 8
    goto :goto_1

    .line 9
    :cond_1
    const/4 v1, -0x1

    .line 10
    iput v1, p0, Lcom/mycompany/app/dialog/DialogPreview;->q0:I

    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyPlayerView;->getDuration()I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-nez v1, :cond_2

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_2
    iput p1, v0, Lcom/mycompany/app/view/MyPlayerView;->r:I

    .line 20
    .line 21
    iget-object v0, v0, Lcom/mycompany/app/view/MyPlayerView;->m:Landroid/media/MediaPlayer;

    .line 22
    .line 23
    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 24
    .line 25
    .line 26
    :goto_0
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogPreview;->w0:Lcom/mycompany/app/view/MyCoverView;

    .line 27
    .line 28
    if-eqz p1, :cond_3

    .line 29
    .line 30
    const/4 v0, 0x1

    .line 31
    iput-boolean v0, p0, Lcom/mycompany/app/dialog/DialogPreview;->H0:Z

    .line 32
    .line 33
    const/4 v1, 0x0

    .line 34
    invoke-virtual {p1, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 35
    .line 36
    .line 37
    iget-object p0, p0, Lcom/mycompany/app/dialog/DialogPreview;->w0:Lcom/mycompany/app/view/MyCoverView;

    .line 38
    .line 39
    invoke-virtual {p0, v0}, Lcom/mycompany/app/view/MyCoverView;->m(Z)V

    .line 40
    .line 41
    .line 42
    :cond_3
    :goto_1
    return-void
.end method


# virtual methods
.method public final C()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/mycompany/app/dialog/DialogPreview;->H0:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p0, Lcom/mycompany/app/dialog/DialogPreview;->H0:Z

    .line 8
    .line 9
    const-wide/16 v0, 0x0

    .line 10
    .line 11
    iput-wide v0, p0, Lcom/mycompany/app/dialog/DialogPreview;->I0:J

    .line 12
    .line 13
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogPreview;->v0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 14
    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    const/16 v1, 0x8

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 20
    .line 21
    .line 22
    :cond_1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogPreview;->w0:Lcom/mycompany/app/view/MyCoverView;

    .line 23
    .line 24
    if-eqz v0, :cond_2

    .line 25
    .line 26
    const/4 v1, 0x0

    .line 27
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 28
    .line 29
    .line 30
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogPreview;->w0:Lcom/mycompany/app/view/MyCoverView;

    .line 31
    .line 32
    const/4 v1, 0x1

    .line 33
    invoke-virtual {v0, v1}, Lcom/mycompany/app/view/MyCoverView;->f(Z)V

    .line 34
    .line 35
    .line 36
    :cond_2
    :goto_0
    return-void
.end method

.method public final D(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogPreview;->m0:Landroid/widget/FrameLayout;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    iget v0, p0, Lcom/mycompany/app/dialog/DialogPreview;->i0:I

    .line 7
    .line 8
    const/4 v1, 0x6

    .line 9
    if-ne v0, v1, :cond_1

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_1
    if-eqz p1, :cond_2

    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/mycompany/app/view/MyDialogBottom;->q()Z

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    :cond_2
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogPreview;->m0:Landroid/widget/FrameLayout;

    .line 19
    .line 20
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    if-eqz p1, :cond_3

    .line 25
    .line 26
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogPreview;->b0:Landroid/content/Context;

    .line 27
    .line 28
    const/high16 v1, 0x438c0000    # 280.0f

    .line 29
    .line 30
    invoke-static {p1, v1}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    float-to-int p1, p1

    .line 35
    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 36
    .line 37
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogPreview;->E0:Lcom/mycompany/app/zoom/ZoomImageAttacher;

    .line 38
    .line 39
    if-eqz p1, :cond_4

    .line 40
    .line 41
    invoke-virtual {p1}, Lcom/mycompany/app/zoom/ZoomImageAttacher;->u()V

    .line 42
    .line 43
    .line 44
    return-void

    .line 45
    :cond_3
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogPreview;->b0:Landroid/content/Context;

    .line 46
    .line 47
    const/high16 v1, 0x43a00000    # 320.0f

    .line 48
    .line 49
    invoke-static {p1, v1}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 50
    .line 51
    .line 52
    move-result p1

    .line 53
    float-to-int p1, p1

    .line 54
    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 55
    .line 56
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogPreview;->E0:Lcom/mycompany/app/zoom/ZoomImageAttacher;

    .line 57
    .line 58
    if-eqz p1, :cond_4

    .line 59
    .line 60
    invoke-virtual {p1}, Lcom/mycompany/app/zoom/ZoomImageAttacher;->u()V

    .line 61
    .line 62
    .line 63
    :cond_4
    :goto_0
    return-void
.end method

.method public final E()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogPreview;->s0:Lcom/mycompany/app/view/MyWebSafe;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/webkit/WebView;->onPause()V

    .line 6
    .line 7
    .line 8
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogPreview;->n0:Lcom/mycompany/app/view/MyPlayerView;

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyPlayerView;->e()V

    .line 13
    .line 14
    .line 15
    :cond_1
    return-void
.end method

.method public final F()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogPreview;->n0:Lcom/mycompany/app/view/MyPlayerView;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyPlayerView;->e()V

    .line 7
    .line 8
    .line 9
    iget-object v2, v0, Lcom/mycompany/app/view/MyPlayerView;->f:Landroid/os/Handler;

    .line 10
    .line 11
    invoke-static {v2}, Lcom/mycompany/app/main/MainUtil;->R6(Landroid/os/Handler;)V

    .line 12
    .line 13
    .line 14
    iput-object v1, v0, Lcom/mycompany/app/view/MyPlayerView;->f:Landroid/os/Handler;

    .line 15
    .line 16
    iput-object v1, v0, Lcom/mycompany/app/view/MyPlayerView;->c:Landroid/content/Context;

    .line 17
    .line 18
    iput-object v1, v0, Lcom/mycompany/app/view/MyPlayerView;->g:Lcom/mycompany/app/view/MyPlayerView$PlayerViewListener;

    .line 19
    .line 20
    iput-object v1, v0, Lcom/mycompany/app/view/MyPlayerView;->h:Landroid/net/Uri;

    .line 21
    .line 22
    iput-object v1, v0, Lcom/mycompany/app/view/MyPlayerView;->i:Ljava/lang/String;

    .line 23
    .line 24
    iput-object v1, v0, Lcom/mycompany/app/view/MyPlayerView;->j:Ljava/lang/String;

    .line 25
    .line 26
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogPreview;->m0:Landroid/widget/FrameLayout;

    .line 27
    .line 28
    if-eqz v0, :cond_0

    .line 29
    .line 30
    iget-object v2, p0, Lcom/mycompany/app/dialog/DialogPreview;->n0:Lcom/mycompany/app/view/MyPlayerView;

    .line 31
    .line 32
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 33
    .line 34
    .line 35
    :cond_0
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogPreview;->n0:Lcom/mycompany/app/view/MyPlayerView;

    .line 36
    .line 37
    :cond_1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogPreview;->o0:Lcom/mycompany/app/video/VideoSeekControl;

    .line 38
    .line 39
    if-eqz v0, :cond_3

    .line 40
    .line 41
    invoke-virtual {v0}, Lcom/mycompany/app/video/VideoSeekControl;->g()V

    .line 42
    .line 43
    .line 44
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogPreview;->x0:Lcom/mycompany/app/view/MyFadeFrame;

    .line 45
    .line 46
    if-eqz v0, :cond_2

    .line 47
    .line 48
    iget-object v2, p0, Lcom/mycompany/app/dialog/DialogPreview;->o0:Lcom/mycompany/app/video/VideoSeekControl;

    .line 49
    .line 50
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 51
    .line 52
    .line 53
    :cond_2
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogPreview;->o0:Lcom/mycompany/app/video/VideoSeekControl;

    .line 54
    .line 55
    :cond_3
    return-void
.end method

.method public final G()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogPreview;->s0:Lcom/mycompany/app/view/MyWebSafe;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    iget-boolean v2, p0, Lcom/mycompany/app/dialog/DialogPreview;->t0:Z

    .line 7
    .line 8
    if-eqz v2, :cond_0

    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    iput-boolean v2, p0, Lcom/mycompany/app/dialog/DialogPreview;->t0:Z

    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/webkit/WebView;->stopLoading()V

    .line 14
    .line 15
    .line 16
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogPreview;->s0:Lcom/mycompany/app/view/MyWebSafe;

    .line 17
    .line 18
    invoke-static {v0}, Lcom/mycompany/app/main/MainUtil;->P6(Landroid/webkit/WebView;)V

    .line 19
    .line 20
    .line 21
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogPreview;->s0:Lcom/mycompany/app/view/MyWebSafe;

    .line 22
    .line 23
    :cond_1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogPreview;->u0:Landroid/view/View;

    .line 24
    .line 25
    if-eqz v0, :cond_3

    .line 26
    .line 27
    iget-object v2, p0, Lcom/mycompany/app/dialog/DialogPreview;->m0:Landroid/widget/FrameLayout;

    .line 28
    .line 29
    if-eqz v2, :cond_2

    .line 30
    .line 31
    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 32
    .line 33
    .line 34
    :cond_2
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogPreview;->u0:Landroid/view/View;

    .line 35
    .line 36
    :cond_3
    return-void
.end method

.method public final H()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogPreview;->s0:Lcom/mycompany/app/view/MyWebSafe;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/webkit/WebView;->onResume()V

    .line 6
    .line 7
    .line 8
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogPreview;->n0:Lcom/mycompany/app/view/MyPlayerView;

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    iget-object v1, v0, Lcom/mycompany/app/view/MyPlayerView;->h:Landroid/net/Uri;

    .line 13
    .line 14
    iget-object v2, v0, Lcom/mycompany/app/view/MyPlayerView;->i:Ljava/lang/String;

    .line 15
    .line 16
    iget-object v3, v0, Lcom/mycompany/app/view/MyPlayerView;->j:Ljava/lang/String;

    .line 17
    .line 18
    invoke-virtual {v0, v1, v2, v3}, Lcom/mycompany/app/view/MyPlayerView;->c(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    :cond_1
    return-void
.end method

.method public final I()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogPreview;->E0:Lcom/mycompany/app/zoom/ZoomImageAttacher;

    .line 2
    .line 3
    if-nez v0, :cond_2

    .line 4
    .line 5
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogPreview;->r0:Landroid/widget/ImageView;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogPreview;->F0:Lcom/mycompany/app/zoom/ZoomVideoAttacher;

    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/mycompany/app/zoom/ZoomVideoAttacher;->j()V

    .line 16
    .line 17
    .line 18
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogPreview;->F0:Lcom/mycompany/app/zoom/ZoomVideoAttacher;

    .line 19
    .line 20
    :cond_1
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogPreview;->G0:Landroid/view/GestureDetector;

    .line 21
    .line 22
    new-instance v0, Lcom/mycompany/app/zoom/ZoomImageAttacher;

    .line 23
    .line 24
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogPreview;->r0:Landroid/widget/ImageView;

    .line 25
    .line 26
    new-instance v2, Lcom/mycompany/app/dialog/DialogPreview$33;

    .line 27
    .line 28
    invoke-direct {v2, p0}, Lcom/mycompany/app/dialog/DialogPreview$33;-><init>(Lcom/mycompany/app/dialog/DialogPreview;)V

    .line 29
    .line 30
    .line 31
    invoke-direct {v0, v1, v2}, Lcom/mycompany/app/zoom/ZoomImageAttacher;-><init>(Landroid/widget/ImageView;Lcom/mycompany/app/zoom/ZoomImageAttacher$AttacherListener;)V

    .line 32
    .line 33
    .line 34
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogPreview;->E0:Lcom/mycompany/app/zoom/ZoomImageAttacher;

    .line 35
    .line 36
    :cond_2
    :goto_0
    return-void
.end method

.method public final J(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogPreview;->k0:Landroid/widget/FrameLayout;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iput-object p2, p0, Lcom/mycompany/app/dialog/DialogPreview;->L0:Ljava/lang/String;

    .line 7
    .line 8
    const/4 p2, 0x4

    .line 9
    iput p2, p0, Lcom/mycompany/app/dialog/DialogPreview;->i0:I

    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/mycompany/app/dialog/DialogPreview;->F()V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/mycompany/app/dialog/DialogPreview;->G()V

    .line 15
    .line 16
    .line 17
    iget-object p2, p0, Lcom/mycompany/app/dialog/DialogPreview;->r0:Landroid/widget/ImageView;

    .line 18
    .line 19
    const/4 v0, 0x0

    .line 20
    if-nez p2, :cond_1

    .line 21
    .line 22
    new-instance p2, Landroid/widget/ImageView;

    .line 23
    .line 24
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogPreview;->a0:Lcom/mycompany/app/main/MainActivity;

    .line 25
    .line 26
    invoke-direct {p2, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 27
    .line 28
    .line 29
    iput-object p2, p0, Lcom/mycompany/app/dialog/DialogPreview;->r0:Landroid/widget/ImageView;

    .line 30
    .line 31
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogPreview;->m0:Landroid/widget/FrameLayout;

    .line 32
    .line 33
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 34
    .line 35
    const/4 v3, -0x1

    .line 36
    invoke-direct {v2, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v1, p2, v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 40
    .line 41
    .line 42
    :cond_1
    iget-object p2, p0, Lcom/mycompany/app/dialog/DialogPreview;->x0:Lcom/mycompany/app/view/MyFadeFrame;

    .line 43
    .line 44
    if-eqz p2, :cond_2

    .line 45
    .line 46
    invoke-virtual {p2, v0}, Lcom/mycompany/app/view/MyFadeFrame;->h(Z)V

    .line 47
    .line 48
    .line 49
    :cond_2
    invoke-virtual {p0}, Lcom/mycompany/app/dialog/DialogPreview;->M()V

    .line 50
    .line 51
    .line 52
    const/4 p2, 0x1

    .line 53
    const/4 v0, 0x0

    .line 54
    invoke-static {p1, v0, v0, p2}, Lcom/mycompany/app/main/MainUtil;->V3(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object p2

    .line 58
    invoke-static {p2}, Lcom/mycompany/app/compress/Compress;->I(Ljava/lang/String;)Z

    .line 59
    .line 60
    .line 61
    move-result p2

    .line 62
    if-eqz p2, :cond_3

    .line 63
    .line 64
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogPreview;->R0:Ljava/lang/String;

    .line 65
    .line 66
    new-instance p1, Lcom/mycompany/app/dialog/DialogPreview$18;

    .line 67
    .line 68
    invoke-direct {p1, p0}, Lcom/mycompany/app/dialog/DialogPreview$18;-><init>(Lcom/mycompany/app/dialog/DialogPreview;)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {p0, p1}, Lcom/mycompany/app/view/MyDialogBottom;->s(Ljava/lang/Runnable;)V

    .line 72
    .line 73
    .line 74
    return-void

    .line 75
    :cond_3
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogPreview;->P0:Ljava/lang/String;

    .line 76
    .line 77
    new-instance p1, Lcom/mycompany/app/dialog/DialogPreview$16;

    .line 78
    .line 79
    invoke-direct {p1, p0}, Lcom/mycompany/app/dialog/DialogPreview$16;-><init>(Lcom/mycompany/app/dialog/DialogPreview;)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {p0, p1}, Lcom/mycompany/app/view/MyDialogBottom;->s(Ljava/lang/Runnable;)V

    .line 83
    .line 84
    .line 85
    return-void
.end method

.method public final K(Ljava/lang/String;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogPreview;->k0:Landroid/widget/FrameLayout;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto/16 :goto_3

    .line 6
    .line 7
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogPreview;->M0:Ljava/lang/String;

    .line 8
    .line 9
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_1

    .line 14
    .line 15
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogPreview;->M0:Ljava/lang/String;

    .line 16
    .line 17
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    invoke-virtual {p0}, Lcom/mycompany/app/dialog/DialogPreview;->C()V

    .line 24
    .line 25
    .line 26
    return-void

    .line 27
    :cond_1
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogPreview;->M0:Ljava/lang/String;

    .line 28
    .line 29
    const/4 v0, 0x5

    .line 30
    iput v0, p0, Lcom/mycompany/app/dialog/DialogPreview;->i0:I

    .line 31
    .line 32
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogPreview;->r0:Landroid/widget/ImageView;

    .line 33
    .line 34
    const/4 v1, 0x0

    .line 35
    if-eqz v0, :cond_3

    .line 36
    .line 37
    iget-object v2, p0, Lcom/mycompany/app/dialog/DialogPreview;->m0:Landroid/widget/FrameLayout;

    .line 38
    .line 39
    if-eqz v2, :cond_2

    .line 40
    .line 41
    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 42
    .line 43
    .line 44
    :cond_2
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogPreview;->r0:Landroid/widget/ImageView;

    .line 45
    .line 46
    :cond_3
    invoke-virtual {p0}, Lcom/mycompany/app/dialog/DialogPreview;->G()V

    .line 47
    .line 48
    .line 49
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogPreview;->n0:Lcom/mycompany/app/view/MyPlayerView;

    .line 50
    .line 51
    const/4 v2, 0x0

    .line 52
    const/4 v3, -0x1

    .line 53
    if-nez v0, :cond_4

    .line 54
    .line 55
    new-instance v0, Lcom/mycompany/app/view/MyPlayerView;

    .line 56
    .line 57
    iget-object v4, p0, Lcom/mycompany/app/dialog/DialogPreview;->a0:Lcom/mycompany/app/main/MainActivity;

    .line 58
    .line 59
    invoke-direct {v0, v4}, Lcom/mycompany/app/view/MyPlayerView;-><init>(Landroid/content/Context;)V

    .line 60
    .line 61
    .line 62
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogPreview;->n0:Lcom/mycompany/app/view/MyPlayerView;

    .line 63
    .line 64
    iget-object v4, p0, Lcom/mycompany/app/dialog/DialogPreview;->m0:Landroid/widget/FrameLayout;

    .line 65
    .line 66
    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    .line 67
    .line 68
    invoke-direct {v5, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {v4, v0, v2, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 72
    .line 73
    .line 74
    :cond_4
    iput-boolean v2, p0, Lcom/mycompany/app/dialog/DialogPreview;->p0:Z

    .line 75
    .line 76
    iput v3, p0, Lcom/mycompany/app/dialog/DialogPreview;->q0:I

    .line 77
    .line 78
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogPreview;->n0:Lcom/mycompany/app/view/MyPlayerView;

    .line 79
    .line 80
    new-instance v2, Lcom/mycompany/app/dialog/DialogPreview$28;

    .line 81
    .line 82
    invoke-direct {v2, p0}, Lcom/mycompany/app/dialog/DialogPreview$28;-><init>(Lcom/mycompany/app/dialog/DialogPreview;)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {v0, v2}, Lcom/mycompany/app/view/MyPlayerView;->setListener(Lcom/mycompany/app/view/MyPlayerView$PlayerViewListener;)V

    .line 86
    .line 87
    .line 88
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogPreview;->F0:Lcom/mycompany/app/zoom/ZoomVideoAttacher;

    .line 89
    .line 90
    if-nez v0, :cond_7

    .line 91
    .line 92
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogPreview;->n0:Lcom/mycompany/app/view/MyPlayerView;

    .line 93
    .line 94
    if-nez v0, :cond_5

    .line 95
    .line 96
    goto :goto_0

    .line 97
    :cond_5
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogPreview;->E0:Lcom/mycompany/app/zoom/ZoomImageAttacher;

    .line 98
    .line 99
    if-eqz v0, :cond_6

    .line 100
    .line 101
    invoke-virtual {v0}, Lcom/mycompany/app/zoom/ZoomImageAttacher;->r()V

    .line 102
    .line 103
    .line 104
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogPreview;->E0:Lcom/mycompany/app/zoom/ZoomImageAttacher;

    .line 105
    .line 106
    :cond_6
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogPreview;->G0:Landroid/view/GestureDetector;

    .line 107
    .line 108
    new-instance v0, Lcom/mycompany/app/zoom/ZoomVideoAttacher;

    .line 109
    .line 110
    iget-object v2, p0, Lcom/mycompany/app/dialog/DialogPreview;->n0:Lcom/mycompany/app/view/MyPlayerView;

    .line 111
    .line 112
    new-instance v3, Lcom/mycompany/app/dialog/DialogPreview$34;

    .line 113
    .line 114
    invoke-direct {v3, p0}, Lcom/mycompany/app/dialog/DialogPreview$34;-><init>(Lcom/mycompany/app/dialog/DialogPreview;)V

    .line 115
    .line 116
    .line 117
    invoke-direct {v0, v2, v3}, Lcom/mycompany/app/zoom/ZoomVideoAttacher;-><init>(Landroid/view/TextureView;Lcom/mycompany/app/zoom/ZoomVideoAttacher$VideoAttacherListener;)V

    .line 118
    .line 119
    .line 120
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogPreview;->F0:Lcom/mycompany/app/zoom/ZoomVideoAttacher;

    .line 121
    .line 122
    :cond_7
    :goto_0
    iget-boolean v0, p0, Lcom/mycompany/app/dialog/DialogPreview;->N0:Z

    .line 123
    .line 124
    if-eqz v0, :cond_8

    .line 125
    .line 126
    goto :goto_1

    .line 127
    :cond_8
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogPreview;->f0:Ljava/lang/String;

    .line 128
    .line 129
    :goto_1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogPreview;->n0:Lcom/mycompany/app/view/MyPlayerView;

    .line 130
    .line 131
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 132
    .line 133
    .line 134
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 135
    .line 136
    .line 137
    move-result v2

    .line 138
    if-eqz v2, :cond_9

    .line 139
    .line 140
    goto :goto_2

    .line 141
    :cond_9
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 142
    .line 143
    .line 144
    move-result-object v2

    .line 145
    invoke-virtual {v0, v2, p1, v1}, Lcom/mycompany/app/view/MyPlayerView;->c(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    .line 147
    .line 148
    :goto_2
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogPreview;->o0:Lcom/mycompany/app/video/VideoSeekControl;

    .line 149
    .line 150
    if-eqz p1, :cond_a

    .line 151
    .line 152
    goto :goto_3

    .line 153
    :cond_a
    iget-object p1, p0, Lcom/mycompany/app/view/MyDialogBottom;->i:Landroid/os/Handler;

    .line 154
    .line 155
    if-nez p1, :cond_b

    .line 156
    .line 157
    :goto_3
    return-void

    .line 158
    :cond_b
    new-instance v0, Lcom/mycompany/app/dialog/DialogPreview$29;

    .line 159
    .line 160
    invoke-direct {v0, p0}, Lcom/mycompany/app/dialog/DialogPreview$29;-><init>(Lcom/mycompany/app/dialog/DialogPreview;)V

    .line 161
    .line 162
    .line 163
    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 164
    .line 165
    .line 166
    return-void
.end method

.method public final L(Ljava/lang/String;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogPreview;->k0:Landroid/widget/FrameLayout;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_1

    .line 6
    :cond_0
    const-string v0, "blob:"

    .line 7
    .line 8
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogPreview;->h0:Ljava/lang/String;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    const-string v0, "image/*"

    .line 17
    .line 18
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogPreview;->h0:Ljava/lang/String;

    .line 19
    .line 20
    const/4 v0, 0x4

    .line 21
    iput v0, p0, Lcom/mycompany/app/dialog/DialogPreview;->i0:I

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_1
    const/4 v0, 0x5

    .line 25
    iput v0, p0, Lcom/mycompany/app/dialog/DialogPreview;->i0:I

    .line 26
    .line 27
    :goto_0
    invoke-virtual {p0}, Lcom/mycompany/app/dialog/DialogPreview;->F()V

    .line 28
    .line 29
    .line 30
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogPreview;->r0:Landroid/widget/ImageView;

    .line 31
    .line 32
    if-eqz v0, :cond_3

    .line 33
    .line 34
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogPreview;->m0:Landroid/widget/FrameLayout;

    .line 35
    .line 36
    if-eqz v1, :cond_2

    .line 37
    .line 38
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 39
    .line 40
    .line 41
    :cond_2
    const/4 v0, 0x0

    .line 42
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogPreview;->r0:Landroid/widget/ImageView;

    .line 43
    .line 44
    :cond_3
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogPreview;->s0:Lcom/mycompany/app/view/MyWebSafe;

    .line 45
    .line 46
    if-nez v0, :cond_4

    .line 47
    .line 48
    new-instance v0, Lcom/mycompany/app/view/MyWebSafe;

    .line 49
    .line 50
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogPreview;->a0:Lcom/mycompany/app/main/MainActivity;

    .line 51
    .line 52
    invoke-direct {v0, v1}, Lcom/mycompany/app/view/MyWebSafe;-><init>(Landroid/content/Context;)V

    .line 53
    .line 54
    .line 55
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogPreview;->s0:Lcom/mycompany/app/view/MyWebSafe;

    .line 56
    .line 57
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogPreview;->b0:Landroid/content/Context;

    .line 58
    .line 59
    invoke-static {v1, v0}, Lcom/mycompany/app/main/MainApp;->I(Landroid/content/Context;Landroid/webkit/WebView;)V

    .line 60
    .line 61
    .line 62
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogPreview;->s0:Lcom/mycompany/app/view/MyWebSafe;

    .line 63
    .line 64
    const/high16 v1, -0x1000000

    .line 65
    .line 66
    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    .line 67
    .line 68
    .line 69
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogPreview;->m0:Landroid/widget/FrameLayout;

    .line 70
    .line 71
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogPreview;->s0:Lcom/mycompany/app/view/MyWebSafe;

    .line 72
    .line 73
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 74
    .line 75
    const/4 v3, -0x1

    .line 76
    invoke-direct {v2, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 77
    .line 78
    .line 79
    const/4 v3, 0x0

    .line 80
    invoke-virtual {v0, v1, v3, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 81
    .line 82
    .line 83
    :cond_4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogPreview;->T0:Ljava/lang/String;

    .line 84
    .line 85
    iget-object p1, p0, Lcom/mycompany/app/view/MyDialogBottom;->i:Landroid/os/Handler;

    .line 86
    .line 87
    if-nez p1, :cond_5

    .line 88
    .line 89
    :goto_1
    return-void

    .line 90
    :cond_5
    new-instance v0, Lcom/mycompany/app/dialog/DialogPreview$20;

    .line 91
    .line 92
    invoke-direct {v0, p0}, Lcom/mycompany/app/dialog/DialogPreview$20;-><init>(Lcom/mycompany/app/dialog/DialogPreview;)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 96
    .line 97
    .line 98
    return-void
.end method

.method public final M()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogPreview;->w0:Lcom/mycompany/app/view/MyCoverView;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lcom/mycompany/app/dialog/DialogPreview;->H0:Z

    .line 8
    .line 9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 10
    .line 11
    .line 12
    move-result-wide v1

    .line 13
    iput-wide v1, p0, Lcom/mycompany/app/dialog/DialogPreview;->I0:J

    .line 14
    .line 15
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogPreview;->w0:Lcom/mycompany/app/view/MyCoverView;

    .line 16
    .line 17
    const/high16 v2, -0x1000000

    .line 18
    .line 19
    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 20
    .line 21
    .line 22
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogPreview;->w0:Lcom/mycompany/app/view/MyCoverView;

    .line 23
    .line 24
    sget v2, Lcom/mycompany/app/main/MainApp;->z1:I

    .line 25
    .line 26
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyCoverView;->setForeSize(I)V

    .line 27
    .line 28
    .line 29
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogPreview;->w0:Lcom/mycompany/app/view/MyCoverView;

    .line 30
    .line 31
    invoke-virtual {v1, v0}, Lcom/mycompany/app/view/MyCoverView;->m(Z)V

    .line 32
    .line 33
    .line 34
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogPreview;->w0:Lcom/mycompany/app/view/MyCoverView;

    .line 35
    .line 36
    new-instance v1, Lcom/mycompany/app/dialog/DialogPreview$15;

    .line 37
    .line 38
    invoke-direct {v1, p0}, Lcom/mycompany/app/dialog/DialogPreview$15;-><init>(Lcom/mycompany/app/dialog/DialogPreview;)V

    .line 39
    .line 40
    .line 41
    const-wide/16 v2, 0x1388

    .line 42
    .line 43
    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 44
    .line 45
    .line 46
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
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogPreview;->b0:Landroid/content/Context;

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogPreview;->J0:Lcom/mycompany/app/view/GlideRequests;

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    if-eqz v1, :cond_2

    .line 13
    .line 14
    iget-object v3, p0, Lcom/mycompany/app/dialog/DialogPreview;->r0:Landroid/widget/ImageView;

    .line 15
    .line 16
    if-eqz v3, :cond_1

    .line 17
    .line 18
    invoke-virtual {v1, v3}, Lcom/bumptech/glide/RequestManager;->o(Landroid/view/View;)V

    .line 19
    .line 20
    .line 21
    :cond_1
    iput-object v2, p0, Lcom/mycompany/app/dialog/DialogPreview;->J0:Lcom/mycompany/app/view/GlideRequests;

    .line 22
    .line 23
    :cond_2
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogPreview;->l0:Lcom/mycompany/app/view/MyDialogRelative;

    .line 24
    .line 25
    if-eqz v1, :cond_3

    .line 26
    .line 27
    invoke-virtual {v1}, Lcom/mycompany/app/view/MyDialogRelative;->c()V

    .line 28
    .line 29
    .line 30
    iput-object v2, p0, Lcom/mycompany/app/dialog/DialogPreview;->l0:Lcom/mycompany/app/view/MyDialogRelative;

    .line 31
    .line 32
    :cond_3
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogPreview;->n0:Lcom/mycompany/app/view/MyPlayerView;

    .line 33
    .line 34
    if-eqz v1, :cond_4

    .line 35
    .line 36
    invoke-virtual {v1}, Lcom/mycompany/app/view/MyPlayerView;->e()V

    .line 37
    .line 38
    .line 39
    iget-object v3, v1, Lcom/mycompany/app/view/MyPlayerView;->f:Landroid/os/Handler;

    .line 40
    .line 41
    invoke-static {v3}, Lcom/mycompany/app/main/MainUtil;->R6(Landroid/os/Handler;)V

    .line 42
    .line 43
    .line 44
    iput-object v2, v1, Lcom/mycompany/app/view/MyPlayerView;->f:Landroid/os/Handler;

    .line 45
    .line 46
    iput-object v2, v1, Lcom/mycompany/app/view/MyPlayerView;->c:Landroid/content/Context;

    .line 47
    .line 48
    iput-object v2, v1, Lcom/mycompany/app/view/MyPlayerView;->g:Lcom/mycompany/app/view/MyPlayerView$PlayerViewListener;

    .line 49
    .line 50
    iput-object v2, v1, Lcom/mycompany/app/view/MyPlayerView;->h:Landroid/net/Uri;

    .line 51
    .line 52
    iput-object v2, v1, Lcom/mycompany/app/view/MyPlayerView;->i:Ljava/lang/String;

    .line 53
    .line 54
    iput-object v2, v1, Lcom/mycompany/app/view/MyPlayerView;->j:Ljava/lang/String;

    .line 55
    .line 56
    iput-object v2, p0, Lcom/mycompany/app/dialog/DialogPreview;->n0:Lcom/mycompany/app/view/MyPlayerView;

    .line 57
    .line 58
    :cond_4
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogPreview;->o0:Lcom/mycompany/app/video/VideoSeekControl;

    .line 59
    .line 60
    if-eqz v1, :cond_5

    .line 61
    .line 62
    invoke-virtual {v1}, Lcom/mycompany/app/video/VideoSeekControl;->g()V

    .line 63
    .line 64
    .line 65
    iput-object v2, p0, Lcom/mycompany/app/dialog/DialogPreview;->o0:Lcom/mycompany/app/video/VideoSeekControl;

    .line 66
    .line 67
    :cond_5
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogPreview;->s0:Lcom/mycompany/app/view/MyWebSafe;

    .line 68
    .line 69
    if-eqz v1, :cond_7

    .line 70
    .line 71
    iget-boolean v3, p0, Lcom/mycompany/app/dialog/DialogPreview;->t0:Z

    .line 72
    .line 73
    if-eqz v3, :cond_6

    .line 74
    .line 75
    iput-boolean v0, p0, Lcom/mycompany/app/dialog/DialogPreview;->t0:Z

    .line 76
    .line 77
    invoke-virtual {v1}, Landroid/webkit/WebView;->stopLoading()V

    .line 78
    .line 79
    .line 80
    :cond_6
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogPreview;->s0:Lcom/mycompany/app/view/MyWebSafe;

    .line 81
    .line 82
    invoke-static {v0}, Lcom/mycompany/app/main/MainUtil;->P6(Landroid/webkit/WebView;)V

    .line 83
    .line 84
    .line 85
    iput-object v2, p0, Lcom/mycompany/app/dialog/DialogPreview;->s0:Lcom/mycompany/app/view/MyWebSafe;

    .line 86
    .line 87
    :cond_7
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogPreview;->w0:Lcom/mycompany/app/view/MyCoverView;

    .line 88
    .line 89
    if-eqz v0, :cond_8

    .line 90
    .line 91
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyCoverView;->i()V

    .line 92
    .line 93
    .line 94
    iput-object v2, p0, Lcom/mycompany/app/dialog/DialogPreview;->w0:Lcom/mycompany/app/view/MyCoverView;

    .line 95
    .line 96
    :cond_8
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogPreview;->x0:Lcom/mycompany/app/view/MyFadeFrame;

    .line 97
    .line 98
    if-eqz v0, :cond_9

    .line 99
    .line 100
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyFadeFrame;->f()V

    .line 101
    .line 102
    .line 103
    iput-object v2, p0, Lcom/mycompany/app/dialog/DialogPreview;->x0:Lcom/mycompany/app/view/MyFadeFrame;

    .line 104
    .line 105
    :cond_9
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogPreview;->y0:Lcom/mycompany/app/view/MyButtonImage;

    .line 106
    .line 107
    if-eqz v0, :cond_a

    .line 108
    .line 109
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyButtonImage;->j()V

    .line 110
    .line 111
    .line 112
    iput-object v2, p0, Lcom/mycompany/app/dialog/DialogPreview;->y0:Lcom/mycompany/app/view/MyButtonImage;

    .line 113
    .line 114
    :cond_a
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogPreview;->z0:Lcom/mycompany/app/view/MyButtonImage;

    .line 115
    .line 116
    if-eqz v0, :cond_b

    .line 117
    .line 118
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyButtonImage;->j()V

    .line 119
    .line 120
    .line 121
    iput-object v2, p0, Lcom/mycompany/app/dialog/DialogPreview;->z0:Lcom/mycompany/app/view/MyButtonImage;

    .line 122
    .line 123
    :cond_b
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogPreview;->A0:Lcom/mycompany/app/view/MyButtonImage;

    .line 124
    .line 125
    if-eqz v0, :cond_c

    .line 126
    .line 127
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyButtonImage;->j()V

    .line 128
    .line 129
    .line 130
    iput-object v2, p0, Lcom/mycompany/app/dialog/DialogPreview;->A0:Lcom/mycompany/app/view/MyButtonImage;

    .line 131
    .line 132
    :cond_c
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogPreview;->B0:Lcom/mycompany/app/view/MyButtonImage;

    .line 133
    .line 134
    if-eqz v0, :cond_d

    .line 135
    .line 136
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyButtonImage;->j()V

    .line 137
    .line 138
    .line 139
    iput-object v2, p0, Lcom/mycompany/app/dialog/DialogPreview;->B0:Lcom/mycompany/app/view/MyButtonImage;

    .line 140
    .line 141
    :cond_d
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogPreview;->C0:Lcom/mycompany/app/view/MyButtonImage;

    .line 142
    .line 143
    if-eqz v0, :cond_e

    .line 144
    .line 145
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyButtonImage;->j()V

    .line 146
    .line 147
    .line 148
    iput-object v2, p0, Lcom/mycompany/app/dialog/DialogPreview;->C0:Lcom/mycompany/app/view/MyButtonImage;

    .line 149
    .line 150
    :cond_e
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogPreview;->D0:Lcom/mycompany/app/view/MyFadeFrame;

    .line 151
    .line 152
    if-eqz v0, :cond_f

    .line 153
    .line 154
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyFadeFrame;->f()V

    .line 155
    .line 156
    .line 157
    iput-object v2, p0, Lcom/mycompany/app/dialog/DialogPreview;->D0:Lcom/mycompany/app/view/MyFadeFrame;

    .line 158
    .line 159
    :cond_f
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogPreview;->E0:Lcom/mycompany/app/zoom/ZoomImageAttacher;

    .line 160
    .line 161
    if-eqz v0, :cond_10

    .line 162
    .line 163
    invoke-virtual {v0}, Lcom/mycompany/app/zoom/ZoomImageAttacher;->r()V

    .line 164
    .line 165
    .line 166
    iput-object v2, p0, Lcom/mycompany/app/dialog/DialogPreview;->E0:Lcom/mycompany/app/zoom/ZoomImageAttacher;

    .line 167
    .line 168
    :cond_10
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogPreview;->F0:Lcom/mycompany/app/zoom/ZoomVideoAttacher;

    .line 169
    .line 170
    if-eqz v0, :cond_11

    .line 171
    .line 172
    invoke-virtual {v0}, Lcom/mycompany/app/zoom/ZoomVideoAttacher;->j()V

    .line 173
    .line 174
    .line 175
    iput-object v2, p0, Lcom/mycompany/app/dialog/DialogPreview;->F0:Lcom/mycompany/app/zoom/ZoomVideoAttacher;

    .line 176
    .line 177
    :cond_11
    iput-object v2, p0, Lcom/mycompany/app/dialog/DialogPreview;->a0:Lcom/mycompany/app/main/MainActivity;

    .line 178
    .line 179
    iput-object v2, p0, Lcom/mycompany/app/dialog/DialogPreview;->b0:Landroid/content/Context;

    .line 180
    .line 181
    iput-object v2, p0, Lcom/mycompany/app/dialog/DialogPreview;->c0:Lcom/mycompany/app/dialog/DialogPreview$PreviewListener;

    .line 182
    .line 183
    iput-object v2, p0, Lcom/mycompany/app/dialog/DialogPreview;->d0:Ljava/lang/String;

    .line 184
    .line 185
    iput-object v2, p0, Lcom/mycompany/app/dialog/DialogPreview;->e0:Ljava/lang/String;

    .line 186
    .line 187
    iput-object v2, p0, Lcom/mycompany/app/dialog/DialogPreview;->f0:Ljava/lang/String;

    .line 188
    .line 189
    iput-object v2, p0, Lcom/mycompany/app/dialog/DialogPreview;->h0:Ljava/lang/String;

    .line 190
    .line 191
    iput-object v2, p0, Lcom/mycompany/app/dialog/DialogPreview;->k0:Landroid/widget/FrameLayout;

    .line 192
    .line 193
    iput-object v2, p0, Lcom/mycompany/app/dialog/DialogPreview;->m0:Landroid/widget/FrameLayout;

    .line 194
    .line 195
    iput-object v2, p0, Lcom/mycompany/app/dialog/DialogPreview;->r0:Landroid/widget/ImageView;

    .line 196
    .line 197
    iput-object v2, p0, Lcom/mycompany/app/dialog/DialogPreview;->u0:Landroid/view/View;

    .line 198
    .line 199
    iput-object v2, p0, Lcom/mycompany/app/dialog/DialogPreview;->v0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 200
    .line 201
    iput-object v2, p0, Lcom/mycompany/app/dialog/DialogPreview;->G0:Landroid/view/GestureDetector;

    .line 202
    .line 203
    iput-object v2, p0, Lcom/mycompany/app/dialog/DialogPreview;->L0:Ljava/lang/String;

    .line 204
    .line 205
    iput-object v2, p0, Lcom/mycompany/app/dialog/DialogPreview;->M0:Ljava/lang/String;

    .line 206
    .line 207
    invoke-super {p0}, Lcom/mycompany/app/view/MyDialogBottom;->dismiss()V

    .line 208
    .line 209
    .line 210
    return-void
.end method

.method public final dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogPreview;->x0:Lcom/mycompany/app/view/MyFadeFrame;

    .line 2
    .line 3
    if-eqz v0, :cond_3

    .line 4
    .line 5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, -0x1

    .line 10
    const/4 v2, 0x1

    .line 11
    if-eqz v0, :cond_2

    .line 12
    .line 13
    if-eq v0, v2, :cond_0

    .line 14
    .line 15
    const/4 v2, 0x3

    .line 16
    if-eq v0, v2, :cond_0

    .line 17
    .line 18
    goto :goto_1

    .line 19
    :cond_0
    const/4 v0, 0x0

    .line 20
    iput-boolean v0, p0, Lcom/mycompany/app/dialog/DialogPreview;->O0:Z

    .line 21
    .line 22
    iget v0, p0, Lcom/mycompany/app/dialog/DialogPreview;->q0:I

    .line 23
    .line 24
    iput v0, p0, Lcom/mycompany/app/dialog/DialogPreview;->h1:I

    .line 25
    .line 26
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogPreview;->k0:Landroid/widget/FrameLayout;

    .line 27
    .line 28
    if-nez v0, :cond_1

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    iget-object v2, p0, Lcom/mycompany/app/dialog/DialogPreview;->g1:Ljava/lang/Runnable;

    .line 32
    .line 33
    invoke-virtual {v0, v2}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 34
    .line 35
    .line 36
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogPreview;->k0:Landroid/widget/FrameLayout;

    .line 37
    .line 38
    invoke-virtual {v0, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 39
    .line 40
    .line 41
    :goto_0
    iput v1, p0, Lcom/mycompany/app/dialog/DialogPreview;->q0:I

    .line 42
    .line 43
    goto :goto_1

    .line 44
    :cond_2
    iput v1, p0, Lcom/mycompany/app/dialog/DialogPreview;->q0:I

    .line 45
    .line 46
    iput-boolean v2, p0, Lcom/mycompany/app/dialog/DialogPreview;->O0:Z

    .line 47
    .line 48
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogPreview;->G0:Landroid/view/GestureDetector;

    .line 49
    .line 50
    if-eqz v0, :cond_4

    .line 51
    .line 52
    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 53
    .line 54
    .line 55
    :cond_4
    invoke-super {p0, p1}, Lcom/mycompany/app/view/MyDialogBottom;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 56
    .line 57
    .line 58
    move-result p1

    .line 59
    return p1
.end method
