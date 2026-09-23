.class Lcom/mycompany/app/dialog/DialogFileRename$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogFileRename;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogFileRename;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogFileRename$2;->c:Lcom/mycompany/app/dialog/DialogFileRename;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogFileRename$2;->c:Lcom/mycompany/app/dialog/DialogFileRename;

    .line 2
    .line 3
    iget v1, v0, Lcom/mycompany/app/dialog/DialogFileRename;->b0:I

    .line 4
    .line 5
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogFileRename;->f0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 6
    .line 7
    if-eqz v2, :cond_a

    .line 8
    .line 9
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogFileRename;->a0:Landroid/content/Context;

    .line 10
    .line 11
    if-nez v2, :cond_0

    .line 12
    .line 13
    goto/16 :goto_2

    .line 14
    .line 15
    :cond_0
    sget-boolean v2, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 16
    .line 17
    if-eqz v2, :cond_1

    .line 18
    .line 19
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogFileRename;->h0:Landroidx/appcompat/widget/AppCompatTextView;

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
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogFileRename;->i0:Lcom/mycompany/app/view/MyEditText;

    .line 28
    .line 29
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 30
    .line 31
    .line 32
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogFileRename;->j0:Lcom/mycompany/app/view/MyLineText;

    .line 33
    .line 34
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 35
    .line 36
    .line 37
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogFileRename;->j0:Lcom/mycompany/app/view/MyLineText;

    .line 38
    .line 39
    sget v3, Lnet/kaki87/soul2/testing/R$drawable;->selector_normal_dark:I

    .line 40
    .line 41
    invoke-virtual {v2, v3}, Landroidx/appcompat/widget/AppCompatTextView;->setBackgroundResource(I)V

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_1
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogFileRename;->h0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 46
    .line 47
    const/high16 v3, -0x1000000

    .line 48
    .line 49
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 50
    .line 51
    .line 52
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogFileRename;->i0:Lcom/mycompany/app/view/MyEditText;

    .line 53
    .line 54
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 55
    .line 56
    .line 57
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogFileRename;->j0:Lcom/mycompany/app/view/MyLineText;

    .line 58
    .line 59
    const v3, -0xe19938

    .line 60
    .line 61
    .line 62
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 63
    .line 64
    .line 65
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogFileRename;->j0:Lcom/mycompany/app/view/MyLineText;

    .line 66
    .line 67
    sget v3, Lnet/kaki87/soul2/testing/R$drawable;->selector_normal:I

    .line 68
    .line 69
    invoke-virtual {v2, v3}, Landroidx/appcompat/widget/AppCompatTextView;->setBackgroundResource(I)V

    .line 70
    .line 71
    .line 72
    :goto_0
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogFileRename;->c0:Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 73
    .line 74
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogFileRename;->g0:Lcom/mycompany/app/view/MyRoundImage;

    .line 75
    .line 76
    if-eqz v3, :cond_9

    .line 77
    .line 78
    if-nez v2, :cond_2

    .line 79
    .line 80
    goto/16 :goto_1

    .line 81
    .line 82
    :cond_2
    const/16 v4, 0x20

    .line 83
    .line 84
    const/4 v5, 0x3

    .line 85
    if-ne v1, v4, :cond_3

    .line 86
    .line 87
    iget v4, v2, Lcom/mycompany/app/main/MainItem$ChildItem;->d:I

    .line 88
    .line 89
    if-eq v4, v5, :cond_3

    .line 90
    .line 91
    iget v1, v2, Lcom/mycompany/app/main/MainItem$ChildItem;->v:I

    .line 92
    .line 93
    iget v2, v2, Lcom/mycompany/app/main/MainItem$ChildItem;->w:I

    .line 94
    .line 95
    invoke-virtual {v3, v1, v2}, Lcom/mycompany/app/view/MyRoundImage;->o(II)V

    .line 96
    .line 97
    .line 98
    goto/16 :goto_1

    .line 99
    .line 100
    :cond_3
    iget v4, v2, Lcom/mycompany/app/main/MainItem$ChildItem;->c:I

    .line 101
    .line 102
    const/4 v6, 0x1

    .line 103
    const/16 v7, 0xb

    .line 104
    .line 105
    const/4 v8, 0x4

    .line 106
    if-eq v4, v6, :cond_4

    .line 107
    .line 108
    const/4 v6, 0x2

    .line 109
    if-eq v4, v6, :cond_4

    .line 110
    .line 111
    if-eq v4, v5, :cond_4

    .line 112
    .line 113
    if-eq v4, v8, :cond_4

    .line 114
    .line 115
    const/4 v5, 0x5

    .line 116
    if-eq v4, v5, :cond_4

    .line 117
    .line 118
    const/4 v5, 0x6

    .line 119
    if-eq v4, v5, :cond_4

    .line 120
    .line 121
    if-eq v4, v7, :cond_4

    .line 122
    .line 123
    iget v1, v2, Lcom/mycompany/app/main/MainItem$ChildItem;->v:I

    .line 124
    .line 125
    iget v2, v2, Lcom/mycompany/app/main/MainItem$ChildItem;->w:I

    .line 126
    .line 127
    invoke-virtual {v3, v1, v2}, Lcom/mycompany/app/view/MyRoundImage;->o(II)V

    .line 128
    .line 129
    .line 130
    goto/16 :goto_1

    .line 131
    .line 132
    :cond_4
    new-instance v3, Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 133
    .line 134
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 135
    .line 136
    .line 137
    if-ne v4, v7, :cond_5

    .line 138
    .line 139
    iput v1, v3, Lcom/mycompany/app/main/MainItem$ChildItem;->a:I

    .line 140
    .line 141
    iput v4, v3, Lcom/mycompany/app/main/MainItem$ChildItem;->c:I

    .line 142
    .line 143
    iget-object v1, v2, Lcom/mycompany/app/main/MainItem$ChildItem;->z:Ljava/lang/String;

    .line 144
    .line 145
    iput-object v1, v3, Lcom/mycompany/app/main/MainItem$ChildItem;->g:Ljava/lang/String;

    .line 146
    .line 147
    iput-object v1, v3, Lcom/mycompany/app/main/MainItem$ChildItem;->z:Ljava/lang/String;

    .line 148
    .line 149
    iget-wide v4, v2, Lcom/mycompany/app/main/MainItem$ChildItem;->y:J

    .line 150
    .line 151
    iput-wide v4, v3, Lcom/mycompany/app/main/MainItem$ChildItem;->y:J

    .line 152
    .line 153
    iget v1, v2, Lcom/mycompany/app/main/MainItem$ChildItem;->J:I

    .line 154
    .line 155
    iput v1, v3, Lcom/mycompany/app/main/MainItem$ChildItem;->J:I

    .line 156
    .line 157
    iget v1, v2, Lcom/mycompany/app/main/MainItem$ChildItem;->v:I

    .line 158
    .line 159
    iput v1, v3, Lcom/mycompany/app/main/MainItem$ChildItem;->v:I

    .line 160
    .line 161
    iget v1, v2, Lcom/mycompany/app/main/MainItem$ChildItem;->w:I

    .line 162
    .line 163
    iput v1, v3, Lcom/mycompany/app/main/MainItem$ChildItem;->w:I

    .line 164
    .line 165
    move-object v2, v3

    .line 166
    :cond_5
    iget-object v1, v2, Lcom/mycompany/app/main/MainItem$ChildItem;->g:Ljava/lang/String;

    .line 167
    .line 168
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 169
    .line 170
    .line 171
    move-result v1

    .line 172
    if-eqz v1, :cond_6

    .line 173
    .line 174
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogFileRename;->g0:Lcom/mycompany/app/view/MyRoundImage;

    .line 175
    .line 176
    iget v3, v2, Lcom/mycompany/app/main/MainItem$ChildItem;->v:I

    .line 177
    .line 178
    iget v2, v2, Lcom/mycompany/app/main/MainItem$ChildItem;->w:I

    .line 179
    .line 180
    invoke-virtual {v1, v3, v2}, Lcom/mycompany/app/view/MyRoundImage;->o(II)V

    .line 181
    .line 182
    .line 183
    goto :goto_1

    .line 184
    :cond_6
    invoke-static {v2}, Lcom/mycompany/app/main/MainListLoader;->b(Lcom/mycompany/app/main/MainItem$ChildItem;)Landroid/graphics/Bitmap;

    .line 185
    .line 186
    .line 187
    move-result-object v1

    .line 188
    invoke-static {v1}, Lcom/mycompany/app/main/MainUtil;->f6(Landroid/graphics/Bitmap;)Z

    .line 189
    .line 190
    .line 191
    move-result v3

    .line 192
    if-eqz v3, :cond_8

    .line 193
    .line 194
    iget v2, v2, Lcom/mycompany/app/main/MainItem$ChildItem;->c:I

    .line 195
    .line 196
    if-ne v2, v8, :cond_7

    .line 197
    .line 198
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogFileRename;->g0:Lcom/mycompany/app/view/MyRoundImage;

    .line 199
    .line 200
    const v3, -0x70708

    .line 201
    .line 202
    .line 203
    invoke-virtual {v2, v3}, Lcom/mycompany/app/view/MyRoundImage;->setBackColor(I)V

    .line 204
    .line 205
    .line 206
    :cond_7
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogFileRename;->g0:Lcom/mycompany/app/view/MyRoundImage;

    .line 207
    .line 208
    invoke-virtual {v2, v1}, Lcom/mycompany/app/view/MyRoundImage;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 209
    .line 210
    .line 211
    goto :goto_1

    .line 212
    :cond_8
    new-instance v1, Lcom/mycompany/app/main/MainListLoader;

    .line 213
    .line 214
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogFileRename;->a0:Landroid/content/Context;

    .line 215
    .line 216
    new-instance v4, Lcom/mycompany/app/dialog/DialogFileRename$7;

    .line 217
    .line 218
    invoke-direct {v4, v0}, Lcom/mycompany/app/dialog/DialogFileRename$7;-><init>(Lcom/mycompany/app/dialog/DialogFileRename;)V

    .line 219
    .line 220
    .line 221
    const/4 v5, 0x0

    .line 222
    invoke-direct {v1, v3, v5, v4}, Lcom/mycompany/app/main/MainListLoader;-><init>(Landroid/content/Context;ZLcom/mycompany/app/main/MainListLoader$ListLoadListener;)V

    .line 223
    .line 224
    .line 225
    iput-object v1, v0, Lcom/mycompany/app/dialog/DialogFileRename;->l0:Lcom/mycompany/app/main/MainListLoader;

    .line 226
    .line 227
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogFileRename;->g0:Lcom/mycompany/app/view/MyRoundImage;

    .line 228
    .line 229
    iget v3, v2, Lcom/mycompany/app/main/MainItem$ChildItem;->v:I

    .line 230
    .line 231
    iget v4, v2, Lcom/mycompany/app/main/MainItem$ChildItem;->w:I

    .line 232
    .line 233
    invoke-virtual {v1, v3, v4}, Lcom/mycompany/app/view/MyRoundImage;->o(II)V

    .line 234
    .line 235
    .line 236
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogFileRename;->g0:Lcom/mycompany/app/view/MyRoundImage;

    .line 237
    .line 238
    iget v3, v2, Lcom/mycompany/app/main/MainItem$ChildItem;->J:I

    .line 239
    .line 240
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 241
    .line 242
    .line 243
    move-result-object v3

    .line 244
    invoke-virtual {v1, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 245
    .line 246
    .line 247
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogFileRename;->l0:Lcom/mycompany/app/main/MainListLoader;

    .line 248
    .line 249
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogFileRename;->g0:Lcom/mycompany/app/view/MyRoundImage;

    .line 250
    .line 251
    invoke-virtual {v1, v2, v3}, Lcom/mycompany/app/main/MainListLoader;->e(Lcom/mycompany/app/main/MainItem$ChildItem;Landroid/view/View;)V

    .line 252
    .line 253
    .line 254
    :cond_9
    :goto_1
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogFileRename;->h0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 255
    .line 256
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogFileRename;->c0:Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 257
    .line 258
    iget-object v2, v2, Lcom/mycompany/app/main/MainItem$ChildItem;->h:Ljava/lang/String;

    .line 259
    .line 260
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 261
    .line 262
    .line 263
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogFileRename;->i0:Lcom/mycompany/app/view/MyEditText;

    .line 264
    .line 265
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogFileRename;->c0:Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 266
    .line 267
    iget-object v2, v2, Lcom/mycompany/app/main/MainItem$ChildItem;->h:Ljava/lang/String;

    .line 268
    .line 269
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 270
    .line 271
    .line 272
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogFileRename;->i0:Lcom/mycompany/app/view/MyEditText;

    .line 273
    .line 274
    iget-boolean v2, v0, Lcom/mycompany/app/dialog/DialogFileRename;->d0:Z

    .line 275
    .line 276
    invoke-static {v1, v2}, Lcom/mycompany/app/main/MainUtil;->k7(Landroid/widget/EditText;Z)V

    .line 277
    .line 278
    .line 279
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogFileRename;->j0:Lcom/mycompany/app/view/MyLineText;

    .line 280
    .line 281
    sget v2, Lnet/kaki87/soul2/testing/R$string;->rename:I

    .line 282
    .line 283
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 284
    .line 285
    .line 286
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogFileRename;->i0:Lcom/mycompany/app/view/MyEditText;

    .line 287
    .line 288
    new-instance v2, Lcom/mycompany/app/dialog/DialogFileRename$3;

    .line 289
    .line 290
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogFileRename$3;-><init>(Lcom/mycompany/app/dialog/DialogFileRename;)V

    .line 291
    .line 292
    .line 293
    invoke-virtual {v1, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 294
    .line 295
    .line 296
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogFileRename;->i0:Lcom/mycompany/app/view/MyEditText;

    .line 297
    .line 298
    new-instance v2, Lcom/mycompany/app/dialog/DialogFileRename$4;

    .line 299
    .line 300
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogFileRename$4;-><init>(Lcom/mycompany/app/dialog/DialogFileRename;)V

    .line 301
    .line 302
    .line 303
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 304
    .line 305
    .line 306
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogFileRename;->j0:Lcom/mycompany/app/view/MyLineText;

    .line 307
    .line 308
    new-instance v2, Lcom/mycompany/app/dialog/DialogFileRename$5;

    .line 309
    .line 310
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogFileRename$5;-><init>(Lcom/mycompany/app/dialog/DialogFileRename;)V

    .line 311
    .line 312
    .line 313
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 314
    .line 315
    .line 316
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogFileRename;->f0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 317
    .line 318
    new-instance v2, Lcom/mycompany/app/dialog/DialogFileRename$6;

    .line 319
    .line 320
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogFileRename$6;-><init>(Lcom/mycompany/app/dialog/DialogFileRename;)V

    .line 321
    .line 322
    .line 323
    invoke-virtual {v0, v1, v2}, Lcom/mycompany/app/view/MyDialogBottom;->g(Landroid/view/View;Lcom/mycompany/app/view/MyDialogBottom$BotViewListener;)V

    .line 324
    .line 325
    .line 326
    :cond_a
    :goto_2
    return-void
.end method
