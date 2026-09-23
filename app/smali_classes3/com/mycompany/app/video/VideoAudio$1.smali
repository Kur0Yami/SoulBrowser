.class Lcom/mycompany/app/video/VideoAudio$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/video/VideoAudio;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/video/VideoAudio;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/video/VideoAudio$1;->c:Lcom/mycompany/app/video/VideoAudio;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onPrepared(Landroid/media/MediaPlayer;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/mycompany/app/video/VideoAudio$1;->c:Lcom/mycompany/app/video/VideoAudio;

    .line 2
    .line 3
    iget-object v0, p1, Lcom/mycompany/app/video/VideoAudio;->c:Landroid/media/MediaPlayer;

    .line 4
    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    iget-object v0, p1, Lcom/mycompany/app/video/VideoAudio;->b:Lcom/mycompany/app/video/VideoAudio$AudioListener;

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v1, 0x1

    .line 13
    iput-boolean v1, p1, Lcom/mycompany/app/video/VideoAudio;->e:Z

    .line 14
    .line 15
    invoke-interface {v0}, Lcom/mycompany/app/video/VideoAudio$AudioListener;->a()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    invoke-virtual {p1, v0}, Lcom/mycompany/app/video/VideoAudio;->b(I)V

    .line 20
    .line 21
    .line 22
    :cond_1
    :goto_0
    return-void
.end method
