.class Lcom/mycompany/app/dialog/DialogSetPms$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogSetPms;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogSetPms;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogSetPms$2;->c:Lcom/mycompany/app/dialog/DialogSetPms;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 32

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetPms$2;->c:Lcom/mycompany/app/dialog/DialogSetPms;

    .line 4
    .line 5
    iget-object v2, v1, Lcom/mycompany/app/dialog/DialogSetPms;->c0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 6
    .line 7
    if-eqz v2, :cond_17

    .line 8
    .line 9
    iget-object v2, v1, Lcom/mycompany/app/dialog/DialogSetPms;->a0:Landroid/content/Context;

    .line 10
    .line 11
    if-nez v2, :cond_0

    .line 12
    .line 13
    goto/16 :goto_f

    .line 14
    .line 15
    :cond_0
    sget-boolean v2, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 16
    .line 17
    if-eqz v2, :cond_1

    .line 18
    .line 19
    iget-object v2, v1, Lcom/mycompany/app/dialog/DialogSetPms;->f0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 20
    .line 21
    const v3, -0x50506

    .line 22
    .line 23
    .line 24
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 25
    .line 26
    .line 27
    iget-object v2, v1, Lcom/mycompany/app/dialog/DialogSetPms;->h0:Lcom/mycompany/app/view/MyLineText;

    .line 28
    .line 29
    sget v4, Lnet/kaki87/soul2/testing/R$drawable;->selector_normal_dark:I

    .line 30
    .line 31
    invoke-virtual {v2, v4}, Landroidx/appcompat/widget/AppCompatTextView;->setBackgroundResource(I)V

    .line 32
    .line 33
    .line 34
    iget-object v2, v1, Lcom/mycompany/app/dialog/DialogSetPms;->h0:Lcom/mycompany/app/view/MyLineText;

    .line 35
    .line 36
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_1
    iget-object v2, v1, Lcom/mycompany/app/dialog/DialogSetPms;->f0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 41
    .line 42
    const/high16 v3, -0x1000000

    .line 43
    .line 44
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 45
    .line 46
    .line 47
    iget-object v2, v1, Lcom/mycompany/app/dialog/DialogSetPms;->h0:Lcom/mycompany/app/view/MyLineText;

    .line 48
    .line 49
    sget v3, Lnet/kaki87/soul2/testing/R$drawable;->selector_normal:I

    .line 50
    .line 51
    invoke-virtual {v2, v3}, Landroidx/appcompat/widget/AppCompatTextView;->setBackgroundResource(I)V

    .line 52
    .line 53
    .line 54
    iget-object v2, v1, Lcom/mycompany/app/dialog/DialogSetPms;->h0:Lcom/mycompany/app/view/MyLineText;

    .line 55
    .line 56
    const v3, -0xe19938

    .line 57
    .line 58
    .line 59
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 60
    .line 61
    .line 62
    :goto_0
    iget-object v2, v1, Lcom/mycompany/app/dialog/DialogSetPms;->j0:Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 63
    .line 64
    if-nez v2, :cond_2

    .line 65
    .line 66
    goto/16 :goto_f

    .line 67
    .line 68
    :cond_2
    iget-object v3, v1, Lcom/mycompany/app/dialog/DialogSetPms;->e0:Lcom/mycompany/app/view/MyRoundImage;

    .line 69
    .line 70
    const v4, -0x70708

    .line 71
    .line 72
    .line 73
    sget v5, Lnet/kaki87/soul2/testing/R$drawable;->outline_public_black_24:I

    .line 74
    .line 75
    invoke-virtual {v3, v4, v5}, Lcom/mycompany/app/view/MyRoundImage;->o(II)V

    .line 76
    .line 77
    .line 78
    iget-object v3, v1, Lcom/mycompany/app/dialog/DialogSetPms;->f0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 79
    .line 80
    iget-object v2, v2, Lcom/mycompany/app/main/MainItem$ChildItem;->h:Ljava/lang/String;

    .line 81
    .line 82
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 83
    .line 84
    .line 85
    iget-object v2, v1, Lcom/mycompany/app/dialog/DialogSetPms;->h0:Lcom/mycompany/app/view/MyLineText;

    .line 86
    .line 87
    sget v3, Lnet/kaki87/soul2/testing/R$string;->apply:I

    .line 88
    .line 89
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 90
    .line 91
    .line 92
    iget v2, v1, Lcom/mycompany/app/dialog/DialogSetPms;->k0:I

    .line 93
    .line 94
    and-int/lit8 v3, v2, 0x2

    .line 95
    .line 96
    const/4 v4, 0x2

    .line 97
    const/4 v5, 0x0

    .line 98
    const/4 v6, 0x1

    .line 99
    if-ne v3, v4, :cond_3

    .line 100
    .line 101
    move v12, v6

    .line 102
    goto :goto_1

    .line 103
    :cond_3
    move v12, v5

    .line 104
    :goto_1
    and-int/lit8 v3, v2, 0x4

    .line 105
    .line 106
    const/4 v7, 0x4

    .line 107
    if-ne v3, v7, :cond_4

    .line 108
    .line 109
    move/from16 v18, v6

    .line 110
    .line 111
    goto :goto_2

    .line 112
    :cond_4
    move/from16 v18, v5

    .line 113
    .line 114
    :goto_2
    and-int/lit8 v3, v2, 0x10

    .line 115
    .line 116
    const/16 v8, 0x10

    .line 117
    .line 118
    if-ne v3, v8, :cond_5

    .line 119
    .line 120
    move/from16 v24, v6

    .line 121
    .line 122
    goto :goto_3

    .line 123
    :cond_5
    move/from16 v24, v5

    .line 124
    .line 125
    :goto_3
    const/16 v3, 0x8

    .line 126
    .line 127
    and-int/2addr v2, v3

    .line 128
    if-ne v2, v3, :cond_6

    .line 129
    .line 130
    move/from16 v30, v6

    .line 131
    .line 132
    goto :goto_4

    .line 133
    :cond_6
    move/from16 v30, v5

    .line 134
    .line 135
    :goto_4
    iget v2, v1, Lcom/mycompany/app/dialog/DialogSetPms;->l0:I

    .line 136
    .line 137
    and-int/lit8 v9, v2, 0x2

    .line 138
    .line 139
    if-ne v9, v4, :cond_7

    .line 140
    .line 141
    move v4, v6

    .line 142
    goto :goto_5

    .line 143
    :cond_7
    move v4, v5

    .line 144
    :goto_5
    and-int/lit8 v9, v2, 0x4

    .line 145
    .line 146
    if-ne v9, v7, :cond_8

    .line 147
    .line 148
    move v7, v6

    .line 149
    goto :goto_6

    .line 150
    :cond_8
    move v7, v5

    .line 151
    :goto_6
    and-int/lit8 v9, v2, 0x10

    .line 152
    .line 153
    if-ne v9, v8, :cond_9

    .line 154
    .line 155
    move v8, v6

    .line 156
    goto :goto_7

    .line 157
    :cond_9
    move v8, v5

    .line 158
    :goto_7
    and-int/2addr v2, v3

    .line 159
    if-ne v2, v3, :cond_a

    .line 160
    .line 161
    move v2, v6

    .line 162
    goto :goto_8

    .line 163
    :cond_a
    move v2, v5

    .line 164
    :goto_8
    if-nez v12, :cond_c

    .line 165
    .line 166
    if-eqz v4, :cond_b

    .line 167
    .line 168
    goto :goto_9

    .line 169
    :cond_b
    move v3, v5

    .line 170
    goto :goto_a

    .line 171
    :cond_c
    :goto_9
    move v3, v6

    .line 172
    :goto_a
    if-nez v18, :cond_e

    .line 173
    .line 174
    if-eqz v7, :cond_d

    .line 175
    .line 176
    goto :goto_b

    .line 177
    :cond_d
    move v4, v5

    .line 178
    goto :goto_c

    .line 179
    :cond_e
    :goto_b
    move v4, v6

    .line 180
    :goto_c
    if-nez v24, :cond_10

    .line 181
    .line 182
    if-eqz v8, :cond_f

    .line 183
    .line 184
    goto :goto_d

    .line 185
    :cond_f
    move/from16 v20, v5

    .line 186
    .line 187
    goto :goto_e

    .line 188
    :cond_10
    :goto_d
    move/from16 v20, v6

    .line 189
    .line 190
    :goto_e
    if-nez v30, :cond_11

    .line 191
    .line 192
    if-eqz v2, :cond_12

    .line 193
    .line 194
    :cond_11
    move v5, v6

    .line 195
    :cond_12
    new-instance v2, Ljava/util/ArrayList;

    .line 196
    .line 197
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 198
    .line 199
    .line 200
    if-eqz v3, :cond_13

    .line 201
    .line 202
    new-instance v7, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 203
    .line 204
    sget v9, Lnet/kaki87/soul2/testing/R$string;->camera:I

    .line 205
    .line 206
    const/4 v13, 0x1

    .line 207
    const/4 v11, 0x0

    .line 208
    const/4 v8, 0x0

    .line 209
    const/4 v10, 0x0

    .line 210
    invoke-direct/range {v7 .. v13}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IIIIZZ)V

    .line 211
    .line 212
    .line 213
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 214
    .line 215
    .line 216
    :cond_13
    if-eqz v4, :cond_14

    .line 217
    .line 218
    new-instance v13, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 219
    .line 220
    sget v15, Lnet/kaki87/soul2/testing/R$string;->audio:I

    .line 221
    .line 222
    const/16 v19, 0x1

    .line 223
    .line 224
    const/16 v17, 0x0

    .line 225
    .line 226
    const/4 v14, 0x1

    .line 227
    const/16 v16, 0x0

    .line 228
    .line 229
    invoke-direct/range {v13 .. v19}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IIIIZZ)V

    .line 230
    .line 231
    .line 232
    invoke-virtual {v2, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 233
    .line 234
    .line 235
    :cond_14
    if-eqz v20, :cond_15

    .line 236
    .line 237
    new-instance v19, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 238
    .line 239
    sget v21, Lnet/kaki87/soul2/testing/R$string;->media:I

    .line 240
    .line 241
    const/16 v25, 0x1

    .line 242
    .line 243
    const/16 v23, 0x0

    .line 244
    .line 245
    const/16 v20, 0x2

    .line 246
    .line 247
    const/16 v22, 0x0

    .line 248
    .line 249
    invoke-direct/range {v19 .. v25}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IIIIZZ)V

    .line 250
    .line 251
    .line 252
    move-object/from16 v3, v19

    .line 253
    .line 254
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 255
    .line 256
    .line 257
    :cond_15
    if-eqz v5, :cond_16

    .line 258
    .line 259
    new-instance v25, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    .line 260
    .line 261
    sget v27, Lnet/kaki87/soul2/testing/R$string;->location:I

    .line 262
    .line 263
    const/16 v31, 0x1

    .line 264
    .line 265
    const/16 v29, 0x0

    .line 266
    .line 267
    const/16 v26, 0x3

    .line 268
    .line 269
    const/16 v28, 0x0

    .line 270
    .line 271
    invoke-direct/range {v25 .. v31}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IIIIZZ)V

    .line 272
    .line 273
    .line 274
    move-object/from16 v3, v25

    .line 275
    .line 276
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 277
    .line 278
    .line 279
    :cond_16
    new-instance v3, Lcom/mycompany/app/view/MyManagerLinear;

    .line 280
    .line 281
    invoke-direct {v3, v6}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(I)V

    .line 282
    .line 283
    .line 284
    new-instance v4, Lcom/mycompany/app/setting/SettingListAdapter;

    .line 285
    .line 286
    new-instance v5, Lcom/mycompany/app/dialog/DialogSetPms$3;

    .line 287
    .line 288
    invoke-direct {v5, v1}, Lcom/mycompany/app/dialog/DialogSetPms$3;-><init>(Lcom/mycompany/app/dialog/DialogSetPms;)V

    .line 289
    .line 290
    .line 291
    invoke-direct {v4, v2, v6, v3, v5}, Lcom/mycompany/app/setting/SettingListAdapter;-><init>(Ljava/util/ArrayList;ZLandroidx/recyclerview/widget/LinearLayoutManager;Lcom/mycompany/app/setting/SettingListAdapter$SettingListener;)V

    .line 292
    .line 293
    .line 294
    iput-object v4, v1, Lcom/mycompany/app/dialog/DialogSetPms;->i0:Lcom/mycompany/app/setting/SettingListAdapter;

    .line 295
    .line 296
    iget-object v2, v1, Lcom/mycompany/app/dialog/DialogSetPms;->g0:Lcom/mycompany/app/view/MyRecyclerView;

    .line 297
    .line 298
    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 299
    .line 300
    .line 301
    iget-object v2, v1, Lcom/mycompany/app/dialog/DialogSetPms;->g0:Lcom/mycompany/app/view/MyRecyclerView;

    .line 302
    .line 303
    iget-object v3, v1, Lcom/mycompany/app/dialog/DialogSetPms;->i0:Lcom/mycompany/app/setting/SettingListAdapter;

    .line 304
    .line 305
    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 306
    .line 307
    .line 308
    iget-object v2, v1, Lcom/mycompany/app/dialog/DialogSetPms;->h0:Lcom/mycompany/app/view/MyLineText;

    .line 309
    .line 310
    new-instance v3, Lcom/mycompany/app/dialog/DialogSetPms$4;

    .line 311
    .line 312
    invoke-direct {v3, v1}, Lcom/mycompany/app/dialog/DialogSetPms$4;-><init>(Lcom/mycompany/app/dialog/DialogSetPms;)V

    .line 313
    .line 314
    .line 315
    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 316
    .line 317
    .line 318
    iget-object v2, v1, Lcom/mycompany/app/dialog/DialogSetPms;->c0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 319
    .line 320
    new-instance v3, Lcom/mycompany/app/dialog/DialogSetPms$5;

    .line 321
    .line 322
    invoke-direct {v3, v1}, Lcom/mycompany/app/dialog/DialogSetPms$5;-><init>(Lcom/mycompany/app/dialog/DialogSetPms;)V

    .line 323
    .line 324
    .line 325
    invoke-virtual {v1, v2, v3}, Lcom/mycompany/app/view/MyDialogBottom;->g(Landroid/view/View;Lcom/mycompany/app/view/MyDialogBottom$BotViewListener;)V

    .line 326
    .line 327
    .line 328
    :cond_17
    :goto_f
    return-void
.end method
