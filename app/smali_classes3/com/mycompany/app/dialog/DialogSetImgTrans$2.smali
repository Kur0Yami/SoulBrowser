.class Lcom/mycompany/app/dialog/DialogSetImgTrans$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogSetImgTrans;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogSetImgTrans;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogSetImgTrans$2;->c:Lcom/mycompany/app/dialog/DialogSetImgTrans;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetImgTrans$2;->c:Lcom/mycompany/app/dialog/DialogSetImgTrans;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetImgTrans;->c0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 4
    .line 5
    if-eqz v1, :cond_1

    .line 6
    .line 7
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetImgTrans;->a0:Landroid/content/Context;

    .line 8
    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    goto/16 :goto_0

    .line 12
    .line 13
    :cond_0
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetImgTrans;->d0:Lcom/mycompany/app/view/MyRoundLinear;

    .line 14
    .line 15
    sget v2, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 16
    .line 17
    const/high16 v3, -0x1000000

    .line 18
    .line 19
    iput v3, v1, Lcom/mycompany/app/view/MyRoundLinear;->n:I

    .line 20
    .line 21
    iput v2, v1, Lcom/mycompany/app/view/MyRoundLinear;->m:I

    .line 22
    .line 23
    const v2, -0x3f8a8a8b

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyRoundLinear;->setBgOutColor(I)V

    .line 27
    .line 28
    .line 29
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetImgTrans;->e0:Lcom/mycompany/app/view/MyButtonText;

    .line 30
    .line 31
    const v2, -0x50506

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 35
    .line 36
    .line 37
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetImgTrans;->e0:Lcom/mycompany/app/view/MyButtonText;

    .line 38
    .line 39
    const v2, -0xafafb0

    .line 40
    .line 41
    .line 42
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonText;->setBgNorColor(I)V

    .line 43
    .line 44
    .line 45
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetImgTrans;->f0:Lcom/mycompany/app/view/MyButtonImage;

    .line 46
    .line 47
    sget v4, Lnet/kaki87/soul2/testing/R$drawable;->outline_search_dark_24:I

    .line 48
    .line 49
    invoke-virtual {v1, v4}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 50
    .line 51
    .line 52
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetImgTrans;->g0:Lcom/mycompany/app/view/MyButtonImage;

    .line 53
    .line 54
    sget v4, Lnet/kaki87/soul2/testing/R$drawable;->outline_refresh_dark_24:I

    .line 55
    .line 56
    invoke-virtual {v1, v4}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 57
    .line 58
    .line 59
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetImgTrans;->h0:Lcom/mycompany/app/view/MyButtonImage;

    .line 60
    .line 61
    sget v4, Lnet/kaki87/soul2/testing/R$drawable;->outline_g_translate_dark_24:I

    .line 62
    .line 63
    invoke-virtual {v1, v4}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 64
    .line 65
    .line 66
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetImgTrans;->i0:Lcom/mycompany/app/view/MyButtonImage;

    .line 67
    .line 68
    sget v4, Lnet/kaki87/soul2/testing/R$drawable;->outline_format_color_fill_dark_24:I

    .line 69
    .line 70
    invoke-virtual {v1, v4}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 71
    .line 72
    .line 73
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetImgTrans;->j0:Lcom/mycompany/app/view/MyButtonImage;

    .line 74
    .line 75
    sget v4, Lnet/kaki87/soul2/testing/R$drawable;->outline_center_focus_strong_dark_24:I

    .line 76
    .line 77
    invoke-virtual {v1, v4}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 78
    .line 79
    .line 80
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetImgTrans;->f0:Lcom/mycompany/app/view/MyButtonImage;

    .line 81
    .line 82
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setBgNorColor(I)V

    .line 83
    .line 84
    .line 85
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetImgTrans;->g0:Lcom/mycompany/app/view/MyButtonImage;

    .line 86
    .line 87
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setBgNorColor(I)V

    .line 88
    .line 89
    .line 90
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetImgTrans;->h0:Lcom/mycompany/app/view/MyButtonImage;

    .line 91
    .line 92
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setBgNorColor(I)V

    .line 93
    .line 94
    .line 95
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetImgTrans;->i0:Lcom/mycompany/app/view/MyButtonImage;

    .line 96
    .line 97
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setBgNorColor(I)V

    .line 98
    .line 99
    .line 100
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetImgTrans;->j0:Lcom/mycompany/app/view/MyButtonImage;

    .line 101
    .line 102
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setBgNorColor(I)V

    .line 103
    .line 104
    .line 105
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetImgTrans;->k0:Lcom/mycompany/app/view/MyRecyclerView;

    .line 106
    .line 107
    invoke-virtual {v1, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 108
    .line 109
    .line 110
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetImgTrans;->l0:Lcom/mycompany/app/view/MyLineText;

    .line 111
    .line 112
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->selector_normal_dark:I

    .line 113
    .line 114
    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/AppCompatTextView;->setBackgroundResource(I)V

    .line 115
    .line 116
    .line 117
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetImgTrans;->e0:Lcom/mycompany/app/view/MyButtonText;

    .line 118
    .line 119
    const v2, -0x1f1f20

    .line 120
    .line 121
    .line 122
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonText;->setBgPreColor(I)V

    .line 123
    .line 124
    .line 125
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetImgTrans;->f0:Lcom/mycompany/app/view/MyButtonImage;

    .line 126
    .line 127
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 128
    .line 129
    .line 130
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetImgTrans;->g0:Lcom/mycompany/app/view/MyButtonImage;

    .line 131
    .line 132
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 133
    .line 134
    .line 135
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetImgTrans;->h0:Lcom/mycompany/app/view/MyButtonImage;

    .line 136
    .line 137
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 138
    .line 139
    .line 140
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetImgTrans;->i0:Lcom/mycompany/app/view/MyButtonImage;

    .line 141
    .line 142
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 143
    .line 144
    .line 145
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetImgTrans;->j0:Lcom/mycompany/app/view/MyButtonImage;

    .line 146
    .line 147
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 148
    .line 149
    .line 150
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetImgTrans;->e0:Lcom/mycompany/app/view/MyButtonText;

    .line 151
    .line 152
    invoke-static {}, Lcom/mycompany/app/web/WebTransOcrCtrl;->getTransCap()Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object v2

    .line 156
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 157
    .line 158
    .line 159
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetImgTrans;->e0:Lcom/mycompany/app/view/MyButtonText;

    .line 160
    .line 161
    new-instance v2, Lcom/mycompany/app/dialog/DialogSetImgTrans$3;

    .line 162
    .line 163
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 164
    .line 165
    .line 166
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 167
    .line 168
    .line 169
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetImgTrans;->f0:Lcom/mycompany/app/view/MyButtonImage;

    .line 170
    .line 171
    new-instance v2, Lcom/mycompany/app/dialog/DialogSetImgTrans$4;

    .line 172
    .line 173
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 174
    .line 175
    .line 176
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 177
    .line 178
    .line 179
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetImgTrans;->g0:Lcom/mycompany/app/view/MyButtonImage;

    .line 180
    .line 181
    new-instance v2, Lcom/mycompany/app/dialog/DialogSetImgTrans$5;

    .line 182
    .line 183
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 184
    .line 185
    .line 186
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 187
    .line 188
    .line 189
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetImgTrans;->h0:Lcom/mycompany/app/view/MyButtonImage;

    .line 190
    .line 191
    new-instance v2, Lcom/mycompany/app/dialog/DialogSetImgTrans$6;

    .line 192
    .line 193
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 194
    .line 195
    .line 196
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 197
    .line 198
    .line 199
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetImgTrans;->i0:Lcom/mycompany/app/view/MyButtonImage;

    .line 200
    .line 201
    new-instance v2, Lcom/mycompany/app/dialog/DialogSetImgTrans$7;

    .line 202
    .line 203
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 204
    .line 205
    .line 206
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 207
    .line 208
    .line 209
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetImgTrans;->j0:Lcom/mycompany/app/view/MyButtonImage;

    .line 210
    .line 211
    new-instance v2, Lcom/mycompany/app/dialog/DialogSetImgTrans$8;

    .line 212
    .line 213
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 214
    .line 215
    .line 216
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 217
    .line 218
    .line 219
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogSetImgTrans;->B()V

    .line 220
    .line 221
    .line 222
    iget-boolean v1, v0, Lcom/mycompany/app/dialog/DialogSetImgTrans;->n0:Z

    .line 223
    .line 224
    const/4 v2, 0x1

    .line 225
    xor-int/lit8 v8, v1, 0x1

    .line 226
    .line 227
    new-instance v1, Ljava/util/ArrayList;

    .line 228
    .line 229
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 230
    .line 231
    .line 232
    new-instance v3, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 233
    .line 234
    sget v5, Lnet/kaki87/soul2/testing/R$string;->locale:I

    .line 235
    .line 236
    iget-boolean v7, v0, Lcom/mycompany/app/dialog/DialogSetImgTrans;->o0:Z

    .line 237
    .line 238
    const/4 v10, 0x0

    .line 239
    const/4 v4, 0x0

    .line 240
    const/4 v6, 0x0

    .line 241
    move v9, v8

    .line 242
    invoke-direct/range {v3 .. v10}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IIIZZZI)V

    .line 243
    .line 244
    .line 245
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 246
    .line 247
    .line 248
    new-instance v3, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 249
    .line 250
    sget v5, Lnet/kaki87/soul2/testing/R$string;->refresh:I

    .line 251
    .line 252
    iget-boolean v7, v0, Lcom/mycompany/app/dialog/DialogSetImgTrans;->p0:Z

    .line 253
    .line 254
    const/4 v4, 0x1

    .line 255
    invoke-direct/range {v3 .. v10}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IIIZZZI)V

    .line 256
    .line 257
    .line 258
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 259
    .line 260
    .line 261
    new-instance v3, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 262
    .line 263
    sget v5, Lnet/kaki87/soul2/testing/R$string;->translate:I

    .line 264
    .line 265
    iget-boolean v7, v0, Lcom/mycompany/app/dialog/DialogSetImgTrans;->q0:Z

    .line 266
    .line 267
    const/4 v4, 0x2

    .line 268
    invoke-direct/range {v3 .. v10}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IIIZZZI)V

    .line 269
    .line 270
    .line 271
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 272
    .line 273
    .line 274
    new-instance v3, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 275
    .line 276
    sget v5, Lnet/kaki87/soul2/testing/R$string;->background:I

    .line 277
    .line 278
    iget-boolean v7, v0, Lcom/mycompany/app/dialog/DialogSetImgTrans;->r0:Z

    .line 279
    .line 280
    const/4 v4, 0x3

    .line 281
    invoke-direct/range {v3 .. v10}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IIIZZZI)V

    .line 282
    .line 283
    .line 284
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 285
    .line 286
    .line 287
    new-instance v3, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 288
    .line 289
    sget v5, Lnet/kaki87/soul2/testing/R$string;->zoom_title:I

    .line 290
    .line 291
    iget-boolean v7, v0, Lcom/mycompany/app/dialog/DialogSetImgTrans;->s0:Z

    .line 292
    .line 293
    const/4 v10, 0x2

    .line 294
    const/4 v4, 0x4

    .line 295
    invoke-direct/range {v3 .. v10}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IIIZZZI)V

    .line 296
    .line 297
    .line 298
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 299
    .line 300
    .line 301
    new-instance v3, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 302
    .line 303
    const/4 v4, 0x5

    .line 304
    invoke-direct {v3, v4, v2}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IZ)V

    .line 305
    .line 306
    .line 307
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 308
    .line 309
    .line 310
    new-instance v5, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 311
    .line 312
    sget v7, Lnet/kaki87/soul2/testing/R$string;->float_button:I

    .line 313
    .line 314
    sget v8, Lnet/kaki87/soul2/testing/R$string;->long_move_guide:I

    .line 315
    .line 316
    iget-boolean v10, v0, Lcom/mycompany/app/dialog/DialogSetImgTrans;->n0:Z

    .line 317
    .line 318
    const/4 v11, 0x1

    .line 319
    const/4 v9, 0x1

    .line 320
    const/4 v6, 0x6

    .line 321
    invoke-direct/range {v5 .. v11}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IIIIZZ)V

    .line 322
    .line 323
    .line 324
    invoke-static {v1, v5, v2}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->t(Ljava/util/ArrayList;Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;I)Lcom/mycompany/app/view/MyManagerLinear;

    .line 325
    .line 326
    .line 327
    move-result-object v3

    .line 328
    new-instance v4, Lcom/mycompany/app/setting/SettingListAdapter;

    .line 329
    .line 330
    new-instance v5, Lcom/mycompany/app/dialog/DialogSetImgTrans$9;

    .line 331
    .line 332
    invoke-direct {v5, v0}, Lcom/mycompany/app/dialog/DialogSetImgTrans$9;-><init>(Lcom/mycompany/app/dialog/DialogSetImgTrans;)V

    .line 333
    .line 334
    .line 335
    invoke-direct {v4, v1, v2, v3, v5}, Lcom/mycompany/app/setting/SettingListAdapter;-><init>(Ljava/util/ArrayList;ZLandroidx/recyclerview/widget/LinearLayoutManager;Lcom/mycompany/app/setting/SettingListAdapter$SettingListener;)V

    .line 336
    .line 337
    .line 338
    iput-object v4, v0, Lcom/mycompany/app/dialog/DialogSetImgTrans;->m0:Lcom/mycompany/app/setting/SettingListAdapter;

    .line 339
    .line 340
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetImgTrans;->k0:Lcom/mycompany/app/view/MyRecyclerView;

    .line 341
    .line 342
    invoke-virtual {v1, v3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 343
    .line 344
    .line 345
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetImgTrans;->k0:Lcom/mycompany/app/view/MyRecyclerView;

    .line 346
    .line 347
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogSetImgTrans;->m0:Lcom/mycompany/app/setting/SettingListAdapter;

    .line 348
    .line 349
    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 350
    .line 351
    .line 352
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetImgTrans;->l0:Lcom/mycompany/app/view/MyLineText;

    .line 353
    .line 354
    new-instance v2, Lcom/mycompany/app/dialog/DialogSetImgTrans$10;

    .line 355
    .line 356
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogSetImgTrans$10;-><init>(Lcom/mycompany/app/dialog/DialogSetImgTrans;)V

    .line 357
    .line 358
    .line 359
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 360
    .line 361
    .line 362
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetImgTrans;->c0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 363
    .line 364
    new-instance v2, Lcom/mycompany/app/dialog/DialogSetImgTrans$11;

    .line 365
    .line 366
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogSetImgTrans$11;-><init>(Lcom/mycompany/app/dialog/DialogSetImgTrans;)V

    .line 367
    .line 368
    .line 369
    invoke-virtual {v0, v1, v2}, Lcom/mycompany/app/view/MyDialogBottom;->g(Landroid/view/View;Lcom/mycompany/app/view/MyDialogBottom$BotViewListener;)V

    .line 370
    .line 371
    .line 372
    :cond_1
    :goto_0
    return-void
.end method
