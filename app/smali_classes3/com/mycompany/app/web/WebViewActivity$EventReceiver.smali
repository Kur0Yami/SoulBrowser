.class Lcom/mycompany/app/web/WebViewActivity$EventReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mycompany/app/web/WebViewActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "EventReceiver"
.end annotation


# instance fields
.field public final synthetic a:Lcom/mycompany/app/web/WebViewActivity;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/web/WebViewActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mycompany/app/web/WebViewActivity$EventReceiver;->a:Lcom/mycompany/app/web/WebViewActivity;

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
    .locals 3

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
    const/4 v1, 0x0

    .line 17
    const/4 v2, -0x1

    .line 18
    sparse-switch v0, :sswitch_data_0

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :sswitch_0
    const-string v0, "net.kaki87.soul2.testing.ACTION_PIP_PLAY"

    .line 23
    .line 24
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    if-nez p1, :cond_1

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    const/4 v2, 0x6

    .line 32
    goto :goto_0

    .line 33
    :sswitch_1
    const-string v0, "net.kaki87.soul2.testing.ACTION_PIP_FRWD"

    .line 34
    .line 35
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result p1

    .line 39
    if-nez p1, :cond_2

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_2
    const/4 v2, 0x5

    .line 43
    goto :goto_0

    .line 44
    :sswitch_2
    const-string v0, "net.kaki87.soul2.testing.ACTION_PIP_FFWD"

    .line 45
    .line 46
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    move-result p1

    .line 50
    if-nez p1, :cond_3

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_3
    const/4 v2, 0x4

    .line 54
    goto :goto_0

    .line 55
    :sswitch_3
    const-string v0, "net.kaki87.soul2.testing.ACTION_DOWN_COMPLETE"

    .line 56
    .line 57
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    move-result p1

    .line 61
    if-nez p1, :cond_4

    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_4
    const/4 v2, 0x3

    .line 65
    goto :goto_0

    .line 66
    :sswitch_4
    const-string v0, "net.kaki87.soul2.testing.ACTION_DOWN_DELETE"

    .line 67
    .line 68
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 69
    .line 70
    .line 71
    move-result p1

    .line 72
    if-nez p1, :cond_5

    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_5
    const/4 v2, 0x2

    .line 76
    goto :goto_0

    .line 77
    :sswitch_5
    const-string v0, "net.kaki87.soul2.testing.ACTION_SECRET_EXIT"

    .line 78
    .line 79
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 80
    .line 81
    .line 82
    move-result p1

    .line 83
    if-nez p1, :cond_6

    .line 84
    .line 85
    goto :goto_0

    .line 86
    :cond_6
    const/4 v2, 0x1

    .line 87
    goto :goto_0

    .line 88
    :sswitch_6
    const-string v0, "net.kaki87.soul2.testing.ACTION_BACK_STOP"

    .line 89
    .line 90
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 91
    .line 92
    .line 93
    move-result p1

    .line 94
    if-nez p1, :cond_7

    .line 95
    .line 96
    goto :goto_0

    .line 97
    :cond_7
    move v2, v1

    .line 98
    :goto_0
    iget-object p1, p0, Lcom/mycompany/app/web/WebViewActivity$EventReceiver;->a:Lcom/mycompany/app/web/WebViewActivity;

    .line 99
    .line 100
    packed-switch v2, :pswitch_data_0

    .line 101
    .line 102
    .line 103
    goto/16 :goto_1

    .line 104
    .line 105
    :pswitch_0
    iget-object p2, p1, Lcom/mycompany/app/web/WebViewActivity;->f2:Lcom/mycompany/app/view/MyWebCoord;

    .line 106
    .line 107
    if-nez p2, :cond_8

    .line 108
    .line 109
    goto/16 :goto_1

    .line 110
    .line 111
    :cond_8
    iget-object p2, p1, Lcom/mycompany/app/web/WebViewActivity;->R5:Lcom/mycompany/app/web/WebVideoFrame;

    .line 112
    .line 113
    if-nez p2, :cond_9

    .line 114
    .line 115
    iget-boolean p2, p1, Lcom/mycompany/app/web/WebViewActivity;->C9:Z

    .line 116
    .line 117
    if-nez p2, :cond_9

    .line 118
    .line 119
    goto/16 :goto_1

    .line 120
    .line 121
    :cond_9
    iget-object p1, p1, Lcom/mycompany/app/main/MainActivity;->O0:Landroid/os/Handler;

    .line 122
    .line 123
    if-nez p1, :cond_a

    .line 124
    .line 125
    goto/16 :goto_1

    .line 126
    .line 127
    :cond_a
    new-instance p2, Lcom/mycompany/app/web/WebViewActivity$EventReceiver$4;

    .line 128
    .line 129
    invoke-direct {p2, p0}, Lcom/mycompany/app/web/WebViewActivity$EventReceiver$4;-><init>(Lcom/mycompany/app/web/WebViewActivity$EventReceiver;)V

    .line 130
    .line 131
    .line 132
    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 133
    .line 134
    .line 135
    return-void

    .line 136
    :pswitch_1
    iget-object p2, p1, Lcom/mycompany/app/web/WebViewActivity;->f2:Lcom/mycompany/app/view/MyWebCoord;

    .line 137
    .line 138
    if-nez p2, :cond_b

    .line 139
    .line 140
    goto/16 :goto_1

    .line 141
    .line 142
    :cond_b
    iget-object p2, p1, Lcom/mycompany/app/web/WebViewActivity;->R5:Lcom/mycompany/app/web/WebVideoFrame;

    .line 143
    .line 144
    if-nez p2, :cond_c

    .line 145
    .line 146
    iget-boolean p2, p1, Lcom/mycompany/app/web/WebViewActivity;->C9:Z

    .line 147
    .line 148
    if-nez p2, :cond_c

    .line 149
    .line 150
    goto/16 :goto_1

    .line 151
    .line 152
    :cond_c
    iget-object p1, p1, Lcom/mycompany/app/main/MainActivity;->O0:Landroid/os/Handler;

    .line 153
    .line 154
    if-nez p1, :cond_d

    .line 155
    .line 156
    goto/16 :goto_1

    .line 157
    .line 158
    :cond_d
    new-instance p2, Lcom/mycompany/app/web/WebViewActivity$EventReceiver$3;

    .line 159
    .line 160
    invoke-direct {p2, p0}, Lcom/mycompany/app/web/WebViewActivity$EventReceiver$3;-><init>(Lcom/mycompany/app/web/WebViewActivity$EventReceiver;)V

    .line 161
    .line 162
    .line 163
    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 164
    .line 165
    .line 166
    return-void

    .line 167
    :pswitch_2
    iget-object p2, p1, Lcom/mycompany/app/web/WebViewActivity;->f2:Lcom/mycompany/app/view/MyWebCoord;

    .line 168
    .line 169
    if-nez p2, :cond_e

    .line 170
    .line 171
    goto/16 :goto_1

    .line 172
    .line 173
    :cond_e
    iget-object p2, p1, Lcom/mycompany/app/web/WebViewActivity;->R5:Lcom/mycompany/app/web/WebVideoFrame;

    .line 174
    .line 175
    if-nez p2, :cond_f

    .line 176
    .line 177
    iget-boolean p2, p1, Lcom/mycompany/app/web/WebViewActivity;->C9:Z

    .line 178
    .line 179
    if-nez p2, :cond_f

    .line 180
    .line 181
    goto :goto_1

    .line 182
    :cond_f
    iget-object p1, p1, Lcom/mycompany/app/main/MainActivity;->O0:Landroid/os/Handler;

    .line 183
    .line 184
    if-nez p1, :cond_10

    .line 185
    .line 186
    goto :goto_1

    .line 187
    :cond_10
    new-instance p2, Lcom/mycompany/app/web/WebViewActivity$EventReceiver$5;

    .line 188
    .line 189
    invoke-direct {p2, p0}, Lcom/mycompany/app/web/WebViewActivity$EventReceiver$5;-><init>(Lcom/mycompany/app/web/WebViewActivity$EventReceiver;)V

    .line 190
    .line 191
    .line 192
    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 193
    .line 194
    .line 195
    return-void

    .line 196
    :pswitch_3
    iget-object v0, p1, Lcom/mycompany/app/web/WebViewActivity;->f2:Lcom/mycompany/app/view/MyWebCoord;

    .line 197
    .line 198
    if-nez v0, :cond_11

    .line 199
    .line 200
    goto :goto_1

    .line 201
    :cond_11
    iput-object p2, p1, Lcom/mycompany/app/web/WebViewActivity;->un:Landroid/content/Intent;

    .line 202
    .line 203
    new-instance p2, Lcom/mycompany/app/web/WebViewActivity$EventReceiver$1;

    .line 204
    .line 205
    invoke-direct {p2, p0}, Lcom/mycompany/app/web/WebViewActivity$EventReceiver$1;-><init>(Lcom/mycompany/app/web/WebViewActivity$EventReceiver;)V

    .line 206
    .line 207
    .line 208
    invoke-virtual {p1, p2}, Lcom/mycompany/app/main/MainActivity;->m0(Ljava/lang/Runnable;)V

    .line 209
    .line 210
    .line 211
    return-void

    .line 212
    :pswitch_4
    iget-object v0, p1, Lcom/mycompany/app/web/WebViewActivity;->f2:Lcom/mycompany/app/view/MyWebCoord;

    .line 213
    .line 214
    if-nez v0, :cond_12

    .line 215
    .line 216
    goto :goto_1

    .line 217
    :cond_12
    const-string v0, "EXTRA_PATH"

    .line 218
    .line 219
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 220
    .line 221
    .line 222
    move-result-object p2

    .line 223
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 224
    .line 225
    .line 226
    move-result v0

    .line 227
    if-eqz v0, :cond_13

    .line 228
    .line 229
    goto :goto_1

    .line 230
    :cond_13
    iput-object p2, p1, Lcom/mycompany/app/web/WebViewActivity;->vn:Ljava/lang/String;

    .line 231
    .line 232
    iget-object p1, p1, Lcom/mycompany/app/web/WebViewActivity;->f2:Lcom/mycompany/app/view/MyWebCoord;

    .line 233
    .line 234
    new-instance p2, Lcom/mycompany/app/web/WebViewActivity$EventReceiver$2;

    .line 235
    .line 236
    invoke-direct {p2, p0}, Lcom/mycompany/app/web/WebViewActivity$EventReceiver$2;-><init>(Lcom/mycompany/app/web/WebViewActivity$EventReceiver;)V

    .line 237
    .line 238
    .line 239
    const-wide/16 v0, 0x7d0

    .line 240
    .line 241
    invoke-virtual {p1, p2, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 242
    .line 243
    .line 244
    return-void

    .line 245
    :pswitch_5
    iget-object p2, p1, Lcom/mycompany/app/web/WebViewActivity;->f2:Lcom/mycompany/app/view/MyWebCoord;

    .line 246
    .line 247
    if-nez p2, :cond_14

    .line 248
    .line 249
    goto :goto_1

    .line 250
    :cond_14
    sget-boolean p2, Lcom/mycompany/app/pref/PrefSync;->k:Z

    .line 251
    .line 252
    if-nez p2, :cond_15

    .line 253
    .line 254
    goto :goto_1

    .line 255
    :cond_15
    invoke-virtual {p1, v1}, Lcom/mycompany/app/web/WebViewActivity;->l8(Z)V

    .line 256
    .line 257
    .line 258
    return-void

    .line 259
    :pswitch_6
    iget-object p2, p1, Lcom/mycompany/app/web/WebViewActivity;->f2:Lcom/mycompany/app/view/MyWebCoord;

    .line 260
    .line 261
    if-nez p2, :cond_16

    .line 262
    .line 263
    goto :goto_1

    .line 264
    :cond_16
    iget-boolean p2, p1, Lcom/mycompany/app/web/WebViewActivity;->C9:Z

    .line 265
    .line 266
    if-nez p2, :cond_17

    .line 267
    .line 268
    goto :goto_1

    .line 269
    :cond_17
    iget-object p1, p1, Lcom/mycompany/app/main/MainActivity;->O0:Landroid/os/Handler;

    .line 270
    .line 271
    if-nez p1, :cond_18

    .line 272
    .line 273
    :goto_1
    return-void

    .line 274
    :cond_18
    new-instance p2, Lcom/mycompany/app/web/WebViewActivity$EventReceiver$6;

    .line 275
    .line 276
    invoke-direct {p2, p0}, Lcom/mycompany/app/web/WebViewActivity$EventReceiver$6;-><init>(Lcom/mycompany/app/web/WebViewActivity$EventReceiver;)V

    .line 277
    .line 278
    .line 279
    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 280
    .line 281
    .line 282
    return-void

    .line 283
    :sswitch_data_0
    .sparse-switch
        -0x7833487c -> :sswitch_3
        -0x753d8ab9 -> :sswitch_2
        -0x753d5dad -> :sswitch_1
        -0x7538eb12 -> :sswitch_0
        -0x61a2c3e5 -> :sswitch_5
        -0x5da70958 -> :sswitch_6
        -0x57add94a -> :sswitch_4
    .end sparse-switch

    .line 284
    .line 285
    .line 286
    .line 287
    .line 288
    .line 289
    .line 290
    .line 291
    .line 292
    .line 293
    .line 294
    .line 295
    .line 296
    .line 297
    .line 298
    .line 299
    .line 300
    .line 301
    .line 302
    .line 303
    .line 304
    .line 305
    .line 306
    .line 307
    .line 308
    .line 309
    .line 310
    .line 311
    .line 312
    .line 313
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
