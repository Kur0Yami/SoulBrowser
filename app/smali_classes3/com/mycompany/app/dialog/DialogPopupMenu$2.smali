.class Lcom/mycompany/app/dialog/DialogPopupMenu$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogPopupMenu;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogPopupMenu;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogPopupMenu$2;->c:Lcom/mycompany/app/dialog/DialogPopupMenu;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogPopupMenu$2;->c:Lcom/mycompany/app/dialog/DialogPopupMenu;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogPopupMenu;->c0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 4
    .line 5
    if-eqz v1, :cond_9

    .line 6
    .line 7
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogPopupMenu;->a0:Landroid/content/Context;

    .line 8
    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    goto/16 :goto_4

    .line 12
    .line 13
    :cond_0
    sget-boolean v1, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 14
    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogPopupMenu;->e0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 18
    .line 19
    const v2, -0x50506

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_1
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogPopupMenu;->e0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 27
    .line 28
    const/high16 v2, -0x1000000

    .line 29
    .line 30
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 31
    .line 32
    .line 33
    :goto_0
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogPopupMenu;->i0:Ljava/lang/String;

    .line 34
    .line 35
    invoke-static {v1}, Lcom/mycompany/app/main/MainUtil;->O1(Ljava/lang/String;)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    iput-object v1, v0, Lcom/mycompany/app/dialog/DialogPopupMenu;->k0:Ljava/lang/String;

    .line 40
    .line 41
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogPopupMenu;->i0:Ljava/lang/String;

    .line 42
    .line 43
    invoke-static {v1}, Lcom/mycompany/app/main/MainUtil;->D0(Ljava/lang/String;)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 48
    .line 49
    .line 50
    move-result v2

    .line 51
    if-eqz v2, :cond_2

    .line 52
    .line 53
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogPopupMenu;->i0:Ljava/lang/String;

    .line 54
    .line 55
    :cond_2
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogPopupMenu;->d0:Lcom/mycompany/app/view/MyRoundImage;

    .line 56
    .line 57
    const/4 v3, 0x1

    .line 58
    const/4 v4, 0x0

    .line 59
    if-nez v2, :cond_3

    .line 60
    .line 61
    goto :goto_1

    .line 62
    :cond_3
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogPopupMenu;->i0:Ljava/lang/String;

    .line 63
    .line 64
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 65
    .line 66
    .line 67
    move-result v2

    .line 68
    if-eqz v2, :cond_4

    .line 69
    .line 70
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogPopupMenu;->d0:Lcom/mycompany/app/view/MyRoundImage;

    .line 71
    .line 72
    sget v5, Lnet/kaki87/soul2/testing/R$drawable;->outline_public_black_24:I

    .line 73
    .line 74
    iget-object v6, v0, Lcom/mycompany/app/dialog/DialogPopupMenu;->k0:Ljava/lang/String;

    .line 75
    .line 76
    const/4 v7, 0x0

    .line 77
    const v8, -0x70708

    .line 78
    .line 79
    .line 80
    invoke-virtual {v2, v8, v5, v6, v7}, Lcom/mycompany/app/view/MyRoundImage;->p(IILjava/lang/String;Ljava/util/regex/Pattern;)V

    .line 81
    .line 82
    .line 83
    goto :goto_1

    .line 84
    :cond_4
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogPopupMenu;->k0:Ljava/lang/String;

    .line 85
    .line 86
    invoke-static {v2}, Lcom/mycompany/app/main/MainUtil;->n4(Ljava/lang/String;)Landroid/graphics/Bitmap;

    .line 87
    .line 88
    .line 89
    move-result-object v2

    .line 90
    invoke-static {v2}, Lcom/mycompany/app/main/MainUtil;->f6(Landroid/graphics/Bitmap;)Z

    .line 91
    .line 92
    .line 93
    move-result v5

    .line 94
    if-eqz v5, :cond_5

    .line 95
    .line 96
    iget-object v5, v0, Lcom/mycompany/app/dialog/DialogPopupMenu;->d0:Lcom/mycompany/app/view/MyRoundImage;

    .line 97
    .line 98
    invoke-virtual {v5, v3}, Lcom/mycompany/app/view/MyRoundImage;->setIconSmall(Z)V

    .line 99
    .line 100
    .line 101
    iget-object v5, v0, Lcom/mycompany/app/dialog/DialogPopupMenu;->d0:Lcom/mycompany/app/view/MyRoundImage;

    .line 102
    .line 103
    invoke-virtual {v5, v2}, Lcom/mycompany/app/view/MyRoundImage;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 104
    .line 105
    .line 106
    goto :goto_1

    .line 107
    :cond_5
    new-instance v2, Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 108
    .line 109
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 110
    .line 111
    .line 112
    const/16 v5, 0x12

    .line 113
    .line 114
    iput v5, v2, Lcom/mycompany/app/main/MainItem$ChildItem;->a:I

    .line 115
    .line 116
    const/16 v5, 0xb

    .line 117
    .line 118
    iput v5, v2, Lcom/mycompany/app/main/MainItem$ChildItem;->c:I

    .line 119
    .line 120
    iget-object v5, v0, Lcom/mycompany/app/dialog/DialogPopupMenu;->i0:Ljava/lang/String;

    .line 121
    .line 122
    iput-object v5, v2, Lcom/mycompany/app/main/MainItem$ChildItem;->g:Ljava/lang/String;

    .line 123
    .line 124
    new-instance v5, Lcom/mycompany/app/main/MainListLoader;

    .line 125
    .line 126
    iget-object v6, v0, Lcom/mycompany/app/dialog/DialogPopupMenu;->a0:Landroid/content/Context;

    .line 127
    .line 128
    new-instance v7, Lcom/mycompany/app/dialog/DialogPopupMenu$8;

    .line 129
    .line 130
    invoke-direct {v7, v0}, Lcom/mycompany/app/dialog/DialogPopupMenu$8;-><init>(Lcom/mycompany/app/dialog/DialogPopupMenu;)V

    .line 131
    .line 132
    .line 133
    invoke-direct {v5, v6, v4, v7}, Lcom/mycompany/app/main/MainListLoader;-><init>(Landroid/content/Context;ZLcom/mycompany/app/main/MainListLoader$ListLoadListener;)V

    .line 134
    .line 135
    .line 136
    iput-object v5, v0, Lcom/mycompany/app/dialog/DialogPopupMenu;->m0:Lcom/mycompany/app/main/MainListLoader;

    .line 137
    .line 138
    iget-object v5, v0, Lcom/mycompany/app/dialog/DialogPopupMenu;->d0:Lcom/mycompany/app/view/MyRoundImage;

    .line 139
    .line 140
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 141
    .line 142
    .line 143
    move-result-object v6

    .line 144
    invoke-virtual {v5, v6}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 145
    .line 146
    .line 147
    iget-object v5, v0, Lcom/mycompany/app/dialog/DialogPopupMenu;->m0:Lcom/mycompany/app/main/MainListLoader;

    .line 148
    .line 149
    iget-object v6, v0, Lcom/mycompany/app/dialog/DialogPopupMenu;->d0:Lcom/mycompany/app/view/MyRoundImage;

    .line 150
    .line 151
    invoke-virtual {v5, v2, v6}, Lcom/mycompany/app/main/MainListLoader;->e(Lcom/mycompany/app/main/MainItem$ChildItem;Landroid/view/View;)V

    .line 152
    .line 153
    .line 154
    :goto_1
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogPopupMenu;->e0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 155
    .line 156
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 157
    .line 158
    .line 159
    new-instance v1, Ljava/util/ArrayList;

    .line 160
    .line 161
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 162
    .line 163
    .line 164
    sget-boolean v2, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 165
    .line 166
    const/4 v5, 0x3

    .line 167
    const/4 v6, 0x2

    .line 168
    const/4 v7, 0x4

    .line 169
    if-eqz v2, :cond_6

    .line 170
    .line 171
    new-instance v2, Lcom/mycompany/app/main/MainSelectAdapter$MainSelectItem;

    .line 172
    .line 173
    sget v8, Lnet/kaki87/soul2/testing/R$drawable;->outline_visibility_dark_24:I

    .line 174
    .line 175
    sget v9, Lnet/kaki87/soul2/testing/R$string;->preview:I

    .line 176
    .line 177
    invoke-direct {v2, v4, v8, v9}, Lcom/mycompany/app/main/MainSelectAdapter$MainSelectItem;-><init>(III)V

    .line 178
    .line 179
    .line 180
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 181
    .line 182
    .line 183
    new-instance v2, Lcom/mycompany/app/main/MainSelectAdapter$MainSelectItem;

    .line 184
    .line 185
    sget v8, Lnet/kaki87/soul2/testing/R$drawable;->outline_add_box_dark_24:I

    .line 186
    .line 187
    sget v9, Lnet/kaki87/soul2/testing/R$string;->new_url:I

    .line 188
    .line 189
    invoke-direct {v2, v3, v8, v9}, Lcom/mycompany/app/main/MainSelectAdapter$MainSelectItem;-><init>(III)V

    .line 190
    .line 191
    .line 192
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 193
    .line 194
    .line 195
    new-instance v2, Lcom/mycompany/app/main/MainSelectAdapter$MainSelectItem;

    .line 196
    .line 197
    sget v8, Lnet/kaki87/soul2/testing/R$drawable;->outline_photo_library_dark_24:I

    .line 198
    .line 199
    sget v9, Lnet/kaki87/soul2/testing/R$string;->only_image:I

    .line 200
    .line 201
    invoke-direct {v2, v6, v8, v9}, Lcom/mycompany/app/main/MainSelectAdapter$MainSelectItem;-><init>(III)V

    .line 202
    .line 203
    .line 204
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 205
    .line 206
    .line 207
    new-instance v2, Lcom/mycompany/app/main/MainSelectAdapter$MainSelectItem;

    .line 208
    .line 209
    sget v6, Lnet/kaki87/soul2/testing/R$drawable;->outline_cloud_download_dark_24:I

    .line 210
    .line 211
    sget v8, Lnet/kaki87/soul2/testing/R$string;->image_list:I

    .line 212
    .line 213
    invoke-direct {v2, v5, v6, v8}, Lcom/mycompany/app/main/MainSelectAdapter$MainSelectItem;-><init>(III)V

    .line 214
    .line 215
    .line 216
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 217
    .line 218
    .line 219
    new-instance v2, Lcom/mycompany/app/main/MainSelectAdapter$MainSelectItem;

    .line 220
    .line 221
    sget v5, Lnet/kaki87/soul2/testing/R$drawable;->outline_block_dark_24:I

    .line 222
    .line 223
    sget v6, Lnet/kaki87/soul2/testing/R$string;->pop_allow:I

    .line 224
    .line 225
    invoke-direct {v2, v7, v5, v6}, Lcom/mycompany/app/main/MainSelectAdapter$MainSelectItem;-><init>(III)V

    .line 226
    .line 227
    .line 228
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 229
    .line 230
    .line 231
    goto :goto_2

    .line 232
    :cond_6
    new-instance v2, Lcom/mycompany/app/main/MainSelectAdapter$MainSelectItem;

    .line 233
    .line 234
    sget v8, Lnet/kaki87/soul2/testing/R$drawable;->outline_visibility_black_24:I

    .line 235
    .line 236
    sget v9, Lnet/kaki87/soul2/testing/R$string;->preview:I

    .line 237
    .line 238
    invoke-direct {v2, v4, v8, v9}, Lcom/mycompany/app/main/MainSelectAdapter$MainSelectItem;-><init>(III)V

    .line 239
    .line 240
    .line 241
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 242
    .line 243
    .line 244
    new-instance v2, Lcom/mycompany/app/main/MainSelectAdapter$MainSelectItem;

    .line 245
    .line 246
    sget v8, Lnet/kaki87/soul2/testing/R$drawable;->outline_add_box_black_24:I

    .line 247
    .line 248
    sget v9, Lnet/kaki87/soul2/testing/R$string;->new_url:I

    .line 249
    .line 250
    invoke-direct {v2, v3, v8, v9}, Lcom/mycompany/app/main/MainSelectAdapter$MainSelectItem;-><init>(III)V

    .line 251
    .line 252
    .line 253
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 254
    .line 255
    .line 256
    new-instance v2, Lcom/mycompany/app/main/MainSelectAdapter$MainSelectItem;

    .line 257
    .line 258
    sget v8, Lnet/kaki87/soul2/testing/R$drawable;->outline_photo_library_black_24:I

    .line 259
    .line 260
    sget v9, Lnet/kaki87/soul2/testing/R$string;->only_image:I

    .line 261
    .line 262
    invoke-direct {v2, v6, v8, v9}, Lcom/mycompany/app/main/MainSelectAdapter$MainSelectItem;-><init>(III)V

    .line 263
    .line 264
    .line 265
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 266
    .line 267
    .line 268
    new-instance v2, Lcom/mycompany/app/main/MainSelectAdapter$MainSelectItem;

    .line 269
    .line 270
    sget v6, Lnet/kaki87/soul2/testing/R$drawable;->outline_cloud_download_black_24:I

    .line 271
    .line 272
    sget v8, Lnet/kaki87/soul2/testing/R$string;->image_list:I

    .line 273
    .line 274
    invoke-direct {v2, v5, v6, v8}, Lcom/mycompany/app/main/MainSelectAdapter$MainSelectItem;-><init>(III)V

    .line 275
    .line 276
    .line 277
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 278
    .line 279
    .line 280
    new-instance v2, Lcom/mycompany/app/main/MainSelectAdapter$MainSelectItem;

    .line 281
    .line 282
    sget v5, Lnet/kaki87/soul2/testing/R$drawable;->outline_block_black_24:I

    .line 283
    .line 284
    sget v6, Lnet/kaki87/soul2/testing/R$string;->pop_allow:I

    .line 285
    .line 286
    invoke-direct {v2, v7, v5, v6}, Lcom/mycompany/app/main/MainSelectAdapter$MainSelectItem;-><init>(III)V

    .line 287
    .line 288
    .line 289
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 290
    .line 291
    .line 292
    :goto_2
    iget-boolean v2, v0, Lcom/mycompany/app/dialog/DialogPopupMenu;->l0:Z

    .line 293
    .line 294
    const/4 v5, -0x1

    .line 295
    if-eqz v2, :cond_7

    .line 296
    .line 297
    goto :goto_3

    .line 298
    :cond_7
    move v7, v5

    .line 299
    :goto_3
    new-instance v2, Lcom/mycompany/app/main/MainSelectAdapter;

    .line 300
    .line 301
    new-instance v6, Lcom/mycompany/app/dialog/DialogPopupMenu$3;

    .line 302
    .line 303
    invoke-direct {v6, v0}, Lcom/mycompany/app/dialog/DialogPopupMenu$3;-><init>(Lcom/mycompany/app/dialog/DialogPopupMenu;)V

    .line 304
    .line 305
    .line 306
    invoke-direct {v2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 307
    .line 308
    .line 309
    iput-object v1, v2, Lcom/mycompany/app/main/MainSelectAdapter;->d:Ljava/util/List;

    .line 310
    .line 311
    const/4 v1, 0x5

    .line 312
    iput v1, v2, Lcom/mycompany/app/main/MainSelectAdapter;->e:I

    .line 313
    .line 314
    iput v7, v2, Lcom/mycompany/app/main/MainSelectAdapter;->f:I

    .line 315
    .line 316
    if-eq v7, v5, :cond_8

    .line 317
    .line 318
    move v4, v3

    .line 319
    :cond_8
    iput-boolean v4, v2, Lcom/mycompany/app/main/MainSelectAdapter;->h:Z

    .line 320
    .line 321
    iput-object v6, v2, Lcom/mycompany/app/main/MainSelectAdapter;->i:Lcom/mycompany/app/main/MainSelectAdapter$MainSelectListener;

    .line 322
    .line 323
    iput-object v2, v0, Lcom/mycompany/app/dialog/DialogPopupMenu;->h0:Lcom/mycompany/app/main/MainSelectAdapter;

    .line 324
    .line 325
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogPopupMenu;->f0:Lcom/mycompany/app/view/MyRecyclerView;

    .line 326
    .line 327
    invoke-static {v3, v1}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->w(ILcom/mycompany/app/view/MyRecyclerView;)V

    .line 328
    .line 329
    .line 330
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogPopupMenu;->f0:Lcom/mycompany/app/view/MyRecyclerView;

    .line 331
    .line 332
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogPopupMenu;->h0:Lcom/mycompany/app/main/MainSelectAdapter;

    .line 333
    .line 334
    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 335
    .line 336
    .line 337
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogPopupMenu;->c0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 338
    .line 339
    new-instance v2, Lcom/mycompany/app/dialog/DialogPopupMenu$4;

    .line 340
    .line 341
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogPopupMenu$4;-><init>(Lcom/mycompany/app/dialog/DialogPopupMenu;)V

    .line 342
    .line 343
    .line 344
    invoke-virtual {v0, v1, v2}, Lcom/mycompany/app/view/MyDialogBottom;->g(Landroid/view/View;Lcom/mycompany/app/view/MyDialogBottom$BotViewListener;)V

    .line 345
    .line 346
    .line 347
    :cond_9
    :goto_4
    return-void
.end method
