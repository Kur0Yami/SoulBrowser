.class Lcom/mycompany/app/video/VideoActivity$20;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaPlayer$OnSeekCompleteListener;


# instance fields
.field public final synthetic a:Lcom/mycompany/app/video/VideoActivity;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/video/VideoActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/video/VideoActivity$20;->a:Lcom/mycompany/app/video/VideoActivity;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onSeekComplete(Landroid/media/MediaPlayer;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/mycompany/app/video/VideoActivity$20;->a:Lcom/mycompany/app/video/VideoActivity;

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p1, Lcom/mycompany/app/video/VideoActivity;->x2:Z

    .line 5
    .line 6
    iget-boolean v1, p1, Lcom/mycompany/app/video/VideoActivity;->C2:Z

    .line 7
    .line 8
    const/4 v2, -0x1

    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    iget v1, p1, Lcom/mycompany/app/video/VideoActivity;->E2:I

    .line 12
    .line 13
    if-eq v1, v2, :cond_0

    .line 14
    .line 15
    const/4 v1, 0x0

    .line 16
    invoke-virtual {p1, v1}, Lcom/mycompany/app/video/VideoActivity;->m1(Z)V

    .line 17
    .line 18
    .line 19
    :cond_0
    iput v2, p1, Lcom/mycompany/app/video/VideoActivity;->E2:I

    .line 20
    .line 21
    invoke-virtual {p1, v0}, Lcom/mycompany/app/video/VideoActivity;->M1(Z)V

    .line 22
    .line 23
    .line 24
    const/16 v0, 0x190

    .line 25
    .line 26
    invoke-static {p1, v0}, Lcom/mycompany/app/video/VideoActivity;->E0(Lcom/mycompany/app/video/VideoActivity;I)V

    .line 27
    .line 28
    .line 29
    return-void
.end method
