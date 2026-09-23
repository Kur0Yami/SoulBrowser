.class Lcom/mycompany/app/dialog/DialogViewTrans$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogViewTrans;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogViewTrans;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogViewTrans$3;->c:Lcom/mycompany/app/dialog/DialogViewTrans;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 12

    .line 1
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogViewTrans$3;->c:Lcom/mycompany/app/dialog/DialogViewTrans;

    .line 2
    .line 3
    iget-boolean v0, p1, Lcom/mycompany/app/dialog/DialogViewTrans;->u0:Z

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    goto/16 :goto_6

    .line 8
    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    invoke-virtual {p1, v0}, Lcom/mycompany/app/dialog/DialogViewTrans;->H(Z)Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_1

    .line 15
    .line 16
    iget-object p1, p1, Lcom/mycompany/app/dialog/DialogViewTrans;->b0:Landroid/content/Context;

    .line 17
    .line 18
    sget v0, Lnet/kaki87/soul2/testing/R$string;->wait_retry:I

    .line 19
    .line 20
    invoke-static {p1, v0}, Lcom/mycompany/app/main/MainUtil;->e8(Landroid/content/Context;I)V

    .line 21
    .line 22
    .line 23
    return-void

    .line 24
    :cond_1
    iget v1, p1, Lcom/mycompany/app/dialog/DialogViewTrans;->t0:I

    .line 25
    .line 26
    const/4 v2, 0x2

    .line 27
    const/4 v3, 0x1

    .line 28
    if-ne v1, v2, :cond_a

    .line 29
    .line 30
    invoke-virtual {p1}, Lcom/mycompany/app/dialog/DialogViewTrans;->G()Z

    .line 31
    .line 32
    .line 33
    iget-object v1, p1, Lcom/mycompany/app/dialog/DialogViewTrans;->m0:Landroid/speech/tts/TextToSpeech;

    .line 34
    .line 35
    if-nez v1, :cond_2

    .line 36
    .line 37
    goto/16 :goto_5

    .line 38
    .line 39
    :cond_2
    iput v3, p1, Lcom/mycompany/app/dialog/DialogViewTrans;->t0:I

    .line 40
    .line 41
    iput-boolean v3, p1, Lcom/mycompany/app/dialog/DialogViewTrans;->u0:Z

    .line 42
    .line 43
    const/4 v1, 0x0

    .line 44
    :try_start_0
    iget v2, p1, Lcom/mycompany/app/dialog/DialogViewTrans;->s0:I

    .line 45
    .line 46
    iget-object v4, p1, Lcom/mycompany/app/dialog/DialogViewTrans;->r0:Ljava/util/ArrayList;

    .line 47
    .line 48
    if-eqz v4, :cond_4

    .line 49
    .line 50
    if-ltz v2, :cond_4

    .line 51
    .line 52
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 53
    .line 54
    .line 55
    move-result v4

    .line 56
    if-lt v2, v4, :cond_3

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_3
    iget-object v4, p1, Lcom/mycompany/app/dialog/DialogViewTrans;->r0:Ljava/util/ArrayList;

    .line 60
    .line 61
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object v2

    .line 65
    check-cast v2, Lcom/mycompany/app/dialog/DialogViewRead$TtsItem;

    .line 66
    .line 67
    goto :goto_1

    .line 68
    :cond_4
    :goto_0
    move-object v2, v1

    .line 69
    :goto_1
    if-nez v2, :cond_5

    .line 70
    .line 71
    move-object v2, v1

    .line 72
    goto :goto_2

    .line 73
    :cond_5
    iget-object v2, v2, Lcom/mycompany/app/dialog/DialogViewRead$TtsItem;->c:Ljava/lang/String;

    .line 74
    .line 75
    :goto_2
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 76
    .line 77
    .line 78
    move-result v4

    .line 79
    if-eqz v4, :cond_6

    .line 80
    .line 81
    iput v0, p1, Lcom/mycompany/app/dialog/DialogViewTrans;->t0:I

    .line 82
    .line 83
    iput-boolean v0, p1, Lcom/mycompany/app/dialog/DialogViewTrans;->u0:Z

    .line 84
    .line 85
    iput-object v1, p1, Lcom/mycompany/app/dialog/DialogViewTrans;->r0:Ljava/util/ArrayList;

    .line 86
    .line 87
    iput v0, p1, Lcom/mycompany/app/dialog/DialogViewTrans;->s0:I

    .line 88
    .line 89
    invoke-virtual {p1, v0, v0}, Lcom/mycompany/app/dialog/DialogViewTrans;->N(IZ)V

    .line 90
    .line 91
    .line 92
    goto/16 :goto_5

    .line 93
    .line 94
    :cond_6
    iget v4, p1, Lcom/mycompany/app/dialog/DialogViewTrans;->v0:I

    .line 95
    .line 96
    iget v5, p1, Lcom/mycompany/app/dialog/DialogViewTrans;->w0:I

    .line 97
    .line 98
    add-int/2addr v4, v5

    .line 99
    iput v4, p1, Lcom/mycompany/app/dialog/DialogViewTrans;->v0:I

    .line 100
    .line 101
    invoke-virtual {v2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v2

    .line 105
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 106
    .line 107
    .line 108
    move-result v4

    .line 109
    if-eqz v4, :cond_7

    .line 110
    .line 111
    iput v0, p1, Lcom/mycompany/app/dialog/DialogViewTrans;->t0:I

    .line 112
    .line 113
    iput-boolean v0, p1, Lcom/mycompany/app/dialog/DialogViewTrans;->u0:Z

    .line 114
    .line 115
    iput-object v1, p1, Lcom/mycompany/app/dialog/DialogViewTrans;->r0:Ljava/util/ArrayList;

    .line 116
    .line 117
    iput v0, p1, Lcom/mycompany/app/dialog/DialogViewTrans;->s0:I

    .line 118
    .line 119
    invoke-virtual {p1, v0, v0}, Lcom/mycompany/app/dialog/DialogViewTrans;->N(IZ)V

    .line 120
    .line 121
    .line 122
    goto/16 :goto_5

    .line 123
    .line 124
    :cond_7
    iget-object v4, p1, Lcom/mycompany/app/dialog/DialogViewTrans;->m0:Landroid/speech/tts/TextToSpeech;

    .line 125
    .line 126
    invoke-virtual {v4}, Landroid/speech/tts/TextToSpeech;->isSpeaking()Z

    .line 127
    .line 128
    .line 129
    move-result v4

    .line 130
    if-eqz v4, :cond_8

    .line 131
    .line 132
    iget-object v4, p1, Lcom/mycompany/app/dialog/DialogViewTrans;->m0:Landroid/speech/tts/TextToSpeech;

    .line 133
    .line 134
    invoke-virtual {v4}, Landroid/speech/tts/TextToSpeech;->stop()I

    .line 135
    .line 136
    .line 137
    :cond_8
    invoke-virtual {p1}, Lcom/mycompany/app/dialog/DialogViewTrans;->L()V

    .line 138
    .line 139
    .line 140
    iget-object v4, p1, Lcom/mycompany/app/dialog/DialogViewTrans;->m0:Landroid/speech/tts/TextToSpeech;

    .line 141
    .line 142
    const-string v5, "0"

    .line 143
    .line 144
    invoke-virtual {v4, v2, v0, v1, v5}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/CharSequence;ILandroid/os/Bundle;Ljava/lang/String;)I

    .line 145
    .line 146
    .line 147
    move-result v2

    .line 148
    if-nez v2, :cond_9

    .line 149
    .line 150
    invoke-virtual {p1, v3, v3}, Lcom/mycompany/app/dialog/DialogViewTrans;->N(IZ)V

    .line 151
    .line 152
    .line 153
    goto :goto_3

    .line 154
    :cond_9
    iput v0, p1, Lcom/mycompany/app/dialog/DialogViewTrans;->t0:I

    .line 155
    .line 156
    iput-boolean v0, p1, Lcom/mycompany/app/dialog/DialogViewTrans;->u0:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 157
    .line 158
    goto :goto_3

    .line 159
    :catch_0
    iput v0, p1, Lcom/mycompany/app/dialog/DialogViewTrans;->t0:I

    .line 160
    .line 161
    iput-boolean v0, p1, Lcom/mycompany/app/dialog/DialogViewTrans;->u0:Z

    .line 162
    .line 163
    :goto_3
    iget v2, p1, Lcom/mycompany/app/dialog/DialogViewTrans;->t0:I

    .line 164
    .line 165
    if-nez v2, :cond_10

    .line 166
    .line 167
    iput-object v1, p1, Lcom/mycompany/app/dialog/DialogViewTrans;->r0:Ljava/util/ArrayList;

    .line 168
    .line 169
    iput v0, p1, Lcom/mycompany/app/dialog/DialogViewTrans;->s0:I

    .line 170
    .line 171
    invoke-virtual {p1, v0, v0}, Lcom/mycompany/app/dialog/DialogViewTrans;->N(IZ)V

    .line 172
    .line 173
    .line 174
    goto :goto_5

    .line 175
    :cond_a
    if-nez v1, :cond_10

    .line 176
    .line 177
    iget-boolean v0, p1, Lcom/mycompany/app/dialog/DialogViewTrans;->S0:Z

    .line 178
    .line 179
    if-eqz v0, :cond_f

    .line 180
    .line 181
    iget-boolean v0, p1, Lcom/mycompany/app/dialog/DialogViewTrans;->Y0:Z

    .line 182
    .line 183
    if-nez v0, :cond_f

    .line 184
    .line 185
    iget-object v0, p1, Lcom/mycompany/app/dialog/DialogViewTrans;->d0:Landroid/widget/FrameLayout;

    .line 186
    .line 187
    if-nez v0, :cond_b

    .line 188
    .line 189
    goto :goto_5

    .line 190
    :cond_b
    iget-object v0, p1, Lcom/mycompany/app/dialog/DialogViewTrans;->Z0:Lcom/mycompany/app/main/MainTransText;

    .line 191
    .line 192
    if-eqz v0, :cond_c

    .line 193
    .line 194
    iget-object v0, p1, Lcom/mycompany/app/dialog/DialogViewTrans;->b0:Landroid/content/Context;

    .line 195
    .line 196
    sget v1, Lnet/kaki87/soul2/testing/R$string;->wait_retry:I

    .line 197
    .line 198
    invoke-static {v0, v1}, Lcom/mycompany/app/main/MainUtil;->e8(Landroid/content/Context;I)V

    .line 199
    .line 200
    .line 201
    goto :goto_5

    .line 202
    :cond_c
    iput-boolean v3, p1, Lcom/mycompany/app/dialog/DialogViewTrans;->u0:Z

    .line 203
    .line 204
    iget-object v0, p1, Lcom/mycompany/app/dialog/DialogViewTrans;->K0:Lcom/mycompany/app/view/MyButtonImage;

    .line 205
    .line 206
    if-eqz v0, :cond_e

    .line 207
    .line 208
    sget-boolean v1, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 209
    .line 210
    if-eqz v1, :cond_d

    .line 211
    .line 212
    const v1, -0x50506

    .line 213
    .line 214
    .line 215
    goto :goto_4

    .line 216
    :cond_d
    const/high16 v1, -0x1000000

    .line 217
    .line 218
    :goto_4
    invoke-virtual {v0, v1, v3}, Lcom/mycompany/app/view/MyButtonImage;->o(IZ)V

    .line 219
    .line 220
    .line 221
    :cond_e
    iget-object v0, p1, Lcom/mycompany/app/dialog/DialogViewTrans;->b0:Landroid/content/Context;

    .line 222
    .line 223
    const/high16 v1, 0x43700000    # 240.0f

    .line 224
    .line 225
    invoke-static {v0, v1}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 226
    .line 227
    .line 228
    move-result v0

    .line 229
    float-to-int v9, v0

    .line 230
    new-instance v4, Lcom/mycompany/app/main/MainTransText;

    .line 231
    .line 232
    iget-object v5, p1, Lcom/mycompany/app/dialog/DialogViewTrans;->a0:Lcom/mycompany/app/main/MainActivity;

    .line 233
    .line 234
    iget-object v6, p1, Lcom/mycompany/app/dialog/DialogViewTrans;->b0:Landroid/content/Context;

    .line 235
    .line 236
    iget-object v7, p1, Lcom/mycompany/app/dialog/DialogViewTrans;->d0:Landroid/widget/FrameLayout;

    .line 237
    .line 238
    iget-object v8, p1, Lcom/mycompany/app/dialog/DialogViewTrans;->D0:Ljava/util/ArrayList;

    .line 239
    .line 240
    iget-object v10, p1, Lcom/mycompany/app/dialog/DialogViewTrans;->W0:Ljava/lang/String;

    .line 241
    .line 242
    new-instance v11, Lcom/mycompany/app/dialog/DialogViewTrans$25;

    .line 243
    .line 244
    invoke-direct {v11, p1}, Lcom/mycompany/app/dialog/DialogViewTrans$25;-><init>(Lcom/mycompany/app/dialog/DialogViewTrans;)V

    .line 245
    .line 246
    .line 247
    invoke-direct/range {v4 .. v11}, Lcom/mycompany/app/main/MainTransText;-><init>(Lcom/mycompany/app/main/MainActivity;Landroid/content/Context;Landroid/view/ViewGroup;Ljava/util/List;ILjava/lang/String;Lcom/mycompany/app/dialog/DialogSetDesk$SetDeskListener;)V

    .line 248
    .line 249
    .line 250
    iput-object v4, p1, Lcom/mycompany/app/dialog/DialogViewTrans;->Z0:Lcom/mycompany/app/main/MainTransText;

    .line 251
    .line 252
    goto :goto_5

    .line 253
    :cond_f
    invoke-virtual {p1, v3}, Lcom/mycompany/app/dialog/DialogViewTrans;->O(Z)V

    .line 254
    .line 255
    .line 256
    :cond_10
    :goto_5
    iput-boolean v3, p1, Lcom/mycompany/app/dialog/DialogViewTrans;->x0:Z

    .line 257
    .line 258
    iget-object v0, p1, Lcom/mycompany/app/dialog/DialogViewTrans;->a0:Lcom/mycompany/app/main/MainActivity;

    .line 259
    .line 260
    if-eqz v0, :cond_15

    .line 261
    .line 262
    iget-object v0, p1, Lcom/mycompany/app/dialog/DialogViewTrans;->c0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 263
    .line 264
    if-nez v0, :cond_11

    .line 265
    .line 266
    goto :goto_6

    .line 267
    :cond_11
    iget-object v0, p1, Lcom/mycompany/app/dialog/DialogViewTrans;->X0:Lcom/mycompany/app/dialog/DialogTransLang;

    .line 268
    .line 269
    if-eqz v0, :cond_12

    .line 270
    .line 271
    goto :goto_6

    .line 272
    :cond_12
    iget-boolean v0, p1, Lcom/mycompany/app/dialog/DialogViewTrans;->F0:Z

    .line 273
    .line 274
    if-eqz v0, :cond_13

    .line 275
    .line 276
    goto :goto_6

    .line 277
    :cond_13
    iput-boolean v3, p1, Lcom/mycompany/app/dialog/DialogViewTrans;->F0:Z

    .line 278
    .line 279
    invoke-virtual {p1}, Lcom/mycompany/app/dialog/DialogViewTrans;->F()V

    .line 280
    .line 281
    .line 282
    iget-object v0, p1, Lcom/mycompany/app/dialog/DialogViewTrans;->c0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 283
    .line 284
    if-nez v0, :cond_14

    .line 285
    .line 286
    goto :goto_6

    .line 287
    :cond_14
    new-instance v1, Lcom/mycompany/app/dialog/DialogViewTrans$28;

    .line 288
    .line 289
    invoke-direct {v1, p1}, Lcom/mycompany/app/dialog/DialogViewTrans$28;-><init>(Lcom/mycompany/app/dialog/DialogViewTrans;)V

    .line 290
    .line 291
    .line 292
    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 293
    .line 294
    .line 295
    :cond_15
    :goto_6
    return-void
.end method
