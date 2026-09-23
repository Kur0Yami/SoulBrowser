.class public abstract Lcom/mycompany/app/expand/ExpandListAdapter;
.super Landroid/widget/BaseExpandableListAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mycompany/app/expand/ExpandListAdapter$GroupInfo;,
        Lcom/mycompany/app/expand/ExpandListAdapter$DummyView;,
        Lcom/mycompany/app/expand/ExpandListAdapter$ExpandAnimation;
    }
.end annotation


# instance fields
.field public a:Z

.field public b:Landroid/util/SparseArray;

.field public c:Z


# direct methods
.method public static a(I)I
    .locals 1

    .line 1
    sget v0, Lcom/mycompany/app/main/MainApp;->d1:I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/16 p0, 0x12c

    .line 6
    .line 7
    return p0

    .line 8
    :cond_0
    invoke-static {p0}, Ljava/lang/Math;->abs(I)I

    .line 9
    .line 10
    .line 11
    move-result p0

    .line 12
    int-to-float p0, p0

    .line 13
    sget v0, Lcom/mycompany/app/main/MainApp;->d1:I

    .line 14
    .line 15
    int-to-float v0, v0

    .line 16
    div-float/2addr p0, v0

    .line 17
    const/high16 v0, 0x42200000    # 40.0f

    .line 18
    .line 19
    mul-float/2addr p0, v0

    .line 20
    const/high16 v0, 0x43480000    # 200.0f

    .line 21
    .line 22
    add-float/2addr p0, v0

    .line 23
    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    .line 24
    .line 25
    .line 26
    move-result p0

    .line 27
    const/16 v0, 0x190

    .line 28
    .line 29
    if-le p0, v0, :cond_1

    .line 30
    .line 31
    return v0

    .line 32
    :cond_1
    return p0
.end method


# virtual methods
.method public final b(I)Lcom/mycompany/app/expand/ExpandListAdapter$GroupInfo;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/expand/ExpandListAdapter;->b:Landroid/util/SparseArray;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    check-cast v1, Lcom/mycompany/app/expand/ExpandListAdapter$GroupInfo;

    .line 8
    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    new-instance v1, Lcom/mycompany/app/expand/ExpandListAdapter$GroupInfo;

    .line 12
    .line 13
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 14
    .line 15
    .line 16
    const/4 v2, 0x0

    .line 17
    iput-boolean v2, v1, Lcom/mycompany/app/expand/ExpandListAdapter$GroupInfo;->a:Z

    .line 18
    .line 19
    iput-boolean v2, v1, Lcom/mycompany/app/expand/ExpandListAdapter$GroupInfo;->b:Z

    .line 20
    .line 21
    const/4 v2, -0x1

    .line 22
    iput v2, v1, Lcom/mycompany/app/expand/ExpandListAdapter$GroupInfo;->e:I

    .line 23
    .line 24
    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    :cond_0
    return-object v1
.end method

.method public abstract c(Landroid/view/View;II)Landroid/view/View;
.end method

.method public abstract d(I)I
.end method

.method public final e(I)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/mycompany/app/expand/ExpandListAdapter;->b(I)Lcom/mycompany/app/expand/ExpandListAdapter$GroupInfo;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iget-boolean p1, p1, Lcom/mycompany/app/expand/ExpandListAdapter$GroupInfo;->a:Z

    .line 6
    .line 7
    return p1
.end method

.method public final getChildType(II)I
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/mycompany/app/expand/ExpandListAdapter;->b(I)Lcom/mycompany/app/expand/ExpandListAdapter$GroupInfo;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iget-boolean p1, p1, Lcom/mycompany/app/expand/ExpandListAdapter$GroupInfo;->a:Z

    .line 6
    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    const/4 p1, 0x0

    .line 10
    return p1

    .line 11
    :cond_0
    const/4 p1, 0x1

    .line 12
    return p1
.end method

.method public final getChildTypeCount()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public final getChildView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 17

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move/from16 v2, p1

    .line 4
    .line 5
    move/from16 v0, p2

    .line 6
    .line 7
    move-object/from16 v3, p4

    .line 8
    .line 9
    invoke-virtual/range {p0 .. p1}, Lcom/mycompany/app/expand/ExpandListAdapter;->b(I)Lcom/mycompany/app/expand/ExpandListAdapter$GroupInfo;

    .line 10
    .line 11
    .line 12
    move-result-object v4

    .line 13
    iget-boolean v5, v4, Lcom/mycompany/app/expand/ExpandListAdapter$GroupInfo;->a:Z

    .line 14
    .line 15
    if-nez v5, :cond_0

    .line 16
    .line 17
    invoke-virtual {v1, v3, v2, v0}, Lcom/mycompany/app/expand/ExpandListAdapter;->c(Landroid/view/View;II)Landroid/view/View;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    return-object v0

    .line 22
    :cond_0
    instance-of v5, v3, Lcom/mycompany/app/expand/ExpandListAdapter$DummyView;

    .line 23
    .line 24
    const/4 v6, -0x1

    .line 25
    const/4 v7, 0x0

    .line 26
    if-nez v5, :cond_1

    .line 27
    .line 28
    new-instance v3, Lcom/mycompany/app/expand/ExpandListAdapter$DummyView;

    .line 29
    .line 30
    invoke-virtual/range {p5 .. p5}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 31
    .line 32
    .line 33
    move-result-object v5

    .line 34
    invoke-direct {v3, v5}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 35
    .line 36
    .line 37
    new-instance v5, Ljava/util/ArrayList;

    .line 38
    .line 39
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 40
    .line 41
    .line 42
    iput-object v5, v3, Lcom/mycompany/app/expand/ExpandListAdapter$DummyView;->c:Ljava/util/ArrayList;

    .line 43
    .line 44
    new-instance v5, Landroid/widget/AbsListView$LayoutParams;

    .line 45
    .line 46
    invoke-direct {v5, v6, v7}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v3, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 50
    .line 51
    .line 52
    :cond_1
    move-object v8, v3

    .line 53
    iget v3, v4, Lcom/mycompany/app/expand/ExpandListAdapter$GroupInfo;->c:I

    .line 54
    .line 55
    if-ge v0, v3, :cond_2

    .line 56
    .line 57
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    iput v7, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 62
    .line 63
    return-object v8

    .line 64
    :cond_2
    move-object/from16 v9, p5

    .line 65
    .line 66
    check-cast v9, Landroid/widget/ExpandableListView;

    .line 67
    .line 68
    move-object v5, v8

    .line 69
    check-cast v5, Lcom/mycompany/app/expand/ExpandListAdapter$DummyView;

    .line 70
    .line 71
    iget-object v0, v5, Lcom/mycompany/app/expand/ExpandListAdapter$DummyView;->c:Ljava/util/ArrayList;

    .line 72
    .line 73
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 74
    .line 75
    .line 76
    invoke-virtual {v9}, Landroid/widget/ListView;->getDivider()Landroid/graphics/drawable/Drawable;

    .line 77
    .line 78
    .line 79
    move-result-object v3

    .line 80
    invoke-virtual/range {p5 .. p5}, Landroid/view/View;->getMeasuredWidth()I

    .line 81
    .line 82
    .line 83
    move-result v10

    .line 84
    invoke-virtual {v9}, Landroid/widget/ListView;->getDividerHeight()I

    .line 85
    .line 86
    .line 87
    move-result v11

    .line 88
    if-nez v3, :cond_3

    .line 89
    .line 90
    goto :goto_0

    .line 91
    :cond_3
    iput-object v3, v5, Lcom/mycompany/app/expand/ExpandListAdapter$DummyView;->f:Landroid/graphics/drawable/Drawable;

    .line 92
    .line 93
    iput v10, v5, Lcom/mycompany/app/expand/ExpandListAdapter$DummyView;->g:I

    .line 94
    .line 95
    iput v11, v5, Lcom/mycompany/app/expand/ExpandListAdapter$DummyView;->h:I

    .line 96
    .line 97
    invoke-virtual {v3, v7, v7, v10, v11}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 98
    .line 99
    .line 100
    :goto_0
    invoke-virtual/range {p5 .. p5}, Landroid/view/View;->getWidth()I

    .line 101
    .line 102
    .line 103
    move-result v3

    .line 104
    const/high16 v10, 0x40000000    # 2.0f

    .line 105
    .line 106
    invoke-static {v3, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 107
    .line 108
    .line 109
    move-result v3

    .line 110
    invoke-static {v7, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 111
    .line 112
    .line 113
    move-result v11

    .line 114
    invoke-virtual/range {p5 .. p5}, Landroid/view/View;->getHeight()I

    .line 115
    .line 116
    .line 117
    move-result v12

    .line 118
    iget v13, v4, Lcom/mycompany/app/expand/ExpandListAdapter$GroupInfo;->d:I

    .line 119
    .line 120
    invoke-virtual/range {p0 .. p1}, Lcom/mycompany/app/expand/ExpandListAdapter;->d(I)I

    .line 121
    .line 122
    .line 123
    move-result v14

    .line 124
    invoke-static {v13, v14}, Ljava/lang/Math;->min(II)I

    .line 125
    .line 126
    .line 127
    move-result v13

    .line 128
    iget v14, v4, Lcom/mycompany/app/expand/ExpandListAdapter$GroupInfo;->c:I

    .line 129
    .line 130
    move v15, v7

    .line 131
    :goto_1
    const/16 p3, 0x1

    .line 132
    .line 133
    if-ge v14, v13, :cond_6

    .line 134
    .line 135
    const/4 v10, 0x0

    .line 136
    invoke-virtual {v1, v10, v2, v14}, Lcom/mycompany/app/expand/ExpandListAdapter;->c(Landroid/view/View;II)Landroid/view/View;

    .line 137
    .line 138
    .line 139
    move-result-object v10

    .line 140
    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 141
    .line 142
    .line 143
    move-result-object v16

    .line 144
    if-nez v16, :cond_4

    .line 145
    .line 146
    new-instance v1, Landroid/widget/AbsListView$LayoutParams;

    .line 147
    .line 148
    const/4 v2, -0x2

    .line 149
    invoke-direct {v1, v6, v2, v7}, Landroid/widget/AbsListView$LayoutParams;-><init>(III)V

    .line 150
    .line 151
    .line 152
    invoke-virtual {v10, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 153
    .line 154
    .line 155
    goto :goto_2

    .line 156
    :cond_4
    move-object/from16 v1, v16

    .line 157
    .line 158
    :goto_2
    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    .line 159
    .line 160
    .line 161
    move-result v2

    .line 162
    invoke-virtual {v10}, Landroid/view/View;->getMeasuredHeight()I

    .line 163
    .line 164
    .line 165
    move-result v6

    .line 166
    invoke-virtual {v10, v7, v7, v2, v6}, Landroid/view/View;->layout(IIII)V

    .line 167
    .line 168
    .line 169
    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 170
    .line 171
    .line 172
    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 173
    .line 174
    if-lez v1, :cond_5

    .line 175
    .line 176
    const/high16 v2, 0x40000000    # 2.0f

    .line 177
    .line 178
    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 179
    .line 180
    .line 181
    move-result v1

    .line 182
    goto :goto_3

    .line 183
    :cond_5
    const/high16 v2, 0x40000000    # 2.0f

    .line 184
    .line 185
    move v1, v11

    .line 186
    :goto_3
    invoke-virtual {v10, v3, v1}, Landroid/view/View;->measure(II)V

    .line 187
    .line 188
    .line 189
    invoke-virtual {v10}, Landroid/view/View;->getMeasuredHeight()I

    .line 190
    .line 191
    .line 192
    move-result v1

    .line 193
    add-int/2addr v15, v1

    .line 194
    if-lt v15, v12, :cond_7

    .line 195
    .line 196
    add-int/lit8 v0, v14, 0x1

    .line 197
    .line 198
    div-int v0, v15, v0

    .line 199
    .line 200
    sub-int/2addr v13, v14

    .line 201
    add-int/lit8 v13, v13, -0x1

    .line 202
    .line 203
    mul-int/2addr v13, v0

    .line 204
    add-int/2addr v15, v13

    .line 205
    :cond_6
    move v3, v15

    .line 206
    goto :goto_4

    .line 207
    :cond_7
    add-int/lit8 v14, v14, 0x1

    .line 208
    .line 209
    const/4 v6, -0x1

    .line 210
    move-object/from16 v1, p0

    .line 211
    .line 212
    move/from16 v2, p1

    .line 213
    .line 214
    goto :goto_1

    .line 215
    :goto_4
    invoke-virtual {v5}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 216
    .line 217
    .line 218
    move-result-object v0

    .line 219
    if-nez v0, :cond_8

    .line 220
    .line 221
    goto :goto_5

    .line 222
    :cond_8
    check-cast v0, Ljava/lang/Integer;

    .line 223
    .line 224
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 225
    .line 226
    .line 227
    move-result v7

    .line 228
    :goto_5
    iget-boolean v0, v4, Lcom/mycompany/app/expand/ExpandListAdapter$GroupInfo;->b:Z

    .line 229
    .line 230
    if-eqz v0, :cond_9

    .line 231
    .line 232
    move/from16 v1, p3

    .line 233
    .line 234
    if-eq v7, v1, :cond_9

    .line 235
    .line 236
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 237
    .line 238
    .line 239
    move-result-object v0

    .line 240
    invoke-virtual {v5, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 241
    .line 242
    .line 243
    new-instance v0, Lcom/mycompany/app/expand/ExpandListAdapter$1;

    .line 244
    .line 245
    move-object/from16 v1, p0

    .line 246
    .line 247
    move-object v2, v5

    .line 248
    move/from16 v5, p1

    .line 249
    .line 250
    invoke-direct/range {v0 .. v5}, Lcom/mycompany/app/expand/ExpandListAdapter$1;-><init>(Lcom/mycompany/app/expand/ExpandListAdapter;Lcom/mycompany/app/expand/ExpandListAdapter$DummyView;ILcom/mycompany/app/expand/ExpandListAdapter$GroupInfo;I)V

    .line 251
    .line 252
    .line 253
    invoke-virtual {v2, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 254
    .line 255
    .line 256
    return-object v8

    .line 257
    :cond_9
    move-object v2, v5

    .line 258
    if-nez v0, :cond_b

    .line 259
    .line 260
    const/4 v6, 0x2

    .line 261
    if-eq v7, v6, :cond_b

    .line 262
    .line 263
    iget v0, v4, Lcom/mycompany/app/expand/ExpandListAdapter$GroupInfo;->e:I

    .line 264
    .line 265
    const/4 v1, -0x1

    .line 266
    if-ne v0, v1, :cond_a

    .line 267
    .line 268
    iput v3, v4, Lcom/mycompany/app/expand/ExpandListAdapter$GroupInfo;->e:I

    .line 269
    .line 270
    :cond_a
    new-instance v0, Lcom/mycompany/app/expand/ExpandListAdapter$ExpandAnimation;

    .line 271
    .line 272
    iget v3, v4, Lcom/mycompany/app/expand/ExpandListAdapter$GroupInfo;->e:I

    .line 273
    .line 274
    move-object v5, v4

    .line 275
    iget v4, v5, Lcom/mycompany/app/expand/ExpandListAdapter$GroupInfo;->f:I

    .line 276
    .line 277
    move-object/from16 v1, p0

    .line 278
    .line 279
    invoke-direct/range {v0 .. v5}, Lcom/mycompany/app/expand/ExpandListAdapter$ExpandAnimation;-><init>(Lcom/mycompany/app/expand/ExpandListAdapter;Landroid/view/View;IILcom/mycompany/app/expand/ExpandListAdapter$GroupInfo;)V

    .line 280
    .line 281
    .line 282
    move-object v7, v0

    .line 283
    move-object v4, v5

    .line 284
    iget v0, v4, Lcom/mycompany/app/expand/ExpandListAdapter$GroupInfo;->f:I

    .line 285
    .line 286
    iget v1, v4, Lcom/mycompany/app/expand/ExpandListAdapter$GroupInfo;->e:I

    .line 287
    .line 288
    sub-int/2addr v0, v1

    .line 289
    invoke-static {v0}, Lcom/mycompany/app/expand/ExpandListAdapter;->a(I)I

    .line 290
    .line 291
    .line 292
    move-result v0

    .line 293
    int-to-long v0, v0

    .line 294
    invoke-virtual {v7, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 295
    .line 296
    .line 297
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    .line 298
    .line 299
    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    .line 300
    .line 301
    .line 302
    invoke-virtual {v7, v0}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 303
    .line 304
    .line 305
    new-instance v0, Lcom/mycompany/app/expand/ExpandListAdapter$2;

    .line 306
    .line 307
    move-object/from16 v1, p0

    .line 308
    .line 309
    move-object v5, v2

    .line 310
    move-object v3, v9

    .line 311
    move/from16 v2, p1

    .line 312
    .line 313
    invoke-direct/range {v0 .. v5}, Lcom/mycompany/app/expand/ExpandListAdapter$2;-><init>(Lcom/mycompany/app/expand/ExpandListAdapter;ILandroid/widget/ExpandableListView;Lcom/mycompany/app/expand/ExpandListAdapter$GroupInfo;Lcom/mycompany/app/expand/ExpandListAdapter$DummyView;)V

    .line 314
    .line 315
    .line 316
    move-object v2, v5

    .line 317
    invoke-virtual {v7, v0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 318
    .line 319
    .line 320
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 321
    .line 322
    .line 323
    move-result-object v0

    .line 324
    invoke-virtual {v2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 325
    .line 326
    .line 327
    invoke-virtual {v2, v7}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 328
    .line 329
    .line 330
    :cond_b
    return-object v8
.end method

.method public final getChildrenCount(I)I
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/mycompany/app/expand/ExpandListAdapter;->b(I)Lcom/mycompany/app/expand/ExpandListAdapter$GroupInfo;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-boolean v1, v0, Lcom/mycompany/app/expand/ExpandListAdapter$GroupInfo;->a:Z

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    iget p1, v0, Lcom/mycompany/app/expand/ExpandListAdapter$GroupInfo;->c:I

    .line 10
    .line 11
    add-int/lit8 p1, p1, 0x1

    .line 12
    .line 13
    return p1

    .line 14
    :cond_0
    invoke-virtual {p0, p1}, Lcom/mycompany/app/expand/ExpandListAdapter;->d(I)I

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    return p1
.end method
