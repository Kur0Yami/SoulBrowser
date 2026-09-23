.class Lcom/mycompany/app/video/VideoActivity$27;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/video/VideoActivity;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/video/VideoActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/video/VideoActivity$27;->c:Lcom/mycompany/app/video/VideoActivity;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/video/VideoActivity$27;->c:Lcom/mycompany/app/video/VideoActivity;

    .line 2
    .line 3
    iget-boolean v1, v0, Lcom/mycompany/app/video/VideoActivity;->B2:Z

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    iput-boolean v2, v0, Lcom/mycompany/app/video/VideoActivity;->B2:Z

    .line 7
    .line 8
    iget-object v2, v0, Lcom/mycompany/app/video/VideoActivity;->T3:Landroid/media/MediaPlayer;

    .line 9
    .line 10
    const/4 v3, 0x0

    .line 11
    iput-object v3, v0, Lcom/mycompany/app/video/VideoActivity;->T3:Landroid/media/MediaPlayer;

    .line 12
    .line 13
    if-nez v2, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    invoke-virtual {v2}, Landroid/media/MediaPlayer;->stop()V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v2}, Landroid/media/MediaPlayer;->release()V

    .line 20
    .line 21
    .line 22
    if-eqz v1, :cond_2

    .line 23
    .line 24
    iget-boolean v1, v0, Lcom/mycompany/app/video/VideoActivity;->F1:Z

    .line 25
    .line 26
    if-nez v1, :cond_2

    .line 27
    .line 28
    iget-object v0, v0, Lcom/mycompany/app/video/VideoActivity;->K1:Lcom/mycompany/app/view/MySizeFrame;

    .line 29
    .line 30
    if-nez v0, :cond_1

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_1
    new-instance v1, Lcom/mycompany/app/video/VideoActivity$27$1;

    .line 34
    .line 35
    invoke-direct {v1, p0}, Lcom/mycompany/app/video/VideoActivity$27$1;-><init>(Lcom/mycompany/app/video/VideoActivity$27;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 39
    .line 40
    .line 41
    :cond_2
    :goto_0
    return-void
.end method
