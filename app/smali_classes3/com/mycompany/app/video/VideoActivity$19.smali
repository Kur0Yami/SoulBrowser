.class Lcom/mycompany/app/video/VideoActivity$19;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/video/VideoActivity;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/video/VideoActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/video/VideoActivity$19;->c:Lcom/mycompany/app/video/VideoActivity;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onPrepared(Landroid/media/MediaPlayer;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/mycompany/app/video/VideoActivity$19;->c:Lcom/mycompany/app/video/VideoActivity;

    .line 2
    .line 3
    iget-object v0, p1, Lcom/mycompany/app/video/VideoActivity;->u2:Landroid/media/MediaPlayer;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 v1, 0x1

    .line 9
    iput-boolean v1, p1, Lcom/mycompany/app/video/VideoActivity;->w2:Z

    .line 10
    .line 11
    iput-boolean v1, p1, Lcom/mycompany/app/video/VideoActivity;->x2:Z

    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-gez v0, :cond_1

    .line 18
    .line 19
    const/4 v0, 0x0

    .line 20
    :cond_1
    iput v0, p1, Lcom/mycompany/app/video/VideoActivity;->D2:I

    .line 21
    .line 22
    iget-boolean v0, p1, Lcom/mycompany/app/video/VideoActivity;->y2:Z

    .line 23
    .line 24
    if-eqz v0, :cond_2

    .line 25
    .line 26
    new-instance v0, Lcom/mycompany/app/video/VideoActivity$19$1;

    .line 27
    .line 28
    invoke-direct {v0, p0}, Lcom/mycompany/app/video/VideoActivity$19$1;-><init>(Lcom/mycompany/app/video/VideoActivity$19;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1, v0}, Lcom/mycompany/app/main/MainActivity;->m0(Ljava/lang/Runnable;)V

    .line 32
    .line 33
    .line 34
    return-void

    .line 35
    :cond_2
    iget-object v0, p1, Lcom/mycompany/app/video/VideoActivity;->K1:Lcom/mycompany/app/view/MySizeFrame;

    .line 36
    .line 37
    if-nez v0, :cond_3

    .line 38
    .line 39
    :goto_0
    return-void

    .line 40
    :cond_3
    new-instance v1, Lcom/mycompany/app/video/VideoActivity$25;

    .line 41
    .line 42
    invoke-direct {v1, p1}, Lcom/mycompany/app/video/VideoActivity$25;-><init>(Lcom/mycompany/app/video/VideoActivity;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 46
    .line 47
    .line 48
    return-void
.end method
