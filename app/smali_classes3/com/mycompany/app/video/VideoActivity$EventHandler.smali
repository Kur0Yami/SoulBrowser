.class Lcom/mycompany/app/video/VideoActivity$EventHandler;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mycompany/app/video/VideoActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EventHandler"
.end annotation


# instance fields
.field public final a:Ljava/lang/ref/WeakReference;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/video/VideoActivity;)V
    .locals 1

    .line 1
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 6
    .line 7
    .line 8
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 9
    .line 10
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Lcom/mycompany/app/video/VideoActivity$EventHandler;->a:Ljava/lang/ref/WeakReference;

    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/video/VideoActivity$EventHandler;->a:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/mycompany/app/video/VideoActivity;

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    goto/16 :goto_0

    .line 12
    .line 13
    :cond_0
    iget p1, p1, Landroid/os/Message;->what:I

    .line 14
    .line 15
    if-eqz p1, :cond_1

    .line 16
    .line 17
    goto/16 :goto_0

    .line 18
    .line 19
    :cond_1
    iget-object p1, v0, Lcom/mycompany/app/video/VideoActivity;->N3:Lcom/mycompany/app/video/VideoActivity$EventHandler;

    .line 20
    .line 21
    if-nez p1, :cond_2

    .line 22
    .line 23
    goto/16 :goto_0

    .line 24
    .line 25
    :cond_2
    const/4 v1, 0x0

    .line 26
    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 27
    .line 28
    .line 29
    iget-object p1, v0, Lcom/mycompany/app/video/VideoActivity;->u2:Landroid/media/MediaPlayer;

    .line 30
    .line 31
    if-eqz p1, :cond_a

    .line 32
    .line 33
    iget-object p1, v0, Lcom/mycompany/app/video/VideoActivity;->D3:Lcom/mycompany/app/video/VideoSubLayout;

    .line 34
    .line 35
    if-nez p1, :cond_3

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_3
    iget-boolean v2, v0, Lcom/mycompany/app/video/VideoActivity;->w2:Z

    .line 39
    .line 40
    if-nez v2, :cond_4

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    .line 44
    .line 45
    .line 46
    move-result p1

    .line 47
    const/16 v2, 0x8

    .line 48
    .line 49
    if-ne p1, v2, :cond_5

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_5
    invoke-virtual {v0}, Lcom/mycompany/app/video/VideoActivity;->a1()Z

    .line 53
    .line 54
    .line 55
    move-result p1

    .line 56
    if-nez p1, :cond_6

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_6
    iget-object p1, v0, Lcom/mycompany/app/video/VideoActivity;->L1:Landroid/view/TextureView;

    .line 60
    .line 61
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    .line 62
    .line 63
    .line 64
    move-result p1

    .line 65
    const-wide/16 v2, 0x64

    .line 66
    .line 67
    const/4 v4, 0x0

    .line 68
    if-eqz p1, :cond_7

    .line 69
    .line 70
    iget-object p1, v0, Lcom/mycompany/app/video/VideoActivity;->D3:Lcom/mycompany/app/video/VideoSubLayout;

    .line 71
    .line 72
    invoke-virtual {p1, v4}, Lcom/mycompany/app/video/VideoSubLayout;->setText(Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    iget-object p1, v0, Lcom/mycompany/app/video/VideoActivity;->u2:Landroid/media/MediaPlayer;

    .line 76
    .line 77
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->isPlaying()Z

    .line 78
    .line 79
    .line 80
    move-result p1

    .line 81
    if-eqz p1, :cond_a

    .line 82
    .line 83
    iget-object p1, v0, Lcom/mycompany/app/video/VideoActivity;->N3:Lcom/mycompany/app/video/VideoActivity$EventHandler;

    .line 84
    .line 85
    invoke-virtual {p1, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 86
    .line 87
    .line 88
    return-void

    .line 89
    :cond_7
    iget p1, v0, Lcom/mycompany/app/video/VideoActivity;->L3:I

    .line 90
    .line 91
    invoke-virtual {v0}, Lcom/mycompany/app/video/VideoActivity;->e()I

    .line 92
    .line 93
    .line 94
    move-result v5

    .line 95
    int-to-long v5, v5

    .line 96
    invoke-virtual {v0, p1, v5, v6}, Lcom/mycompany/app/video/VideoActivity;->V0(IJ)I

    .line 97
    .line 98
    .line 99
    move-result p1

    .line 100
    iput p1, v0, Lcom/mycompany/app/video/VideoActivity;->L3:I

    .line 101
    .line 102
    iget v5, v0, Lcom/mycompany/app/video/VideoActivity;->M3:I

    .line 103
    .line 104
    if-eq p1, v5, :cond_9

    .line 105
    .line 106
    invoke-virtual {v0, p1}, Lcom/mycompany/app/video/VideoActivity;->W0(I)Lcom/mycompany/app/subtitle/SubtitleItem;

    .line 107
    .line 108
    .line 109
    move-result-object p1

    .line 110
    iget-object v5, v0, Lcom/mycompany/app/video/VideoActivity;->D3:Lcom/mycompany/app/video/VideoSubLayout;

    .line 111
    .line 112
    if-eqz p1, :cond_8

    .line 113
    .line 114
    iget-object v4, p1, Lcom/mycompany/app/subtitle/SubtitleItem;->b:Ljava/lang/String;

    .line 115
    .line 116
    :cond_8
    invoke-virtual {v5, v4}, Lcom/mycompany/app/video/VideoSubLayout;->setText(Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    :cond_9
    iget p1, v0, Lcom/mycompany/app/video/VideoActivity;->L3:I

    .line 120
    .line 121
    iput p1, v0, Lcom/mycompany/app/video/VideoActivity;->M3:I

    .line 122
    .line 123
    iget-object p1, v0, Lcom/mycompany/app/video/VideoActivity;->u2:Landroid/media/MediaPlayer;

    .line 124
    .line 125
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->isPlaying()Z

    .line 126
    .line 127
    .line 128
    move-result p1

    .line 129
    if-eqz p1, :cond_a

    .line 130
    .line 131
    iget-object p1, v0, Lcom/mycompany/app/video/VideoActivity;->N3:Lcom/mycompany/app/video/VideoActivity$EventHandler;

    .line 132
    .line 133
    invoke-virtual {p1, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 134
    .line 135
    .line 136
    :cond_a
    :goto_0
    return-void
.end method
