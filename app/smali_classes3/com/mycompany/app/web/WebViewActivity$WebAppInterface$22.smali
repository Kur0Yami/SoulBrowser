.class Lcom/mycompany/app/web/WebViewActivity$WebAppInterface$22;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mycompany/app/web/WebViewActivity$WebAppInterface;->onFndTag(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/mycompany/app/web/WebViewActivity$WebAppInterface;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/web/WebViewActivity$WebAppInterface;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/web/WebViewActivity$WebAppInterface$22;->c:Lcom/mycompany/app/web/WebViewActivity$WebAppInterface;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity$WebAppInterface$22;->c:Lcom/mycompany/app/web/WebViewActivity$WebAppInterface;

    .line 4
    .line 5
    iget-object v1, v1, Lcom/mycompany/app/web/WebViewActivity$WebAppInterface;->b:Lcom/mycompany/app/web/WebViewActivity;

    .line 6
    .line 7
    iget-object v2, v1, Lcom/mycompany/app/web/WebViewActivity;->uh:Ljava/lang/String;

    .line 8
    .line 9
    iget-object v3, v1, Lcom/mycompany/app/web/WebViewActivity;->vh:Ljava/lang/String;

    .line 10
    .line 11
    const/4 v4, 0x0

    .line 12
    iput-object v4, v1, Lcom/mycompany/app/web/WebViewActivity;->uh:Ljava/lang/String;

    .line 13
    .line 14
    iput-object v4, v1, Lcom/mycompany/app/web/WebViewActivity;->vh:Ljava/lang/String;

    .line 15
    .line 16
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 17
    .line 18
    .line 19
    move-result v5

    .line 20
    if-nez v5, :cond_1a

    .line 21
    .line 22
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 23
    .line 24
    .line 25
    move-result v5

    .line 26
    if-eqz v5, :cond_0

    .line 27
    .line 28
    goto/16 :goto_b

    .line 29
    .line 30
    :cond_0
    iget-object v5, v1, Lcom/mycompany/app/web/WebViewActivity;->B8:Ljava/lang/String;

    .line 31
    .line 32
    invoke-static {v5}, Lcom/mycompany/app/main/MainUtil;->q0(Ljava/lang/String;)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v5

    .line 36
    iget-object v6, v1, Lcom/mycompany/app/web/WebViewActivity;->q9:Lcom/mycompany/app/web/WebClean;

    .line 37
    .line 38
    if-nez v6, :cond_1

    .line 39
    .line 40
    goto/16 :goto_b

    .line 41
    .line 42
    :cond_1
    iget-object v7, v1, Lcom/mycompany/app/web/WebViewActivity;->i1:Landroid/content/Context;

    .line 43
    .line 44
    const-string v8, ","

    .line 45
    .line 46
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 47
    .line 48
    .line 49
    move-result v9

    .line 50
    if-eqz v9, :cond_2

    .line 51
    .line 52
    goto/16 :goto_a

    .line 53
    .line 54
    :cond_2
    :try_start_0
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 55
    .line 56
    .line 57
    move-result v9

    .line 58
    if-eqz v9, :cond_3

    .line 59
    .line 60
    goto/16 :goto_a

    .line 61
    .line 62
    :cond_3
    invoke-virtual {v2, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v2

    .line 66
    if-eqz v2, :cond_19

    .line 67
    .line 68
    array-length v9, v2

    .line 69
    if-nez v9, :cond_4

    .line 70
    .line 71
    goto/16 :goto_a

    .line 72
    .line 73
    :cond_4
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 74
    .line 75
    .line 76
    move-result v9

    .line 77
    if-eqz v9, :cond_5

    .line 78
    .line 79
    goto/16 :goto_a

    .line 80
    .line 81
    :cond_5
    const-string v9, "\\"

    .line 82
    .line 83
    const-string v12, ""

    .line 84
    .line 85
    invoke-virtual {v3, v9, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v3

    .line 89
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 90
    .line 91
    .line 92
    move-result v9

    .line 93
    if-eqz v9, :cond_6

    .line 94
    .line 95
    goto/16 :goto_a

    .line 96
    .line 97
    :cond_6
    invoke-virtual {v3, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v3

    .line 101
    if-eqz v3, :cond_19

    .line 102
    .line 103
    array-length v8, v3

    .line 104
    array-length v9, v2

    .line 105
    if-eq v8, v9, :cond_7

    .line 106
    .line 107
    goto/16 :goto_a

    .line 108
    .line 109
    :cond_7
    invoke-virtual {v6, v5}, Lcom/mycompany/app/web/WebClean;->n(Ljava/lang/String;)Ljava/util/List;

    .line 110
    .line 111
    .line 112
    move-result-object v8

    .line 113
    if-eqz v8, :cond_9

    .line 114
    .line 115
    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    .line 116
    .line 117
    .line 118
    move-result v9

    .line 119
    if-eqz v9, :cond_8

    .line 120
    .line 121
    goto :goto_0

    .line 122
    :cond_8
    const/4 v9, 0x0

    .line 123
    goto :goto_1

    .line 124
    :cond_9
    :goto_0
    invoke-virtual {v6, v7, v5}, Lcom/mycompany/app/web/WebClean;->m(Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;

    .line 125
    .line 126
    .line 127
    move-result-object v8

    .line 128
    const/4 v9, 0x1

    .line 129
    :goto_1
    array-length v12, v3

    .line 130
    const/4 v13, 0x0

    .line 131
    const/4 v14, 0x0

    .line 132
    :goto_2
    if-ge v13, v12, :cond_17

    .line 133
    .line 134
    aget-object v15, v2, v13

    .line 135
    .line 136
    const-string v4, "i"

    .line 137
    .line 138
    invoke-virtual {v4, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 139
    .line 140
    .line 141
    move-result v4

    .line 142
    if-eqz v4, :cond_a

    .line 143
    .line 144
    const-string v4, "id"

    .line 145
    .line 146
    goto :goto_3

    .line 147
    :cond_a
    const-string v4, "c"

    .line 148
    .line 149
    invoke-virtual {v4, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 150
    .line 151
    .line 152
    move-result v4

    .line 153
    if-eqz v4, :cond_b

    .line 154
    .line 155
    const-string v4, "class"

    .line 156
    .line 157
    goto :goto_3

    .line 158
    :cond_b
    const/4 v4, 0x0

    .line 159
    :goto_3
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 160
    .line 161
    .line 162
    move-result v15

    .line 163
    if-eqz v15, :cond_c

    .line 164
    .line 165
    goto/16 :goto_9

    .line 166
    .line 167
    :cond_c
    aget-object v15, v3, v13

    .line 168
    .line 169
    :goto_4
    if-nez v15, :cond_d

    .line 170
    .line 171
    :goto_5
    const/4 v10, 0x0

    .line 172
    goto :goto_7

    .line 173
    :cond_d
    invoke-virtual {v15}, Ljava/lang/String;->length()I

    .line 174
    .line 175
    .line 176
    move-result v11

    .line 177
    const/16 v10, 0xa

    .line 178
    .line 179
    if-ge v11, v10, :cond_e

    .line 180
    .line 181
    goto :goto_5

    .line 182
    :cond_e
    const/16 v11, 0x2d

    .line 183
    .line 184
    invoke-virtual {v15, v11}, Ljava/lang/String;->lastIndexOf(I)I

    .line 185
    .line 186
    .line 187
    move-result v11

    .line 188
    const/16 v10, 0x5f

    .line 189
    .line 190
    invoke-virtual {v15, v10}, Ljava/lang/String;->lastIndexOf(I)I

    .line 191
    .line 192
    .line 193
    move-result v10

    .line 194
    const/16 v0, 0xa

    .line 195
    .line 196
    if-ge v11, v0, :cond_f

    .line 197
    .line 198
    move v11, v10

    .line 199
    goto :goto_6

    .line 200
    :cond_f
    if-ge v10, v0, :cond_10

    .line 201
    .line 202
    goto :goto_6

    .line 203
    :cond_10
    invoke-static {v11, v10}, Ljava/lang/Math;->min(II)I

    .line 204
    .line 205
    .line 206
    move-result v11

    .line 207
    :goto_6
    if-ge v11, v0, :cond_11

    .line 208
    .line 209
    goto :goto_5

    .line 210
    :cond_11
    const/4 v0, 0x0

    .line 211
    invoke-virtual {v15, v0, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 212
    .line 213
    .line 214
    move-result-object v10

    .line 215
    :goto_7
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 216
    .line 217
    .line 218
    move-result v0

    .line 219
    if-eqz v0, :cond_16

    .line 220
    .line 221
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 222
    .line 223
    .line 224
    move-result v0

    .line 225
    if-eqz v0, :cond_12

    .line 226
    .line 227
    goto :goto_9

    .line 228
    :cond_12
    new-instance v0, Ljava/lang/StringBuilder;

    .line 229
    .line 230
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 231
    .line 232
    .line 233
    const-string v10, "["

    .line 234
    .line 235
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 236
    .line 237
    .line 238
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 239
    .line 240
    .line 241
    const-string v4, "*=\""

    .line 242
    .line 243
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 244
    .line 245
    .line 246
    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 247
    .line 248
    .line 249
    const-string v4, "\"]"

    .line 250
    .line 251
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 252
    .line 253
    .line 254
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 255
    .line 256
    .line 257
    move-result-object v0

    .line 258
    if-nez v8, :cond_14

    .line 259
    .line 260
    new-instance v4, Ljava/util/ArrayList;

    .line 261
    .line 262
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 263
    .line 264
    .line 265
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 266
    .line 267
    .line 268
    move-object v8, v4

    .line 269
    :cond_13
    :goto_8
    const/4 v14, 0x1

    .line 270
    goto :goto_9

    .line 271
    :cond_14
    invoke-interface {v8, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 272
    .line 273
    .line 274
    move-result v4

    .line 275
    if-nez v4, :cond_15

    .line 276
    .line 277
    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 278
    .line 279
    .line 280
    if-eqz v9, :cond_13

    .line 281
    .line 282
    invoke-interface {v8}, Ljava/util/List;->size()I

    .line 283
    .line 284
    .line 285
    move-result v0

    .line 286
    const/16 v4, 0x14

    .line 287
    .line 288
    if-le v0, v4, :cond_13

    .line 289
    .line 290
    const/4 v0, 0x0

    .line 291
    invoke-interface {v8, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 292
    .line 293
    .line 294
    goto :goto_8

    .line 295
    :cond_15
    :goto_9
    add-int/lit8 v13, v13, 0x1

    .line 296
    .line 297
    move-object/from16 v0, p0

    .line 298
    .line 299
    const/4 v4, 0x0

    .line 300
    goto/16 :goto_2

    .line 301
    .line 302
    :cond_16
    move-object/from16 v0, p0

    .line 303
    .line 304
    move-object v15, v10

    .line 305
    goto/16 :goto_4

    .line 306
    .line 307
    :cond_17
    if-nez v14, :cond_18

    .line 308
    .line 309
    goto :goto_a

    .line 310
    :cond_18
    invoke-virtual {v6, v7, v5, v8}, Lcom/mycompany/app/web/WebClean;->e(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 311
    .line 312
    .line 313
    :catch_0
    :cond_19
    :goto_a
    const/4 v0, 0x0

    .line 314
    const/4 v2, 0x1

    .line 315
    invoke-virtual {v1, v2, v0}, Lcom/mycompany/app/web/WebViewActivity;->ea(IZ)V

    .line 316
    .line 317
    .line 318
    :cond_1a
    :goto_b
    return-void
.end method
