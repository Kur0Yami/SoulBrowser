.class Lcom/mycompany/app/video/VideoAudio$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaPlayer$OnSeekCompleteListener;


# instance fields
.field public final synthetic a:Lcom/mycompany/app/video/VideoAudio;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/video/VideoAudio;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/video/VideoAudio$2;->a:Lcom/mycompany/app/video/VideoAudio;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onSeekComplete(Landroid/media/MediaPlayer;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/mycompany/app/video/VideoAudio$2;->a:Lcom/mycompany/app/video/VideoAudio;

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    invoke-virtual {p1, v0}, Lcom/mycompany/app/video/VideoAudio;->a(Z)V

    .line 5
    .line 6
    .line 7
    return-void
.end method
