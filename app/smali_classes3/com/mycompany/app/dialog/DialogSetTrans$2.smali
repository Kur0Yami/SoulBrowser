.class Lcom/mycompany/app/dialog/DialogSetTrans$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogSetTrans;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogSetTrans;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogSetTrans$2;->c:Lcom/mycompany/app/dialog/DialogSetTrans;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 14

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetTrans$2;->c:Lcom/mycompany/app/dialog/DialogSetTrans;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetTrans;->f0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 4
    .line 5
    if-eqz v1, :cond_5

    .line 6
    .line 7
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetTrans;->b0:Landroid/content/Context;

    .line 8
    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    goto/16 :goto_3

    .line 12
    .line 13
    :cond_0
    sget-boolean v1, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 14
    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetTrans;->i0:Lcom/mycompany/app/view/MyRecyclerView;

    .line 18
    .line 19
    const/high16 v2, -0x1000000

    .line 20
    .line 21
    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 22
    .line 23
    .line 24
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetTrans;->g0:Landroid/view/View;

    .line 25
    .line 26
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->trans_logo_regular_white:I

    .line 27
    .line 28
    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 29
    .line 30
    .line 31
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetTrans;->h0:Lcom/mycompany/app/view/MyButtonImage;

    .line 32
    .line 33
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->outline_settings_dark_20:I

    .line 34
    .line 35
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 36
    .line 37
    .line 38
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetTrans;->h0:Lcom/mycompany/app/view/MyButtonImage;

    .line 39
    .line 40
    const v2, -0xc0c0c1

    .line 41
    .line 42
    .line 43
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 44
    .line 45
    .line 46
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetTrans;->j0:Lcom/mycompany/app/view/MyLineText;

    .line 47
    .line 48
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->selector_list_back_dark:I

    .line 49
    .line 50
    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/AppCompatTextView;->setBackgroundResource(I)V

    .line 51
    .line 52
    .line 53
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetTrans;->j0:Lcom/mycompany/app/view/MyLineText;

    .line 54
    .line 55
    const v2, -0x50506

    .line 56
    .line 57
    .line 58
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 59
    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_1
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetTrans;->i0:Lcom/mycompany/app/view/MyRecyclerView;

    .line 63
    .line 64
    const v2, -0x70708

    .line 65
    .line 66
    .line 67
    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 68
    .line 69
    .line 70
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetTrans;->g0:Landroid/view/View;

    .line 71
    .line 72
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->trans_logo_regular_color:I

    .line 73
    .line 74
    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 75
    .line 76
    .line 77
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetTrans;->h0:Lcom/mycompany/app/view/MyButtonImage;

    .line 78
    .line 79
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->outline_settings_black_20:I

    .line 80
    .line 81
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 82
    .line 83
    .line 84
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetTrans;->h0:Lcom/mycompany/app/view/MyButtonImage;

    .line 85
    .line 86
    const/high16 v2, 0x21000000

    .line 87
    .line 88
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 89
    .line 90
    .line 91
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetTrans;->j0:Lcom/mycompany/app/view/MyLineText;

    .line 92
    .line 93
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->selector_list_back:I

    .line 94
    .line 95
    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/AppCompatTextView;->setBackgroundResource(I)V

    .line 96
    .line 97
    .line 98
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetTrans;->j0:Lcom/mycompany/app/view/MyLineText;

    .line 99
    .line 100
    const v2, -0xe19938

    .line 101
    .line 102
    .line 103
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 104
    .line 105
    .line 106
    :goto_0
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetTrans;->j0:Lcom/mycompany/app/view/MyLineText;

    .line 107
    .line 108
    sget v2, Lnet/kaki87/soul2/testing/R$string;->translate:I

    .line 109
    .line 110
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 111
    .line 112
    .line 113
    sget v1, Lcom/mycompany/app/pref/PrefAlbum;->u:I

    .line 114
    .line 115
    iput v1, v0, Lcom/mycompany/app/dialog/DialogSetTrans;->p0:I

    .line 116
    .line 117
    sget-object v1, Lcom/mycompany/app/pref/PrefAlbum;->y:Ljava/lang/String;

    .line 118
    .line 119
    iput-object v1, v0, Lcom/mycompany/app/dialog/DialogSetTrans;->q0:Ljava/lang/String;

    .line 120
    .line 121
    sget-boolean v1, Lcom/mycompany/app/pref/PrefAlbum;->v:Z

    .line 122
    .line 123
    iput-boolean v1, v0, Lcom/mycompany/app/dialog/DialogSetTrans;->r0:Z

    .line 124
    .line 125
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetTrans;->b0:Landroid/content/Context;

    .line 126
    .line 127
    invoke-static {v1}, Lcom/mycompany/app/data/book/DataBookTrans;->l(Landroid/content/Context;)Lcom/mycompany/app/data/book/DataBookTrans;

    .line 128
    .line 129
    .line 130
    move-result-object v1

    .line 131
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogSetTrans;->e0:Ljava/lang/String;

    .line 132
    .line 133
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 134
    .line 135
    .line 136
    const/4 v3, 0x0

    .line 137
    :try_start_0
    iget-object v4, v1, Lcom/mycompany/app/data/book/DataBookTrans;->c:Ljava/util/ArrayList;

    .line 138
    .line 139
    if-eqz v4, :cond_4

    .line 140
    .line 141
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    .line 142
    .line 143
    .line 144
    move-result v4

    .line 145
    if-eqz v4, :cond_2

    .line 146
    .line 147
    goto :goto_1

    .line 148
    :cond_2
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 149
    .line 150
    .line 151
    move-result v4

    .line 152
    if-eqz v4, :cond_3

    .line 153
    .line 154
    goto :goto_1

    .line 155
    :cond_3
    iget-object v1, v1, Lcom/mycompany/app/data/book/DataBookTrans;->c:Ljava/util/ArrayList;

    .line 156
    .line 157
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 158
    .line 159
    .line 160
    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 161
    goto :goto_2

    .line 162
    :catch_0
    :cond_4
    :goto_1
    move v1, v3

    .line 163
    :goto_2
    iput-boolean v1, v0, Lcom/mycompany/app/dialog/DialogSetTrans;->s0:Z

    .line 164
    .line 165
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetTrans;->b0:Landroid/content/Context;

    .line 166
    .line 167
    invoke-static {v1}, Lcom/mycompany/app/data/book/DataBookTrans;->l(Landroid/content/Context;)Lcom/mycompany/app/data/book/DataBookTrans;

    .line 168
    .line 169
    .line 170
    move-result-object v1

    .line 171
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogSetTrans;->d0:Ljava/lang/String;

    .line 172
    .line 173
    invoke-virtual {v1, v2}, Lcom/mycompany/app/data/book/DataBookTrans;->m(Ljava/lang/String;)Z

    .line 174
    .line 175
    .line 176
    move-result v1

    .line 177
    iput-boolean v1, v0, Lcom/mycompany/app/dialog/DialogSetTrans;->t0:Z

    .line 178
    .line 179
    sget-object v1, Lcom/mycompany/app/setting/SettingTrans;->j2:[I

    .line 180
    .line 181
    sget v2, Lcom/mycompany/app/pref/PrefAlbum;->u:I

    .line 182
    .line 183
    aget v7, v1, v2

    .line 184
    .line 185
    sget-object v1, Lcom/mycompany/app/setting/SettingTrans;->k2:[I

    .line 186
    .line 187
    sget v2, Lcom/mycompany/app/pref/PrefAlbum;->u:I

    .line 188
    .line 189
    aget v8, v1, v2

    .line 190
    .line 191
    new-instance v1, Ljava/util/ArrayList;

    .line 192
    .line 193
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 194
    .line 195
    .line 196
    new-instance v4, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 197
    .line 198
    sget v6, Lnet/kaki87/soul2/testing/R$string;->trans_detect:I

    .line 199
    .line 200
    const/4 v9, 0x0

    .line 201
    const/4 v5, 0x0

    .line 202
    invoke-direct/range {v4 .. v9}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IIIII)V

    .line 203
    .line 204
    .line 205
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 206
    .line 207
    .line 208
    new-instance v5, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 209
    .line 210
    sget v7, Lnet/kaki87/soul2/testing/R$string;->locale:I

    .line 211
    .line 212
    sget-object v8, Lcom/mycompany/app/pref/PrefAlbum;->y:Ljava/lang/String;

    .line 213
    .line 214
    const/4 v10, 0x0

    .line 215
    const/4 v6, 0x1

    .line 216
    invoke-direct/range {v5 .. v10}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IILjava/lang/String;II)V

    .line 217
    .line 218
    .line 219
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 220
    .line 221
    .line 222
    new-instance v6, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 223
    .line 224
    sget v8, Lnet/kaki87/soul2/testing/R$string;->trans_icon_always:I

    .line 225
    .line 226
    sget-boolean v11, Lcom/mycompany/app/pref/PrefAlbum;->v:Z

    .line 227
    .line 228
    const/4 v12, 0x1

    .line 229
    const/4 v10, 0x2

    .line 230
    const/4 v7, 0x2

    .line 231
    invoke-direct/range {v6 .. v12}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IIIIZZ)V

    .line 232
    .line 233
    .line 234
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 235
    .line 236
    .line 237
    new-instance v2, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 238
    .line 239
    const/4 v4, 0x3

    .line 240
    const/4 v5, 0x1

    .line 241
    invoke-direct {v2, v4, v5}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IZ)V

    .line 242
    .line 243
    .line 244
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 245
    .line 246
    .line 247
    new-instance v6, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 248
    .line 249
    sget v8, Lnet/kaki87/soul2/testing/R$string;->trans_block_site:I

    .line 250
    .line 251
    iget-boolean v11, v0, Lcom/mycompany/app/dialog/DialogSetTrans;->s0:Z

    .line 252
    .line 253
    const/4 v10, 0x1

    .line 254
    const/4 v7, 0x4

    .line 255
    invoke-direct/range {v6 .. v12}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IIIIZZ)V

    .line 256
    .line 257
    .line 258
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 259
    .line 260
    .line 261
    new-instance v7, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 262
    .line 263
    sget v9, Lnet/kaki87/soul2/testing/R$string;->trans_block_page:I

    .line 264
    .line 265
    iget-boolean v12, v0, Lcom/mycompany/app/dialog/DialogSetTrans;->t0:Z

    .line 266
    .line 267
    const/4 v13, 0x1

    .line 268
    const/4 v11, 0x0

    .line 269
    const/4 v8, 0x5

    .line 270
    const/4 v10, 0x0

    .line 271
    invoke-direct/range {v7 .. v13}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IIIIZZ)V

    .line 272
    .line 273
    .line 274
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 275
    .line 276
    .line 277
    new-instance v8, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 278
    .line 279
    sget v10, Lnet/kaki87/soul2/testing/R$string;->trans_except:I

    .line 280
    .line 281
    const/4 v12, 0x0

    .line 282
    const/4 v13, 0x0

    .line 283
    const/4 v9, 0x6

    .line 284
    invoke-direct/range {v8 .. v13}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IIIII)V

    .line 285
    .line 286
    .line 287
    invoke-static {v1, v8, v5}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->t(Ljava/util/ArrayList;Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;I)Lcom/mycompany/app/view/MyManagerLinear;

    .line 288
    .line 289
    .line 290
    move-result-object v2

    .line 291
    new-instance v4, Lcom/mycompany/app/setting/SettingListAdapter;

    .line 292
    .line 293
    new-instance v6, Lcom/mycompany/app/dialog/DialogSetTrans$3;

    .line 294
    .line 295
    invoke-direct {v6, v0}, Lcom/mycompany/app/dialog/DialogSetTrans$3;-><init>(Lcom/mycompany/app/dialog/DialogSetTrans;)V

    .line 296
    .line 297
    .line 298
    invoke-direct {v4, v1, v5, v2, v6}, Lcom/mycompany/app/setting/SettingListAdapter;-><init>(Ljava/util/ArrayList;ZLandroidx/recyclerview/widget/LinearLayoutManager;Lcom/mycompany/app/setting/SettingListAdapter$SettingListener;)V

    .line 299
    .line 300
    .line 301
    iput-object v4, v0, Lcom/mycompany/app/dialog/DialogSetTrans;->k0:Lcom/mycompany/app/setting/SettingListAdapter;

    .line 302
    .line 303
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetTrans;->i0:Lcom/mycompany/app/view/MyRecyclerView;

    .line 304
    .line 305
    invoke-virtual {v1, v5, v3}, Lcom/mycompany/app/view/MyRecyclerView;->u0(ZZ)V

    .line 306
    .line 307
    .line 308
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetTrans;->i0:Lcom/mycompany/app/view/MyRecyclerView;

    .line 309
    .line 310
    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 311
    .line 312
    .line 313
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetTrans;->i0:Lcom/mycompany/app/view/MyRecyclerView;

    .line 314
    .line 315
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogSetTrans;->k0:Lcom/mycompany/app/setting/SettingListAdapter;

    .line 316
    .line 317
    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 318
    .line 319
    .line 320
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetTrans;->h0:Lcom/mycompany/app/view/MyButtonImage;

    .line 321
    .line 322
    new-instance v2, Lcom/mycompany/app/dialog/DialogSetTrans$4;

    .line 323
    .line 324
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogSetTrans$4;-><init>(Lcom/mycompany/app/dialog/DialogSetTrans;)V

    .line 325
    .line 326
    .line 327
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 328
    .line 329
    .line 330
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetTrans;->j0:Lcom/mycompany/app/view/MyLineText;

    .line 331
    .line 332
    new-instance v2, Lcom/mycompany/app/dialog/DialogSetTrans$5;

    .line 333
    .line 334
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogSetTrans$5;-><init>(Lcom/mycompany/app/dialog/DialogSetTrans;)V

    .line 335
    .line 336
    .line 337
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 338
    .line 339
    .line 340
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetTrans;->f0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 341
    .line 342
    new-instance v2, Lcom/mycompany/app/dialog/DialogSetTrans$6;

    .line 343
    .line 344
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogSetTrans$6;-><init>(Lcom/mycompany/app/dialog/DialogSetTrans;)V

    .line 345
    .line 346
    .line 347
    invoke-virtual {v0, v1, v2}, Lcom/mycompany/app/view/MyDialogBottom;->g(Landroid/view/View;Lcom/mycompany/app/view/MyDialogBottom$BotViewListener;)V

    .line 348
    .line 349
    .line 350
    :cond_5
    :goto_3
    return-void
.end method
