.class Lcom/mycompany/app/web/WebVideoPip$EventReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mycompany/app/web/WebVideoPip;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "EventReceiver"
.end annotation


# instance fields
.field public final synthetic a:Lcom/mycompany/app/web/WebVideoPip;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/web/WebVideoPip;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mycompany/app/web/WebVideoPip$EventReceiver;->a:Lcom/mycompany/app/web/WebVideoPip;

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
    .locals 4

    .line 1
    if-nez p2, :cond_0

    .line 2
    .line 3
    goto/16 :goto_1

    .line 4
    .line 5
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    .line 13
    .line 14
    .line 15
    move-result p2

    .line 16
    const/4 v0, 0x3

    .line 17
    const/4 v1, 0x2

    .line 18
    const/4 v2, 0x1

    .line 19
    const/4 v3, -0x1

    .line 20
    sparse-switch p2, :sswitch_data_0

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :sswitch_0
    const-string p2, "net.kaki87.soul2.testing.ACTION_VIDEO_PLAY"

    .line 25
    .line 26
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    if-nez p1, :cond_1

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_1
    move v3, v0

    .line 34
    goto :goto_0

    .line 35
    :sswitch_1
    const-string p2, "net.kaki87.soul2.testing.ACTION_VIDEO_FRWD"

    .line 36
    .line 37
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result p1

    .line 41
    if-nez p1, :cond_2

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_2
    move v3, v1

    .line 45
    goto :goto_0

    .line 46
    :sswitch_2
    const-string p2, "net.kaki87.soul2.testing.ACTION_VIDEO_FFWD"

    .line 47
    .line 48
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    move-result p1

    .line 52
    if-nez p1, :cond_3

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_3
    move v3, v2

    .line 56
    goto :goto_0

    .line 57
    :sswitch_3
    const-string p2, "net.kaki87.soul2.testing.ACTION_MUSIC_PAUSE"

    .line 58
    .line 59
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    move-result p1

    .line 63
    if-nez p1, :cond_4

    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_4
    const/4 v3, 0x0

    .line 67
    :goto_0
    const-string p1, "(function(){var ele=document.querySelector(\"iframe[id=\'ytplayer\']\");if(ele){ele=ele.contentDocument.querySelector(\'video\');}if(ele){ele.pause();}})();"

    .line 68
    .line 69
    iget-object p2, p0, Lcom/mycompany/app/web/WebVideoPip$EventReceiver;->a:Lcom/mycompany/app/web/WebVideoPip;

    .line 70
    .line 71
    packed-switch v3, :pswitch_data_0

    .line 72
    .line 73
    .line 74
    goto :goto_1

    .line 75
    :pswitch_0
    sget v3, Lcom/mycompany/app/web/WebVideoPip;->B:I

    .line 76
    .line 77
    iget v3, p2, Lcom/mycompany/app/web/WebVideoPip;->r:I

    .line 78
    .line 79
    if-ne v3, v1, :cond_7

    .line 80
    .line 81
    if-eqz v3, :cond_10

    .line 82
    .line 83
    if-ne v3, v0, :cond_5

    .line 84
    .line 85
    goto :goto_1

    .line 86
    :cond_5
    iget-object p2, p2, Lcom/mycompany/app/web/WebVideoPip;->m:Lcom/mycompany/app/view/MyWebSafe;

    .line 87
    .line 88
    if-nez p2, :cond_6

    .line 89
    .line 90
    goto :goto_1

    .line 91
    :cond_6
    invoke-static {p2, p1, v2}, Lcom/mycompany/app/main/MainUtil;->J(Landroid/webkit/WebView;Ljava/lang/String;Z)V

    .line 92
    .line 93
    .line 94
    return-void

    .line 95
    :cond_7
    if-eqz v3, :cond_10

    .line 96
    .line 97
    if-ne v3, v1, :cond_8

    .line 98
    .line 99
    goto :goto_1

    .line 100
    :cond_8
    iget-object p1, p2, Lcom/mycompany/app/web/WebVideoPip;->m:Lcom/mycompany/app/view/MyWebSafe;

    .line 101
    .line 102
    if-nez p1, :cond_9

    .line 103
    .line 104
    goto :goto_1

    .line 105
    :cond_9
    const-string p2, "(function(){var ele=document.querySelector(\"iframe[id=\'ytplayer\']\");if(ele){ele=ele.contentDocument.querySelector(\'video\');}if(ele){ele.play();}})();"

    .line 106
    .line 107
    invoke-static {p1, p2, v2}, Lcom/mycompany/app/main/MainUtil;->J(Landroid/webkit/WebView;Ljava/lang/String;Z)V

    .line 108
    .line 109
    .line 110
    return-void

    .line 111
    :pswitch_1
    iget p1, p2, Lcom/mycompany/app/web/WebVideoPip;->r:I

    .line 112
    .line 113
    if-nez p1, :cond_a

    .line 114
    .line 115
    goto :goto_1

    .line 116
    :cond_a
    iget-object p1, p2, Lcom/mycompany/app/web/WebVideoPip;->m:Lcom/mycompany/app/view/MyWebSafe;

    .line 117
    .line 118
    if-nez p1, :cond_b

    .line 119
    .line 120
    goto :goto_1

    .line 121
    :cond_b
    const-string p2, "(function(){var ele=document.querySelector(\"iframe[id=\'ytplayer\']\");if(ele){ele=ele.contentDocument.querySelector(\'video\');}if(ele){var pos=ele.currentTime;if(pos>10){ele.currentTime=pos-10;}else{ele.currentTime=0;}}})();"

    .line 122
    .line 123
    invoke-static {p1, p2, v2}, Lcom/mycompany/app/main/MainUtil;->J(Landroid/webkit/WebView;Ljava/lang/String;Z)V

    .line 124
    .line 125
    .line 126
    return-void

    .line 127
    :pswitch_2
    iget p1, p2, Lcom/mycompany/app/web/WebVideoPip;->r:I

    .line 128
    .line 129
    if-nez p1, :cond_c

    .line 130
    .line 131
    goto :goto_1

    .line 132
    :cond_c
    iget-object p1, p2, Lcom/mycompany/app/web/WebVideoPip;->m:Lcom/mycompany/app/view/MyWebSafe;

    .line 133
    .line 134
    if-nez p1, :cond_d

    .line 135
    .line 136
    goto :goto_1

    .line 137
    :cond_d
    const-string p2, "(function(){var ele=document.querySelector(\"iframe[id=\'ytplayer\']\");if(ele){ele=ele.contentDocument.querySelector(\'video\');}if(ele){var pos=ele.currentTime;if(pos+10<ele.duration){ele.currentTime=pos+10;}else{ele.currentTime=ele.duration;}}})();"

    .line 138
    .line 139
    invoke-static {p1, p2, v2}, Lcom/mycompany/app/main/MainUtil;->J(Landroid/webkit/WebView;Ljava/lang/String;Z)V

    .line 140
    .line 141
    .line 142
    return-void

    .line 143
    :pswitch_3
    iget v1, p2, Lcom/mycompany/app/web/WebVideoPip;->r:I

    .line 144
    .line 145
    if-eqz v1, :cond_10

    .line 146
    .line 147
    if-ne v1, v0, :cond_e

    .line 148
    .line 149
    goto :goto_1

    .line 150
    :cond_e
    iget-object p2, p2, Lcom/mycompany/app/web/WebVideoPip;->m:Lcom/mycompany/app/view/MyWebSafe;

    .line 151
    .line 152
    if-nez p2, :cond_f

    .line 153
    .line 154
    goto :goto_1

    .line 155
    :cond_f
    invoke-static {p2, p1, v2}, Lcom/mycompany/app/main/MainUtil;->J(Landroid/webkit/WebView;Ljava/lang/String;Z)V

    .line 156
    .line 157
    .line 158
    :cond_10
    :goto_1
    return-void

    .line 159
    :sswitch_data_0
    .sparse-switch
        -0x54e7ea16 -> :sswitch_3
        0x70770863 -> :sswitch_2
        0x7077356f -> :sswitch_1
        0x707ba80a -> :sswitch_0
    .end sparse-switch

    .line 160
    .line 161
    .line 162
    .line 163
    .line 164
    .line 165
    .line 166
    .line 167
    .line 168
    .line 169
    .line 170
    .line 171
    .line 172
    .line 173
    .line 174
    .line 175
    .line 176
    .line 177
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
