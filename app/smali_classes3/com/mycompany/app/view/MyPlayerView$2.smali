.class Lcom/mycompany/app/view/MyPlayerView$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


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
    iput-object p1, p0, Lcom/mycompany/app/view/MyPlayerView$2;->c:Lcom/mycompany/app/view/MyPlayerView;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onPrepared(Landroid/media/MediaPlayer;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/mycompany/app/view/MyPlayerView$2;->c:Lcom/mycompany/app/view/MyPlayerView;

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p1, Lcom/mycompany/app/view/MyPlayerView;->o:Z

    .line 5
    .line 6
    iput-boolean v0, p1, Lcom/mycompany/app/view/MyPlayerView;->p:Z

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    invoke-virtual {p1, v0, v1}, Lcom/mycompany/app/view/MyPlayerView;->f(ZZ)V

    .line 10
    .line 11
    .line 12
    const/16 v0, 0x320

    .line 13
    .line 14
    invoke-static {p1, v0}, Lcom/mycompany/app/view/MyPlayerView;->a(Lcom/mycompany/app/view/MyPlayerView;I)V

    .line 15
    .line 16
    .line 17
    return-void
.end method
