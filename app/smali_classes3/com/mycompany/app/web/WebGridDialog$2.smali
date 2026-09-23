.class Lcom/mycompany/app/web/WebGridDialog$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/web/WebGridDialog;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/web/WebGridDialog;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/web/WebGridDialog$2;->c:Lcom/mycompany/app/web/WebGridDialog;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebGridDialog$2;->c:Lcom/mycompany/app/web/WebGridDialog;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/web/WebGridDialog;->K:Lcom/mycompany/app/view/MyMainRelative;

    .line 4
    .line 5
    if-eqz v1, :cond_6

    .line 6
    .line 7
    iget-object v2, v0, Lcom/mycompany/app/web/WebGridDialog;->H:Landroid/content/Context;

    .line 8
    .line 9
    if-nez v2, :cond_0

    .line 10
    .line 11
    goto/16 :goto_3

    .line 12
    .line 13
    :cond_0
    iget-object v2, v0, Lcom/mycompany/app/web/WebGridDialog;->G:Lcom/mycompany/app/web/WebViewActivity;

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
    iget-object v1, v0, Lcom/mycompany/app/web/WebGridDialog;->G:Lcom/mycompany/app/web/WebViewActivity;

    .line 27
    .line 28
    iget-object v2, v0, Lcom/mycompany/app/web/WebGridDialog;->K:Lcom/mycompany/app/view/MyMainRelative;

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
    const v2, -0x50506

    .line 37
    .line 38
    .line 39
    if-eqz v1, :cond_2

    .line 40
    .line 41
    iget-object v1, v0, Lcom/mycompany/app/web/WebGridDialog;->M:Landroidx/appcompat/widget/AppCompatTextView;

    .line 42
    .line 43
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 44
    .line 45
    .line 46
    iget-object v1, v0, Lcom/mycompany/app/web/WebGridDialog;->P:Landroidx/appcompat/widget/AppCompatTextView;

    .line 47
    .line 48
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 49
    .line 50
    .line 51
    iget-object v1, v0, Lcom/mycompany/app/web/WebGridDialog;->L:Lcom/mycompany/app/view/MyButtonImage;

    .line 52
    .line 53
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->outline_chevron_left_dark_24:I

    .line 54
    .line 55
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 56
    .line 57
    .line 58
    iget-object v1, v0, Lcom/mycompany/app/web/WebGridDialog;->N:Lcom/mycompany/app/view/MyButtonImage;

    .line 59
    .line 60
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->outline_filter_list_dark_24:I

    .line 61
    .line 62
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 63
    .line 64
    .line 65
    iget-object v1, v0, Lcom/mycompany/app/web/WebGridDialog;->O:Lcom/mycompany/app/view/MyButtonImage;

    .line 66
    .line 67
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->outline_refresh_dark_24:I

    .line 68
    .line 69
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 70
    .line 71
    .line 72
    iget-object v1, v0, Lcom/mycompany/app/web/WebGridDialog;->S:Lcom/mycompany/app/view/MyRecyclerView;

    .line 73
    .line 74
    const v2, -0xdededf

    .line 75
    .line 76
    .line 77
    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 78
    .line 79
    .line 80
    iget-object v1, v0, Lcom/mycompany/app/web/WebGridDialog;->W:Lcom/mycompany/app/view/MyLineText;

    .line 81
    .line 82
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->selector_normal_dark:I

    .line 83
    .line 84
    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/AppCompatTextView;->setBackgroundResource(I)V

    .line 85
    .line 86
    .line 87
    iget-object v1, v0, Lcom/mycompany/app/web/WebGridDialog;->X:Lcom/mycompany/app/view/MyLineText;

    .line 88
    .line 89
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->selector_normal_dark:I

    .line 90
    .line 91
    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/AppCompatTextView;->setBackgroundResource(I)V

    .line 92
    .line 93
    .line 94
    iget-object v1, v0, Lcom/mycompany/app/web/WebGridDialog;->Y:Landroidx/appcompat/widget/AppCompatTextView;

    .line 95
    .line 96
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->selector_normal_dark:I

    .line 97
    .line 98
    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/AppCompatTextView;->setBackgroundResource(I)V

    .line 99
    .line 100
    .line 101
    iget-object v1, v0, Lcom/mycompany/app/web/WebGridDialog;->Q:Lcom/mycompany/app/view/MyButtonCheck;

    .line 102
    .line 103
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->baseline_check_circle_dark_24:I

    .line 104
    .line 105
    sget v3, Lnet/kaki87/soul2/testing/R$drawable;->outline_radio_button_unchecked_dark_24:I

    .line 106
    .line 107
    invoke-virtual {v1, v2, v3}, Lcom/mycompany/app/view/MyButtonCheck;->p(II)V

    .line 108
    .line 109
    .line 110
    iget-object v1, v0, Lcom/mycompany/app/web/WebGridDialog;->L:Lcom/mycompany/app/view/MyButtonImage;

    .line 111
    .line 112
    const v2, -0xc0c0c1

    .line 113
    .line 114
    .line 115
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 116
    .line 117
    .line 118
    iget-object v1, v0, Lcom/mycompany/app/web/WebGridDialog;->N:Lcom/mycompany/app/view/MyButtonImage;

    .line 119
    .line 120
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 121
    .line 122
    .line 123
    iget-object v1, v0, Lcom/mycompany/app/web/WebGridDialog;->O:Lcom/mycompany/app/view/MyButtonImage;

    .line 124
    .line 125
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 126
    .line 127
    .line 128
    iget-object v1, v0, Lcom/mycompany/app/web/WebGridDialog;->Q:Lcom/mycompany/app/view/MyButtonCheck;

    .line 129
    .line 130
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonCheck;->setBgPreColor(I)V

    .line 131
    .line 132
    .line 133
    goto :goto_0

    .line 134
    :cond_2
    iget-object v1, v0, Lcom/mycompany/app/web/WebGridDialog;->M:Landroidx/appcompat/widget/AppCompatTextView;

    .line 135
    .line 136
    const/high16 v3, -0x1000000

    .line 137
    .line 138
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 139
    .line 140
    .line 141
    iget-object v1, v0, Lcom/mycompany/app/web/WebGridDialog;->P:Landroidx/appcompat/widget/AppCompatTextView;

    .line 142
    .line 143
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 144
    .line 145
    .line 146
    iget-object v1, v0, Lcom/mycompany/app/web/WebGridDialog;->L:Lcom/mycompany/app/view/MyButtonImage;

    .line 147
    .line 148
    sget v3, Lnet/kaki87/soul2/testing/R$drawable;->outline_chevron_left_black_24:I

    .line 149
    .line 150
    invoke-virtual {v1, v3}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 151
    .line 152
    .line 153
    iget-object v1, v0, Lcom/mycompany/app/web/WebGridDialog;->N:Lcom/mycompany/app/view/MyButtonImage;

    .line 154
    .line 155
    sget v3, Lnet/kaki87/soul2/testing/R$drawable;->outline_filter_list_black_24:I

    .line 156
    .line 157
    invoke-virtual {v1, v3}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 158
    .line 159
    .line 160
    iget-object v1, v0, Lcom/mycompany/app/web/WebGridDialog;->O:Lcom/mycompany/app/view/MyButtonImage;

    .line 161
    .line 162
    sget v3, Lnet/kaki87/soul2/testing/R$drawable;->outline_refresh_black_24:I

    .line 163
    .line 164
    invoke-virtual {v1, v3}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 165
    .line 166
    .line 167
    iget-object v1, v0, Lcom/mycompany/app/web/WebGridDialog;->S:Lcom/mycompany/app/view/MyRecyclerView;

    .line 168
    .line 169
    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 170
    .line 171
    .line 172
    iget-object v1, v0, Lcom/mycompany/app/web/WebGridDialog;->W:Lcom/mycompany/app/view/MyLineText;

    .line 173
    .line 174
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->selector_normal_gray:I

    .line 175
    .line 176
    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/AppCompatTextView;->setBackgroundResource(I)V

    .line 177
    .line 178
    .line 179
    iget-object v1, v0, Lcom/mycompany/app/web/WebGridDialog;->X:Lcom/mycompany/app/view/MyLineText;

    .line 180
    .line 181
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->selector_normal_gray:I

    .line 182
    .line 183
    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/AppCompatTextView;->setBackgroundResource(I)V

    .line 184
    .line 185
    .line 186
    iget-object v1, v0, Lcom/mycompany/app/web/WebGridDialog;->Y:Landroidx/appcompat/widget/AppCompatTextView;

    .line 187
    .line 188
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->selector_normal_gray:I

    .line 189
    .line 190
    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/AppCompatTextView;->setBackgroundResource(I)V

    .line 191
    .line 192
    .line 193
    iget-object v1, v0, Lcom/mycompany/app/web/WebGridDialog;->Q:Lcom/mycompany/app/view/MyButtonCheck;

    .line 194
    .line 195
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->baseline_check_circle_black_24:I

    .line 196
    .line 197
    sget v3, Lnet/kaki87/soul2/testing/R$drawable;->outline_radio_button_unchecked_black_24:I

    .line 198
    .line 199
    invoke-virtual {v1, v2, v3}, Lcom/mycompany/app/view/MyButtonCheck;->p(II)V

    .line 200
    .line 201
    .line 202
    iget-object v1, v0, Lcom/mycompany/app/web/WebGridDialog;->L:Lcom/mycompany/app/view/MyButtonImage;

    .line 203
    .line 204
    const/high16 v2, 0x21000000

    .line 205
    .line 206
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 207
    .line 208
    .line 209
    iget-object v1, v0, Lcom/mycompany/app/web/WebGridDialog;->N:Lcom/mycompany/app/view/MyButtonImage;

    .line 210
    .line 211
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 212
    .line 213
    .line 214
    iget-object v1, v0, Lcom/mycompany/app/web/WebGridDialog;->O:Lcom/mycompany/app/view/MyButtonImage;

    .line 215
    .line 216
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 217
    .line 218
    .line 219
    iget-object v1, v0, Lcom/mycompany/app/web/WebGridDialog;->Q:Lcom/mycompany/app/view/MyButtonCheck;

    .line 220
    .line 221
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonCheck;->setBgPreColor(I)V

    .line 222
    .line 223
    .line 224
    :goto_0
    iget-object v1, v0, Lcom/mycompany/app/web/WebGridDialog;->L:Lcom/mycompany/app/view/MyButtonImage;

    .line 225
    .line 226
    new-instance v2, Lcom/mycompany/app/web/WebGridDialog$3;

    .line 227
    .line 228
    invoke-direct {v2, v0}, Lcom/mycompany/app/web/WebGridDialog$3;-><init>(Lcom/mycompany/app/web/WebGridDialog;)V

    .line 229
    .line 230
    .line 231
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 232
    .line 233
    .line 234
    iget-object v1, v0, Lcom/mycompany/app/web/WebGridDialog;->N:Lcom/mycompany/app/view/MyButtonImage;

    .line 235
    .line 236
    new-instance v2, Lcom/mycompany/app/web/WebGridDialog$4;

    .line 237
    .line 238
    invoke-direct {v2, v0}, Lcom/mycompany/app/web/WebGridDialog$4;-><init>(Lcom/mycompany/app/web/WebGridDialog;)V

    .line 239
    .line 240
    .line 241
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 242
    .line 243
    .line 244
    iget-object v1, v0, Lcom/mycompany/app/web/WebGridDialog;->O:Lcom/mycompany/app/view/MyButtonImage;

    .line 245
    .line 246
    new-instance v2, Lcom/mycompany/app/web/WebGridDialog$5;

    .line 247
    .line 248
    invoke-direct {v2, v0}, Lcom/mycompany/app/web/WebGridDialog$5;-><init>(Lcom/mycompany/app/web/WebGridDialog;)V

    .line 249
    .line 250
    .line 251
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 252
    .line 253
    .line 254
    iget-object v1, v0, Lcom/mycompany/app/web/WebGridDialog;->Q:Lcom/mycompany/app/view/MyButtonCheck;

    .line 255
    .line 256
    new-instance v2, Lcom/mycompany/app/web/WebGridDialog$6;

    .line 257
    .line 258
    invoke-direct {v2, v0}, Lcom/mycompany/app/web/WebGridDialog$6;-><init>(Lcom/mycompany/app/web/WebGridDialog;)V

    .line 259
    .line 260
    .line 261
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonCheck;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 262
    .line 263
    .line 264
    invoke-virtual {v0}, Lcom/mycompany/app/web/WebGridDialog;->w()I

    .line 265
    .line 266
    .line 267
    move-result v1

    .line 268
    iput v1, v0, Lcom/mycompany/app/web/WebGridDialog;->c0:I

    .line 269
    .line 270
    new-instance v1, Lcom/mycompany/app/view/MyManagerGrid;

    .line 271
    .line 272
    iget v2, v0, Lcom/mycompany/app/web/WebGridDialog;->b0:I

    .line 273
    .line 274
    invoke-direct {v1, v2}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(I)V

    .line 275
    .line 276
    .line 277
    iput-object v1, v0, Lcom/mycompany/app/web/WebGridDialog;->a0:Lcom/mycompany/app/view/MyManagerGrid;

    .line 278
    .line 279
    new-instance v2, Lcom/mycompany/app/web/WebGridDialog$7;

    .line 280
    .line 281
    invoke-direct {v2, v0}, Lcom/mycompany/app/web/WebGridDialog$7;-><init>(Lcom/mycompany/app/web/WebGridDialog;)V

    .line 282
    .line 283
    .line 284
    iput-object v2, v1, Landroidx/recyclerview/widget/GridLayoutManager;->K:Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;

    .line 285
    .line 286
    new-instance v3, Lcom/mycompany/app/web/WebGridAdapter;

    .line 287
    .line 288
    iget-object v4, v0, Lcom/mycompany/app/web/WebGridDialog;->H:Landroid/content/Context;

    .line 289
    .line 290
    iget-object v5, v0, Lcom/mycompany/app/web/WebGridDialog;->g0:Ljava/lang/String;

    .line 291
    .line 292
    iget v6, v0, Lcom/mycompany/app/web/WebGridDialog;->c0:I

    .line 293
    .line 294
    iget-object v7, v0, Lcom/mycompany/app/web/WebGridDialog;->a0:Lcom/mycompany/app/view/MyManagerGrid;

    .line 295
    .line 296
    const/4 v8, 0x0

    .line 297
    invoke-direct/range {v3 .. v8}, Lcom/mycompany/app/web/WebGridAdapter;-><init>(Landroid/content/Context;Ljava/lang/String;ILcom/mycompany/app/view/MyManagerGrid;I)V

    .line 298
    .line 299
    .line 300
    iput-object v3, v0, Lcom/mycompany/app/web/WebGridDialog;->Z:Lcom/mycompany/app/web/WebGridAdapter;

    .line 301
    .line 302
    new-instance v1, Lcom/mycompany/app/web/WebGridDialog$8;

    .line 303
    .line 304
    invoke-direct {v1, v0}, Lcom/mycompany/app/web/WebGridDialog$8;-><init>(Lcom/mycompany/app/web/WebGridDialog;)V

    .line 305
    .line 306
    .line 307
    iput-object v1, v3, Lcom/mycompany/app/web/WebGridAdapter;->q:Lcom/mycompany/app/web/WebGridAdapter$WebGridListener;

    .line 308
    .line 309
    iget-object v1, v0, Lcom/mycompany/app/web/WebGridDialog;->S:Lcom/mycompany/app/view/MyRecyclerView;

    .line 310
    .line 311
    new-instance v2, Lcom/mycompany/app/web/WebGridDialog$9;

    .line 312
    .line 313
    invoke-direct {v2, v0}, Lcom/mycompany/app/web/WebGridDialog$9;-><init>(Lcom/mycompany/app/web/WebGridDialog;)V

    .line 314
    .line 315
    .line 316
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyRecyclerView;->setSizeListener(Lcom/mycompany/app/image/ImageSizeListener;)V

    .line 317
    .line 318
    .line 319
    iget-object v1, v0, Lcom/mycompany/app/web/WebGridDialog;->S:Lcom/mycompany/app/view/MyRecyclerView;

    .line 320
    .line 321
    iget-object v2, v0, Lcom/mycompany/app/web/WebGridDialog;->a0:Lcom/mycompany/app/view/MyManagerGrid;

    .line 322
    .line 323
    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 324
    .line 325
    .line 326
    iget-object v1, v0, Lcom/mycompany/app/web/WebGridDialog;->S:Lcom/mycompany/app/view/MyRecyclerView;

    .line 327
    .line 328
    iget-object v2, v0, Lcom/mycompany/app/web/WebGridDialog;->Z:Lcom/mycompany/app/web/WebGridAdapter;

    .line 329
    .line 330
    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 331
    .line 332
    .line 333
    iget-object v1, v0, Lcom/mycompany/app/web/WebGridDialog;->S:Lcom/mycompany/app/view/MyRecyclerView;

    .line 334
    .line 335
    new-instance v2, Lcom/mycompany/app/web/WebGridDialog$10;

    .line 336
    .line 337
    invoke-direct {v2, v0}, Lcom/mycompany/app/web/WebGridDialog$10;-><init>(Lcom/mycompany/app/web/WebGridDialog;)V

    .line 338
    .line 339
    .line 340
    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->j(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 341
    .line 342
    .line 343
    iget-object v1, v0, Lcom/mycompany/app/web/WebGridDialog;->T:Lcom/mycompany/app/view/MyScrollBar;

    .line 344
    .line 345
    new-instance v2, Lcom/mycompany/app/web/WebGridDialog$11;

    .line 346
    .line 347
    invoke-direct {v2, v0}, Lcom/mycompany/app/web/WebGridDialog$11;-><init>(Lcom/mycompany/app/web/WebGridDialog;)V

    .line 348
    .line 349
    .line 350
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyScrollBar;->setListener(Lcom/mycompany/app/view/MyScrollBar$ScrollBarListener;)V

    .line 351
    .line 352
    .line 353
    iget-object v1, v0, Lcom/mycompany/app/web/WebGridDialog;->W:Lcom/mycompany/app/view/MyLineText;

    .line 354
    .line 355
    const/4 v2, 0x0

    .line 356
    invoke-virtual {v1, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 357
    .line 358
    .line 359
    iget-object v1, v0, Lcom/mycompany/app/web/WebGridDialog;->W:Lcom/mycompany/app/view/MyLineText;

    .line 360
    .line 361
    sget-boolean v3, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 362
    .line 363
    const v4, -0x252526

    .line 364
    .line 365
    .line 366
    const v5, -0x7f7f80

    .line 367
    .line 368
    .line 369
    if-eqz v3, :cond_3

    .line 370
    .line 371
    move v3, v5

    .line 372
    goto :goto_1

    .line 373
    :cond_3
    move v3, v4

    .line 374
    :goto_1
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 375
    .line 376
    .line 377
    iget-object v1, v0, Lcom/mycompany/app/web/WebGridDialog;->W:Lcom/mycompany/app/view/MyLineText;

    .line 378
    .line 379
    new-instance v3, Lcom/mycompany/app/web/WebGridDialog$12;

    .line 380
    .line 381
    invoke-direct {v3, v0}, Lcom/mycompany/app/web/WebGridDialog$12;-><init>(Lcom/mycompany/app/web/WebGridDialog;)V

    .line 382
    .line 383
    .line 384
    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 385
    .line 386
    .line 387
    iget-object v1, v0, Lcom/mycompany/app/web/WebGridDialog;->X:Lcom/mycompany/app/view/MyLineText;

    .line 388
    .line 389
    invoke-virtual {v1, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 390
    .line 391
    .line 392
    iget-object v1, v0, Lcom/mycompany/app/web/WebGridDialog;->X:Lcom/mycompany/app/view/MyLineText;

    .line 393
    .line 394
    sget-boolean v3, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 395
    .line 396
    if-eqz v3, :cond_4

    .line 397
    .line 398
    move v3, v5

    .line 399
    goto :goto_2

    .line 400
    :cond_4
    move v3, v4

    .line 401
    :goto_2
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 402
    .line 403
    .line 404
    iget-object v1, v0, Lcom/mycompany/app/web/WebGridDialog;->X:Lcom/mycompany/app/view/MyLineText;

    .line 405
    .line 406
    new-instance v3, Lcom/mycompany/app/web/WebGridDialog$13;

    .line 407
    .line 408
    invoke-direct {v3, v0}, Lcom/mycompany/app/web/WebGridDialog$13;-><init>(Lcom/mycompany/app/web/WebGridDialog;)V

    .line 409
    .line 410
    .line 411
    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 412
    .line 413
    .line 414
    iget-object v1, v0, Lcom/mycompany/app/web/WebGridDialog;->Y:Landroidx/appcompat/widget/AppCompatTextView;

    .line 415
    .line 416
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 417
    .line 418
    .line 419
    iget-object v1, v0, Lcom/mycompany/app/web/WebGridDialog;->Y:Landroidx/appcompat/widget/AppCompatTextView;

    .line 420
    .line 421
    sget-boolean v2, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 422
    .line 423
    if-eqz v2, :cond_5

    .line 424
    .line 425
    move v4, v5

    .line 426
    :cond_5
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 427
    .line 428
    .line 429
    iget-object v1, v0, Lcom/mycompany/app/web/WebGridDialog;->Y:Landroidx/appcompat/widget/AppCompatTextView;

    .line 430
    .line 431
    new-instance v2, Lcom/mycompany/app/web/WebGridDialog$14;

    .line 432
    .line 433
    invoke-direct {v2, v0}, Lcom/mycompany/app/web/WebGridDialog$14;-><init>(Lcom/mycompany/app/web/WebGridDialog;)V

    .line 434
    .line 435
    .line 436
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 437
    .line 438
    .line 439
    iget-object v1, v0, Lcom/mycompany/app/web/WebGridDialog;->K:Lcom/mycompany/app/view/MyMainRelative;

    .line 440
    .line 441
    new-instance v2, Lcom/mycompany/app/web/WebGridDialog$15;

    .line 442
    .line 443
    invoke-direct {v2, v0}, Lcom/mycompany/app/web/WebGridDialog$15;-><init>(Lcom/mycompany/app/web/WebGridDialog;)V

    .line 444
    .line 445
    .line 446
    invoke-virtual {v0, v1, v2}, Lcom/mycompany/app/view/MyDialogNormal;->g(Landroid/view/View;Lcom/mycompany/app/view/MyDialogBottom$BotViewListener;)V

    .line 447
    .line 448
    .line 449
    :cond_6
    :goto_3
    return-void
.end method
