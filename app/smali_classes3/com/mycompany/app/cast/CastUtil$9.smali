.class Lcom/mycompany/app/cast/CastUtil$9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/cast/CastUtil;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/cast/CastUtil;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/cast/CastUtil$9;->c:Lcom/mycompany/app/cast/CastUtil;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 24

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/cast/CastUtil$9;->c:Lcom/mycompany/app/cast/CastUtil;

    .line 4
    .line 5
    iget-object v2, v1, Lcom/mycompany/app/cast/CastUtil;->e:Ljava/lang/String;

    .line 6
    .line 7
    iget-object v3, v1, Lcom/mycompany/app/cast/CastUtil;->j:Ljava/util/List;

    .line 8
    .line 9
    iget-object v4, v1, Lcom/mycompany/app/cast/CastUtil;->k:Ljava/util/List;

    .line 10
    .line 11
    iget v5, v1, Lcom/mycompany/app/cast/CastUtil;->l:I

    .line 12
    .line 13
    iget-wide v11, v1, Lcom/mycompany/app/cast/CastUtil;->m:J

    .line 14
    .line 15
    iget-wide v6, v1, Lcom/mycompany/app/cast/CastUtil;->n:J

    .line 16
    .line 17
    iget-object v8, v1, Lcom/mycompany/app/cast/CastUtil;->b:Lcom/google/android/gms/cast/framework/CastSession;

    .line 18
    .line 19
    if-eqz v8, :cond_d

    .line 20
    .line 21
    if-nez v3, :cond_0

    .line 22
    .line 23
    goto/16 :goto_8

    .line 24
    .line 25
    :cond_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 26
    .line 27
    .line 28
    move-result v15

    .line 29
    if-nez v15, :cond_1

    .line 30
    .line 31
    invoke-virtual {v1}, Lcom/mycompany/app/cast/CastUtil;->g()V

    .line 32
    .line 33
    .line 34
    return-void

    .line 35
    :cond_1
    new-instance v8, Ljava/util/ArrayList;

    .line 36
    .line 37
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 38
    .line 39
    .line 40
    const/16 v16, 0x0

    .line 41
    .line 42
    const/4 v9, 0x1

    .line 43
    move v13, v9

    .line 44
    move/from16 v10, v16

    .line 45
    .line 46
    :goto_0
    if-ge v10, v15, :cond_7

    .line 47
    .line 48
    invoke-interface {v3, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v14

    .line 52
    check-cast v14, Ljava/lang/String;

    .line 53
    .line 54
    invoke-static {v14}, Lcom/mycompany/app/main/MainUtil;->v2(Ljava/lang/String;)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v17

    .line 58
    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 59
    .line 60
    .line 61
    move-result v18

    .line 62
    if-eqz v18, :cond_2

    .line 63
    .line 64
    const-string v17, "video/*"

    .line 65
    .line 66
    :cond_2
    move-object/from16 v0, v17

    .line 67
    .line 68
    move-object/from16 v17, v3

    .line 69
    .line 70
    const/4 v3, 0x0

    .line 71
    invoke-static {v14, v3, v0, v9}, Lcom/mycompany/app/main/MainUtil;->V3(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v18

    .line 75
    if-eqz v4, :cond_3

    .line 76
    .line 77
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 78
    .line 79
    .line 80
    move-result v3

    .line 81
    if-ge v10, v3, :cond_3

    .line 82
    .line 83
    invoke-interface {v4, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object v3

    .line 87
    check-cast v3, Ljava/lang/String;

    .line 88
    .line 89
    goto :goto_1

    .line 90
    :cond_3
    const/4 v3, 0x0

    .line 91
    :goto_1
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 92
    .line 93
    .line 94
    move-result v19

    .line 95
    if-eqz v19, :cond_4

    .line 96
    .line 97
    const-string v9, "image"

    .line 98
    .line 99
    invoke-virtual {v0, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 100
    .line 101
    .line 102
    move-result v9

    .line 103
    if-eqz v9, :cond_4

    .line 104
    .line 105
    move-object v3, v14

    .line 106
    :cond_4
    const/4 v9, 0x1

    .line 107
    if-le v15, v9, :cond_5

    .line 108
    .line 109
    new-instance v9, Ljava/lang/StringBuilder;

    .line 110
    .line 111
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 112
    .line 113
    .line 114
    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    move-object/from16 v20, v0

    .line 118
    .line 119
    const-string v0, " ("

    .line 120
    .line 121
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 125
    .line 126
    .line 127
    const-string v0, " / "

    .line 128
    .line 129
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 133
    .line 134
    .line 135
    const-string v0, ") "

    .line 136
    .line 137
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    .line 139
    .line 140
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object v0

    .line 144
    :goto_2
    move-wide/from16 v21, v6

    .line 145
    .line 146
    goto :goto_3

    .line 147
    :cond_5
    move-object/from16 v20, v0

    .line 148
    .line 149
    move-object v0, v2

    .line 150
    goto :goto_2

    .line 151
    :goto_3
    iget-object v6, v1, Lcom/mycompany/app/cast/CastUtil;->a:Landroid/content/Context;

    .line 152
    .line 153
    move-object v7, v14

    .line 154
    const/4 v14, 0x0

    .line 155
    move-object/from16 v23, v2

    .line 156
    .line 157
    move/from16 v19, v13

    .line 158
    .line 159
    move-object/from16 v9, v18

    .line 160
    .line 161
    move-object/from16 v13, v20

    .line 162
    .line 163
    move-object/from16 v20, v4

    .line 164
    .line 165
    move/from16 v18, v10

    .line 166
    .line 167
    const/4 v4, 0x1

    .line 168
    move-object v10, v0

    .line 169
    move-object v0, v8

    .line 170
    move-object v8, v3

    .line 171
    move-wide/from16 v2, v21

    .line 172
    .line 173
    invoke-static/range {v6 .. v14}, Lcom/mycompany/app/cast/CastUtil;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/util/ArrayList;)Lcom/google/android/gms/cast/MediaInfo;

    .line 174
    .line 175
    .line 176
    move-result-object v6

    .line 177
    if-nez v6, :cond_6

    .line 178
    .line 179
    goto :goto_4

    .line 180
    :cond_6
    :try_start_0
    new-instance v7, Lcom/google/android/gms/cast/MediaQueueItem$Builder;

    .line 181
    .line 182
    invoke-direct {v7, v6}, Lcom/google/android/gms/cast/MediaQueueItem$Builder;-><init>(Lcom/google/android/gms/cast/MediaInfo;)V

    .line 183
    .line 184
    .line 185
    iget-object v6, v7, Lcom/google/android/gms/cast/MediaQueueItem$Builder;->a:Lcom/google/android/gms/cast/MediaQueueItem;

    .line 186
    .line 187
    iget-object v6, v6, Lcom/google/android/gms/cast/MediaQueueItem;->n:Lcom/google/android/gms/cast/MediaQueueItem$Writer;

    .line 188
    .line 189
    iget-object v6, v6, Lcom/google/android/gms/cast/MediaQueueItem$Writer;->a:Lcom/google/android/gms/cast/MediaQueueItem;

    .line 190
    .line 191
    iput-boolean v4, v6, Lcom/google/android/gms/cast/MediaQueueItem;->g:Z

    .line 192
    .line 193
    invoke-virtual {v7}, Lcom/google/android/gms/cast/MediaQueueItem$Builder;->a()Lcom/google/android/gms/cast/MediaQueueItem;

    .line 194
    .line 195
    .line 196
    move-result-object v6

    .line 197
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 198
    .line 199
    .line 200
    add-int/lit8 v13, v19, 0x1

    .line 201
    .line 202
    goto :goto_5

    .line 203
    :catch_0
    :goto_4
    move/from16 v13, v19

    .line 204
    .line 205
    :goto_5
    add-int/lit8 v10, v18, 0x1

    .line 206
    .line 207
    move-object v8, v0

    .line 208
    move-wide v6, v2

    .line 209
    move v9, v4

    .line 210
    move-object/from16 v3, v17

    .line 211
    .line 212
    move-object/from16 v4, v20

    .line 213
    .line 214
    move-object/from16 v2, v23

    .line 215
    .line 216
    move-object/from16 v0, p0

    .line 217
    .line 218
    goto/16 :goto_0

    .line 219
    .line 220
    :cond_7
    move-wide v2, v6

    .line 221
    move-object v0, v8

    .line 222
    move v4, v9

    .line 223
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 224
    .line 225
    .line 226
    move-result v6

    .line 227
    if-nez v6, :cond_8

    .line 228
    .line 229
    invoke-virtual {v1}, Lcom/mycompany/app/cast/CastUtil;->g()V

    .line 230
    .line 231
    .line 232
    goto :goto_7

    .line 233
    :cond_8
    new-array v7, v6, [Lcom/google/android/gms/cast/MediaQueueItem;

    .line 234
    .line 235
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 236
    .line 237
    .line 238
    move-result v8

    .line 239
    move/from16 v9, v16

    .line 240
    .line 241
    move v10, v9

    .line 242
    :goto_6
    if-ge v10, v8, :cond_9

    .line 243
    .line 244
    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 245
    .line 246
    .line 247
    move-result-object v11

    .line 248
    add-int/lit8 v10, v10, 0x1

    .line 249
    .line 250
    check-cast v11, Lcom/google/android/gms/cast/MediaQueueItem;

    .line 251
    .line 252
    aput-object v11, v7, v9

    .line 253
    .line 254
    add-int/2addr v9, v4

    .line 255
    goto :goto_6

    .line 256
    :cond_9
    if-lt v5, v6, :cond_a

    .line 257
    .line 258
    add-int/lit8 v5, v6, -0x1

    .line 259
    .line 260
    :cond_a
    if-gez v5, :cond_b

    .line 261
    .line 262
    move/from16 v5, v16

    .line 263
    .line 264
    :cond_b
    iput-object v7, v1, Lcom/mycompany/app/cast/CastUtil;->p:[Lcom/google/android/gms/cast/MediaQueueItem;

    .line 265
    .line 266
    iput v5, v1, Lcom/mycompany/app/cast/CastUtil;->l:I

    .line 267
    .line 268
    iput-wide v2, v1, Lcom/mycompany/app/cast/CastUtil;->n:J

    .line 269
    .line 270
    iget-object v0, v1, Lcom/mycompany/app/cast/CastUtil;->c:Landroid/os/Handler;

    .line 271
    .line 272
    if-nez v0, :cond_c

    .line 273
    .line 274
    goto :goto_7

    .line 275
    :cond_c
    new-instance v2, Lcom/mycompany/app/cast/CastUtil$10;

    .line 276
    .line 277
    invoke-direct {v2, v1}, Lcom/mycompany/app/cast/CastUtil$10;-><init>(Lcom/mycompany/app/cast/CastUtil;)V

    .line 278
    .line 279
    .line 280
    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 281
    .line 282
    .line 283
    :goto_7
    return-void

    .line 284
    :cond_d
    :goto_8
    invoke-virtual {v1}, Lcom/mycompany/app/cast/CastUtil;->g()V

    .line 285
    .line 286
    .line 287
    return-void
.end method
