.class Lcom/mycompany/app/video/VideoActivity$25;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


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
    iput-object p1, p0, Lcom/mycompany/app/video/VideoActivity$25;->c:Lcom/mycompany/app/video/VideoActivity;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/video/VideoActivity$25;->c:Lcom/mycompany/app/video/VideoActivity;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/video/VideoActivity;->K1:Lcom/mycompany/app/view/MySizeFrame;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget-boolean v1, v0, Lcom/mycompany/app/video/VideoActivity;->I2:Z

    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    if-eqz v1, :cond_1

    .line 12
    .line 13
    iput-boolean v1, v0, Lcom/mycompany/app/video/VideoActivity;->C2:Z

    .line 14
    .line 15
    iput-boolean v2, v0, Lcom/mycompany/app/video/VideoActivity;->I2:Z

    .line 16
    .line 17
    goto :goto_3

    .line 18
    :cond_1
    iget-object v1, v0, Lcom/mycompany/app/video/VideoActivity;->b2:Landroid/app/PictureInPictureParams$Builder;

    .line 19
    .line 20
    if-nez v1, :cond_4

    .line 21
    .line 22
    invoke-virtual {v0}, Lcom/mycompany/app/main/MainActivity;->a0()Landroid/view/View;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    if-nez v1, :cond_2

    .line 27
    .line 28
    move v1, v2

    .line 29
    goto :goto_0

    .line 30
    :cond_2
    invoke-virtual {v1}, Landroid/view/View;->hasWindowFocus()Z

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    :goto_0
    if-eqz v1, :cond_3

    .line 35
    .line 36
    goto :goto_1

    .line 37
    :cond_3
    move v1, v2

    .line 38
    goto :goto_2

    .line 39
    :cond_4
    :goto_1
    const/4 v1, 0x1

    .line 40
    :goto_2
    invoke-virtual {v0, v1}, Lcom/mycompany/app/video/VideoActivity;->M1(Z)V

    .line 41
    .line 42
    .line 43
    :goto_3
    iget v1, v0, Lcom/mycompany/app/video/VideoActivity;->G2:I

    .line 44
    .line 45
    if-lez v1, :cond_5

    .line 46
    .line 47
    invoke-virtual {v0, v1}, Lcom/mycompany/app/video/VideoActivity;->h(I)V

    .line 48
    .line 49
    .line 50
    iput v2, v0, Lcom/mycompany/app/video/VideoActivity;->G2:I

    .line 51
    .line 52
    :cond_5
    iget-boolean v1, v0, Lcom/mycompany/app/video/VideoActivity;->k2:Z

    .line 53
    .line 54
    if-eqz v1, :cond_7

    .line 55
    .line 56
    iget-object v1, v0, Lcom/mycompany/app/video/VideoActivity;->u2:Landroid/media/MediaPlayer;

    .line 57
    .line 58
    if-eqz v1, :cond_6

    .line 59
    .line 60
    invoke-virtual {v1}, Landroid/media/MediaPlayer;->getVideoWidth()I

    .line 61
    .line 62
    .line 63
    move-result v1

    .line 64
    if-eqz v1, :cond_6

    .line 65
    .line 66
    iget-object v1, v0, Lcom/mycompany/app/video/VideoActivity;->u2:Landroid/media/MediaPlayer;

    .line 67
    .line 68
    invoke-virtual {v1}, Landroid/media/MediaPlayer;->getVideoHeight()I

    .line 69
    .line 70
    .line 71
    move-result v1

    .line 72
    if-nez v1, :cond_7

    .line 73
    .line 74
    :cond_6
    invoke-virtual {v0, v2}, Lcom/mycompany/app/video/VideoActivity;->m1(Z)V

    .line 75
    .line 76
    .line 77
    :cond_7
    const/16 v1, 0x320

    .line 78
    .line 79
    invoke-static {v0, v1}, Lcom/mycompany/app/video/VideoActivity;->E0(Lcom/mycompany/app/video/VideoActivity;I)V

    .line 80
    .line 81
    .line 82
    return-void
.end method
