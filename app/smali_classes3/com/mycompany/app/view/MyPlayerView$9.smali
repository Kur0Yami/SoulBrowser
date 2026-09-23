.class Lcom/mycompany/app/view/MyPlayerView$9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/view/MyPlayerView;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/view/MyPlayerView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/view/MyPlayerView$9;->c:Lcom/mycompany/app/view/MyPlayerView;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/view/MyPlayerView$9;->c:Lcom/mycompany/app/view/MyPlayerView;

    .line 2
    .line 3
    iget-boolean v1, v0, Lcom/mycompany/app/view/MyPlayerView;->p:Z

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-eqz v1, :cond_2

    .line 7
    .line 8
    iget-boolean v1, v0, Lcom/mycompany/app/view/MyPlayerView;->o:Z

    .line 9
    .line 10
    if-eqz v1, :cond_2

    .line 11
    .line 12
    iget-object v1, v0, Lcom/mycompany/app/view/MyPlayerView;->m:Landroid/media/MediaPlayer;

    .line 13
    .line 14
    if-eqz v1, :cond_2

    .line 15
    .line 16
    iget-object v3, v0, Lcom/mycompany/app/view/MyPlayerView;->g:Lcom/mycompany/app/view/MyPlayerView$PlayerViewListener;

    .line 17
    .line 18
    if-nez v3, :cond_0

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    iput-boolean v2, v0, Lcom/mycompany/app/view/MyPlayerView;->p:Z

    .line 22
    .line 23
    invoke-virtual {v1}, Landroid/media/MediaPlayer;->getDuration()I

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    if-lez v1, :cond_1

    .line 28
    .line 29
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyPlayerView;->d()V

    .line 30
    .line 31
    .line 32
    :cond_1
    return-void

    .line 33
    :cond_2
    :goto_0
    iput-boolean v2, v0, Lcom/mycompany/app/view/MyPlayerView;->p:Z

    .line 34
    .line 35
    return-void
.end method
