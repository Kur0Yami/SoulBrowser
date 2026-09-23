.class final Lcom/google/android/material/datepicker/MaterialCalendarGridView;
.super Landroid/widget/GridView;
.source "SourceFile"


# instance fields
.field public final c:Ljava/util/Calendar;

.field public final f:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Landroid/widget/GridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 3
    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    invoke-static {p1}, Lcom/google/android/material/datepicker/UtcDates;->i(Ljava/util/Calendar;)Ljava/util/Calendar;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    iput-object p1, p0, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->c:Ljava/util/Calendar;

    .line 11
    .line 12
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    const p2, 0x101020d

    .line 17
    .line 18
    .line 19
    invoke-static {p1, p2}, Lcom/google/android/material/datepicker/MaterialDatePicker;->i(Landroid/content/Context;I)Z

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    if-eqz p1, :cond_0

    .line 24
    .line 25
    sget p1, Lcom/google/android/material/R$id;->cancel_button:I

    .line 26
    .line 27
    invoke-virtual {p0, p1}, Landroid/view/View;->setNextFocusLeftId(I)V

    .line 28
    .line 29
    .line 30
    sget p1, Lcom/google/android/material/R$id;->confirm_button:I

    .line 31
    .line 32
    invoke-virtual {p0, p1}, Landroid/view/View;->setNextFocusRightId(I)V

    .line 33
    .line 34
    .line 35
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    sget p2, Lcom/google/android/material/R$attr;->nestedScrollable:I

    .line 40
    .line 41
    invoke-static {p1, p2}, Lcom/google/android/material/datepicker/MaterialDatePicker;->i(Landroid/content/Context;I)Z

    .line 42
    .line 43
    .line 44
    move-result p1

    .line 45
    iput-boolean p1, p0, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->f:Z

    .line 46
    .line 47
    new-instance p1, Lcom/google/android/material/datepicker/MaterialCalendarGridView$1;

    .line 48
    .line 49
    invoke-direct {p1}, Landroidx/core/view/AccessibilityDelegateCompat;-><init>()V

    .line 50
    .line 51
    .line 52
    invoke-static {p0, p1}, Landroidx/core/view/ViewCompat;->z(Landroid/view/View;Landroidx/core/view/AccessibilityDelegateCompat;)V

    .line 53
    .line 54
    .line 55
    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/material/datepicker/MonthAdapter;
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/widget/GridView;->getAdapter()Landroid/widget/ListAdapter;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lcom/google/android/material/datepicker/MonthAdapter;

    .line 6
    .line 7
    return-object v0
.end method

.method public final b(I)Landroid/view/View;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    sub-int/2addr p1, v0

    .line 6
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    return-object p1
.end method

.method public final getAdapter()Landroid/widget/Adapter;
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/widget/GridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/datepicker/MonthAdapter;

    return-object v0
.end method

.method public final getAdapter()Landroid/widget/ListAdapter;
    .locals 1

    .line 2
    invoke-super {p0}, Landroid/widget/GridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/datepicker/MonthAdapter;

    return-object v0
.end method

.method public final onAttachedToWindow()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/widget/GridView;->onAttachedToWindow()V

    .line 2
    .line 3
    .line 4
    invoke-super {p0}, Landroid/widget/GridView;->getAdapter()Landroid/widget/ListAdapter;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    check-cast v0, Lcom/google/android/material/datepicker/MonthAdapter;

    .line 9
    .line 10
    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 30

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-super/range {p0 .. p1}, Landroid/widget/GridView;->onDraw(Landroid/graphics/Canvas;)V

    .line 4
    .line 5
    .line 6
    invoke-super {v0}, Landroid/widget/GridView;->getAdapter()Landroid/widget/ListAdapter;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    check-cast v1, Lcom/google/android/material/datepicker/MonthAdapter;

    .line 11
    .line 12
    iget-object v2, v1, Lcom/google/android/material/datepicker/MonthAdapter;->f:Lcom/google/android/material/datepicker/DateSelector;

    .line 13
    .line 14
    iget-object v3, v1, Lcom/google/android/material/datepicker/MonthAdapter;->c:Lcom/google/android/material/datepicker/Month;

    .line 15
    .line 16
    iget-object v4, v1, Lcom/google/android/material/datepicker/MonthAdapter;->h:Lcom/google/android/material/datepicker/CalendarStyle;

    .line 17
    .line 18
    invoke-virtual {v1}, Lcom/google/android/material/datepicker/MonthAdapter;->a()I

    .line 19
    .line 20
    .line 21
    move-result v5

    .line 22
    invoke-virtual {v0}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    .line 23
    .line 24
    .line 25
    move-result v6

    .line 26
    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    .line 27
    .line 28
    .line 29
    move-result v5

    .line 30
    invoke-virtual {v1}, Lcom/google/android/material/datepicker/MonthAdapter;->d()I

    .line 31
    .line 32
    .line 33
    move-result v6

    .line 34
    invoke-virtual {v0}, Landroid/widget/AdapterView;->getLastVisiblePosition()I

    .line 35
    .line 36
    .line 37
    move-result v7

    .line 38
    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    .line 39
    .line 40
    .line 41
    move-result v6

    .line 42
    invoke-virtual {v1, v5}, Lcom/google/android/material/datepicker/MonthAdapter;->c(I)Ljava/lang/Long;

    .line 43
    .line 44
    .line 45
    move-result-object v7

    .line 46
    invoke-virtual {v1, v6}, Lcom/google/android/material/datepicker/MonthAdapter;->c(I)Ljava/lang/Long;

    .line 47
    .line 48
    .line 49
    move-result-object v8

    .line 50
    invoke-interface {v2}, Lcom/google/android/material/datepicker/DateSelector;->v()Ljava/util/ArrayList;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 55
    .line 56
    .line 57
    move-result v9

    .line 58
    const/4 v11, 0x0

    .line 59
    :goto_0
    if-ge v11, v9, :cond_11

    .line 60
    .line 61
    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object v12

    .line 65
    add-int/lit8 v11, v11, 0x1

    .line 66
    .line 67
    check-cast v12, Landroidx/core/util/Pair;

    .line 68
    .line 69
    iget-object v13, v12, Landroidx/core/util/Pair;->a:Ljava/lang/Object;

    .line 70
    .line 71
    iget-object v12, v12, Landroidx/core/util/Pair;->b:Ljava/lang/Object;

    .line 72
    .line 73
    if-eqz v13, :cond_10

    .line 74
    .line 75
    if-nez v12, :cond_0

    .line 76
    .line 77
    goto :goto_0

    .line 78
    :cond_0
    check-cast v13, Ljava/lang/Long;

    .line 79
    .line 80
    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    .line 81
    .line 82
    .line 83
    move-result-wide v14

    .line 84
    check-cast v12, Ljava/lang/Long;

    .line 85
    .line 86
    move/from16 v16, v11

    .line 87
    .line 88
    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    .line 89
    .line 90
    .line 91
    move-result-wide v10

    .line 92
    if-eqz v7, :cond_1

    .line 93
    .line 94
    if-eqz v8, :cond_1

    .line 95
    .line 96
    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    .line 97
    .line 98
    .line 99
    move-result-wide v17

    .line 100
    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    .line 101
    .line 102
    .line 103
    move-result-wide v19

    .line 104
    cmp-long v13, v17, v19

    .line 105
    .line 106
    if-gtz v13, :cond_1

    .line 107
    .line 108
    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    .line 109
    .line 110
    .line 111
    move-result-wide v12

    .line 112
    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    .line 113
    .line 114
    .line 115
    move-result-wide v17

    .line 116
    cmp-long v12, v12, v17

    .line 117
    .line 118
    if-gez v12, :cond_2

    .line 119
    .line 120
    :cond_1
    move-object/from16 v20, v1

    .line 121
    .line 122
    move-object/from16 v17, v2

    .line 123
    .line 124
    move-object v13, v3

    .line 125
    goto/16 :goto_c

    .line 126
    .line 127
    :cond_2
    invoke-virtual {v0}, Landroid/view/View;->getLayoutDirection()I

    .line 128
    .line 129
    .line 130
    move-result v12

    .line 131
    const/4 v13, 0x1

    .line 132
    if-ne v12, v13, :cond_3

    .line 133
    .line 134
    move v12, v13

    .line 135
    goto :goto_1

    .line 136
    :cond_3
    const/4 v12, 0x0

    .line 137
    :goto_1
    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    .line 138
    .line 139
    .line 140
    move-result-wide v17

    .line 141
    cmp-long v17, v14, v17

    .line 142
    .line 143
    move/from16 v18, v13

    .line 144
    .line 145
    iget-object v13, v0, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->c:Ljava/util/Calendar;

    .line 146
    .line 147
    if-gez v17, :cond_6

    .line 148
    .line 149
    iget v14, v3, Lcom/google/android/material/datepicker/Month;->h:I

    .line 150
    .line 151
    rem-int v14, v5, v14

    .line 152
    .line 153
    if-nez v14, :cond_4

    .line 154
    .line 155
    const/4 v14, 0x0

    .line 156
    goto :goto_2

    .line 157
    :cond_4
    if-nez v12, :cond_5

    .line 158
    .line 159
    add-int/lit8 v14, v5, -0x1

    .line 160
    .line 161
    invoke-virtual {v0, v14}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->b(I)Landroid/view/View;

    .line 162
    .line 163
    .line 164
    move-result-object v14

    .line 165
    invoke-virtual {v14}, Landroid/view/View;->getRight()I

    .line 166
    .line 167
    .line 168
    move-result v14

    .line 169
    goto :goto_2

    .line 170
    :cond_5
    add-int/lit8 v14, v5, -0x1

    .line 171
    .line 172
    invoke-virtual {v0, v14}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->b(I)Landroid/view/View;

    .line 173
    .line 174
    .line 175
    move-result-object v14

    .line 176
    invoke-virtual {v14}, Landroid/view/View;->getLeft()I

    .line 177
    .line 178
    .line 179
    move-result v14

    .line 180
    :goto_2
    move v15, v14

    .line 181
    move v14, v5

    .line 182
    goto :goto_3

    .line 183
    :cond_6
    invoke-virtual {v13, v14, v15}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 184
    .line 185
    .line 186
    const/4 v14, 0x5

    .line 187
    invoke-virtual {v13, v14}, Ljava/util/Calendar;->get(I)I

    .line 188
    .line 189
    .line 190
    move-result v15

    .line 191
    add-int/lit8 v15, v15, -0x1

    .line 192
    .line 193
    invoke-virtual {v1}, Lcom/google/android/material/datepicker/MonthAdapter;->a()I

    .line 194
    .line 195
    .line 196
    move-result v14

    .line 197
    add-int/2addr v14, v15

    .line 198
    invoke-virtual {v0, v14}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->b(I)Landroid/view/View;

    .line 199
    .line 200
    .line 201
    move-result-object v15

    .line 202
    invoke-virtual {v15}, Landroid/view/View;->getLeft()I

    .line 203
    .line 204
    .line 205
    move-result v17

    .line 206
    invoke-virtual {v15}, Landroid/view/View;->getWidth()I

    .line 207
    .line 208
    .line 209
    move-result v15

    .line 210
    div-int/lit8 v15, v15, 0x2

    .line 211
    .line 212
    add-int v15, v15, v17

    .line 213
    .line 214
    :goto_3
    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    .line 215
    .line 216
    .line 217
    move-result-wide v20

    .line 218
    cmp-long v17, v10, v20

    .line 219
    .line 220
    if-lez v17, :cond_9

    .line 221
    .line 222
    add-int/lit8 v10, v6, 0x1

    .line 223
    .line 224
    iget v11, v3, Lcom/google/android/material/datepicker/Month;->h:I

    .line 225
    .line 226
    rem-int/2addr v10, v11

    .line 227
    if-nez v10, :cond_7

    .line 228
    .line 229
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    .line 230
    .line 231
    .line 232
    move-result v10

    .line 233
    goto :goto_4

    .line 234
    :cond_7
    if-nez v12, :cond_8

    .line 235
    .line 236
    invoke-virtual {v0, v6}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->b(I)Landroid/view/View;

    .line 237
    .line 238
    .line 239
    move-result-object v10

    .line 240
    invoke-virtual {v10}, Landroid/view/View;->getRight()I

    .line 241
    .line 242
    .line 243
    move-result v10

    .line 244
    goto :goto_4

    .line 245
    :cond_8
    invoke-virtual {v0, v6}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->b(I)Landroid/view/View;

    .line 246
    .line 247
    .line 248
    move-result-object v10

    .line 249
    invoke-virtual {v10}, Landroid/view/View;->getLeft()I

    .line 250
    .line 251
    .line 252
    move-result v10

    .line 253
    :goto_4
    move v11, v6

    .line 254
    :goto_5
    move-object/from16 v17, v2

    .line 255
    .line 256
    move-object v13, v3

    .line 257
    goto :goto_6

    .line 258
    :cond_9
    invoke-virtual {v13, v10, v11}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 259
    .line 260
    .line 261
    const/4 v10, 0x5

    .line 262
    invoke-virtual {v13, v10}, Ljava/util/Calendar;->get(I)I

    .line 263
    .line 264
    .line 265
    move-result v10

    .line 266
    add-int/lit8 v10, v10, -0x1

    .line 267
    .line 268
    invoke-virtual {v1}, Lcom/google/android/material/datepicker/MonthAdapter;->a()I

    .line 269
    .line 270
    .line 271
    move-result v11

    .line 272
    add-int/2addr v11, v10

    .line 273
    invoke-virtual {v0, v11}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->b(I)Landroid/view/View;

    .line 274
    .line 275
    .line 276
    move-result-object v10

    .line 277
    invoke-virtual {v10}, Landroid/view/View;->getLeft()I

    .line 278
    .line 279
    .line 280
    move-result v13

    .line 281
    invoke-virtual {v10}, Landroid/view/View;->getWidth()I

    .line 282
    .line 283
    .line 284
    move-result v10

    .line 285
    div-int/lit8 v10, v10, 0x2

    .line 286
    .line 287
    add-int/2addr v10, v13

    .line 288
    goto :goto_5

    .line 289
    :goto_6
    invoke-virtual {v1, v14}, Lcom/google/android/material/datepicker/MonthAdapter;->getItemId(I)J

    .line 290
    .line 291
    .line 292
    move-result-wide v2

    .line 293
    long-to-int v2, v2

    .line 294
    move/from16 v19, v2

    .line 295
    .line 296
    invoke-virtual {v1, v11}, Lcom/google/android/material/datepicker/MonthAdapter;->getItemId(I)J

    .line 297
    .line 298
    .line 299
    move-result-wide v2

    .line 300
    long-to-int v2, v2

    .line 301
    move/from16 v3, v19

    .line 302
    .line 303
    :goto_7
    if-gt v3, v2, :cond_f

    .line 304
    .line 305
    invoke-virtual {v0}, Landroid/widget/GridView;->getNumColumns()I

    .line 306
    .line 307
    .line 308
    move-result v19

    .line 309
    move-object/from16 v20, v1

    .line 310
    .line 311
    mul-int v1, v19, v3

    .line 312
    .line 313
    invoke-virtual {v0}, Landroid/widget/GridView;->getNumColumns()I

    .line 314
    .line 315
    .line 316
    move-result v19

    .line 317
    add-int v19, v19, v1

    .line 318
    .line 319
    move/from16 v21, v2

    .line 320
    .line 321
    add-int/lit8 v2, v19, -0x1

    .line 322
    .line 323
    invoke-virtual {v0, v1}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->b(I)Landroid/view/View;

    .line 324
    .line 325
    .line 326
    move-result-object v19

    .line 327
    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getTop()I

    .line 328
    .line 329
    .line 330
    move-result v22

    .line 331
    iget-object v0, v4, Lcom/google/android/material/datepicker/CalendarStyle;->a:Lcom/google/android/material/datepicker/CalendarItemStyle;

    .line 332
    .line 333
    iget-object v0, v0, Lcom/google/android/material/datepicker/CalendarItemStyle;->a:Landroid/graphics/Rect;

    .line 334
    .line 335
    iget v0, v0, Landroid/graphics/Rect;->top:I

    .line 336
    .line 337
    add-int v0, v22, v0

    .line 338
    .line 339
    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getBottom()I

    .line 340
    .line 341
    .line 342
    move-result v19

    .line 343
    move/from16 v22, v3

    .line 344
    .line 345
    iget-object v3, v4, Lcom/google/android/material/datepicker/CalendarStyle;->a:Lcom/google/android/material/datepicker/CalendarItemStyle;

    .line 346
    .line 347
    iget-object v3, v3, Lcom/google/android/material/datepicker/CalendarItemStyle;->a:Landroid/graphics/Rect;

    .line 348
    .line 349
    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    .line 350
    .line 351
    sub-int v3, v19, v3

    .line 352
    .line 353
    if-nez v12, :cond_c

    .line 354
    .line 355
    if-le v1, v14, :cond_a

    .line 356
    .line 357
    const/4 v1, 0x0

    .line 358
    goto :goto_8

    .line 359
    :cond_a
    move v1, v15

    .line 360
    :goto_8
    if-le v11, v2, :cond_b

    .line 361
    .line 362
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    .line 363
    .line 364
    .line 365
    move-result v2

    .line 366
    goto :goto_b

    .line 367
    :cond_b
    move v2, v10

    .line 368
    goto :goto_b

    .line 369
    :cond_c
    if-le v11, v2, :cond_d

    .line 370
    .line 371
    const/4 v2, 0x0

    .line 372
    goto :goto_9

    .line 373
    :cond_d
    move v2, v10

    .line 374
    :goto_9
    if-le v1, v14, :cond_e

    .line 375
    .line 376
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    .line 377
    .line 378
    .line 379
    move-result v1

    .line 380
    goto :goto_a

    .line 381
    :cond_e
    move v1, v15

    .line 382
    :goto_a
    move/from16 v29, v2

    .line 383
    .line 384
    move v2, v1

    .line 385
    move/from16 v1, v29

    .line 386
    .line 387
    :goto_b
    int-to-float v1, v1

    .line 388
    int-to-float v0, v0

    .line 389
    int-to-float v2, v2

    .line 390
    int-to-float v3, v3

    .line 391
    move/from16 v25, v0

    .line 392
    .line 393
    iget-object v0, v4, Lcom/google/android/material/datepicker/CalendarStyle;->h:Landroid/graphics/Paint;

    .line 394
    .line 395
    move-object/from16 v23, p1

    .line 396
    .line 397
    move-object/from16 v28, v0

    .line 398
    .line 399
    move/from16 v24, v1

    .line 400
    .line 401
    move/from16 v26, v2

    .line 402
    .line 403
    move/from16 v27, v3

    .line 404
    .line 405
    invoke-virtual/range {v23 .. v28}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 406
    .line 407
    .line 408
    add-int/lit8 v3, v22, 0x1

    .line 409
    .line 410
    move-object/from16 v0, p0

    .line 411
    .line 412
    move-object/from16 v1, v20

    .line 413
    .line 414
    move/from16 v2, v21

    .line 415
    .line 416
    goto :goto_7

    .line 417
    :cond_f
    move-object/from16 v0, p0

    .line 418
    .line 419
    move-object v3, v13

    .line 420
    move/from16 v11, v16

    .line 421
    .line 422
    move-object/from16 v2, v17

    .line 423
    .line 424
    goto/16 :goto_0

    .line 425
    .line 426
    :goto_c
    move-object/from16 v0, p0

    .line 427
    .line 428
    move-object v3, v13

    .line 429
    move/from16 v11, v16

    .line 430
    .line 431
    move-object/from16 v2, v17

    .line 432
    .line 433
    move-object/from16 v1, v20

    .line 434
    .line 435
    goto/16 :goto_0

    .line 436
    .line 437
    :cond_10
    move/from16 v16, v11

    .line 438
    .line 439
    move-object/from16 v0, p0

    .line 440
    .line 441
    goto/16 :goto_0

    .line 442
    .line 443
    :cond_11
    return-void
.end method

.method public final onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 0

    .line 1
    if-eqz p1, :cond_2

    .line 2
    .line 3
    const/16 p1, 0x21

    .line 4
    .line 5
    if-ne p2, p1, :cond_0

    .line 6
    .line 7
    invoke-super {p0}, Landroid/widget/GridView;->getAdapter()Landroid/widget/ListAdapter;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    check-cast p1, Lcom/google/android/material/datepicker/MonthAdapter;

    .line 12
    .line 13
    invoke-virtual {p1}, Lcom/google/android/material/datepicker/MonthAdapter;->d()I

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    invoke-virtual {p0, p1}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->setSelection(I)V

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :cond_0
    const/16 p1, 0x82

    .line 22
    .line 23
    if-ne p2, p1, :cond_1

    .line 24
    .line 25
    invoke-super {p0}, Landroid/widget/GridView;->getAdapter()Landroid/widget/ListAdapter;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    check-cast p1, Lcom/google/android/material/datepicker/MonthAdapter;

    .line 30
    .line 31
    invoke-virtual {p1}, Lcom/google/android/material/datepicker/MonthAdapter;->a()I

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    invoke-virtual {p0, p1}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->setSelection(I)V

    .line 36
    .line 37
    .line 38
    return-void

    .line 39
    :cond_1
    const/4 p1, 0x1

    .line 40
    invoke-super {p0, p1, p2, p3}, Landroid/widget/GridView;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 41
    .line 42
    .line 43
    return-void

    .line 44
    :cond_2
    const/4 p1, 0x0

    .line 45
    invoke-super {p0, p1, p2, p3}, Landroid/widget/GridView;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 46
    .line 47
    .line 48
    return-void
.end method

.method public final onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3

    .line 1
    invoke-super {p0, p1, p2}, Landroid/widget/GridView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    .line 2
    .line 3
    .line 4
    move-result p2

    .line 5
    const/4 v0, 0x0

    .line 6
    if-nez p2, :cond_0

    .line 7
    .line 8
    return v0

    .line 9
    :cond_0
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    .line 10
    .line 11
    .line 12
    move-result p2

    .line 13
    const/4 v1, -0x1

    .line 14
    const/4 v2, 0x1

    .line 15
    if-eq p2, v1, :cond_3

    .line 16
    .line 17
    invoke-super {p0}, Landroid/widget/GridView;->getAdapter()Landroid/widget/ListAdapter;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    check-cast v1, Lcom/google/android/material/datepicker/MonthAdapter;

    .line 22
    .line 23
    invoke-virtual {v1}, Lcom/google/android/material/datepicker/MonthAdapter;->a()I

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    if-lt p2, v1, :cond_1

    .line 28
    .line 29
    invoke-super {p0}, Landroid/widget/GridView;->getAdapter()Landroid/widget/ListAdapter;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    check-cast v1, Lcom/google/android/material/datepicker/MonthAdapter;

    .line 34
    .line 35
    invoke-virtual {v1}, Lcom/google/android/material/datepicker/MonthAdapter;->d()I

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    if-gt p2, v1, :cond_1

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_1
    const/16 p2, 0x13

    .line 43
    .line 44
    if-ne p2, p1, :cond_2

    .line 45
    .line 46
    invoke-super {p0}, Landroid/widget/GridView;->getAdapter()Landroid/widget/ListAdapter;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    check-cast p1, Lcom/google/android/material/datepicker/MonthAdapter;

    .line 51
    .line 52
    invoke-virtual {p1}, Lcom/google/android/material/datepicker/MonthAdapter;->a()I

    .line 53
    .line 54
    .line 55
    move-result p1

    .line 56
    invoke-virtual {p0, p1}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->setSelection(I)V

    .line 57
    .line 58
    .line 59
    return v2

    .line 60
    :cond_2
    return v0

    .line 61
    :cond_3
    :goto_0
    return v2
.end method

.method public final onMeasure(II)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->f:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const p2, 0xffffff

    .line 6
    .line 7
    .line 8
    const/high16 v0, -0x80000000

    .line 9
    .line 10
    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 11
    .line 12
    .line 13
    move-result p2

    .line 14
    invoke-super {p0, p1, p2}, Landroid/widget/GridView;->onMeasure(II)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    .line 22
    .line 23
    .line 24
    move-result p2

    .line 25
    iput p2, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 26
    .line 27
    return-void

    .line 28
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/GridView;->onMeasure(II)V

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method public final bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .locals 0

    .line 1
    check-cast p1, Landroid/widget/ListAdapter;

    invoke-virtual {p0, p1}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public final setAdapter(Landroid/widget/ListAdapter;)V
    .locals 4

    .line 2
    instance-of v0, p1, Lcom/google/android/material/datepicker/MonthAdapter;

    if-eqz v0, :cond_0

    .line 3
    invoke-super {p0, p1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-class v0, Lcom/google/android/material/datepicker/MaterialCalendarGridView;

    .line 5
    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/google/android/material/datepicker/MonthAdapter;

    .line 6
    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    aput-object v1, v2, v0

    .line 7
    const-string v0, "%1$s must have its Adapter set to a %2$s"

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final setSelection(I)V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/widget/GridView;->getAdapter()Landroid/widget/ListAdapter;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lcom/google/android/material/datepicker/MonthAdapter;

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/google/android/material/datepicker/MonthAdapter;->a()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-ge p1, v0, :cond_0

    .line 12
    .line 13
    invoke-super {p0}, Landroid/widget/GridView;->getAdapter()Landroid/widget/ListAdapter;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    check-cast p1, Lcom/google/android/material/datepicker/MonthAdapter;

    .line 18
    .line 19
    invoke-virtual {p1}, Lcom/google/android/material/datepicker/MonthAdapter;->a()I

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    invoke-super {p0, p1}, Landroid/widget/GridView;->setSelection(I)V

    .line 24
    .line 25
    .line 26
    return-void

    .line 27
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/GridView;->setSelection(I)V

    .line 28
    .line 29
    .line 30
    return-void
.end method
