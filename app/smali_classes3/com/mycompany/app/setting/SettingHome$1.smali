.class Lcom/mycompany/app/setting/SettingHome$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/setting/SettingHome;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/setting/SettingHome;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/setting/SettingHome$1;->c:Lcom/mycompany/app/setting/SettingHome;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 1
    sget v0, Lcom/mycompany/app/setting/SettingHome;->E2:I

    .line 2
    .line 3
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingHome$1;->c:Lcom/mycompany/app/setting/SettingHome;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingActivity;->E1:Lcom/mycompany/app/view/MyMainRelative;

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    goto/16 :goto_3

    .line 10
    .line 11
    :cond_0
    sget-boolean v1, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 12
    .line 13
    if-eqz v1, :cond_1

    .line 14
    .line 15
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingActivity;->G1:Lcom/mycompany/app/view/MyButtonImage;

    .line 16
    .line 17
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->outline_chevron_left_dark_24:I

    .line 18
    .line 19
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 20
    .line 21
    .line 22
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingActivity;->H1:Landroidx/appcompat/widget/AppCompatTextView;

    .line 23
    .line 24
    const v2, -0x50506

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 28
    .line 29
    .line 30
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingActivity;->L1:Lcom/mycompany/app/view/MyRecyclerView;

    .line 31
    .line 32
    const v3, -0xdededf

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 36
    .line 37
    .line 38
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingHome;->Y1:Lcom/mycompany/app/view/MyButtonImage;

    .line 39
    .line 40
    sget v3, Lnet/kaki87/soul2/testing/R$drawable;->outline_check_dark_24:I

    .line 41
    .line 42
    invoke-virtual {v1, v3}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 43
    .line 44
    .line 45
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingHome;->a2:Lcom/mycompany/app/view/MyEditText;

    .line 46
    .line 47
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 48
    .line 49
    .line 50
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingHome;->b2:Lcom/mycompany/app/view/MyButtonImage;

    .line 51
    .line 52
    sget v3, Lnet/kaki87/soul2/testing/R$drawable;->outline_cancel_dark_18:I

    .line 53
    .line 54
    invoke-virtual {v1, v3}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 55
    .line 56
    .line 57
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingHome;->c2:Lcom/mycompany/app/view/MyButtonImage;

    .line 58
    .line 59
    sget v3, Lnet/kaki87/soul2/testing/R$drawable;->outline_more_vert_dark_24:I

    .line 60
    .line 61
    invoke-virtual {v1, v3}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 62
    .line 63
    .line 64
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingActivity;->G1:Lcom/mycompany/app/view/MyButtonImage;

    .line 65
    .line 66
    const v3, -0xc0c0c1

    .line 67
    .line 68
    .line 69
    invoke-virtual {v1, v3}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 70
    .line 71
    .line 72
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingHome;->Y1:Lcom/mycompany/app/view/MyButtonImage;

    .line 73
    .line 74
    invoke-virtual {v1, v3}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 75
    .line 76
    .line 77
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingHome;->b2:Lcom/mycompany/app/view/MyButtonImage;

    .line 78
    .line 79
    invoke-virtual {v1, v3}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 80
    .line 81
    .line 82
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingHome;->c2:Lcom/mycompany/app/view/MyButtonImage;

    .line 83
    .line 84
    invoke-virtual {v1, v3}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 85
    .line 86
    .line 87
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingHome;->d2:Lcom/mycompany/app/view/MyLineText;

    .line 88
    .line 89
    sget v3, Lnet/kaki87/soul2/testing/R$drawable;->selector_normal_dark:I

    .line 90
    .line 91
    invoke-virtual {v1, v3}, Landroidx/appcompat/widget/AppCompatTextView;->setBackgroundResource(I)V

    .line 92
    .line 93
    .line 94
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingHome;->e2:Landroidx/appcompat/widget/AppCompatTextView;

    .line 95
    .line 96
    sget v3, Lnet/kaki87/soul2/testing/R$drawable;->selector_normal_dark:I

    .line 97
    .line 98
    invoke-virtual {v1, v3}, Landroidx/appcompat/widget/AppCompatTextView;->setBackgroundResource(I)V

    .line 99
    .line 100
    .line 101
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingHome;->d2:Lcom/mycompany/app/view/MyLineText;

    .line 102
    .line 103
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 104
    .line 105
    .line 106
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingHome;->e2:Landroidx/appcompat/widget/AppCompatTextView;

    .line 107
    .line 108
    const v2, -0x3e3e3f

    .line 109
    .line 110
    .line 111
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 112
    .line 113
    .line 114
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingHome;->f2:Lcom/google/android/material/tabs/TabLayout;

    .line 115
    .line 116
    const v2, -0x4f4f50

    .line 117
    .line 118
    .line 119
    invoke-virtual {v1, v2}, Lcom/google/android/material/tabs/TabLayout;->setSelectedTabIndicatorColor(I)V

    .line 120
    .line 121
    .line 122
    goto :goto_0

    .line 123
    :cond_1
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingActivity;->G1:Lcom/mycompany/app/view/MyButtonImage;

    .line 124
    .line 125
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->outline_chevron_left_black_24:I

    .line 126
    .line 127
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 128
    .line 129
    .line 130
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingActivity;->H1:Landroidx/appcompat/widget/AppCompatTextView;

    .line 131
    .line 132
    const/high16 v2, -0x1000000

    .line 133
    .line 134
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 135
    .line 136
    .line 137
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingActivity;->L1:Lcom/mycompany/app/view/MyRecyclerView;

    .line 138
    .line 139
    const/4 v3, -0x1

    .line 140
    invoke-virtual {v1, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 141
    .line 142
    .line 143
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingHome;->Y1:Lcom/mycompany/app/view/MyButtonImage;

    .line 144
    .line 145
    sget v3, Lnet/kaki87/soul2/testing/R$drawable;->outline_check_black_24:I

    .line 146
    .line 147
    invoke-virtual {v1, v3}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 148
    .line 149
    .line 150
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingHome;->a2:Lcom/mycompany/app/view/MyEditText;

    .line 151
    .line 152
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 153
    .line 154
    .line 155
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingHome;->b2:Lcom/mycompany/app/view/MyButtonImage;

    .line 156
    .line 157
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->outline_cancel_black_18:I

    .line 158
    .line 159
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 160
    .line 161
    .line 162
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingHome;->c2:Lcom/mycompany/app/view/MyButtonImage;

    .line 163
    .line 164
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->outline_more_vert_black_24:I

    .line 165
    .line 166
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 167
    .line 168
    .line 169
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingActivity;->G1:Lcom/mycompany/app/view/MyButtonImage;

    .line 170
    .line 171
    const/high16 v2, 0x21000000

    .line 172
    .line 173
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 174
    .line 175
    .line 176
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingHome;->Y1:Lcom/mycompany/app/view/MyButtonImage;

    .line 177
    .line 178
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 179
    .line 180
    .line 181
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingHome;->b2:Lcom/mycompany/app/view/MyButtonImage;

    .line 182
    .line 183
    const v2, -0x1f1f20

    .line 184
    .line 185
    .line 186
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 187
    .line 188
    .line 189
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingHome;->c2:Lcom/mycompany/app/view/MyButtonImage;

    .line 190
    .line 191
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 192
    .line 193
    .line 194
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingHome;->d2:Lcom/mycompany/app/view/MyLineText;

    .line 195
    .line 196
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->selector_normal_gray:I

    .line 197
    .line 198
    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/AppCompatTextView;->setBackgroundResource(I)V

    .line 199
    .line 200
    .line 201
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingHome;->e2:Landroidx/appcompat/widget/AppCompatTextView;

    .line 202
    .line 203
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->selector_normal_gray:I

    .line 204
    .line 205
    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/AppCompatTextView;->setBackgroundResource(I)V

    .line 206
    .line 207
    .line 208
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingHome;->d2:Lcom/mycompany/app/view/MyLineText;

    .line 209
    .line 210
    const v2, -0xe19938

    .line 211
    .line 212
    .line 213
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 214
    .line 215
    .line 216
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingHome;->e2:Landroidx/appcompat/widget/AppCompatTextView;

    .line 217
    .line 218
    const v2, -0x9e9e9f

    .line 219
    .line 220
    .line 221
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 222
    .line 223
    .line 224
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingHome;->f2:Lcom/google/android/material/tabs/TabLayout;

    .line 225
    .line 226
    const v2, -0x595616

    .line 227
    .line 228
    .line 229
    invoke-virtual {v1, v2}, Lcom/google/android/material/tabs/TabLayout;->setSelectedTabIndicatorColor(I)V

    .line 230
    .line 231
    .line 232
    :goto_0
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingActivity;->G1:Lcom/mycompany/app/view/MyButtonImage;

    .line 233
    .line 234
    new-instance v2, Lcom/mycompany/app/setting/SettingHome$2;

    .line 235
    .line 236
    invoke-direct {v2, v0}, Lcom/mycompany/app/setting/SettingHome$2;-><init>(Lcom/mycompany/app/setting/SettingHome;)V

    .line 237
    .line 238
    .line 239
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 240
    .line 241
    .line 242
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingHome;->Y1:Lcom/mycompany/app/view/MyButtonImage;

    .line 243
    .line 244
    new-instance v2, Lcom/mycompany/app/setting/SettingHome$3;

    .line 245
    .line 246
    invoke-direct {v2, v0}, Lcom/mycompany/app/setting/SettingHome$3;-><init>(Lcom/mycompany/app/setting/SettingHome;)V

    .line 247
    .line 248
    .line 249
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 250
    .line 251
    .line 252
    iget v1, v0, Lcom/mycompany/app/setting/SettingHome;->B2:I

    .line 253
    .line 254
    const/4 v2, 0x2

    .line 255
    const/4 v3, 0x1

    .line 256
    if-ne v1, v3, :cond_2

    .line 257
    .line 258
    sget-object v1, Lcom/mycompany/app/pref/PrefWeb;->k:Ljava/lang/String;

    .line 259
    .line 260
    goto :goto_2

    .line 261
    :cond_2
    if-ne v1, v2, :cond_3

    .line 262
    .line 263
    sget-object v1, Lcom/mycompany/app/pref/PrefWeb;->l:Ljava/lang/String;

    .line 264
    .line 265
    goto :goto_1

    .line 266
    :cond_3
    sget-object v1, Lcom/mycompany/app/pref/PrefWeb;->m:Ljava/lang/String;

    .line 267
    .line 268
    :goto_1
    const-string v4, "..home_link"

    .line 269
    .line 270
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 271
    .line 272
    .line 273
    move-result v4

    .line 274
    if-eqz v4, :cond_4

    .line 275
    .line 276
    sget-object v1, Lcom/mycompany/app/pref/PrefWeb;->k:Ljava/lang/String;

    .line 277
    .line 278
    :cond_4
    :goto_2
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 279
    .line 280
    .line 281
    move-result v4

    .line 282
    if-nez v4, :cond_5

    .line 283
    .line 284
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 285
    .line 286
    .line 287
    move-result-object v1

    .line 288
    :cond_5
    iget v4, v0, Lcom/mycompany/app/setting/SettingHome;->B2:I

    .line 289
    .line 290
    if-eq v4, v2, :cond_6

    .line 291
    .line 292
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 293
    .line 294
    .line 295
    move-result v4

    .line 296
    if-eqz v4, :cond_6

    .line 297
    .line 298
    const-string v1, "file:///android_asset/shortcut.html"

    .line 299
    .line 300
    :cond_6
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 301
    .line 302
    .line 303
    move-result v4

    .line 304
    const/4 v5, 0x0

    .line 305
    if-nez v4, :cond_7

    .line 306
    .line 307
    iget-object v4, v0, Lcom/mycompany/app/setting/SettingHome;->a2:Lcom/mycompany/app/view/MyEditText;

    .line 308
    .line 309
    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 310
    .line 311
    .line 312
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingHome;->b2:Lcom/mycompany/app/view/MyButtonImage;

    .line 313
    .line 314
    invoke-virtual {v1, v5}, Lcom/mycompany/app/view/MyButtonImage;->setVisibility(I)V

    .line 315
    .line 316
    .line 317
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingHome;->c2:Lcom/mycompany/app/view/MyButtonImage;

    .line 318
    .line 319
    const/16 v4, 0x8

    .line 320
    .line 321
    invoke-virtual {v1, v4}, Lcom/mycompany/app/view/MyButtonImage;->setVisibility(I)V

    .line 322
    .line 323
    .line 324
    :cond_7
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingHome;->a2:Lcom/mycompany/app/view/MyEditText;

    .line 325
    .line 326
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setSelectAllOnFocus(Z)V

    .line 327
    .line 328
    .line 329
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingHome;->a2:Lcom/mycompany/app/view/MyEditText;

    .line 330
    .line 331
    new-instance v4, Lcom/mycompany/app/setting/SettingHome$4;

    .line 332
    .line 333
    invoke-direct {v4, v0}, Lcom/mycompany/app/setting/SettingHome$4;-><init>(Lcom/mycompany/app/setting/SettingHome;)V

    .line 334
    .line 335
    .line 336
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 337
    .line 338
    .line 339
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingHome;->a2:Lcom/mycompany/app/view/MyEditText;

    .line 340
    .line 341
    new-instance v4, Lcom/mycompany/app/setting/SettingHome$5;

    .line 342
    .line 343
    invoke-direct {v4, v0}, Lcom/mycompany/app/setting/SettingHome$5;-><init>(Lcom/mycompany/app/setting/SettingHome;)V

    .line 344
    .line 345
    .line 346
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 347
    .line 348
    .line 349
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingHome;->b2:Lcom/mycompany/app/view/MyButtonImage;

    .line 350
    .line 351
    new-instance v4, Lcom/mycompany/app/setting/SettingHome$6;

    .line 352
    .line 353
    invoke-direct {v4, v0}, Lcom/mycompany/app/setting/SettingHome$6;-><init>(Lcom/mycompany/app/setting/SettingHome;)V

    .line 354
    .line 355
    .line 356
    invoke-virtual {v1, v4}, Lcom/mycompany/app/view/MyButtonImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 357
    .line 358
    .line 359
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingHome;->c2:Lcom/mycompany/app/view/MyButtonImage;

    .line 360
    .line 361
    new-instance v4, Lcom/mycompany/app/setting/SettingHome$7;

    .line 362
    .line 363
    invoke-direct {v4, v0}, Lcom/mycompany/app/setting/SettingHome$7;-><init>(Lcom/mycompany/app/setting/SettingHome;)V

    .line 364
    .line 365
    .line 366
    invoke-virtual {v1, v4}, Lcom/mycompany/app/view/MyButtonImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 367
    .line 368
    .line 369
    new-instance v1, Ljava/util/ArrayList;

    .line 370
    .line 371
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 372
    .line 373
    .line 374
    new-instance v4, Lcom/mycompany/app/main/MainSelectAdapter$MainSelectItem;

    .line 375
    .line 376
    sget v6, Lnet/kaki87/soul2/testing/R$string;->soul_home:I

    .line 377
    .line 378
    invoke-direct {v4, v5, v6}, Lcom/mycompany/app/main/MainSelectAdapter$MainSelectItem;-><init>(II)V

    .line 379
    .line 380
    .line 381
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 382
    .line 383
    .line 384
    new-instance v4, Lcom/mycompany/app/main/MainSelectAdapter$MainSelectItem;

    .line 385
    .line 386
    sget v5, Lnet/kaki87/soul2/testing/R$string;->current_page:I

    .line 387
    .line 388
    invoke-direct {v4, v3, v5}, Lcom/mycompany/app/main/MainSelectAdapter$MainSelectItem;-><init>(II)V

    .line 389
    .line 390
    .line 391
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 392
    .line 393
    .line 394
    new-instance v4, Lcom/mycompany/app/main/MainSelectAdapter$MainSelectItem;

    .line 395
    .line 396
    sget v5, Lnet/kaki87/soul2/testing/R$string;->blank_page:I

    .line 397
    .line 398
    invoke-direct {v4, v2, v5}, Lcom/mycompany/app/main/MainSelectAdapter$MainSelectItem;-><init>(II)V

    .line 399
    .line 400
    .line 401
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 402
    .line 403
    .line 404
    new-instance v2, Lcom/mycompany/app/main/MainSelectAdapter;

    .line 405
    .line 406
    new-instance v4, Lcom/mycompany/app/setting/SettingHome$8;

    .line 407
    .line 408
    invoke-direct {v4, v0}, Lcom/mycompany/app/setting/SettingHome$8;-><init>(Lcom/mycompany/app/setting/SettingHome;)V

    .line 409
    .line 410
    .line 411
    invoke-direct {v2, v1, v4}, Lcom/mycompany/app/main/MainSelectAdapter;-><init>(Ljava/util/ArrayList;Lcom/mycompany/app/main/MainSelectAdapter$MainSelectListener;)V

    .line 412
    .line 413
    .line 414
    iput-object v2, v0, Lcom/mycompany/app/setting/SettingHome;->X1:Lcom/mycompany/app/main/MainSelectAdapter;

    .line 415
    .line 416
    new-instance v1, Lcom/mycompany/app/view/MyManagerLinear;

    .line 417
    .line 418
    invoke-direct {v1, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(I)V

    .line 419
    .line 420
    .line 421
    iput-object v1, v0, Lcom/mycompany/app/setting/SettingActivity;->M1:Lcom/mycompany/app/view/MyManagerLinear;

    .line 422
    .line 423
    iget-object v2, v0, Lcom/mycompany/app/setting/SettingActivity;->L1:Lcom/mycompany/app/view/MyRecyclerView;

    .line 424
    .line 425
    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 426
    .line 427
    .line 428
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingActivity;->L1:Lcom/mycompany/app/view/MyRecyclerView;

    .line 429
    .line 430
    iget-object v2, v0, Lcom/mycompany/app/setting/SettingHome;->X1:Lcom/mycompany/app/main/MainSelectAdapter;

    .line 431
    .line 432
    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 433
    .line 434
    .line 435
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingActivity;->L1:Lcom/mycompany/app/view/MyRecyclerView;

    .line 436
    .line 437
    new-instance v2, Lcom/mycompany/app/setting/SettingHome$9;

    .line 438
    .line 439
    invoke-direct {v2, v0}, Lcom/mycompany/app/setting/SettingHome$9;-><init>(Lcom/mycompany/app/setting/SettingHome;)V

    .line 440
    .line 441
    .line 442
    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->j(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 443
    .line 444
    .line 445
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingHome;->d2:Lcom/mycompany/app/view/MyLineText;

    .line 446
    .line 447
    new-instance v2, Lcom/mycompany/app/setting/SettingHome$10;

    .line 448
    .line 449
    invoke-direct {v2, v0}, Lcom/mycompany/app/setting/SettingHome$10;-><init>(Lcom/mycompany/app/setting/SettingHome;)V

    .line 450
    .line 451
    .line 452
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 453
    .line 454
    .line 455
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingHome;->e2:Landroidx/appcompat/widget/AppCompatTextView;

    .line 456
    .line 457
    new-instance v2, Lcom/mycompany/app/setting/SettingHome$11;

    .line 458
    .line 459
    invoke-direct {v2, v0}, Lcom/mycompany/app/setting/SettingHome$11;-><init>(Lcom/mycompany/app/setting/SettingHome;)V

    .line 460
    .line 461
    .line 462
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 463
    .line 464
    .line 465
    iget-object v1, v0, Lcom/mycompany/app/main/MainActivity;->O0:Landroid/os/Handler;

    .line 466
    .line 467
    if-nez v1, :cond_8

    .line 468
    .line 469
    :goto_3
    return-void

    .line 470
    :cond_8
    new-instance v2, Lcom/mycompany/app/setting/SettingHome$12;

    .line 471
    .line 472
    invoke-direct {v2, v0}, Lcom/mycompany/app/setting/SettingHome$12;-><init>(Lcom/mycompany/app/setting/SettingHome;)V

    .line 473
    .line 474
    .line 475
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 476
    .line 477
    .line 478
    return-void
.end method
