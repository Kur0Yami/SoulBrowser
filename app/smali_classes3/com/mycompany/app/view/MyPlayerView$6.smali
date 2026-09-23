.class Lcom/mycompany/app/view/MyPlayerView$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;


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
    iput-object p1, p0, Lcom/mycompany/app/view/MyPlayerView$6;->c:Lcom/mycompany/app/view/MyPlayerView;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onError(Landroid/media/MediaPlayer;II)Z
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/mycompany/app/view/MyPlayerView$6;->c:Lcom/mycompany/app/view/MyPlayerView;

    .line 2
    .line 3
    iget-object p2, p1, Lcom/mycompany/app/view/MyPlayerView;->m:Landroid/media/MediaPlayer;

    .line 4
    .line 5
    if-nez p2, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    iget-object p2, p1, Lcom/mycompany/app/view/MyPlayerView;->c:Landroid/content/Context;

    .line 9
    .line 10
    new-instance p3, Lcom/mycompany/app/view/MyPlayerView$10;

    .line 11
    .line 12
    invoke-direct {p3, p1}, Lcom/mycompany/app/view/MyPlayerView$10;-><init>(Lcom/mycompany/app/view/MyPlayerView;)V

    .line 13
    .line 14
    .line 15
    invoke-static {p2, p3}, Lcom/mycompany/app/main/MainApp;->J(Landroid/content/Context;Ljava/lang/Runnable;)V

    .line 16
    .line 17
    .line 18
    :goto_0
    const/4 p1, 0x1

    .line 19
    return p1
.end method
