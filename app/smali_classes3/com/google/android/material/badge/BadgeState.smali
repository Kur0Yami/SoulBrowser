.class public final Lcom/google/android/material/badge/BadgeState;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/badge/BadgeState$State;
    }
.end annotation


# instance fields
.field public final a:Lcom/google/android/material/badge/BadgeState$State;

.field public final b:Lcom/google/android/material/badge/BadgeState$State;

.field public final c:F

.field public final d:F

.field public final e:F

.field public final f:F

.field public final g:F

.field public final h:F

.field public final i:I

.field public final j:I

.field public final k:I

.field public l:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/material/badge/BadgeState$State;)V
    .locals 9

    .line 1
    sget v3, Lcom/google/android/material/badge/BadgeDrawable;->s:I

    .line 2
    .line 3
    sget v0, Lcom/google/android/material/badge/BadgeDrawable;->r:I

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    new-instance v1, Lcom/google/android/material/badge/BadgeState$State;

    .line 9
    .line 10
    invoke-direct {v1}, Lcom/google/android/material/badge/BadgeState$State;-><init>()V

    .line 11
    .line 12
    .line 13
    iput-object v1, p0, Lcom/google/android/material/badge/BadgeState;->b:Lcom/google/android/material/badge/BadgeState$State;

    .line 14
    .line 15
    if-nez p2, :cond_0

    .line 16
    .line 17
    new-instance p2, Lcom/google/android/material/badge/BadgeState$State;

    .line 18
    .line 19
    invoke-direct {p2}, Lcom/google/android/material/badge/BadgeState$State;-><init>()V

    .line 20
    .line 21
    .line 22
    :cond_0
    iget v1, p2, Lcom/google/android/material/badge/BadgeState$State;->c:I

    .line 23
    .line 24
    const/4 v6, 0x1

    .line 25
    const/4 v7, 0x0

    .line 26
    if-eqz v1, :cond_5

    .line 27
    .line 28
    const-string v2, "badge"

    .line 29
    .line 30
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 31
    .line 32
    .line 33
    move-result-object v4

    .line 34
    invoke-virtual {v4, v1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    .line 35
    .line 36
    .line 37
    move-result-object v4

    .line 38
    :cond_1
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 39
    .line 40
    .line 41
    move-result v5

    .line 42
    const/4 v8, 0x2

    .line 43
    if-eq v5, v8, :cond_2

    .line 44
    .line 45
    if-ne v5, v6, :cond_1

    .line 46
    .line 47
    :cond_2
    if-ne v5, v8, :cond_4

    .line 48
    .line 49
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v5

    .line 53
    invoke-static {v5, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 54
    .line 55
    .line 56
    move-result v5

    .line 57
    if-eqz v5, :cond_3

    .line 58
    .line 59
    invoke-static {v4}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    .line 60
    .line 61
    .line 62
    move-result-object v1
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    invoke-interface {v1}, Landroid/util/AttributeSet;->getStyleAttribute()I

    .line 64
    .line 65
    .line 66
    move-result v2

    .line 67
    goto :goto_2

    .line 68
    :catch_0
    move-exception v0

    .line 69
    :goto_0
    move-object p1, v0

    .line 70
    goto :goto_1

    .line 71
    :catch_1
    move-exception v0

    .line 72
    goto :goto_0

    .line 73
    :cond_3
    :try_start_1
    new-instance p1, Lorg/xmlpull/v1/XmlPullParserException;

    .line 74
    .line 75
    new-instance p2, Ljava/lang/StringBuilder;

    .line 76
    .line 77
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 78
    .line 79
    .line 80
    const-string v0, "Must have a <"

    .line 81
    .line 82
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    const-string v0, "> start tag"

    .line 89
    .line 90
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object p2

    .line 97
    invoke-direct {p1, p2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    throw p1

    .line 101
    :cond_4
    new-instance p1, Lorg/xmlpull/v1/XmlPullParserException;

    .line 102
    .line 103
    const-string p2, "No start tag found"

    .line 104
    .line 105
    invoke-direct {p1, p2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    throw p1
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 109
    :goto_1
    new-instance p2, Landroid/content/res/Resources$NotFoundException;

    .line 110
    .line 111
    new-instance v0, Ljava/lang/StringBuilder;

    .line 112
    .line 113
    const-string v2, "Can\'t load badge resource ID #0x"

    .line 114
    .line 115
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v1

    .line 122
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v0

    .line 129
    invoke-direct {p2, v0}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    invoke-virtual {p2, p1}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 133
    .line 134
    .line 135
    throw p2

    .line 136
    :cond_5
    const/4 v1, 0x0

    .line 137
    move v2, v7

    .line 138
    :goto_2
    if-nez v2, :cond_6

    .line 139
    .line 140
    move v4, v0

    .line 141
    goto :goto_3

    .line 142
    :cond_6
    move v4, v2

    .line 143
    :goto_3
    sget-object v2, Lcom/google/android/material/R$styleable;->Badge:[I

    .line 144
    .line 145
    new-array v5, v7, [I

    .line 146
    .line 147
    move-object v0, p1

    .line 148
    invoke-static/range {v0 .. v5}, Lcom/google/android/material/internal/ThemeEnforcement;->d(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)Landroid/content/res/TypedArray;

    .line 149
    .line 150
    .line 151
    move-result-object p1

    .line 152
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 153
    .line 154
    .line 155
    move-result-object v1

    .line 156
    sget v2, Lcom/google/android/material/R$styleable;->Badge_badgeRadius:I

    .line 157
    .line 158
    const/4 v3, -0x1

    .line 159
    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 160
    .line 161
    .line 162
    move-result v2

    .line 163
    int-to-float v2, v2

    .line 164
    iput v2, p0, Lcom/google/android/material/badge/BadgeState;->c:F

    .line 165
    .line 166
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 167
    .line 168
    .line 169
    move-result-object v2

    .line 170
    sget v4, Lcom/google/android/material/R$dimen;->mtrl_badge_horizontal_edge_offset:I

    .line 171
    .line 172
    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 173
    .line 174
    .line 175
    move-result v2

    .line 176
    iput v2, p0, Lcom/google/android/material/badge/BadgeState;->i:I

    .line 177
    .line 178
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 179
    .line 180
    .line 181
    move-result-object v2

    .line 182
    sget v4, Lcom/google/android/material/R$dimen;->mtrl_badge_text_horizontal_edge_offset:I

    .line 183
    .line 184
    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 185
    .line 186
    .line 187
    move-result v2

    .line 188
    iput v2, p0, Lcom/google/android/material/badge/BadgeState;->j:I

    .line 189
    .line 190
    sget v2, Lcom/google/android/material/R$styleable;->Badge_badgeWithTextRadius:I

    .line 191
    .line 192
    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 193
    .line 194
    .line 195
    move-result v2

    .line 196
    int-to-float v2, v2

    .line 197
    iput v2, p0, Lcom/google/android/material/badge/BadgeState;->d:F

    .line 198
    .line 199
    sget v2, Lcom/google/android/material/R$styleable;->Badge_badgeWidth:I

    .line 200
    .line 201
    sget v4, Lcom/google/android/material/R$dimen;->m3_badge_size:I

    .line 202
    .line 203
    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimension(I)F

    .line 204
    .line 205
    .line 206
    move-result v4

    .line 207
    invoke-virtual {p1, v2, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 208
    .line 209
    .line 210
    move-result v2

    .line 211
    iput v2, p0, Lcom/google/android/material/badge/BadgeState;->e:F

    .line 212
    .line 213
    sget v2, Lcom/google/android/material/R$styleable;->Badge_badgeWithTextWidth:I

    .line 214
    .line 215
    sget v4, Lcom/google/android/material/R$dimen;->m3_badge_with_text_size:I

    .line 216
    .line 217
    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimension(I)F

    .line 218
    .line 219
    .line 220
    move-result v4

    .line 221
    invoke-virtual {p1, v2, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 222
    .line 223
    .line 224
    move-result v2

    .line 225
    iput v2, p0, Lcom/google/android/material/badge/BadgeState;->g:F

    .line 226
    .line 227
    sget v2, Lcom/google/android/material/R$styleable;->Badge_badgeHeight:I

    .line 228
    .line 229
    sget v4, Lcom/google/android/material/R$dimen;->m3_badge_size:I

    .line 230
    .line 231
    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimension(I)F

    .line 232
    .line 233
    .line 234
    move-result v4

    .line 235
    invoke-virtual {p1, v2, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 236
    .line 237
    .line 238
    move-result v2

    .line 239
    iput v2, p0, Lcom/google/android/material/badge/BadgeState;->f:F

    .line 240
    .line 241
    sget v2, Lcom/google/android/material/R$styleable;->Badge_badgeWithTextHeight:I

    .line 242
    .line 243
    sget v4, Lcom/google/android/material/R$dimen;->m3_badge_with_text_size:I

    .line 244
    .line 245
    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimension(I)F

    .line 246
    .line 247
    .line 248
    move-result v4

    .line 249
    invoke-virtual {p1, v2, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 250
    .line 251
    .line 252
    move-result v2

    .line 253
    iput v2, p0, Lcom/google/android/material/badge/BadgeState;->h:F

    .line 254
    .line 255
    sget v2, Lcom/google/android/material/R$styleable;->Badge_offsetAlignmentMode:I

    .line 256
    .line 257
    invoke-virtual {p1, v2, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 258
    .line 259
    .line 260
    move-result v2

    .line 261
    iput v2, p0, Lcom/google/android/material/badge/BadgeState;->k:I

    .line 262
    .line 263
    sget v2, Lcom/google/android/material/R$styleable;->Badge_badgeFixedEdge:I

    .line 264
    .line 265
    invoke-virtual {p1, v2, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 266
    .line 267
    .line 268
    move-result v2

    .line 269
    iput v2, p0, Lcom/google/android/material/badge/BadgeState;->l:I

    .line 270
    .line 271
    iget-object v2, p0, Lcom/google/android/material/badge/BadgeState;->b:Lcom/google/android/material/badge/BadgeState$State;

    .line 272
    .line 273
    iget v4, p2, Lcom/google/android/material/badge/BadgeState$State;->m:I

    .line 274
    .line 275
    const/4 v5, -0x2

    .line 276
    if-ne v4, v5, :cond_7

    .line 277
    .line 278
    const/16 v4, 0xff

    .line 279
    .line 280
    :cond_7
    iput v4, v2, Lcom/google/android/material/badge/BadgeState$State;->m:I

    .line 281
    .line 282
    iget v4, p2, Lcom/google/android/material/badge/BadgeState$State;->o:I

    .line 283
    .line 284
    if-eq v4, v5, :cond_8

    .line 285
    .line 286
    iput v4, v2, Lcom/google/android/material/badge/BadgeState$State;->o:I

    .line 287
    .line 288
    goto :goto_4

    .line 289
    :cond_8
    sget v2, Lcom/google/android/material/R$styleable;->Badge_number:I

    .line 290
    .line 291
    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 292
    .line 293
    .line 294
    move-result v2

    .line 295
    if-eqz v2, :cond_9

    .line 296
    .line 297
    iget-object v2, p0, Lcom/google/android/material/badge/BadgeState;->b:Lcom/google/android/material/badge/BadgeState$State;

    .line 298
    .line 299
    sget v3, Lcom/google/android/material/R$styleable;->Badge_number:I

    .line 300
    .line 301
    invoke-virtual {p1, v3, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 302
    .line 303
    .line 304
    move-result v3

    .line 305
    iput v3, v2, Lcom/google/android/material/badge/BadgeState$State;->o:I

    .line 306
    .line 307
    goto :goto_4

    .line 308
    :cond_9
    iget-object v2, p0, Lcom/google/android/material/badge/BadgeState;->b:Lcom/google/android/material/badge/BadgeState$State;

    .line 309
    .line 310
    iput v3, v2, Lcom/google/android/material/badge/BadgeState$State;->o:I

    .line 311
    .line 312
    :goto_4
    iget-object v2, p2, Lcom/google/android/material/badge/BadgeState$State;->n:Ljava/lang/String;

    .line 313
    .line 314
    if-eqz v2, :cond_a

    .line 315
    .line 316
    iget-object v3, p0, Lcom/google/android/material/badge/BadgeState;->b:Lcom/google/android/material/badge/BadgeState$State;

    .line 317
    .line 318
    iput-object v2, v3, Lcom/google/android/material/badge/BadgeState$State;->n:Ljava/lang/String;

    .line 319
    .line 320
    goto :goto_5

    .line 321
    :cond_a
    sget v2, Lcom/google/android/material/R$styleable;->Badge_badgeText:I

    .line 322
    .line 323
    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 324
    .line 325
    .line 326
    move-result v2

    .line 327
    if-eqz v2, :cond_b

    .line 328
    .line 329
    iget-object v2, p0, Lcom/google/android/material/badge/BadgeState;->b:Lcom/google/android/material/badge/BadgeState$State;

    .line 330
    .line 331
    sget v3, Lcom/google/android/material/R$styleable;->Badge_badgeText:I

    .line 332
    .line 333
    invoke-virtual {p1, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 334
    .line 335
    .line 336
    move-result-object v3

    .line 337
    iput-object v3, v2, Lcom/google/android/material/badge/BadgeState$State;->n:Ljava/lang/String;

    .line 338
    .line 339
    :cond_b
    :goto_5
    iget-object v2, p0, Lcom/google/android/material/badge/BadgeState;->b:Lcom/google/android/material/badge/BadgeState$State;

    .line 340
    .line 341
    iget-object v3, p2, Lcom/google/android/material/badge/BadgeState$State;->s:Ljava/lang/CharSequence;

    .line 342
    .line 343
    iput-object v3, v2, Lcom/google/android/material/badge/BadgeState$State;->s:Ljava/lang/CharSequence;

    .line 344
    .line 345
    iget-object v3, p2, Lcom/google/android/material/badge/BadgeState$State;->t:Ljava/lang/CharSequence;

    .line 346
    .line 347
    if-nez v3, :cond_c

    .line 348
    .line 349
    sget v3, Lcom/google/android/material/R$string;->mtrl_badge_numberless_content_description:I

    .line 350
    .line 351
    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 352
    .line 353
    .line 354
    move-result-object v3

    .line 355
    :cond_c
    iput-object v3, v2, Lcom/google/android/material/badge/BadgeState$State;->t:Ljava/lang/CharSequence;

    .line 356
    .line 357
    iget-object v2, p0, Lcom/google/android/material/badge/BadgeState;->b:Lcom/google/android/material/badge/BadgeState$State;

    .line 358
    .line 359
    iget v3, p2, Lcom/google/android/material/badge/BadgeState$State;->u:I

    .line 360
    .line 361
    if-nez v3, :cond_d

    .line 362
    .line 363
    sget v3, Lcom/google/android/material/R$plurals;->mtrl_badge_content_description:I

    .line 364
    .line 365
    :cond_d
    iput v3, v2, Lcom/google/android/material/badge/BadgeState$State;->u:I

    .line 366
    .line 367
    iget v3, p2, Lcom/google/android/material/badge/BadgeState$State;->v:I

    .line 368
    .line 369
    if-nez v3, :cond_e

    .line 370
    .line 371
    sget v3, Lcom/google/android/material/R$string;->mtrl_exceed_max_badge_number_content_description:I

    .line 372
    .line 373
    :cond_e
    iput v3, v2, Lcom/google/android/material/badge/BadgeState$State;->v:I

    .line 374
    .line 375
    iget-object v3, p2, Lcom/google/android/material/badge/BadgeState$State;->x:Ljava/lang/Boolean;

    .line 376
    .line 377
    if-eqz v3, :cond_10

    .line 378
    .line 379
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 380
    .line 381
    .line 382
    move-result v3

    .line 383
    if-eqz v3, :cond_f

    .line 384
    .line 385
    goto :goto_6

    .line 386
    :cond_f
    move v6, v7

    .line 387
    :cond_10
    :goto_6
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 388
    .line 389
    .line 390
    move-result-object v3

    .line 391
    iput-object v3, v2, Lcom/google/android/material/badge/BadgeState$State;->x:Ljava/lang/Boolean;

    .line 392
    .line 393
    iget-object v2, p0, Lcom/google/android/material/badge/BadgeState;->b:Lcom/google/android/material/badge/BadgeState$State;

    .line 394
    .line 395
    iget v3, p2, Lcom/google/android/material/badge/BadgeState$State;->p:I

    .line 396
    .line 397
    if-ne v3, v5, :cond_11

    .line 398
    .line 399
    sget v3, Lcom/google/android/material/R$styleable;->Badge_maxCharacterCount:I

    .line 400
    .line 401
    invoke-virtual {p1, v3, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 402
    .line 403
    .line 404
    move-result v3

    .line 405
    :cond_11
    iput v3, v2, Lcom/google/android/material/badge/BadgeState$State;->p:I

    .line 406
    .line 407
    iget-object v2, p0, Lcom/google/android/material/badge/BadgeState;->b:Lcom/google/android/material/badge/BadgeState$State;

    .line 408
    .line 409
    iget v3, p2, Lcom/google/android/material/badge/BadgeState$State;->q:I

    .line 410
    .line 411
    if-ne v3, v5, :cond_12

    .line 412
    .line 413
    sget v3, Lcom/google/android/material/R$styleable;->Badge_maxNumber:I

    .line 414
    .line 415
    invoke-virtual {p1, v3, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 416
    .line 417
    .line 418
    move-result v3

    .line 419
    :cond_12
    iput v3, v2, Lcom/google/android/material/badge/BadgeState$State;->q:I

    .line 420
    .line 421
    iget-object v2, p0, Lcom/google/android/material/badge/BadgeState;->b:Lcom/google/android/material/badge/BadgeState$State;

    .line 422
    .line 423
    iget-object v3, p2, Lcom/google/android/material/badge/BadgeState$State;->i:Ljava/lang/Integer;

    .line 424
    .line 425
    if-nez v3, :cond_13

    .line 426
    .line 427
    sget v3, Lcom/google/android/material/R$styleable;->Badge_badgeShapeAppearance:I

    .line 428
    .line 429
    sget v4, Lcom/google/android/material/R$style;->ShapeAppearance_M3_Sys_Shape_Corner_Full:I

    .line 430
    .line 431
    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 432
    .line 433
    .line 434
    move-result v3

    .line 435
    goto :goto_7

    .line 436
    :cond_13
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 437
    .line 438
    .line 439
    move-result v3

    .line 440
    :goto_7
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 441
    .line 442
    .line 443
    move-result-object v3

    .line 444
    iput-object v3, v2, Lcom/google/android/material/badge/BadgeState$State;->i:Ljava/lang/Integer;

    .line 445
    .line 446
    iget-object v2, p0, Lcom/google/android/material/badge/BadgeState;->b:Lcom/google/android/material/badge/BadgeState$State;

    .line 447
    .line 448
    iget-object v3, p2, Lcom/google/android/material/badge/BadgeState$State;->j:Ljava/lang/Integer;

    .line 449
    .line 450
    if-nez v3, :cond_14

    .line 451
    .line 452
    sget v3, Lcom/google/android/material/R$styleable;->Badge_badgeShapeAppearanceOverlay:I

    .line 453
    .line 454
    invoke-virtual {p1, v3, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 455
    .line 456
    .line 457
    move-result v3

    .line 458
    goto :goto_8

    .line 459
    :cond_14
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 460
    .line 461
    .line 462
    move-result v3

    .line 463
    :goto_8
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 464
    .line 465
    .line 466
    move-result-object v3

    .line 467
    iput-object v3, v2, Lcom/google/android/material/badge/BadgeState$State;->j:Ljava/lang/Integer;

    .line 468
    .line 469
    iget-object v2, p0, Lcom/google/android/material/badge/BadgeState;->b:Lcom/google/android/material/badge/BadgeState$State;

    .line 470
    .line 471
    iget-object v3, p2, Lcom/google/android/material/badge/BadgeState$State;->k:Ljava/lang/Integer;

    .line 472
    .line 473
    if-nez v3, :cond_15

    .line 474
    .line 475
    sget v3, Lcom/google/android/material/R$styleable;->Badge_badgeWithTextShapeAppearance:I

    .line 476
    .line 477
    sget v4, Lcom/google/android/material/R$style;->ShapeAppearance_M3_Sys_Shape_Corner_Full:I

    .line 478
    .line 479
    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 480
    .line 481
    .line 482
    move-result v3

    .line 483
    goto :goto_9

    .line 484
    :cond_15
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 485
    .line 486
    .line 487
    move-result v3

    .line 488
    :goto_9
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 489
    .line 490
    .line 491
    move-result-object v3

    .line 492
    iput-object v3, v2, Lcom/google/android/material/badge/BadgeState$State;->k:Ljava/lang/Integer;

    .line 493
    .line 494
    iget-object v2, p0, Lcom/google/android/material/badge/BadgeState;->b:Lcom/google/android/material/badge/BadgeState$State;

    .line 495
    .line 496
    iget-object v3, p2, Lcom/google/android/material/badge/BadgeState$State;->l:Ljava/lang/Integer;

    .line 497
    .line 498
    if-nez v3, :cond_16

    .line 499
    .line 500
    sget v3, Lcom/google/android/material/R$styleable;->Badge_badgeWithTextShapeAppearanceOverlay:I

    .line 501
    .line 502
    invoke-virtual {p1, v3, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 503
    .line 504
    .line 505
    move-result v3

    .line 506
    goto :goto_a

    .line 507
    :cond_16
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 508
    .line 509
    .line 510
    move-result v3

    .line 511
    :goto_a
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 512
    .line 513
    .line 514
    move-result-object v3

    .line 515
    iput-object v3, v2, Lcom/google/android/material/badge/BadgeState$State;->l:Ljava/lang/Integer;

    .line 516
    .line 517
    iget-object v2, p0, Lcom/google/android/material/badge/BadgeState;->b:Lcom/google/android/material/badge/BadgeState$State;

    .line 518
    .line 519
    iget-object v3, p2, Lcom/google/android/material/badge/BadgeState$State;->f:Ljava/lang/Integer;

    .line 520
    .line 521
    if-nez v3, :cond_17

    .line 522
    .line 523
    sget v3, Lcom/google/android/material/R$styleable;->Badge_backgroundColor:I

    .line 524
    .line 525
    invoke-static {v0, p1, v3}, Lcom/google/android/material/resources/MaterialResources;->a(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    .line 526
    .line 527
    .line 528
    move-result-object v3

    .line 529
    invoke-virtual {v3}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    .line 530
    .line 531
    .line 532
    move-result v3

    .line 533
    goto :goto_b

    .line 534
    :cond_17
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 535
    .line 536
    .line 537
    move-result v3

    .line 538
    :goto_b
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 539
    .line 540
    .line 541
    move-result-object v3

    .line 542
    iput-object v3, v2, Lcom/google/android/material/badge/BadgeState$State;->f:Ljava/lang/Integer;

    .line 543
    .line 544
    iget-object v2, p0, Lcom/google/android/material/badge/BadgeState;->b:Lcom/google/android/material/badge/BadgeState$State;

    .line 545
    .line 546
    iget-object v3, p2, Lcom/google/android/material/badge/BadgeState$State;->h:Ljava/lang/Integer;

    .line 547
    .line 548
    if-nez v3, :cond_18

    .line 549
    .line 550
    sget v3, Lcom/google/android/material/R$styleable;->Badge_badgeTextAppearance:I

    .line 551
    .line 552
    sget v4, Lcom/google/android/material/R$style;->TextAppearance_MaterialComponents_Badge:I

    .line 553
    .line 554
    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 555
    .line 556
    .line 557
    move-result v3

    .line 558
    goto :goto_c

    .line 559
    :cond_18
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 560
    .line 561
    .line 562
    move-result v3

    .line 563
    :goto_c
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 564
    .line 565
    .line 566
    move-result-object v3

    .line 567
    iput-object v3, v2, Lcom/google/android/material/badge/BadgeState$State;->h:Ljava/lang/Integer;

    .line 568
    .line 569
    iget-object v2, p2, Lcom/google/android/material/badge/BadgeState$State;->g:Ljava/lang/Integer;

    .line 570
    .line 571
    if-eqz v2, :cond_19

    .line 572
    .line 573
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeState;->b:Lcom/google/android/material/badge/BadgeState$State;

    .line 574
    .line 575
    iput-object v2, v0, Lcom/google/android/material/badge/BadgeState$State;->g:Ljava/lang/Integer;

    .line 576
    .line 577
    goto :goto_d

    .line 578
    :cond_19
    sget v2, Lcom/google/android/material/R$styleable;->Badge_badgeTextColor:I

    .line 579
    .line 580
    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 581
    .line 582
    .line 583
    move-result v2

    .line 584
    if-eqz v2, :cond_1a

    .line 585
    .line 586
    iget-object v2, p0, Lcom/google/android/material/badge/BadgeState;->b:Lcom/google/android/material/badge/BadgeState$State;

    .line 587
    .line 588
    sget v3, Lcom/google/android/material/R$styleable;->Badge_badgeTextColor:I

    .line 589
    .line 590
    invoke-static {v0, p1, v3}, Lcom/google/android/material/resources/MaterialResources;->a(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    .line 591
    .line 592
    .line 593
    move-result-object v0

    .line 594
    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    .line 595
    .line 596
    .line 597
    move-result v0

    .line 598
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 599
    .line 600
    .line 601
    move-result-object v0

    .line 602
    iput-object v0, v2, Lcom/google/android/material/badge/BadgeState$State;->g:Ljava/lang/Integer;

    .line 603
    .line 604
    goto :goto_d

    .line 605
    :cond_1a
    new-instance v2, Lcom/google/android/material/resources/TextAppearance;

    .line 606
    .line 607
    iget-object v3, p0, Lcom/google/android/material/badge/BadgeState;->b:Lcom/google/android/material/badge/BadgeState$State;

    .line 608
    .line 609
    iget-object v3, v3, Lcom/google/android/material/badge/BadgeState$State;->h:Ljava/lang/Integer;

    .line 610
    .line 611
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 612
    .line 613
    .line 614
    move-result v3

    .line 615
    invoke-direct {v2, v0, v3}, Lcom/google/android/material/resources/TextAppearance;-><init>(Landroid/content/Context;I)V

    .line 616
    .line 617
    .line 618
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeState;->b:Lcom/google/android/material/badge/BadgeState$State;

    .line 619
    .line 620
    iget-object v2, v2, Lcom/google/android/material/resources/TextAppearance;->k:Landroid/content/res/ColorStateList;

    .line 621
    .line 622
    invoke-virtual {v2}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    .line 623
    .line 624
    .line 625
    move-result v2

    .line 626
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 627
    .line 628
    .line 629
    move-result-object v2

    .line 630
    iput-object v2, v0, Lcom/google/android/material/badge/BadgeState$State;->g:Ljava/lang/Integer;

    .line 631
    .line 632
    :goto_d
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeState;->b:Lcom/google/android/material/badge/BadgeState$State;

    .line 633
    .line 634
    iget-object v2, p2, Lcom/google/android/material/badge/BadgeState$State;->w:Ljava/lang/Integer;

    .line 635
    .line 636
    if-nez v2, :cond_1b

    .line 637
    .line 638
    sget v2, Lcom/google/android/material/R$styleable;->Badge_badgeGravity:I

    .line 639
    .line 640
    const v3, 0x800035

    .line 641
    .line 642
    .line 643
    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 644
    .line 645
    .line 646
    move-result v2

    .line 647
    goto :goto_e

    .line 648
    :cond_1b
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 649
    .line 650
    .line 651
    move-result v2

    .line 652
    :goto_e
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 653
    .line 654
    .line 655
    move-result-object v2

    .line 656
    iput-object v2, v0, Lcom/google/android/material/badge/BadgeState$State;->w:Ljava/lang/Integer;

    .line 657
    .line 658
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeState;->b:Lcom/google/android/material/badge/BadgeState$State;

    .line 659
    .line 660
    iget-object v2, p2, Lcom/google/android/material/badge/BadgeState$State;->y:Ljava/lang/Integer;

    .line 661
    .line 662
    if-nez v2, :cond_1c

    .line 663
    .line 664
    sget v2, Lcom/google/android/material/R$styleable;->Badge_badgeWidePadding:I

    .line 665
    .line 666
    sget v3, Lcom/google/android/material/R$dimen;->mtrl_badge_long_text_horizontal_padding:I

    .line 667
    .line 668
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 669
    .line 670
    .line 671
    move-result v3

    .line 672
    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 673
    .line 674
    .line 675
    move-result v2

    .line 676
    goto :goto_f

    .line 677
    :cond_1c
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 678
    .line 679
    .line 680
    move-result v2

    .line 681
    :goto_f
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 682
    .line 683
    .line 684
    move-result-object v2

    .line 685
    iput-object v2, v0, Lcom/google/android/material/badge/BadgeState$State;->y:Ljava/lang/Integer;

    .line 686
    .line 687
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeState;->b:Lcom/google/android/material/badge/BadgeState$State;

    .line 688
    .line 689
    iget-object v2, p2, Lcom/google/android/material/badge/BadgeState$State;->z:Ljava/lang/Integer;

    .line 690
    .line 691
    if-nez v2, :cond_1d

    .line 692
    .line 693
    sget v2, Lcom/google/android/material/R$styleable;->Badge_badgeVerticalPadding:I

    .line 694
    .line 695
    sget v3, Lcom/google/android/material/R$dimen;->m3_badge_with_text_vertical_padding:I

    .line 696
    .line 697
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 698
    .line 699
    .line 700
    move-result v1

    .line 701
    invoke-virtual {p1, v2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 702
    .line 703
    .line 704
    move-result v1

    .line 705
    goto :goto_10

    .line 706
    :cond_1d
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 707
    .line 708
    .line 709
    move-result v1

    .line 710
    :goto_10
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 711
    .line 712
    .line 713
    move-result-object v1

    .line 714
    iput-object v1, v0, Lcom/google/android/material/badge/BadgeState$State;->z:Ljava/lang/Integer;

    .line 715
    .line 716
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeState;->b:Lcom/google/android/material/badge/BadgeState$State;

    .line 717
    .line 718
    iget-object v1, p2, Lcom/google/android/material/badge/BadgeState$State;->A:Ljava/lang/Integer;

    .line 719
    .line 720
    if-nez v1, :cond_1e

    .line 721
    .line 722
    sget v1, Lcom/google/android/material/R$styleable;->Badge_horizontalOffset:I

    .line 723
    .line 724
    invoke-virtual {p1, v1, v7}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    .line 725
    .line 726
    .line 727
    move-result v1

    .line 728
    goto :goto_11

    .line 729
    :cond_1e
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 730
    .line 731
    .line 732
    move-result v1

    .line 733
    :goto_11
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 734
    .line 735
    .line 736
    move-result-object v1

    .line 737
    iput-object v1, v0, Lcom/google/android/material/badge/BadgeState$State;->A:Ljava/lang/Integer;

    .line 738
    .line 739
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeState;->b:Lcom/google/android/material/badge/BadgeState$State;

    .line 740
    .line 741
    iget-object v1, p2, Lcom/google/android/material/badge/BadgeState$State;->B:Ljava/lang/Integer;

    .line 742
    .line 743
    if-nez v1, :cond_1f

    .line 744
    .line 745
    sget v1, Lcom/google/android/material/R$styleable;->Badge_verticalOffset:I

    .line 746
    .line 747
    invoke-virtual {p1, v1, v7}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    .line 748
    .line 749
    .line 750
    move-result v1

    .line 751
    goto :goto_12

    .line 752
    :cond_1f
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 753
    .line 754
    .line 755
    move-result v1

    .line 756
    :goto_12
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 757
    .line 758
    .line 759
    move-result-object v1

    .line 760
    iput-object v1, v0, Lcom/google/android/material/badge/BadgeState$State;->B:Ljava/lang/Integer;

    .line 761
    .line 762
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeState;->b:Lcom/google/android/material/badge/BadgeState$State;

    .line 763
    .line 764
    iget-object v1, p2, Lcom/google/android/material/badge/BadgeState$State;->C:Ljava/lang/Integer;

    .line 765
    .line 766
    if-nez v1, :cond_20

    .line 767
    .line 768
    sget v1, Lcom/google/android/material/R$styleable;->Badge_horizontalOffsetWithText:I

    .line 769
    .line 770
    iget-object v2, v0, Lcom/google/android/material/badge/BadgeState$State;->A:Ljava/lang/Integer;

    .line 771
    .line 772
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 773
    .line 774
    .line 775
    move-result v2

    .line 776
    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    .line 777
    .line 778
    .line 779
    move-result v1

    .line 780
    goto :goto_13

    .line 781
    :cond_20
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 782
    .line 783
    .line 784
    move-result v1

    .line 785
    :goto_13
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 786
    .line 787
    .line 788
    move-result-object v1

    .line 789
    iput-object v1, v0, Lcom/google/android/material/badge/BadgeState$State;->C:Ljava/lang/Integer;

    .line 790
    .line 791
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeState;->b:Lcom/google/android/material/badge/BadgeState$State;

    .line 792
    .line 793
    iget-object v1, p2, Lcom/google/android/material/badge/BadgeState$State;->D:Ljava/lang/Integer;

    .line 794
    .line 795
    if-nez v1, :cond_21

    .line 796
    .line 797
    sget v1, Lcom/google/android/material/R$styleable;->Badge_verticalOffsetWithText:I

    .line 798
    .line 799
    iget-object v2, v0, Lcom/google/android/material/badge/BadgeState$State;->B:Ljava/lang/Integer;

    .line 800
    .line 801
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 802
    .line 803
    .line 804
    move-result v2

    .line 805
    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    .line 806
    .line 807
    .line 808
    move-result v1

    .line 809
    goto :goto_14

    .line 810
    :cond_21
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 811
    .line 812
    .line 813
    move-result v1

    .line 814
    :goto_14
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 815
    .line 816
    .line 817
    move-result-object v1

    .line 818
    iput-object v1, v0, Lcom/google/android/material/badge/BadgeState$State;->D:Ljava/lang/Integer;

    .line 819
    .line 820
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeState;->b:Lcom/google/android/material/badge/BadgeState$State;

    .line 821
    .line 822
    iget-object v1, p2, Lcom/google/android/material/badge/BadgeState$State;->G:Ljava/lang/Integer;

    .line 823
    .line 824
    if-nez v1, :cond_22

    .line 825
    .line 826
    sget v1, Lcom/google/android/material/R$styleable;->Badge_largeFontVerticalOffsetAdjustment:I

    .line 827
    .line 828
    invoke-virtual {p1, v1, v7}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    .line 829
    .line 830
    .line 831
    move-result v1

    .line 832
    goto :goto_15

    .line 833
    :cond_22
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 834
    .line 835
    .line 836
    move-result v1

    .line 837
    :goto_15
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 838
    .line 839
    .line 840
    move-result-object v1

    .line 841
    iput-object v1, v0, Lcom/google/android/material/badge/BadgeState$State;->G:Ljava/lang/Integer;

    .line 842
    .line 843
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeState;->b:Lcom/google/android/material/badge/BadgeState$State;

    .line 844
    .line 845
    iget-object v1, p2, Lcom/google/android/material/badge/BadgeState$State;->E:Ljava/lang/Integer;

    .line 846
    .line 847
    if-nez v1, :cond_23

    .line 848
    .line 849
    move v1, v7

    .line 850
    goto :goto_16

    .line 851
    :cond_23
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 852
    .line 853
    .line 854
    move-result v1

    .line 855
    :goto_16
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 856
    .line 857
    .line 858
    move-result-object v1

    .line 859
    iput-object v1, v0, Lcom/google/android/material/badge/BadgeState$State;->E:Ljava/lang/Integer;

    .line 860
    .line 861
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeState;->b:Lcom/google/android/material/badge/BadgeState$State;

    .line 862
    .line 863
    iget-object v1, p2, Lcom/google/android/material/badge/BadgeState$State;->F:Ljava/lang/Integer;

    .line 864
    .line 865
    if-nez v1, :cond_24

    .line 866
    .line 867
    move v1, v7

    .line 868
    goto :goto_17

    .line 869
    :cond_24
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 870
    .line 871
    .line 872
    move-result v1

    .line 873
    :goto_17
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 874
    .line 875
    .line 876
    move-result-object v1

    .line 877
    iput-object v1, v0, Lcom/google/android/material/badge/BadgeState$State;->F:Ljava/lang/Integer;

    .line 878
    .line 879
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeState;->b:Lcom/google/android/material/badge/BadgeState$State;

    .line 880
    .line 881
    iget-object v1, p2, Lcom/google/android/material/badge/BadgeState$State;->H:Ljava/lang/Boolean;

    .line 882
    .line 883
    if-nez v1, :cond_25

    .line 884
    .line 885
    sget v1, Lcom/google/android/material/R$styleable;->Badge_autoAdjustToWithinGrandparentBounds:I

    .line 886
    .line 887
    invoke-virtual {p1, v1, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 888
    .line 889
    .line 890
    move-result v1

    .line 891
    goto :goto_18

    .line 892
    :cond_25
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 893
    .line 894
    .line 895
    move-result v1

    .line 896
    :goto_18
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 897
    .line 898
    .line 899
    move-result-object v1

    .line 900
    iput-object v1, v0, Lcom/google/android/material/badge/BadgeState$State;->H:Ljava/lang/Boolean;

    .line 901
    .line 902
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 903
    .line 904
    .line 905
    iget-object p1, p2, Lcom/google/android/material/badge/BadgeState$State;->r:Ljava/util/Locale;

    .line 906
    .line 907
    if-nez p1, :cond_27

    .line 908
    .line 909
    iget-object p1, p0, Lcom/google/android/material/badge/BadgeState;->b:Lcom/google/android/material/badge/BadgeState$State;

    .line 910
    .line 911
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 912
    .line 913
    const/16 v1, 0x18

    .line 914
    .line 915
    if-lt v0, v1, :cond_26

    .line 916
    .line 917
    sget-object v0, Ljava/util/Locale$Category;->FORMAT:Ljava/util/Locale$Category;

    .line 918
    .line 919
    invoke-static {v0}, Ljava/util/Locale;->getDefault(Ljava/util/Locale$Category;)Ljava/util/Locale;

    .line 920
    .line 921
    .line 922
    move-result-object v0

    .line 923
    goto :goto_19

    .line 924
    :cond_26
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 925
    .line 926
    .line 927
    move-result-object v0

    .line 928
    :goto_19
    iput-object v0, p1, Lcom/google/android/material/badge/BadgeState$State;->r:Ljava/util/Locale;

    .line 929
    .line 930
    goto :goto_1a

    .line 931
    :cond_27
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeState;->b:Lcom/google/android/material/badge/BadgeState$State;

    .line 932
    .line 933
    iput-object p1, v0, Lcom/google/android/material/badge/BadgeState$State;->r:Ljava/util/Locale;

    .line 934
    .line 935
    :goto_1a
    iput-object p2, p0, Lcom/google/android/material/badge/BadgeState;->a:Lcom/google/android/material/badge/BadgeState$State;

    .line 936
    .line 937
    return-void
.end method
