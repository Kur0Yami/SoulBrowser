.class public final Lcom/google/android/material/color/MaterialColorUtilitiesHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
.end annotation


# static fields
.field public static final a:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 18

    .line 1
    new-instance v0, Lcom/google/android/material/color/utilities/MaterialDynamicColors;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Ljava/util/HashMap;

    .line 7
    .line 8
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 9
    .line 10
    .line 11
    sget v2, Lcom/google/android/material/R$color;->material_personalized_color_primary:I

    .line 12
    .line 13
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    invoke-virtual {v0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->d()Lcom/google/android/material/color/utilities/DynamicColor;

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    sget v2, Lcom/google/android/material/R$color;->material_personalized_color_on_primary:I

    .line 25
    .line 26
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    new-instance v3, Lcom/google/android/material/color/utilities/DynamicColor;

    .line 31
    .line 32
    new-instance v5, Lcom/google/android/material/color/utilities/c;

    .line 33
    .line 34
    const/4 v4, 0x2

    .line 35
    invoke-direct {v5, v4}, Lcom/google/android/material/color/utilities/c;-><init>(I)V

    .line 36
    .line 37
    .line 38
    new-instance v6, Lcom/google/android/material/color/utilities/c;

    .line 39
    .line 40
    const/4 v4, 0x3

    .line 41
    invoke-direct {v6, v4}, Lcom/google/android/material/color/utilities/c;-><init>(I)V

    .line 42
    .line 43
    .line 44
    new-instance v8, Lcom/google/android/material/color/utilities/b;

    .line 45
    .line 46
    const/4 v4, 0x4

    .line 47
    invoke-direct {v8, v0, v4}, Lcom/google/android/material/color/utilities/b;-><init>(Lcom/google/android/material/color/utilities/MaterialDynamicColors;I)V

    .line 48
    .line 49
    .line 50
    new-instance v9, Lcom/google/android/material/color/utilities/ContrastCurve;

    .line 51
    .line 52
    const-wide/high16 v14, 0x4026000000000000L    # 11.0

    .line 53
    .line 54
    const-wide/high16 v16, 0x4035000000000000L    # 21.0

    .line 55
    .line 56
    const-wide/high16 v10, 0x4012000000000000L    # 4.5

    .line 57
    .line 58
    const-wide/high16 v12, 0x401c000000000000L    # 7.0

    .line 59
    .line 60
    invoke-direct/range {v9 .. v17}, Lcom/google/android/material/color/utilities/ContrastCurve;-><init>(DDDD)V

    .line 61
    .line 62
    .line 63
    const/4 v10, 0x0

    .line 64
    const-string v4, "on_primary"

    .line 65
    .line 66
    const/4 v7, 0x0

    .line 67
    invoke-direct/range {v3 .. v10}, Lcom/google/android/material/color/utilities/DynamicColor;-><init>(Ljava/lang/String;Ljava/util/function/Function;Ljava/util/function/Function;ZLjava/util/function/Function;Lcom/google/android/material/color/utilities/ContrastCurve;Ljava/util/function/Function;)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    sget v2, Lcom/google/android/material/R$color;->material_personalized_color_primary_inverse:I

    .line 74
    .line 75
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 76
    .line 77
    .line 78
    move-result-object v2

    .line 79
    new-instance v3, Lcom/google/android/material/color/utilities/DynamicColor;

    .line 80
    .line 81
    new-instance v5, Lcom/google/android/material/color/utilities/c;

    .line 82
    .line 83
    const/4 v4, 0x5

    .line 84
    invoke-direct {v5, v4}, Lcom/google/android/material/color/utilities/c;-><init>(I)V

    .line 85
    .line 86
    .line 87
    new-instance v6, Lcom/google/android/material/color/utilities/c;

    .line 88
    .line 89
    const/4 v4, 0x6

    .line 90
    invoke-direct {v6, v4}, Lcom/google/android/material/color/utilities/c;-><init>(I)V

    .line 91
    .line 92
    .line 93
    new-instance v8, Lcom/google/android/material/color/utilities/c;

    .line 94
    .line 95
    const/4 v4, 0x7

    .line 96
    invoke-direct {v8, v0, v4}, Lcom/google/android/material/color/utilities/c;-><init>(Lcom/google/android/material/color/utilities/MaterialDynamicColors;I)V

    .line 97
    .line 98
    .line 99
    new-instance v9, Lcom/google/android/material/color/utilities/ContrastCurve;

    .line 100
    .line 101
    const-wide/high16 v14, 0x401c000000000000L    # 7.0

    .line 102
    .line 103
    const-wide/high16 v16, 0x401c000000000000L    # 7.0

    .line 104
    .line 105
    const-wide/high16 v10, 0x4008000000000000L    # 3.0

    .line 106
    .line 107
    const-wide/high16 v12, 0x4012000000000000L    # 4.5

    .line 108
    .line 109
    invoke-direct/range {v9 .. v17}, Lcom/google/android/material/color/utilities/ContrastCurve;-><init>(DDDD)V

    .line 110
    .line 111
    .line 112
    const/4 v10, 0x0

    .line 113
    const-string v4, "inverse_primary"

    .line 114
    .line 115
    invoke-direct/range {v3 .. v10}, Lcom/google/android/material/color/utilities/DynamicColor;-><init>(Ljava/lang/String;Ljava/util/function/Function;Ljava/util/function/Function;ZLjava/util/function/Function;Lcom/google/android/material/color/utilities/ContrastCurve;Ljava/util/function/Function;)V

    .line 116
    .line 117
    .line 118
    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    .line 120
    .line 121
    sget v2, Lcom/google/android/material/R$color;->material_personalized_color_primary_container:I

    .line 122
    .line 123
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 124
    .line 125
    .line 126
    move-result-object v2

    .line 127
    invoke-virtual {v0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->e()Lcom/google/android/material/color/utilities/DynamicColor;

    .line 128
    .line 129
    .line 130
    move-result-object v3

    .line 131
    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    .line 133
    .line 134
    sget v2, Lcom/google/android/material/R$color;->material_personalized_color_on_primary_container:I

    .line 135
    .line 136
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 137
    .line 138
    .line 139
    move-result-object v2

    .line 140
    new-instance v3, Lcom/google/android/material/color/utilities/DynamicColor;

    .line 141
    .line 142
    new-instance v5, Lcom/google/android/material/color/utilities/c;

    .line 143
    .line 144
    const/16 v4, 0xc

    .line 145
    .line 146
    invoke-direct {v5, v4}, Lcom/google/android/material/color/utilities/c;-><init>(I)V

    .line 147
    .line 148
    .line 149
    new-instance v6, Lcom/google/android/material/color/utilities/c;

    .line 150
    .line 151
    const/16 v4, 0xe

    .line 152
    .line 153
    invoke-direct {v6, v0, v4}, Lcom/google/android/material/color/utilities/c;-><init>(Lcom/google/android/material/color/utilities/MaterialDynamicColors;I)V

    .line 154
    .line 155
    .line 156
    new-instance v8, Lcom/google/android/material/color/utilities/b;

    .line 157
    .line 158
    const/4 v4, 0x6

    .line 159
    invoke-direct {v8, v0, v4}, Lcom/google/android/material/color/utilities/b;-><init>(Lcom/google/android/material/color/utilities/MaterialDynamicColors;I)V

    .line 160
    .line 161
    .line 162
    new-instance v9, Lcom/google/android/material/color/utilities/ContrastCurve;

    .line 163
    .line 164
    const-wide/high16 v16, 0x4026000000000000L    # 11.0

    .line 165
    .line 166
    const-wide/high16 v10, 0x4008000000000000L    # 3.0

    .line 167
    .line 168
    invoke-direct/range {v9 .. v17}, Lcom/google/android/material/color/utilities/ContrastCurve;-><init>(DDDD)V

    .line 169
    .line 170
    .line 171
    const/4 v10, 0x0

    .line 172
    const-string v4, "on_primary_container"

    .line 173
    .line 174
    invoke-direct/range {v3 .. v10}, Lcom/google/android/material/color/utilities/DynamicColor;-><init>(Ljava/lang/String;Ljava/util/function/Function;Ljava/util/function/Function;ZLjava/util/function/Function;Lcom/google/android/material/color/utilities/ContrastCurve;Ljava/util/function/Function;)V

    .line 175
    .line 176
    .line 177
    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    .line 179
    .line 180
    sget v2, Lcom/google/android/material/R$color;->material_personalized_color_secondary:I

    .line 181
    .line 182
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 183
    .line 184
    .line 185
    move-result-object v2

    .line 186
    invoke-virtual {v0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->f()Lcom/google/android/material/color/utilities/DynamicColor;

    .line 187
    .line 188
    .line 189
    move-result-object v3

    .line 190
    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    .line 192
    .line 193
    sget v2, Lcom/google/android/material/R$color;->material_personalized_color_on_secondary:I

    .line 194
    .line 195
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 196
    .line 197
    .line 198
    move-result-object v2

    .line 199
    new-instance v3, Lcom/google/android/material/color/utilities/DynamicColor;

    .line 200
    .line 201
    new-instance v5, Lcom/google/android/material/color/utilities/c;

    .line 202
    .line 203
    const/16 v4, 0x18

    .line 204
    .line 205
    invoke-direct {v5, v4}, Lcom/google/android/material/color/utilities/c;-><init>(I)V

    .line 206
    .line 207
    .line 208
    new-instance v6, Lcom/google/android/material/color/utilities/c;

    .line 209
    .line 210
    const/16 v4, 0x19

    .line 211
    .line 212
    invoke-direct {v6, v4}, Lcom/google/android/material/color/utilities/c;-><init>(I)V

    .line 213
    .line 214
    .line 215
    new-instance v8, Lcom/google/android/material/color/utilities/b;

    .line 216
    .line 217
    const/16 v4, 0x8

    .line 218
    .line 219
    invoke-direct {v8, v0, v4}, Lcom/google/android/material/color/utilities/b;-><init>(Lcom/google/android/material/color/utilities/MaterialDynamicColors;I)V

    .line 220
    .line 221
    .line 222
    new-instance v9, Lcom/google/android/material/color/utilities/ContrastCurve;

    .line 223
    .line 224
    const-wide/high16 v14, 0x4026000000000000L    # 11.0

    .line 225
    .line 226
    const-wide/high16 v16, 0x4035000000000000L    # 21.0

    .line 227
    .line 228
    const-wide/high16 v10, 0x4012000000000000L    # 4.5

    .line 229
    .line 230
    const-wide/high16 v12, 0x401c000000000000L    # 7.0

    .line 231
    .line 232
    invoke-direct/range {v9 .. v17}, Lcom/google/android/material/color/utilities/ContrastCurve;-><init>(DDDD)V

    .line 233
    .line 234
    .line 235
    const/4 v10, 0x0

    .line 236
    const-string v4, "on_secondary"

    .line 237
    .line 238
    invoke-direct/range {v3 .. v10}, Lcom/google/android/material/color/utilities/DynamicColor;-><init>(Ljava/lang/String;Ljava/util/function/Function;Ljava/util/function/Function;ZLjava/util/function/Function;Lcom/google/android/material/color/utilities/ContrastCurve;Ljava/util/function/Function;)V

    .line 239
    .line 240
    .line 241
    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 242
    .line 243
    .line 244
    sget v2, Lcom/google/android/material/R$color;->material_personalized_color_secondary_container:I

    .line 245
    .line 246
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 247
    .line 248
    .line 249
    move-result-object v2

    .line 250
    invoke-virtual {v0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->g()Lcom/google/android/material/color/utilities/DynamicColor;

    .line 251
    .line 252
    .line 253
    move-result-object v3

    .line 254
    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 255
    .line 256
    .line 257
    sget v2, Lcom/google/android/material/R$color;->material_personalized_color_on_secondary_container:I

    .line 258
    .line 259
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 260
    .line 261
    .line 262
    move-result-object v2

    .line 263
    new-instance v3, Lcom/google/android/material/color/utilities/DynamicColor;

    .line 264
    .line 265
    new-instance v5, Lcom/google/android/material/color/utilities/d;

    .line 266
    .line 267
    const/4 v4, 0x7

    .line 268
    invoke-direct {v5, v4}, Lcom/google/android/material/color/utilities/d;-><init>(I)V

    .line 269
    .line 270
    .line 271
    new-instance v6, Lcom/google/android/material/color/utilities/d;

    .line 272
    .line 273
    const/16 v4, 0x8

    .line 274
    .line 275
    invoke-direct {v6, v0, v4}, Lcom/google/android/material/color/utilities/d;-><init>(Lcom/google/android/material/color/utilities/MaterialDynamicColors;I)V

    .line 276
    .line 277
    .line 278
    new-instance v8, Lcom/google/android/material/color/utilities/b;

    .line 279
    .line 280
    const/16 v4, 0xc

    .line 281
    .line 282
    invoke-direct {v8, v0, v4}, Lcom/google/android/material/color/utilities/b;-><init>(Lcom/google/android/material/color/utilities/MaterialDynamicColors;I)V

    .line 283
    .line 284
    .line 285
    new-instance v9, Lcom/google/android/material/color/utilities/ContrastCurve;

    .line 286
    .line 287
    const-wide/high16 v14, 0x401c000000000000L    # 7.0

    .line 288
    .line 289
    const-wide/high16 v16, 0x4026000000000000L    # 11.0

    .line 290
    .line 291
    const-wide/high16 v10, 0x4008000000000000L    # 3.0

    .line 292
    .line 293
    const-wide/high16 v12, 0x4012000000000000L    # 4.5

    .line 294
    .line 295
    invoke-direct/range {v9 .. v17}, Lcom/google/android/material/color/utilities/ContrastCurve;-><init>(DDDD)V

    .line 296
    .line 297
    .line 298
    const/4 v10, 0x0

    .line 299
    const-string v4, "on_secondary_container"

    .line 300
    .line 301
    invoke-direct/range {v3 .. v10}, Lcom/google/android/material/color/utilities/DynamicColor;-><init>(Ljava/lang/String;Ljava/util/function/Function;Ljava/util/function/Function;ZLjava/util/function/Function;Lcom/google/android/material/color/utilities/ContrastCurve;Ljava/util/function/Function;)V

    .line 302
    .line 303
    .line 304
    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 305
    .line 306
    .line 307
    sget v2, Lcom/google/android/material/R$color;->material_personalized_color_tertiary:I

    .line 308
    .line 309
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 310
    .line 311
    .line 312
    move-result-object v2

    .line 313
    invoke-virtual {v0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->h()Lcom/google/android/material/color/utilities/DynamicColor;

    .line 314
    .line 315
    .line 316
    move-result-object v3

    .line 317
    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 318
    .line 319
    .line 320
    sget v2, Lcom/google/android/material/R$color;->material_personalized_color_on_tertiary:I

    .line 321
    .line 322
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 323
    .line 324
    .line 325
    move-result-object v2

    .line 326
    new-instance v3, Lcom/google/android/material/color/utilities/DynamicColor;

    .line 327
    .line 328
    new-instance v5, Lcom/google/android/material/color/utilities/c;

    .line 329
    .line 330
    const/16 v4, 0xd

    .line 331
    .line 332
    invoke-direct {v5, v4}, Lcom/google/android/material/color/utilities/c;-><init>(I)V

    .line 333
    .line 334
    .line 335
    new-instance v6, Lcom/google/android/material/color/utilities/c;

    .line 336
    .line 337
    const/16 v4, 0x17

    .line 338
    .line 339
    invoke-direct {v6, v4}, Lcom/google/android/material/color/utilities/c;-><init>(I)V

    .line 340
    .line 341
    .line 342
    new-instance v8, Lcom/google/android/material/color/utilities/b;

    .line 343
    .line 344
    const/16 v4, 0xa

    .line 345
    .line 346
    invoke-direct {v8, v0, v4}, Lcom/google/android/material/color/utilities/b;-><init>(Lcom/google/android/material/color/utilities/MaterialDynamicColors;I)V

    .line 347
    .line 348
    .line 349
    new-instance v9, Lcom/google/android/material/color/utilities/ContrastCurve;

    .line 350
    .line 351
    const-wide/high16 v14, 0x4026000000000000L    # 11.0

    .line 352
    .line 353
    const-wide/high16 v16, 0x4035000000000000L    # 21.0

    .line 354
    .line 355
    const-wide/high16 v10, 0x4012000000000000L    # 4.5

    .line 356
    .line 357
    const-wide/high16 v12, 0x401c000000000000L    # 7.0

    .line 358
    .line 359
    invoke-direct/range {v9 .. v17}, Lcom/google/android/material/color/utilities/ContrastCurve;-><init>(DDDD)V

    .line 360
    .line 361
    .line 362
    const/4 v10, 0x0

    .line 363
    const-string v4, "on_tertiary"

    .line 364
    .line 365
    invoke-direct/range {v3 .. v10}, Lcom/google/android/material/color/utilities/DynamicColor;-><init>(Ljava/lang/String;Ljava/util/function/Function;Ljava/util/function/Function;ZLjava/util/function/Function;Lcom/google/android/material/color/utilities/ContrastCurve;Ljava/util/function/Function;)V

    .line 366
    .line 367
    .line 368
    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 369
    .line 370
    .line 371
    sget v2, Lcom/google/android/material/R$color;->material_personalized_color_tertiary_container:I

    .line 372
    .line 373
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 374
    .line 375
    .line 376
    move-result-object v2

    .line 377
    invoke-virtual {v0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->i()Lcom/google/android/material/color/utilities/DynamicColor;

    .line 378
    .line 379
    .line 380
    move-result-object v3

    .line 381
    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 382
    .line 383
    .line 384
    sget v2, Lcom/google/android/material/R$color;->material_personalized_color_on_tertiary_container:I

    .line 385
    .line 386
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 387
    .line 388
    .line 389
    move-result-object v2

    .line 390
    new-instance v3, Lcom/google/android/material/color/utilities/DynamicColor;

    .line 391
    .line 392
    new-instance v5, Lcom/google/android/material/color/utilities/d;

    .line 393
    .line 394
    const/4 v4, 0x5

    .line 395
    invoke-direct {v5, v4}, Lcom/google/android/material/color/utilities/d;-><init>(I)V

    .line 396
    .line 397
    .line 398
    new-instance v6, Lcom/google/android/material/color/utilities/d;

    .line 399
    .line 400
    const/4 v4, 0x6

    .line 401
    invoke-direct {v6, v0, v4}, Lcom/google/android/material/color/utilities/d;-><init>(Lcom/google/android/material/color/utilities/MaterialDynamicColors;I)V

    .line 402
    .line 403
    .line 404
    new-instance v8, Lcom/google/android/material/color/utilities/b;

    .line 405
    .line 406
    const/16 v4, 0xb

    .line 407
    .line 408
    invoke-direct {v8, v0, v4}, Lcom/google/android/material/color/utilities/b;-><init>(Lcom/google/android/material/color/utilities/MaterialDynamicColors;I)V

    .line 409
    .line 410
    .line 411
    new-instance v9, Lcom/google/android/material/color/utilities/ContrastCurve;

    .line 412
    .line 413
    const-wide/high16 v14, 0x401c000000000000L    # 7.0

    .line 414
    .line 415
    const-wide/high16 v16, 0x4026000000000000L    # 11.0

    .line 416
    .line 417
    const-wide/high16 v10, 0x4008000000000000L    # 3.0

    .line 418
    .line 419
    const-wide/high16 v12, 0x4012000000000000L    # 4.5

    .line 420
    .line 421
    invoke-direct/range {v9 .. v17}, Lcom/google/android/material/color/utilities/ContrastCurve;-><init>(DDDD)V

    .line 422
    .line 423
    .line 424
    const/4 v10, 0x0

    .line 425
    const-string v4, "on_tertiary_container"

    .line 426
    .line 427
    invoke-direct/range {v3 .. v10}, Lcom/google/android/material/color/utilities/DynamicColor;-><init>(Ljava/lang/String;Ljava/util/function/Function;Ljava/util/function/Function;ZLjava/util/function/Function;Lcom/google/android/material/color/utilities/ContrastCurve;Ljava/util/function/Function;)V

    .line 428
    .line 429
    .line 430
    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 431
    .line 432
    .line 433
    sget v2, Lcom/google/android/material/R$color;->material_personalized_color_background:I

    .line 434
    .line 435
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 436
    .line 437
    .line 438
    move-result-object v2

    .line 439
    new-instance v3, Lcom/google/android/material/color/utilities/DynamicColor;

    .line 440
    .line 441
    new-instance v5, Lcom/google/android/material/color/utilities/a;

    .line 442
    .line 443
    const/16 v4, 0x14

    .line 444
    .line 445
    invoke-direct {v5, v4}, Lcom/google/android/material/color/utilities/a;-><init>(I)V

    .line 446
    .line 447
    .line 448
    new-instance v6, Lcom/google/android/material/color/utilities/a;

    .line 449
    .line 450
    const/16 v4, 0x15

    .line 451
    .line 452
    invoke-direct {v6, v4}, Lcom/google/android/material/color/utilities/a;-><init>(I)V

    .line 453
    .line 454
    .line 455
    const/4 v9, 0x0

    .line 456
    const-string v4, "background"

    .line 457
    .line 458
    const/4 v7, 0x1

    .line 459
    const/4 v8, 0x0

    .line 460
    invoke-direct/range {v3 .. v10}, Lcom/google/android/material/color/utilities/DynamicColor;-><init>(Ljava/lang/String;Ljava/util/function/Function;Ljava/util/function/Function;ZLjava/util/function/Function;Lcom/google/android/material/color/utilities/ContrastCurve;Ljava/util/function/Function;)V

    .line 461
    .line 462
    .line 463
    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 464
    .line 465
    .line 466
    sget v2, Lcom/google/android/material/R$color;->material_personalized_color_on_background:I

    .line 467
    .line 468
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 469
    .line 470
    .line 471
    move-result-object v2

    .line 472
    new-instance v3, Lcom/google/android/material/color/utilities/DynamicColor;

    .line 473
    .line 474
    new-instance v5, Lcom/google/android/material/color/utilities/a;

    .line 475
    .line 476
    const/16 v4, 0x19

    .line 477
    .line 478
    invoke-direct {v5, v4}, Lcom/google/android/material/color/utilities/a;-><init>(I)V

    .line 479
    .line 480
    .line 481
    new-instance v6, Lcom/google/android/material/color/utilities/a;

    .line 482
    .line 483
    const/16 v4, 0x1a

    .line 484
    .line 485
    invoke-direct {v6, v4}, Lcom/google/android/material/color/utilities/a;-><init>(I)V

    .line 486
    .line 487
    .line 488
    new-instance v8, Lcom/google/android/material/color/utilities/a;

    .line 489
    .line 490
    const/16 v4, 0x1b

    .line 491
    .line 492
    invoke-direct {v8, v0, v4}, Lcom/google/android/material/color/utilities/a;-><init>(Lcom/google/android/material/color/utilities/MaterialDynamicColors;I)V

    .line 493
    .line 494
    .line 495
    new-instance v9, Lcom/google/android/material/color/utilities/ContrastCurve;

    .line 496
    .line 497
    const-wide/high16 v14, 0x4012000000000000L    # 4.5

    .line 498
    .line 499
    const-wide/high16 v16, 0x401c000000000000L    # 7.0

    .line 500
    .line 501
    const-wide/high16 v10, 0x4008000000000000L    # 3.0

    .line 502
    .line 503
    const-wide/high16 v12, 0x4008000000000000L    # 3.0

    .line 504
    .line 505
    invoke-direct/range {v9 .. v17}, Lcom/google/android/material/color/utilities/ContrastCurve;-><init>(DDDD)V

    .line 506
    .line 507
    .line 508
    const/4 v10, 0x0

    .line 509
    const-string v4, "on_background"

    .line 510
    .line 511
    const/4 v7, 0x0

    .line 512
    invoke-direct/range {v3 .. v10}, Lcom/google/android/material/color/utilities/DynamicColor;-><init>(Ljava/lang/String;Ljava/util/function/Function;Ljava/util/function/Function;ZLjava/util/function/Function;Lcom/google/android/material/color/utilities/ContrastCurve;Ljava/util/function/Function;)V

    .line 513
    .line 514
    .line 515
    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 516
    .line 517
    .line 518
    sget v2, Lcom/google/android/material/R$color;->material_personalized_color_surface:I

    .line 519
    .line 520
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 521
    .line 522
    .line 523
    move-result-object v2

    .line 524
    new-instance v3, Lcom/google/android/material/color/utilities/DynamicColor;

    .line 525
    .line 526
    new-instance v5, Lcom/google/android/material/color/utilities/a;

    .line 527
    .line 528
    const/4 v4, 0x0

    .line 529
    invoke-direct {v5, v4}, Lcom/google/android/material/color/utilities/a;-><init>(I)V

    .line 530
    .line 531
    .line 532
    new-instance v6, Lcom/google/android/material/color/utilities/a;

    .line 533
    .line 534
    const/16 v4, 0xe

    .line 535
    .line 536
    invoke-direct {v6, v4}, Lcom/google/android/material/color/utilities/a;-><init>(I)V

    .line 537
    .line 538
    .line 539
    const/4 v9, 0x0

    .line 540
    const-string v4, "surface"

    .line 541
    .line 542
    const/4 v7, 0x1

    .line 543
    const/4 v8, 0x0

    .line 544
    invoke-direct/range {v3 .. v10}, Lcom/google/android/material/color/utilities/DynamicColor;-><init>(Ljava/lang/String;Ljava/util/function/Function;Ljava/util/function/Function;ZLjava/util/function/Function;Lcom/google/android/material/color/utilities/ContrastCurve;Ljava/util/function/Function;)V

    .line 545
    .line 546
    .line 547
    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 548
    .line 549
    .line 550
    sget v2, Lcom/google/android/material/R$color;->material_personalized_color_on_surface:I

    .line 551
    .line 552
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 553
    .line 554
    .line 555
    move-result-object v2

    .line 556
    new-instance v3, Lcom/google/android/material/color/utilities/DynamicColor;

    .line 557
    .line 558
    new-instance v5, Lcom/google/android/material/color/utilities/d;

    .line 559
    .line 560
    const/16 v4, 0x9

    .line 561
    .line 562
    invoke-direct {v5, v4}, Lcom/google/android/material/color/utilities/d;-><init>(I)V

    .line 563
    .line 564
    .line 565
    new-instance v6, Lcom/google/android/material/color/utilities/d;

    .line 566
    .line 567
    const/16 v4, 0x13

    .line 568
    .line 569
    invoke-direct {v6, v4}, Lcom/google/android/material/color/utilities/d;-><init>(I)V

    .line 570
    .line 571
    .line 572
    new-instance v8, Lcom/google/android/material/color/utilities/d;

    .line 573
    .line 574
    const/16 v4, 0x1c

    .line 575
    .line 576
    invoke-direct {v8, v0, v4}, Lcom/google/android/material/color/utilities/d;-><init>(Lcom/google/android/material/color/utilities/MaterialDynamicColors;I)V

    .line 577
    .line 578
    .line 579
    new-instance v9, Lcom/google/android/material/color/utilities/ContrastCurve;

    .line 580
    .line 581
    const-wide/high16 v14, 0x4026000000000000L    # 11.0

    .line 582
    .line 583
    const-wide/high16 v16, 0x4035000000000000L    # 21.0

    .line 584
    .line 585
    const-wide/high16 v10, 0x4012000000000000L    # 4.5

    .line 586
    .line 587
    const-wide/high16 v12, 0x401c000000000000L    # 7.0

    .line 588
    .line 589
    invoke-direct/range {v9 .. v17}, Lcom/google/android/material/color/utilities/ContrastCurve;-><init>(DDDD)V

    .line 590
    .line 591
    .line 592
    const/4 v10, 0x0

    .line 593
    const-string v4, "on_surface"

    .line 594
    .line 595
    const/4 v7, 0x0

    .line 596
    invoke-direct/range {v3 .. v10}, Lcom/google/android/material/color/utilities/DynamicColor;-><init>(Ljava/lang/String;Ljava/util/function/Function;Ljava/util/function/Function;ZLjava/util/function/Function;Lcom/google/android/material/color/utilities/ContrastCurve;Ljava/util/function/Function;)V

    .line 597
    .line 598
    .line 599
    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 600
    .line 601
    .line 602
    sget v2, Lcom/google/android/material/R$color;->material_personalized_color_surface_variant:I

    .line 603
    .line 604
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 605
    .line 606
    .line 607
    move-result-object v2

    .line 608
    new-instance v3, Lcom/google/android/material/color/utilities/DynamicColor;

    .line 609
    .line 610
    new-instance v5, Lcom/google/android/material/color/utilities/c;

    .line 611
    .line 612
    const/16 v4, 0xf

    .line 613
    .line 614
    invoke-direct {v5, v4}, Lcom/google/android/material/color/utilities/c;-><init>(I)V

    .line 615
    .line 616
    .line 617
    new-instance v6, Lcom/google/android/material/color/utilities/c;

    .line 618
    .line 619
    const/16 v4, 0x10

    .line 620
    .line 621
    invoke-direct {v6, v4}, Lcom/google/android/material/color/utilities/c;-><init>(I)V

    .line 622
    .line 623
    .line 624
    const/4 v9, 0x0

    .line 625
    const-string v4, "surface_variant"

    .line 626
    .line 627
    const/4 v7, 0x1

    .line 628
    const/4 v8, 0x0

    .line 629
    invoke-direct/range {v3 .. v10}, Lcom/google/android/material/color/utilities/DynamicColor;-><init>(Ljava/lang/String;Ljava/util/function/Function;Ljava/util/function/Function;ZLjava/util/function/Function;Lcom/google/android/material/color/utilities/ContrastCurve;Ljava/util/function/Function;)V

    .line 630
    .line 631
    .line 632
    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 633
    .line 634
    .line 635
    sget v2, Lcom/google/android/material/R$color;->material_personalized_color_on_surface_variant:I

    .line 636
    .line 637
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 638
    .line 639
    .line 640
    move-result-object v2

    .line 641
    new-instance v3, Lcom/google/android/material/color/utilities/DynamicColor;

    .line 642
    .line 643
    new-instance v5, Lcom/google/android/material/color/utilities/d;

    .line 644
    .line 645
    const/16 v4, 0x10

    .line 646
    .line 647
    invoke-direct {v5, v4}, Lcom/google/android/material/color/utilities/d;-><init>(I)V

    .line 648
    .line 649
    .line 650
    new-instance v6, Lcom/google/android/material/color/utilities/d;

    .line 651
    .line 652
    const/16 v4, 0x11

    .line 653
    .line 654
    invoke-direct {v6, v4}, Lcom/google/android/material/color/utilities/d;-><init>(I)V

    .line 655
    .line 656
    .line 657
    new-instance v8, Lcom/google/android/material/color/utilities/d;

    .line 658
    .line 659
    const/16 v4, 0x1c

    .line 660
    .line 661
    invoke-direct {v8, v0, v4}, Lcom/google/android/material/color/utilities/d;-><init>(Lcom/google/android/material/color/utilities/MaterialDynamicColors;I)V

    .line 662
    .line 663
    .line 664
    new-instance v9, Lcom/google/android/material/color/utilities/ContrastCurve;

    .line 665
    .line 666
    const-wide/high16 v14, 0x401c000000000000L    # 7.0

    .line 667
    .line 668
    const-wide/high16 v16, 0x4026000000000000L    # 11.0

    .line 669
    .line 670
    const-wide/high16 v10, 0x4008000000000000L    # 3.0

    .line 671
    .line 672
    const-wide/high16 v12, 0x4012000000000000L    # 4.5

    .line 673
    .line 674
    invoke-direct/range {v9 .. v17}, Lcom/google/android/material/color/utilities/ContrastCurve;-><init>(DDDD)V

    .line 675
    .line 676
    .line 677
    const/4 v10, 0x0

    .line 678
    const-string v4, "on_surface_variant"

    .line 679
    .line 680
    const/4 v7, 0x0

    .line 681
    invoke-direct/range {v3 .. v10}, Lcom/google/android/material/color/utilities/DynamicColor;-><init>(Ljava/lang/String;Ljava/util/function/Function;Ljava/util/function/Function;ZLjava/util/function/Function;Lcom/google/android/material/color/utilities/ContrastCurve;Ljava/util/function/Function;)V

    .line 682
    .line 683
    .line 684
    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 685
    .line 686
    .line 687
    sget v2, Lcom/google/android/material/R$color;->material_personalized_color_surface_inverse:I

    .line 688
    .line 689
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 690
    .line 691
    .line 692
    move-result-object v2

    .line 693
    invoke-static {}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->c()Lcom/google/android/material/color/utilities/DynamicColor;

    .line 694
    .line 695
    .line 696
    move-result-object v3

    .line 697
    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 698
    .line 699
    .line 700
    sget v2, Lcom/google/android/material/R$color;->material_personalized_color_on_surface_inverse:I

    .line 701
    .line 702
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 703
    .line 704
    .line 705
    move-result-object v2

    .line 706
    new-instance v3, Lcom/google/android/material/color/utilities/DynamicColor;

    .line 707
    .line 708
    new-instance v5, Lcom/google/android/material/color/utilities/d;

    .line 709
    .line 710
    const/4 v4, 0x2

    .line 711
    invoke-direct {v5, v4}, Lcom/google/android/material/color/utilities/d;-><init>(I)V

    .line 712
    .line 713
    .line 714
    new-instance v6, Lcom/google/android/material/color/utilities/d;

    .line 715
    .line 716
    const/4 v4, 0x3

    .line 717
    invoke-direct {v6, v4}, Lcom/google/android/material/color/utilities/d;-><init>(I)V

    .line 718
    .line 719
    .line 720
    new-instance v8, Lcom/google/android/material/color/utilities/d;

    .line 721
    .line 722
    const/4 v4, 0x4

    .line 723
    invoke-direct {v8, v0, v4}, Lcom/google/android/material/color/utilities/d;-><init>(Lcom/google/android/material/color/utilities/MaterialDynamicColors;I)V

    .line 724
    .line 725
    .line 726
    new-instance v9, Lcom/google/android/material/color/utilities/ContrastCurve;

    .line 727
    .line 728
    const-wide/high16 v14, 0x4026000000000000L    # 11.0

    .line 729
    .line 730
    const-wide/high16 v16, 0x4035000000000000L    # 21.0

    .line 731
    .line 732
    const-wide/high16 v10, 0x4012000000000000L    # 4.5

    .line 733
    .line 734
    const-wide/high16 v12, 0x401c000000000000L    # 7.0

    .line 735
    .line 736
    invoke-direct/range {v9 .. v17}, Lcom/google/android/material/color/utilities/ContrastCurve;-><init>(DDDD)V

    .line 737
    .line 738
    .line 739
    const/4 v10, 0x0

    .line 740
    const-string v4, "inverse_on_surface"

    .line 741
    .line 742
    invoke-direct/range {v3 .. v10}, Lcom/google/android/material/color/utilities/DynamicColor;-><init>(Ljava/lang/String;Ljava/util/function/Function;Ljava/util/function/Function;ZLjava/util/function/Function;Lcom/google/android/material/color/utilities/ContrastCurve;Ljava/util/function/Function;)V

    .line 743
    .line 744
    .line 745
    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 746
    .line 747
    .line 748
    sget v2, Lcom/google/android/material/R$color;->material_personalized_color_surface_bright:I

    .line 749
    .line 750
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 751
    .line 752
    .line 753
    move-result-object v2

    .line 754
    new-instance v3, Lcom/google/android/material/color/utilities/DynamicColor;

    .line 755
    .line 756
    new-instance v5, Lcom/google/android/material/color/utilities/c;

    .line 757
    .line 758
    const/4 v4, 0x0

    .line 759
    invoke-direct {v5, v4}, Lcom/google/android/material/color/utilities/c;-><init>(I)V

    .line 760
    .line 761
    .line 762
    new-instance v6, Lcom/google/android/material/color/utilities/c;

    .line 763
    .line 764
    const/4 v4, 0x1

    .line 765
    invoke-direct {v6, v4}, Lcom/google/android/material/color/utilities/c;-><init>(I)V

    .line 766
    .line 767
    .line 768
    const/4 v9, 0x0

    .line 769
    const-string v4, "surface_bright"

    .line 770
    .line 771
    const/4 v7, 0x1

    .line 772
    const/4 v8, 0x0

    .line 773
    invoke-direct/range {v3 .. v10}, Lcom/google/android/material/color/utilities/DynamicColor;-><init>(Ljava/lang/String;Ljava/util/function/Function;Ljava/util/function/Function;ZLjava/util/function/Function;Lcom/google/android/material/color/utilities/ContrastCurve;Ljava/util/function/Function;)V

    .line 774
    .line 775
    .line 776
    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 777
    .line 778
    .line 779
    sget v2, Lcom/google/android/material/R$color;->material_personalized_color_surface_dim:I

    .line 780
    .line 781
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 782
    .line 783
    .line 784
    move-result-object v2

    .line 785
    new-instance v3, Lcom/google/android/material/color/utilities/DynamicColor;

    .line 786
    .line 787
    new-instance v5, Lcom/google/android/material/color/utilities/a;

    .line 788
    .line 789
    const/4 v4, 0x4

    .line 790
    invoke-direct {v5, v4}, Lcom/google/android/material/color/utilities/a;-><init>(I)V

    .line 791
    .line 792
    .line 793
    new-instance v6, Lcom/google/android/material/color/utilities/a;

    .line 794
    .line 795
    const/4 v4, 0x5

    .line 796
    invoke-direct {v6, v4}, Lcom/google/android/material/color/utilities/a;-><init>(I)V

    .line 797
    .line 798
    .line 799
    const-string v4, "surface_dim"

    .line 800
    .line 801
    invoke-direct/range {v3 .. v10}, Lcom/google/android/material/color/utilities/DynamicColor;-><init>(Ljava/lang/String;Ljava/util/function/Function;Ljava/util/function/Function;ZLjava/util/function/Function;Lcom/google/android/material/color/utilities/ContrastCurve;Ljava/util/function/Function;)V

    .line 802
    .line 803
    .line 804
    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 805
    .line 806
    .line 807
    sget v2, Lcom/google/android/material/R$color;->material_personalized_color_surface_container:I

    .line 808
    .line 809
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 810
    .line 811
    .line 812
    move-result-object v2

    .line 813
    new-instance v3, Lcom/google/android/material/color/utilities/DynamicColor;

    .line 814
    .line 815
    new-instance v5, Lcom/google/android/material/color/utilities/d;

    .line 816
    .line 817
    const/16 v4, 0xe

    .line 818
    .line 819
    invoke-direct {v5, v4}, Lcom/google/android/material/color/utilities/d;-><init>(I)V

    .line 820
    .line 821
    .line 822
    new-instance v6, Lcom/google/android/material/color/utilities/d;

    .line 823
    .line 824
    const/16 v4, 0xf

    .line 825
    .line 826
    invoke-direct {v6, v4}, Lcom/google/android/material/color/utilities/d;-><init>(I)V

    .line 827
    .line 828
    .line 829
    const-string v4, "surface_container"

    .line 830
    .line 831
    invoke-direct/range {v3 .. v10}, Lcom/google/android/material/color/utilities/DynamicColor;-><init>(Ljava/lang/String;Ljava/util/function/Function;Ljava/util/function/Function;ZLjava/util/function/Function;Lcom/google/android/material/color/utilities/ContrastCurve;Ljava/util/function/Function;)V

    .line 832
    .line 833
    .line 834
    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 835
    .line 836
    .line 837
    sget v2, Lcom/google/android/material/R$color;->material_personalized_color_surface_container_low:I

    .line 838
    .line 839
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 840
    .line 841
    .line 842
    move-result-object v2

    .line 843
    new-instance v3, Lcom/google/android/material/color/utilities/DynamicColor;

    .line 844
    .line 845
    new-instance v5, Lcom/google/android/material/color/utilities/a;

    .line 846
    .line 847
    const/16 v4, 0xa

    .line 848
    .line 849
    invoke-direct {v5, v4}, Lcom/google/android/material/color/utilities/a;-><init>(I)V

    .line 850
    .line 851
    .line 852
    new-instance v6, Lcom/google/android/material/color/utilities/a;

    .line 853
    .line 854
    const/16 v4, 0xb

    .line 855
    .line 856
    invoke-direct {v6, v4}, Lcom/google/android/material/color/utilities/a;-><init>(I)V

    .line 857
    .line 858
    .line 859
    const-string v4, "surface_container_low"

    .line 860
    .line 861
    invoke-direct/range {v3 .. v10}, Lcom/google/android/material/color/utilities/DynamicColor;-><init>(Ljava/lang/String;Ljava/util/function/Function;Ljava/util/function/Function;ZLjava/util/function/Function;Lcom/google/android/material/color/utilities/ContrastCurve;Ljava/util/function/Function;)V

    .line 862
    .line 863
    .line 864
    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 865
    .line 866
    .line 867
    sget v2, Lcom/google/android/material/R$color;->material_personalized_color_surface_container_high:I

    .line 868
    .line 869
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 870
    .line 871
    .line 872
    move-result-object v2

    .line 873
    new-instance v3, Lcom/google/android/material/color/utilities/DynamicColor;

    .line 874
    .line 875
    new-instance v5, Lcom/google/android/material/color/utilities/a;

    .line 876
    .line 877
    const/16 v4, 0x16

    .line 878
    .line 879
    invoke-direct {v5, v4}, Lcom/google/android/material/color/utilities/a;-><init>(I)V

    .line 880
    .line 881
    .line 882
    new-instance v6, Lcom/google/android/material/color/utilities/a;

    .line 883
    .line 884
    const/16 v4, 0x18

    .line 885
    .line 886
    invoke-direct {v6, v4}, Lcom/google/android/material/color/utilities/a;-><init>(I)V

    .line 887
    .line 888
    .line 889
    const-string v4, "surface_container_high"

    .line 890
    .line 891
    invoke-direct/range {v3 .. v10}, Lcom/google/android/material/color/utilities/DynamicColor;-><init>(Ljava/lang/String;Ljava/util/function/Function;Ljava/util/function/Function;ZLjava/util/function/Function;Lcom/google/android/material/color/utilities/ContrastCurve;Ljava/util/function/Function;)V

    .line 892
    .line 893
    .line 894
    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 895
    .line 896
    .line 897
    sget v2, Lcom/google/android/material/R$color;->material_personalized_color_surface_container_lowest:I

    .line 898
    .line 899
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 900
    .line 901
    .line 902
    move-result-object v2

    .line 903
    new-instance v3, Lcom/google/android/material/color/utilities/DynamicColor;

    .line 904
    .line 905
    new-instance v5, Lcom/google/android/material/color/utilities/c;

    .line 906
    .line 907
    const/16 v4, 0x1c

    .line 908
    .line 909
    invoke-direct {v5, v4}, Lcom/google/android/material/color/utilities/c;-><init>(I)V

    .line 910
    .line 911
    .line 912
    new-instance v6, Lcom/google/android/material/color/utilities/c;

    .line 913
    .line 914
    const/16 v4, 0x1d

    .line 915
    .line 916
    invoke-direct {v6, v4}, Lcom/google/android/material/color/utilities/c;-><init>(I)V

    .line 917
    .line 918
    .line 919
    const-string v4, "surface_container_lowest"

    .line 920
    .line 921
    invoke-direct/range {v3 .. v10}, Lcom/google/android/material/color/utilities/DynamicColor;-><init>(Ljava/lang/String;Ljava/util/function/Function;Ljava/util/function/Function;ZLjava/util/function/Function;Lcom/google/android/material/color/utilities/ContrastCurve;Ljava/util/function/Function;)V

    .line 922
    .line 923
    .line 924
    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 925
    .line 926
    .line 927
    sget v2, Lcom/google/android/material/R$color;->material_personalized_color_surface_container_highest:I

    .line 928
    .line 929
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 930
    .line 931
    .line 932
    move-result-object v2

    .line 933
    new-instance v3, Lcom/google/android/material/color/utilities/DynamicColor;

    .line 934
    .line 935
    new-instance v5, Lcom/google/android/material/color/utilities/c;

    .line 936
    .line 937
    const/16 v4, 0x13

    .line 938
    .line 939
    invoke-direct {v5, v4}, Lcom/google/android/material/color/utilities/c;-><init>(I)V

    .line 940
    .line 941
    .line 942
    new-instance v6, Lcom/google/android/material/color/utilities/c;

    .line 943
    .line 944
    const/16 v4, 0x14

    .line 945
    .line 946
    invoke-direct {v6, v4}, Lcom/google/android/material/color/utilities/c;-><init>(I)V

    .line 947
    .line 948
    .line 949
    const-string v4, "surface_container_highest"

    .line 950
    .line 951
    invoke-direct/range {v3 .. v10}, Lcom/google/android/material/color/utilities/DynamicColor;-><init>(Ljava/lang/String;Ljava/util/function/Function;Ljava/util/function/Function;ZLjava/util/function/Function;Lcom/google/android/material/color/utilities/ContrastCurve;Ljava/util/function/Function;)V

    .line 952
    .line 953
    .line 954
    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 955
    .line 956
    .line 957
    sget v2, Lcom/google/android/material/R$color;->material_personalized_color_outline:I

    .line 958
    .line 959
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 960
    .line 961
    .line 962
    move-result-object v2

    .line 963
    new-instance v3, Lcom/google/android/material/color/utilities/DynamicColor;

    .line 964
    .line 965
    new-instance v5, Lcom/google/android/material/color/utilities/d;

    .line 966
    .line 967
    const/4 v4, 0x0

    .line 968
    invoke-direct {v5, v4}, Lcom/google/android/material/color/utilities/d;-><init>(I)V

    .line 969
    .line 970
    .line 971
    new-instance v6, Lcom/google/android/material/color/utilities/d;

    .line 972
    .line 973
    const/4 v4, 0x1

    .line 974
    invoke-direct {v6, v4}, Lcom/google/android/material/color/utilities/d;-><init>(I)V

    .line 975
    .line 976
    .line 977
    new-instance v8, Lcom/google/android/material/color/utilities/d;

    .line 978
    .line 979
    const/16 v4, 0x1c

    .line 980
    .line 981
    invoke-direct {v8, v0, v4}, Lcom/google/android/material/color/utilities/d;-><init>(Lcom/google/android/material/color/utilities/MaterialDynamicColors;I)V

    .line 982
    .line 983
    .line 984
    new-instance v9, Lcom/google/android/material/color/utilities/ContrastCurve;

    .line 985
    .line 986
    const-wide/high16 v14, 0x4012000000000000L    # 4.5

    .line 987
    .line 988
    const-wide/high16 v16, 0x401c000000000000L    # 7.0

    .line 989
    .line 990
    const-wide/high16 v10, 0x3ff8000000000000L    # 1.5

    .line 991
    .line 992
    const-wide/high16 v12, 0x4008000000000000L    # 3.0

    .line 993
    .line 994
    invoke-direct/range {v9 .. v17}, Lcom/google/android/material/color/utilities/ContrastCurve;-><init>(DDDD)V

    .line 995
    .line 996
    .line 997
    const/4 v10, 0x0

    .line 998
    const-string v4, "outline"

    .line 999
    .line 1000
    const/4 v7, 0x0

    .line 1001
    invoke-direct/range {v3 .. v10}, Lcom/google/android/material/color/utilities/DynamicColor;-><init>(Ljava/lang/String;Ljava/util/function/Function;Ljava/util/function/Function;ZLjava/util/function/Function;Lcom/google/android/material/color/utilities/ContrastCurve;Ljava/util/function/Function;)V

    .line 1002
    .line 1003
    .line 1004
    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1005
    .line 1006
    .line 1007
    sget v2, Lcom/google/android/material/R$color;->material_personalized_color_outline_variant:I

    .line 1008
    .line 1009
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1010
    .line 1011
    .line 1012
    move-result-object v2

    .line 1013
    new-instance v3, Lcom/google/android/material/color/utilities/DynamicColor;

    .line 1014
    .line 1015
    new-instance v5, Lcom/google/android/material/color/utilities/a;

    .line 1016
    .line 1017
    const/16 v4, 0x1c

    .line 1018
    .line 1019
    invoke-direct {v5, v4}, Lcom/google/android/material/color/utilities/a;-><init>(I)V

    .line 1020
    .line 1021
    .line 1022
    new-instance v6, Lcom/google/android/material/color/utilities/a;

    .line 1023
    .line 1024
    const/16 v4, 0x1d

    .line 1025
    .line 1026
    invoke-direct {v6, v4}, Lcom/google/android/material/color/utilities/a;-><init>(I)V

    .line 1027
    .line 1028
    .line 1029
    new-instance v8, Lcom/google/android/material/color/utilities/d;

    .line 1030
    .line 1031
    const/16 v4, 0x1c

    .line 1032
    .line 1033
    invoke-direct {v8, v0, v4}, Lcom/google/android/material/color/utilities/d;-><init>(Lcom/google/android/material/color/utilities/MaterialDynamicColors;I)V

    .line 1034
    .line 1035
    .line 1036
    new-instance v9, Lcom/google/android/material/color/utilities/ContrastCurve;

    .line 1037
    .line 1038
    const-wide/high16 v14, 0x4008000000000000L    # 3.0

    .line 1039
    .line 1040
    const-wide/high16 v16, 0x4012000000000000L    # 4.5

    .line 1041
    .line 1042
    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    .line 1043
    .line 1044
    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    .line 1045
    .line 1046
    invoke-direct/range {v9 .. v17}, Lcom/google/android/material/color/utilities/ContrastCurve;-><init>(DDDD)V

    .line 1047
    .line 1048
    .line 1049
    const/4 v10, 0x0

    .line 1050
    const-string v4, "outline_variant"

    .line 1051
    .line 1052
    invoke-direct/range {v3 .. v10}, Lcom/google/android/material/color/utilities/DynamicColor;-><init>(Ljava/lang/String;Ljava/util/function/Function;Ljava/util/function/Function;ZLjava/util/function/Function;Lcom/google/android/material/color/utilities/ContrastCurve;Ljava/util/function/Function;)V

    .line 1053
    .line 1054
    .line 1055
    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1056
    .line 1057
    .line 1058
    sget v2, Lcom/google/android/material/R$color;->material_personalized_color_error:I

    .line 1059
    .line 1060
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1061
    .line 1062
    .line 1063
    move-result-object v2

    .line 1064
    invoke-virtual {v0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->a()Lcom/google/android/material/color/utilities/DynamicColor;

    .line 1065
    .line 1066
    .line 1067
    move-result-object v3

    .line 1068
    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1069
    .line 1070
    .line 1071
    sget v2, Lcom/google/android/material/R$color;->material_personalized_color_on_error:I

    .line 1072
    .line 1073
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1074
    .line 1075
    .line 1076
    move-result-object v2

    .line 1077
    new-instance v3, Lcom/google/android/material/color/utilities/DynamicColor;

    .line 1078
    .line 1079
    new-instance v5, Lcom/google/android/material/color/utilities/c;

    .line 1080
    .line 1081
    const/16 v4, 0x8

    .line 1082
    .line 1083
    invoke-direct {v5, v4}, Lcom/google/android/material/color/utilities/c;-><init>(I)V

    .line 1084
    .line 1085
    .line 1086
    new-instance v6, Lcom/google/android/material/color/utilities/c;

    .line 1087
    .line 1088
    const/16 v4, 0x9

    .line 1089
    .line 1090
    invoke-direct {v6, v4}, Lcom/google/android/material/color/utilities/c;-><init>(I)V

    .line 1091
    .line 1092
    .line 1093
    new-instance v8, Lcom/google/android/material/color/utilities/b;

    .line 1094
    .line 1095
    const/4 v4, 0x5

    .line 1096
    invoke-direct {v8, v0, v4}, Lcom/google/android/material/color/utilities/b;-><init>(Lcom/google/android/material/color/utilities/MaterialDynamicColors;I)V

    .line 1097
    .line 1098
    .line 1099
    new-instance v9, Lcom/google/android/material/color/utilities/ContrastCurve;

    .line 1100
    .line 1101
    const-wide/high16 v14, 0x4026000000000000L    # 11.0

    .line 1102
    .line 1103
    const-wide/high16 v16, 0x4035000000000000L    # 21.0

    .line 1104
    .line 1105
    const-wide/high16 v10, 0x4012000000000000L    # 4.5

    .line 1106
    .line 1107
    const-wide/high16 v12, 0x401c000000000000L    # 7.0

    .line 1108
    .line 1109
    invoke-direct/range {v9 .. v17}, Lcom/google/android/material/color/utilities/ContrastCurve;-><init>(DDDD)V

    .line 1110
    .line 1111
    .line 1112
    const/4 v10, 0x0

    .line 1113
    const-string v4, "on_error"

    .line 1114
    .line 1115
    invoke-direct/range {v3 .. v10}, Lcom/google/android/material/color/utilities/DynamicColor;-><init>(Ljava/lang/String;Ljava/util/function/Function;Ljava/util/function/Function;ZLjava/util/function/Function;Lcom/google/android/material/color/utilities/ContrastCurve;Ljava/util/function/Function;)V

    .line 1116
    .line 1117
    .line 1118
    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1119
    .line 1120
    .line 1121
    sget v2, Lcom/google/android/material/R$color;->material_personalized_color_error_container:I

    .line 1122
    .line 1123
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1124
    .line 1125
    .line 1126
    move-result-object v2

    .line 1127
    invoke-virtual {v0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->b()Lcom/google/android/material/color/utilities/DynamicColor;

    .line 1128
    .line 1129
    .line 1130
    move-result-object v3

    .line 1131
    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1132
    .line 1133
    .line 1134
    sget v2, Lcom/google/android/material/R$color;->material_personalized_color_on_error_container:I

    .line 1135
    .line 1136
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1137
    .line 1138
    .line 1139
    move-result-object v2

    .line 1140
    new-instance v3, Lcom/google/android/material/color/utilities/DynamicColor;

    .line 1141
    .line 1142
    new-instance v5, Lcom/google/android/material/color/utilities/d;

    .line 1143
    .line 1144
    const/16 v4, 0x15

    .line 1145
    .line 1146
    invoke-direct {v5, v4}, Lcom/google/android/material/color/utilities/d;-><init>(I)V

    .line 1147
    .line 1148
    .line 1149
    new-instance v6, Lcom/google/android/material/color/utilities/d;

    .line 1150
    .line 1151
    const/16 v4, 0x16

    .line 1152
    .line 1153
    invoke-direct {v6, v4}, Lcom/google/android/material/color/utilities/d;-><init>(I)V

    .line 1154
    .line 1155
    .line 1156
    new-instance v8, Lcom/google/android/material/color/utilities/b;

    .line 1157
    .line 1158
    const/16 v4, 0xe

    .line 1159
    .line 1160
    invoke-direct {v8, v0, v4}, Lcom/google/android/material/color/utilities/b;-><init>(Lcom/google/android/material/color/utilities/MaterialDynamicColors;I)V

    .line 1161
    .line 1162
    .line 1163
    new-instance v9, Lcom/google/android/material/color/utilities/ContrastCurve;

    .line 1164
    .line 1165
    const-wide/high16 v14, 0x401c000000000000L    # 7.0

    .line 1166
    .line 1167
    const-wide/high16 v16, 0x4026000000000000L    # 11.0

    .line 1168
    .line 1169
    const-wide/high16 v10, 0x4008000000000000L    # 3.0

    .line 1170
    .line 1171
    const-wide/high16 v12, 0x4012000000000000L    # 4.5

    .line 1172
    .line 1173
    invoke-direct/range {v9 .. v17}, Lcom/google/android/material/color/utilities/ContrastCurve;-><init>(DDDD)V

    .line 1174
    .line 1175
    .line 1176
    const/4 v10, 0x0

    .line 1177
    const-string v4, "on_error_container"

    .line 1178
    .line 1179
    invoke-direct/range {v3 .. v10}, Lcom/google/android/material/color/utilities/DynamicColor;-><init>(Ljava/lang/String;Ljava/util/function/Function;Ljava/util/function/Function;ZLjava/util/function/Function;Lcom/google/android/material/color/utilities/ContrastCurve;Ljava/util/function/Function;)V

    .line 1180
    .line 1181
    .line 1182
    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1183
    .line 1184
    .line 1185
    sget v0, Lcom/google/android/material/R$color;->material_personalized_color_control_activated:I

    .line 1186
    .line 1187
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1188
    .line 1189
    .line 1190
    move-result-object v0

    .line 1191
    new-instance v2, Lcom/google/android/material/color/utilities/a;

    .line 1192
    .line 1193
    const/16 v3, 0x8

    .line 1194
    .line 1195
    invoke-direct {v2, v3}, Lcom/google/android/material/color/utilities/a;-><init>(I)V

    .line 1196
    .line 1197
    .line 1198
    new-instance v3, Lcom/google/android/material/color/utilities/a;

    .line 1199
    .line 1200
    const/16 v4, 0x9

    .line 1201
    .line 1202
    invoke-direct {v3, v4}, Lcom/google/android/material/color/utilities/a;-><init>(I)V

    .line 1203
    .line 1204
    .line 1205
    const-string v4, "control_activated"

    .line 1206
    .line 1207
    invoke-static {v4, v2, v3}, Lcom/google/android/material/color/utilities/DynamicColor;->a(Ljava/lang/String;Ljava/util/function/Function;Ljava/util/function/Function;)Lcom/google/android/material/color/utilities/DynamicColor;

    .line 1208
    .line 1209
    .line 1210
    move-result-object v2

    .line 1211
    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1212
    .line 1213
    .line 1214
    sget v0, Lcom/google/android/material/R$color;->material_personalized_color_control_normal:I

    .line 1215
    .line 1216
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1217
    .line 1218
    .line 1219
    move-result-object v0

    .line 1220
    new-instance v2, Lcom/google/android/material/color/utilities/a;

    .line 1221
    .line 1222
    const/4 v3, 0x6

    .line 1223
    invoke-direct {v2, v3}, Lcom/google/android/material/color/utilities/a;-><init>(I)V

    .line 1224
    .line 1225
    .line 1226
    new-instance v3, Lcom/google/android/material/color/utilities/a;

    .line 1227
    .line 1228
    const/4 v4, 0x7

    .line 1229
    invoke-direct {v3, v4}, Lcom/google/android/material/color/utilities/a;-><init>(I)V

    .line 1230
    .line 1231
    .line 1232
    const-string v4, "control_normal"

    .line 1233
    .line 1234
    invoke-static {v4, v2, v3}, Lcom/google/android/material/color/utilities/DynamicColor;->a(Ljava/lang/String;Ljava/util/function/Function;Ljava/util/function/Function;)Lcom/google/android/material/color/utilities/DynamicColor;

    .line 1235
    .line 1236
    .line 1237
    move-result-object v2

    .line 1238
    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1239
    .line 1240
    .line 1241
    sget v0, Lcom/google/android/material/R$color;->material_personalized_color_control_highlight:I

    .line 1242
    .line 1243
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1244
    .line 1245
    .line 1246
    move-result-object v0

    .line 1247
    new-instance v2, Lcom/google/android/material/color/utilities/DynamicColor;

    .line 1248
    .line 1249
    new-instance v3, Lcom/google/android/material/color/utilities/a;

    .line 1250
    .line 1251
    const/16 v4, 0xf

    .line 1252
    .line 1253
    invoke-direct {v3, v4}, Lcom/google/android/material/color/utilities/a;-><init>(I)V

    .line 1254
    .line 1255
    .line 1256
    new-instance v4, Lcom/google/android/material/color/utilities/a;

    .line 1257
    .line 1258
    const/16 v5, 0x10

    .line 1259
    .line 1260
    invoke-direct {v4, v5}, Lcom/google/android/material/color/utilities/a;-><init>(I)V

    .line 1261
    .line 1262
    .line 1263
    new-instance v5, Lcom/google/android/material/color/utilities/a;

    .line 1264
    .line 1265
    const/16 v6, 0x11

    .line 1266
    .line 1267
    invoke-direct {v5, v6}, Lcom/google/android/material/color/utilities/a;-><init>(I)V

    .line 1268
    .line 1269
    .line 1270
    invoke-direct {v2, v3, v4, v5}, Lcom/google/android/material/color/utilities/DynamicColor;-><init>(Lcom/google/android/material/color/utilities/a;Lcom/google/android/material/color/utilities/a;Lcom/google/android/material/color/utilities/a;)V

    .line 1271
    .line 1272
    .line 1273
    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1274
    .line 1275
    .line 1276
    sget v0, Lcom/google/android/material/R$color;->material_personalized_color_text_primary_inverse:I

    .line 1277
    .line 1278
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1279
    .line 1280
    .line 1281
    move-result-object v0

    .line 1282
    new-instance v2, Lcom/google/android/material/color/utilities/d;

    .line 1283
    .line 1284
    const/16 v3, 0xc

    .line 1285
    .line 1286
    invoke-direct {v2, v3}, Lcom/google/android/material/color/utilities/d;-><init>(I)V

    .line 1287
    .line 1288
    .line 1289
    new-instance v3, Lcom/google/android/material/color/utilities/d;

    .line 1290
    .line 1291
    const/16 v4, 0xd

    .line 1292
    .line 1293
    invoke-direct {v3, v4}, Lcom/google/android/material/color/utilities/d;-><init>(I)V

    .line 1294
    .line 1295
    .line 1296
    const-string v4, "text_primary_inverse"

    .line 1297
    .line 1298
    invoke-static {v4, v2, v3}, Lcom/google/android/material/color/utilities/DynamicColor;->a(Ljava/lang/String;Ljava/util/function/Function;Ljava/util/function/Function;)Lcom/google/android/material/color/utilities/DynamicColor;

    .line 1299
    .line 1300
    .line 1301
    move-result-object v2

    .line 1302
    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1303
    .line 1304
    .line 1305
    sget v0, Lcom/google/android/material/R$color;->material_personalized_color_text_secondary_and_tertiary_inverse:I

    .line 1306
    .line 1307
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1308
    .line 1309
    .line 1310
    move-result-object v0

    .line 1311
    new-instance v2, Lcom/google/android/material/color/utilities/d;

    .line 1312
    .line 1313
    const/16 v3, 0x17

    .line 1314
    .line 1315
    invoke-direct {v2, v3}, Lcom/google/android/material/color/utilities/d;-><init>(I)V

    .line 1316
    .line 1317
    .line 1318
    new-instance v3, Lcom/google/android/material/color/utilities/d;

    .line 1319
    .line 1320
    const/16 v4, 0x18

    .line 1321
    .line 1322
    invoke-direct {v3, v4}, Lcom/google/android/material/color/utilities/d;-><init>(I)V

    .line 1323
    .line 1324
    .line 1325
    const-string v4, "text_secondary_and_tertiary_inverse"

    .line 1326
    .line 1327
    invoke-static {v4, v2, v3}, Lcom/google/android/material/color/utilities/DynamicColor;->a(Ljava/lang/String;Ljava/util/function/Function;Ljava/util/function/Function;)Lcom/google/android/material/color/utilities/DynamicColor;

    .line 1328
    .line 1329
    .line 1330
    move-result-object v2

    .line 1331
    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1332
    .line 1333
    .line 1334
    sget v0, Lcom/google/android/material/R$color;->material_personalized_color_text_secondary_and_tertiary_inverse_disabled:I

    .line 1335
    .line 1336
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1337
    .line 1338
    .line 1339
    move-result-object v0

    .line 1340
    new-instance v2, Lcom/google/android/material/color/utilities/a;

    .line 1341
    .line 1342
    const/16 v3, 0x17

    .line 1343
    .line 1344
    invoke-direct {v2, v3}, Lcom/google/android/material/color/utilities/a;-><init>(I)V

    .line 1345
    .line 1346
    .line 1347
    new-instance v3, Lcom/google/android/material/color/utilities/c;

    .line 1348
    .line 1349
    const/4 v4, 0x4

    .line 1350
    invoke-direct {v3, v4}, Lcom/google/android/material/color/utilities/c;-><init>(I)V

    .line 1351
    .line 1352
    .line 1353
    const-string v4, "text_secondary_and_tertiary_inverse_disabled"

    .line 1354
    .line 1355
    invoke-static {v4, v2, v3}, Lcom/google/android/material/color/utilities/DynamicColor;->a(Ljava/lang/String;Ljava/util/function/Function;Ljava/util/function/Function;)Lcom/google/android/material/color/utilities/DynamicColor;

    .line 1356
    .line 1357
    .line 1358
    move-result-object v2

    .line 1359
    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1360
    .line 1361
    .line 1362
    sget v0, Lcom/google/android/material/R$color;->material_personalized_color_text_primary_inverse_disable_only:I

    .line 1363
    .line 1364
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1365
    .line 1366
    .line 1367
    move-result-object v0

    .line 1368
    new-instance v2, Lcom/google/android/material/color/utilities/c;

    .line 1369
    .line 1370
    const/16 v3, 0xa

    .line 1371
    .line 1372
    invoke-direct {v2, v3}, Lcom/google/android/material/color/utilities/c;-><init>(I)V

    .line 1373
    .line 1374
    .line 1375
    new-instance v3, Lcom/google/android/material/color/utilities/c;

    .line 1376
    .line 1377
    const/16 v4, 0xb

    .line 1378
    .line 1379
    invoke-direct {v3, v4}, Lcom/google/android/material/color/utilities/c;-><init>(I)V

    .line 1380
    .line 1381
    .line 1382
    const-string v4, "text_primary_inverse_disable_only"

    .line 1383
    .line 1384
    invoke-static {v4, v2, v3}, Lcom/google/android/material/color/utilities/DynamicColor;->a(Ljava/lang/String;Ljava/util/function/Function;Ljava/util/function/Function;)Lcom/google/android/material/color/utilities/DynamicColor;

    .line 1385
    .line 1386
    .line 1387
    move-result-object v2

    .line 1388
    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1389
    .line 1390
    .line 1391
    sget v0, Lcom/google/android/material/R$color;->material_personalized_color_text_hint_foreground_inverse:I

    .line 1392
    .line 1393
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1394
    .line 1395
    .line 1396
    move-result-object v0

    .line 1397
    new-instance v2, Lcom/google/android/material/color/utilities/c;

    .line 1398
    .line 1399
    const/16 v3, 0x11

    .line 1400
    .line 1401
    invoke-direct {v2, v3}, Lcom/google/android/material/color/utilities/c;-><init>(I)V

    .line 1402
    .line 1403
    .line 1404
    new-instance v3, Lcom/google/android/material/color/utilities/c;

    .line 1405
    .line 1406
    const/16 v4, 0x12

    .line 1407
    .line 1408
    invoke-direct {v3, v4}, Lcom/google/android/material/color/utilities/c;-><init>(I)V

    .line 1409
    .line 1410
    .line 1411
    const-string v4, "text_hint_inverse"

    .line 1412
    .line 1413
    invoke-static {v4, v2, v3}, Lcom/google/android/material/color/utilities/DynamicColor;->a(Ljava/lang/String;Ljava/util/function/Function;Ljava/util/function/Function;)Lcom/google/android/material/color/utilities/DynamicColor;

    .line 1414
    .line 1415
    .line 1416
    move-result-object v2

    .line 1417
    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1418
    .line 1419
    .line 1420
    invoke-static {v1}, Lj$/util/DesugarCollections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    .line 1421
    .line 1422
    .line 1423
    move-result-object v0

    .line 1424
    sput-object v0, Lcom/google/android/material/color/MaterialColorUtilitiesHelper;->a:Ljava/util/Map;

    .line 1425
    .line 1426
    return-void
.end method
