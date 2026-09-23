.class Lcom/mycompany/app/dialog/DialogEditVpn$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogEditVpn;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogEditVpn;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogEditVpn$2;->c:Lcom/mycompany/app/dialog/DialogEditVpn;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogEditVpn$2;->c:Lcom/mycompany/app/dialog/DialogEditVpn;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditVpn;->d0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 4
    .line 5
    if-eqz v1, :cond_7

    .line 6
    .line 7
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditVpn;->b0:Landroid/content/Context;

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
    const/4 v2, 0x0

    .line 16
    if-eqz v1, :cond_1

    .line 17
    .line 18
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditVpn;->e0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 19
    .line 20
    const v3, -0x3e3e3f

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 24
    .line 25
    .line 26
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditVpn;->g0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 27
    .line 28
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 29
    .line 30
    .line 31
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditVpn;->h0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 32
    .line 33
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 34
    .line 35
    .line 36
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditVpn;->i0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 37
    .line 38
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 39
    .line 40
    .line 41
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditVpn;->j0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 42
    .line 43
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 44
    .line 45
    .line 46
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditVpn;->f0:Lcom/mycompany/app/view/MyButtonImage;

    .line 47
    .line 48
    sget v3, Lnet/kaki87/soul2/testing/R$drawable;->outline_search_dark_24:I

    .line 49
    .line 50
    invoke-virtual {v1, v3}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 51
    .line 52
    .line 53
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditVpn;->l0:Lcom/mycompany/app/view/MyLineText;

    .line 54
    .line 55
    sget v3, Lnet/kaki87/soul2/testing/R$drawable;->selector_normal_dark:I

    .line 56
    .line 57
    invoke-virtual {v1, v3}, Landroidx/appcompat/widget/AppCompatTextView;->setBackgroundResource(I)V

    .line 58
    .line 59
    .line 60
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditVpn;->l0:Lcom/mycompany/app/view/MyLineText;

    .line 61
    .line 62
    const v3, -0x50506

    .line 63
    .line 64
    .line 65
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 66
    .line 67
    .line 68
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditVpn;->f0:Lcom/mycompany/app/view/MyButtonImage;

    .line 69
    .line 70
    const v4, -0xc0c0c1

    .line 71
    .line 72
    .line 73
    invoke-virtual {v1, v4}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 74
    .line 75
    .line 76
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditVpn;->k0:[Lcom/mycompany/app/view/MyEditText;

    .line 77
    .line 78
    array-length v4, v1

    .line 79
    move v5, v2

    .line 80
    :goto_0
    if-ge v5, v4, :cond_2

    .line 81
    .line 82
    aget-object v6, v1, v5

    .line 83
    .line 84
    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 85
    .line 86
    .line 87
    add-int/lit8 v5, v5, 0x1

    .line 88
    .line 89
    goto :goto_0

    .line 90
    :cond_1
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditVpn;->e0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 91
    .line 92
    const v3, -0x9e9e9f

    .line 93
    .line 94
    .line 95
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 96
    .line 97
    .line 98
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditVpn;->g0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 99
    .line 100
    const/high16 v3, -0x1000000

    .line 101
    .line 102
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 103
    .line 104
    .line 105
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditVpn;->h0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 106
    .line 107
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 108
    .line 109
    .line 110
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditVpn;->i0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 111
    .line 112
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 113
    .line 114
    .line 115
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditVpn;->j0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 116
    .line 117
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 118
    .line 119
    .line 120
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditVpn;->f0:Lcom/mycompany/app/view/MyButtonImage;

    .line 121
    .line 122
    sget v4, Lnet/kaki87/soul2/testing/R$drawable;->outline_search_black_24:I

    .line 123
    .line 124
    invoke-virtual {v1, v4}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 125
    .line 126
    .line 127
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditVpn;->l0:Lcom/mycompany/app/view/MyLineText;

    .line 128
    .line 129
    sget v4, Lnet/kaki87/soul2/testing/R$drawable;->selector_normal:I

    .line 130
    .line 131
    invoke-virtual {v1, v4}, Landroidx/appcompat/widget/AppCompatTextView;->setBackgroundResource(I)V

    .line 132
    .line 133
    .line 134
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditVpn;->l0:Lcom/mycompany/app/view/MyLineText;

    .line 135
    .line 136
    const v4, -0xe19938

    .line 137
    .line 138
    .line 139
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 140
    .line 141
    .line 142
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditVpn;->f0:Lcom/mycompany/app/view/MyButtonImage;

    .line 143
    .line 144
    const v4, -0x1f1f20

    .line 145
    .line 146
    .line 147
    invoke-virtual {v1, v4}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 148
    .line 149
    .line 150
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditVpn;->k0:[Lcom/mycompany/app/view/MyEditText;

    .line 151
    .line 152
    array-length v4, v1

    .line 153
    move v5, v2

    .line 154
    :goto_1
    if-ge v5, v4, :cond_2

    .line 155
    .line 156
    aget-object v6, v1, v5

    .line 157
    .line 158
    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 159
    .line 160
    .line 161
    add-int/lit8 v5, v5, 0x1

    .line 162
    .line 163
    goto :goto_1

    .line 164
    :cond_2
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditVpn;->e0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 165
    .line 166
    sget v3, Lnet/kaki87/soul2/testing/R$string;->url:I

    .line 167
    .line 168
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(I)V

    .line 169
    .line 170
    .line 171
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditVpn;->g0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 172
    .line 173
    const-string v3, "IPv4 Primary"

    .line 174
    .line 175
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 176
    .line 177
    .line 178
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditVpn;->h0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 179
    .line 180
    const-string v3, "IPv4 Secondary"

    .line 181
    .line 182
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 183
    .line 184
    .line 185
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditVpn;->i0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 186
    .line 187
    const-string v3, "IPv6 Primary"

    .line 188
    .line 189
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 190
    .line 191
    .line 192
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditVpn;->j0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 193
    .line 194
    const-string v3, "IPv6 Secondary"

    .line 195
    .line 196
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 197
    .line 198
    .line 199
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditVpn;->k0:[Lcom/mycompany/app/view/MyEditText;

    .line 200
    .line 201
    aget-object v1, v1, v2

    .line 202
    .line 203
    const-string v3, "https://example.com/..."

    .line 204
    .line 205
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    .line 206
    .line 207
    .line 208
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditVpn;->k0:[Lcom/mycompany/app/view/MyEditText;

    .line 209
    .line 210
    const/4 v3, 0x1

    .line 211
    aget-object v1, v1, v3

    .line 212
    .line 213
    const-string v4, "x.x.x.x"

    .line 214
    .line 215
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    .line 216
    .line 217
    .line 218
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditVpn;->k0:[Lcom/mycompany/app/view/MyEditText;

    .line 219
    .line 220
    const/4 v5, 0x2

    .line 221
    aget-object v1, v1, v5

    .line 222
    .line 223
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    .line 224
    .line 225
    .line 226
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditVpn;->k0:[Lcom/mycompany/app/view/MyEditText;

    .line 227
    .line 228
    const/4 v4, 0x3

    .line 229
    aget-object v1, v1, v4

    .line 230
    .line 231
    const-string v4, "x:x:x:x:x:x:x:x"

    .line 232
    .line 233
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    .line 234
    .line 235
    .line 236
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditVpn;->k0:[Lcom/mycompany/app/view/MyEditText;

    .line 237
    .line 238
    const/4 v5, 0x4

    .line 239
    aget-object v1, v1, v5

    .line 240
    .line 241
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    .line 242
    .line 243
    .line 244
    sget-object v1, Lcom/mycompany/app/pref/PrefTts;->A:Ljava/lang/String;

    .line 245
    .line 246
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 247
    .line 248
    .line 249
    move-result v1

    .line 250
    if-nez v1, :cond_3

    .line 251
    .line 252
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditVpn;->k0:[Lcom/mycompany/app/view/MyEditText;

    .line 253
    .line 254
    aget-object v1, v1, v2

    .line 255
    .line 256
    sget-object v4, Lcom/mycompany/app/pref/PrefTts;->A:Ljava/lang/String;

    .line 257
    .line 258
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 259
    .line 260
    .line 261
    :cond_3
    sget-object v1, Lcom/mycompany/app/pref/PrefTts;->B:Ljava/lang/String;

    .line 262
    .line 263
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 264
    .line 265
    .line 266
    move-result v1

    .line 267
    if-nez v1, :cond_4

    .line 268
    .line 269
    sget-object v1, Lcom/mycompany/app/pref/PrefTts;->B:Ljava/lang/String;

    .line 270
    .line 271
    invoke-virtual {v0, v1, v2}, Lcom/mycompany/app/dialog/DialogEditVpn;->F(Ljava/lang/String;Z)V

    .line 272
    .line 273
    .line 274
    :cond_4
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditVpn;->k0:[Lcom/mycompany/app/view/MyEditText;

    .line 275
    .line 276
    if-eqz v1, :cond_6

    .line 277
    .line 278
    array-length v4, v1

    .line 279
    const/4 v5, 0x5

    .line 280
    if-eq v4, v5, :cond_5

    .line 281
    .line 282
    goto :goto_3

    .line 283
    :cond_5
    aget-object v1, v1, v2

    .line 284
    .line 285
    invoke-virtual {v0, v1}, Lcom/mycompany/app/dialog/DialogEditVpn;->G(Landroid/view/View;)V

    .line 286
    .line 287
    .line 288
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditVpn;->k0:[Lcom/mycompany/app/view/MyEditText;

    .line 289
    .line 290
    array-length v4, v1

    .line 291
    :goto_2
    if-ge v2, v4, :cond_6

    .line 292
    .line 293
    aget-object v5, v1, v2

    .line 294
    .line 295
    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setSelectAllOnFocus(Z)V

    .line 296
    .line 297
    .line 298
    new-instance v6, Lcom/mycompany/app/dialog/DialogEditVpn$6;

    .line 299
    .line 300
    invoke-direct {v6, v0}, Lcom/mycompany/app/dialog/DialogEditVpn$6;-><init>(Lcom/mycompany/app/dialog/DialogEditVpn;)V

    .line 301
    .line 302
    .line 303
    invoke-virtual {v5, v6}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 304
    .line 305
    .line 306
    add-int/lit8 v2, v2, 0x1

    .line 307
    .line 308
    goto :goto_2

    .line 309
    :cond_6
    :goto_3
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditVpn;->f0:Lcom/mycompany/app/view/MyButtonImage;

    .line 310
    .line 311
    new-instance v2, Lcom/mycompany/app/dialog/DialogEditVpn$3;

    .line 312
    .line 313
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogEditVpn$3;-><init>(Lcom/mycompany/app/dialog/DialogEditVpn;)V

    .line 314
    .line 315
    .line 316
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 317
    .line 318
    .line 319
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditVpn;->l0:Lcom/mycompany/app/view/MyLineText;

    .line 320
    .line 321
    new-instance v2, Lcom/mycompany/app/dialog/DialogEditVpn$4;

    .line 322
    .line 323
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogEditVpn$4;-><init>(Lcom/mycompany/app/dialog/DialogEditVpn;)V

    .line 324
    .line 325
    .line 326
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 327
    .line 328
    .line 329
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditVpn;->d0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 330
    .line 331
    new-instance v2, Lcom/mycompany/app/dialog/DialogEditVpn$5;

    .line 332
    .line 333
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogEditVpn$5;-><init>(Lcom/mycompany/app/dialog/DialogEditVpn;)V

    .line 334
    .line 335
    .line 336
    invoke-virtual {v0, v1, v2}, Lcom/mycompany/app/view/MyDialogBottom;->g(Landroid/view/View;Lcom/mycompany/app/view/MyDialogBottom$BotViewListener;)V

    .line 337
    .line 338
    .line 339
    :cond_7
    :goto_4
    return-void
.end method
