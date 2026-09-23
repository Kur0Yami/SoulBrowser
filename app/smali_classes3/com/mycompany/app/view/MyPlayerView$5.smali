.class Lcom/mycompany/app/view/MyPlayerView$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


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
    iput-object p1, p0, Lcom/mycompany/app/view/MyPlayerView$5;->c:Lcom/mycompany/app/view/MyPlayerView;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onCompletion(Landroid/media/MediaPlayer;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/mycompany/app/view/MyPlayerView$5;->c:Lcom/mycompany/app/view/MyPlayerView;

    .line 2
    .line 3
    iget-object v0, p1, Lcom/mycompany/app/view/MyPlayerView;->h:Landroid/net/Uri;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget-object v0, p1, Lcom/mycompany/app/view/MyPlayerView;->m:Landroid/media/MediaPlayer;

    .line 9
    .line 10
    if-nez v0, :cond_1

    .line 11
    .line 12
    invoke-virtual {p1}, Lcom/mycompany/app/view/MyPlayerView;->d()V

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :cond_1
    const/4 v0, 0x0

    .line 17
    iput-boolean v0, p1, Lcom/mycompany/app/view/MyPlayerView;->o:Z

    .line 18
    .line 19
    iput-boolean v0, p1, Lcom/mycompany/app/view/MyPlayerView;->p:Z

    .line 20
    .line 21
    iput-boolean v0, p1, Lcom/mycompany/app/view/MyPlayerView;->q:Z

    .line 22
    .line 23
    const/4 v0, -0x1

    .line 24
    iput v0, p1, Lcom/mycompany/app/view/MyPlayerView;->r:I

    .line 25
    .line 26
    iget-object v0, p1, Lcom/mycompany/app/view/MyPlayerView;->g:Lcom/mycompany/app/view/MyPlayerView$PlayerViewListener;

    .line 27
    .line 28
    if-nez v0, :cond_2

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_2
    const/4 v1, 0x1

    .line 32
    invoke-interface {v0, v1}, Lcom/mycompany/app/view/MyPlayerView$PlayerViewListener;->b(Z)V

    .line 33
    .line 34
    .line 35
    :goto_0
    iget-object v0, p1, Lcom/mycompany/app/view/MyPlayerView;->c:Landroid/content/Context;

    .line 36
    .line 37
    new-instance v1, Lcom/mycompany/app/view/MyPlayerView$7;

    .line 38
    .line 39
    invoke-direct {v1, p1}, Lcom/mycompany/app/view/MyPlayerView$7;-><init>(Lcom/mycompany/app/view/MyPlayerView;)V

    .line 40
    .line 41
    .line 42
    invoke-static {v0, v1}, Lcom/mycompany/app/main/MainApp;->J(Landroid/content/Context;Ljava/lang/Runnable;)V

    .line 43
    .line 44
    .line 45
    return-void
.end method
