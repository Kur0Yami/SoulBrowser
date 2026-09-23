.class Lcom/mycompany/app/main/MainDownSvc$EventReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mycompany/app/main/MainDownSvc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "EventReceiver"
.end annotation


# instance fields
.field public final synthetic a:Lcom/mycompany/app/main/MainDownSvc;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/main/MainDownSvc;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mycompany/app/main/MainDownSvc$EventReceiver;->a:Lcom/mycompany/app/main/MainDownSvc;

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
    .locals 7

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
    move-result v0

    .line 16
    const/4 v1, 0x2

    .line 17
    const/4 v2, 0x1

    .line 18
    const/4 v3, 0x0

    .line 19
    const/4 v4, -0x1

    .line 20
    sparse-switch v0, :sswitch_data_0

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :sswitch_0
    const-string v0, "net.kaki87.soul2.testing.ACTION_DOWN_EXIT"

    .line 25
    .line 26
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

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
    const/4 v4, 0x6

    .line 34
    goto :goto_0

    .line 35
    :sswitch_1
    const-string v0, "net.kaki87.soul2.testing.ACTION_DOWN_RETRY"

    .line 36
    .line 37
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

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
    const/4 v4, 0x5

    .line 45
    goto :goto_0

    .line 46
    :sswitch_2
    const-string v0, "net.kaki87.soul2.testing.ACTION_DOWN_PAUSE"

    .line 47
    .line 48
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

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
    const/4 v4, 0x4

    .line 56
    goto :goto_0

    .line 57
    :sswitch_3
    const-string v0, "net.kaki87.soul2.testing.ACTION_IMAGE_CANCEL"

    .line 58
    .line 59
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

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
    const/4 v4, 0x3

    .line 67
    goto :goto_0

    .line 68
    :sswitch_4
    const-string v0, "net.kaki87.soul2.testing.ACTION_DOWN_CANCEL"

    .line 69
    .line 70
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 71
    .line 72
    .line 73
    move-result p1

    .line 74
    if-nez p1, :cond_5

    .line 75
    .line 76
    goto :goto_0

    .line 77
    :cond_5
    move v4, v1

    .line 78
    goto :goto_0

    .line 79
    :sswitch_5
    const-string v0, "android.intent.action.SCREEN_ON"

    .line 80
    .line 81
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 82
    .line 83
    .line 84
    move-result p1

    .line 85
    if-nez p1, :cond_6

    .line 86
    .line 87
    goto :goto_0

    .line 88
    :cond_6
    move v4, v2

    .line 89
    goto :goto_0

    .line 90
    :sswitch_6
    const-string v0, "android.intent.action.SCREEN_OFF"

    .line 91
    .line 92
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 93
    .line 94
    .line 95
    move-result p1

    .line 96
    if-nez p1, :cond_7

    .line 97
    .line 98
    goto :goto_0

    .line 99
    :cond_7
    move v4, v3

    .line 100
    :goto_0
    const-string p1, "EXTRA_ID"

    .line 101
    .line 102
    const-wide/16 v5, -0x1

    .line 103
    .line 104
    iget-object v0, p0, Lcom/mycompany/app/main/MainDownSvc$EventReceiver;->a:Lcom/mycompany/app/main/MainDownSvc;

    .line 105
    .line 106
    packed-switch v4, :pswitch_data_0

    .line 107
    .line 108
    .line 109
    goto/16 :goto_1

    .line 110
    .line 111
    :pswitch_0
    iget-boolean p1, v0, Lcom/mycompany/app/main/MainDownSvc;->m:Z

    .line 112
    .line 113
    if-eqz p1, :cond_8

    .line 114
    .line 115
    goto :goto_1

    .line 116
    :cond_8
    new-instance p1, Lcom/mycompany/app/main/MainDownSvc$EventReceiver$4;

    .line 117
    .line 118
    invoke-direct {p1, p0}, Lcom/mycompany/app/main/MainDownSvc$EventReceiver$4;-><init>(Lcom/mycompany/app/main/MainDownSvc$EventReceiver;)V

    .line 119
    .line 120
    .line 121
    invoke-virtual {v0, p1}, Lcom/mycompany/app/main/MainDownSvc;->F(Ljava/lang/Runnable;)V

    .line 122
    .line 123
    .line 124
    return-void

    .line 125
    :pswitch_1
    invoke-virtual {p2, p1, v5, v6}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    .line 126
    .line 127
    .line 128
    move-result-wide p1

    .line 129
    cmp-long v1, p1, v5

    .line 130
    .line 131
    if-nez v1, :cond_9

    .line 132
    .line 133
    goto :goto_1

    .line 134
    :cond_9
    new-instance v1, Lcom/mycompany/app/main/MainDownSvc$EventReceiver$2;

    .line 135
    .line 136
    invoke-direct {v1, p0, p1, p2}, Lcom/mycompany/app/main/MainDownSvc$EventReceiver$2;-><init>(Lcom/mycompany/app/main/MainDownSvc$EventReceiver;J)V

    .line 137
    .line 138
    .line 139
    sget p1, Lcom/mycompany/app/main/MainDownSvc;->V:I

    .line 140
    .line 141
    invoke-virtual {v0, v1}, Lcom/mycompany/app/main/MainDownSvc;->F(Ljava/lang/Runnable;)V

    .line 142
    .line 143
    .line 144
    return-void

    .line 145
    :pswitch_2
    invoke-virtual {p2, p1, v5, v6}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    .line 146
    .line 147
    .line 148
    move-result-wide v1

    .line 149
    cmp-long p1, v1, v5

    .line 150
    .line 151
    if-nez p1, :cond_a

    .line 152
    .line 153
    goto :goto_1

    .line 154
    :cond_a
    const-string p1, "pause"

    .line 155
    .line 156
    invoke-virtual {p2, p1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 157
    .line 158
    .line 159
    move-result p1

    .line 160
    new-instance p2, Lcom/mycompany/app/main/MainDownSvc$EventReceiver$1;

    .line 161
    .line 162
    invoke-direct {p2, p0, v1, v2, p1}, Lcom/mycompany/app/main/MainDownSvc$EventReceiver$1;-><init>(Lcom/mycompany/app/main/MainDownSvc$EventReceiver;JZ)V

    .line 163
    .line 164
    .line 165
    sget p1, Lcom/mycompany/app/main/MainDownSvc;->V:I

    .line 166
    .line 167
    invoke-virtual {v0, p2}, Lcom/mycompany/app/main/MainDownSvc;->F(Ljava/lang/Runnable;)V

    .line 168
    .line 169
    .line 170
    return-void

    .line 171
    :pswitch_3
    new-instance p1, Lcom/mycompany/app/main/MainDownSvc$EventReceiver$5;

    .line 172
    .line 173
    invoke-direct {p1, p0}, Lcom/mycompany/app/main/MainDownSvc$EventReceiver$5;-><init>(Lcom/mycompany/app/main/MainDownSvc$EventReceiver;)V

    .line 174
    .line 175
    .line 176
    sget p2, Lcom/mycompany/app/main/MainDownSvc;->V:I

    .line 177
    .line 178
    invoke-virtual {v0, p1}, Lcom/mycompany/app/main/MainDownSvc;->F(Ljava/lang/Runnable;)V

    .line 179
    .line 180
    .line 181
    return-void

    .line 182
    :pswitch_4
    invoke-virtual {p2, p1, v5, v6}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    .line 183
    .line 184
    .line 185
    move-result-wide v1

    .line 186
    cmp-long p1, v1, v5

    .line 187
    .line 188
    if-nez p1, :cond_b

    .line 189
    .line 190
    goto :goto_1

    .line 191
    :cond_b
    const-string p1, "EXTRA_PATH"

    .line 192
    .line 193
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 194
    .line 195
    .line 196
    move-result-object v6

    .line 197
    const-string p1, "EXTRA_STOP"

    .line 198
    .line 199
    invoke-virtual {p2, p1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 200
    .line 201
    .line 202
    move-result v3

    .line 203
    move-wide v4, v1

    .line 204
    new-instance v1, Lcom/mycompany/app/main/MainDownSvc$EventReceiver$3;

    .line 205
    .line 206
    move-object v2, p0

    .line 207
    invoke-direct/range {v1 .. v6}, Lcom/mycompany/app/main/MainDownSvc$EventReceiver$3;-><init>(Lcom/mycompany/app/main/MainDownSvc$EventReceiver;ZJLjava/lang/String;)V

    .line 208
    .line 209
    .line 210
    sget p1, Lcom/mycompany/app/main/MainDownSvc;->V:I

    .line 211
    .line 212
    invoke-virtual {v0, v1}, Lcom/mycompany/app/main/MainDownSvc;->F(Ljava/lang/Runnable;)V

    .line 213
    .line 214
    .line 215
    return-void

    .line 216
    :pswitch_5
    iput v2, v0, Lcom/mycompany/app/main/MainDownSvc;->y:I

    .line 217
    .line 218
    invoke-virtual {v0}, Lcom/mycompany/app/main/MainDownSvc;->Z()Z

    .line 219
    .line 220
    .line 221
    move-result p1

    .line 222
    if-eqz p1, :cond_c

    .line 223
    .line 224
    :goto_1
    return-void

    .line 225
    :cond_c
    invoke-virtual {v0, v2}, Lcom/mycompany/app/main/MainDownSvc;->h(Z)V

    .line 226
    .line 227
    .line 228
    return-void

    .line 229
    :pswitch_6
    iput v1, v0, Lcom/mycompany/app/main/MainDownSvc;->y:I

    .line 230
    .line 231
    return-void

    .line 232
    nop

    .line 233
    :sswitch_data_0
    .sparse-switch
        -0x7ed8ea7f -> :sswitch_6
        -0x5fb8db17 -> :sswitch_0
        -0x599a307b -> :sswitch_4
        -0x56ac2893 -> :sswitch_5
        0x55db98f0 -> :sswitch_3
        0x692e336b -> :sswitch_2
        0x694c301d -> :sswitch_1
    .end sparse-switch

    .line 234
    .line 235
    .line 236
    .line 237
    .line 238
    .line 239
    .line 240
    .line 241
    .line 242
    .line 243
    .line 244
    .line 245
    .line 246
    .line 247
    .line 248
    .line 249
    .line 250
    .line 251
    .line 252
    .line 253
    .line 254
    .line 255
    .line 256
    .line 257
    .line 258
    .line 259
    .line 260
    .line 261
    .line 262
    .line 263
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
