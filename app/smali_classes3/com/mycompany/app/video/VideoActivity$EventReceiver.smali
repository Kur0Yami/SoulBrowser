.class Lcom/mycompany/app/video/VideoActivity$EventReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mycompany/app/video/VideoActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "EventReceiver"
.end annotation


# instance fields
.field public final synthetic a:Lcom/mycompany/app/video/VideoActivity;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/video/VideoActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mycompany/app/video/VideoActivity$EventReceiver;->a:Lcom/mycompany/app/video/VideoActivity;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 1
    if-nez p2, :cond_0

    .line 2
    .line 3
    goto :goto_1

    .line 4
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    .line 12
    .line 13
    .line 14
    move-result p2

    .line 15
    const/4 v0, 0x0

    .line 16
    const/4 v1, -0x1

    .line 17
    sparse-switch p2, :sswitch_data_0

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :sswitch_0
    const-string p2, "net.kaki87.soul2.testing.ACTION_VIDEO_PLAY"

    .line 22
    .line 23
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    if-nez p1, :cond_1

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    const/4 v1, 0x3

    .line 31
    goto :goto_0

    .line 32
    :sswitch_1
    const-string p2, "net.kaki87.soul2.testing.ACTION_VIDEO_FRWD"

    .line 33
    .line 34
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    move-result p1

    .line 38
    if-nez p1, :cond_2

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_2
    const/4 v1, 0x2

    .line 42
    goto :goto_0

    .line 43
    :sswitch_2
    const-string p2, "net.kaki87.soul2.testing.ACTION_VIDEO_FFWD"

    .line 44
    .line 45
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    move-result p1

    .line 49
    if-nez p1, :cond_3

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_3
    const/4 v1, 0x1

    .line 53
    goto :goto_0

    .line 54
    :sswitch_3
    const-string p2, "net.kaki87.soul2.testing.ACTION_MUSIC_PAUSE"

    .line 55
    .line 56
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 57
    .line 58
    .line 59
    move-result p1

    .line 60
    if-nez p1, :cond_4

    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_4
    move v1, v0

    .line 64
    :goto_0
    iget-object p1, p0, Lcom/mycompany/app/video/VideoActivity$EventReceiver;->a:Lcom/mycompany/app/video/VideoActivity;

    .line 65
    .line 66
    packed-switch v1, :pswitch_data_0

    .line 67
    .line 68
    .line 69
    :goto_1
    return-void

    .line 70
    :pswitch_0
    sget p2, Lcom/mycompany/app/video/VideoActivity;->r4:I

    .line 71
    .line 72
    invoke-virtual {p1}, Lcom/mycompany/app/video/VideoActivity;->N1()V

    .line 73
    .line 74
    .line 75
    return-void

    .line 76
    :pswitch_1
    invoke-static {p1}, Lcom/mycompany/app/video/VideoActivity;->I0(Lcom/mycompany/app/video/VideoActivity;)V

    .line 77
    .line 78
    .line 79
    return-void

    .line 80
    :pswitch_2
    invoke-static {p1}, Lcom/mycompany/app/video/VideoActivity;->H0(Lcom/mycompany/app/video/VideoActivity;)V

    .line 81
    .line 82
    .line 83
    return-void

    .line 84
    :pswitch_3
    iget-boolean p2, p1, Lcom/mycompany/app/video/VideoActivity;->h3:Z

    .line 85
    .line 86
    if-eqz p2, :cond_5

    .line 87
    .line 88
    iput-boolean v0, p1, Lcom/mycompany/app/video/VideoActivity;->h3:Z

    .line 89
    .line 90
    return-void

    .line 91
    :cond_5
    invoke-virtual {p1}, Lcom/mycompany/app/video/VideoActivity;->c()V

    .line 92
    .line 93
    .line 94
    return-void

    .line 95
    :sswitch_data_0
    .sparse-switch
        -0x54e7ea16 -> :sswitch_3
        0x70770863 -> :sswitch_2
        0x7077356f -> :sswitch_1
        0x707ba80a -> :sswitch_0
    .end sparse-switch

    .line 96
    .line 97
    .line 98
    .line 99
    .line 100
    .line 101
    .line 102
    .line 103
    .line 104
    .line 105
    .line 106
    .line 107
    .line 108
    .line 109
    .line 110
    .line 111
    .line 112
    .line 113
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
