.class Lcom/mycompany/app/video/VideoActivity$66$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/video/VideoActivity$66;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/video/VideoActivity$66;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/video/VideoActivity$66$2;->c:Lcom/mycompany/app/video/VideoActivity$66;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/video/VideoActivity$66$2;->c:Lcom/mycompany/app/video/VideoActivity$66;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/video/VideoActivity$66;->a:Lcom/mycompany/app/video/VideoActivity;

    .line 4
    .line 5
    iget v1, v0, Lcom/mycompany/app/video/VideoActivity;->g3:F

    .line 6
    .line 7
    iget-object v2, v0, Lcom/mycompany/app/video/VideoActivity;->u2:Landroid/media/MediaPlayer;

    .line 8
    .line 9
    if-nez v2, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iget-boolean v3, v0, Lcom/mycompany/app/video/VideoActivity;->w2:Z

    .line 13
    .line 14
    if-nez v3, :cond_1

    .line 15
    .line 16
    const/4 v1, 0x1

    .line 17
    iput-boolean v1, v0, Lcom/mycompany/app/video/VideoActivity;->y2:Z

    .line 18
    .line 19
    return-void

    .line 20
    :cond_1
    const/4 v3, 0x0

    .line 21
    iput-boolean v3, v0, Lcom/mycompany/app/video/VideoActivity;->y2:Z

    .line 22
    .line 23
    :try_start_0
    invoke-virtual {v2}, Landroid/media/MediaPlayer;->getPlaybackParams()Landroid/media/PlaybackParams;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-virtual {v0, v1}, Landroid/media/PlaybackParams;->setSpeed(F)Landroid/media/PlaybackParams;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-virtual {v2, v0}, Landroid/media/MediaPlayer;->setPlaybackParams(Landroid/media/PlaybackParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 32
    .line 33
    .line 34
    :catch_0
    :goto_0
    return-void
.end method
