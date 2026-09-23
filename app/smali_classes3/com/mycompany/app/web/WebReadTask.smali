.class public Lcom/mycompany/app/web/WebReadTask;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mycompany/app/web/WebReadTask$WebReadListener;,
        Lcom/mycompany/app/web/WebReadTask$ReadWebListener;,
        Lcom/mycompany/app/web/WebReadTask$LoadTask;,
        Lcom/mycompany/app/web/WebReadTask$ReadItem;,
        Lcom/mycompany/app/web/WebReadTask$LocalWebViewClient;,
        Lcom/mycompany/app/web/WebReadTask$LocalChromeClient;,
        Lcom/mycompany/app/web/WebReadTask$WebAppInterface;
    }
.end annotation


# instance fields
.field public A:Z

.field public B:Ljava/lang/String;

.field public C:Ljava/lang/String;

.field public D:Ljava/lang/String;

.field public a:Lcom/mycompany/app/main/MainActivity;

.field public b:Landroid/content/Context;

.field public c:Lcom/mycompany/app/web/WebReadTask$WebReadListener;

.field public final d:Z

.field public final e:Z

.field public f:Z

.field public g:Ljava/lang/String;

.field public h:Ljava/lang/String;

.field public i:Ljava/lang/String;

.field public j:Ljava/lang/String;

.field public k:Ljava/util/ArrayList;

.field public l:Ljava/lang/String;

.field public m:I

.field public n:Lcom/mycompany/app/web/WebReadTask$LoadTask;

.field public o:Ljava/util/ArrayList;

.field public p:Z

.field public q:Z

.field public r:Lcom/mycompany/app/web/WebReadTask$ReadWebListener;

.field public s:Landroid/view/ViewGroup;

.field public t:Lcom/mycompany/app/web/WebNestView;

.field public u:Z

.field public v:Z

.field public w:I

.field public x:I

.field public y:Z

.field public z:Lcom/mycompany/app/web/WebClean;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/main/MainActivity;Landroid/content/Context;ZZZLcom/mycompany/app/web/WebReadTask$WebReadListener;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/web/WebReadTask;->a:Lcom/mycompany/app/main/MainActivity;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/mycompany/app/web/WebReadTask;->b:Landroid/content/Context;

    .line 7
    .line 8
    iput-boolean p3, p0, Lcom/mycompany/app/web/WebReadTask;->d:Z

    .line 9
    .line 10
    iput-boolean p4, p0, Lcom/mycompany/app/web/WebReadTask;->e:Z

    .line 11
    .line 12
    iput-boolean p5, p0, Lcom/mycompany/app/web/WebReadTask;->f:Z

    .line 13
    .line 14
    iput-object p6, p0, Lcom/mycompany/app/web/WebReadTask;->c:Lcom/mycompany/app/web/WebReadTask$WebReadListener;

    .line 15
    .line 16
    return-void
.end method

.method public static a(Lcom/mycompany/app/web/WebReadTask;Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebReadTask;->t:Lcom/mycompany/app/web/WebNestView;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    invoke-static {p1}, Lcom/mycompany/app/main/MainUtil;->D5(Ljava/lang/String;)Z

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    if-eqz p1, :cond_3

    .line 11
    .line 12
    iget-boolean p1, p0, Lcom/mycompany/app/web/WebReadTask;->y:Z

    .line 13
    .line 14
    if-nez p1, :cond_1

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_1
    const/4 p1, 0x0

    .line 18
    iput-boolean p1, p0, Lcom/mycompany/app/web/WebReadTask;->y:Z

    .line 19
    .line 20
    iget-object p1, p0, Lcom/mycompany/app/web/WebReadTask;->t:Lcom/mycompany/app/web/WebNestView;

    .line 21
    .line 22
    if-nez p1, :cond_2

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_2
    new-instance v0, Lcom/mycompany/app/web/WebReadTask$3;

    .line 26
    .line 27
    invoke-direct {v0, p0}, Lcom/mycompany/app/web/WebReadTask$3;-><init>(Lcom/mycompany/app/web/WebReadTask;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1, v0}, Lcom/mycompany/app/web/WebNestView;->post(Ljava/lang/Runnable;)Z

    .line 31
    .line 32
    .line 33
    return-void

    .line 34
    :cond_3
    iget-boolean p1, p0, Lcom/mycompany/app/web/WebReadTask;->y:Z

    .line 35
    .line 36
    if-eqz p1, :cond_4

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_4
    const/4 p1, 0x1

    .line 40
    iput-boolean p1, p0, Lcom/mycompany/app/web/WebReadTask;->y:Z

    .line 41
    .line 42
    iget-object p1, p0, Lcom/mycompany/app/web/WebReadTask;->t:Lcom/mycompany/app/web/WebNestView;

    .line 43
    .line 44
    if-nez p1, :cond_5

    .line 45
    .line 46
    :goto_0
    return-void

    .line 47
    :cond_5
    new-instance v0, Lcom/mycompany/app/web/WebReadTask$4;

    .line 48
    .line 49
    invoke-direct {v0, p0}, Lcom/mycompany/app/web/WebReadTask$4;-><init>(Lcom/mycompany/app/web/WebReadTask;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {p1, v0}, Lcom/mycompany/app/web/WebNestView;->post(Ljava/lang/Runnable;)Z

    .line 53
    .line 54
    .line 55
    return-void
.end method

.method public static b(Lcom/mycompany/app/web/WebReadTask;Lnet/dankito/readability4j/Article;Ljava/lang/String;)Ljava/lang/String;
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iget-object v2, v0, Lcom/mycompany/app/web/WebReadTask;->i:Ljava/lang/String;

    .line 6
    .line 7
    iget-object v3, v0, Lcom/mycompany/app/web/WebReadTask;->j:Ljava/lang/String;

    .line 8
    .line 9
    const/4 v4, 0x0

    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    iget-object v5, v1, Lnet/dankito/readability4j/Article;->b:Lorg/jsoup/nodes/Element;

    .line 13
    .line 14
    invoke-virtual {v0, v5}, Lcom/mycompany/app/web/WebReadTask;->B(Lorg/jsoup/nodes/Element;)V

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    move-object v5, v4

    .line 19
    :goto_0
    new-instance v6, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    const-string v7, "<!DOCTYPE html><html dir=\'auto\'><head><meta charset=\"utf-8\"/><meta name=\'viewport\' content=\'width=device-width,initial-scale=1.0,minimum-scale=1.0,maximum-scale=5.0,user-scalable=yes\'/>"

    .line 22
    .line 23
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 27
    .line 28
    .line 29
    move-result v7

    .line 30
    if-nez v7, :cond_1

    .line 31
    .line 32
    move-object/from16 v7, p2

    .line 33
    .line 34
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    :cond_1
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 38
    .line 39
    .line 40
    move-result v7

    .line 41
    if-nez v7, :cond_2

    .line 42
    .line 43
    const-string v7, "<meta property=\'og:image\' content=\'"

    .line 44
    .line 45
    const-string v8, "\'>"

    .line 46
    .line 47
    invoke-static {v6, v7, v3, v8}, Landroid/support/v4/media/a;->y(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    :cond_2
    sget-boolean v7, Lcom/mycompany/app/pref/PrefZone;->k:Z

    .line 51
    .line 52
    if-nez v7, :cond_3

    .line 53
    .line 54
    sget-boolean v7, Lcom/mycompany/app/pref/PrefZone;->m:Z

    .line 55
    .line 56
    if-eqz v7, :cond_7

    .line 57
    .line 58
    :cond_3
    const-string v7, "<style id=\'sb_font_style\'>"

    .line 59
    .line 60
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    sget-boolean v7, Lcom/mycompany/app/pref/PrefZone;->k:Z

    .line 64
    .line 65
    if-eqz v7, :cond_4

    .line 66
    .line 67
    const-string v7, "@font-face{font-family:soul_user_font;src:url(\"soul_user_font.ttf\")}"

    .line 68
    .line 69
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    :cond_4
    const-string v7, "body,body *:not([class*=\"icon\"]):not([class^=\"fa\"]):not(ion-icon){"

    .line 73
    .line 74
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    sget-boolean v7, Lcom/mycompany/app/pref/PrefZone;->k:Z

    .line 78
    .line 79
    if-eqz v7, :cond_5

    .line 80
    .line 81
    const-string v7, "font-family:soul_user_font !important;"

    .line 82
    .line 83
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    :cond_5
    sget-boolean v7, Lcom/mycompany/app/pref/PrefZone;->m:Z

    .line 87
    .line 88
    if-eqz v7, :cond_6

    .line 89
    .line 90
    const-string v7, "font-weight:bold !important;"

    .line 91
    .line 92
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    :cond_6
    const-string v7, "}</style>"

    .line 96
    .line 97
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    :cond_7
    const-string v7, "<style>body{margin:0;padding:16px 16px 40px 16px;}figure,picture{margin:0;}figcaption{margin:0 auto 40px auto;}img{margin:0 auto 20px auto;display:block;max-width:100%;height:auto;}iframe{margin:0 auto 20px auto;display:block;max-width:100%;height:52vw;}svg{margin:0;width:16px;height:16px;}h1,h2{margin:0 auto 20px auto;line-height:1.4;word-wrap:break-word;font-size:24px;}p{margin:0 auto 32px auto;line-height:1.6;word-wrap:break-word;font-size:18px;}a{margin:0 auto 32px auto;line-height:1.6;word-wrap:break-word;font-size:18px;text-decoration:none;}"

    .line 101
    .line 102
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    sget-boolean v7, Lcom/mycompany/app/main/MainApp;->L1:Z

    .line 106
    .line 107
    if-nez v7, :cond_8

    .line 108
    .line 109
    const-string v7, "a:link{color:#4080FF;}"

    .line 110
    .line 111
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    :cond_8
    const-string v7, "</style></head><body>"

    .line 115
    .line 116
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 120
    .line 121
    .line 122
    move-result v7

    .line 123
    const/4 v9, 0x1

    .line 124
    const-string v10, ""

    .line 125
    .line 126
    if-nez v7, :cond_10

    .line 127
    .line 128
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 129
    .line 130
    .line 131
    move-result v7

    .line 132
    if-eqz v7, :cond_9

    .line 133
    .line 134
    goto :goto_3

    .line 135
    :cond_9
    if-nez v5, :cond_a

    .line 136
    .line 137
    goto :goto_3

    .line 138
    :cond_a
    const-string v7, "h1,h2"

    .line 139
    .line 140
    invoke-virtual {v5, v7}, Lorg/jsoup/nodes/Element;->selectFirst(Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    .line 141
    .line 142
    .line 143
    move-result-object v7

    .line 144
    if-nez v7, :cond_b

    .line 145
    .line 146
    goto :goto_3

    .line 147
    :cond_b
    invoke-virtual {v7}, Lorg/jsoup/nodes/Element;->text()Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object v11

    .line 151
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 152
    .line 153
    .line 154
    move-result v12

    .line 155
    if-nez v12, :cond_d

    .line 156
    .line 157
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 158
    .line 159
    .line 160
    move-result v12

    .line 161
    if-eqz v12, :cond_c

    .line 162
    .line 163
    goto :goto_1

    .line 164
    :cond_c
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 165
    .line 166
    .line 167
    move-result v12

    .line 168
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    .line 169
    .line 170
    .line 171
    move-result v13

    .line 172
    if-ge v12, v13, :cond_e

    .line 173
    .line 174
    :cond_d
    :goto_1
    const/4 v11, 0x0

    .line 175
    goto :goto_2

    .line 176
    :cond_e
    invoke-virtual {v2, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 177
    .line 178
    .line 179
    move-result v11

    .line 180
    :goto_2
    if-eqz v11, :cond_f

    .line 181
    .line 182
    invoke-virtual {v7, v10}, Lorg/jsoup/nodes/Element;->text(Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    .line 183
    .line 184
    .line 185
    :cond_f
    :goto_3
    const-string v7, "<title>"

    .line 186
    .line 187
    const-string v11, "</title><h2>"

    .line 188
    .line 189
    invoke-static {v6, v7, v2, v11, v2}, Landroid/support/v4/media/a;->z(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    .line 191
    .line 192
    const-string v2, "</h2>"

    .line 193
    .line 194
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    .line 196
    .line 197
    move v2, v9

    .line 198
    goto :goto_4

    .line 199
    :cond_10
    const/4 v2, 0x0

    .line 200
    :goto_4
    if-nez v5, :cond_11

    .line 201
    .line 202
    goto/16 :goto_9

    .line 203
    .line 204
    :cond_11
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 205
    .line 206
    .line 207
    move-result v7

    .line 208
    if-eqz v7, :cond_12

    .line 209
    .line 210
    :goto_5
    move-object v7, v4

    .line 211
    goto/16 :goto_8

    .line 212
    .line 213
    :cond_12
    const-string v7, "image/*"

    .line 214
    .line 215
    invoke-static {v3, v4, v7}, Landroidx/webkit/URLUtilCompat;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 216
    .line 217
    .line 218
    move-result-object v7

    .line 219
    invoke-static {v7}, Lcom/mycompany/app/main/MainUtil;->k1(Ljava/lang/String;)Ljava/lang/String;

    .line 220
    .line 221
    .line 222
    move-result-object v7

    .line 223
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 224
    .line 225
    .line 226
    move-result v11

    .line 227
    if-eqz v11, :cond_13

    .line 228
    .line 229
    goto :goto_5

    .line 230
    :cond_13
    const-string v11, "\\."

    .line 231
    .line 232
    invoke-virtual {v7, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 233
    .line 234
    .line 235
    move-result-object v11

    .line 236
    if-eqz v11, :cond_16

    .line 237
    .line 238
    array-length v12, v11

    .line 239
    if-le v12, v9, :cond_16

    .line 240
    .line 241
    array-length v12, v11

    .line 242
    move-object v14, v10

    .line 243
    const/4 v13, 0x0

    .line 244
    :goto_6
    if-ge v13, v12, :cond_15

    .line 245
    .line 246
    aget-object v15, v11, v13

    .line 247
    .line 248
    invoke-virtual {v15}, Ljava/lang/String;->length()I

    .line 249
    .line 250
    .line 251
    move-result v4

    .line 252
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    .line 253
    .line 254
    .line 255
    move-result v8

    .line 256
    if-le v4, v8, :cond_14

    .line 257
    .line 258
    move-object v14, v15

    .line 259
    :cond_14
    add-int/lit8 v13, v13, 0x1

    .line 260
    .line 261
    const/4 v4, 0x0

    .line 262
    goto :goto_6

    .line 263
    :cond_15
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 264
    .line 265
    .line 266
    move-result v4

    .line 267
    if-nez v4, :cond_16

    .line 268
    .line 269
    move-object v7, v14

    .line 270
    :cond_16
    const-string v4, "_"

    .line 271
    .line 272
    invoke-virtual {v7, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 273
    .line 274
    .line 275
    move-result-object v4

    .line 276
    if-eqz v4, :cond_19

    .line 277
    .line 278
    array-length v8, v4

    .line 279
    if-le v8, v9, :cond_19

    .line 280
    .line 281
    array-length v8, v4

    .line 282
    move-object v12, v10

    .line 283
    const/4 v11, 0x0

    .line 284
    :goto_7
    if-ge v11, v8, :cond_18

    .line 285
    .line 286
    aget-object v13, v4, v11

    .line 287
    .line 288
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    .line 289
    .line 290
    .line 291
    move-result v14

    .line 292
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    .line 293
    .line 294
    .line 295
    move-result v15

    .line 296
    if-le v14, v15, :cond_17

    .line 297
    .line 298
    move-object v12, v13

    .line 299
    :cond_17
    add-int/lit8 v11, v11, 0x1

    .line 300
    .line 301
    goto :goto_7

    .line 302
    :cond_18
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 303
    .line 304
    .line 305
    move-result v4

    .line 306
    if-nez v4, :cond_19

    .line 307
    .line 308
    move-object v7, v12

    .line 309
    :cond_19
    :goto_8
    const-string v4, "poster"

    .line 310
    .line 311
    const-string v8, "src"

    .line 312
    .line 313
    if-eqz v7, :cond_1b

    .line 314
    .line 315
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    .line 316
    .line 317
    .line 318
    move-result v11

    .line 319
    const/4 v12, 0x5

    .line 320
    if-le v11, v12, :cond_1b

    .line 321
    .line 322
    const-string v11, "img[src*=\'"

    .line 323
    .line 324
    const-string v12, "\'],amp-img[src*=\'"

    .line 325
    .line 326
    const-string v13, "\']"

    .line 327
    .line 328
    invoke-static {v11, v7, v12, v7, v13}, Landroid/support/v4/media/a;->n(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 329
    .line 330
    .line 331
    move-result-object v11

    .line 332
    invoke-virtual {v5, v11}, Lorg/jsoup/nodes/Element;->selectFirst(Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    .line 333
    .line 334
    .line 335
    move-result-object v11

    .line 336
    if-eqz v11, :cond_1a

    .line 337
    .line 338
    invoke-virtual {v11, v8}, Lorg/jsoup/nodes/Element;->removeAttr(Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    .line 339
    .line 340
    .line 341
    invoke-virtual {v11, v10}, Lorg/jsoup/nodes/Element;->html(Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    .line 342
    .line 343
    .line 344
    goto :goto_9

    .line 345
    :cond_1a
    new-instance v11, Ljava/lang/StringBuilder;

    .line 346
    .line 347
    const-string v12, "[poster*=\'"

    .line 348
    .line 349
    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 350
    .line 351
    .line 352
    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 353
    .line 354
    .line 355
    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 356
    .line 357
    .line 358
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 359
    .line 360
    .line 361
    move-result-object v7

    .line 362
    invoke-virtual {v5, v7}, Lorg/jsoup/nodes/Element;->selectFirst(Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    .line 363
    .line 364
    .line 365
    move-result-object v7

    .line 366
    if-eqz v7, :cond_1b

    .line 367
    .line 368
    invoke-virtual {v7, v4}, Lorg/jsoup/nodes/Element;->removeAttr(Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    .line 369
    .line 370
    .line 371
    invoke-virtual {v7, v10}, Lorg/jsoup/nodes/Element;->html(Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    .line 372
    .line 373
    .line 374
    goto :goto_9

    .line 375
    :cond_1b
    const-string v7, "img[src*=\'http\'],amp-img[src*=\'http\']"

    .line 376
    .line 377
    invoke-virtual {v5, v7}, Lorg/jsoup/nodes/Element;->selectFirst(Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    .line 378
    .line 379
    .line 380
    move-result-object v7

    .line 381
    if-eqz v7, :cond_1d

    .line 382
    .line 383
    invoke-static {v7}, Lcom/mycompany/app/web/WebReadTask;->q(Lorg/jsoup/nodes/Element;)Ljava/lang/String;

    .line 384
    .line 385
    .line 386
    move-result-object v11

    .line 387
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 388
    .line 389
    .line 390
    move-result v12

    .line 391
    if-nez v12, :cond_1d

    .line 392
    .line 393
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 394
    .line 395
    .line 396
    move-result v4

    .line 397
    if-eqz v4, :cond_1c

    .line 398
    .line 399
    move-object v3, v11

    .line 400
    :cond_1c
    invoke-virtual {v7, v8}, Lorg/jsoup/nodes/Element;->removeAttr(Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    .line 401
    .line 402
    .line 403
    invoke-virtual {v7, v10}, Lorg/jsoup/nodes/Element;->html(Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    .line 404
    .line 405
    .line 406
    goto :goto_9

    .line 407
    :cond_1d
    const-string v7, "[poster*=\'http\']"

    .line 408
    .line 409
    invoke-virtual {v5, v7}, Lorg/jsoup/nodes/Element;->selectFirst(Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    .line 410
    .line 411
    .line 412
    move-result-object v5

    .line 413
    if-eqz v5, :cond_1f

    .line 414
    .line 415
    invoke-static {v5}, Lcom/mycompany/app/web/WebReadTask;->u(Lorg/jsoup/nodes/Element;)Ljava/lang/String;

    .line 416
    .line 417
    .line 418
    move-result-object v7

    .line 419
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 420
    .line 421
    .line 422
    move-result v8

    .line 423
    if-nez v8, :cond_1f

    .line 424
    .line 425
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 426
    .line 427
    .line 428
    move-result v8

    .line 429
    if-eqz v8, :cond_1e

    .line 430
    .line 431
    move-object v3, v7

    .line 432
    :cond_1e
    invoke-virtual {v5, v4}, Lorg/jsoup/nodes/Element;->removeAttr(Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    .line 433
    .line 434
    .line 435
    invoke-virtual {v5, v10}, Lorg/jsoup/nodes/Element;->html(Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    .line 436
    .line 437
    .line 438
    :cond_1f
    :goto_9
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 439
    .line 440
    .line 441
    move-result v4

    .line 442
    if-nez v4, :cond_20

    .line 443
    .line 444
    const-string v4, "http://"

    .line 445
    .line 446
    const-string v5, "https://"

    .line 447
    .line 448
    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 449
    .line 450
    .line 451
    move-result-object v3

    .line 452
    const-string v4, "<img src=\'"

    .line 453
    .line 454
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 455
    .line 456
    .line 457
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 458
    .line 459
    .line 460
    const-string v3, "\' onerror=\"this.style.display=\'none\';\"></img>"

    .line 461
    .line 462
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 463
    .line 464
    .line 465
    :cond_20
    if-eqz v1, :cond_22

    .line 466
    .line 467
    iget-object v1, v1, Lnet/dankito/readability4j/Article;->b:Lorg/jsoup/nodes/Element;

    .line 468
    .line 469
    if-eqz v1, :cond_21

    .line 470
    .line 471
    invoke-virtual {v1}, Lorg/jsoup/nodes/Element;->html()Ljava/lang/String;

    .line 472
    .line 473
    .line 474
    move-result-object v4

    .line 475
    goto :goto_a

    .line 476
    :cond_21
    const/4 v4, 0x0

    .line 477
    :goto_a
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 478
    .line 479
    .line 480
    move-result v1

    .line 481
    if-nez v1, :cond_22

    .line 482
    .line 483
    const-string v1, "<p>Your browser doesn\'t support HTML5 video.</p>"

    .line 484
    .line 485
    invoke-virtual {v4, v1, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 486
    .line 487
    .line 488
    move-result-object v1

    .line 489
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 490
    .line 491
    .line 492
    move-result v3

    .line 493
    if-nez v3, :cond_22

    .line 494
    .line 495
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 496
    .line 497
    .line 498
    goto :goto_b

    .line 499
    :cond_22
    move v9, v2

    .line 500
    :goto_b
    if-nez v9, :cond_23

    .line 501
    .line 502
    iget-object v1, v0, Lcom/mycompany/app/web/WebReadTask;->b:Landroid/content/Context;

    .line 503
    .line 504
    if-eqz v1, :cond_23

    .line 505
    .line 506
    const-string v1, "<p>"

    .line 507
    .line 508
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 509
    .line 510
    .line 511
    iget-object v0, v0, Lcom/mycompany/app/web/WebReadTask;->b:Landroid/content/Context;

    .line 512
    .line 513
    sget v1, Lnet/kaki87/soul2/testing/R$string;->reader_empty:I

    .line 514
    .line 515
    const-string v2, "</p>"

    .line 516
    .line 517
    invoke-static {v0, v1, v6, v2}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->x(Landroid/content/Context;ILjava/lang/StringBuilder;Ljava/lang/String;)V

    .line 518
    .line 519
    .line 520
    :cond_23
    const-string v0, "</body></html>"

    .line 521
    .line 522
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 523
    .line 524
    .line 525
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 526
    .line 527
    .line 528
    move-result-object v0

    .line 529
    return-object v0
.end method

.method public static c(Lcom/mycompany/app/web/WebReadTask;Lnet/dankito/readability4j/Article;)Ljava/util/ArrayList;
    .locals 11

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object v0, p0, Lcom/mycompany/app/web/WebReadTask;->o:Ljava/util/ArrayList;

    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    if-eqz p1, :cond_1

    .line 10
    .line 11
    :try_start_0
    iget-object p1, p1, Lnet/dankito/readability4j/Article;->b:Lorg/jsoup/nodes/Element;

    .line 12
    .line 13
    if-nez p1, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    invoke-virtual {p0, p1}, Lcom/mycompany/app/web/WebReadTask;->B(Lorg/jsoup/nodes/Element;)V

    .line 17
    .line 18
    .line 19
    iget-object v1, p0, Lcom/mycompany/app/web/WebReadTask;->i:Ljava/lang/String;

    .line 20
    .line 21
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    xor-int/2addr v1, v0

    .line 26
    iput-boolean v1, p0, Lcom/mycompany/app/web/WebReadTask;->p:Z

    .line 27
    .line 28
    iget-object v1, p0, Lcom/mycompany/app/web/WebReadTask;->j:Ljava/lang/String;

    .line 29
    .line 30
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    xor-int/2addr v1, v0

    .line 35
    iput-boolean v1, p0, Lcom/mycompany/app/web/WebReadTask;->q:Z

    .line 36
    .line 37
    new-instance v1, Lcom/mycompany/app/web/WebReadTask$1;

    .line 38
    .line 39
    invoke-direct {v1, p0}, Lcom/mycompany/app/web/WebReadTask$1;-><init>(Lcom/mycompany/app/web/WebReadTask;)V

    .line 40
    .line 41
    .line 42
    invoke-static {v1, p1}, Lorg/jsoup/select/NodeTraversor;->traverse(Lorg/jsoup/select/NodeVisitor;Lorg/jsoup/nodes/Node;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 43
    .line 44
    .line 45
    :catch_0
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/mycompany/app/web/WebReadTask;->j:Ljava/lang/String;

    .line 46
    .line 47
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 48
    .line 49
    .line 50
    move-result p1

    .line 51
    const/4 v1, 0x0

    .line 52
    if-nez p1, :cond_2

    .line 53
    .line 54
    new-instance p1, Lcom/mycompany/app/web/WebReadTask$ReadItem;

    .line 55
    .line 56
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 57
    .line 58
    .line 59
    const/4 v2, 0x3

    .line 60
    iput v2, p1, Lcom/mycompany/app/web/WebReadTask$ReadItem;->a:I

    .line 61
    .line 62
    iget-object v2, p0, Lcom/mycompany/app/web/WebReadTask;->j:Ljava/lang/String;

    .line 63
    .line 64
    iput-object v2, p1, Lcom/mycompany/app/web/WebReadTask$ReadItem;->c:Ljava/lang/String;

    .line 65
    .line 66
    iget-object v2, p0, Lcom/mycompany/app/web/WebReadTask;->o:Ljava/util/ArrayList;

    .line 67
    .line 68
    invoke-virtual {v2, v1, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 69
    .line 70
    .line 71
    :cond_2
    iget-object p1, p0, Lcom/mycompany/app/web/WebReadTask;->i:Ljava/lang/String;

    .line 72
    .line 73
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 74
    .line 75
    .line 76
    move-result p1

    .line 77
    if-nez p1, :cond_3

    .line 78
    .line 79
    new-instance p1, Lcom/mycompany/app/web/WebReadTask$ReadItem;

    .line 80
    .line 81
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 82
    .line 83
    .line 84
    iput v0, p1, Lcom/mycompany/app/web/WebReadTask$ReadItem;->a:I

    .line 85
    .line 86
    iget-object v2, p0, Lcom/mycompany/app/web/WebReadTask;->i:Ljava/lang/String;

    .line 87
    .line 88
    iput-object v2, p1, Lcom/mycompany/app/web/WebReadTask$ReadItem;->b:Ljava/lang/String;

    .line 89
    .line 90
    iget-object v2, p0, Lcom/mycompany/app/web/WebReadTask;->o:Ljava/util/ArrayList;

    .line 91
    .line 92
    invoke-virtual {v2, v1, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 93
    .line 94
    .line 95
    :cond_3
    iget-object p1, p0, Lcom/mycompany/app/web/WebReadTask;->o:Ljava/util/ArrayList;

    .line 96
    .line 97
    const/4 v2, 0x0

    .line 98
    if-eqz p1, :cond_2b

    .line 99
    .line 100
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 101
    .line 102
    .line 103
    move-result p1

    .line 104
    if-eqz p1, :cond_4

    .line 105
    .line 106
    goto/16 :goto_14

    .line 107
    .line 108
    :cond_4
    new-instance p1, Ljava/util/ArrayList;

    .line 109
    .line 110
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 111
    .line 112
    .line 113
    iget-object p0, p0, Lcom/mycompany/app/web/WebReadTask;->o:Ljava/util/ArrayList;

    .line 114
    .line 115
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 116
    .line 117
    .line 118
    move-result v3

    .line 119
    move v4, v1

    .line 120
    :cond_5
    :goto_1
    if-ge v4, v3, :cond_e

    .line 121
    .line 122
    invoke-virtual {p0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 123
    .line 124
    .line 125
    move-result-object v5

    .line 126
    add-int/lit8 v4, v4, 0x1

    .line 127
    .line 128
    check-cast v5, Lcom/mycompany/app/web/WebReadTask$ReadItem;

    .line 129
    .line 130
    if-eqz v5, :cond_5

    .line 131
    .line 132
    iget v6, v5, Lcom/mycompany/app/web/WebReadTask$ReadItem;->a:I

    .line 133
    .line 134
    if-nez v6, :cond_6

    .line 135
    .line 136
    goto :goto_1

    .line 137
    :cond_6
    iget-object v6, v5, Lcom/mycompany/app/web/WebReadTask$ReadItem;->e:Ljava/lang/StringBuilder;

    .line 138
    .line 139
    if-nez v6, :cond_7

    .line 140
    .line 141
    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 142
    .line 143
    .line 144
    goto :goto_1

    .line 145
    :cond_7
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object v6

    .line 149
    iput-object v2, v5, Lcom/mycompany/app/web/WebReadTask$ReadItem;->e:Ljava/lang/StringBuilder;

    .line 150
    .line 151
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 152
    .line 153
    .line 154
    move-result v7

    .line 155
    if-eqz v7, :cond_8

    .line 156
    .line 157
    goto :goto_1

    .line 158
    :cond_8
    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object v6

    .line 162
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 163
    .line 164
    .line 165
    move-result v7

    .line 166
    if-eqz v7, :cond_9

    .line 167
    .line 168
    :goto_2
    move-object v6, v2

    .line 169
    goto :goto_3

    .line 170
    :cond_9
    const-string v7, "Your browser does"

    .line 171
    .line 172
    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 173
    .line 174
    .line 175
    move-result v7

    .line 176
    if-nez v7, :cond_a

    .line 177
    .line 178
    goto :goto_3

    .line 179
    :cond_a
    const-string v7, "n\'t support"

    .line 180
    .line 181
    const/16 v8, 0x11

    .line 182
    .line 183
    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    .line 184
    .line 185
    .line 186
    move-result v7

    .line 187
    if-eqz v7, :cond_b

    .line 188
    .line 189
    goto :goto_2

    .line 190
    :cond_b
    const-string v7, " not support"

    .line 191
    .line 192
    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    .line 193
    .line 194
    .line 195
    move-result v7

    .line 196
    if-eqz v7, :cond_c

    .line 197
    .line 198
    goto :goto_2

    .line 199
    :cond_c
    :goto_3
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 200
    .line 201
    .line 202
    move-result v7

    .line 203
    if-eqz v7, :cond_d

    .line 204
    .line 205
    goto :goto_1

    .line 206
    :cond_d
    iput-object v6, v5, Lcom/mycompany/app/web/WebReadTask$ReadItem;->b:Ljava/lang/String;

    .line 207
    .line 208
    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 209
    .line 210
    .line 211
    goto :goto_1

    .line 212
    :cond_e
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 213
    .line 214
    .line 215
    move-result p0

    .line 216
    if-eqz p0, :cond_f

    .line 217
    .line 218
    goto/16 :goto_14

    .line 219
    .line 220
    :cond_f
    new-instance p0, Ljava/util/ArrayList;

    .line 221
    .line 222
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 223
    .line 224
    .line 225
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 226
    .line 227
    .line 228
    move-result v3

    .line 229
    move v4, v1

    .line 230
    move v5, v4

    .line 231
    :goto_4
    const/4 v6, 0x2

    .line 232
    if-ge v4, v3, :cond_1a

    .line 233
    .line 234
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 235
    .line 236
    .line 237
    move-result-object v7

    .line 238
    check-cast v7, Lcom/mycompany/app/web/WebReadTask$ReadItem;

    .line 239
    .line 240
    if-eqz v7, :cond_19

    .line 241
    .line 242
    iget v8, v7, Lcom/mycompany/app/web/WebReadTask$ReadItem;->a:I

    .line 243
    .line 244
    if-ne v8, v6, :cond_19

    .line 245
    .line 246
    add-int/lit8 v8, v4, -0x1

    .line 247
    .line 248
    if-ltz v8, :cond_11

    .line 249
    .line 250
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 251
    .line 252
    .line 253
    move-result v9

    .line 254
    if-lt v8, v9, :cond_10

    .line 255
    .line 256
    goto :goto_5

    .line 257
    :cond_10
    invoke-virtual {p1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 258
    .line 259
    .line 260
    move-result-object v8

    .line 261
    check-cast v8, Lcom/mycompany/app/web/WebReadTask$ReadItem;

    .line 262
    .line 263
    goto :goto_6

    .line 264
    :cond_11
    :goto_5
    move-object v8, v2

    .line 265
    :goto_6
    if-eqz v8, :cond_12

    .line 266
    .line 267
    iget v9, v8, Lcom/mycompany/app/web/WebReadTask$ReadItem;->a:I

    .line 268
    .line 269
    if-ne v9, v6, :cond_12

    .line 270
    .line 271
    iget-object v6, v7, Lcom/mycompany/app/web/WebReadTask$ReadItem;->b:Ljava/lang/String;

    .line 272
    .line 273
    iget-object v8, v8, Lcom/mycompany/app/web/WebReadTask$ReadItem;->b:Ljava/lang/String;

    .line 274
    .line 275
    invoke-static {v6, v8}, Lcom/mycompany/app/main/MainUtil;->q5(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 276
    .line 277
    .line 278
    move-result v6

    .line 279
    if-eqz v6, :cond_12

    .line 280
    .line 281
    goto :goto_8

    .line 282
    :cond_12
    iget-object v6, v7, Lcom/mycompany/app/web/WebReadTask$ReadItem;->b:Ljava/lang/String;

    .line 283
    .line 284
    if-nez v6, :cond_13

    .line 285
    .line 286
    goto :goto_7

    .line 287
    :cond_13
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    .line 288
    .line 289
    .line 290
    move-result v8

    .line 291
    if-nez v8, :cond_14

    .line 292
    .line 293
    goto :goto_7

    .line 294
    :cond_14
    const/16 v9, 0x28

    .line 295
    .line 296
    if-le v8, v9, :cond_15

    .line 297
    .line 298
    goto :goto_7

    .line 299
    :cond_15
    add-int/lit8 v8, v8, -0x1

    .line 300
    .line 301
    invoke-virtual {v6, v8}, Ljava/lang/String;->charAt(I)C

    .line 302
    .line 303
    .line 304
    move-result v9

    .line 305
    const/16 v10, 0x2e

    .line 306
    .line 307
    if-ne v9, v10, :cond_16

    .line 308
    .line 309
    goto :goto_7

    .line 310
    :cond_16
    invoke-virtual {v6, v8}, Ljava/lang/String;->charAt(I)C

    .line 311
    .line 312
    .line 313
    move-result v9

    .line 314
    const/16 v10, 0x3f

    .line 315
    .line 316
    if-ne v9, v10, :cond_17

    .line 317
    .line 318
    goto :goto_7

    .line 319
    :cond_17
    invoke-virtual {v6, v8}, Ljava/lang/String;->charAt(I)C

    .line 320
    .line 321
    .line 322
    move-result v6

    .line 323
    const/16 v8, 0x3002

    .line 324
    .line 325
    if-ne v6, v8, :cond_18

    .line 326
    .line 327
    goto :goto_7

    .line 328
    :cond_18
    iput-boolean v0, v7, Lcom/mycompany/app/web/WebReadTask$ReadItem;->j:Z

    .line 329
    .line 330
    move v5, v0

    .line 331
    :cond_19
    :goto_7
    invoke-virtual {p0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 332
    .line 333
    .line 334
    :goto_8
    add-int/lit8 v4, v4, 0x1

    .line 335
    .line 336
    goto :goto_4

    .line 337
    :cond_1a
    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 338
    .line 339
    .line 340
    move-result p1

    .line 341
    if-eqz p1, :cond_1b

    .line 342
    .line 343
    goto/16 :goto_14

    .line 344
    .line 345
    :cond_1b
    if-nez v5, :cond_1c

    .line 346
    .line 347
    goto/16 :goto_13

    .line 348
    .line 349
    :cond_1c
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 350
    .line 351
    .line 352
    move-result p1

    .line 353
    move v3, v1

    .line 354
    :goto_9
    const-string v4, "\""

    .line 355
    .line 356
    if-ge v3, p1, :cond_1f

    .line 357
    .line 358
    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 359
    .line 360
    .line 361
    move-result-object v5

    .line 362
    check-cast v5, Lcom/mycompany/app/web/WebReadTask$ReadItem;

    .line 363
    .line 364
    if-eqz v5, :cond_1e

    .line 365
    .line 366
    iget v7, v5, Lcom/mycompany/app/web/WebReadTask$ReadItem;->a:I

    .line 367
    .line 368
    if-eq v7, v6, :cond_1d

    .line 369
    .line 370
    goto :goto_a

    .line 371
    :cond_1d
    iget-object p1, v5, Lcom/mycompany/app/web/WebReadTask$ReadItem;->b:Ljava/lang/String;

    .line 372
    .line 373
    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 374
    .line 375
    .line 376
    move-result p1

    .line 377
    if-eqz p1, :cond_1f

    .line 378
    .line 379
    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 380
    .line 381
    .line 382
    goto :goto_b

    .line 383
    :cond_1e
    :goto_a
    add-int/lit8 v3, v3, 0x1

    .line 384
    .line 385
    goto :goto_9

    .line 386
    :cond_1f
    :goto_b
    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 387
    .line 388
    .line 389
    move-result p1

    .line 390
    if-eqz p1, :cond_20

    .line 391
    .line 392
    goto/16 :goto_14

    .line 393
    .line 394
    :cond_20
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 395
    .line 396
    .line 397
    move-result p1

    .line 398
    sub-int/2addr p1, v0

    .line 399
    :goto_c
    const/4 v0, -0x1

    .line 400
    if-le p1, v0, :cond_23

    .line 401
    .line 402
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 403
    .line 404
    .line 405
    move-result-object v0

    .line 406
    check-cast v0, Lcom/mycompany/app/web/WebReadTask$ReadItem;

    .line 407
    .line 408
    if-eqz v0, :cond_22

    .line 409
    .line 410
    iget v3, v0, Lcom/mycompany/app/web/WebReadTask$ReadItem;->a:I

    .line 411
    .line 412
    if-eq v3, v6, :cond_21

    .line 413
    .line 414
    goto :goto_d

    .line 415
    :cond_21
    iget-object v0, v0, Lcom/mycompany/app/web/WebReadTask$ReadItem;->b:Ljava/lang/String;

    .line 416
    .line 417
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 418
    .line 419
    .line 420
    move-result v0

    .line 421
    if-eqz v0, :cond_23

    .line 422
    .line 423
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 424
    .line 425
    .line 426
    goto :goto_e

    .line 427
    :cond_22
    :goto_d
    add-int/lit8 p1, p1, -0x1

    .line 428
    .line 429
    goto :goto_c

    .line 430
    :cond_23
    :goto_e
    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 431
    .line 432
    .line 433
    move-result p1

    .line 434
    if-eqz p1, :cond_24

    .line 435
    .line 436
    goto :goto_14

    .line 437
    :cond_24
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 438
    .line 439
    .line 440
    move-result p1

    .line 441
    move v0, v1

    .line 442
    :goto_f
    if-ge v0, p1, :cond_2a

    .line 443
    .line 444
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 445
    .line 446
    .line 447
    move-result-object v3

    .line 448
    check-cast v3, Lcom/mycompany/app/web/WebReadTask$ReadItem;

    .line 449
    .line 450
    if-eqz v3, :cond_29

    .line 451
    .line 452
    iget-boolean v4, v3, Lcom/mycompany/app/web/WebReadTask$ReadItem;->j:Z

    .line 453
    .line 454
    if-nez v4, :cond_25

    .line 455
    .line 456
    goto :goto_12

    .line 457
    :cond_25
    add-int/lit8 v4, v0, 0x1

    .line 458
    .line 459
    if-ltz v4, :cond_27

    .line 460
    .line 461
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 462
    .line 463
    .line 464
    move-result v5

    .line 465
    if-lt v4, v5, :cond_26

    .line 466
    .line 467
    goto :goto_10

    .line 468
    :cond_26
    invoke-virtual {p0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 469
    .line 470
    .line 471
    move-result-object v4

    .line 472
    check-cast v4, Lcom/mycompany/app/web/WebReadTask$ReadItem;

    .line 473
    .line 474
    goto :goto_11

    .line 475
    :cond_27
    :goto_10
    move-object v4, v2

    .line 476
    :goto_11
    if-eqz v4, :cond_28

    .line 477
    .line 478
    iget-boolean v4, v4, Lcom/mycompany/app/web/WebReadTask$ReadItem;->j:Z

    .line 479
    .line 480
    if-nez v4, :cond_29

    .line 481
    .line 482
    :cond_28
    iput-boolean v1, v3, Lcom/mycompany/app/web/WebReadTask$ReadItem;->j:Z

    .line 483
    .line 484
    :cond_29
    :goto_12
    add-int/lit8 v0, v0, 0x1

    .line 485
    .line 486
    goto :goto_f

    .line 487
    :cond_2a
    :goto_13
    move-object v2, p0

    .line 488
    :cond_2b
    :goto_14
    return-object v2
.end method

.method public static d(Lcom/mycompany/app/web/WebReadTask;Z)Ljava/lang/StringBuilder;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebReadTask;->o:Ljava/util/ArrayList;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    goto :goto_1

    .line 7
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-lez v0, :cond_1

    .line 12
    .line 13
    iget-object v2, p0, Lcom/mycompany/app/web/WebReadTask;->o:Ljava/util/ArrayList;

    .line 14
    .line 15
    add-int/lit8 v0, v0, -0x1

    .line 16
    .line 17
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    check-cast v0, Lcom/mycompany/app/web/WebReadTask$ReadItem;

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_1
    move-object v0, v1

    .line 25
    :goto_0
    const/4 v2, 0x2

    .line 26
    if-nez p1, :cond_4

    .line 27
    .line 28
    if-eqz v0, :cond_3

    .line 29
    .line 30
    iget p0, v0, Lcom/mycompany/app/web/WebReadTask$ReadItem;->a:I

    .line 31
    .line 32
    if-eq p0, v2, :cond_2

    .line 33
    .line 34
    goto :goto_1

    .line 35
    :cond_2
    iget-object p0, v0, Lcom/mycompany/app/web/WebReadTask$ReadItem;->e:Ljava/lang/StringBuilder;

    .line 36
    .line 37
    return-object p0

    .line 38
    :cond_3
    :goto_1
    return-object v1

    .line 39
    :cond_4
    if-eqz v0, :cond_5

    .line 40
    .line 41
    iget p1, v0, Lcom/mycompany/app/web/WebReadTask$ReadItem;->a:I

    .line 42
    .line 43
    if-eq p1, v2, :cond_6

    .line 44
    .line 45
    :cond_5
    new-instance v0, Lcom/mycompany/app/web/WebReadTask$ReadItem;

    .line 46
    .line 47
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 48
    .line 49
    .line 50
    iput v2, v0, Lcom/mycompany/app/web/WebReadTask$ReadItem;->a:I

    .line 51
    .line 52
    iget-object p0, p0, Lcom/mycompany/app/web/WebReadTask;->o:Ljava/util/ArrayList;

    .line 53
    .line 54
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 55
    .line 56
    .line 57
    :cond_6
    iget-object p0, v0, Lcom/mycompany/app/web/WebReadTask$ReadItem;->e:Ljava/lang/StringBuilder;

    .line 58
    .line 59
    if-nez p0, :cond_7

    .line 60
    .line 61
    new-instance p0, Ljava/lang/StringBuilder;

    .line 62
    .line 63
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 64
    .line 65
    .line 66
    iput-object p0, v0, Lcom/mycompany/app/web/WebReadTask$ReadItem;->e:Ljava/lang/StringBuilder;

    .line 67
    .line 68
    :cond_7
    iget-object p0, v0, Lcom/mycompany/app/web/WebReadTask$ReadItem;->e:Ljava/lang/StringBuilder;

    .line 69
    .line 70
    return-object p0
.end method

.method public static e(Lcom/mycompany/app/web/WebReadTask;)Ljava/util/ArrayList;
    .locals 12

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/mycompany/app/web/WebReadTask;->i:Ljava/lang/String;

    .line 7
    .line 8
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    const/4 v2, 0x1

    .line 13
    if-nez v1, :cond_0

    .line 14
    .line 15
    new-instance v1, Lcom/mycompany/app/web/WebReadTask$ReadItem;

    .line 16
    .line 17
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 18
    .line 19
    .line 20
    iput v2, v1, Lcom/mycompany/app/web/WebReadTask$ReadItem;->a:I

    .line 21
    .line 22
    iget-object v3, p0, Lcom/mycompany/app/web/WebReadTask;->i:Ljava/lang/String;

    .line 23
    .line 24
    iput-object v3, v1, Lcom/mycompany/app/web/WebReadTask$ReadItem;->b:Ljava/lang/String;

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    :cond_0
    iget-object v1, p0, Lcom/mycompany/app/web/WebReadTask;->l:Ljava/lang/String;

    .line 30
    .line 31
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    if-nez v1, :cond_1

    .line 36
    .line 37
    new-instance v1, Lcom/mycompany/app/web/WebReadTask$ReadItem;

    .line 38
    .line 39
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 40
    .line 41
    .line 42
    const/4 v3, 0x4

    .line 43
    iput v3, v1, Lcom/mycompany/app/web/WebReadTask$ReadItem;->a:I

    .line 44
    .line 45
    iget-object v3, p0, Lcom/mycompany/app/web/WebReadTask;->l:Ljava/lang/String;

    .line 46
    .line 47
    iput-object v3, v1, Lcom/mycompany/app/web/WebReadTask$ReadItem;->d:Ljava/lang/String;

    .line 48
    .line 49
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_1
    iget-object v1, p0, Lcom/mycompany/app/web/WebReadTask;->j:Ljava/lang/String;

    .line 54
    .line 55
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 56
    .line 57
    .line 58
    move-result v1

    .line 59
    if-nez v1, :cond_2

    .line 60
    .line 61
    new-instance v1, Lcom/mycompany/app/web/WebReadTask$ReadItem;

    .line 62
    .line 63
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 64
    .line 65
    .line 66
    const/4 v3, 0x3

    .line 67
    iput v3, v1, Lcom/mycompany/app/web/WebReadTask$ReadItem;->a:I

    .line 68
    .line 69
    iget-object v3, p0, Lcom/mycompany/app/web/WebReadTask;->j:Ljava/lang/String;

    .line 70
    .line 71
    iput-object v3, v1, Lcom/mycompany/app/web/WebReadTask$ReadItem;->c:Ljava/lang/String;

    .line 72
    .line 73
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 74
    .line 75
    .line 76
    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/mycompany/app/web/WebReadTask;->k:Ljava/util/ArrayList;

    .line 77
    .line 78
    if-eqz v1, :cond_9

    .line 79
    .line 80
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 81
    .line 82
    .line 83
    move-result v1

    .line 84
    if-nez v1, :cond_9

    .line 85
    .line 86
    iget-object p0, p0, Lcom/mycompany/app/web/WebReadTask;->k:Ljava/util/ArrayList;

    .line 87
    .line 88
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 89
    .line 90
    .line 91
    move-result v1

    .line 92
    const/4 v3, 0x0

    .line 93
    move v4, v3

    .line 94
    :cond_3
    :goto_1
    if-ge v4, v1, :cond_9

    .line 95
    .line 96
    invoke-virtual {p0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    move-result-object v5

    .line 100
    add-int/lit8 v4, v4, 0x1

    .line 101
    .line 102
    check-cast v5, Ljava/lang/String;

    .line 103
    .line 104
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 105
    .line 106
    .line 107
    move-result v6

    .line 108
    if-eqz v6, :cond_4

    .line 109
    .line 110
    goto :goto_1

    .line 111
    :cond_4
    const-string v6, "\n"

    .line 112
    .line 113
    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v6

    .line 117
    const/4 v7, 0x2

    .line 118
    if-eqz v6, :cond_8

    .line 119
    .line 120
    array-length v8, v6

    .line 121
    if-ge v8, v7, :cond_5

    .line 122
    .line 123
    goto :goto_4

    .line 124
    :cond_5
    array-length v5, v6

    .line 125
    const/4 v8, 0x0

    .line 126
    move v9, v3

    .line 127
    :goto_2
    if-ge v9, v5, :cond_7

    .line 128
    .line 129
    aget-object v10, v6, v9

    .line 130
    .line 131
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 132
    .line 133
    .line 134
    move-result v11

    .line 135
    if-eqz v11, :cond_6

    .line 136
    .line 137
    goto :goto_3

    .line 138
    :cond_6
    new-instance v8, Lcom/mycompany/app/web/WebReadTask$ReadItem;

    .line 139
    .line 140
    invoke-direct {v8}, Ljava/lang/Object;-><init>()V

    .line 141
    .line 142
    .line 143
    iput v7, v8, Lcom/mycompany/app/web/WebReadTask$ReadItem;->a:I

    .line 144
    .line 145
    iput-object v10, v8, Lcom/mycompany/app/web/WebReadTask$ReadItem;->b:Ljava/lang/String;

    .line 146
    .line 147
    iput-boolean v2, v8, Lcom/mycompany/app/web/WebReadTask$ReadItem;->j:Z

    .line 148
    .line 149
    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 150
    .line 151
    .line 152
    :goto_3
    add-int/lit8 v9, v9, 0x1

    .line 153
    .line 154
    goto :goto_2

    .line 155
    :cond_7
    if-eqz v8, :cond_3

    .line 156
    .line 157
    iput-boolean v3, v8, Lcom/mycompany/app/web/WebReadTask$ReadItem;->j:Z

    .line 158
    .line 159
    goto :goto_1

    .line 160
    :cond_8
    :goto_4
    new-instance v6, Lcom/mycompany/app/web/WebReadTask$ReadItem;

    .line 161
    .line 162
    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    .line 163
    .line 164
    .line 165
    iput v7, v6, Lcom/mycompany/app/web/WebReadTask$ReadItem;->a:I

    .line 166
    .line 167
    iput-object v5, v6, Lcom/mycompany/app/web/WebReadTask$ReadItem;->b:Ljava/lang/String;

    .line 168
    .line 169
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 170
    .line 171
    .line 172
    goto :goto_1

    .line 173
    :cond_9
    return-object v0
.end method

.method public static f(Lcom/mycompany/app/web/WebReadTask;Lorg/jsoup/nodes/Document;Ljava/lang/String;)V
    .locals 8

    .line 1
    invoke-static {p1}, Lcom/mycompany/app/web/WebReadTask;->v(Lorg/jsoup/nodes/Document;)Lorg/json/JSONObject;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const/4 v0, 0x0

    .line 6
    const/4 v1, 0x0

    .line 7
    if-nez p1, :cond_0

    .line 8
    .line 9
    :catch_0
    :goto_0
    move-object v5, v1

    .line 10
    goto/16 :goto_4

    .line 11
    .line 12
    :cond_0
    :try_start_0
    const-string v2, "videoDetails"

    .line 13
    .line 14
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    const-string v3, "shortDescription"

    .line 19
    .line 20
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 25
    .line 26
    .line 27
    move-result v3

    .line 28
    if-eqz v3, :cond_1

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    const/4 v3, 0x2

    .line 32
    new-array v4, v3, [B

    .line 33
    .line 34
    fill-array-data v4, :array_0

    .line 35
    .line 36
    .line 37
    new-instance v5, Ljava/lang/String;

    .line 38
    .line 39
    invoke-direct {v5, v4}, Ljava/lang/String;-><init>([B)V

    .line 40
    .line 41
    .line 42
    const-string v4, "\n"

    .line 43
    .line 44
    invoke-virtual {v2, v5, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 49
    .line 50
    .line 51
    move-result v4

    .line 52
    if-eqz v4, :cond_2

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_2
    const-string v4, "\n\n"

    .line 56
    .line 57
    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v4

    .line 61
    if-eqz v4, :cond_7

    .line 62
    .line 63
    array-length v5, v4

    .line 64
    if-ge v5, v3, :cond_3

    .line 65
    .line 66
    goto :goto_3

    .line 67
    :cond_3
    array-length v2, v4

    .line 68
    move v3, v0

    .line 69
    move-object v5, v1

    .line 70
    :goto_1
    if-ge v3, v2, :cond_8

    .line 71
    .line 72
    aget-object v6, v4, v3

    .line 73
    .line 74
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 75
    .line 76
    .line 77
    move-result v7

    .line 78
    if-eqz v7, :cond_4

    .line 79
    .line 80
    goto :goto_2

    .line 81
    :cond_4
    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v6

    .line 85
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 86
    .line 87
    .line 88
    move-result v7

    .line 89
    if-eqz v7, :cond_5

    .line 90
    .line 91
    goto :goto_2

    .line 92
    :cond_5
    if-nez v5, :cond_6

    .line 93
    .line 94
    new-instance v5, Ljava/util/ArrayList;

    .line 95
    .line 96
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 97
    .line 98
    .line 99
    :cond_6
    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 100
    .line 101
    .line 102
    :goto_2
    add-int/lit8 v3, v3, 0x1

    .line 103
    .line 104
    goto :goto_1

    .line 105
    :cond_7
    :goto_3
    new-instance v5, Ljava/util/ArrayList;

    .line 106
    .line 107
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 108
    .line 109
    .line 110
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 111
    .line 112
    .line 113
    :cond_8
    :goto_4
    if-eqz v5, :cond_9

    .line 114
    .line 115
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    .line 116
    .line 117
    .line 118
    move-result v2

    .line 119
    if-eqz v2, :cond_a

    .line 120
    .line 121
    :cond_9
    new-instance v5, Ljava/util/ArrayList;

    .line 122
    .line 123
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 124
    .line 125
    .line 126
    const-string v2, "YouTube"

    .line 127
    .line 128
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 129
    .line 130
    .line 131
    :cond_a
    iput-object v5, p0, Lcom/mycompany/app/web/WebReadTask;->k:Ljava/util/ArrayList;

    .line 132
    .line 133
    const-string v2, "embed"

    .line 134
    .line 135
    const-string v3, "playerMicroformatRenderer"

    .line 136
    .line 137
    const-string v4, "microformat"

    .line 138
    .line 139
    if-nez p1, :cond_c

    .line 140
    .line 141
    :catch_1
    :cond_b
    move-object v5, v1

    .line 142
    goto :goto_5

    .line 143
    :cond_c
    :try_start_1
    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 144
    .line 145
    .line 146
    move-result-object v5

    .line 147
    invoke-virtual {v5, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 148
    .line 149
    .line 150
    move-result-object v5

    .line 151
    invoke-virtual {v5, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 152
    .line 153
    .line 154
    move-result-object v5

    .line 155
    const-string v6, "iframeUrl"

    .line 156
    .line 157
    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object v5

    .line 161
    invoke-static {v5}, Landroid/webkit/URLUtil;->isNetworkUrl(Ljava/lang/String;)Z

    .line 162
    .line 163
    .line 164
    move-result v6
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 165
    if-eqz v6, :cond_b

    .line 166
    .line 167
    :goto_5
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 168
    .line 169
    .line 170
    move-result v6

    .line 171
    if-nez v6, :cond_11

    .line 172
    .line 173
    if-nez p1, :cond_d

    .line 174
    .line 175
    goto :goto_6

    .line 176
    :cond_d
    :try_start_2
    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 177
    .line 178
    .line 179
    move-result-object v4

    .line 180
    invoke-virtual {v4, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 181
    .line 182
    .line 183
    move-result-object v3

    .line 184
    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 185
    .line 186
    .line 187
    move-result-object v2

    .line 188
    if-nez v2, :cond_e

    .line 189
    .line 190
    goto :goto_6

    .line 191
    :cond_e
    const-string v3, "width"

    .line 192
    .line 193
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    .line 194
    .line 195
    .line 196
    move-result v3

    .line 197
    if-gtz v3, :cond_f

    .line 198
    .line 199
    goto :goto_6

    .line 200
    :cond_f
    const-string v4, "height"

    .line 201
    .line 202
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    .line 203
    .line 204
    .line 205
    move-result v2

    .line 206
    if-gtz v2, :cond_10

    .line 207
    .line 208
    goto :goto_6

    .line 209
    :cond_10
    int-to-float v2, v2

    .line 210
    int-to-float v3, v3

    .line 211
    div-float/2addr v2, v3

    .line 212
    const/high16 v3, 0x42c80000    # 100.0f

    .line 213
    .line 214
    mul-float/2addr v2, v3

    .line 215
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    .line 216
    .line 217
    .line 218
    move-result v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 219
    :catch_2
    :goto_6
    iput v0, p0, Lcom/mycompany/app/web/WebReadTask;->m:I

    .line 220
    .line 221
    goto :goto_7

    .line 222
    :cond_11
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 223
    .line 224
    .line 225
    move-result v0

    .line 226
    if-nez v0, :cond_12

    .line 227
    .line 228
    const-string v0, "https://www.youtube.com/embed/"

    .line 229
    .line 230
    invoke-static {v0, p2}, Landroid/support/v4/media/a;->C(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 231
    .line 232
    .line 233
    move-result-object v5

    .line 234
    :cond_12
    :goto_7
    iput-object v5, p0, Lcom/mycompany/app/web/WebReadTask;->l:Ljava/lang/String;

    .line 235
    .line 236
    iget-boolean v0, p0, Lcom/mycompany/app/web/WebReadTask;->d:Z

    .line 237
    .line 238
    if-eqz v0, :cond_19

    .line 239
    .line 240
    iget-object v0, p0, Lcom/mycompany/app/web/WebReadTask;->j:Ljava/lang/String;

    .line 241
    .line 242
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 243
    .line 244
    .line 245
    move-result v0

    .line 246
    if-eqz v0, :cond_19

    .line 247
    .line 248
    if-nez p1, :cond_14

    .line 249
    .line 250
    :catch_3
    :cond_13
    :goto_8
    move-object v2, v1

    .line 251
    goto :goto_a

    .line 252
    :cond_14
    :try_start_3
    const-string v0, "thumbnail"

    .line 253
    .line 254
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 255
    .line 256
    .line 257
    move-result-object p1

    .line 258
    const-string v0, "thumbnails"

    .line 259
    .line 260
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 261
    .line 262
    .line 263
    move-result-object p1

    .line 264
    if-nez p1, :cond_15

    .line 265
    .line 266
    goto :goto_8

    .line 267
    :cond_15
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    .line 268
    .line 269
    .line 270
    move-result v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 271
    add-int/lit8 v0, v0, -0x1

    .line 272
    .line 273
    :goto_9
    const/4 v2, -0x1

    .line 274
    if-le v0, v2, :cond_13

    .line 275
    .line 276
    :try_start_4
    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    .line 277
    .line 278
    .line 279
    move-result-object v2

    .line 280
    const-string v3, "url"

    .line 281
    .line 282
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 283
    .line 284
    .line 285
    move-result-object v2

    .line 286
    invoke-static {v2}, Landroid/webkit/URLUtil;->isNetworkUrl(Ljava/lang/String;)Z

    .line 287
    .line 288
    .line 289
    move-result v3
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 290
    if-eqz v3, :cond_16

    .line 291
    .line 292
    goto :goto_a

    .line 293
    :catch_4
    :cond_16
    add-int/lit8 v0, v0, -0x1

    .line 294
    .line 295
    goto :goto_9

    .line 296
    :goto_a
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 297
    .line 298
    .line 299
    move-result p1

    .line 300
    if-eqz p1, :cond_18

    .line 301
    .line 302
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 303
    .line 304
    .line 305
    move-result p1

    .line 306
    if-eqz p1, :cond_17

    .line 307
    .line 308
    goto :goto_b

    .line 309
    :cond_17
    const-string p1, "https://img.youtube.com/vi/"

    .line 310
    .line 311
    const-string v0, "/0.jpg"

    .line 312
    .line 313
    invoke-static {p1, p2, v0}, Landroid/support/v4/media/a;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 314
    .line 315
    .line 316
    move-result-object v1

    .line 317
    :goto_b
    move-object v2, v1

    .line 318
    :cond_18
    iput-object v2, p0, Lcom/mycompany/app/web/WebReadTask;->j:Ljava/lang/String;

    .line 319
    .line 320
    iget-object p0, p0, Lcom/mycompany/app/web/WebReadTask;->c:Lcom/mycompany/app/web/WebReadTask$WebReadListener;

    .line 321
    .line 322
    if-eqz p0, :cond_19

    .line 323
    .line 324
    invoke-interface {p0, v2}, Lcom/mycompany/app/web/WebReadTask$WebReadListener;->d(Ljava/lang/String;)V

    .line 325
    .line 326
    .line 327
    :cond_19
    return-void

    .line 328
    nop

    .line 329
    :array_0
    .array-data 1
        0xdt
        0xat
    .end array-data
.end method

.method public static g(Lcom/mycompany/app/web/WebReadTask;Lorg/jsoup/nodes/Document;Ljava/lang/String;)V
    .locals 10

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    goto/16 :goto_3

    .line 4
    .line 5
    :cond_0
    const-string v0, "p"

    .line 6
    .line 7
    invoke-virtual {p1, v0}, Lorg/jsoup/nodes/Element;->select(Ljava/lang/String;)Lorg/jsoup/select/Elements;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-eqz v0, :cond_11

    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-nez v1, :cond_1

    .line 18
    .line 19
    goto/16 :goto_3

    .line 20
    .line 21
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    const/4 v2, 0x0

    .line 26
    const/4 v3, 0x0

    .line 27
    const/4 v4, 0x1

    .line 28
    move v6, v2

    .line 29
    move-object v5, v3

    .line 30
    :goto_0
    if-ge v6, v1, :cond_6

    .line 31
    .line 32
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v7

    .line 36
    add-int/lit8 v6, v6, 0x1

    .line 37
    .line 38
    check-cast v7, Lorg/jsoup/nodes/Element;

    .line 39
    .line 40
    if-nez v7, :cond_2

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_2
    invoke-virtual {v7}, Lorg/jsoup/nodes/Element;->html()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v7

    .line 47
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 48
    .line 49
    .line 50
    move-result v8

    .line 51
    if-eqz v8, :cond_3

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_3
    const-string v8, "\n"

    .line 55
    .line 56
    const-string v9, ""

    .line 57
    .line 58
    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v7

    .line 62
    if-eqz v4, :cond_4

    .line 63
    .line 64
    iput-object v7, p0, Lcom/mycompany/app/web/WebReadTask;->i:Ljava/lang/String;

    .line 65
    .line 66
    move v4, v2

    .line 67
    goto :goto_0

    .line 68
    :cond_4
    if-nez v5, :cond_5

    .line 69
    .line 70
    new-instance v5, Ljava/util/ArrayList;

    .line 71
    .line 72
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 73
    .line 74
    .line 75
    :cond_5
    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 76
    .line 77
    .line 78
    goto :goto_0

    .line 79
    :cond_6
    iput-object v5, p0, Lcom/mycompany/app/web/WebReadTask;->k:Ljava/util/ArrayList;

    .line 80
    .line 81
    iget-object v0, p0, Lcom/mycompany/app/web/WebReadTask;->i:Ljava/lang/String;

    .line 82
    .line 83
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 84
    .line 85
    .line 86
    move-result v0

    .line 87
    if-eqz v0, :cond_7

    .line 88
    .line 89
    const-string v0, "YouTube"

    .line 90
    .line 91
    iput-object v0, p0, Lcom/mycompany/app/web/WebReadTask;->i:Ljava/lang/String;

    .line 92
    .line 93
    :cond_7
    const-string v0, "iframe"

    .line 94
    .line 95
    invoke-virtual {p1, v0}, Lorg/jsoup/nodes/Element;->select(Ljava/lang/String;)Lorg/jsoup/select/Elements;

    .line 96
    .line 97
    .line 98
    move-result-object p1

    .line 99
    if-eqz p1, :cond_11

    .line 100
    .line 101
    invoke-virtual {p1}, Ljava/util/AbstractCollection;->size()I

    .line 102
    .line 103
    .line 104
    move-result v0

    .line 105
    if-nez v0, :cond_8

    .line 106
    .line 107
    goto/16 :goto_3

    .line 108
    .line 109
    :cond_8
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 110
    .line 111
    .line 112
    move-result v0

    .line 113
    :cond_9
    :goto_1
    if-ge v2, v0, :cond_b

    .line 114
    .line 115
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 116
    .line 117
    .line 118
    move-result-object v1

    .line 119
    add-int/lit8 v2, v2, 0x1

    .line 120
    .line 121
    check-cast v1, Lorg/jsoup/nodes/Element;

    .line 122
    .line 123
    if-nez v1, :cond_a

    .line 124
    .line 125
    goto :goto_1

    .line 126
    :cond_a
    const-string v4, "src"

    .line 127
    .line 128
    invoke-virtual {v1, v4}, Lorg/jsoup/nodes/Node;->attr(Ljava/lang/String;)Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object v4

    .line 132
    invoke-static {v4}, Landroid/webkit/URLUtil;->isNetworkUrl(Ljava/lang/String;)Z

    .line 133
    .line 134
    .line 135
    move-result v5

    .line 136
    if-eqz v5, :cond_9

    .line 137
    .line 138
    move-object v3, v1

    .line 139
    goto :goto_2

    .line 140
    :cond_b
    move-object v4, v3

    .line 141
    :goto_2
    if-nez v3, :cond_c

    .line 142
    .line 143
    goto :goto_3

    .line 144
    :cond_c
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 145
    .line 146
    .line 147
    move-result p1

    .line 148
    if-eqz p1, :cond_d

    .line 149
    .line 150
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 151
    .line 152
    .line 153
    move-result p1

    .line 154
    if-nez p1, :cond_d

    .line 155
    .line 156
    const-string p1, "https://www.youtube.com/embed/"

    .line 157
    .line 158
    invoke-static {p1, p2}, Landroid/support/v4/media/a;->C(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object v4

    .line 162
    :cond_d
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 163
    .line 164
    .line 165
    move-result p1

    .line 166
    if-eqz p1, :cond_e

    .line 167
    .line 168
    goto :goto_3

    .line 169
    :cond_e
    iput-object v4, p0, Lcom/mycompany/app/web/WebReadTask;->l:Ljava/lang/String;

    .line 170
    .line 171
    const-string p1, "width"

    .line 172
    .line 173
    invoke-virtual {v3, p1}, Lorg/jsoup/nodes/Node;->attr(Ljava/lang/String;)Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object p1

    .line 177
    invoke-static {p1}, Lcom/mycompany/app/main/MainUtil;->G6(Ljava/lang/String;)I

    .line 178
    .line 179
    .line 180
    move-result p1

    .line 181
    if-gtz p1, :cond_f

    .line 182
    .line 183
    goto :goto_3

    .line 184
    :cond_f
    const-string p2, "height"

    .line 185
    .line 186
    invoke-virtual {v3, p2}, Lorg/jsoup/nodes/Node;->attr(Ljava/lang/String;)Ljava/lang/String;

    .line 187
    .line 188
    .line 189
    move-result-object p2

    .line 190
    invoke-static {p2}, Lcom/mycompany/app/main/MainUtil;->G6(Ljava/lang/String;)I

    .line 191
    .line 192
    .line 193
    move-result p2

    .line 194
    if-gtz p2, :cond_10

    .line 195
    .line 196
    goto :goto_3

    .line 197
    :cond_10
    int-to-float p2, p2

    .line 198
    int-to-float p1, p1

    .line 199
    div-float/2addr p2, p1

    .line 200
    const/high16 p1, 0x42c80000    # 100.0f

    .line 201
    .line 202
    mul-float/2addr p2, p1

    .line 203
    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    .line 204
    .line 205
    .line 206
    move-result p1

    .line 207
    iput p1, p0, Lcom/mycompany/app/web/WebReadTask;->m:I

    .line 208
    .line 209
    :cond_11
    :goto_3
    return-void
.end method

.method public static h(Ljava/util/ArrayList;ZZZLjava/lang/String;I)Ljava/lang/String;
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p5

    .line 4
    .line 5
    if-eqz v0, :cond_21

    .line 6
    .line 7
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    if-eqz v2, :cond_0

    .line 12
    .line 13
    goto/16 :goto_f

    .line 14
    .line 15
    :cond_0
    const-string v2, "\'>"

    .line 16
    .line 17
    const/4 v3, 0x0

    .line 18
    if-eqz p2, :cond_e

    .line 19
    .line 20
    sget-boolean v4, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 21
    .line 22
    if-eqz v4, :cond_1

    .line 23
    .line 24
    const-string v4, "white;}"

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_1
    const-string v4, "black;}"

    .line 28
    .line 29
    :goto_0
    if-gtz v1, :cond_2

    .line 30
    .line 31
    const/16 v1, 0x38

    .line 32
    .line 33
    goto :goto_1

    .line 34
    :cond_2
    const/16 v5, 0x64

    .line 35
    .line 36
    if-le v1, v5, :cond_3

    .line 37
    .line 38
    move v1, v5

    .line 39
    :cond_3
    :goto_1
    new-instance v5, Ljava/lang/StringBuilder;

    .line 40
    .line 41
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 42
    .line 43
    .line 44
    const-string v6, "<!DOCTYPE html><html dir=\'auto\'><head><meta charset=\"utf-8\"/><meta property=\'og:url\' content=\'https://www.youtube.com/watch?v=sb_read_"

    .line 45
    .line 46
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    move-object/from16 v6, p4

    .line 50
    .line 51
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    if-eqz p1, :cond_7

    .line 58
    .line 59
    const-string v6, "<meta name=\'viewport\' content=\'width=device-width,initial-scale=1.0,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no\'/><style>"

    .line 60
    .line 61
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    sget-boolean v6, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 65
    .line 66
    if-eqz v6, :cond_4

    .line 67
    .line 68
    const-string v6, "::selection{background:#1976d2;color:white;}"

    .line 69
    .line 70
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    goto :goto_2

    .line 74
    :cond_4
    const-string v6, "::selection{background:#b3e5fc;color:black;}"

    .line 75
    .line 76
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    :goto_2
    const-string v6, "font{background:transparent !important;box-shadow:none !important;}@font-face{font-family:soul_user_font;src:url(\"soul_user_font.ttf\")}body,body *:not([class*=\"icon\"]):not([class^=\"fa\"]):not(ion-icon){font-family:soul_user_font !important;}"

    .line 80
    .line 81
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    invoke-static {}, Lcom/mycompany/app/main/MainUtil;->C6()Z

    .line 85
    .line 86
    .line 87
    move-result v6

    .line 88
    if-eqz v6, :cond_5

    .line 89
    .line 90
    const-string v6, "body{margin:0;padding:48px 0 80px 0;}"

    .line 91
    .line 92
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    goto :goto_3

    .line 96
    :cond_5
    const-string v6, "body{margin:0;padding:20px 0 80px 0;}"

    .line 97
    .line 98
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    :goto_3
    const-string v6, "img{padding:0 16px 0 16px;margin:0 auto 20px auto;display:block;max-width:100%;height:auto;user-select:none;}iframe{margin:40px auto 40px auto;display:block;width:100vw;height:"

    .line 102
    .line 103
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    const-string v1, "vw;user-select:none;}p{padding:0 16px 0 16px;margin:0 auto 32px auto;line-height:1.6;word-wrap:break-word;font-size:18px;color:"

    .line 110
    .line 111
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    const-string v1, "</style>"

    .line 118
    .line 119
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    sget-boolean v1, Lcom/mycompany/app/pref/PrefRead;->p:Z

    .line 123
    .line 124
    if-eqz v1, :cond_6

    .line 125
    .line 126
    const-string v1, "<style id=\'sb_bold_style\'>body,body *:not([class*=\"icon\"]):not([class^=\"fa\"]):not(ion-icon){font-weight:bold !important;}</style>"

    .line 127
    .line 128
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    :cond_6
    const-string v1, "</head><body>"

    .line 132
    .line 133
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    .line 135
    .line 136
    goto :goto_5

    .line 137
    :cond_7
    const-string v4, "<meta name=\'viewport\' content=\'width=device-width,initial-scale=1.0,minimum-scale=1.0,maximum-scale=5.0,user-scalable=yes\'/>"

    .line 138
    .line 139
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    .line 141
    .line 142
    sget-boolean v4, Lcom/mycompany/app/pref/PrefZone;->k:Z

    .line 143
    .line 144
    if-nez v4, :cond_8

    .line 145
    .line 146
    sget-boolean v4, Lcom/mycompany/app/pref/PrefZone;->m:Z

    .line 147
    .line 148
    if-eqz v4, :cond_c

    .line 149
    .line 150
    :cond_8
    const-string v4, "<style id=\'sb_font_style\'>"

    .line 151
    .line 152
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    .line 154
    .line 155
    sget-boolean v4, Lcom/mycompany/app/pref/PrefZone;->k:Z

    .line 156
    .line 157
    if-eqz v4, :cond_9

    .line 158
    .line 159
    const-string v4, "@font-face{font-family:soul_user_font;src:url(\"soul_user_font.ttf\")}"

    .line 160
    .line 161
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    .line 163
    .line 164
    :cond_9
    const-string v4, "body,body *:not([class*=\"icon\"]):not([class^=\"fa\"]):not(ion-icon){"

    .line 165
    .line 166
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    .line 168
    .line 169
    sget-boolean v4, Lcom/mycompany/app/pref/PrefZone;->k:Z

    .line 170
    .line 171
    if-eqz v4, :cond_a

    .line 172
    .line 173
    const-string v4, "font-family:soul_user_font !important;"

    .line 174
    .line 175
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    .line 177
    .line 178
    :cond_a
    sget-boolean v4, Lcom/mycompany/app/pref/PrefZone;->m:Z

    .line 179
    .line 180
    if-eqz v4, :cond_b

    .line 181
    .line 182
    const-string v4, "font-weight:bold !important;"

    .line 183
    .line 184
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    .line 186
    .line 187
    :cond_b
    const-string v4, "}</style>"

    .line 188
    .line 189
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 190
    .line 191
    .line 192
    :cond_c
    const-string v4, "<style>"

    .line 193
    .line 194
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    .line 196
    .line 197
    invoke-static {}, Lcom/mycompany/app/main/MainUtil;->C6()Z

    .line 198
    .line 199
    .line 200
    move-result v4

    .line 201
    if-eqz v4, :cond_d

    .line 202
    .line 203
    const-string v4, "body{margin:0;padding:48px 0 40px 0;}"

    .line 204
    .line 205
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 206
    .line 207
    .line 208
    goto :goto_4

    .line 209
    :cond_d
    const-string v4, "body{margin:0;padding:20px 0 40px 0;}"

    .line 210
    .line 211
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 212
    .line 213
    .line 214
    :goto_4
    const-string v4, "img{padding:0 16px 0 16px;margin:0 auto 20px auto;display:block;max-width:100%;height:auto;}iframe{margin:40px auto 40px auto;display:block;width:100vw;height:"

    .line 215
    .line 216
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 217
    .line 218
    .line 219
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 220
    .line 221
    .line 222
    const-string v1, "vw;}p{padding:0 16px 0 16px;margin:0 auto 32px auto;line-height:1.6;word-wrap:break-word;font-size:18px;}</style></head><body>"

    .line 223
    .line 224
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 225
    .line 226
    .line 227
    goto :goto_5

    .line 228
    :cond_e
    move/from16 v1, p3

    .line 229
    .line 230
    invoke-static {v3, v1}, Lcom/mycompany/app/web/WebReadTask;->o(ZZ)Ljava/lang/StringBuilder;

    .line 231
    .line 232
    .line 233
    move-result-object v5

    .line 234
    :goto_5
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 235
    .line 236
    .line 237
    move-result v1

    .line 238
    const/4 v4, 0x1

    .line 239
    move v6, v3

    .line 240
    move v8, v6

    .line 241
    move v7, v4

    .line 242
    :goto_6
    if-ge v8, v1, :cond_20

    .line 243
    .line 244
    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 245
    .line 246
    .line 247
    move-result-object v9

    .line 248
    add-int/lit8 v8, v8, 0x1

    .line 249
    .line 250
    check-cast v9, Lcom/mycompany/app/web/WebReadTask$ReadItem;

    .line 251
    .line 252
    if-nez v9, :cond_f

    .line 253
    .line 254
    goto :goto_6

    .line 255
    :cond_f
    iget v10, v9, Lcom/mycompany/app/web/WebReadTask$ReadItem;->a:I

    .line 256
    .line 257
    const/4 v11, 0x3

    .line 258
    if-eq v10, v4, :cond_10

    .line 259
    .line 260
    if-eq v10, v11, :cond_10

    .line 261
    .line 262
    move v7, v3

    .line 263
    :cond_10
    const-string v12, "</p>"

    .line 264
    .line 265
    const-string v13, "<br>"

    .line 266
    .line 267
    const-string v14, "\n"

    .line 268
    .line 269
    const-string v15, "<p id=\'"

    .line 270
    .line 271
    const-string v16, "black;\'>"

    .line 272
    .line 273
    const-string v17, "white;\'>"

    .line 274
    .line 275
    if-ne v10, v4, :cond_14

    .line 276
    .line 277
    iget-object v10, v9, Lcom/mycompany/app/web/WebReadTask$ReadItem;->b:Ljava/lang/String;

    .line 278
    .line 279
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 280
    .line 281
    .line 282
    move-result v10

    .line 283
    if-eqz v10, :cond_11

    .line 284
    .line 285
    goto/16 :goto_c

    .line 286
    .line 287
    :cond_11
    sget-boolean v10, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 288
    .line 289
    if-eqz v10, :cond_12

    .line 290
    .line 291
    move-object/from16 v10, v17

    .line 292
    .line 293
    goto :goto_7

    .line 294
    :cond_12
    move-object/from16 v10, v16

    .line 295
    .line 296
    :goto_7
    iput v6, v9, Lcom/mycompany/app/web/WebReadTask$ReadItem;->f:I

    .line 297
    .line 298
    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 299
    .line 300
    .line 301
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 302
    .line 303
    .line 304
    if-eqz p2, :cond_13

    .line 305
    .line 306
    const-string v11, "\'style=\'padding:0 16px 0 16px;margin:0 auto 20px auto;line-height:1.4;word-wrap:break-word;font-size:24px;font-weight:bold;color:"

    .line 307
    .line 308
    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 309
    .line 310
    .line 311
    goto :goto_8

    .line 312
    :cond_13
    const-string v11, "\'style=\'margin:0 auto 20px auto;line-height:1.4;word-wrap:break-word;font-size:24px;font-weight:bold;color:"

    .line 313
    .line 314
    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 315
    .line 316
    .line 317
    :goto_8
    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 318
    .line 319
    .line 320
    iget-object v9, v9, Lcom/mycompany/app/web/WebReadTask$ReadItem;->b:Ljava/lang/String;

    .line 321
    .line 322
    invoke-virtual {v9, v14, v13}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 323
    .line 324
    .line 325
    move-result-object v9

    .line 326
    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 327
    .line 328
    .line 329
    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 330
    .line 331
    .line 332
    add-int/lit8 v6, v6, 0x1

    .line 333
    .line 334
    goto :goto_6

    .line 335
    :cond_14
    const/4 v3, 0x2

    .line 336
    if-ne v10, v3, :cond_1a

    .line 337
    .line 338
    iget-object v3, v9, Lcom/mycompany/app/web/WebReadTask$ReadItem;->b:Ljava/lang/String;

    .line 339
    .line 340
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 341
    .line 342
    .line 343
    move-result v3

    .line 344
    if-eqz v3, :cond_15

    .line 345
    .line 346
    goto :goto_c

    .line 347
    :cond_15
    iput v6, v9, Lcom/mycompany/app/web/WebReadTask$ReadItem;->f:I

    .line 348
    .line 349
    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 350
    .line 351
    .line 352
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 353
    .line 354
    .line 355
    iget-boolean v3, v9, Lcom/mycompany/app/web/WebReadTask$ReadItem;->j:Z

    .line 356
    .line 357
    if-eqz v3, :cond_18

    .line 358
    .line 359
    sget-boolean v3, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 360
    .line 361
    if-eqz v3, :cond_16

    .line 362
    .line 363
    move-object/from16 v3, v17

    .line 364
    .line 365
    goto :goto_9

    .line 366
    :cond_16
    move-object/from16 v3, v16

    .line 367
    .line 368
    :goto_9
    if-eqz p2, :cond_17

    .line 369
    .line 370
    const-string v10, "\'style=\'padding:0 16px 0 16px;margin:0 auto 0 auto;line-height:1.6;word-wrap:break-word;font-size:18px;color:"

    .line 371
    .line 372
    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 373
    .line 374
    .line 375
    goto :goto_a

    .line 376
    :cond_17
    const-string v10, "\'style=\'margin:0 auto 0 auto;line-height:1.6;word-wrap:break-word;font-size:18px;color:"

    .line 377
    .line 378
    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 379
    .line 380
    .line 381
    :goto_a
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 382
    .line 383
    .line 384
    goto :goto_b

    .line 385
    :cond_18
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 386
    .line 387
    .line 388
    :goto_b
    iget-object v3, v9, Lcom/mycompany/app/web/WebReadTask$ReadItem;->b:Ljava/lang/String;

    .line 389
    .line 390
    invoke-virtual {v3, v14, v13}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 391
    .line 392
    .line 393
    move-result-object v3

    .line 394
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 395
    .line 396
    .line 397
    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 398
    .line 399
    .line 400
    add-int/lit8 v6, v6, 0x1

    .line 401
    .line 402
    :cond_19
    :goto_c
    const/4 v3, 0x0

    .line 403
    goto/16 :goto_6

    .line 404
    .line 405
    :cond_1a
    if-ne v10, v11, :cond_1e

    .line 406
    .line 407
    iget-object v3, v9, Lcom/mycompany/app/web/WebReadTask$ReadItem;->c:Ljava/lang/String;

    .line 408
    .line 409
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 410
    .line 411
    .line 412
    move-result v3

    .line 413
    if-eqz v3, :cond_1b

    .line 414
    .line 415
    goto :goto_c

    .line 416
    :cond_1b
    iget-object v3, v9, Lcom/mycompany/app/web/WebReadTask$ReadItem;->c:Ljava/lang/String;

    .line 417
    .line 418
    const-string v10, "http://"

    .line 419
    .line 420
    const-string v11, "https://"

    .line 421
    .line 422
    invoke-virtual {v3, v10, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 423
    .line 424
    .line 425
    move-result-object v3

    .line 426
    iput-object v3, v9, Lcom/mycompany/app/web/WebReadTask$ReadItem;->c:Ljava/lang/String;

    .line 427
    .line 428
    if-eqz v7, :cond_1d

    .line 429
    .line 430
    if-eqz p2, :cond_1c

    .line 431
    .line 432
    const-string v3, "<img style=\'padding:0 16px 0 16px;margin:0 auto 24px auto;display:block;max-width:100%;width:100%;height:auto;user-select:none;\' src=\'"

    .line 433
    .line 434
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 435
    .line 436
    .line 437
    goto :goto_d

    .line 438
    :cond_1c
    const-string v3, "<img style=\'margin:0 auto 24px auto;display:block;max-width:100%;width:100%;height:auto;user-select:none;\' src=\'"

    .line 439
    .line 440
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 441
    .line 442
    .line 443
    :goto_d
    const/4 v7, 0x0

    .line 444
    goto :goto_e

    .line 445
    :cond_1d
    const-string v3, "<img src=\'"

    .line 446
    .line 447
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 448
    .line 449
    .line 450
    :goto_e
    iget-object v3, v9, Lcom/mycompany/app/web/WebReadTask$ReadItem;->c:Ljava/lang/String;

    .line 451
    .line 452
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 453
    .line 454
    .line 455
    const-string v3, "\' onerror=\"this.style.display=\'none\';\"></img>"

    .line 456
    .line 457
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 458
    .line 459
    .line 460
    goto :goto_c

    .line 461
    :cond_1e
    const/4 v3, 0x4

    .line 462
    if-ne v10, v3, :cond_19

    .line 463
    .line 464
    iget-object v3, v9, Lcom/mycompany/app/web/WebReadTask$ReadItem;->d:Ljava/lang/String;

    .line 465
    .line 466
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 467
    .line 468
    .line 469
    move-result v3

    .line 470
    if-eqz v3, :cond_1f

    .line 471
    .line 472
    goto :goto_c

    .line 473
    :cond_1f
    const-string v3, "<iframe src=\'"

    .line 474
    .line 475
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 476
    .line 477
    .line 478
    iget-object v3, v9, Lcom/mycompany/app/web/WebReadTask$ReadItem;->d:Ljava/lang/String;

    .line 479
    .line 480
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 481
    .line 482
    .line 483
    const-string v3, "\' frameborder=\'0\'></iframe>"

    .line 484
    .line 485
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 486
    .line 487
    .line 488
    goto :goto_c

    .line 489
    :cond_20
    const-string v0, "</body></html>"

    .line 490
    .line 491
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 492
    .line 493
    .line 494
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 495
    .line 496
    .line 497
    move-result-object v0

    .line 498
    return-object v0

    .line 499
    :cond_21
    :goto_f
    const/4 v0, 0x0

    .line 500
    return-object v0
.end method

.method public static i(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p0, :cond_6

    .line 3
    .line 4
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    goto :goto_1

    .line 11
    :cond_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    const/4 v2, 0x0

    .line 16
    :cond_1
    :goto_0
    if-ge v2, v1, :cond_6

    .line 17
    .line 18
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v3

    .line 22
    add-int/lit8 v2, v2, 0x1

    .line 23
    .line 24
    check-cast v3, Lcom/mycompany/app/web/WebReadTask$ReadItem;

    .line 25
    .line 26
    if-nez v3, :cond_2

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_2
    iget v4, v3, Lcom/mycompany/app/web/WebReadTask$ReadItem;->a:I

    .line 30
    .line 31
    const/4 v5, 0x1

    .line 32
    if-eq v4, v5, :cond_3

    .line 33
    .line 34
    const/4 v5, 0x2

    .line 35
    if-ne v4, v5, :cond_1

    .line 36
    .line 37
    :cond_3
    iget-object v4, v3, Lcom/mycompany/app/web/WebReadTask$ReadItem;->b:Ljava/lang/String;

    .line 38
    .line 39
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 40
    .line 41
    .line 42
    move-result v4

    .line 43
    if-eqz v4, :cond_4

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_4
    if-nez v0, :cond_5

    .line 47
    .line 48
    new-instance v0, Ljava/util/ArrayList;

    .line 49
    .line 50
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 51
    .line 52
    .line 53
    :cond_5
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_6
    :goto_1
    return-object v0
.end method

.method public static k(Lorg/jsoup/nodes/Document;)Ljava/lang/String;
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p0, :cond_0

    .line 3
    .line 4
    return-object v0

    .line 5
    :cond_0
    :try_start_0
    const-string v1, "amp-img"

    .line 6
    .line 7
    invoke-virtual {p0, v1}, Lorg/jsoup/nodes/Element;->select(Ljava/lang/String;)Lorg/jsoup/select/Elements;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    if-eqz p0, :cond_3

    .line 12
    .line 13
    invoke-virtual {p0}, Ljava/util/AbstractCollection;->size()I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-eqz v1, :cond_3

    .line 18
    .line 19
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    const/4 v2, 0x0

    .line 24
    :cond_1
    :goto_0
    if-ge v2, v1, :cond_3

    .line 25
    .line 26
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    add-int/lit8 v2, v2, 0x1

    .line 31
    .line 32
    check-cast v3, Lorg/jsoup/nodes/Element;

    .line 33
    .line 34
    if-nez v3, :cond_2

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_2
    invoke-static {v3}, Lcom/mycompany/app/web/WebReadTask;->q(Lorg/jsoup/nodes/Element;)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 42
    .line 43
    .line 44
    move-result v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    if-nez v4, :cond_1

    .line 46
    .line 47
    return-object v3

    .line 48
    :catch_0
    :cond_3
    return-object v0
.end method

.method public static l(Lorg/jsoup/nodes/Document;)Ljava/lang/String;
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p0, :cond_0

    .line 3
    .line 4
    return-object v0

    .line 5
    :cond_0
    :try_start_0
    const-string v1, "figure"

    .line 6
    .line 7
    invoke-virtual {p0, v1}, Lorg/jsoup/nodes/Element;->select(Ljava/lang/String;)Lorg/jsoup/select/Elements;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    if-eqz p0, :cond_3

    .line 12
    .line 13
    invoke-virtual {p0}, Ljava/util/AbstractCollection;->size()I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-eqz v1, :cond_3

    .line 18
    .line 19
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    const/4 v2, 0x0

    .line 24
    :cond_1
    :goto_0
    if-ge v2, v1, :cond_3

    .line 25
    .line 26
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    add-int/lit8 v2, v2, 0x1

    .line 31
    .line 32
    check-cast v3, Lorg/jsoup/nodes/Element;

    .line 33
    .line 34
    if-nez v3, :cond_2

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_2
    invoke-static {v3}, Lcom/mycompany/app/web/WebReadTask;->m(Lorg/jsoup/nodes/Element;)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 42
    .line 43
    .line 44
    move-result v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    if-nez v4, :cond_1

    .line 46
    .line 47
    return-object v3

    .line 48
    :catch_0
    :cond_3
    return-object v0
.end method

.method public static m(Lorg/jsoup/nodes/Element;)Ljava/lang/String;
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p0, :cond_0

    .line 3
    .line 4
    return-object v0

    .line 5
    :cond_0
    invoke-virtual {p0}, Lorg/jsoup/nodes/Element;->children()Lorg/jsoup/select/Elements;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    if-nez p0, :cond_1

    .line 10
    .line 11
    return-object v0

    .line 12
    :cond_1
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    const/4 v2, 0x0

    .line 17
    :cond_2
    if-ge v2, v1, :cond_4

    .line 18
    .line 19
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    add-int/lit8 v2, v2, 0x1

    .line 24
    .line 25
    check-cast v3, Lorg/jsoup/nodes/Element;

    .line 26
    .line 27
    invoke-static {v3}, Lcom/mycompany/app/web/WebReadTask;->q(Lorg/jsoup/nodes/Element;)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v4

    .line 31
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 32
    .line 33
    .line 34
    move-result v5

    .line 35
    if-nez v5, :cond_3

    .line 36
    .line 37
    return-object v4

    .line 38
    :cond_3
    invoke-static {v3}, Lcom/mycompany/app/web/WebReadTask;->m(Lorg/jsoup/nodes/Element;)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 43
    .line 44
    .line 45
    move-result v4

    .line 46
    if-nez v4, :cond_2

    .line 47
    .line 48
    return-object v3

    .line 49
    :cond_4
    return-object v0
.end method

.method public static n(Lorg/jsoup/nodes/Document;Z)Ljava/lang/String;
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p0, :cond_0

    .line 3
    .line 4
    return-object v0

    .line 5
    :cond_0
    if-eqz p1, :cond_2

    .line 6
    .line 7
    invoke-static {p0}, Lcom/mycompany/app/web/WebReadTask;->s(Lorg/jsoup/nodes/Document;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-static {p1}, Lcom/mycompany/app/main/MainUtil;->n6(Ljava/lang/String;)Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_2

    .line 16
    .line 17
    invoke-static {p1}, Lcom/mycompany/app/main/MainUtil;->w4(Ljava/lang/String;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-eqz v1, :cond_1

    .line 26
    .line 27
    move-object p1, v0

    .line 28
    goto :goto_0

    .line 29
    :cond_1
    const-string v1, "https://img.youtube.com/vi/"

    .line 30
    .line 31
    const-string v2, "/0.jpg"

    .line 32
    .line 33
    invoke-static {v1, p1, v2}, Landroid/support/v4/media/a;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    :goto_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    if-nez v1, :cond_2

    .line 42
    .line 43
    return-object p1

    .line 44
    :cond_2
    :try_start_0
    const-string p1, "meta[property=og:image]"

    .line 45
    .line 46
    invoke-virtual {p0, p1}, Lorg/jsoup/nodes/Element;->select(Ljava/lang/String;)Lorg/jsoup/select/Elements;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    if-eqz p1, :cond_3

    .line 51
    .line 52
    invoke-virtual {p1}, Ljava/util/AbstractCollection;->size()I

    .line 53
    .line 54
    .line 55
    move-result v1

    .line 56
    if-eqz v1, :cond_3

    .line 57
    .line 58
    const-string v1, "content"

    .line 59
    .line 60
    invoke-virtual {p1, v1}, Lorg/jsoup/select/Elements;->attr(Ljava/lang/String;)Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    invoke-static {p1}, Lcom/mycompany/app/web/WebReadTask;->x(Ljava/lang/String;)Z

    .line 65
    .line 66
    .line 67
    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 68
    if-eqz v1, :cond_3

    .line 69
    .line 70
    move-object v0, p1

    .line 71
    :catch_0
    :cond_3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 72
    .line 73
    .line 74
    move-result p1

    .line 75
    if-nez p1, :cond_4

    .line 76
    .line 77
    return-object v0

    .line 78
    :cond_4
    invoke-static {p0}, Lcom/mycompany/app/web/WebReadTask;->l(Lorg/jsoup/nodes/Document;)Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 83
    .line 84
    .line 85
    move-result v0

    .line 86
    if-nez v0, :cond_5

    .line 87
    .line 88
    return-object p1

    .line 89
    :cond_5
    invoke-static {p0}, Lcom/mycompany/app/web/WebReadTask;->t(Lorg/jsoup/nodes/Document;)Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 94
    .line 95
    .line 96
    move-result v0

    .line 97
    if-nez v0, :cond_6

    .line 98
    .line 99
    return-object p1

    .line 100
    :cond_6
    invoke-static {p0}, Lcom/mycompany/app/web/WebReadTask;->r(Lorg/jsoup/nodes/Document;)Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object p1

    .line 104
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 105
    .line 106
    .line 107
    move-result v0

    .line 108
    if-nez v0, :cond_7

    .line 109
    .line 110
    return-object p1

    .line 111
    :cond_7
    invoke-static {p0}, Lcom/mycompany/app/web/WebReadTask;->k(Lorg/jsoup/nodes/Document;)Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object p0

    .line 115
    return-object p0
.end method

.method public static o(ZZ)Ljava/lang/StringBuilder;
    .locals 3

    .line 1
    sget-boolean v0, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const-string v0, "white;}"

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const-string v0, "black;}"

    .line 9
    .line 10
    :goto_0
    const-string v1, "<!DOCTYPE html><html dir=\'auto\'><head><meta charset=\"utf-8\"/><meta name=\'viewport\' content=\'width=device-width,initial-scale=1.0,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no\'/><style>"

    .line 11
    .line 12
    invoke-static {v1}, Landroid/support/v4/media/a;->t(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    sget-boolean v2, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 17
    .line 18
    if-eqz v2, :cond_1

    .line 19
    .line 20
    const-string v2, "::selection{background:#1976d2;color:white;}"

    .line 21
    .line 22
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    goto :goto_1

    .line 26
    :cond_1
    const-string v2, "::selection{background:#b3e5fc;color:black;}"

    .line 27
    .line 28
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    :goto_1
    const-string v2, "font{background:transparent !important;box-shadow:none !important;}"

    .line 32
    .line 33
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    if-eqz p0, :cond_2

    .line 37
    .line 38
    const-string p0, "body{margin:0;padding:16px 16px 40px 16px;}"

    .line 39
    .line 40
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    goto :goto_3

    .line 44
    :cond_2
    const-string p0, "@font-face{font-family:soul_user_font;src:url(\"soul_user_font.ttf\")}body,body *:not([class*=\"icon\"]):not([class^=\"fa\"]):not(ion-icon){font-family:soul_user_font !important;}"

    .line 45
    .line 46
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    if-eqz p1, :cond_4

    .line 50
    .line 51
    invoke-static {}, Lcom/mycompany/app/main/MainUtil;->C6()Z

    .line 52
    .line 53
    .line 54
    move-result p0

    .line 55
    if-eqz p0, :cond_3

    .line 56
    .line 57
    const-string p0, "body{margin:0;padding:48px 16px 440px 16px;}"

    .line 58
    .line 59
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    goto :goto_2

    .line 63
    :cond_3
    const-string p0, "body{margin:0;padding:20px 16px 440px 16px;}"

    .line 64
    .line 65
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    goto :goto_2

    .line 69
    :cond_4
    invoke-static {}, Lcom/mycompany/app/main/MainUtil;->C6()Z

    .line 70
    .line 71
    .line 72
    move-result p0

    .line 73
    if-eqz p0, :cond_5

    .line 74
    .line 75
    const-string p0, "body{margin:0;padding:48px 16px 80px 16px;}"

    .line 76
    .line 77
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    goto :goto_2

    .line 81
    :cond_5
    const-string p0, "body{margin:0;padding:20px 16px 80px 16px;}"

    .line 82
    .line 83
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    :goto_2
    const-string p0, "img{margin:0 auto 20px auto;display:block;max-width:100%;height:auto;user-select:none;}"

    .line 87
    .line 88
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    :goto_3
    const-string p0, "p{margin:0 auto 32px auto;line-height:1.6;word-wrap:break-word;font-size:18px;color:"

    .line 92
    .line 93
    const-string p1, "</style>"

    .line 94
    .line 95
    invoke-static {v1, p0, v0, p1}, Landroid/support/v4/media/a;->y(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    sget-boolean p0, Lcom/mycompany/app/pref/PrefRead;->p:Z

    .line 99
    .line 100
    if-eqz p0, :cond_6

    .line 101
    .line 102
    const-string p0, "<style id=\'sb_bold_style\'>body,body *:not([class*=\"icon\"]):not([class^=\"fa\"]):not(ion-icon){font-weight:bold !important;}</style>"

    .line 103
    .line 104
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    :cond_6
    const-string p0, "</head><body>"

    .line 108
    .line 109
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    return-object v1
.end method

.method public static p(Lorg/jsoup/nodes/Element;Z)Ljava/lang/String;
    .locals 5

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    goto :goto_1

    .line 4
    :cond_0
    invoke-virtual {p0}, Lorg/jsoup/nodes/Element;->children()Lorg/jsoup/select/Elements;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    if-nez p0, :cond_1

    .line 9
    .line 10
    goto :goto_1

    .line 11
    :cond_1
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    const/4 v1, 0x0

    .line 16
    :cond_2
    if-ge v1, v0, :cond_5

    .line 17
    .line 18
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    add-int/lit8 v1, v1, 0x1

    .line 23
    .line 24
    check-cast v2, Lorg/jsoup/nodes/Element;

    .line 25
    .line 26
    if-eqz p1, :cond_3

    .line 27
    .line 28
    invoke-static {v2}, Lcom/mycompany/app/web/WebReadTask;->u(Lorg/jsoup/nodes/Element;)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v3

    .line 32
    goto :goto_0

    .line 33
    :cond_3
    invoke-static {v2}, Lcom/mycompany/app/web/WebReadTask;->q(Lorg/jsoup/nodes/Element;)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    :goto_0
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 38
    .line 39
    .line 40
    move-result v4

    .line 41
    if-nez v4, :cond_4

    .line 42
    .line 43
    const-string p0, "http://"

    .line 44
    .line 45
    const-string p1, "https://"

    .line 46
    .line 47
    invoke-virtual {v3, p0, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p0

    .line 51
    const-string p1, "<img src=\'"

    .line 52
    .line 53
    const-string v0, "\' onerror=\"this.style.display=\'none\';\"></img>"

    .line 54
    .line 55
    invoke-static {p1, p0, v0}, Landroid/support/v4/media/a;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object p0

    .line 59
    return-object p0

    .line 60
    :cond_4
    invoke-static {v2, p1}, Lcom/mycompany/app/web/WebReadTask;->p(Lorg/jsoup/nodes/Element;Z)Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v2

    .line 64
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 65
    .line 66
    .line 67
    move-result v3

    .line 68
    if-nez v3, :cond_2

    .line 69
    .line 70
    return-object v2

    .line 71
    :cond_5
    :goto_1
    const-string p0, ""

    .line 72
    .line 73
    return-object p0
.end method

.method public static q(Lorg/jsoup/nodes/Element;)Ljava/lang/String;
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p0, :cond_0

    .line 3
    .line 4
    return-object v0

    .line 5
    :cond_0
    invoke-virtual {p0}, Lorg/jsoup/nodes/Element;->attributes()Lorg/jsoup/nodes/Attributes;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    if-nez v1, :cond_1

    .line 10
    .line 11
    return-object v0

    .line 12
    :cond_1
    const-string v2, "amp-img"

    .line 13
    .line 14
    invoke-virtual {p0}, Lorg/jsoup/nodes/Element;->tagName()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    move-result p0

    .line 22
    if-eqz p0, :cond_6

    .line 23
    .line 24
    invoke-virtual {v1}, Lorg/jsoup/nodes/Attributes;->iterator()Ljava/util/Iterator;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    :cond_2
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    if-eqz v2, :cond_6

    .line 33
    .line 34
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    check-cast v2, Lorg/jsoup/nodes/Attribute;

    .line 39
    .line 40
    if-nez v2, :cond_3

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_3
    invoke-virtual {v2}, Lorg/jsoup/nodes/Attribute;->getKey()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v3

    .line 47
    const-string v4, "placeholder"

    .line 48
    .line 49
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    move-result v4

    .line 53
    if-eqz v4, :cond_4

    .line 54
    .line 55
    return-object v0

    .line 56
    :cond_4
    const-string v4, "width"

    .line 57
    .line 58
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    move-result v4

    .line 62
    if-nez v4, :cond_5

    .line 63
    .line 64
    const-string v4, "height"

    .line 65
    .line 66
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 67
    .line 68
    .line 69
    move-result v3

    .line 70
    if-eqz v3, :cond_2

    .line 71
    .line 72
    :cond_5
    invoke-virtual {v2}, Lorg/jsoup/nodes/Attribute;->getValue()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v2

    .line 76
    invoke-static {v2}, Lcom/mycompany/app/main/MainUtil;->G6(Ljava/lang/String;)I

    .line 77
    .line 78
    .line 79
    move-result v2

    .line 80
    const/16 v3, 0x28

    .line 81
    .line 82
    if-ge v2, v3, :cond_2

    .line 83
    .line 84
    return-object v0

    .line 85
    :cond_6
    invoke-virtual {v1}, Lorg/jsoup/nodes/Attributes;->iterator()Ljava/util/Iterator;

    .line 86
    .line 87
    .line 88
    move-result-object p0

    .line 89
    :cond_7
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 90
    .line 91
    .line 92
    move-result v1

    .line 93
    if-eqz v1, :cond_9

    .line 94
    .line 95
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    move-result-object v1

    .line 99
    check-cast v1, Lorg/jsoup/nodes/Attribute;

    .line 100
    .line 101
    if-nez v1, :cond_8

    .line 102
    .line 103
    goto :goto_1

    .line 104
    :cond_8
    invoke-virtual {v1}, Lorg/jsoup/nodes/Attribute;->getValue()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v1

    .line 108
    invoke-static {v1}, Lcom/mycompany/app/main/MainUtil;->w3(Ljava/lang/String;)Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v1

    .line 112
    invoke-static {v1}, Lcom/mycompany/app/web/WebReadTask;->x(Ljava/lang/String;)Z

    .line 113
    .line 114
    .line 115
    move-result v2

    .line 116
    if-eqz v2, :cond_7

    .line 117
    .line 118
    return-object v1

    .line 119
    :cond_9
    return-object v0
.end method

.method public static r(Lorg/jsoup/nodes/Document;)Ljava/lang/String;
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p0, :cond_0

    .line 3
    .line 4
    return-object v0

    .line 5
    :cond_0
    :try_start_0
    const-string v1, "img"

    .line 6
    .line 7
    invoke-virtual {p0, v1}, Lorg/jsoup/nodes/Element;->select(Ljava/lang/String;)Lorg/jsoup/select/Elements;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    if-eqz p0, :cond_3

    .line 12
    .line 13
    invoke-virtual {p0}, Ljava/util/AbstractCollection;->size()I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-eqz v1, :cond_3

    .line 18
    .line 19
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    const/4 v2, 0x0

    .line 24
    :cond_1
    :goto_0
    if-ge v2, v1, :cond_3

    .line 25
    .line 26
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    add-int/lit8 v2, v2, 0x1

    .line 31
    .line 32
    check-cast v3, Lorg/jsoup/nodes/Element;

    .line 33
    .line 34
    if-nez v3, :cond_2

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_2
    invoke-static {v3}, Lcom/mycompany/app/web/WebReadTask;->q(Lorg/jsoup/nodes/Element;)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 42
    .line 43
    .line 44
    move-result v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    if-nez v4, :cond_1

    .line 46
    .line 47
    return-object v3

    .line 48
    :catch_0
    :cond_3
    return-object v0
.end method

.method public static s(Lorg/jsoup/nodes/Document;)Ljava/lang/String;
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p0, :cond_0

    .line 3
    .line 4
    return-object v0

    .line 5
    :cond_0
    :try_start_0
    const-string v1, "meta[property=og:url]"

    .line 6
    .line 7
    invoke-virtual {p0, v1}, Lorg/jsoup/nodes/Element;->select(Ljava/lang/String;)Lorg/jsoup/select/Elements;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    if-eqz p0, :cond_1

    .line 12
    .line 13
    invoke-virtual {p0}, Ljava/util/AbstractCollection;->size()I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-eqz v1, :cond_1

    .line 18
    .line 19
    const-string v1, "content"

    .line 20
    .line 21
    invoke-virtual {p0, v1}, Lorg/jsoup/select/Elements;->attr(Ljava/lang/String;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    invoke-static {p0}, Landroid/webkit/URLUtil;->isNetworkUrl(Ljava/lang/String;)Z

    .line 26
    .line 27
    .line 28
    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    if-eqz v1, :cond_1

    .line 30
    .line 31
    return-object p0

    .line 32
    :catch_0
    :cond_1
    return-object v0
.end method

.method public static t(Lorg/jsoup/nodes/Document;)Ljava/lang/String;
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p0, :cond_0

    .line 3
    .line 4
    return-object v0

    .line 5
    :cond_0
    :try_start_0
    const-string v1, "picture"

    .line 6
    .line 7
    invoke-virtual {p0, v1}, Lorg/jsoup/nodes/Element;->select(Ljava/lang/String;)Lorg/jsoup/select/Elements;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    if-eqz p0, :cond_3

    .line 12
    .line 13
    invoke-virtual {p0}, Ljava/util/AbstractCollection;->size()I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-eqz v1, :cond_3

    .line 18
    .line 19
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    const/4 v2, 0x0

    .line 24
    :cond_1
    :goto_0
    if-ge v2, v1, :cond_3

    .line 25
    .line 26
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    add-int/lit8 v2, v2, 0x1

    .line 31
    .line 32
    check-cast v3, Lorg/jsoup/nodes/Element;

    .line 33
    .line 34
    if-nez v3, :cond_2

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_2
    invoke-static {v3}, Lcom/mycompany/app/web/WebReadTask;->m(Lorg/jsoup/nodes/Element;)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 42
    .line 43
    .line 44
    move-result v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    if-nez v4, :cond_1

    .line 46
    .line 47
    return-object v3

    .line 48
    :catch_0
    :cond_3
    return-object v0
.end method

.method public static u(Lorg/jsoup/nodes/Element;)Ljava/lang/String;
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p0, :cond_0

    .line 3
    .line 4
    return-object v0

    .line 5
    :cond_0
    invoke-virtual {p0}, Lorg/jsoup/nodes/Element;->attributes()Lorg/jsoup/nodes/Attributes;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    if-nez p0, :cond_1

    .line 10
    .line 11
    return-object v0

    .line 12
    :cond_1
    invoke-virtual {p0}, Lorg/jsoup/nodes/Attributes;->iterator()Ljava/util/Iterator;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-eqz v1, :cond_4

    .line 21
    .line 22
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    check-cast v1, Lorg/jsoup/nodes/Attribute;

    .line 27
    .line 28
    if-nez v1, :cond_2

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_2
    const-string v2, "poster"

    .line 32
    .line 33
    invoke-virtual {v1}, Lorg/jsoup/nodes/Attribute;->getKey()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result v2

    .line 41
    if-nez v2, :cond_3

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_3
    invoke-virtual {v1}, Lorg/jsoup/nodes/Attribute;->getValue()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    invoke-static {p0}, Lcom/mycompany/app/main/MainUtil;->w3(Ljava/lang/String;)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    invoke-static {p0}, Lcom/mycompany/app/web/WebReadTask;->x(Ljava/lang/String;)Z

    .line 53
    .line 54
    .line 55
    move-result v1

    .line 56
    if-eqz v1, :cond_4

    .line 57
    .line 58
    return-object p0

    .line 59
    :cond_4
    return-object v0
.end method

.method public static v(Lorg/jsoup/nodes/Document;)Lorg/json/JSONObject;
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p0, :cond_0

    .line 3
    .line 4
    return-object v0

    .line 5
    :cond_0
    const-string v1, "script"

    .line 6
    .line 7
    invoke-virtual {p0, v1}, Lorg/jsoup/nodes/Element;->select(Ljava/lang/String;)Lorg/jsoup/select/Elements;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    if-eqz p0, :cond_6

    .line 12
    .line 13
    invoke-virtual {p0}, Ljava/util/AbstractCollection;->size()I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-nez v1, :cond_1

    .line 18
    .line 19
    goto :goto_1

    .line 20
    :cond_1
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    const/4 v2, 0x0

    .line 25
    :cond_2
    :goto_0
    if-ge v2, v1, :cond_5

    .line 26
    .line 27
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    add-int/lit8 v2, v2, 0x1

    .line 32
    .line 33
    check-cast v3, Lorg/jsoup/nodes/Element;

    .line 34
    .line 35
    if-nez v3, :cond_3

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_3
    invoke-virtual {v3}, Lorg/jsoup/nodes/Element;->html()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 43
    .line 44
    .line 45
    move-result v3

    .line 46
    if-eqz v3, :cond_4

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_4
    const-string v3, "var ytInitialPlayerResponse = {\"responseContext"

    .line 50
    .line 51
    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 52
    .line 53
    .line 54
    move-result v3

    .line 55
    if-eqz v3, :cond_2

    .line 56
    .line 57
    const/16 p0, 0x1e

    .line 58
    .line 59
    invoke-virtual {v0, p0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    :cond_5
    invoke-static {v0}, Lcom/mycompany/app/main/MainUtil;->B0(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 64
    .line 65
    .line 66
    move-result-object p0

    .line 67
    return-object p0

    .line 68
    :cond_6
    :goto_1
    return-object v0
.end method

.method public static x(Ljava/lang/String;)Z
    .locals 3

    .line 1
    invoke-static {p0}, Landroid/webkit/URLUtil;->isNetworkUrl(Ljava/lang/String;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return v1

    .line 9
    :cond_0
    const-string v0, "icon.png"

    .line 10
    .line 11
    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    return v1

    .line 18
    :cond_1
    const-string v0, "logo.png"

    .line 19
    .line 20
    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-eqz v0, :cond_2

    .line 25
    .line 26
    return v1

    .line 27
    :cond_2
    const-string v0, "svg"

    .line 28
    .line 29
    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-eqz v0, :cond_3

    .line 34
    .line 35
    return v1

    .line 36
    :cond_3
    const-string v0, "https://news.google.com"

    .line 37
    .line 38
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    if-eqz v0, :cond_4

    .line 43
    .line 44
    return v1

    .line 45
    :cond_4
    const-string v0, "https://imgmo.seoul.co.kr/img//mexpand"

    .line 46
    .line 47
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    if-eqz v0, :cond_5

    .line 52
    .line 53
    return v1

    .line 54
    :cond_5
    const/4 v0, 0x0

    .line 55
    invoke-static {v0, p0}, Lcom/mycompany/app/main/MainUtil;->b1(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object p0

    .line 59
    if-eqz p0, :cond_7

    .line 60
    .line 61
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 62
    .line 63
    .line 64
    move-result v0

    .line 65
    const/16 v2, 0xa

    .line 66
    .line 67
    if-ge v0, v2, :cond_7

    .line 68
    .line 69
    const-string v0, "icon"

    .line 70
    .line 71
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 72
    .line 73
    .line 74
    move-result v0

    .line 75
    if-nez v0, :cond_6

    .line 76
    .line 77
    const-string v0, "logo"

    .line 78
    .line 79
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 80
    .line 81
    .line 82
    move-result p0

    .line 83
    if-eqz p0, :cond_7

    .line 84
    .line 85
    :cond_6
    return v1

    .line 86
    :cond_7
    const/4 p0, 0x1

    .line 87
    return p0
.end method


# virtual methods
.method public final A()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebReadTask;->t:Lcom/mycompany/app/web/WebNestView;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/web/WebReadTask;->r:Lcom/mycompany/app/web/WebReadTask$ReadWebListener;

    .line 7
    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    const/16 v1, 0x64

    .line 11
    .line 12
    invoke-interface {v0, v1}, Lcom/mycompany/app/web/WebReadTask$ReadWebListener;->a(I)V

    .line 13
    .line 14
    .line 15
    :cond_1
    iget-boolean v0, p0, Lcom/mycompany/app/web/WebReadTask;->u:Z

    .line 16
    .line 17
    if-eqz v0, :cond_2

    .line 18
    .line 19
    const/4 v0, 0x0

    .line 20
    iput-boolean v0, p0, Lcom/mycompany/app/web/WebReadTask;->u:Z

    .line 21
    .line 22
    iget-object v0, p0, Lcom/mycompany/app/web/WebReadTask;->t:Lcom/mycompany/app/web/WebNestView;

    .line 23
    .line 24
    invoke-virtual {v0}, Landroid/webkit/WebView;->stopLoading()V

    .line 25
    .line 26
    .line 27
    :cond_2
    iget-object v0, p0, Lcom/mycompany/app/web/WebReadTask;->t:Lcom/mycompany/app/web/WebNestView;

    .line 28
    .line 29
    invoke-static {v0}, Lcom/mycompany/app/main/MainUtil;->P6(Landroid/webkit/WebView;)V

    .line 30
    .line 31
    .line 32
    const/4 v0, 0x0

    .line 33
    iput-object v0, p0, Lcom/mycompany/app/web/WebReadTask;->t:Lcom/mycompany/app/web/WebNestView;

    .line 34
    .line 35
    return-void
.end method

.method public final B(Lorg/jsoup/nodes/Element;)V
    .locals 6

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    goto/16 :goto_3

    .line 4
    .line 5
    :cond_0
    const-string v0, "figure"

    .line 6
    .line 7
    invoke-virtual {p1, v0}, Lorg/jsoup/nodes/Element;->select(Ljava/lang/String;)Lorg/jsoup/select/Elements;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const/4 v1, 0x0

    .line 12
    if-eqz v0, :cond_2

    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    if-eqz v2, :cond_2

    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    move v3, v1

    .line 25
    :goto_0
    if-ge v3, v2, :cond_2

    .line 26
    .line 27
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v4

    .line 31
    add-int/lit8 v3, v3, 0x1

    .line 32
    .line 33
    check-cast v4, Lorg/jsoup/nodes/Element;

    .line 34
    .line 35
    if-nez v4, :cond_1

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_1
    invoke-static {v4, v1}, Lcom/mycompany/app/web/WebReadTask;->p(Lorg/jsoup/nodes/Element;Z)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v5

    .line 42
    invoke-virtual {v4, v5}, Lorg/jsoup/nodes/Element;->html(Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_2
    const-string v0, "picture"

    .line 47
    .line 48
    invoke-virtual {p1, v0}, Lorg/jsoup/nodes/Element;->select(Ljava/lang/String;)Lorg/jsoup/select/Elements;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    if-eqz v0, :cond_4

    .line 53
    .line 54
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    .line 55
    .line 56
    .line 57
    move-result v2

    .line 58
    if-eqz v2, :cond_4

    .line 59
    .line 60
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 61
    .line 62
    .line 63
    move-result v2

    .line 64
    move v3, v1

    .line 65
    :goto_1
    if-ge v3, v2, :cond_4

    .line 66
    .line 67
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object v4

    .line 71
    add-int/lit8 v3, v3, 0x1

    .line 72
    .line 73
    check-cast v4, Lorg/jsoup/nodes/Element;

    .line 74
    .line 75
    if-nez v4, :cond_3

    .line 76
    .line 77
    goto :goto_1

    .line 78
    :cond_3
    invoke-static {v4, v1}, Lcom/mycompany/app/web/WebReadTask;->p(Lorg/jsoup/nodes/Element;Z)Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v5

    .line 82
    invoke-virtual {v4, v5}, Lorg/jsoup/nodes/Element;->html(Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    .line 83
    .line 84
    .line 85
    goto :goto_1

    .line 86
    :cond_4
    iget-boolean v0, p0, Lcom/mycompany/app/web/WebReadTask;->e:Z

    .line 87
    .line 88
    if-eqz v0, :cond_6

    .line 89
    .line 90
    const-string v0, "video"

    .line 91
    .line 92
    invoke-virtual {p1, v0}, Lorg/jsoup/nodes/Element;->select(Ljava/lang/String;)Lorg/jsoup/select/Elements;

    .line 93
    .line 94
    .line 95
    move-result-object p1

    .line 96
    if-eqz p1, :cond_6

    .line 97
    .line 98
    invoke-virtual {p1}, Ljava/util/AbstractCollection;->size()I

    .line 99
    .line 100
    .line 101
    move-result v0

    .line 102
    if-eqz v0, :cond_6

    .line 103
    .line 104
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 105
    .line 106
    .line 107
    move-result v0

    .line 108
    :goto_2
    if-ge v1, v0, :cond_6

    .line 109
    .line 110
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    move-result-object v2

    .line 114
    add-int/lit8 v1, v1, 0x1

    .line 115
    .line 116
    check-cast v2, Lorg/jsoup/nodes/Element;

    .line 117
    .line 118
    if-nez v2, :cond_5

    .line 119
    .line 120
    goto :goto_2

    .line 121
    :cond_5
    const/4 v3, 0x1

    .line 122
    invoke-static {v2, v3}, Lcom/mycompany/app/web/WebReadTask;->p(Lorg/jsoup/nodes/Element;Z)Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v3

    .line 126
    invoke-virtual {v2, v3}, Lorg/jsoup/nodes/Element;->html(Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    .line 127
    .line 128
    .line 129
    goto :goto_2

    .line 130
    :cond_6
    :goto_3
    return-void
.end method

.method public final j(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebReadTask;->n:Lcom/mycompany/app/web/WebReadTask$LoadTask;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    iput-boolean v1, v0, Lcom/mycompany/app/async/MyAsyncTask;->c:Z

    .line 7
    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/mycompany/app/web/WebReadTask;->n:Lcom/mycompany/app/web/WebReadTask$LoadTask;

    .line 10
    .line 11
    new-instance v0, Lcom/mycompany/app/web/WebReadTask$LoadTask;

    .line 12
    .line 13
    invoke-direct {v0, p0, p1}, Lcom/mycompany/app/web/WebReadTask$LoadTask;-><init>(Lcom/mycompany/app/web/WebReadTask;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/mycompany/app/web/WebReadTask;->n:Lcom/mycompany/app/web/WebReadTask$LoadTask;

    .line 17
    .line 18
    iget-object p1, p0, Lcom/mycompany/app/web/WebReadTask;->b:Landroid/content/Context;

    .line 19
    .line 20
    invoke-virtual {v0, p1}, Lcom/mycompany/app/async/MyAsyncTask;->b(Landroid/content/Context;)V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public final w()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebReadTask;->a:Lcom/mycompany/app/main/MainActivity;

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    iget-object v0, p0, Lcom/mycompany/app/web/WebReadTask;->s:Landroid/view/ViewGroup;

    .line 6
    .line 7
    if-eqz v0, :cond_2

    .line 8
    .line 9
    iget-object v0, p0, Lcom/mycompany/app/web/WebReadTask;->t:Lcom/mycompany/app/web/WebNestView;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/web/WebReadTask;->z:Lcom/mycompany/app/web/WebClean;

    .line 15
    .line 16
    const/4 v1, 0x0

    .line 17
    if-nez v0, :cond_1

    .line 18
    .line 19
    iget-object v0, p0, Lcom/mycompany/app/web/WebReadTask;->b:Landroid/content/Context;

    .line 20
    .line 21
    invoke-static {v0, v1}, Lcom/mycompany/app/main/MainApp;->v(Landroid/content/Context;Z)Lcom/mycompany/app/web/WebClean;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    iput-object v0, p0, Lcom/mycompany/app/web/WebReadTask;->z:Lcom/mycompany/app/web/WebClean;

    .line 26
    .line 27
    :cond_1
    iput-boolean v1, p0, Lcom/mycompany/app/web/WebReadTask;->v:Z

    .line 28
    .line 29
    iput v1, p0, Lcom/mycompany/app/web/WebReadTask;->w:I

    .line 30
    .line 31
    iput v1, p0, Lcom/mycompany/app/web/WebReadTask;->x:I

    .line 32
    .line 33
    new-instance v0, Lcom/mycompany/app/web/WebNestView;

    .line 34
    .line 35
    iget-object v2, p0, Lcom/mycompany/app/web/WebReadTask;->a:Lcom/mycompany/app/main/MainActivity;

    .line 36
    .line 37
    invoke-direct {v0, v2}, Lcom/mycompany/app/web/WebNestView;-><init>(Landroid/content/Context;)V

    .line 38
    .line 39
    .line 40
    iput-object v0, p0, Lcom/mycompany/app/web/WebReadTask;->t:Lcom/mycompany/app/web/WebNestView;

    .line 41
    .line 42
    const/4 v2, 0x1

    .line 43
    invoke-virtual {v0, v2}, Lcom/mycompany/app/web/WebNestView;->setNoAutofill(Z)V

    .line 44
    .line 45
    .line 46
    iget-object v0, p0, Lcom/mycompany/app/web/WebReadTask;->b:Landroid/content/Context;

    .line 47
    .line 48
    iget-object v2, p0, Lcom/mycompany/app/web/WebReadTask;->t:Lcom/mycompany/app/web/WebNestView;

    .line 49
    .line 50
    invoke-static {v0, v2}, Lcom/mycompany/app/main/MainApp;->I(Landroid/content/Context;Landroid/webkit/WebView;)V

    .line 51
    .line 52
    .line 53
    iget-object v0, p0, Lcom/mycompany/app/web/WebReadTask;->t:Lcom/mycompany/app/web/WebNestView;

    .line 54
    .line 55
    const/4 v2, 0x4

    .line 56
    invoke-virtual {v0, v2}, Lcom/mycompany/app/web/WebNestView;->setVisibility(I)V

    .line 57
    .line 58
    .line 59
    iget-object v0, p0, Lcom/mycompany/app/web/WebReadTask;->s:Landroid/view/ViewGroup;

    .line 60
    .line 61
    iget-object v2, p0, Lcom/mycompany/app/web/WebReadTask;->t:Lcom/mycompany/app/web/WebNestView;

    .line 62
    .line 63
    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    .line 64
    .line 65
    const/4 v4, -0x1

    .line 66
    invoke-direct {v3, v4, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {v0, v2, v1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 70
    .line 71
    .line 72
    iget-object v0, p0, Lcom/mycompany/app/web/WebReadTask;->s:Landroid/view/ViewGroup;

    .line 73
    .line 74
    new-instance v1, Lcom/mycompany/app/web/WebReadTask$2;

    .line 75
    .line 76
    invoke-direct {v1, p0}, Lcom/mycompany/app/web/WebReadTask$2;-><init>(Lcom/mycompany/app/web/WebReadTask;)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 80
    .line 81
    .line 82
    :cond_2
    :goto_0
    return-void
.end method

.method public final y()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebReadTask;->t:Lcom/mycompany/app/web/WebNestView;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/web/WebReadTask;->r:Lcom/mycompany/app/web/WebReadTask$ReadWebListener;

    .line 7
    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    invoke-interface {v0}, Lcom/mycompany/app/web/WebReadTask$ReadWebListener;->b()V

    .line 11
    .line 12
    .line 13
    :cond_1
    iget v0, p0, Lcom/mycompany/app/web/WebReadTask;->w:I

    .line 14
    .line 15
    const/16 v1, 0xa

    .line 16
    .line 17
    if-ge v0, v1, :cond_2

    .line 18
    .line 19
    iget-object v0, p0, Lcom/mycompany/app/web/WebReadTask;->t:Lcom/mycompany/app/web/WebNestView;

    .line 20
    .line 21
    invoke-virtual {v0}, Landroid/webkit/WebView;->getContentHeight()I

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    iget-object v1, p0, Lcom/mycompany/app/web/WebReadTask;->t:Lcom/mycompany/app/web/WebNestView;

    .line 26
    .line 27
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    if-ge v0, v1, :cond_2

    .line 32
    .line 33
    iget v0, p0, Lcom/mycompany/app/web/WebReadTask;->w:I

    .line 34
    .line 35
    add-int/lit8 v0, v0, 0x1

    .line 36
    .line 37
    iput v0, p0, Lcom/mycompany/app/web/WebReadTask;->w:I

    .line 38
    .line 39
    iget-object v0, p0, Lcom/mycompany/app/web/WebReadTask;->t:Lcom/mycompany/app/web/WebNestView;

    .line 40
    .line 41
    new-instance v1, Lcom/mycompany/app/web/WebReadTask$7;

    .line 42
    .line 43
    invoke-direct {v1, p0}, Lcom/mycompany/app/web/WebReadTask$7;-><init>(Lcom/mycompany/app/web/WebReadTask;)V

    .line 44
    .line 45
    .line 46
    const-wide/16 v2, 0xc8

    .line 47
    .line 48
    invoke-virtual {v0, v1, v2, v3}, Lcom/mycompany/app/web/WebNestView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 49
    .line 50
    .line 51
    return-void

    .line 52
    :cond_2
    iget-object v0, p0, Lcom/mycompany/app/web/WebReadTask;->g:Ljava/lang/String;

    .line 53
    .line 54
    invoke-static {v0}, Lcom/mycompany/app/main/MainUtil;->D5(Ljava/lang/String;)Z

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    if-nez v0, :cond_3

    .line 59
    .line 60
    iget-object v0, p0, Lcom/mycompany/app/web/WebReadTask;->t:Lcom/mycompany/app/web/WebNestView;

    .line 61
    .line 62
    const-string v1, "(function(){var htm=null;if(document.documentElement){htm=document.documentElement.innerHTML;}android.onDocHtml(htm);})();"

    .line 63
    .line 64
    const/4 v2, 0x0

    .line 65
    invoke-static {v0, v1, v2}, Lcom/mycompany/app/main/MainUtil;->I(Landroid/webkit/WebView;Ljava/lang/String;Z)V

    .line 66
    .line 67
    .line 68
    return-void

    .line 69
    :cond_3
    iget-object v0, p0, Lcom/mycompany/app/web/WebReadTask;->t:Lcom/mycompany/app/web/WebNestView;

    .line 70
    .line 71
    new-instance v1, Lcom/mycompany/app/web/WebReadTask$8;

    .line 72
    .line 73
    invoke-direct {v1, p0}, Lcom/mycompany/app/web/WebReadTask$8;-><init>(Lcom/mycompany/app/web/WebReadTask;)V

    .line 74
    .line 75
    .line 76
    const-string v2, "document.documentElement.innerHTML"

    .line 77
    .line 78
    invoke-virtual {v0, v2, v1}, Lcom/mycompany/app/web/WebNestView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    .line 79
    .line 80
    .line 81
    return-void
.end method

.method public final z()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebReadTask;->n:Lcom/mycompany/app/web/WebReadTask$LoadTask;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    iput-boolean v1, v0, Lcom/mycompany/app/async/MyAsyncTask;->c:Z

    .line 7
    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/mycompany/app/web/WebReadTask;->n:Lcom/mycompany/app/web/WebReadTask$LoadTask;

    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/mycompany/app/web/WebReadTask;->A()V

    .line 12
    .line 13
    .line 14
    iget-object v1, p0, Lcom/mycompany/app/web/WebReadTask;->b:Landroid/content/Context;

    .line 15
    .line 16
    invoke-static {v1}, Lcom/mycompany/app/main/MainApp;->M(Landroid/content/Context;)V

    .line 17
    .line 18
    .line 19
    iput-object v0, p0, Lcom/mycompany/app/web/WebReadTask;->a:Lcom/mycompany/app/main/MainActivity;

    .line 20
    .line 21
    iput-object v0, p0, Lcom/mycompany/app/web/WebReadTask;->b:Landroid/content/Context;

    .line 22
    .line 23
    iput-object v0, p0, Lcom/mycompany/app/web/WebReadTask;->c:Lcom/mycompany/app/web/WebReadTask$WebReadListener;

    .line 24
    .line 25
    iput-object v0, p0, Lcom/mycompany/app/web/WebReadTask;->g:Ljava/lang/String;

    .line 26
    .line 27
    iput-object v0, p0, Lcom/mycompany/app/web/WebReadTask;->h:Ljava/lang/String;

    .line 28
    .line 29
    iput-object v0, p0, Lcom/mycompany/app/web/WebReadTask;->i:Ljava/lang/String;

    .line 30
    .line 31
    iput-object v0, p0, Lcom/mycompany/app/web/WebReadTask;->j:Ljava/lang/String;

    .line 32
    .line 33
    iput-object v0, p0, Lcom/mycompany/app/web/WebReadTask;->k:Ljava/util/ArrayList;

    .line 34
    .line 35
    iput-object v0, p0, Lcom/mycompany/app/web/WebReadTask;->l:Ljava/lang/String;

    .line 36
    .line 37
    iput-object v0, p0, Lcom/mycompany/app/web/WebReadTask;->o:Ljava/util/ArrayList;

    .line 38
    .line 39
    iput-object v0, p0, Lcom/mycompany/app/web/WebReadTask;->r:Lcom/mycompany/app/web/WebReadTask$ReadWebListener;

    .line 40
    .line 41
    iput-object v0, p0, Lcom/mycompany/app/web/WebReadTask;->s:Landroid/view/ViewGroup;

    .line 42
    .line 43
    iput-object v0, p0, Lcom/mycompany/app/web/WebReadTask;->z:Lcom/mycompany/app/web/WebClean;

    .line 44
    .line 45
    return-void
.end method
