.class Lcom/mycompany/app/quick/QuickNewsGoogle$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/quick/QuickNewsGoogle;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/quick/QuickNewsGoogle;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/quick/QuickNewsGoogle$8;->c:Lcom/mycompany/app/quick/QuickNewsGoogle;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/quick/QuickNewsGoogle$8;->c:Lcom/mycompany/app/quick/QuickNewsGoogle;

    .line 4
    .line 5
    iget-object v2, v1, Lcom/mycompany/app/quick/QuickNewsGoogle;->z:Ljava/lang/String;

    .line 6
    .line 7
    iget-object v3, v1, Lcom/mycompany/app/quick/QuickNewsGoogle;->A:Ljava/lang/String;

    .line 8
    .line 9
    iget-object v4, v1, Lcom/mycompany/app/quick/QuickNewsGoogle;->B:Ljava/lang/String;

    .line 10
    .line 11
    iget-object v5, v1, Lcom/mycompany/app/quick/QuickNewsGoogle;->C:Ljava/lang/String;

    .line 12
    .line 13
    iget-object v6, v1, Lcom/mycompany/app/quick/QuickNewsGoogle;->D:Ljava/lang/String;

    .line 14
    .line 15
    const/4 v8, 0x0

    .line 16
    iput-object v8, v1, Lcom/mycompany/app/quick/QuickNewsGoogle;->z:Ljava/lang/String;

    .line 17
    .line 18
    iput-object v8, v1, Lcom/mycompany/app/quick/QuickNewsGoogle;->A:Ljava/lang/String;

    .line 19
    .line 20
    iput-object v8, v1, Lcom/mycompany/app/quick/QuickNewsGoogle;->B:Ljava/lang/String;

    .line 21
    .line 22
    iput-object v8, v1, Lcom/mycompany/app/quick/QuickNewsGoogle;->C:Ljava/lang/String;

    .line 23
    .line 24
    iput-object v8, v1, Lcom/mycompany/app/quick/QuickNewsGoogle;->D:Ljava/lang/String;

    .line 25
    .line 26
    const/4 v9, 0x0

    .line 27
    iput-boolean v9, v1, Lcom/mycompany/app/quick/QuickNewsGoogle;->r:Z

    .line 28
    .line 29
    iput-object v8, v1, Lcom/mycompany/app/quick/QuickNewsGoogle;->t:Ljava/util/ArrayList;

    .line 30
    .line 31
    const-string v7, "!@!"

    .line 32
    .line 33
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 34
    .line 35
    .line 36
    move-result v10

    .line 37
    if-eqz v10, :cond_0

    .line 38
    .line 39
    goto/16 :goto_2

    .line 40
    .line 41
    :cond_0
    :try_start_0
    invoke-virtual {v2, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v10

    .line 45
    if-nez v10, :cond_1

    .line 46
    .line 47
    goto/16 :goto_2

    .line 48
    .line 49
    :cond_1
    array-length v11, v10

    .line 50
    if-nez v11, :cond_2

    .line 51
    .line 52
    goto/16 :goto_2

    .line 53
    .line 54
    :cond_2
    invoke-virtual {v3, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v12

    .line 58
    if-eqz v12, :cond_b

    .line 59
    .line 60
    array-length v2, v12

    .line 61
    if-eq v2, v11, :cond_3

    .line 62
    .line 63
    goto/16 :goto_2

    .line 64
    .line 65
    :cond_3
    invoke-virtual {v4, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v13

    .line 69
    if-eqz v13, :cond_b

    .line 70
    .line 71
    array-length v2, v13

    .line 72
    if-eq v2, v11, :cond_4

    .line 73
    .line 74
    goto :goto_2

    .line 75
    :cond_4
    invoke-virtual {v5, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v14

    .line 79
    if-eqz v14, :cond_b

    .line 80
    .line 81
    array-length v2, v14

    .line 82
    if-eq v2, v11, :cond_5

    .line 83
    .line 84
    goto :goto_2

    .line 85
    :cond_5
    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v15

    .line 89
    if-eqz v15, :cond_b

    .line 90
    .line 91
    array-length v2, v15

    .line 92
    if-eq v2, v11, :cond_6

    .line 93
    .line 94
    goto :goto_2

    .line 95
    :cond_6
    iget-object v2, v1, Lcom/mycompany/app/quick/QuickNews;->a:Landroid/content/Context;

    .line 96
    .line 97
    invoke-static {v2}, Lcom/mycompany/app/data/DataNews;->a(Landroid/content/Context;)Lcom/mycompany/app/data/DataNews;

    .line 98
    .line 99
    .line 100
    move-result-object v2

    .line 101
    iget-object v7, v2, Lcom/mycompany/app/data/DataNews;->a:Ljava/util/List;

    .line 102
    .line 103
    move-object/from16 v16, v8

    .line 104
    .line 105
    move v2, v9

    .line 106
    :goto_0
    if-ge v2, v11, :cond_a

    .line 107
    .line 108
    iget-object v3, v1, Lcom/mycompany/app/quick/QuickNews;->a:Landroid/content/Context;

    .line 109
    .line 110
    if-nez v3, :cond_7

    .line 111
    .line 112
    goto :goto_2

    .line 113
    :cond_7
    move v3, v2

    .line 114
    aget-object v2, v10, v3

    .line 115
    .line 116
    move v4, v3

    .line 117
    aget-object v3, v12, v4

    .line 118
    .line 119
    move v5, v4

    .line 120
    aget-object v4, v13, v5

    .line 121
    .line 122
    move v6, v5

    .line 123
    aget-object v5, v14, v6

    .line 124
    .line 125
    move/from16 v17, v6

    .line 126
    .line 127
    aget-object v6, v15, v17

    .line 128
    .line 129
    invoke-virtual/range {v1 .. v7}, Lcom/mycompany/app/quick/QuickNewsGoogle;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lcom/mycompany/app/quick/QuickAdapter$QuickItem;

    .line 130
    .line 131
    .line 132
    move-result-object v2

    .line 133
    if-nez v2, :cond_8

    .line 134
    .line 135
    goto :goto_1

    .line 136
    :cond_8
    if-nez v16, :cond_9

    .line 137
    .line 138
    new-instance v16, Ljava/util/ArrayList;

    .line 139
    .line 140
    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 141
    .line 142
    .line 143
    :cond_9
    move-object/from16 v3, v16

    .line 144
    .line 145
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 146
    .line 147
    .line 148
    move-object/from16 v16, v3

    .line 149
    .line 150
    :goto_1
    add-int/lit8 v2, v17, 0x1

    .line 151
    .line 152
    goto :goto_0

    .line 153
    :cond_a
    move-object/from16 v2, v16

    .line 154
    .line 155
    goto :goto_3

    .line 156
    :catch_0
    :cond_b
    :goto_2
    move-object v2, v8

    .line 157
    :goto_3
    iget-boolean v3, v1, Lcom/mycompany/app/quick/QuickNewsGoogle;->r:Z

    .line 158
    .line 159
    if-eqz v3, :cond_14

    .line 160
    .line 161
    if-eqz v2, :cond_13

    .line 162
    .line 163
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    .line 164
    .line 165
    .line 166
    move-result v3

    .line 167
    if-eqz v3, :cond_c

    .line 168
    .line 169
    goto :goto_7

    .line 170
    :cond_c
    iput-object v2, v1, Lcom/mycompany/app/quick/QuickNewsGoogle;->t:Ljava/util/ArrayList;

    .line 171
    .line 172
    iput v9, v1, Lcom/mycompany/app/quick/QuickNewsGoogle;->q:I

    .line 173
    .line 174
    iget-object v3, v1, Lcom/mycompany/app/quick/QuickNewsGoogle;->l:Lcom/mycompany/app/view/MyWebSafe;

    .line 175
    .line 176
    if-nez v3, :cond_d

    .line 177
    .line 178
    goto :goto_4

    .line 179
    :cond_d
    new-instance v3, Lcom/mycompany/app/quick/QuickNewsGoogle$7;

    .line 180
    .line 181
    invoke-direct {v3, v1}, Lcom/mycompany/app/quick/QuickNewsGoogle$7;-><init>(Lcom/mycompany/app/quick/QuickNewsGoogle;)V

    .line 182
    .line 183
    .line 184
    invoke-virtual {v1, v3}, Lcom/mycompany/app/quick/QuickNews;->d(Ljava/lang/Runnable;)V

    .line 185
    .line 186
    .line 187
    :goto_4
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    .line 188
    .line 189
    .line 190
    move-result v3

    .line 191
    if-eqz v3, :cond_e

    .line 192
    .line 193
    goto :goto_6

    .line 194
    :cond_e
    new-instance v3, Ljava/util/ArrayList;

    .line 195
    .line 196
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 197
    .line 198
    .line 199
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 200
    .line 201
    .line 202
    move-result v4

    .line 203
    :goto_5
    if-ge v9, v4, :cond_11

    .line 204
    .line 205
    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 206
    .line 207
    .line 208
    move-result-object v5

    .line 209
    add-int/lit8 v9, v9, 0x1

    .line 210
    .line 211
    check-cast v5, Lcom/mycompany/app/quick/QuickAdapter$QuickItem;

    .line 212
    .line 213
    iget-object v6, v1, Lcom/mycompany/app/quick/QuickNews;->a:Landroid/content/Context;

    .line 214
    .line 215
    if-nez v6, :cond_f

    .line 216
    .line 217
    goto :goto_6

    .line 218
    :cond_f
    if-nez v5, :cond_10

    .line 219
    .line 220
    goto :goto_5

    .line 221
    :cond_10
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 222
    .line 223
    .line 224
    goto :goto_5

    .line 225
    :cond_11
    move-object v8, v3

    .line 226
    :goto_6
    invoke-virtual {v1, v8}, Lcom/mycompany/app/quick/QuickNewsGoogle;->h(Ljava/util/ArrayList;)Ljava/util/List;

    .line 227
    .line 228
    .line 229
    move-result-object v2

    .line 230
    iput-object v2, v1, Lcom/mycompany/app/quick/QuickNewsGoogle;->F:Ljava/util/List;

    .line 231
    .line 232
    iget-object v2, v1, Lcom/mycompany/app/quick/QuickNews;->c:Landroid/os/Handler;

    .line 233
    .line 234
    if-nez v2, :cond_12

    .line 235
    .line 236
    goto :goto_8

    .line 237
    :cond_12
    new-instance v3, Lcom/mycompany/app/quick/QuickNewsGoogle$10;

    .line 238
    .line 239
    invoke-direct {v3, v1}, Lcom/mycompany/app/quick/QuickNewsGoogle$10;-><init>(Lcom/mycompany/app/quick/QuickNewsGoogle;)V

    .line 240
    .line 241
    .line 242
    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 243
    .line 244
    .line 245
    goto :goto_8

    .line 246
    :cond_13
    :goto_7
    invoke-virtual {v1, v8}, Lcom/mycompany/app/quick/QuickNewsGoogle;->f(Ljava/util/List;)V

    .line 247
    .line 248
    .line 249
    :goto_8
    return-void

    .line 250
    :cond_14
    if-eqz v2, :cond_17

    .line 251
    .line 252
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    .line 253
    .line 254
    .line 255
    move-result v3

    .line 256
    if-eqz v3, :cond_15

    .line 257
    .line 258
    goto :goto_9

    .line 259
    :cond_15
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 260
    .line 261
    .line 262
    move-result v3

    .line 263
    const/16 v4, 0xa

    .line 264
    .line 265
    if-ge v3, v4, :cond_16

    .line 266
    .line 267
    iget-boolean v3, v1, Lcom/mycompany/app/quick/QuickNewsGoogle;->s:Z

    .line 268
    .line 269
    if-nez v3, :cond_16

    .line 270
    .line 271
    const/4 v2, 0x1

    .line 272
    iput-boolean v2, v1, Lcom/mycompany/app/quick/QuickNewsGoogle;->s:Z

    .line 273
    .line 274
    iget v3, v1, Lcom/mycompany/app/quick/QuickNewsGoogle;->q:I

    .line 275
    .line 276
    sub-int/2addr v3, v2

    .line 277
    iput v3, v1, Lcom/mycompany/app/quick/QuickNewsGoogle;->q:I

    .line 278
    .line 279
    invoke-virtual {v1, v8}, Lcom/mycompany/app/quick/QuickNewsGoogle;->f(Ljava/util/List;)V

    .line 280
    .line 281
    .line 282
    return-void

    .line 283
    :cond_16
    invoke-virtual {v1, v2}, Lcom/mycompany/app/quick/QuickNewsGoogle;->h(Ljava/util/ArrayList;)Ljava/util/List;

    .line 284
    .line 285
    .line 286
    move-result-object v2

    .line 287
    invoke-virtual {v1, v2}, Lcom/mycompany/app/quick/QuickNewsGoogle;->f(Ljava/util/List;)V

    .line 288
    .line 289
    .line 290
    return-void

    .line 291
    :cond_17
    :goto_9
    invoke-virtual {v1, v8}, Lcom/mycompany/app/quick/QuickNewsGoogle;->f(Ljava/util/List;)V

    .line 292
    .line 293
    .line 294
    return-void
.end method
