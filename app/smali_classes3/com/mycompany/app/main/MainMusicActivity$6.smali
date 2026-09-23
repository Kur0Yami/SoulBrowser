.class Lcom/mycompany/app/main/MainMusicActivity$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


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
    iput-object p1, p0, Lcom/mycompany/app/main/MainMusicActivity$6;->c:Lcom/mycompany/app/main/MainMusicActivity;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onPrepared(Landroid/media/MediaPlayer;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/mycompany/app/main/MainMusicActivity$6;->c:Lcom/mycompany/app/main/MainMusicActivity;

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p1, Lcom/mycompany/app/main/MainMusicActivity;->s1:Z

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-virtual {p1, v0, v1}, Lcom/mycompany/app/main/MainMusicActivity;->z0(ZZ)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
