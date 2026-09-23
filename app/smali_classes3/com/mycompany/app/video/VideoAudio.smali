.class public Lcom/mycompany/app/video/VideoAudio;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mycompany/app/video/VideoAudio$AudioListener;,
        Lcom/mycompany/app/video/VideoAudio$PlayTask;
    }
.end annotation


# instance fields
.field public a:Landroid/content/Context;

.field public b:Lcom/mycompany/app/video/VideoAudio$AudioListener;

.field public c:Landroid/media/MediaPlayer;

.field public d:Lcom/mycompany/app/video/VideoAudio$PlayTask;

.field public e:Z

.field public f:Z

.field public g:Ljava/lang/String;

.field public h:I

.field public i:Landroid/media/MediaPlayer;


# virtual methods
.method public final a(Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/video/VideoAudio;->c:Landroid/media/MediaPlayer;

    .line 2
    .line 3
    if-eqz v0, :cond_3

    .line 4
    .line 5
    iget-object v0, p0, Lcom/mycompany/app/video/VideoAudio;->b:Lcom/mycompany/app/video/VideoAudio$AudioListener;

    .line 6
    .line 7
    if-eqz v0, :cond_3

    .line 8
    .line 9
    iget-boolean v1, p0, Lcom/mycompany/app/video/VideoAudio;->e:Z

    .line 10
    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    if-eqz p1, :cond_2

    .line 15
    .line 16
    check-cast v0, Lcom/mycompany/app/video/VideoActivity$72;

    .line 17
    .line 18
    iget-object p1, v0, Lcom/mycompany/app/video/VideoActivity$72;->a:Lcom/mycompany/app/video/VideoActivity;

    .line 19
    .line 20
    sget-boolean v0, Lcom/mycompany/app/pref/PrefSub;->x:Z

    .line 21
    .line 22
    if-eqz v0, :cond_2

    .line 23
    .line 24
    invoke-virtual {p1}, Lcom/mycompany/app/video/VideoActivity;->Q0()Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-eqz v0, :cond_2

    .line 29
    .line 30
    invoke-virtual {p1}, Lcom/mycompany/app/video/VideoActivity;->g()Z

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    if-eqz p1, :cond_2

    .line 35
    .line 36
    iget-object p1, p0, Lcom/mycompany/app/video/VideoAudio;->c:Landroid/media/MediaPlayer;

    .line 37
    .line 38
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->isPlaying()Z

    .line 39
    .line 40
    .line 41
    move-result p1

    .line 42
    if-nez p1, :cond_3

    .line 43
    .line 44
    iget-boolean p1, p0, Lcom/mycompany/app/video/VideoAudio;->f:Z

    .line 45
    .line 46
    if-eqz p1, :cond_1

    .line 47
    .line 48
    iget-object p1, p0, Lcom/mycompany/app/video/VideoAudio;->g:Ljava/lang/String;

    .line 49
    .line 50
    iget v0, p0, Lcom/mycompany/app/video/VideoAudio;->h:I

    .line 51
    .line 52
    const/4 v1, 0x0

    .line 53
    const/4 v2, 0x0

    .line 54
    invoke-virtual {p0, v2, v0, p1, v1}, Lcom/mycompany/app/video/VideoAudio;->d(Ljava/lang/String;ILjava/lang/String;Z)V

    .line 55
    .line 56
    .line 57
    return-void

    .line 58
    :cond_1
    iget-object p1, p0, Lcom/mycompany/app/video/VideoAudio;->c:Landroid/media/MediaPlayer;

    .line 59
    .line 60
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->start()V

    .line 61
    .line 62
    .line 63
    return-void

    .line 64
    :cond_2
    iget-object p1, p0, Lcom/mycompany/app/video/VideoAudio;->c:Landroid/media/MediaPlayer;

    .line 65
    .line 66
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->isPlaying()Z

    .line 67
    .line 68
    .line 69
    move-result p1

    .line 70
    if-eqz p1, :cond_3

    .line 71
    .line 72
    iget-object p1, p0, Lcom/mycompany/app/video/VideoAudio;->c:Landroid/media/MediaPlayer;

    .line 73
    .line 74
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->pause()V

    .line 75
    .line 76
    .line 77
    :cond_3
    :goto_0
    return-void
.end method

.method public final b(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/video/VideoAudio;->c:Landroid/media/MediaPlayer;

    .line 2
    .line 3
    if-eqz v0, :cond_4

    .line 4
    .line 5
    iget-object v1, p0, Lcom/mycompany/app/video/VideoAudio;->b:Lcom/mycompany/app/video/VideoAudio$AudioListener;

    .line 6
    .line 7
    if-eqz v1, :cond_4

    .line 8
    .line 9
    iget-boolean v1, p0, Lcom/mycompany/app/video/VideoAudio;->e:Z

    .line 10
    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    goto :goto_1

    .line 14
    :cond_0
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    const/4 v1, 0x1

    .line 19
    if-gtz v0, :cond_1

    .line 20
    .line 21
    invoke-virtual {p0, v1}, Lcom/mycompany/app/video/VideoAudio;->a(Z)V

    .line 22
    .line 23
    .line 24
    return-void

    .line 25
    :cond_1
    iget v2, p0, Lcom/mycompany/app/video/VideoAudio;->h:I

    .line 26
    .line 27
    add-int/2addr p1, v2

    .line 28
    if-ltz p1, :cond_3

    .line 29
    .line 30
    if-le p1, v0, :cond_2

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_2
    iget-object v0, p0, Lcom/mycompany/app/video/VideoAudio;->c:Landroid/media/MediaPlayer;

    .line 34
    .line 35
    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0, v1}, Lcom/mycompany/app/video/VideoAudio;->a(Z)V

    .line 39
    .line 40
    .line 41
    return-void

    .line 42
    :cond_3
    :goto_0
    const/4 p1, 0x0

    .line 43
    invoke-virtual {p0, p1}, Lcom/mycompany/app/video/VideoAudio;->a(Z)V

    .line 44
    .line 45
    .line 46
    :cond_4
    :goto_1
    return-void
.end method

.method public final c()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/video/VideoAudio;->c:Landroid/media/MediaPlayer;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-object v1, p0, Lcom/mycompany/app/video/VideoAudio;->b:Lcom/mycompany/app/video/VideoAudio$AudioListener;

    .line 6
    .line 7
    if-eqz v1, :cond_1

    .line 8
    .line 9
    iget-boolean v1, p0, Lcom/mycompany/app/video/VideoAudio;->e:Z

    .line 10
    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v1, 0x1

    .line 15
    iput-boolean v1, p0, Lcom/mycompany/app/video/VideoAudio;->f:Z

    .line 16
    .line 17
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    iget-object v0, p0, Lcom/mycompany/app/video/VideoAudio;->c:Landroid/media/MediaPlayer;

    .line 24
    .line 25
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 26
    .line 27
    .line 28
    :cond_1
    :goto_0
    return-void
.end method

.method public final d(Ljava/lang/String;ILjava/lang/String;Z)V
    .locals 4

    .line 1
    if-eqz p4, :cond_0

    .line 2
    .line 3
    iget-object v0, p0, Lcom/mycompany/app/video/VideoAudio;->g:Ljava/lang/String;

    .line 4
    .line 5
    invoke-static {p3, v0}, Lcom/mycompany/app/main/MainUtil;->q5(Ljava/lang/Object;Ljava/lang/Object;)Z

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
    iget-object v0, p0, Lcom/mycompany/app/video/VideoAudio;->d:Lcom/mycompany/app/video/VideoAudio$PlayTask;

    .line 13
    .line 14
    const/4 v1, 0x1

    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    iput-boolean v1, v0, Lcom/mycompany/app/async/MyAsyncTask;->c:Z

    .line 18
    .line 19
    :cond_1
    const/4 v0, 0x0

    .line 20
    iput-object v0, p0, Lcom/mycompany/app/video/VideoAudio;->d:Lcom/mycompany/app/video/VideoAudio$PlayTask;

    .line 21
    .line 22
    const/4 v2, 0x0

    .line 23
    iput-boolean v2, p0, Lcom/mycompany/app/video/VideoAudio;->e:Z

    .line 24
    .line 25
    iput-boolean v2, p0, Lcom/mycompany/app/video/VideoAudio;->f:Z

    .line 26
    .line 27
    iget-object v2, p0, Lcom/mycompany/app/video/VideoAudio;->c:Landroid/media/MediaPlayer;

    .line 28
    .line 29
    iput-object v2, p0, Lcom/mycompany/app/video/VideoAudio;->i:Landroid/media/MediaPlayer;

    .line 30
    .line 31
    iput-object v0, p0, Lcom/mycompany/app/video/VideoAudio;->c:Landroid/media/MediaPlayer;

    .line 32
    .line 33
    if-nez v2, :cond_2

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_2
    iget-object v2, p0, Lcom/mycompany/app/video/VideoAudio;->a:Landroid/content/Context;

    .line 37
    .line 38
    new-instance v3, Lcom/mycompany/app/video/VideoAudio$4;

    .line 39
    .line 40
    invoke-direct {v3, p0}, Lcom/mycompany/app/video/VideoAudio$4;-><init>(Lcom/mycompany/app/video/VideoAudio;)V

    .line 41
    .line 42
    .line 43
    invoke-static {v2, v3}, Lcom/mycompany/app/main/MainApp;->J(Landroid/content/Context;Ljava/lang/Runnable;)V

    .line 44
    .line 45
    .line 46
    :goto_0
    iput-object p3, p0, Lcom/mycompany/app/video/VideoAudio;->g:Ljava/lang/String;

    .line 47
    .line 48
    iput p2, p0, Lcom/mycompany/app/video/VideoAudio;->h:I

    .line 49
    .line 50
    new-instance p2, Landroid/media/MediaPlayer;

    .line 51
    .line 52
    invoke-direct {p2}, Landroid/media/MediaPlayer;-><init>()V

    .line 53
    .line 54
    .line 55
    iput-object p2, p0, Lcom/mycompany/app/video/VideoAudio;->c:Landroid/media/MediaPlayer;

    .line 56
    .line 57
    new-instance p3, Lcom/mycompany/app/video/VideoAudio$1;

    .line 58
    .line 59
    invoke-direct {p3, p0}, Lcom/mycompany/app/video/VideoAudio$1;-><init>(Lcom/mycompany/app/video/VideoAudio;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {p2, p3}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 63
    .line 64
    .line 65
    iget-object p2, p0, Lcom/mycompany/app/video/VideoAudio;->c:Landroid/media/MediaPlayer;

    .line 66
    .line 67
    new-instance p3, Lcom/mycompany/app/video/VideoAudio$2;

    .line 68
    .line 69
    invoke-direct {p3, p0}, Lcom/mycompany/app/video/VideoAudio$2;-><init>(Lcom/mycompany/app/video/VideoAudio;)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {p2, p3}, Landroid/media/MediaPlayer;->setOnSeekCompleteListener(Landroid/media/MediaPlayer$OnSeekCompleteListener;)V

    .line 73
    .line 74
    .line 75
    iget-object p2, p0, Lcom/mycompany/app/video/VideoAudio;->c:Landroid/media/MediaPlayer;

    .line 76
    .line 77
    new-instance p3, Lcom/mycompany/app/video/VideoAudio$3;

    .line 78
    .line 79
    invoke-direct {p3, p0}, Lcom/mycompany/app/video/VideoAudio$3;-><init>(Lcom/mycompany/app/video/VideoAudio;)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {p2, p3}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 83
    .line 84
    .line 85
    iget-object p2, p0, Lcom/mycompany/app/video/VideoAudio;->d:Lcom/mycompany/app/video/VideoAudio$PlayTask;

    .line 86
    .line 87
    if-eqz p2, :cond_3

    .line 88
    .line 89
    iput-boolean v1, p2, Lcom/mycompany/app/async/MyAsyncTask;->c:Z

    .line 90
    .line 91
    :cond_3
    iput-object v0, p0, Lcom/mycompany/app/video/VideoAudio;->d:Lcom/mycompany/app/video/VideoAudio$PlayTask;

    .line 92
    .line 93
    new-instance p2, Lcom/mycompany/app/video/VideoAudio$PlayTask;

    .line 94
    .line 95
    invoke-direct {p2, p0, p1, p4}, Lcom/mycompany/app/video/VideoAudio$PlayTask;-><init>(Lcom/mycompany/app/video/VideoAudio;Ljava/lang/String;Z)V

    .line 96
    .line 97
    .line 98
    iput-object p2, p0, Lcom/mycompany/app/video/VideoAudio;->d:Lcom/mycompany/app/video/VideoAudio$PlayTask;

    .line 99
    .line 100
    iget-object p1, p0, Lcom/mycompany/app/video/VideoAudio;->a:Landroid/content/Context;

    .line 101
    .line 102
    invoke-virtual {p2, p1}, Lcom/mycompany/app/async/MyAsyncTask;->b(Landroid/content/Context;)V

    .line 103
    .line 104
    .line 105
    return-void
.end method
