.class public Lcom/mycompany/app/main/list/MainListImage;
.super Lcom/mycompany/app/setting/CastActivity;
.source "SourceFile"


# instance fields
.field public C1:Z

.field public D1:I

.field public E1:Ljava/lang/String;

.field public F1:Lcom/mycompany/app/view/MyMainRelative;

.field public G1:Lcom/mycompany/app/main/MainListView;

.field public H1:Lcom/mycompany/app/main/MainListView$ListViewHolder;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/main/list/MainListImage;->G1:Lcom/mycompany/app/main/MainListView;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    return p1

    .line 7
    :cond_0
    invoke-virtual {v0, p1}, Lcom/mycompany/app/main/MainListView;->q(Landroid/view/MotionEvent;)V

    .line 8
    .line 9
    .line 10
    invoke-super {p0, p1}, Lcom/mycompany/app/main/MainActivity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    return p1
.end method

.method public final l0()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/main/list/MainListImage;->G1:Lcom/mycompany/app/main/MainListView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/mycompany/app/main/MainListView;->V()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final onBackPressed()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/mycompany/app/main/MainActivity;->Y()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-virtual {p0}, Lcom/mycompany/app/main/list/MainListImage;->l0()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lcom/mycompany/app/main/MainActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/mycompany/app/main/list/MainListImage;->G1:Lcom/mycompany/app/main/MainListView;

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    goto :goto_1

    .line 9
    :cond_0
    invoke-virtual {v0, p1}, Lcom/mycompany/app/main/MainListView;->b0(Landroid/content/res/Configuration;)Z

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    if-eqz p1, :cond_2

    .line 14
    .line 15
    iget-object p1, p0, Lcom/mycompany/app/main/list/MainListImage;->F1:Lcom/mycompany/app/view/MyMainRelative;

    .line 16
    .line 17
    if-eqz p1, :cond_2

    .line 18
    .line 19
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    sget-boolean v1, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 24
    .line 25
    if-eqz v1, :cond_1

    .line 26
    .line 27
    const/high16 v1, -0x1000000

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    const v1, -0x70708

    .line 31
    .line 32
    .line 33
    :goto_0
    invoke-virtual {p1, v0, v1}, Lcom/mycompany/app/view/MyMainRelative;->b(Landroid/view/Window;I)V

    .line 34
    .line 35
    .line 36
    :cond_2
    :goto_1
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-super/range {p0 .. p1}, Lcom/mycompany/app/setting/CastActivity;->onCreate(Landroid/os/Bundle;)V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x1

    .line 7
    iput-boolean v1, v0, Lcom/mycompany/app/main/list/MainListImage;->C1:Z

    .line 8
    .line 9
    invoke-static {v0}, Lcom/mycompany/app/main/MainUtil;->u7(Landroid/app/Activity;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    const-string v3, "EXTRA_TYPE"

    .line 17
    .line 18
    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    iput v2, v0, Lcom/mycompany/app/main/list/MainListImage;->D1:I

    .line 23
    .line 24
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    const-string v3, "EXTRA_PATH"

    .line 29
    .line 30
    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    iput-object v2, v0, Lcom/mycompany/app/main/list/MainListImage;->E1:Ljava/lang/String;

    .line 35
    .line 36
    sget v2, Lnet/kaki87/soul2/testing/R$id;->list_icon_frame:I

    .line 37
    .line 38
    sget v3, Lnet/kaki87/soul2/testing/R$id;->list_bottom_view:I

    .line 39
    .line 40
    sget v4, Lnet/kaki87/soul2/testing/R$id;->list_cast_icon:I

    .line 41
    .line 42
    new-instance v5, Lcom/mycompany/app/view/MyMainRelative;

    .line 43
    .line 44
    invoke-direct {v5, v0}, Lcom/mycompany/app/view/MyMainRelative;-><init>(Landroid/content/Context;)V

    .line 45
    .line 46
    .line 47
    new-instance v6, Landroid/view/ViewGroup$LayoutParams;

    .line 48
    .line 49
    const/4 v7, -0x1

    .line 50
    invoke-direct {v6, v7, v7}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v5, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 54
    .line 55
    .line 56
    new-instance v6, Landroid/widget/FrameLayout;

    .line 57
    .line 58
    invoke-direct {v6, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 59
    .line 60
    .line 61
    const/4 v8, 0x2

    .line 62
    invoke-static {v7, v7, v8, v3}, Landroidx/work/impl/workers/a;->h(IIII)Landroid/widget/RelativeLayout$LayoutParams;

    .line 63
    .line 64
    .line 65
    move-result-object v9

    .line 66
    invoke-virtual {v5, v6, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 67
    .line 68
    .line 69
    new-instance v9, Lcom/mycompany/app/fragment/FragmentExpandView;

    .line 70
    .line 71
    invoke-direct {v9, v0}, Lcom/mycompany/app/fragment/FragmentExpandView;-><init>(Landroid/content/Context;)V

    .line 72
    .line 73
    .line 74
    const/4 v10, 0x0

    .line 75
    invoke-virtual {v9, v10}, Landroid/widget/ExpandableListView;->setGroupIndicator(Landroid/graphics/drawable/Drawable;)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {v9, v10}, Landroid/widget/ExpandableListView;->setChildDivider(Landroid/graphics/drawable/Drawable;)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {v9, v10}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 82
    .line 83
    .line 84
    const/4 v11, 0x0

    .line 85
    invoke-virtual {v9, v11}, Landroid/view/View;->setVerticalScrollBarEnabled(Z)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {v9, v11}, Landroid/view/View;->setHorizontalScrollBarEnabled(Z)V

    .line 89
    .line 90
    .line 91
    new-instance v12, Landroid/graphics/drawable/ColorDrawable;

    .line 92
    .line 93
    invoke-direct {v12, v11}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {v9, v12}, Landroid/widget/AbsListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 97
    .line 98
    .line 99
    new-instance v11, Landroid/widget/FrameLayout$LayoutParams;

    .line 100
    .line 101
    invoke-direct {v11, v7, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 102
    .line 103
    .line 104
    sget v12, Lcom/mycompany/app/main/MainApp;->b1:I

    .line 105
    .line 106
    iput v12, v11, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 107
    .line 108
    invoke-virtual {v6, v9, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 109
    .line 110
    .line 111
    new-instance v11, Lcom/mycompany/app/view/MyListGroup;

    .line 112
    .line 113
    invoke-direct {v11, v0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 114
    .line 115
    .line 116
    const/4 v12, 0x4

    .line 117
    invoke-virtual {v11, v12}, Landroid/view/View;->setVisibility(I)V

    .line 118
    .line 119
    .line 120
    const/4 v13, -0x2

    .line 121
    invoke-virtual {v6, v11, v7, v13}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 122
    .line 123
    .line 124
    new-instance v14, Lcom/mycompany/app/view/MyScrollBar;

    .line 125
    .line 126
    invoke-direct {v14, v0}, Lcom/mycompany/app/view/MyScrollBar;-><init>(Landroid/content/Context;)V

    .line 127
    .line 128
    .line 129
    sget v15, Lcom/mycompany/app/main/MainApp;->b1:I

    .line 130
    .line 131
    move/from16 p1, v8

    .line 132
    .line 133
    sget v8, Lcom/mycompany/app/main/MainApp;->i1:I

    .line 134
    .line 135
    iput v15, v14, Lcom/mycompany/app/view/MyScrollBar;->O:I

    .line 136
    .line 137
    iput v8, v14, Lcom/mycompany/app/view/MyScrollBar;->P:I

    .line 138
    .line 139
    invoke-virtual {v14, v12}, Lcom/mycompany/app/view/MyScrollBar;->setVisibility(I)V

    .line 140
    .line 141
    .line 142
    new-instance v8, Landroid/widget/FrameLayout$LayoutParams;

    .line 143
    .line 144
    sget v15, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 145
    .line 146
    invoke-direct {v8, v15, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 147
    .line 148
    .line 149
    const v15, 0x800005

    .line 150
    .line 151
    .line 152
    iput v15, v8, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 153
    .line 154
    invoke-virtual {v6, v14, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 155
    .line 156
    .line 157
    new-instance v8, Lcom/mycompany/app/view/MyFadeImage;

    .line 158
    .line 159
    invoke-direct {v8, v0}, Lcom/mycompany/app/view/MyFadeImage;-><init>(Landroid/content/Context;)V

    .line 160
    .line 161
    .line 162
    sget-object v12, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    .line 163
    .line 164
    invoke-virtual {v8, v12}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 165
    .line 166
    .line 167
    sget v15, Lnet/kaki87/soul2/testing/R$drawable;->logo_gray:I

    .line 168
    .line 169
    invoke-virtual {v8, v15}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 170
    .line 171
    .line 172
    const/16 v15, 0x8

    .line 173
    .line 174
    invoke-virtual {v8, v15}, Lcom/mycompany/app/view/MyFadeImage;->setVisibility(I)V

    .line 175
    .line 176
    .line 177
    new-instance v13, Landroid/widget/FrameLayout$LayoutParams;

    .line 178
    .line 179
    invoke-direct {v13, v7, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 180
    .line 181
    .line 182
    sget v1, Lcom/mycompany/app/main/MainApp;->b1:I

    .line 183
    .line 184
    iput v1, v13, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 185
    .line 186
    invoke-virtual {v6, v8, v13}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 187
    .line 188
    .line 189
    new-instance v1, Lcom/mycompany/app/view/MyCoverView;

    .line 190
    .line 191
    invoke-direct {v1, v0}, Lcom/mycompany/app/view/MyCoverView;-><init>(Landroid/content/Context;)V

    .line 192
    .line 193
    .line 194
    invoke-virtual {v1, v15}, Lcom/mycompany/app/view/MyCoverView;->setVisibility(I)V

    .line 195
    .line 196
    .line 197
    new-instance v13, Landroid/widget/FrameLayout$LayoutParams;

    .line 198
    .line 199
    invoke-direct {v13, v7, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 200
    .line 201
    .line 202
    sget v15, Lcom/mycompany/app/main/MainApp;->b1:I

    .line 203
    .line 204
    iput v15, v13, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 205
    .line 206
    invoke-virtual {v6, v1, v13}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 207
    .line 208
    .line 209
    new-instance v13, Lcom/mycompany/app/view/MyHeaderView;

    .line 210
    .line 211
    invoke-direct {v13, v0}, Lcom/mycompany/app/view/MyHeaderView;-><init>(Landroid/content/Context;)V

    .line 212
    .line 213
    .line 214
    sget v15, Lcom/mycompany/app/main/MainApp;->b1:I

    .line 215
    .line 216
    invoke-virtual {v6, v13, v7, v15}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 217
    .line 218
    .line 219
    new-instance v15, Lcom/mycompany/app/view/MyButtonImage;

    .line 220
    .line 221
    invoke-direct {v15, v0}, Lcom/mycompany/app/view/MyButtonImage;-><init>(Landroid/content/Context;)V

    .line 222
    .line 223
    .line 224
    invoke-virtual {v15, v12}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 225
    .line 226
    .line 227
    new-instance v7, Landroid/widget/RelativeLayout$LayoutParams;

    .line 228
    .line 229
    sget v10, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 230
    .line 231
    move-object/from16 v18, v1

    .line 232
    .line 233
    sget v1, Lcom/mycompany/app/main/MainApp;->b1:I

    .line 234
    .line 235
    invoke-direct {v7, v10, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 236
    .line 237
    .line 238
    sget v1, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 239
    .line 240
    invoke-virtual {v7, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 241
    .line 242
    .line 243
    invoke-virtual {v13, v15, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 244
    .line 245
    .line 246
    new-instance v1, Landroidx/appcompat/widget/AppCompatTextView;

    .line 247
    .line 248
    const/4 v7, 0x0

    .line 249
    invoke-direct {v1, v0, v7}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 250
    .line 251
    .line 252
    const/16 v7, 0x10

    .line 253
    .line 254
    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setGravity(I)V

    .line 255
    .line 256
    .line 257
    const/4 v10, 0x1

    .line 258
    invoke-virtual {v1, v10}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 259
    .line 260
    .line 261
    const/high16 v7, 0x41900000    # 18.0f

    .line 262
    .line 263
    invoke-virtual {v1, v10, v7}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 264
    .line 265
    .line 266
    new-instance v7, Landroid/widget/RelativeLayout$LayoutParams;

    .line 267
    .line 268
    sget v10, Lcom/mycompany/app/main/MainApp;->b1:I

    .line 269
    .line 270
    move-object/from16 v17, v15

    .line 271
    .line 272
    const/4 v15, -0x1

    .line 273
    invoke-direct {v7, v15, v10}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 274
    .line 275
    .line 276
    const/16 v10, 0x10

    .line 277
    .line 278
    invoke-virtual {v7, v10, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 279
    .line 280
    .line 281
    sget v15, Lcom/mycompany/app/main/MainApp;->i1:I

    .line 282
    .line 283
    invoke-virtual {v7, v15}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 284
    .line 285
    .line 286
    invoke-virtual {v13, v1, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 287
    .line 288
    .line 289
    new-instance v7, Landroid/widget/FrameLayout;

    .line 290
    .line 291
    invoke-direct {v7, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 292
    .line 293
    .line 294
    invoke-virtual {v7, v2}, Landroid/view/View;->setId(I)V

    .line 295
    .line 296
    .line 297
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 298
    .line 299
    sget v15, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 300
    .line 301
    move-object/from16 v16, v1

    .line 302
    .line 303
    const/4 v1, -0x2

    .line 304
    invoke-direct {v2, v1, v15}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 305
    .line 306
    .line 307
    invoke-virtual {v2, v10, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 308
    .line 309
    .line 310
    sget v1, Lcom/mycompany/app/main/MainApp;->G1:I

    .line 311
    .line 312
    iput v1, v2, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 313
    .line 314
    invoke-virtual {v13, v7, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 315
    .line 316
    .line 317
    const/high16 v1, 0x41600000    # 14.0f

    .line 318
    .line 319
    invoke-static {v0, v1}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 320
    .line 321
    .line 322
    move-result v1

    .line 323
    float-to-int v1, v1

    .line 324
    new-instance v2, Lcom/mycompany/app/view/MyButtonImage;

    .line 325
    .line 326
    invoke-direct {v2, v0}, Lcom/mycompany/app/view/MyButtonImage;-><init>(Landroid/content/Context;)V

    .line 327
    .line 328
    .line 329
    invoke-virtual {v2, v1, v1, v1, v1}, Landroid/view/View;->setPadding(IIII)V

    .line 330
    .line 331
    .line 332
    invoke-virtual {v2, v12}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 333
    .line 334
    .line 335
    new-instance v10, Landroid/widget/FrameLayout$LayoutParams;

    .line 336
    .line 337
    sget v15, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 338
    .line 339
    invoke-direct {v10, v15, v15}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 340
    .line 341
    .line 342
    const v15, 0x800005

    .line 343
    .line 344
    .line 345
    iput v15, v10, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 346
    .line 347
    sget v15, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 348
    .line 349
    mul-int/lit8 v15, v15, 0x2

    .line 350
    .line 351
    invoke-virtual {v10, v15}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 352
    .line 353
    .line 354
    invoke-virtual {v7, v2, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 355
    .line 356
    .line 357
    new-instance v10, Lcom/mycompany/app/view/MyButtonImage;

    .line 358
    .line 359
    invoke-direct {v10, v0}, Lcom/mycompany/app/view/MyButtonImage;-><init>(Landroid/content/Context;)V

    .line 360
    .line 361
    .line 362
    invoke-virtual {v10, v1, v1, v1, v1}, Landroid/view/View;->setPadding(IIII)V

    .line 363
    .line 364
    .line 365
    invoke-virtual {v10, v12}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 366
    .line 367
    .line 368
    new-instance v15, Landroid/widget/FrameLayout$LayoutParams;

    .line 369
    .line 370
    move-object/from16 p1, v2

    .line 371
    .line 372
    sget v2, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 373
    .line 374
    invoke-direct {v15, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 375
    .line 376
    .line 377
    const v2, 0x800005

    .line 378
    .line 379
    .line 380
    iput v2, v15, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 381
    .line 382
    sget v2, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 383
    .line 384
    invoke-virtual {v15, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 385
    .line 386
    .line 387
    invoke-virtual {v7, v10, v15}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 388
    .line 389
    .line 390
    new-instance v2, Lcom/mycompany/app/view/MyButtonImage;

    .line 391
    .line 392
    invoke-direct {v2, v0}, Lcom/mycompany/app/view/MyButtonImage;-><init>(Landroid/content/Context;)V

    .line 393
    .line 394
    .line 395
    invoke-virtual {v2, v1, v1, v1, v1}, Landroid/view/View;->setPadding(IIII)V

    .line 396
    .line 397
    .line 398
    invoke-virtual {v2, v12}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 399
    .line 400
    .line 401
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 402
    .line 403
    sget v12, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 404
    .line 405
    invoke-direct {v1, v12, v12}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 406
    .line 407
    .line 408
    const v15, 0x800005

    .line 409
    .line 410
    .line 411
    iput v15, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 412
    .line 413
    invoke-virtual {v7, v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 414
    .line 415
    .line 416
    new-instance v1, Landroid/widget/FrameLayout;

    .line 417
    .line 418
    invoke-direct {v1, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 419
    .line 420
    .line 421
    invoke-virtual {v1, v4}, Landroid/view/View;->setId(I)V

    .line 422
    .line 423
    .line 424
    const/4 v4, 0x4

    .line 425
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 426
    .line 427
    .line 428
    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    .line 429
    .line 430
    sget v7, Lcom/mycompany/app/main/MainApp;->b1:I

    .line 431
    .line 432
    const/4 v12, -0x2

    .line 433
    invoke-direct {v4, v12, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 434
    .line 435
    .line 436
    const/16 v7, 0x15

    .line 437
    .line 438
    invoke-virtual {v4, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 439
    .line 440
    .line 441
    invoke-virtual {v13, v1, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 442
    .line 443
    .line 444
    new-instance v4, Lcom/mycompany/app/view/MyProgressBar;

    .line 445
    .line 446
    invoke-direct {v4, v0}, Lcom/mycompany/app/view/MyProgressBar;-><init>(Landroid/content/Context;)V

    .line 447
    .line 448
    .line 449
    const/high16 v7, 0x3fc00000    # 1.5f

    .line 450
    .line 451
    invoke-static {v0, v7}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 452
    .line 453
    .line 454
    move-result v7

    .line 455
    float-to-int v7, v7

    .line 456
    invoke-virtual {v4, v7}, Lcom/mycompany/app/view/MyProgressBar;->d(I)V

    .line 457
    .line 458
    .line 459
    const/high16 v7, 0x40000000    # 2.0f

    .line 460
    .line 461
    invoke-static {v0, v7}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 462
    .line 463
    .line 464
    move-result v7

    .line 465
    float-to-int v7, v7

    .line 466
    new-instance v12, Landroid/widget/FrameLayout$LayoutParams;

    .line 467
    .line 468
    const/4 v15, -0x1

    .line 469
    invoke-direct {v12, v15, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 470
    .line 471
    .line 472
    sget v7, Lcom/mycompany/app/main/MainApp;->b1:I

    .line 473
    .line 474
    iput v7, v12, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 475
    .line 476
    invoke-virtual {v6, v4, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 477
    .line 478
    .line 479
    new-instance v7, Landroid/widget/RelativeLayout;

    .line 480
    .line 481
    invoke-direct {v7, v0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 482
    .line 483
    .line 484
    invoke-virtual {v7, v3}, Landroid/view/View;->setId(I)V

    .line 485
    .line 486
    .line 487
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    .line 488
    .line 489
    const/4 v12, -0x2

    .line 490
    invoke-direct {v3, v15, v12}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 491
    .line 492
    .line 493
    const/16 v12, 0xc

    .line 494
    .line 495
    invoke-virtual {v3, v12}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 496
    .line 497
    .line 498
    invoke-virtual {v5, v7, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 499
    .line 500
    .line 501
    new-instance v3, Landroid/widget/FrameLayout;

    .line 502
    .line 503
    invoke-direct {v3, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 504
    .line 505
    .line 506
    const/16 v12, 0x8

    .line 507
    .line 508
    invoke-virtual {v3, v12}, Landroid/view/View;->setVisibility(I)V

    .line 509
    .line 510
    .line 511
    const/4 v12, -0x2

    .line 512
    invoke-virtual {v7, v3, v15, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 513
    .line 514
    .line 515
    iput-object v5, v0, Lcom/mycompany/app/main/list/MainListImage;->F1:Lcom/mycompany/app/view/MyMainRelative;

    .line 516
    .line 517
    new-instance v7, Lcom/mycompany/app/main/MainListView$ListViewHolder;

    .line 518
    .line 519
    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    .line 520
    .line 521
    .line 522
    iput-object v5, v7, Lcom/mycompany/app/main/MainListView$ListViewHolder;->a:Landroid/widget/RelativeLayout;

    .line 523
    .line 524
    iput-object v6, v7, Lcom/mycompany/app/main/MainListView$ListViewHolder;->b:Landroid/widget/FrameLayout;

    .line 525
    .line 526
    iput-object v9, v7, Lcom/mycompany/app/main/MainListView$ListViewHolder;->r:Lcom/mycompany/app/fragment/FragmentExpandView;

    .line 527
    .line 528
    iput-object v11, v7, Lcom/mycompany/app/main/MainListView$ListViewHolder;->c:Lcom/mycompany/app/view/MyListGroup;

    .line 529
    .line 530
    iput-object v14, v7, Lcom/mycompany/app/main/MainListView$ListViewHolder;->s:Lcom/mycompany/app/view/MyScrollBar;

    .line 531
    .line 532
    iput-object v8, v7, Lcom/mycompany/app/main/MainListView$ListViewHolder;->t:Lcom/mycompany/app/view/MyFadeImage;

    .line 533
    .line 534
    move-object/from16 v6, v18

    .line 535
    .line 536
    iput-object v6, v7, Lcom/mycompany/app/main/MainListView$ListViewHolder;->u:Lcom/mycompany/app/view/MyCoverView;

    .line 537
    .line 538
    iput-object v13, v7, Lcom/mycompany/app/main/MainListView$ListViewHolder;->d:Lcom/mycompany/app/view/MyHeaderView;

    .line 539
    .line 540
    move-object/from16 v6, v17

    .line 541
    .line 542
    iput-object v6, v7, Lcom/mycompany/app/main/MainListView$ListViewHolder;->e:Lcom/mycompany/app/view/MyButtonImage;

    .line 543
    .line 544
    move-object/from16 v6, v16

    .line 545
    .line 546
    iput-object v6, v7, Lcom/mycompany/app/main/MainListView$ListViewHolder;->f:Landroidx/appcompat/widget/AppCompatTextView;

    .line 547
    .line 548
    move-object/from16 v6, p1

    .line 549
    .line 550
    iput-object v6, v7, Lcom/mycompany/app/main/MainListView$ListViewHolder;->l:Lcom/mycompany/app/view/MyButtonImage;

    .line 551
    .line 552
    iput-object v10, v7, Lcom/mycompany/app/main/MainListView$ListViewHolder;->m:Lcom/mycompany/app/view/MyButtonImage;

    .line 553
    .line 554
    iput-object v2, v7, Lcom/mycompany/app/main/MainListView$ListViewHolder;->n:Lcom/mycompany/app/view/MyButtonImage;

    .line 555
    .line 556
    iput-object v4, v7, Lcom/mycompany/app/main/MainListView$ListViewHolder;->q:Lcom/mycompany/app/view/MyProgressBar;

    .line 557
    .line 558
    iput-object v7, v0, Lcom/mycompany/app/main/list/MainListImage;->H1:Lcom/mycompany/app/main/MainListView$ListViewHolder;

    .line 559
    .line 560
    invoke-virtual {v0, v5, v1, v3}, Lcom/mycompany/app/setting/CastActivity;->B0(Landroid/view/View;Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;)V

    .line 561
    .line 562
    .line 563
    iget-object v1, v0, Lcom/mycompany/app/main/list/MainListImage;->F1:Lcom/mycompany/app/view/MyMainRelative;

    .line 564
    .line 565
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 566
    .line 567
    .line 568
    move-result-object v2

    .line 569
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyMainRelative;->setWindow(Landroid/view/Window;)V

    .line 570
    .line 571
    .line 572
    iget-object v1, v0, Lcom/mycompany/app/main/list/MainListImage;->F1:Lcom/mycompany/app/view/MyMainRelative;

    .line 573
    .line 574
    invoke-virtual {v0, v1}, Lcom/mycompany/app/main/MainActivity;->initMainScreenOn(Landroid/view/View;)V

    .line 575
    .line 576
    .line 577
    iget-object v1, v0, Lcom/mycompany/app/main/MainActivity;->O0:Landroid/os/Handler;

    .line 578
    .line 579
    if-nez v1, :cond_0

    .line 580
    .line 581
    return-void

    .line 582
    :cond_0
    new-instance v2, Lcom/mycompany/app/main/list/MainListImage$1;

    .line 583
    .line 584
    invoke-direct {v2, v0}, Lcom/mycompany/app/main/list/MainListImage$1;-><init>(Lcom/mycompany/app/main/list/MainListImage;)V

    .line 585
    .line 586
    .line 587
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 588
    .line 589
    .line 590
    return-void
.end method

.method public final onDestroy()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/mycompany/app/setting/CastActivity;->onDestroy()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/mycompany/app/main/list/MainListImage;->G1:Lcom/mycompany/app/main/MainListView;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/mycompany/app/main/MainListView;->O()V

    .line 10
    .line 11
    .line 12
    iput-object v1, p0, Lcom/mycompany/app/main/list/MainListImage;->G1:Lcom/mycompany/app/main/MainListView;

    .line 13
    .line 14
    :cond_0
    iput-object v1, p0, Lcom/mycompany/app/main/list/MainListImage;->E1:Ljava/lang/String;

    .line 15
    .line 16
    iput-object v1, p0, Lcom/mycompany/app/main/list/MainListImage;->F1:Lcom/mycompany/app/view/MyMainRelative;

    .line 17
    .line 18
    return-void
.end method

.method public final onPause()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/mycompany/app/setting/CastActivity;->onPause()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/mycompany/app/main/list/MainListImage;->G1:Lcom/mycompany/app/main/MainListView;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    invoke-virtual {v0, v1}, Lcom/mycompany/app/main/MainListView;->Q(Z)V

    .line 13
    .line 14
    .line 15
    :cond_0
    return-void
.end method

.method public final onResume()V
    .locals 3

    .line 1
    invoke-super {p0}, Lcom/mycompany/app/setting/CastActivity;->onResume()V

    .line 2
    .line 3
    .line 4
    iget-boolean v0, p0, Lcom/mycompany/app/main/list/MainListImage;->C1:Z

    .line 5
    .line 6
    xor-int/lit8 v0, v0, 0x1

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    iput-boolean v1, p0, Lcom/mycompany/app/main/list/MainListImage;->C1:Z

    .line 10
    .line 11
    iget-object v2, p0, Lcom/mycompany/app/main/list/MainListImage;->G1:Lcom/mycompany/app/main/MainListView;

    .line 12
    .line 13
    if-eqz v2, :cond_0

    .line 14
    .line 15
    invoke-virtual {v2, v0, v0, v1}, Lcom/mycompany/app/main/MainListView;->R(ZZZ)V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method
