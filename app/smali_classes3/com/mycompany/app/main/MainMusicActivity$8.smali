.class Lcom/mycompany/app/main/MainMusicActivity$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/main/MainMusicActivity;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/main/MainMusicActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/main/MainMusicActivity$8;->c:Lcom/mycompany/app/main/MainMusicActivity;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onCompletion(Landroid/media/MediaPlayer;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/mycompany/app/main/MainMusicActivity$8;->c:Lcom/mycompany/app/main/MainMusicActivity;

    .line 2
    .line 3
    iget-object v0, p1, Lcom/mycompany/app/main/MainMusicActivity;->q1:Landroid/media/MediaPlayer;

    .line 4
    .line 5
    if-eqz v0, :cond_2

    .line 6
    .line 7
    iget-boolean v0, p1, Lcom/mycompany/app/main/MainMusicActivity;->s1:Z

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    goto :goto_1

    .line 12
    :cond_0
    const/4 v0, 0x1

    .line 13
    iput-boolean v0, p1, Lcom/mycompany/app/main/MainMusicActivity;->u1:Z

    .line 14
    .line 15
    const/4 v0, 0x0

    .line 16
    invoke-virtual {p1, v0, v0}, Lcom/mycompany/app/main/MainMusicActivity;->z0(ZZ)V

    .line 17
    .line 18
    .line 19
    iget-boolean v1, p1, Lcom/mycompany/app/main/MainMusicActivity;->s1:Z

    .line 20
    .line 21
    if-nez v1, :cond_1

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_1
    iput v0, p1, Lcom/mycompany/app/main/MainMusicActivity;->v1:I

    .line 25
    .line 26
    iget-object v1, p1, Lcom/mycompany/app/main/MainMusicActivity;->q1:Landroid/media/MediaPlayer;

    .line 27
    .line 28
    invoke-virtual {v1, v0}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 29
    .line 30
    .line 31
    :goto_0
    invoke-virtual {p1}, Lcom/mycompany/app/main/MainMusicActivity;->B0()V

    .line 32
    .line 33
    .line 34
    :cond_2
    :goto_1
    return-void
.end method
