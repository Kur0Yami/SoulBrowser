.class Lcom/mycompany/app/main/MainMusicActivity$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaPlayer$OnSeekCompleteListener;


# instance fields
.field public final synthetic a:Lcom/mycompany/app/main/MainMusicActivity;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/main/MainMusicActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/main/MainMusicActivity$7;->a:Lcom/mycompany/app/main/MainMusicActivity;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onSeekComplete(Landroid/media/MediaPlayer;)V
    .locals 2

    .line 1
    const/4 p1, -0x1

    .line 2
    iget-object v0, p0, Lcom/mycompany/app/main/MainMusicActivity$7;->a:Lcom/mycompany/app/main/MainMusicActivity;

    .line 3
    .line 4
    iput p1, v0, Lcom/mycompany/app/main/MainMusicActivity;->v1:I

    .line 5
    .line 6
    const/4 p1, 0x1

    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-virtual {v0, p1, v1}, Lcom/mycompany/app/main/MainMusicActivity;->z0(ZZ)V

    .line 9
    .line 10
    .line 11
    return-void
.end method
