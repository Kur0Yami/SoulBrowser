.class public Lcom/mycompany/app/view/MyPlayerView;
.super Landroid/view/TextureView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mycompany/app/view/MyPlayerView$PlayerViewListener;,
        Lcom/mycompany/app/view/MyPlayerView$PlayTask;
    }
.end annotation


# static fields
.field public static final synthetic x:I


# instance fields
.field public c:Landroid/content/Context;

.field public f:Landroid/os/Handler;

.field public g:Lcom/mycompany/app/view/MyPlayerView$PlayerViewListener;

.field public h:Landroid/net/Uri;

.field public i:Ljava/lang/String;

.field public j:Ljava/lang/String;

.field public k:Landroid/graphics/SurfaceTexture;

.field public l:Landroid/view/Surface;

.field public m:Landroid/media/MediaPlayer;

.field public n:Lcom/mycompany/app/view/MyPlayerView$PlayTask;

.field public o:Z

.field public p:Z

.field public q:Z

.field public r:I

.field public s:I

.field public t:I

.field public u:I

.field public v:I

.field public w:Landroid/media/MediaPlayer;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Landroid/view/TextureView;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/view/MyPlayerView;->c:Landroid/content/Context;

    .line 5
    .line 6
    new-instance p1, Landroid/os/Handler;

    .line 7
    .line 8
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 13
    .line 14
    .line 15
    iput-object p1, p0, Lcom/mycompany/app/view/MyPlayerView;->f:Landroid/os/Handler;

    .line 16
    .line 17
    new-instance p1, Lcom/mycompany/app/view/MyPlayerView$1;

    .line 18
    .line 19
    invoke-direct {p1, p0}, Lcom/mycompany/app/view/MyPlayerView$1;-><init>(Lcom/mycompany/app/view/MyPlayerView;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0, p1}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method public static a(Lcom/mycompany/app/view/MyPlayerView;I)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/mycompany/app/view/MyPlayerView;->p:Z

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    iget-boolean v0, p0, Lcom/mycompany/app/view/MyPlayerView;->o:Z

    .line 6
    .line 7
    if-eqz v0, :cond_2

    .line 8
    .line 9
    iget-object v0, p0, Lcom/mycompany/app/view/MyPlayerView;->m:Landroid/media/MediaPlayer;

    .line 10
    .line 11
    if-eqz v0, :cond_2

    .line 12
    .line 13
    iget-object v0, p0, Lcom/mycompany/app/view/MyPlayerView;->g:Lcom/mycompany/app/view/MyPlayerView$PlayerViewListener;

    .line 14
    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/view/MyPlayerView;->f:Landroid/os/Handler;

    .line 19
    .line 20
    if-nez v0, :cond_1

    .line 21
    .line 22
    return-void

    .line 23
    :cond_1
    new-instance v1, Lcom/mycompany/app/view/MyPlayerView$9;

    .line 24
    .line 25
    invoke-direct {v1, p0}, Lcom/mycompany/app/view/MyPlayerView$9;-><init>(Lcom/mycompany/app/view/MyPlayerView;)V

    .line 26
    .line 27
    .line 28
    int-to-long p0, p1

    .line 29
    invoke-virtual {v0, v1, p0, p1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 30
    .line 31
    .line 32
    return-void

    .line 33
    :cond_2
    :goto_0
    const/4 p1, 0x0

    .line 34
    iput-boolean p1, p0, Lcom/mycompany/app/view/MyPlayerView;->p:Z

    .line 35
    .line 36
    return-void
.end method

.method public static b(Lcom/mycompany/app/view/MyPlayerView;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/view/MyPlayerView;->m:Landroid/media/MediaPlayer;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_1

    .line 6
    :cond_0
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getVideoWidth()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    iget-object v1, p0, Lcom/mycompany/app/view/MyPlayerView;->m:Landroid/media/MediaPlayer;

    .line 11
    .line 12
    invoke-virtual {v1}, Landroid/media/MediaPlayer;->getVideoHeight()I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-eqz v0, :cond_6

    .line 17
    .line 18
    if-nez v1, :cond_1

    .line 19
    .line 20
    goto :goto_1

    .line 21
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    if-eqz v2, :cond_6

    .line 26
    .line 27
    instance-of v3, v2, Landroid/view/ViewGroup;

    .line 28
    .line 29
    if-nez v3, :cond_2

    .line 30
    .line 31
    goto :goto_1

    .line 32
    :cond_2
    check-cast v2, Landroid/view/ViewGroup;

    .line 33
    .line 34
    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    .line 35
    .line 36
    .line 37
    move-result v3

    .line 38
    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    .line 39
    .line 40
    .line 41
    move-result v2

    .line 42
    if-eqz v3, :cond_6

    .line 43
    .line 44
    if-nez v2, :cond_3

    .line 45
    .line 46
    goto :goto_1

    .line 47
    :cond_3
    iget v4, p0, Lcom/mycompany/app/view/MyPlayerView;->s:I

    .line 48
    .line 49
    if-ne v4, v3, :cond_4

    .line 50
    .line 51
    iget v4, p0, Lcom/mycompany/app/view/MyPlayerView;->t:I

    .line 52
    .line 53
    if-ne v4, v2, :cond_4

    .line 54
    .line 55
    iget v4, p0, Lcom/mycompany/app/view/MyPlayerView;->u:I

    .line 56
    .line 57
    if-ne v4, v0, :cond_4

    .line 58
    .line 59
    iget v4, p0, Lcom/mycompany/app/view/MyPlayerView;->v:I

    .line 60
    .line 61
    if-ne v4, v1, :cond_4

    .line 62
    .line 63
    goto :goto_1

    .line 64
    :cond_4
    iput v3, p0, Lcom/mycompany/app/view/MyPlayerView;->s:I

    .line 65
    .line 66
    iput v2, p0, Lcom/mycompany/app/view/MyPlayerView;->t:I

    .line 67
    .line 68
    iput v0, p0, Lcom/mycompany/app/view/MyPlayerView;->u:I

    .line 69
    .line 70
    iput v1, p0, Lcom/mycompany/app/view/MyPlayerView;->v:I

    .line 71
    .line 72
    int-to-float v1, v1

    .line 73
    int-to-float v0, v0

    .line 74
    div-float/2addr v1, v0

    .line 75
    int-to-float v0, v3

    .line 76
    mul-float/2addr v0, v1

    .line 77
    float-to-int v0, v0

    .line 78
    if-le v0, v2, :cond_5

    .line 79
    .line 80
    int-to-float v0, v2

    .line 81
    div-float/2addr v0, v1

    .line 82
    float-to-int v3, v0

    .line 83
    goto :goto_0

    .line 84
    :cond_5
    move v2, v0

    .line 85
    :goto_0
    iget-object p0, p0, Lcom/mycompany/app/view/MyPlayerView;->g:Lcom/mycompany/app/view/MyPlayerView$PlayerViewListener;

    .line 86
    .line 87
    if-eqz p0, :cond_6

    .line 88
    .line 89
    invoke-interface {p0, v3, v2}, Lcom/mycompany/app/view/MyPlayerView$PlayerViewListener;->a(II)V

    .line 90
    .line 91
    .line 92
    :cond_6
    :goto_1
    return-void
.end method


# virtual methods
.method public final c(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mycompany/app/view/MyPlayerView;->h:Landroid/net/Uri;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/mycompany/app/view/MyPlayerView;->i:Ljava/lang/String;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/mycompany/app/view/MyPlayerView;->j:Ljava/lang/String;

    .line 6
    .line 7
    if-eqz p1, :cond_3

    .line 8
    .line 9
    iget-object p1, p0, Lcom/mycompany/app/view/MyPlayerView;->m:Landroid/media/MediaPlayer;

    .line 10
    .line 11
    if-nez p1, :cond_3

    .line 12
    .line 13
    iget-object p1, p0, Lcom/mycompany/app/view/MyPlayerView;->l:Landroid/view/Surface;

    .line 14
    .line 15
    if-nez p1, :cond_0

    .line 16
    .line 17
    goto :goto_1

    .line 18
    :cond_0
    const/4 p1, 0x0

    .line 19
    iput-boolean p1, p0, Lcom/mycompany/app/view/MyPlayerView;->o:Z

    .line 20
    .line 21
    iput-boolean p1, p0, Lcom/mycompany/app/view/MyPlayerView;->p:Z

    .line 22
    .line 23
    iput-boolean p1, p0, Lcom/mycompany/app/view/MyPlayerView;->q:Z

    .line 24
    .line 25
    const/4 p1, -0x1

    .line 26
    iput p1, p0, Lcom/mycompany/app/view/MyPlayerView;->r:I

    .line 27
    .line 28
    iget-object p1, p0, Lcom/mycompany/app/view/MyPlayerView;->g:Lcom/mycompany/app/view/MyPlayerView$PlayerViewListener;

    .line 29
    .line 30
    const/4 p2, 0x1

    .line 31
    if-nez p1, :cond_1

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_1
    invoke-interface {p1, p2}, Lcom/mycompany/app/view/MyPlayerView$PlayerViewListener;->b(Z)V

    .line 35
    .line 36
    .line 37
    :goto_0
    new-instance p1, Landroid/media/MediaPlayer;

    .line 38
    .line 39
    invoke-direct {p1}, Landroid/media/MediaPlayer;-><init>()V

    .line 40
    .line 41
    .line 42
    iput-object p1, p0, Lcom/mycompany/app/view/MyPlayerView;->m:Landroid/media/MediaPlayer;

    .line 43
    .line 44
    iget-object p3, p0, Lcom/mycompany/app/view/MyPlayerView;->l:Landroid/view/Surface;

    .line 45
    .line 46
    invoke-virtual {p1, p3}, Landroid/media/MediaPlayer;->setSurface(Landroid/view/Surface;)V

    .line 47
    .line 48
    .line 49
    iget-object p1, p0, Lcom/mycompany/app/view/MyPlayerView;->m:Landroid/media/MediaPlayer;

    .line 50
    .line 51
    new-instance p3, Lcom/mycompany/app/view/MyPlayerView$2;

    .line 52
    .line 53
    invoke-direct {p3, p0}, Lcom/mycompany/app/view/MyPlayerView$2;-><init>(Lcom/mycompany/app/view/MyPlayerView;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {p1, p3}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 57
    .line 58
    .line 59
    iget-object p1, p0, Lcom/mycompany/app/view/MyPlayerView;->m:Landroid/media/MediaPlayer;

    .line 60
    .line 61
    new-instance p3, Lcom/mycompany/app/view/MyPlayerView$3;

    .line 62
    .line 63
    invoke-direct {p3, p0}, Lcom/mycompany/app/view/MyPlayerView$3;-><init>(Lcom/mycompany/app/view/MyPlayerView;)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {p1, p3}, Landroid/media/MediaPlayer;->setOnSeekCompleteListener(Landroid/media/MediaPlayer$OnSeekCompleteListener;)V

    .line 67
    .line 68
    .line 69
    iget-object p1, p0, Lcom/mycompany/app/view/MyPlayerView;->m:Landroid/media/MediaPlayer;

    .line 70
    .line 71
    new-instance p3, Lcom/mycompany/app/view/MyPlayerView$4;

    .line 72
    .line 73
    invoke-direct {p3, p0}, Lcom/mycompany/app/view/MyPlayerView$4;-><init>(Lcom/mycompany/app/view/MyPlayerView;)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {p1, p3}, Landroid/media/MediaPlayer;->setOnVideoSizeChangedListener(Landroid/media/MediaPlayer$OnVideoSizeChangedListener;)V

    .line 77
    .line 78
    .line 79
    iget-object p1, p0, Lcom/mycompany/app/view/MyPlayerView;->m:Landroid/media/MediaPlayer;

    .line 80
    .line 81
    new-instance p3, Lcom/mycompany/app/view/MyPlayerView$5;

    .line 82
    .line 83
    invoke-direct {p3, p0}, Lcom/mycompany/app/view/MyPlayerView$5;-><init>(Lcom/mycompany/app/view/MyPlayerView;)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {p1, p3}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 87
    .line 88
    .line 89
    iget-object p1, p0, Lcom/mycompany/app/view/MyPlayerView;->m:Landroid/media/MediaPlayer;

    .line 90
    .line 91
    new-instance p3, Lcom/mycompany/app/view/MyPlayerView$6;

    .line 92
    .line 93
    invoke-direct {p3, p0}, Lcom/mycompany/app/view/MyPlayerView$6;-><init>(Lcom/mycompany/app/view/MyPlayerView;)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {p1, p3}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 97
    .line 98
    .line 99
    iget-object p1, p0, Lcom/mycompany/app/view/MyPlayerView;->n:Lcom/mycompany/app/view/MyPlayerView$PlayTask;

    .line 100
    .line 101
    if-eqz p1, :cond_2

    .line 102
    .line 103
    iput-boolean p2, p1, Lcom/mycompany/app/async/MyAsyncTask;->c:Z

    .line 104
    .line 105
    :cond_2
    const/4 p1, 0x0

    .line 106
    iput-object p1, p0, Lcom/mycompany/app/view/MyPlayerView;->n:Lcom/mycompany/app/view/MyPlayerView$PlayTask;

    .line 107
    .line 108
    new-instance p1, Lcom/mycompany/app/view/MyPlayerView$PlayTask;

    .line 109
    .line 110
    invoke-direct {p1, p0}, Lcom/mycompany/app/view/MyPlayerView$PlayTask;-><init>(Lcom/mycompany/app/view/MyPlayerView;)V

    .line 111
    .line 112
    .line 113
    iput-object p1, p0, Lcom/mycompany/app/view/MyPlayerView;->n:Lcom/mycompany/app/view/MyPlayerView$PlayTask;

    .line 114
    .line 115
    iget-object p2, p0, Lcom/mycompany/app/view/MyPlayerView;->c:Landroid/content/Context;

    .line 116
    .line 117
    invoke-virtual {p1, p2}, Lcom/mycompany/app/async/MyAsyncTask;->b(Landroid/content/Context;)V

    .line 118
    .line 119
    .line 120
    :cond_3
    :goto_1
    return-void
.end method

.method public final d()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/view/MyPlayerView;->g:Lcom/mycompany/app/view/MyPlayerView$PlayerViewListener;

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
    iput-boolean v1, p0, Lcom/mycompany/app/view/MyPlayerView;->p:Z

    .line 8
    .line 9
    invoke-interface {v0, v1}, Lcom/mycompany/app/view/MyPlayerView$PlayerViewListener;->b(Z)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public final e()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/view/MyPlayerView;->n:Lcom/mycompany/app/view/MyPlayerView$PlayTask;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    iput-boolean v1, v0, Lcom/mycompany/app/async/MyAsyncTask;->c:Z

    .line 7
    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/mycompany/app/view/MyPlayerView;->n:Lcom/mycompany/app/view/MyPlayerView$PlayTask;

    .line 10
    .line 11
    iget-object v1, p0, Lcom/mycompany/app/view/MyPlayerView;->m:Landroid/media/MediaPlayer;

    .line 12
    .line 13
    iput-object v1, p0, Lcom/mycompany/app/view/MyPlayerView;->w:Landroid/media/MediaPlayer;

    .line 14
    .line 15
    iput-object v0, p0, Lcom/mycompany/app/view/MyPlayerView;->m:Landroid/media/MediaPlayer;

    .line 16
    .line 17
    if-nez v1, :cond_1

    .line 18
    .line 19
    return-void

    .line 20
    :cond_1
    iget-object v0, p0, Lcom/mycompany/app/view/MyPlayerView;->c:Landroid/content/Context;

    .line 21
    .line 22
    new-instance v1, Lcom/mycompany/app/view/MyPlayerView$8;

    .line 23
    .line 24
    invoke-direct {v1, p0}, Lcom/mycompany/app/view/MyPlayerView$8;-><init>(Lcom/mycompany/app/view/MyPlayerView;)V

    .line 25
    .line 26
    .line 27
    invoke-static {v0, v1}, Lcom/mycompany/app/main/MainApp;->J(Landroid/content/Context;Ljava/lang/Runnable;)V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public final f(ZZ)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/view/MyPlayerView;->m:Landroid/media/MediaPlayer;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    iget-boolean v1, p0, Lcom/mycompany/app/view/MyPlayerView;->o:Z

    .line 8
    .line 9
    :goto_0
    if-nez v1, :cond_1

    .line 10
    .line 11
    goto :goto_2

    .line 12
    :cond_1
    if-eqz p2, :cond_2

    .line 13
    .line 14
    xor-int/lit8 p2, p1, 0x1

    .line 15
    .line 16
    iput-boolean p2, p0, Lcom/mycompany/app/view/MyPlayerView;->q:Z

    .line 17
    .line 18
    :cond_2
    if-eqz p1, :cond_3

    .line 19
    .line 20
    iget-boolean p1, p0, Lcom/mycompany/app/view/MyPlayerView;->q:Z

    .line 21
    .line 22
    if-nez p1, :cond_4

    .line 23
    .line 24
    const/4 p1, -0x1

    .line 25
    iput p1, p0, Lcom/mycompany/app/view/MyPlayerView;->r:I

    .line 26
    .line 27
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    if-nez p1, :cond_4

    .line 32
    .line 33
    iget-object p1, p0, Lcom/mycompany/app/view/MyPlayerView;->m:Landroid/media/MediaPlayer;

    .line 34
    .line 35
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->start()V

    .line 36
    .line 37
    .line 38
    goto :goto_1

    .line 39
    :cond_3
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    .line 40
    .line 41
    .line 42
    move-result p1

    .line 43
    if-eqz p1, :cond_4

    .line 44
    .line 45
    iget-object p1, p0, Lcom/mycompany/app/view/MyPlayerView;->m:Landroid/media/MediaPlayer;

    .line 46
    .line 47
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->pause()V

    .line 48
    .line 49
    .line 50
    :cond_4
    :goto_1
    iget-object p1, p0, Lcom/mycompany/app/view/MyPlayerView;->g:Lcom/mycompany/app/view/MyPlayerView$PlayerViewListener;

    .line 51
    .line 52
    if-eqz p1, :cond_5

    .line 53
    .line 54
    invoke-interface {p1}, Lcom/mycompany/app/view/MyPlayerView$PlayerViewListener;->c()V

    .line 55
    .line 56
    .line 57
    :cond_5
    :goto_2
    return-void
.end method

.method public getDuration()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/view/MyPlayerView;->m:Landroid/media/MediaPlayer;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    move v2, v1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    iget-boolean v2, p0, Lcom/mycompany/app/view/MyPlayerView;->o:Z

    .line 9
    .line 10
    :goto_0
    if-nez v2, :cond_1

    .line 11
    .line 12
    goto :goto_1

    .line 13
    :cond_1
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-gez v0, :cond_2

    .line 18
    .line 19
    :goto_1
    return v1

    .line 20
    :cond_2
    return v0
.end method

.method public getPosition()I
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/view/MyPlayerView;->m:Landroid/media/MediaPlayer;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    move v2, v1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    iget-boolean v2, p0, Lcom/mycompany/app/view/MyPlayerView;->o:Z

    .line 9
    .line 10
    :goto_0
    if-nez v2, :cond_1

    .line 11
    .line 12
    goto :goto_1

    .line 13
    :cond_1
    iget v2, p0, Lcom/mycompany/app/view/MyPlayerView;->r:I

    .line 14
    .line 15
    const/4 v3, -0x1

    .line 16
    if-eq v2, v3, :cond_2

    .line 17
    .line 18
    return v2

    .line 19
    :cond_2
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-gez v0, :cond_3

    .line 24
    .line 25
    :goto_1
    return v1

    .line 26
    :cond_3
    return v0
.end method

.method public setListener(Lcom/mycompany/app/view/MyPlayerView$PlayerViewListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mycompany/app/view/MyPlayerView;->g:Lcom/mycompany/app/view/MyPlayerView$PlayerViewListener;

    .line 2
    .line 3
    return-void
.end method
