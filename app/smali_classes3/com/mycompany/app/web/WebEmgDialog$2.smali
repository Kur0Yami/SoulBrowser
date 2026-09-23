.class Lcom/mycompany/app/web/WebEmgDialog$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/web/WebEmgDialog;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/web/WebEmgDialog;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/web/WebEmgDialog$2;->c:Lcom/mycompany/app/web/WebEmgDialog;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebEmgDialog$2;->c:Lcom/mycompany/app/web/WebEmgDialog;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/web/WebEmgDialog;->K:Lcom/mycompany/app/view/MyMainRelative;

    .line 4
    .line 5
    if-eqz v1, :cond_6

    .line 6
    .line 7
    iget-object v2, v0, Lcom/mycompany/app/web/WebEmgDialog;->H:Landroid/content/Context;

    .line 8
    .line 9
    if-nez v2, :cond_0

    .line 10
    .line 11
    goto/16 :goto_3

    .line 12
    .line 13
    :cond_0
    iget-object v2, v0, Lcom/mycompany/app/web/WebEmgDialog;->G:Lcom/mycompany/app/web/WebViewActivity;

    .line 14
    .line 15
    if-nez v2, :cond_1

    .line 16
    .line 17
    goto/16 :goto_3

    .line 18
    .line 19
    :cond_1
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyMainRelative;->setWindow(Landroid/view/Window;)V

    .line 24
    .line 25
    .line 26
    iget-object v1, v0, Lcom/mycompany/app/web/WebEmgDialog;->G:Lcom/mycompany/app/web/WebViewActivity;

    .line 27
    .line 28
    iget-object v2, v0, Lcom/mycompany/app/web/WebEmgDialog;->K:Lcom/mycompany/app/view/MyMainRelative;

    .line 29
    .line 30
    const/4 v3, 0x1

    .line 31
    invoke-virtual {v1, v2, v3}, Lcom/mycompany/app/main/MainActivity;->n0(Landroid/view/View;Z)V

    .line 32
    .line 33
    .line 34
    sget-boolean v1, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 35
    .line 36
    const/high16 v2, -0x1000000

    .line 37
    .line 38
    const v3, -0x50506

    .line 39
    .line 40
    .line 41
    if-eqz v1, :cond_2

    .line 42
    .line 43
    iget-object v1, v0, Lcom/mycompany/app/web/WebEmgDialog;->M:Landroidx/appcompat/widget/AppCompatTextView;

    .line 44
    .line 45
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 46
    .line 47
    .line 48
    iget-object v1, v0, Lcom/mycompany/app/web/WebEmgDialog;->P:Landroidx/appcompat/widget/AppCompatTextView;

    .line 49
    .line 50
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 51
    .line 52
    .line 53
    iget-object v1, v0, Lcom/mycompany/app/web/WebEmgDialog;->L:Lcom/mycompany/app/view/MyButtonImage;

    .line 54
    .line 55
    sget v4, Lnet/kaki87/soul2/testing/R$drawable;->outline_chevron_left_dark_24:I

    .line 56
    .line 57
    invoke-virtual {v1, v4}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 58
    .line 59
    .line 60
    iget-object v1, v0, Lcom/mycompany/app/web/WebEmgDialog;->N:Lcom/mycompany/app/view/MyButtonImage;

    .line 61
    .line 62
    sget v4, Lnet/kaki87/soul2/testing/R$drawable;->outline_filter_list_dark_24:I

    .line 63
    .line 64
    invoke-virtual {v1, v4}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 65
    .line 66
    .line 67
    iget-object v1, v0, Lcom/mycompany/app/web/WebEmgDialog;->O:Lcom/mycompany/app/view/MyButtonImage;

    .line 68
    .line 69
    sget v4, Lnet/kaki87/soul2/testing/R$drawable;->outline_refresh_dark_24:I

    .line 70
    .line 71
    invoke-virtual {v1, v4}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 72
    .line 73
    .line 74
    iget-object v1, v0, Lcom/mycompany/app/web/WebEmgDialog;->S:Lcom/mycompany/app/view/MyRecyclerView;

    .line 75
    .line 76
    const v4, -0xdededf

    .line 77
    .line 78
    .line 79
    invoke-virtual {v1, v4}, Landroid/view/View;->setBackgroundColor(I)V

    .line 80
    .line 81
    .line 82
    iget-object v1, v0, Lcom/mycompany/app/web/WebEmgDialog;->W:Lcom/mycompany/app/view/MyLineText;

    .line 83
    .line 84
    sget v4, Lnet/kaki87/soul2/testing/R$drawable;->selector_normal_dark:I

    .line 85
    .line 86
    invoke-virtual {v1, v4}, Landroidx/appcompat/widget/AppCompatTextView;->setBackgroundResource(I)V

    .line 87
    .line 88
    .line 89
    iget-object v1, v0, Lcom/mycompany/app/web/WebEmgDialog;->X:Lcom/mycompany/app/view/MyLineText;

    .line 90
    .line 91
    sget v4, Lnet/kaki87/soul2/testing/R$drawable;->selector_normal_dark:I

    .line 92
    .line 93
    invoke-virtual {v1, v4}, Landroidx/appcompat/widget/AppCompatTextView;->setBackgroundResource(I)V

    .line 94
    .line 95
    .line 96
    iget-object v1, v0, Lcom/mycompany/app/web/WebEmgDialog;->Y:Landroidx/appcompat/widget/AppCompatTextView;

    .line 97
    .line 98
    sget v4, Lnet/kaki87/soul2/testing/R$drawable;->selector_normal_dark:I

    .line 99
    .line 100
    invoke-virtual {v1, v4}, Landroidx/appcompat/widget/AppCompatTextView;->setBackgroundResource(I)V

    .line 101
    .line 102
    .line 103
    iget-object v1, v0, Lcom/mycompany/app/web/WebEmgDialog;->Z:Landroidx/appcompat/widget/AppCompatTextView;

    .line 104
    .line 105
    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 106
    .line 107
    .line 108
    iget-object v1, v0, Lcom/mycompany/app/web/WebEmgDialog;->Z:Landroidx/appcompat/widget/AppCompatTextView;

    .line 109
    .line 110
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 111
    .line 112
    .line 113
    iget-object v1, v0, Lcom/mycompany/app/web/WebEmgDialog;->Q:Lcom/mycompany/app/view/MyButtonCheck;

    .line 114
    .line 115
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->baseline_check_circle_dark_24:I

    .line 116
    .line 117
    sget v3, Lnet/kaki87/soul2/testing/R$drawable;->outline_radio_button_unchecked_dark_24:I

    .line 118
    .line 119
    invoke-virtual {v1, v2, v3}, Lcom/mycompany/app/view/MyButtonCheck;->p(II)V

    .line 120
    .line 121
    .line 122
    iget-object v1, v0, Lcom/mycompany/app/web/WebEmgDialog;->L:Lcom/mycompany/app/view/MyButtonImage;

    .line 123
    .line 124
    const v2, -0xc0c0c1

    .line 125
    .line 126
    .line 127
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 128
    .line 129
    .line 130
    iget-object v1, v0, Lcom/mycompany/app/web/WebEmgDialog;->N:Lcom/mycompany/app/view/MyButtonImage;

    .line 131
    .line 132
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 133
    .line 134
    .line 135
    iget-object v1, v0, Lcom/mycompany/app/web/WebEmgDialog;->O:Lcom/mycompany/app/view/MyButtonImage;

    .line 136
    .line 137
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 138
    .line 139
    .line 140
    iget-object v1, v0, Lcom/mycompany/app/web/WebEmgDialog;->Q:Lcom/mycompany/app/view/MyButtonCheck;

    .line 141
    .line 142
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonCheck;->setBgPreColor(I)V

    .line 143
    .line 144
    .line 145
    goto :goto_0

    .line 146
    :cond_2
    iget-object v1, v0, Lcom/mycompany/app/web/WebEmgDialog;->M:Landroidx/appcompat/widget/AppCompatTextView;

    .line 147
    .line 148
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 149
    .line 150
    .line 151
    iget-object v1, v0, Lcom/mycompany/app/web/WebEmgDialog;->P:Landroidx/appcompat/widget/AppCompatTextView;

    .line 152
    .line 153
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 154
    .line 155
    .line 156
    iget-object v1, v0, Lcom/mycompany/app/web/WebEmgDialog;->L:Lcom/mycompany/app/view/MyButtonImage;

    .line 157
    .line 158
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->outline_chevron_left_black_24:I

    .line 159
    .line 160
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 161
    .line 162
    .line 163
    iget-object v1, v0, Lcom/mycompany/app/web/WebEmgDialog;->N:Lcom/mycompany/app/view/MyButtonImage;

    .line 164
    .line 165
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->outline_filter_list_black_24:I

    .line 166
    .line 167
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 168
    .line 169
    .line 170
    iget-object v1, v0, Lcom/mycompany/app/web/WebEmgDialog;->O:Lcom/mycompany/app/view/MyButtonImage;

    .line 171
    .line 172
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->outline_refresh_black_24:I

    .line 173
    .line 174
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 175
    .line 176
    .line 177
    iget-object v1, v0, Lcom/mycompany/app/web/WebEmgDialog;->S:Lcom/mycompany/app/view/MyRecyclerView;

    .line 178
    .line 179
    invoke-virtual {v1, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 180
    .line 181
    .line 182
    iget-object v1, v0, Lcom/mycompany/app/web/WebEmgDialog;->W:Lcom/mycompany/app/view/MyLineText;

    .line 183
    .line 184
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->selector_normal_gray:I

    .line 185
    .line 186
    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/AppCompatTextView;->setBackgroundResource(I)V

    .line 187
    .line 188
    .line 189
    iget-object v1, v0, Lcom/mycompany/app/web/WebEmgDialog;->X:Lcom/mycompany/app/view/MyLineText;

    .line 190
    .line 191
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->selector_normal_gray:I

    .line 192
    .line 193
    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/AppCompatTextView;->setBackgroundResource(I)V

    .line 194
    .line 195
    .line 196
    iget-object v1, v0, Lcom/mycompany/app/web/WebEmgDialog;->Y:Landroidx/appcompat/widget/AppCompatTextView;

    .line 197
    .line 198
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->selector_normal_gray:I

    .line 199
    .line 200
    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/AppCompatTextView;->setBackgroundResource(I)V

    .line 201
    .line 202
    .line 203
    iget-object v1, v0, Lcom/mycompany/app/web/WebEmgDialog;->Z:Landroidx/appcompat/widget/AppCompatTextView;

    .line 204
    .line 205
    const v2, -0x70708

    .line 206
    .line 207
    .line 208
    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 209
    .line 210
    .line 211
    iget-object v1, v0, Lcom/mycompany/app/web/WebEmgDialog;->Z:Landroidx/appcompat/widget/AppCompatTextView;

    .line 212
    .line 213
    const v2, -0xe19938

    .line 214
    .line 215
    .line 216
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 217
    .line 218
    .line 219
    iget-object v1, v0, Lcom/mycompany/app/web/WebEmgDialog;->Q:Lcom/mycompany/app/view/MyButtonCheck;

    .line 220
    .line 221
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->baseline_check_circle_black_24:I

    .line 222
    .line 223
    sget v3, Lnet/kaki87/soul2/testing/R$drawable;->outline_radio_button_unchecked_black_24:I

    .line 224
    .line 225
    invoke-virtual {v1, v2, v3}, Lcom/mycompany/app/view/MyButtonCheck;->p(II)V

    .line 226
    .line 227
    .line 228
    iget-object v1, v0, Lcom/mycompany/app/web/WebEmgDialog;->L:Lcom/mycompany/app/view/MyButtonImage;

    .line 229
    .line 230
    const/high16 v2, 0x21000000

    .line 231
    .line 232
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 233
    .line 234
    .line 235
    iget-object v1, v0, Lcom/mycompany/app/web/WebEmgDialog;->N:Lcom/mycompany/app/view/MyButtonImage;

    .line 236
    .line 237
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 238
    .line 239
    .line 240
    iget-object v1, v0, Lcom/mycompany/app/web/WebEmgDialog;->O:Lcom/mycompany/app/view/MyButtonImage;

    .line 241
    .line 242
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 243
    .line 244
    .line 245
    iget-object v1, v0, Lcom/mycompany/app/web/WebEmgDialog;->Q:Lcom/mycompany/app/view/MyButtonCheck;

    .line 246
    .line 247
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonCheck;->setBgPreColor(I)V

    .line 248
    .line 249
    .line 250
    :goto_0
    iget-object v1, v0, Lcom/mycompany/app/web/WebEmgDialog;->L:Lcom/mycompany/app/view/MyButtonImage;

    .line 251
    .line 252
    new-instance v2, Lcom/mycompany/app/web/WebEmgDialog$3;

    .line 253
    .line 254
    invoke-direct {v2, v0}, Lcom/mycompany/app/web/WebEmgDialog$3;-><init>(Lcom/mycompany/app/web/WebEmgDialog;)V

    .line 255
    .line 256
    .line 257
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 258
    .line 259
    .line 260
    iget-object v1, v0, Lcom/mycompany/app/web/WebEmgDialog;->N:Lcom/mycompany/app/view/MyButtonImage;

    .line 261
    .line 262
    new-instance v2, Lcom/mycompany/app/web/WebEmgDialog$4;

    .line 263
    .line 264
    invoke-direct {v2, v0}, Lcom/mycompany/app/web/WebEmgDialog$4;-><init>(Lcom/mycompany/app/web/WebEmgDialog;)V

    .line 265
    .line 266
    .line 267
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 268
    .line 269
    .line 270
    iget-object v1, v0, Lcom/mycompany/app/web/WebEmgDialog;->O:Lcom/mycompany/app/view/MyButtonImage;

    .line 271
    .line 272
    new-instance v2, Lcom/mycompany/app/web/WebEmgDialog$5;

    .line 273
    .line 274
    invoke-direct {v2, v0}, Lcom/mycompany/app/web/WebEmgDialog$5;-><init>(Lcom/mycompany/app/web/WebEmgDialog;)V

    .line 275
    .line 276
    .line 277
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 278
    .line 279
    .line 280
    iget-object v1, v0, Lcom/mycompany/app/web/WebEmgDialog;->Q:Lcom/mycompany/app/view/MyButtonCheck;

    .line 281
    .line 282
    new-instance v2, Lcom/mycompany/app/web/WebEmgDialog$6;

    .line 283
    .line 284
    invoke-direct {v2, v0}, Lcom/mycompany/app/web/WebEmgDialog$6;-><init>(Lcom/mycompany/app/web/WebEmgDialog;)V

    .line 285
    .line 286
    .line 287
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonCheck;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 288
    .line 289
    .line 290
    invoke-virtual {v0}, Lcom/mycompany/app/web/WebEmgDialog;->A()I

    .line 291
    .line 292
    .line 293
    move-result v1

    .line 294
    iput v1, v0, Lcom/mycompany/app/web/WebEmgDialog;->e0:I

    .line 295
    .line 296
    new-instance v1, Lcom/mycompany/app/view/MyManagerGrid;

    .line 297
    .line 298
    iget v2, v0, Lcom/mycompany/app/web/WebEmgDialog;->d0:I

    .line 299
    .line 300
    invoke-direct {v1, v2}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(I)V

    .line 301
    .line 302
    .line 303
    iput-object v1, v0, Lcom/mycompany/app/web/WebEmgDialog;->c0:Lcom/mycompany/app/view/MyManagerGrid;

    .line 304
    .line 305
    new-instance v2, Lcom/mycompany/app/web/WebEmgDialog$7;

    .line 306
    .line 307
    invoke-direct {v2, v0}, Lcom/mycompany/app/web/WebEmgDialog$7;-><init>(Lcom/mycompany/app/web/WebEmgDialog;)V

    .line 308
    .line 309
    .line 310
    iput-object v2, v1, Landroidx/recyclerview/widget/GridLayoutManager;->K:Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;

    .line 311
    .line 312
    new-instance v3, Lcom/mycompany/app/web/WebGridAdapter;

    .line 313
    .line 314
    iget-object v4, v0, Lcom/mycompany/app/web/WebEmgDialog;->H:Landroid/content/Context;

    .line 315
    .line 316
    iget-object v5, v0, Lcom/mycompany/app/web/WebEmgDialog;->i0:Ljava/lang/String;

    .line 317
    .line 318
    iget v6, v0, Lcom/mycompany/app/web/WebEmgDialog;->e0:I

    .line 319
    .line 320
    iget-object v7, v0, Lcom/mycompany/app/web/WebEmgDialog;->c0:Lcom/mycompany/app/view/MyManagerGrid;

    .line 321
    .line 322
    const/4 v8, 0x1

    .line 323
    invoke-direct/range {v3 .. v8}, Lcom/mycompany/app/web/WebGridAdapter;-><init>(Landroid/content/Context;Ljava/lang/String;ILcom/mycompany/app/view/MyManagerGrid;I)V

    .line 324
    .line 325
    .line 326
    iput-object v3, v0, Lcom/mycompany/app/web/WebEmgDialog;->b0:Lcom/mycompany/app/web/WebGridAdapter;

    .line 327
    .line 328
    new-instance v1, Lcom/mycompany/app/web/WebEmgDialog$8;

    .line 329
    .line 330
    invoke-direct {v1, v0}, Lcom/mycompany/app/web/WebEmgDialog$8;-><init>(Lcom/mycompany/app/web/WebEmgDialog;)V

    .line 331
    .line 332
    .line 333
    iput-object v1, v3, Lcom/mycompany/app/web/WebGridAdapter;->q:Lcom/mycompany/app/web/WebGridAdapter$WebGridListener;

    .line 334
    .line 335
    iget-object v1, v0, Lcom/mycompany/app/web/WebEmgDialog;->S:Lcom/mycompany/app/view/MyRecyclerView;

    .line 336
    .line 337
    new-instance v2, Lcom/mycompany/app/web/WebEmgDialog$9;

    .line 338
    .line 339
    invoke-direct {v2, v0}, Lcom/mycompany/app/web/WebEmgDialog$9;-><init>(Lcom/mycompany/app/web/WebEmgDialog;)V

    .line 340
    .line 341
    .line 342
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyRecyclerView;->setSizeListener(Lcom/mycompany/app/image/ImageSizeListener;)V

    .line 343
    .line 344
    .line 345
    iget-object v1, v0, Lcom/mycompany/app/web/WebEmgDialog;->S:Lcom/mycompany/app/view/MyRecyclerView;

    .line 346
    .line 347
    iget-object v2, v0, Lcom/mycompany/app/web/WebEmgDialog;->c0:Lcom/mycompany/app/view/MyManagerGrid;

    .line 348
    .line 349
    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 350
    .line 351
    .line 352
    iget-object v1, v0, Lcom/mycompany/app/web/WebEmgDialog;->S:Lcom/mycompany/app/view/MyRecyclerView;

    .line 353
    .line 354
    iget-object v2, v0, Lcom/mycompany/app/web/WebEmgDialog;->b0:Lcom/mycompany/app/web/WebGridAdapter;

    .line 355
    .line 356
    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 357
    .line 358
    .line 359
    iget-object v1, v0, Lcom/mycompany/app/web/WebEmgDialog;->S:Lcom/mycompany/app/view/MyRecyclerView;

    .line 360
    .line 361
    new-instance v2, Lcom/mycompany/app/web/WebEmgDialog$10;

    .line 362
    .line 363
    invoke-direct {v2, v0}, Lcom/mycompany/app/web/WebEmgDialog$10;-><init>(Lcom/mycompany/app/web/WebEmgDialog;)V

    .line 364
    .line 365
    .line 366
    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->j(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 367
    .line 368
    .line 369
    iget-object v1, v0, Lcom/mycompany/app/web/WebEmgDialog;->T:Lcom/mycompany/app/view/MyScrollBar;

    .line 370
    .line 371
    new-instance v2, Lcom/mycompany/app/web/WebEmgDialog$11;

    .line 372
    .line 373
    invoke-direct {v2, v0}, Lcom/mycompany/app/web/WebEmgDialog$11;-><init>(Lcom/mycompany/app/web/WebEmgDialog;)V

    .line 374
    .line 375
    .line 376
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyScrollBar;->setListener(Lcom/mycompany/app/view/MyScrollBar$ScrollBarListener;)V

    .line 377
    .line 378
    .line 379
    iget-object v1, v0, Lcom/mycompany/app/web/WebEmgDialog;->W:Lcom/mycompany/app/view/MyLineText;

    .line 380
    .line 381
    const/4 v2, 0x0

    .line 382
    invoke-virtual {v1, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 383
    .line 384
    .line 385
    iget-object v1, v0, Lcom/mycompany/app/web/WebEmgDialog;->W:Lcom/mycompany/app/view/MyLineText;

    .line 386
    .line 387
    sget-boolean v3, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 388
    .line 389
    const v4, -0x252526

    .line 390
    .line 391
    .line 392
    const v5, -0x7f7f80

    .line 393
    .line 394
    .line 395
    if-eqz v3, :cond_3

    .line 396
    .line 397
    move v3, v5

    .line 398
    goto :goto_1

    .line 399
    :cond_3
    move v3, v4

    .line 400
    :goto_1
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 401
    .line 402
    .line 403
    iget-object v1, v0, Lcom/mycompany/app/web/WebEmgDialog;->W:Lcom/mycompany/app/view/MyLineText;

    .line 404
    .line 405
    new-instance v3, Lcom/mycompany/app/web/WebEmgDialog$12;

    .line 406
    .line 407
    invoke-direct {v3, v0}, Lcom/mycompany/app/web/WebEmgDialog$12;-><init>(Lcom/mycompany/app/web/WebEmgDialog;)V

    .line 408
    .line 409
    .line 410
    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 411
    .line 412
    .line 413
    iget-object v1, v0, Lcom/mycompany/app/web/WebEmgDialog;->X:Lcom/mycompany/app/view/MyLineText;

    .line 414
    .line 415
    invoke-virtual {v1, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 416
    .line 417
    .line 418
    iget-object v1, v0, Lcom/mycompany/app/web/WebEmgDialog;->X:Lcom/mycompany/app/view/MyLineText;

    .line 419
    .line 420
    sget-boolean v3, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 421
    .line 422
    if-eqz v3, :cond_4

    .line 423
    .line 424
    move v3, v5

    .line 425
    goto :goto_2

    .line 426
    :cond_4
    move v3, v4

    .line 427
    :goto_2
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 428
    .line 429
    .line 430
    iget-object v1, v0, Lcom/mycompany/app/web/WebEmgDialog;->X:Lcom/mycompany/app/view/MyLineText;

    .line 431
    .line 432
    new-instance v3, Lcom/mycompany/app/web/WebEmgDialog$13;

    .line 433
    .line 434
    invoke-direct {v3, v0}, Lcom/mycompany/app/web/WebEmgDialog$13;-><init>(Lcom/mycompany/app/web/WebEmgDialog;)V

    .line 435
    .line 436
    .line 437
    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 438
    .line 439
    .line 440
    iget-object v1, v0, Lcom/mycompany/app/web/WebEmgDialog;->Y:Landroidx/appcompat/widget/AppCompatTextView;

    .line 441
    .line 442
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 443
    .line 444
    .line 445
    iget-object v1, v0, Lcom/mycompany/app/web/WebEmgDialog;->Y:Landroidx/appcompat/widget/AppCompatTextView;

    .line 446
    .line 447
    sget-boolean v3, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 448
    .line 449
    if-eqz v3, :cond_5

    .line 450
    .line 451
    move v4, v5

    .line 452
    :cond_5
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 453
    .line 454
    .line 455
    iget-object v1, v0, Lcom/mycompany/app/web/WebEmgDialog;->Y:Landroidx/appcompat/widget/AppCompatTextView;

    .line 456
    .line 457
    new-instance v3, Lcom/mycompany/app/web/WebEmgDialog$14;

    .line 458
    .line 459
    invoke-direct {v3, v0}, Lcom/mycompany/app/web/WebEmgDialog$14;-><init>(Lcom/mycompany/app/web/WebEmgDialog;)V

    .line 460
    .line 461
    .line 462
    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 463
    .line 464
    .line 465
    iget-object v1, v0, Lcom/mycompany/app/web/WebEmgDialog;->Z:Landroidx/appcompat/widget/AppCompatTextView;

    .line 466
    .line 467
    const-string v3, "0 / 0"

    .line 468
    .line 469
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 470
    .line 471
    .line 472
    iget-object v1, v0, Lcom/mycompany/app/web/WebEmgDialog;->Z:Landroidx/appcompat/widget/AppCompatTextView;

    .line 473
    .line 474
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 475
    .line 476
    .line 477
    iget-object v1, v0, Lcom/mycompany/app/web/WebEmgDialog;->Z:Landroidx/appcompat/widget/AppCompatTextView;

    .line 478
    .line 479
    new-instance v2, Lcom/mycompany/app/web/WebEmgDialog$15;

    .line 480
    .line 481
    invoke-direct {v2, v0}, Lcom/mycompany/app/web/WebEmgDialog$15;-><init>(Lcom/mycompany/app/web/WebEmgDialog;)V

    .line 482
    .line 483
    .line 484
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 485
    .line 486
    .line 487
    iget-object v1, v0, Lcom/mycompany/app/web/WebEmgDialog;->K:Lcom/mycompany/app/view/MyMainRelative;

    .line 488
    .line 489
    new-instance v2, Lcom/mycompany/app/web/WebEmgDialog$16;

    .line 490
    .line 491
    invoke-direct {v2, v0}, Lcom/mycompany/app/web/WebEmgDialog$16;-><init>(Lcom/mycompany/app/web/WebEmgDialog;)V

    .line 492
    .line 493
    .line 494
    invoke-virtual {v0, v1, v2}, Lcom/mycompany/app/view/MyDialogNormal;->g(Landroid/view/View;Lcom/mycompany/app/view/MyDialogBottom$BotViewListener;)V

    .line 495
    .line 496
    .line 497
    :cond_6
    :goto_3
    return-void
.end method
