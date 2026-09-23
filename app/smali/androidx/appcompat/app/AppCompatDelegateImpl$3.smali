.class Landroidx/appcompat/app/AppCompatDelegateImpl$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/core/view/OnApplyWindowInsetsListener;


# instance fields
.field public final synthetic a:Landroidx/appcompat/app/AppCompatDelegateImpl;


# direct methods
.method public constructor <init>(Landroidx/appcompat/app/AppCompatDelegateImpl;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl$3;->a:Landroidx/appcompat/app/AppCompatDelegateImpl;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;
    .locals 16

    .line 1
    invoke-virtual/range {p2 .. p2}, Landroidx/core/view/WindowInsetsCompat;->i()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    move-object/from16 v1, p0

    .line 6
    .line 7
    iget-object v2, v1, Landroidx/appcompat/app/AppCompatDelegateImpl$3;->a:Landroidx/appcompat/app/AppCompatDelegateImpl;

    .line 8
    .line 9
    iget-object v3, v2, Landroidx/appcompat/app/AppCompatDelegateImpl;->o:Landroid/content/Context;

    .line 10
    .line 11
    invoke-virtual/range {p2 .. p2}, Landroidx/core/view/WindowInsetsCompat;->i()I

    .line 12
    .line 13
    .line 14
    move-result v4

    .line 15
    iget-object v5, v2, Landroidx/appcompat/app/AppCompatDelegateImpl;->z:Landroidx/appcompat/widget/ActionBarContextView;

    .line 16
    .line 17
    const/16 v6, 0x8

    .line 18
    .line 19
    const/4 v7, 0x0

    .line 20
    if-eqz v5, :cond_e

    .line 21
    .line 22
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 23
    .line 24
    .line 25
    move-result-object v5

    .line 26
    instance-of v5, v5, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 27
    .line 28
    if-eqz v5, :cond_e

    .line 29
    .line 30
    iget-object v5, v2, Landroidx/appcompat/app/AppCompatDelegateImpl;->z:Landroidx/appcompat/widget/ActionBarContextView;

    .line 31
    .line 32
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 33
    .line 34
    .line 35
    move-result-object v5

    .line 36
    check-cast v5, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 37
    .line 38
    iget-object v8, v2, Landroidx/appcompat/app/AppCompatDelegateImpl;->z:Landroidx/appcompat/widget/ActionBarContextView;

    .line 39
    .line 40
    invoke-virtual {v8}, Landroid/view/View;->isShown()Z

    .line 41
    .line 42
    .line 43
    move-result v8

    .line 44
    const/4 v9, 0x1

    .line 45
    if-eqz v8, :cond_c

    .line 46
    .line 47
    iget-object v8, v2, Landroidx/appcompat/app/AppCompatDelegateImpl;->h0:Landroid/graphics/Rect;

    .line 48
    .line 49
    if-nez v8, :cond_0

    .line 50
    .line 51
    new-instance v8, Landroid/graphics/Rect;

    .line 52
    .line 53
    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    .line 54
    .line 55
    .line 56
    iput-object v8, v2, Landroidx/appcompat/app/AppCompatDelegateImpl;->h0:Landroid/graphics/Rect;

    .line 57
    .line 58
    new-instance v8, Landroid/graphics/Rect;

    .line 59
    .line 60
    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    .line 61
    .line 62
    .line 63
    iput-object v8, v2, Landroidx/appcompat/app/AppCompatDelegateImpl;->i0:Landroid/graphics/Rect;

    .line 64
    .line 65
    :cond_0
    iget-object v8, v2, Landroidx/appcompat/app/AppCompatDelegateImpl;->h0:Landroid/graphics/Rect;

    .line 66
    .line 67
    iget-object v10, v2, Landroidx/appcompat/app/AppCompatDelegateImpl;->i0:Landroid/graphics/Rect;

    .line 68
    .line 69
    invoke-virtual/range {p2 .. p2}, Landroidx/core/view/WindowInsetsCompat;->g()I

    .line 70
    .line 71
    .line 72
    move-result v11

    .line 73
    invoke-virtual/range {p2 .. p2}, Landroidx/core/view/WindowInsetsCompat;->i()I

    .line 74
    .line 75
    .line 76
    move-result v12

    .line 77
    invoke-virtual/range {p2 .. p2}, Landroidx/core/view/WindowInsetsCompat;->h()I

    .line 78
    .line 79
    .line 80
    move-result v13

    .line 81
    invoke-virtual/range {p2 .. p2}, Landroidx/core/view/WindowInsetsCompat;->f()I

    .line 82
    .line 83
    .line 84
    move-result v14

    .line 85
    invoke-virtual {v8, v11, v12, v13, v14}, Landroid/graphics/Rect;->set(IIII)V

    .line 86
    .line 87
    .line 88
    iget-object v11, v2, Landroidx/appcompat/app/AppCompatDelegateImpl;->F:Landroid/view/ViewGroup;

    .line 89
    .line 90
    invoke-static {v11, v8, v10}, Landroidx/appcompat/widget/ViewUtils;->a(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 91
    .line 92
    .line 93
    iget v10, v8, Landroid/graphics/Rect;->top:I

    .line 94
    .line 95
    iget v11, v8, Landroid/graphics/Rect;->left:I

    .line 96
    .line 97
    iget v8, v8, Landroid/graphics/Rect;->right:I

    .line 98
    .line 99
    iget-object v12, v2, Landroidx/appcompat/app/AppCompatDelegateImpl;->F:Landroid/view/ViewGroup;

    .line 100
    .line 101
    invoke-static {v12}, Landroidx/core/view/ViewCompat;->n(Landroid/view/View;)Landroidx/core/view/WindowInsetsCompat;

    .line 102
    .line 103
    .line 104
    move-result-object v12

    .line 105
    if-nez v12, :cond_1

    .line 106
    .line 107
    move v13, v7

    .line 108
    goto :goto_0

    .line 109
    :cond_1
    invoke-virtual {v12}, Landroidx/core/view/WindowInsetsCompat;->g()I

    .line 110
    .line 111
    .line 112
    move-result v13

    .line 113
    :goto_0
    if-nez v12, :cond_2

    .line 114
    .line 115
    move v12, v7

    .line 116
    goto :goto_1

    .line 117
    :cond_2
    invoke-virtual {v12}, Landroidx/core/view/WindowInsetsCompat;->h()I

    .line 118
    .line 119
    .line 120
    move-result v12

    .line 121
    :goto_1
    iget v14, v5, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 122
    .line 123
    if-ne v14, v10, :cond_4

    .line 124
    .line 125
    iget v14, v5, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 126
    .line 127
    if-ne v14, v11, :cond_4

    .line 128
    .line 129
    iget v14, v5, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 130
    .line 131
    if-eq v14, v8, :cond_3

    .line 132
    .line 133
    goto :goto_2

    .line 134
    :cond_3
    move v8, v7

    .line 135
    goto :goto_3

    .line 136
    :cond_4
    :goto_2
    iput v10, v5, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 137
    .line 138
    iput v11, v5, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 139
    .line 140
    iput v8, v5, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 141
    .line 142
    move v8, v9

    .line 143
    :goto_3
    if-lez v10, :cond_5

    .line 144
    .line 145
    iget-object v10, v2, Landroidx/appcompat/app/AppCompatDelegateImpl;->H:Landroid/view/View;

    .line 146
    .line 147
    if-nez v10, :cond_5

    .line 148
    .line 149
    new-instance v10, Landroid/view/View;

    .line 150
    .line 151
    invoke-direct {v10, v3}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 152
    .line 153
    .line 154
    iput-object v10, v2, Landroidx/appcompat/app/AppCompatDelegateImpl;->H:Landroid/view/View;

    .line 155
    .line 156
    invoke-virtual {v10, v6}, Landroid/view/View;->setVisibility(I)V

    .line 157
    .line 158
    .line 159
    new-instance v10, Landroid/widget/FrameLayout$LayoutParams;

    .line 160
    .line 161
    iget v11, v5, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 162
    .line 163
    const/16 v14, 0x33

    .line 164
    .line 165
    const/4 v15, -0x1

    .line 166
    invoke-direct {v10, v15, v11, v14}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 167
    .line 168
    .line 169
    iput v13, v10, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 170
    .line 171
    iput v12, v10, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 172
    .line 173
    iget-object v11, v2, Landroidx/appcompat/app/AppCompatDelegateImpl;->F:Landroid/view/ViewGroup;

    .line 174
    .line 175
    iget-object v12, v2, Landroidx/appcompat/app/AppCompatDelegateImpl;->H:Landroid/view/View;

    .line 176
    .line 177
    invoke-virtual {v11, v12, v15, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 178
    .line 179
    .line 180
    goto :goto_4

    .line 181
    :cond_5
    iget-object v10, v2, Landroidx/appcompat/app/AppCompatDelegateImpl;->H:Landroid/view/View;

    .line 182
    .line 183
    if-eqz v10, :cond_7

    .line 184
    .line 185
    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 186
    .line 187
    .line 188
    move-result-object v10

    .line 189
    check-cast v10, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 190
    .line 191
    iget v11, v10, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 192
    .line 193
    iget v14, v5, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 194
    .line 195
    if-ne v11, v14, :cond_6

    .line 196
    .line 197
    iget v11, v10, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 198
    .line 199
    if-ne v11, v13, :cond_6

    .line 200
    .line 201
    iget v11, v10, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 202
    .line 203
    if-eq v11, v12, :cond_7

    .line 204
    .line 205
    :cond_6
    iput v14, v10, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 206
    .line 207
    iput v13, v10, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 208
    .line 209
    iput v12, v10, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 210
    .line 211
    iget-object v11, v2, Landroidx/appcompat/app/AppCompatDelegateImpl;->H:Landroid/view/View;

    .line 212
    .line 213
    invoke-virtual {v11, v10}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 214
    .line 215
    .line 216
    :cond_7
    :goto_4
    iget-object v10, v2, Landroidx/appcompat/app/AppCompatDelegateImpl;->H:Landroid/view/View;

    .line 217
    .line 218
    if-eqz v10, :cond_8

    .line 219
    .line 220
    goto :goto_5

    .line 221
    :cond_8
    move v9, v7

    .line 222
    :goto_5
    if-eqz v9, :cond_a

    .line 223
    .line 224
    invoke-virtual {v10}, Landroid/view/View;->getVisibility()I

    .line 225
    .line 226
    .line 227
    move-result v10

    .line 228
    if-eqz v10, :cond_a

    .line 229
    .line 230
    iget-object v10, v2, Landroidx/appcompat/app/AppCompatDelegateImpl;->H:Landroid/view/View;

    .line 231
    .line 232
    invoke-virtual {v10}, Landroid/view/View;->getWindowSystemUiVisibility()I

    .line 233
    .line 234
    .line 235
    move-result v11

    .line 236
    and-int/lit16 v11, v11, 0x2000

    .line 237
    .line 238
    if-eqz v11, :cond_9

    .line 239
    .line 240
    sget v11, Landroidx/appcompat/R$color;->abc_decor_view_status_guard_light:I

    .line 241
    .line 242
    invoke-virtual {v3, v11}, Landroid/content/Context;->getColor(I)I

    .line 243
    .line 244
    .line 245
    move-result v3

    .line 246
    goto :goto_6

    .line 247
    :cond_9
    sget v11, Landroidx/appcompat/R$color;->abc_decor_view_status_guard:I

    .line 248
    .line 249
    invoke-virtual {v3, v11}, Landroid/content/Context;->getColor(I)I

    .line 250
    .line 251
    .line 252
    move-result v3

    .line 253
    :goto_6
    invoke-virtual {v10, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 254
    .line 255
    .line 256
    :cond_a
    iget-boolean v3, v2, Landroidx/appcompat/app/AppCompatDelegateImpl;->M:Z

    .line 257
    .line 258
    if-nez v3, :cond_b

    .line 259
    .line 260
    if-eqz v9, :cond_b

    .line 261
    .line 262
    move v4, v7

    .line 263
    :cond_b
    move v3, v9

    .line 264
    move v9, v8

    .line 265
    goto :goto_7

    .line 266
    :cond_c
    iget v3, v5, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 267
    .line 268
    if-eqz v3, :cond_d

    .line 269
    .line 270
    iput v7, v5, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 271
    .line 272
    move v3, v7

    .line 273
    goto :goto_7

    .line 274
    :cond_d
    move v3, v7

    .line 275
    move v9, v3

    .line 276
    :goto_7
    if-eqz v9, :cond_f

    .line 277
    .line 278
    iget-object v8, v2, Landroidx/appcompat/app/AppCompatDelegateImpl;->z:Landroidx/appcompat/widget/ActionBarContextView;

    .line 279
    .line 280
    invoke-virtual {v8, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 281
    .line 282
    .line 283
    goto :goto_8

    .line 284
    :cond_e
    move v3, v7

    .line 285
    :cond_f
    :goto_8
    iget-object v2, v2, Landroidx/appcompat/app/AppCompatDelegateImpl;->H:Landroid/view/View;

    .line 286
    .line 287
    if-eqz v2, :cond_11

    .line 288
    .line 289
    if-eqz v3, :cond_10

    .line 290
    .line 291
    move v6, v7

    .line 292
    :cond_10
    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 293
    .line 294
    .line 295
    :cond_11
    if-eq v0, v4, :cond_12

    .line 296
    .line 297
    invoke-virtual/range {p2 .. p2}, Landroidx/core/view/WindowInsetsCompat;->g()I

    .line 298
    .line 299
    .line 300
    move-result v0

    .line 301
    invoke-virtual/range {p2 .. p2}, Landroidx/core/view/WindowInsetsCompat;->h()I

    .line 302
    .line 303
    .line 304
    move-result v2

    .line 305
    invoke-virtual/range {p2 .. p2}, Landroidx/core/view/WindowInsetsCompat;->f()I

    .line 306
    .line 307
    .line 308
    move-result v3

    .line 309
    move-object/from16 v5, p2

    .line 310
    .line 311
    invoke-virtual {v5, v0, v4, v2, v3}, Landroidx/core/view/WindowInsetsCompat;->m(IIII)Landroidx/core/view/WindowInsetsCompat;

    .line 312
    .line 313
    .line 314
    move-result-object v0

    .line 315
    :goto_9
    move-object/from16 v2, p1

    .line 316
    .line 317
    goto :goto_a

    .line 318
    :cond_12
    move-object/from16 v5, p2

    .line 319
    .line 320
    move-object v0, v5

    .line 321
    goto :goto_9

    .line 322
    :goto_a
    invoke-static {v2, v0}, Landroidx/core/view/ViewCompat;->t(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;

    .line 323
    .line 324
    .line 325
    move-result-object v0

    .line 326
    return-object v0
.end method
