.class public Landroidx/appcompat/view/SupportMenuInflater;
.super Landroid/view/MenuInflater;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/view/SupportMenuInflater$MenuState;,
        Landroidx/appcompat/view/SupportMenuInflater$InflatedOnMenuItemClickListener;
    }
.end annotation


# static fields
.field public static final e:[Ljava/lang/Class;

.field public static final f:[Ljava/lang/Class;


# instance fields
.field public final a:[Ljava/lang/Object;

.field public final b:[Ljava/lang/Object;

.field public final c:Landroid/content/Context;

.field public d:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v0, v0, [Ljava/lang/Class;

    .line 3
    .line 4
    const-class v1, Landroid/content/Context;

    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    aput-object v1, v0, v2

    .line 8
    .line 9
    sput-object v0, Landroidx/appcompat/view/SupportMenuInflater;->e:[Ljava/lang/Class;

    .line 10
    .line 11
    sput-object v0, Landroidx/appcompat/view/SupportMenuInflater;->f:[Ljava/lang/Class;

    .line 12
    .line 13
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Landroid/view/MenuInflater;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/appcompat/view/SupportMenuInflater;->c:Landroid/content/Context;

    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    new-array v0, v0, [Ljava/lang/Object;

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    aput-object p1, v0, v1

    .line 11
    .line 12
    iput-object v0, p0, Landroidx/appcompat/view/SupportMenuInflater;->a:[Ljava/lang/Object;

    .line 13
    .line 14
    iput-object v0, p0, Landroidx/appcompat/view/SupportMenuInflater;->b:[Ljava/lang/Object;

    .line 15
    .line 16
    return-void
.end method

.method public static a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    instance-of v0, p0, Landroid/app/Activity;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-object p0

    .line 6
    :cond_0
    instance-of v0, p0, Landroid/content/ContextWrapper;

    .line 7
    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    check-cast p0, Landroid/content/ContextWrapper;

    .line 11
    .line 12
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    invoke-static {p0}, Landroidx/appcompat/view/SupportMenuInflater;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    :cond_1
    return-object p0
.end method


# virtual methods
.method public final b(Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/view/Menu;)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    new-instance v2, Landroidx/appcompat/view/SupportMenuInflater$MenuState;

    .line 6
    .line 7
    move-object/from16 v3, p3

    .line 8
    .line 9
    invoke-direct {v2, v0, v3}, Landroidx/appcompat/view/SupportMenuInflater$MenuState;-><init>(Landroidx/appcompat/view/SupportMenuInflater;Landroid/view/Menu;)V

    .line 10
    .line 11
    .line 12
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    .line 13
    .line 14
    .line 15
    move-result v3

    .line 16
    :goto_0
    const/4 v4, 0x2

    .line 17
    const-string v5, "menu"

    .line 18
    .line 19
    const/4 v6, 0x1

    .line 20
    if-ne v3, v4, :cond_1

    .line 21
    .line 22
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    move-result v7

    .line 30
    if-eqz v7, :cond_0

    .line 31
    .line 32
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 33
    .line 34
    .line 35
    move-result v3

    .line 36
    goto :goto_1

    .line 37
    :cond_0
    new-instance v1, Ljava/lang/RuntimeException;

    .line 38
    .line 39
    const-string v2, "Expecting menu, got "

    .line 40
    .line 41
    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    throw v1

    .line 49
    :cond_1
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 50
    .line 51
    .line 52
    move-result v3

    .line 53
    if-ne v3, v6, :cond_17

    .line 54
    .line 55
    :goto_1
    const/4 v7, 0x0

    .line 56
    const/4 v8, 0x0

    .line 57
    move v9, v7

    .line 58
    move v10, v9

    .line 59
    move-object v11, v8

    .line 60
    :goto_2
    if-nez v9, :cond_16

    .line 61
    .line 62
    if-eq v3, v6, :cond_15

    .line 63
    .line 64
    const-string v12, "item"

    .line 65
    .line 66
    const-string v13, "group"

    .line 67
    .line 68
    if-eq v3, v4, :cond_8

    .line 69
    .line 70
    const/4 v14, 0x3

    .line 71
    if-eq v3, v14, :cond_3

    .line 72
    .line 73
    :cond_2
    :goto_3
    move-object/from16 v4, p1

    .line 74
    .line 75
    goto/16 :goto_b

    .line 76
    .line 77
    :cond_3
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v3

    .line 81
    if-eqz v10, :cond_4

    .line 82
    .line 83
    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 84
    .line 85
    .line 86
    move-result v14

    .line 87
    if-eqz v14, :cond_4

    .line 88
    .line 89
    move-object/from16 v4, p1

    .line 90
    .line 91
    move v10, v7

    .line 92
    move-object v11, v8

    .line 93
    goto/16 :goto_b

    .line 94
    .line 95
    :cond_4
    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 96
    .line 97
    .line 98
    move-result v13

    .line 99
    if-eqz v13, :cond_5

    .line 100
    .line 101
    iput v7, v2, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->b:I

    .line 102
    .line 103
    iput v7, v2, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->c:I

    .line 104
    .line 105
    iput v7, v2, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->d:I

    .line 106
    .line 107
    iput v7, v2, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->e:I

    .line 108
    .line 109
    iput-boolean v6, v2, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->f:Z

    .line 110
    .line 111
    iput-boolean v6, v2, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->g:Z

    .line 112
    .line 113
    goto :goto_3

    .line 114
    :cond_5
    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 115
    .line 116
    .line 117
    move-result v12

    .line 118
    if-eqz v12, :cond_7

    .line 119
    .line 120
    iget-boolean v3, v2, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->h:Z

    .line 121
    .line 122
    if-nez v3, :cond_2

    .line 123
    .line 124
    iget-object v3, v2, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->z:Landroidx/core/view/ActionProvider;

    .line 125
    .line 126
    if-eqz v3, :cond_6

    .line 127
    .line 128
    invoke-virtual {v3}, Landroidx/core/view/ActionProvider;->a()Z

    .line 129
    .line 130
    .line 131
    move-result v3

    .line 132
    if-eqz v3, :cond_6

    .line 133
    .line 134
    iput-boolean v6, v2, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->h:Z

    .line 135
    .line 136
    iget v3, v2, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->b:I

    .line 137
    .line 138
    iget v12, v2, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->i:I

    .line 139
    .line 140
    iget v13, v2, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->j:I

    .line 141
    .line 142
    iget-object v14, v2, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->k:Ljava/lang/CharSequence;

    .line 143
    .line 144
    iget-object v15, v2, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->a:Landroid/view/Menu;

    .line 145
    .line 146
    invoke-interface {v15, v3, v12, v13, v14}, Landroid/view/Menu;->addSubMenu(IIILjava/lang/CharSequence;)Landroid/view/SubMenu;

    .line 147
    .line 148
    .line 149
    move-result-object v3

    .line 150
    invoke-interface {v3}, Landroid/view/SubMenu;->getItem()Landroid/view/MenuItem;

    .line 151
    .line 152
    .line 153
    move-result-object v3

    .line 154
    invoke-virtual {v2, v3}, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->b(Landroid/view/MenuItem;)V

    .line 155
    .line 156
    .line 157
    goto :goto_3

    .line 158
    :cond_6
    iput-boolean v6, v2, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->h:Z

    .line 159
    .line 160
    iget v3, v2, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->b:I

    .line 161
    .line 162
    iget v12, v2, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->i:I

    .line 163
    .line 164
    iget v13, v2, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->j:I

    .line 165
    .line 166
    iget-object v14, v2, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->k:Ljava/lang/CharSequence;

    .line 167
    .line 168
    iget-object v15, v2, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->a:Landroid/view/Menu;

    .line 169
    .line 170
    invoke-interface {v15, v3, v12, v13, v14}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 171
    .line 172
    .line 173
    move-result-object v3

    .line 174
    invoke-virtual {v2, v3}, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->b(Landroid/view/MenuItem;)V

    .line 175
    .line 176
    .line 177
    goto :goto_3

    .line 178
    :cond_7
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 179
    .line 180
    .line 181
    move-result v3

    .line 182
    if-eqz v3, :cond_2

    .line 183
    .line 184
    move-object/from16 v4, p1

    .line 185
    .line 186
    move v9, v6

    .line 187
    goto/16 :goto_b

    .line 188
    .line 189
    :cond_8
    if-eqz v10, :cond_9

    .line 190
    .line 191
    goto :goto_3

    .line 192
    :cond_9
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 193
    .line 194
    .line 195
    move-result-object v3

    .line 196
    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 197
    .line 198
    .line 199
    move-result v13

    .line 200
    iget-object v14, v0, Landroidx/appcompat/view/SupportMenuInflater;->c:Landroid/content/Context;

    .line 201
    .line 202
    if-eqz v13, :cond_a

    .line 203
    .line 204
    sget-object v3, Landroidx/appcompat/R$styleable;->MenuGroup:[I

    .line 205
    .line 206
    invoke-virtual {v14, v1, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    .line 207
    .line 208
    .line 209
    move-result-object v3

    .line 210
    sget v12, Landroidx/appcompat/R$styleable;->MenuGroup_android_id:I

    .line 211
    .line 212
    invoke-virtual {v3, v12, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 213
    .line 214
    .line 215
    move-result v12

    .line 216
    iput v12, v2, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->b:I

    .line 217
    .line 218
    sget v12, Landroidx/appcompat/R$styleable;->MenuGroup_android_menuCategory:I

    .line 219
    .line 220
    invoke-virtual {v3, v12, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 221
    .line 222
    .line 223
    move-result v12

    .line 224
    iput v12, v2, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->c:I

    .line 225
    .line 226
    sget v12, Landroidx/appcompat/R$styleable;->MenuGroup_android_orderInCategory:I

    .line 227
    .line 228
    invoke-virtual {v3, v12, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 229
    .line 230
    .line 231
    move-result v12

    .line 232
    iput v12, v2, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->d:I

    .line 233
    .line 234
    sget v12, Landroidx/appcompat/R$styleable;->MenuGroup_android_checkableBehavior:I

    .line 235
    .line 236
    invoke-virtual {v3, v12, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 237
    .line 238
    .line 239
    move-result v12

    .line 240
    iput v12, v2, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->e:I

    .line 241
    .line 242
    sget v12, Landroidx/appcompat/R$styleable;->MenuGroup_android_visible:I

    .line 243
    .line 244
    invoke-virtual {v3, v12, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 245
    .line 246
    .line 247
    move-result v12

    .line 248
    iput-boolean v12, v2, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->f:Z

    .line 249
    .line 250
    sget v12, Landroidx/appcompat/R$styleable;->MenuGroup_android_enabled:I

    .line 251
    .line 252
    invoke-virtual {v3, v12, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 253
    .line 254
    .line 255
    move-result v12

    .line 256
    iput-boolean v12, v2, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->g:Z

    .line 257
    .line 258
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 259
    .line 260
    .line 261
    goto/16 :goto_3

    .line 262
    .line 263
    :cond_a
    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 264
    .line 265
    .line 266
    move-result v12

    .line 267
    if-eqz v12, :cond_13

    .line 268
    .line 269
    sget-object v3, Landroidx/appcompat/R$styleable;->MenuItem:[I

    .line 270
    .line 271
    new-instance v12, Landroidx/appcompat/widget/TintTypedArray;

    .line 272
    .line 273
    invoke-virtual {v14, v1, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    .line 274
    .line 275
    .line 276
    move-result-object v3

    .line 277
    invoke-direct {v12, v14, v3}, Landroidx/appcompat/widget/TintTypedArray;-><init>(Landroid/content/Context;Landroid/content/res/TypedArray;)V

    .line 278
    .line 279
    .line 280
    sget v13, Landroidx/appcompat/R$styleable;->MenuItem_android_id:I

    .line 281
    .line 282
    invoke-virtual {v3, v13, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 283
    .line 284
    .line 285
    move-result v13

    .line 286
    iput v13, v2, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->i:I

    .line 287
    .line 288
    sget v13, Landroidx/appcompat/R$styleable;->MenuItem_android_menuCategory:I

    .line 289
    .line 290
    iget v14, v2, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->c:I

    .line 291
    .line 292
    invoke-virtual {v3, v13, v14}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 293
    .line 294
    .line 295
    move-result v13

    .line 296
    sget v14, Landroidx/appcompat/R$styleable;->MenuItem_android_orderInCategory:I

    .line 297
    .line 298
    iget v15, v2, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->d:I

    .line 299
    .line 300
    invoke-virtual {v3, v14, v15}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 301
    .line 302
    .line 303
    move-result v14

    .line 304
    const/high16 v15, -0x10000

    .line 305
    .line 306
    and-int/2addr v13, v15

    .line 307
    const v15, 0xffff

    .line 308
    .line 309
    .line 310
    and-int/2addr v14, v15

    .line 311
    or-int/2addr v13, v14

    .line 312
    iput v13, v2, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->j:I

    .line 313
    .line 314
    sget v13, Landroidx/appcompat/R$styleable;->MenuItem_android_title:I

    .line 315
    .line 316
    invoke-virtual {v3, v13}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    .line 317
    .line 318
    .line 319
    move-result-object v13

    .line 320
    iput-object v13, v2, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->k:Ljava/lang/CharSequence;

    .line 321
    .line 322
    sget v13, Landroidx/appcompat/R$styleable;->MenuItem_android_titleCondensed:I

    .line 323
    .line 324
    invoke-virtual {v3, v13}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    .line 325
    .line 326
    .line 327
    move-result-object v13

    .line 328
    iput-object v13, v2, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->l:Ljava/lang/CharSequence;

    .line 329
    .line 330
    sget v13, Landroidx/appcompat/R$styleable;->MenuItem_android_icon:I

    .line 331
    .line 332
    invoke-virtual {v3, v13, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 333
    .line 334
    .line 335
    move-result v13

    .line 336
    iput v13, v2, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->m:I

    .line 337
    .line 338
    sget v13, Landroidx/appcompat/R$styleable;->MenuItem_android_alphabeticShortcut:I

    .line 339
    .line 340
    invoke-virtual {v3, v13}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 341
    .line 342
    .line 343
    move-result-object v13

    .line 344
    if-nez v13, :cond_b

    .line 345
    .line 346
    move v13, v7

    .line 347
    goto :goto_4

    .line 348
    :cond_b
    invoke-virtual {v13, v7}, Ljava/lang/String;->charAt(I)C

    .line 349
    .line 350
    .line 351
    move-result v13

    .line 352
    :goto_4
    iput-char v13, v2, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->n:C

    .line 353
    .line 354
    sget v13, Landroidx/appcompat/R$styleable;->MenuItem_alphabeticModifiers:I

    .line 355
    .line 356
    const/16 v14, 0x1000

    .line 357
    .line 358
    invoke-virtual {v3, v13, v14}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 359
    .line 360
    .line 361
    move-result v13

    .line 362
    iput v13, v2, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->o:I

    .line 363
    .line 364
    sget v13, Landroidx/appcompat/R$styleable;->MenuItem_android_numericShortcut:I

    .line 365
    .line 366
    invoke-virtual {v3, v13}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 367
    .line 368
    .line 369
    move-result-object v13

    .line 370
    if-nez v13, :cond_c

    .line 371
    .line 372
    move v13, v7

    .line 373
    goto :goto_5

    .line 374
    :cond_c
    invoke-virtual {v13, v7}, Ljava/lang/String;->charAt(I)C

    .line 375
    .line 376
    .line 377
    move-result v13

    .line 378
    :goto_5
    iput-char v13, v2, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->p:C

    .line 379
    .line 380
    sget v13, Landroidx/appcompat/R$styleable;->MenuItem_numericModifiers:I

    .line 381
    .line 382
    invoke-virtual {v3, v13, v14}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 383
    .line 384
    .line 385
    move-result v13

    .line 386
    iput v13, v2, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->q:I

    .line 387
    .line 388
    sget v13, Landroidx/appcompat/R$styleable;->MenuItem_android_checkable:I

    .line 389
    .line 390
    invoke-virtual {v3, v13}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 391
    .line 392
    .line 393
    move-result v13

    .line 394
    if-eqz v13, :cond_d

    .line 395
    .line 396
    sget v13, Landroidx/appcompat/R$styleable;->MenuItem_android_checkable:I

    .line 397
    .line 398
    invoke-virtual {v3, v13, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 399
    .line 400
    .line 401
    move-result v13

    .line 402
    iput v13, v2, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->r:I

    .line 403
    .line 404
    goto :goto_6

    .line 405
    :cond_d
    iget v13, v2, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->e:I

    .line 406
    .line 407
    iput v13, v2, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->r:I

    .line 408
    .line 409
    :goto_6
    sget v13, Landroidx/appcompat/R$styleable;->MenuItem_android_checked:I

    .line 410
    .line 411
    invoke-virtual {v3, v13, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 412
    .line 413
    .line 414
    move-result v13

    .line 415
    iput-boolean v13, v2, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->s:Z

    .line 416
    .line 417
    sget v13, Landroidx/appcompat/R$styleable;->MenuItem_android_visible:I

    .line 418
    .line 419
    iget-boolean v14, v2, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->f:Z

    .line 420
    .line 421
    invoke-virtual {v3, v13, v14}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 422
    .line 423
    .line 424
    move-result v13

    .line 425
    iput-boolean v13, v2, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->t:Z

    .line 426
    .line 427
    sget v13, Landroidx/appcompat/R$styleable;->MenuItem_android_enabled:I

    .line 428
    .line 429
    iget-boolean v14, v2, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->g:Z

    .line 430
    .line 431
    invoke-virtual {v3, v13, v14}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 432
    .line 433
    .line 434
    move-result v13

    .line 435
    iput-boolean v13, v2, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->u:Z

    .line 436
    .line 437
    sget v13, Landroidx/appcompat/R$styleable;->MenuItem_showAsAction:I

    .line 438
    .line 439
    const/4 v14, -0x1

    .line 440
    invoke-virtual {v3, v13, v14}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 441
    .line 442
    .line 443
    move-result v13

    .line 444
    iput v13, v2, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->v:I

    .line 445
    .line 446
    sget v13, Landroidx/appcompat/R$styleable;->MenuItem_android_onClick:I

    .line 447
    .line 448
    invoke-virtual {v3, v13}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 449
    .line 450
    .line 451
    move-result-object v13

    .line 452
    iput-object v13, v2, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->y:Ljava/lang/String;

    .line 453
    .line 454
    sget v13, Landroidx/appcompat/R$styleable;->MenuItem_actionLayout:I

    .line 455
    .line 456
    invoke-virtual {v3, v13, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 457
    .line 458
    .line 459
    move-result v13

    .line 460
    iput v13, v2, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->w:I

    .line 461
    .line 462
    sget v13, Landroidx/appcompat/R$styleable;->MenuItem_actionViewClass:I

    .line 463
    .line 464
    invoke-virtual {v3, v13}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 465
    .line 466
    .line 467
    move-result-object v13

    .line 468
    iput-object v13, v2, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->x:Ljava/lang/String;

    .line 469
    .line 470
    sget v13, Landroidx/appcompat/R$styleable;->MenuItem_actionProviderClass:I

    .line 471
    .line 472
    invoke-virtual {v3, v13}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 473
    .line 474
    .line 475
    move-result-object v13

    .line 476
    if-eqz v13, :cond_e

    .line 477
    .line 478
    move v15, v6

    .line 479
    goto :goto_7

    .line 480
    :cond_e
    move v15, v7

    .line 481
    :goto_7
    if-eqz v15, :cond_f

    .line 482
    .line 483
    iget v4, v2, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->w:I

    .line 484
    .line 485
    if-nez v4, :cond_f

    .line 486
    .line 487
    iget-object v4, v2, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->x:Ljava/lang/String;

    .line 488
    .line 489
    if-nez v4, :cond_f

    .line 490
    .line 491
    sget-object v4, Landroidx/appcompat/view/SupportMenuInflater;->f:[Ljava/lang/Class;

    .line 492
    .line 493
    iget-object v15, v0, Landroidx/appcompat/view/SupportMenuInflater;->b:[Ljava/lang/Object;

    .line 494
    .line 495
    invoke-virtual {v2, v13, v4, v15}, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->a(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 496
    .line 497
    .line 498
    move-result-object v4

    .line 499
    check-cast v4, Landroidx/core/view/ActionProvider;

    .line 500
    .line 501
    iput-object v4, v2, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->z:Landroidx/core/view/ActionProvider;

    .line 502
    .line 503
    goto :goto_8

    .line 504
    :cond_f
    if-eqz v15, :cond_10

    .line 505
    .line 506
    const-string v4, "SupportMenuInflater"

    .line 507
    .line 508
    const-string v13, "Ignoring attribute \'actionProviderClass\'. Action view already specified."

    .line 509
    .line 510
    invoke-static {v4, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 511
    .line 512
    .line 513
    :cond_10
    iput-object v8, v2, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->z:Landroidx/core/view/ActionProvider;

    .line 514
    .line 515
    :goto_8
    sget v4, Landroidx/appcompat/R$styleable;->MenuItem_contentDescription:I

    .line 516
    .line 517
    invoke-virtual {v3, v4}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    .line 518
    .line 519
    .line 520
    move-result-object v4

    .line 521
    iput-object v4, v2, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->A:Ljava/lang/CharSequence;

    .line 522
    .line 523
    sget v4, Landroidx/appcompat/R$styleable;->MenuItem_tooltipText:I

    .line 524
    .line 525
    invoke-virtual {v3, v4}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    .line 526
    .line 527
    .line 528
    move-result-object v4

    .line 529
    iput-object v4, v2, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->B:Ljava/lang/CharSequence;

    .line 530
    .line 531
    sget v4, Landroidx/appcompat/R$styleable;->MenuItem_iconTintMode:I

    .line 532
    .line 533
    invoke-virtual {v3, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 534
    .line 535
    .line 536
    move-result v4

    .line 537
    if-eqz v4, :cond_11

    .line 538
    .line 539
    sget v4, Landroidx/appcompat/R$styleable;->MenuItem_iconTintMode:I

    .line 540
    .line 541
    invoke-virtual {v3, v4, v14}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 542
    .line 543
    .line 544
    move-result v4

    .line 545
    iget-object v13, v2, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->D:Landroid/graphics/PorterDuff$Mode;

    .line 546
    .line 547
    invoke-static {v4, v13}, Landroidx/appcompat/widget/DrawableUtils;->c(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    .line 548
    .line 549
    .line 550
    move-result-object v4

    .line 551
    iput-object v4, v2, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->D:Landroid/graphics/PorterDuff$Mode;

    .line 552
    .line 553
    goto :goto_9

    .line 554
    :cond_11
    iput-object v8, v2, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->D:Landroid/graphics/PorterDuff$Mode;

    .line 555
    .line 556
    :goto_9
    sget v4, Landroidx/appcompat/R$styleable;->MenuItem_iconTint:I

    .line 557
    .line 558
    invoke-virtual {v3, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 559
    .line 560
    .line 561
    move-result v3

    .line 562
    if-eqz v3, :cond_12

    .line 563
    .line 564
    sget v3, Landroidx/appcompat/R$styleable;->MenuItem_iconTint:I

    .line 565
    .line 566
    invoke-virtual {v12, v3}, Landroidx/appcompat/widget/TintTypedArray;->a(I)Landroid/content/res/ColorStateList;

    .line 567
    .line 568
    .line 569
    move-result-object v3

    .line 570
    iput-object v3, v2, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->C:Landroid/content/res/ColorStateList;

    .line 571
    .line 572
    goto :goto_a

    .line 573
    :cond_12
    iput-object v8, v2, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->C:Landroid/content/res/ColorStateList;

    .line 574
    .line 575
    :goto_a
    invoke-virtual {v12}, Landroidx/appcompat/widget/TintTypedArray;->f()V

    .line 576
    .line 577
    .line 578
    iput-boolean v7, v2, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->h:Z

    .line 579
    .line 580
    goto/16 :goto_3

    .line 581
    .line 582
    :cond_13
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 583
    .line 584
    .line 585
    move-result v4

    .line 586
    if-eqz v4, :cond_14

    .line 587
    .line 588
    iput-boolean v6, v2, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->h:Z

    .line 589
    .line 590
    iget v3, v2, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->b:I

    .line 591
    .line 592
    iget v4, v2, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->i:I

    .line 593
    .line 594
    iget v12, v2, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->j:I

    .line 595
    .line 596
    iget-object v13, v2, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->k:Ljava/lang/CharSequence;

    .line 597
    .line 598
    iget-object v14, v2, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->a:Landroid/view/Menu;

    .line 599
    .line 600
    invoke-interface {v14, v3, v4, v12, v13}, Landroid/view/Menu;->addSubMenu(IIILjava/lang/CharSequence;)Landroid/view/SubMenu;

    .line 601
    .line 602
    .line 603
    move-result-object v3

    .line 604
    invoke-interface {v3}, Landroid/view/SubMenu;->getItem()Landroid/view/MenuItem;

    .line 605
    .line 606
    .line 607
    move-result-object v4

    .line 608
    invoke-virtual {v2, v4}, Landroidx/appcompat/view/SupportMenuInflater$MenuState;->b(Landroid/view/MenuItem;)V

    .line 609
    .line 610
    .line 611
    move-object/from16 v4, p1

    .line 612
    .line 613
    invoke-virtual {v0, v4, v1, v3}, Landroidx/appcompat/view/SupportMenuInflater;->b(Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/view/Menu;)V

    .line 614
    .line 615
    .line 616
    goto :goto_b

    .line 617
    :cond_14
    move-object/from16 v4, p1

    .line 618
    .line 619
    move-object v11, v3

    .line 620
    move v10, v6

    .line 621
    :goto_b
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 622
    .line 623
    .line 624
    move-result v3

    .line 625
    const/4 v4, 0x2

    .line 626
    goto/16 :goto_2

    .line 627
    .line 628
    :cond_15
    new-instance v1, Ljava/lang/RuntimeException;

    .line 629
    .line 630
    const-string v2, "Unexpected end of document"

    .line 631
    .line 632
    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 633
    .line 634
    .line 635
    throw v1

    .line 636
    :cond_16
    return-void

    .line 637
    :cond_17
    move-object/from16 v4, p1

    .line 638
    .line 639
    goto/16 :goto_0
.end method

.method public final inflate(ILandroid/view/Menu;)V
    .locals 5

    .line 1
    const-string v0, "Error inflating menu XML"

    .line 2
    .line 3
    instance-of v1, p2, Landroidx/core/internal/view/SupportMenu;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    invoke-super {p0, p1, p2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    const/4 v1, 0x0

    .line 12
    const/4 v2, 0x0

    .line 13
    :try_start_0
    iget-object v3, p0, Landroidx/appcompat/view/SupportMenuInflater;->c:Landroid/content/Context;

    .line 14
    .line 15
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    invoke-virtual {v3, p1}, Landroid/content/res/Resources;->getLayout(I)Landroid/content/res/XmlResourceParser;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-static {v1}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    instance-of v3, p2, Landroidx/appcompat/view/menu/MenuBuilder;

    .line 28
    .line 29
    if-eqz v3, :cond_1

    .line 30
    .line 31
    move-object v3, p2

    .line 32
    check-cast v3, Landroidx/appcompat/view/menu/MenuBuilder;

    .line 33
    .line 34
    iget-boolean v4, v3, Landroidx/appcompat/view/menu/MenuBuilder;->p:Z

    .line 35
    .line 36
    if-nez v4, :cond_1

    .line 37
    .line 38
    invoke-virtual {v3}, Landroidx/appcompat/view/menu/MenuBuilder;->w()V

    .line 39
    .line 40
    .line 41
    const/4 v2, 0x1

    .line 42
    goto :goto_0

    .line 43
    :catchall_0
    move-exception p1

    .line 44
    goto :goto_3

    .line 45
    :catch_0
    move-exception p1

    .line 46
    goto :goto_1

    .line 47
    :catch_1
    move-exception p1

    .line 48
    goto :goto_2

    .line 49
    :cond_1
    :goto_0
    invoke-virtual {p0, v1, p1, p2}, Landroidx/appcompat/view/SupportMenuInflater;->b(Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/view/Menu;)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    .line 51
    .line 52
    if-eqz v2, :cond_2

    .line 53
    .line 54
    check-cast p2, Landroidx/appcompat/view/menu/MenuBuilder;

    .line 55
    .line 56
    invoke-virtual {p2}, Landroidx/appcompat/view/menu/MenuBuilder;->v()V

    .line 57
    .line 58
    .line 59
    :cond_2
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V

    .line 60
    .line 61
    .line 62
    return-void

    .line 63
    :goto_1
    :try_start_1
    new-instance v3, Landroid/view/InflateException;

    .line 64
    .line 65
    invoke-direct {v3, v0, p1}, Landroid/view/InflateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 66
    .line 67
    .line 68
    throw v3

    .line 69
    :goto_2
    new-instance v3, Landroid/view/InflateException;

    .line 70
    .line 71
    invoke-direct {v3, v0, p1}, Landroid/view/InflateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 72
    .line 73
    .line 74
    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 75
    :goto_3
    if-eqz v2, :cond_3

    .line 76
    .line 77
    check-cast p2, Landroidx/appcompat/view/menu/MenuBuilder;

    .line 78
    .line 79
    invoke-virtual {p2}, Landroidx/appcompat/view/menu/MenuBuilder;->v()V

    .line 80
    .line 81
    .line 82
    :cond_3
    if-eqz v1, :cond_4

    .line 83
    .line 84
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V

    .line 85
    .line 86
    .line 87
    :cond_4
    throw p1
.end method
