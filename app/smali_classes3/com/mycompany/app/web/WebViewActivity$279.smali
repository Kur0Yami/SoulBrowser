.class Lcom/mycompany/app/web/WebViewActivity$279;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:I

.field public final synthetic f:Ljava/lang/String;

.field public final synthetic g:Lcom/mycompany/app/web/WebViewActivity;


# direct methods
.method public constructor <init>(ILcom/mycompany/app/web/WebViewActivity;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lcom/mycompany/app/web/WebViewActivity$279;->g:Lcom/mycompany/app/web/WebViewActivity;

    .line 5
    .line 6
    iput p1, p0, Lcom/mycompany/app/web/WebViewActivity$279;->c:I

    .line 7
    .line 8
    iput-object p3, p0, Lcom/mycompany/app/web/WebViewActivity$279;->f:Ljava/lang/String;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebViewActivity$279;->g:Lcom/mycompany/app/web/WebViewActivity;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->I2:Lcom/mycompany/app/web/WebNestView;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    goto/16 :goto_2

    .line 8
    .line 9
    :cond_0
    invoke-virtual {v0}, Lcom/mycompany/app/web/WebViewActivity;->F5()Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    const/4 v2, 0x0

    .line 14
    const/4 v3, 0x1

    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    const-string v1, "file:///android_asset/shortcut.html"

    .line 18
    .line 19
    invoke-virtual {v0, v1, v2, v3}, Lcom/mycompany/app/web/WebViewActivity;->T8(Ljava/lang/String;ZZ)V

    .line 20
    .line 21
    .line 22
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->I2:Lcom/mycompany/app/web/WebNestView;

    .line 23
    .line 24
    iget-boolean v0, v0, Lcom/mycompany/app/web/WebViewActivity;->U1:Z

    .line 25
    .line 26
    invoke-virtual {v1, v0}, Lcom/mycompany/app/web/WebNestView;->W(Z)V

    .line 27
    .line 28
    .line 29
    return-void

    .line 30
    :cond_1
    const/4 v1, 0x2

    .line 31
    iget v4, p0, Lcom/mycompany/app/web/WebViewActivity$279;->c:I

    .line 32
    .line 33
    move v5, v1

    .line 34
    iget-object v1, p0, Lcom/mycompany/app/web/WebViewActivity$279;->f:Ljava/lang/String;

    .line 35
    .line 36
    const/4 v6, 0x0

    .line 37
    if-ne v4, v5, :cond_2

    .line 38
    .line 39
    invoke-virtual {v0}, Lcom/mycompany/app/web/WebViewActivity;->P4()V

    .line 40
    .line 41
    .line 42
    iget-object v0, v0, Lcom/mycompany/app/web/WebViewActivity;->I2:Lcom/mycompany/app/web/WebNestView;

    .line 43
    .line 44
    invoke-virtual {v0, v1, v6}, Lcom/mycompany/app/web/WebNestView;->z(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    return-void

    .line 48
    :cond_2
    const/4 v5, 0x3

    .line 49
    if-ne v4, v5, :cond_3

    .line 50
    .line 51
    iget-object v3, v0, Lcom/mycompany/app/web/WebViewActivity;->A8:Ljava/lang/String;

    .line 52
    .line 53
    invoke-virtual {v0, v1, v3, v2}, Lcom/mycompany/app/web/WebViewActivity;->Q1(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 54
    .line 55
    .line 56
    return-void

    .line 57
    :cond_3
    const/4 v2, 0x4

    .line 58
    if-ne v4, v2, :cond_4

    .line 59
    .line 60
    invoke-virtual {v0, v6, v1, v3, v6}, Lcom/mycompany/app/web/WebViewActivity;->F1(Lcom/mycompany/app/web/WebNestFrame;Ljava/lang/String;ZLcom/mycompany/app/web/WebViewActivity$TabAddListener;)V

    .line 61
    .line 62
    .line 63
    return-void

    .line 64
    :cond_4
    const/4 v5, 0x6

    .line 65
    if-ne v4, v5, :cond_5

    .line 66
    .line 67
    invoke-virtual {v0}, Lcom/mycompany/app/web/WebViewActivity;->P4()V

    .line 68
    .line 69
    .line 70
    const/4 v6, 0x2

    .line 71
    const/4 v7, 0x0

    .line 72
    const/4 v2, 0x0

    .line 73
    const-string v3, "application/pdf"

    .line 74
    .line 75
    const-wide/16 v4, 0x0

    .line 76
    .line 77
    invoke-virtual/range {v0 .. v7}, Lcom/mycompany/app/web/WebViewActivity;->l9(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JILjava/lang/String;)V

    .line 78
    .line 79
    .line 80
    return-void

    .line 81
    :cond_5
    const/4 v5, 0x7

    .line 82
    if-ne v4, v5, :cond_d

    .line 83
    .line 84
    invoke-virtual {v0}, Lcom/mycompany/app/web/WebViewActivity;->P4()V

    .line 85
    .line 86
    .line 87
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 88
    .line 89
    .line 90
    move-result v3

    .line 91
    if-eqz v3, :cond_6

    .line 92
    .line 93
    goto/16 :goto_1

    .line 94
    .line 95
    :cond_6
    const-string v3, "abp:subscribe"

    .line 96
    .line 97
    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 98
    .line 99
    .line 100
    move-result v3

    .line 101
    const-string v4, ".txt"

    .line 102
    .line 103
    if-eqz v3, :cond_9

    .line 104
    .line 105
    const-string v3, "http"

    .line 106
    .line 107
    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 108
    .line 109
    .line 110
    move-result v3

    .line 111
    if-lez v3, :cond_c

    .line 112
    .line 113
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 114
    .line 115
    .line 116
    move-result v5

    .line 117
    if-lt v3, v5, :cond_7

    .line 118
    .line 119
    goto :goto_1

    .line 120
    :cond_7
    invoke-virtual {v1, v4, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    .line 121
    .line 122
    .line 123
    move-result v4

    .line 124
    if-le v4, v3, :cond_c

    .line 125
    .line 126
    add-int/2addr v4, v2

    .line 127
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 128
    .line 129
    .line 130
    move-result v2

    .line 131
    if-le v4, v2, :cond_8

    .line 132
    .line 133
    goto :goto_1

    .line 134
    :cond_8
    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object v6

    .line 138
    goto :goto_1

    .line 139
    :cond_9
    const-string v3, "https://subscribe.adblockplus.org/?location=http"

    .line 140
    .line 141
    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 142
    .line 143
    .line 144
    move-result v3

    .line 145
    if-eqz v3, :cond_c

    .line 146
    .line 147
    const/16 v3, 0x2c

    .line 148
    .line 149
    invoke-virtual {v1, v4, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    .line 150
    .line 151
    .line 152
    move-result v4

    .line 153
    if-le v4, v3, :cond_a

    .line 154
    .line 155
    add-int/2addr v4, v2

    .line 156
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 157
    .line 158
    .line 159
    move-result v2

    .line 160
    if-gt v4, v2, :cond_a

    .line 161
    .line 162
    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object v1

    .line 166
    goto :goto_0

    .line 167
    :cond_a
    const-string v2, "&title="

    .line 168
    .line 169
    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    .line 170
    .line 171
    .line 172
    move-result v2

    .line 173
    if-le v2, v3, :cond_c

    .line 174
    .line 175
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 176
    .line 177
    .line 178
    move-result v4

    .line 179
    if-gt v2, v4, :cond_c

    .line 180
    .line 181
    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 182
    .line 183
    .line 184
    move-result-object v1

    .line 185
    :goto_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 186
    .line 187
    .line 188
    move-result v2

    .line 189
    if-eqz v2, :cond_b

    .line 190
    .line 191
    goto :goto_1

    .line 192
    :cond_b
    :try_start_0
    const-string v2, "UTF-8"

    .line 193
    .line 194
    invoke-static {v1, v2}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 195
    .line 196
    .line 197
    move-result-object v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 198
    goto :goto_1

    .line 199
    :catch_0
    move-object v6, v1

    .line 200
    :cond_c
    :goto_1
    sget v1, Lnet/kaki87/soul2/testing/R$string;->copied_clipboard:I

    .line 201
    .line 202
    const-string v2, "Copied URL"

    .line 203
    .line 204
    invoke-static {v1, v0, v2, v6}, Lcom/mycompany/app/main/MainUtil;->s(ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    .line 206
    .line 207
    return-void

    .line 208
    :cond_d
    const/16 v2, 0x8

    .line 209
    .line 210
    if-ne v4, v2, :cond_e

    .line 211
    .line 212
    invoke-virtual {v0}, Lcom/mycompany/app/web/WebViewActivity;->P4()V

    .line 213
    .line 214
    .line 215
    invoke-virtual {v0, v3, v3}, Lcom/mycompany/app/web/WebViewActivity;->ea(IZ)V

    .line 216
    .line 217
    .line 218
    return-void

    .line 219
    :cond_e
    const/16 v2, 0x9

    .line 220
    .line 221
    if-ne v4, v2, :cond_f

    .line 222
    .line 223
    iget-object v0, v0, Lcom/mycompany/app/web/WebViewActivity;->I2:Lcom/mycompany/app/web/WebNestView;

    .line 224
    .line 225
    iput-object v1, v0, Lcom/mycompany/app/web/WebNestView;->O1:Ljava/lang/String;

    .line 226
    .line 227
    new-instance v1, Lcom/mycompany/app/web/WebNestView$19;

    .line 228
    .line 229
    invoke-direct {v1, v0}, Lcom/mycompany/app/web/WebNestView$19;-><init>(Lcom/mycompany/app/web/WebNestView;)V

    .line 230
    .line 231
    .line 232
    invoke-virtual {v0, v1}, Lcom/mycompany/app/web/WebNestView;->J(Ljava/lang/Runnable;)V

    .line 233
    .line 234
    .line 235
    return-void

    .line 236
    :cond_f
    const/16 v2, 0xb

    .line 237
    .line 238
    if-ne v4, v2, :cond_11

    .line 239
    .line 240
    invoke-virtual {v0}, Lcom/mycompany/app/web/WebViewActivity;->P4()V

    .line 241
    .line 242
    .line 243
    invoke-virtual {v0}, Lcom/mycompany/app/web/WebViewActivity;->y5()Z

    .line 244
    .line 245
    .line 246
    move-result v2

    .line 247
    if-eqz v2, :cond_10

    .line 248
    .line 249
    new-instance v2, Lcom/mycompany/app/web/WebViewActivity$280;

    .line 250
    .line 251
    invoke-direct {v2, v0, v1}, Lcom/mycompany/app/web/WebViewActivity$280;-><init>(Lcom/mycompany/app/web/WebViewActivity;Ljava/lang/String;)V

    .line 252
    .line 253
    .line 254
    invoke-virtual {v0, v2}, Lcom/mycompany/app/web/WebViewActivity;->K6(Lcom/mycompany/app/web/WebViewActivity$PrevPageListener;)V

    .line 255
    .line 256
    .line 257
    return-void

    .line 258
    :cond_10
    invoke-virtual {v0, v1, v6}, Lcom/mycompany/app/web/WebViewActivity;->M9(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    .line 260
    .line 261
    return-void

    .line 262
    :cond_11
    const/16 v2, 0xd

    .line 263
    .line 264
    if-ne v4, v2, :cond_13

    .line 265
    .line 266
    invoke-virtual {v0}, Lcom/mycompany/app/web/WebViewActivity;->P4()V

    .line 267
    .line 268
    .line 269
    invoke-virtual {v0}, Lcom/mycompany/app/web/WebViewActivity;->y5()Z

    .line 270
    .line 271
    .line 272
    move-result v2

    .line 273
    if-eqz v2, :cond_12

    .line 274
    .line 275
    iput-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->bj:Ljava/lang/String;

    .line 276
    .line 277
    :cond_12
    invoke-virtual {v0, v1, v1}, Lcom/mycompany/app/web/WebViewActivity;->d9(Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    .line 279
    .line 280
    return-void

    .line 281
    :cond_13
    const/16 v2, 0xe

    .line 282
    .line 283
    if-ne v4, v2, :cond_15

    .line 284
    .line 285
    invoke-virtual {v0}, Lcom/mycompany/app/web/WebViewActivity;->P4()V

    .line 286
    .line 287
    .line 288
    invoke-virtual {v0}, Lcom/mycompany/app/web/WebViewActivity;->y5()Z

    .line 289
    .line 290
    .line 291
    move-result v2

    .line 292
    if-eqz v2, :cond_14

    .line 293
    .line 294
    iput-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->bj:Ljava/lang/String;

    .line 295
    .line 296
    :cond_14
    :goto_2
    return-void

    .line 297
    :cond_15
    invoke-virtual {v0}, Lcom/mycompany/app/web/WebViewActivity;->P4()V

    .line 298
    .line 299
    .line 300
    return-void
.end method
