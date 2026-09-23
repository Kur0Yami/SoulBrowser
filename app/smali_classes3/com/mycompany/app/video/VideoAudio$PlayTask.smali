.class Lcom/mycompany/app/video/VideoAudio$PlayTask;
.super Lcom/mycompany/app/async/MyAsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mycompany/app/video/VideoAudio;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PlayTask"
.end annotation


# instance fields
.field public final e:Ljava/lang/ref/WeakReference;

.field public final f:Ljava/lang/String;

.field public final g:Z

.field public h:Z


# direct methods
.method public constructor <init>(Lcom/mycompany/app/video/VideoAudio;Ljava/lang/String;Z)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 5
    .line 6
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/mycompany/app/video/VideoAudio$PlayTask;->e:Ljava/lang/ref/WeakReference;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    check-cast p1, Lcom/mycompany/app/video/VideoAudio;

    .line 16
    .line 17
    if-nez p1, :cond_0

    .line 18
    .line 19
    return-void

    .line 20
    :cond_0
    iput-object p2, p0, Lcom/mycompany/app/video/VideoAudio$PlayTask;->f:Ljava/lang/String;

    .line 21
    .line 22
    iput-boolean p3, p0, Lcom/mycompany/app/video/VideoAudio$PlayTask;->g:Z

    .line 23
    .line 24
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/video/VideoAudio$PlayTask;->e:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Lcom/mycompany/app/video/VideoAudio;

    .line 11
    .line 12
    if-eqz v0, :cond_3

    .line 13
    .line 14
    iget-boolean v1, p0, Lcom/mycompany/app/async/MyAsyncTask;->c:Z

    .line 15
    .line 16
    if-eqz v1, :cond_1

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_1
    iget-object v1, v0, Lcom/mycompany/app/video/VideoAudio;->c:Landroid/media/MediaPlayer;

    .line 20
    .line 21
    if-nez v1, :cond_2

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_2
    :try_start_0
    iget-object v2, v0, Lcom/mycompany/app/video/VideoAudio;->a:Landroid/content/Context;

    .line 25
    .line 26
    iget-object v0, v0, Lcom/mycompany/app/video/VideoAudio;->g:Ljava/lang/String;

    .line 27
    .line 28
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-virtual {v1, v2, v0}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    .line 34
    .line 35
    return-void

    .line 36
    :catch_0
    const/4 v0, 0x1

    .line 37
    iput-boolean v0, p0, Lcom/mycompany/app/video/VideoAudio$PlayTask;->h:Z

    .line 38
    .line 39
    :cond_3
    :goto_0
    return-void
.end method

.method public final d()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/video/VideoAudio$PlayTask;->e:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Lcom/mycompany/app/video/VideoAudio;

    .line 11
    .line 12
    if-nez v0, :cond_1

    .line 13
    .line 14
    :goto_0
    return-void

    .line 15
    :cond_1
    const/4 v1, 0x0

    .line 16
    iput-object v1, v0, Lcom/mycompany/app/video/VideoAudio;->d:Lcom/mycompany/app/video/VideoAudio$PlayTask;

    .line 17
    .line 18
    return-void
.end method

.method public final e()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/video/VideoAudio$PlayTask;->e:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_1

    .line 6
    :cond_0
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Lcom/mycompany/app/video/VideoAudio;

    .line 11
    .line 12
    if-nez v0, :cond_1

    .line 13
    .line 14
    goto :goto_1

    .line 15
    :cond_1
    const/4 v1, 0x0

    .line 16
    iput-object v1, v0, Lcom/mycompany/app/video/VideoAudio;->d:Lcom/mycompany/app/video/VideoAudio$PlayTask;

    .line 17
    .line 18
    iget-boolean v1, p0, Lcom/mycompany/app/video/VideoAudio$PlayTask;->h:Z

    .line 19
    .line 20
    iget-boolean v2, p0, Lcom/mycompany/app/video/VideoAudio$PlayTask;->g:Z

    .line 21
    .line 22
    if-nez v1, :cond_3

    .line 23
    .line 24
    iget-object v1, v0, Lcom/mycompany/app/video/VideoAudio;->c:Landroid/media/MediaPlayer;

    .line 25
    .line 26
    if-nez v1, :cond_2

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_2
    :try_start_0
    invoke-virtual {v1}, Landroid/media/MediaPlayer;->prepareAsync()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 30
    .line 31
    .line 32
    if-eqz v2, :cond_4

    .line 33
    .line 34
    iget-object v1, v0, Lcom/mycompany/app/video/VideoAudio;->a:Landroid/content/Context;

    .line 35
    .line 36
    iget-object v2, v0, Lcom/mycompany/app/video/VideoAudio;->g:Ljava/lang/String;

    .line 37
    .line 38
    iget v0, v0, Lcom/mycompany/app/video/VideoAudio;->h:I

    .line 39
    .line 40
    iget-object v3, p0, Lcom/mycompany/app/video/VideoAudio$PlayTask;->f:Ljava/lang/String;

    .line 41
    .line 42
    invoke-static {v0, v1, v3, v2}, Lcom/mycompany/app/db/book/DbBookSub;->f(ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    return-void

    .line 46
    :catch_0
    if-eqz v2, :cond_4

    .line 47
    .line 48
    iget-object v0, v0, Lcom/mycompany/app/video/VideoAudio;->a:Landroid/content/Context;

    .line 49
    .line 50
    sget v1, Lnet/kaki87/soul2/testing/R$string;->audio_error:I

    .line 51
    .line 52
    invoke-static {v0, v1}, Lcom/mycompany/app/main/MainUtil;->e8(Landroid/content/Context;I)V

    .line 53
    .line 54
    .line 55
    goto :goto_1

    .line 56
    :cond_3
    :goto_0
    if-eqz v2, :cond_4

    .line 57
    .line 58
    iget-object v0, v0, Lcom/mycompany/app/video/VideoAudio;->a:Landroid/content/Context;

    .line 59
    .line 60
    sget v1, Lnet/kaki87/soul2/testing/R$string;->audio_error:I

    .line 61
    .line 62
    invoke-static {v0, v1}, Lcom/mycompany/app/main/MainUtil;->e8(Landroid/content/Context;I)V

    .line 63
    .line 64
    .line 65
    :cond_4
    :goto_1
    return-void
.end method
