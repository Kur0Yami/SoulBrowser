.class Lcom/mycompany/app/video/VideoActivity$22$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/video/VideoActivity$22;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/video/VideoActivity$22;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/video/VideoActivity$22$1;->c:Lcom/mycompany/app/video/VideoActivity$22;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/video/VideoActivity$22$1;->c:Lcom/mycompany/app/video/VideoActivity$22;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/video/VideoActivity$22;->c:Lcom/mycompany/app/video/VideoActivity;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/mycompany/app/video/VideoActivity;->u2:Landroid/media/MediaPlayer;

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    :try_start_0
    invoke-virtual {v1}, Landroid/media/MediaPlayer;->reset()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    .line 12
    .line 13
    :catch_0
    iget-object v1, v0, Lcom/mycompany/app/video/VideoActivity;->v2:Lcom/mycompany/app/video/VideoActivity$PlayTask;

    .line 14
    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    const/4 v2, 0x1

    .line 18
    iput-boolean v2, v1, Lcom/mycompany/app/async/MyAsyncTask;->c:Z

    .line 19
    .line 20
    :cond_1
    const/4 v1, 0x0

    .line 21
    iput-object v1, v0, Lcom/mycompany/app/video/VideoActivity;->v2:Lcom/mycompany/app/video/VideoActivity$PlayTask;

    .line 22
    .line 23
    new-instance v1, Lcom/mycompany/app/video/VideoActivity$PlayTask;

    .line 24
    .line 25
    invoke-direct {v1, v0}, Lcom/mycompany/app/video/VideoActivity$PlayTask;-><init>(Lcom/mycompany/app/video/VideoActivity;)V

    .line 26
    .line 27
    .line 28
    iput-object v1, v0, Lcom/mycompany/app/video/VideoActivity;->v2:Lcom/mycompany/app/video/VideoActivity$PlayTask;

    .line 29
    .line 30
    iget-object v2, v0, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    .line 31
    .line 32
    invoke-virtual {v1, v2}, Lcom/mycompany/app/async/MyAsyncTask;->b(Landroid/content/Context;)V

    .line 33
    .line 34
    .line 35
    :goto_0
    sget-boolean v1, Lcom/mycompany/app/pref/PrefVideo;->p:Z

    .line 36
    .line 37
    if-eqz v1, :cond_2

    .line 38
    .line 39
    goto :goto_1

    .line 40
    :cond_2
    iget-object v1, v0, Lcom/mycompany/app/video/VideoActivity;->K1:Lcom/mycompany/app/view/MySizeFrame;

    .line 41
    .line 42
    if-nez v1, :cond_3

    .line 43
    .line 44
    goto :goto_1

    .line 45
    :cond_3
    new-instance v2, Lcom/mycompany/app/video/VideoActivity$26;

    .line 46
    .line 47
    invoke-direct {v2, v0}, Lcom/mycompany/app/video/VideoActivity$26;-><init>(Lcom/mycompany/app/video/VideoActivity;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v1, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 51
    .line 52
    .line 53
    :goto_1
    return-void
.end method
