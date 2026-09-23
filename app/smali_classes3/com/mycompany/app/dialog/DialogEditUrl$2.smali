.class Lcom/mycompany/app/dialog/DialogEditUrl$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogEditUrl;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogEditUrl;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogEditUrl$2;->c:Lcom/mycompany/app/dialog/DialogEditUrl;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 13

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogEditUrl$2;->c:Lcom/mycompany/app/dialog/DialogEditUrl;

    .line 2
    .line 3
    iget v1, v0, Lcom/mycompany/app/dialog/DialogEditUrl;->b0:I

    .line 4
    .line 5
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogEditUrl;->d0:Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 6
    .line 7
    if-nez v2, :cond_0

    .line 8
    .line 9
    goto/16 :goto_7

    .line 10
    .line 11
    :cond_0
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogEditUrl;->e0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 12
    .line 13
    if-eqz v3, :cond_d

    .line 14
    .line 15
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogEditUrl;->a0:Landroid/content/Context;

    .line 16
    .line 17
    if-nez v3, :cond_1

    .line 18
    .line 19
    goto/16 :goto_7

    .line 20
    .line 21
    :cond_1
    sget-boolean v3, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 22
    .line 23
    const v4, -0x9e9e9f

    .line 24
    .line 25
    .line 26
    const v5, -0x3e3e3f

    .line 27
    .line 28
    .line 29
    const/high16 v6, -0x1000000

    .line 30
    .line 31
    const v7, -0xe19938

    .line 32
    .line 33
    .line 34
    const v8, -0x50506

    .line 35
    .line 36
    .line 37
    if-eqz v3, :cond_2

    .line 38
    .line 39
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogEditUrl;->h0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 40
    .line 41
    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 42
    .line 43
    .line 44
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogEditUrl;->i0:Lcom/mycompany/app/view/MyEditText;

    .line 45
    .line 46
    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 47
    .line 48
    .line 49
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogEditUrl;->l0:Lcom/mycompany/app/view/MyLineText;

    .line 50
    .line 51
    sget v9, Lnet/kaki87/soul2/testing/R$drawable;->selector_normal_dark:I

    .line 52
    .line 53
    invoke-virtual {v3, v9}, Landroidx/appcompat/widget/AppCompatTextView;->setBackgroundResource(I)V

    .line 54
    .line 55
    .line 56
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogEditUrl;->l0:Lcom/mycompany/app/view/MyLineText;

    .line 57
    .line 58
    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 59
    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_2
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogEditUrl;->h0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 63
    .line 64
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 65
    .line 66
    .line 67
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogEditUrl;->i0:Lcom/mycompany/app/view/MyEditText;

    .line 68
    .line 69
    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 70
    .line 71
    .line 72
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogEditUrl;->l0:Lcom/mycompany/app/view/MyLineText;

    .line 73
    .line 74
    sget v9, Lnet/kaki87/soul2/testing/R$drawable;->selector_normal:I

    .line 75
    .line 76
    invoke-virtual {v3, v9}, Landroidx/appcompat/widget/AppCompatTextView;->setBackgroundResource(I)V

    .line 77
    .line 78
    .line 79
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogEditUrl;->l0:Lcom/mycompany/app/view/MyLineText;

    .line 80
    .line 81
    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 82
    .line 83
    .line 84
    :goto_0
    const-string v3, "https://..."

    .line 85
    .line 86
    const/16 v9, 0x19

    .line 87
    .line 88
    if-eq v1, v9, :cond_4

    .line 89
    .line 90
    const/16 v10, 0x1b

    .line 91
    .line 92
    if-ne v1, v10, :cond_3

    .line 93
    .line 94
    goto :goto_1

    .line 95
    :cond_3
    iget-object v10, v0, Lcom/mycompany/app/dialog/DialogEditUrl;->h0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 96
    .line 97
    sget v11, Lnet/kaki87/soul2/testing/R$string;->domain_url:I

    .line 98
    .line 99
    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(I)V

    .line 100
    .line 101
    .line 102
    goto :goto_2

    .line 103
    :cond_4
    :goto_1
    iget-object v10, v0, Lcom/mycompany/app/dialog/DialogEditUrl;->h0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 104
    .line 105
    sget v11, Lnet/kaki87/soul2/testing/R$string;->url:I

    .line 106
    .line 107
    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(I)V

    .line 108
    .line 109
    .line 110
    iget-object v10, v0, Lcom/mycompany/app/dialog/DialogEditUrl;->i0:Lcom/mycompany/app/view/MyEditText;

    .line 111
    .line 112
    invoke-virtual {v10, v3}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    .line 113
    .line 114
    .line 115
    :goto_2
    iget-object v10, v0, Lcom/mycompany/app/dialog/DialogEditUrl;->i0:Lcom/mycompany/app/view/MyEditText;

    .line 116
    .line 117
    iget-object v11, v2, Lcom/mycompany/app/main/MainItem$ChildItem;->g:Ljava/lang/String;

    .line 118
    .line 119
    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 120
    .line 121
    .line 122
    const/16 v10, 0x17

    .line 123
    .line 124
    const v11, -0x252526

    .line 125
    .line 126
    .line 127
    const/4 v12, 0x1

    .line 128
    if-ne v1, v10, :cond_7

    .line 129
    .line 130
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditUrl;->j0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 131
    .line 132
    if-nez v1, :cond_5

    .line 133
    .line 134
    goto/16 :goto_7

    .line 135
    .line 136
    :cond_5
    sget-boolean v9, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 137
    .line 138
    if-eqz v9, :cond_6

    .line 139
    .line 140
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 141
    .line 142
    .line 143
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditUrl;->k0:Lcom/mycompany/app/view/MyEditText;

    .line 144
    .line 145
    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 146
    .line 147
    .line 148
    goto :goto_3

    .line 149
    :cond_6
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 150
    .line 151
    .line 152
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditUrl;->k0:Lcom/mycompany/app/view/MyEditText;

    .line 153
    .line 154
    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 155
    .line 156
    .line 157
    :goto_3
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditUrl;->j0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 158
    .line 159
    sget v4, Lnet/kaki87/soul2/testing/R$string;->image:I

    .line 160
    .line 161
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(I)V

    .line 162
    .line 163
    .line 164
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditUrl;->k0:Lcom/mycompany/app/view/MyEditText;

    .line 165
    .line 166
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    .line 167
    .line 168
    .line 169
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditUrl;->k0:Lcom/mycompany/app/view/MyEditText;

    .line 170
    .line 171
    iget-object v2, v2, Lcom/mycompany/app/main/MainItem$ChildItem;->h:Ljava/lang/String;

    .line 172
    .line 173
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 174
    .line 175
    .line 176
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditUrl;->i0:Lcom/mycompany/app/view/MyEditText;

    .line 177
    .line 178
    invoke-virtual {v1, v7}, Lcom/mycompany/app/view/MyEditText;->setElineColor(I)V

    .line 179
    .line 180
    .line 181
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditUrl;->k0:Lcom/mycompany/app/view/MyEditText;

    .line 182
    .line 183
    invoke-virtual {v1, v11}, Lcom/mycompany/app/view/MyEditText;->setElineColor(I)V

    .line 184
    .line 185
    .line 186
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditUrl;->k0:Lcom/mycompany/app/view/MyEditText;

    .line 187
    .line 188
    invoke-virtual {v1, v12}, Landroid/widget/TextView;->setSelectAllOnFocus(Z)V

    .line 189
    .line 190
    .line 191
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditUrl;->k0:Lcom/mycompany/app/view/MyEditText;

    .line 192
    .line 193
    new-instance v2, Lcom/mycompany/app/dialog/DialogEditUrl$3;

    .line 194
    .line 195
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogEditUrl$3;-><init>(Lcom/mycompany/app/dialog/DialogEditUrl;)V

    .line 196
    .line 197
    .line 198
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 199
    .line 200
    .line 201
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditUrl;->k0:Lcom/mycompany/app/view/MyEditText;

    .line 202
    .line 203
    new-instance v2, Lcom/mycompany/app/dialog/DialogEditUrl$4;

    .line 204
    .line 205
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogEditUrl$4;-><init>(Lcom/mycompany/app/dialog/DialogEditUrl;)V

    .line 206
    .line 207
    .line 208
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 209
    .line 210
    .line 211
    goto :goto_6

    .line 212
    :cond_7
    if-ne v1, v9, :cond_b

    .line 213
    .line 214
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditUrl;->f0:Lcom/mycompany/app/view/MyRoundImage;

    .line 215
    .line 216
    if-nez v1, :cond_8

    .line 217
    .line 218
    goto/16 :goto_7

    .line 219
    .line 220
    :cond_8
    iget v3, v2, Lcom/mycompany/app/main/MainItem$ChildItem;->w:I

    .line 221
    .line 222
    if-eqz v3, :cond_9

    .line 223
    .line 224
    iget v4, v2, Lcom/mycompany/app/main/MainItem$ChildItem;->v:I

    .line 225
    .line 226
    invoke-virtual {v1, v4, v3}, Lcom/mycompany/app/view/MyRoundImage;->o(II)V

    .line 227
    .line 228
    .line 229
    goto :goto_4

    .line 230
    :cond_9
    const v3, -0x70708

    .line 231
    .line 232
    .line 233
    sget v4, Lnet/kaki87/soul2/testing/R$drawable;->outline_public_black_24:I

    .line 234
    .line 235
    invoke-virtual {v1, v3, v4}, Lcom/mycompany/app/view/MyRoundImage;->o(II)V

    .line 236
    .line 237
    .line 238
    :goto_4
    sget-boolean v1, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 239
    .line 240
    if-eqz v1, :cond_a

    .line 241
    .line 242
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditUrl;->g0:Lcom/mycompany/app/view/MyEditText;

    .line 243
    .line 244
    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 245
    .line 246
    .line 247
    goto :goto_5

    .line 248
    :cond_a
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditUrl;->g0:Lcom/mycompany/app/view/MyEditText;

    .line 249
    .line 250
    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 251
    .line 252
    .line 253
    :goto_5
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditUrl;->g0:Lcom/mycompany/app/view/MyEditText;

    .line 254
    .line 255
    iget-object v2, v2, Lcom/mycompany/app/main/MainItem$ChildItem;->h:Ljava/lang/String;

    .line 256
    .line 257
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 258
    .line 259
    .line 260
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditUrl;->g0:Lcom/mycompany/app/view/MyEditText;

    .line 261
    .line 262
    invoke-virtual {v1, v7}, Lcom/mycompany/app/view/MyEditText;->setElineColor(I)V

    .line 263
    .line 264
    .line 265
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditUrl;->i0:Lcom/mycompany/app/view/MyEditText;

    .line 266
    .line 267
    invoke-virtual {v1, v11}, Lcom/mycompany/app/view/MyEditText;->setElineColor(I)V

    .line 268
    .line 269
    .line 270
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditUrl;->g0:Lcom/mycompany/app/view/MyEditText;

    .line 271
    .line 272
    invoke-virtual {v1, v12}, Landroid/widget/TextView;->setSelectAllOnFocus(Z)V

    .line 273
    .line 274
    .line 275
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditUrl;->g0:Lcom/mycompany/app/view/MyEditText;

    .line 276
    .line 277
    new-instance v2, Lcom/mycompany/app/dialog/DialogEditUrl$5;

    .line 278
    .line 279
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogEditUrl$5;-><init>(Lcom/mycompany/app/dialog/DialogEditUrl;)V

    .line 280
    .line 281
    .line 282
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 283
    .line 284
    .line 285
    goto :goto_6

    .line 286
    :cond_b
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditUrl;->i0:Lcom/mycompany/app/view/MyEditText;

    .line 287
    .line 288
    invoke-virtual {v1, v7}, Lcom/mycompany/app/view/MyEditText;->setElineColor(I)V

    .line 289
    .line 290
    .line 291
    :goto_6
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditUrl;->i0:Lcom/mycompany/app/view/MyEditText;

    .line 292
    .line 293
    invoke-virtual {v1, v12}, Landroid/widget/TextView;->setSelectAllOnFocus(Z)V

    .line 294
    .line 295
    .line 296
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditUrl;->i0:Lcom/mycompany/app/view/MyEditText;

    .line 297
    .line 298
    new-instance v2, Lcom/mycompany/app/dialog/DialogEditUrl$6;

    .line 299
    .line 300
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogEditUrl$6;-><init>(Lcom/mycompany/app/dialog/DialogEditUrl;)V

    .line 301
    .line 302
    .line 303
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 304
    .line 305
    .line 306
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditUrl;->k0:Lcom/mycompany/app/view/MyEditText;

    .line 307
    .line 308
    if-nez v1, :cond_c

    .line 309
    .line 310
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditUrl;->i0:Lcom/mycompany/app/view/MyEditText;

    .line 311
    .line 312
    new-instance v2, Lcom/mycompany/app/dialog/DialogEditUrl$7;

    .line 313
    .line 314
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogEditUrl$7;-><init>(Lcom/mycompany/app/dialog/DialogEditUrl;)V

    .line 315
    .line 316
    .line 317
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 318
    .line 319
    .line 320
    :cond_c
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditUrl;->l0:Lcom/mycompany/app/view/MyLineText;

    .line 321
    .line 322
    new-instance v2, Lcom/mycompany/app/dialog/DialogEditUrl$8;

    .line 323
    .line 324
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogEditUrl$8;-><init>(Lcom/mycompany/app/dialog/DialogEditUrl;)V

    .line 325
    .line 326
    .line 327
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 328
    .line 329
    .line 330
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditUrl;->e0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 331
    .line 332
    new-instance v2, Lcom/mycompany/app/dialog/DialogEditUrl$9;

    .line 333
    .line 334
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogEditUrl$9;-><init>(Lcom/mycompany/app/dialog/DialogEditUrl;)V

    .line 335
    .line 336
    .line 337
    invoke-virtual {v0, v1, v2}, Lcom/mycompany/app/view/MyDialogBottom;->g(Landroid/view/View;Lcom/mycompany/app/view/MyDialogBottom$BotViewListener;)V

    .line 338
    .line 339
    .line 340
    :cond_d
    :goto_7
    return-void
.end method
