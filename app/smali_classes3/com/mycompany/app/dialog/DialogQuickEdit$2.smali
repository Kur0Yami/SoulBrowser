.class Lcom/mycompany/app/dialog/DialogQuickEdit$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogQuickEdit;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogQuickEdit;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogQuickEdit$2;->c:Lcom/mycompany/app/dialog/DialogQuickEdit;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogQuickEdit$2;->c:Lcom/mycompany/app/dialog/DialogQuickEdit;

    .line 2
    .line 3
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogQuickEdit;->h0:Landroid/graphics/Bitmap;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    iput-object v1, v0, Lcom/mycompany/app/dialog/DialogQuickEdit;->h0:Landroid/graphics/Bitmap;

    .line 7
    .line 8
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogQuickEdit;->q0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 9
    .line 10
    if-eqz v1, :cond_8

    .line 11
    .line 12
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogQuickEdit;->b0:Landroid/content/Context;

    .line 13
    .line 14
    if-nez v1, :cond_0

    .line 15
    .line 16
    goto/16 :goto_6

    .line 17
    .line 18
    :cond_0
    sget-boolean v1, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 19
    .line 20
    const/high16 v2, -0x1000000

    .line 21
    .line 22
    const v4, -0xe19938

    .line 23
    .line 24
    .line 25
    const v5, -0x50506

    .line 26
    .line 27
    .line 28
    if-eqz v1, :cond_1

    .line 29
    .line 30
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogQuickEdit;->s0:Lcom/mycompany/app/view/MyLineView;

    .line 31
    .line 32
    sget v6, Lnet/kaki87/soul2/testing/R$drawable;->selector_overlay_dark:I

    .line 33
    .line 34
    invoke-virtual {v1, v6}, Landroid/view/View;->setBackgroundResource(I)V

    .line 35
    .line 36
    .line 37
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogQuickEdit;->s0:Lcom/mycompany/app/view/MyLineView;

    .line 38
    .line 39
    sget v6, Lcom/mycompany/app/main/MainApp;->n1:I

    .line 40
    .line 41
    int-to-float v6, v6

    .line 42
    invoke-virtual {v1, v6, v5}, Lcom/mycompany/app/view/MyLineView;->c(FI)V

    .line 43
    .line 44
    .line 45
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogQuickEdit;->u0:Lcom/mycompany/app/view/MyEditText;

    .line 46
    .line 47
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 48
    .line 49
    .line 50
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogQuickEdit;->x0:Lcom/mycompany/app/view/MyLineText;

    .line 51
    .line 52
    sget v6, Lnet/kaki87/soul2/testing/R$drawable;->selector_normal_dark:I

    .line 53
    .line 54
    invoke-virtual {v1, v6}, Landroidx/appcompat/widget/AppCompatTextView;->setBackgroundResource(I)V

    .line 55
    .line 56
    .line 57
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogQuickEdit;->x0:Lcom/mycompany/app/view/MyLineText;

    .line 58
    .line 59
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 60
    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_1
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogQuickEdit;->s0:Lcom/mycompany/app/view/MyLineView;

    .line 64
    .line 65
    sget v6, Lnet/kaki87/soul2/testing/R$drawable;->selector_overlay:I

    .line 66
    .line 67
    invoke-virtual {v1, v6}, Landroid/view/View;->setBackgroundResource(I)V

    .line 68
    .line 69
    .line 70
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogQuickEdit;->s0:Lcom/mycompany/app/view/MyLineView;

    .line 71
    .line 72
    invoke-virtual {v1, v4}, Lcom/mycompany/app/view/MyLineView;->setLineColor(I)V

    .line 73
    .line 74
    .line 75
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogQuickEdit;->u0:Lcom/mycompany/app/view/MyEditText;

    .line 76
    .line 77
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 78
    .line 79
    .line 80
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogQuickEdit;->x0:Lcom/mycompany/app/view/MyLineText;

    .line 81
    .line 82
    sget v6, Lnet/kaki87/soul2/testing/R$drawable;->selector_normal:I

    .line 83
    .line 84
    invoke-virtual {v1, v6}, Landroidx/appcompat/widget/AppCompatTextView;->setBackgroundResource(I)V

    .line 85
    .line 86
    .line 87
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogQuickEdit;->x0:Lcom/mycompany/app/view/MyLineText;

    .line 88
    .line 89
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 90
    .line 91
    .line 92
    :goto_0
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogQuickEdit;->s0:Lcom/mycompany/app/view/MyLineView;

    .line 93
    .line 94
    const/4 v6, 0x0

    .line 95
    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 96
    .line 97
    .line 98
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogQuickEdit;->s0:Lcom/mycompany/app/view/MyLineView;

    .line 99
    .line 100
    new-instance v6, Lcom/mycompany/app/dialog/DialogQuickEdit$3;

    .line 101
    .line 102
    invoke-direct {v6, v0}, Lcom/mycompany/app/dialog/DialogQuickEdit$3;-><init>(Lcom/mycompany/app/dialog/DialogQuickEdit;)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {v1, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 106
    .line 107
    .line 108
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogQuickEdit;->u0:Lcom/mycompany/app/view/MyEditText;

    .line 109
    .line 110
    invoke-virtual {v1, v4}, Lcom/mycompany/app/view/MyEditText;->setElineColor(I)V

    .line 111
    .line 112
    .line 113
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogQuickEdit;->u0:Lcom/mycompany/app/view/MyEditText;

    .line 114
    .line 115
    iget-object v4, v0, Lcom/mycompany/app/dialog/DialogQuickEdit;->g0:Ljava/lang/String;

    .line 116
    .line 117
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 118
    .line 119
    .line 120
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogQuickEdit;->u0:Lcom/mycompany/app/view/MyEditText;

    .line 121
    .line 122
    const/4 v4, 0x1

    .line 123
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setSelectAllOnFocus(Z)V

    .line 124
    .line 125
    .line 126
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogQuickEdit;->u0:Lcom/mycompany/app/view/MyEditText;

    .line 127
    .line 128
    new-instance v6, Lcom/mycompany/app/dialog/DialogQuickEdit$4;

    .line 129
    .line 130
    invoke-direct {v6, v0}, Lcom/mycompany/app/dialog/DialogQuickEdit$4;-><init>(Lcom/mycompany/app/dialog/DialogQuickEdit;)V

    .line 131
    .line 132
    .line 133
    invoke-virtual {v1, v6}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 134
    .line 135
    .line 136
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogQuickEdit;->u0:Lcom/mycompany/app/view/MyEditText;

    .line 137
    .line 138
    new-instance v6, Lcom/mycompany/app/dialog/DialogQuickEdit$5;

    .line 139
    .line 140
    invoke-direct {v6, v0}, Lcom/mycompany/app/dialog/DialogQuickEdit$5;-><init>(Lcom/mycompany/app/dialog/DialogQuickEdit;)V

    .line 141
    .line 142
    .line 143
    invoke-virtual {v1, v6}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 144
    .line 145
    .line 146
    iget-boolean v1, v0, Lcom/mycompany/app/dialog/DialogQuickEdit;->e0:Z

    .line 147
    .line 148
    if-nez v1, :cond_4

    .line 149
    .line 150
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogQuickEdit;->v0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 151
    .line 152
    if-nez v1, :cond_2

    .line 153
    .line 154
    goto/16 :goto_6

    .line 155
    .line 156
    :cond_2
    sget-boolean v6, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 157
    .line 158
    if-eqz v6, :cond_3

    .line 159
    .line 160
    const v2, -0x3e3e3f

    .line 161
    .line 162
    .line 163
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 164
    .line 165
    .line 166
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogQuickEdit;->w0:Lcom/mycompany/app/view/MyEditText;

    .line 167
    .line 168
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 169
    .line 170
    .line 171
    goto :goto_1

    .line 172
    :cond_3
    const v5, -0x9e9e9f

    .line 173
    .line 174
    .line 175
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 176
    .line 177
    .line 178
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogQuickEdit;->w0:Lcom/mycompany/app/view/MyEditText;

    .line 179
    .line 180
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 181
    .line 182
    .line 183
    :goto_1
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogQuickEdit;->v0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 184
    .line 185
    sget v2, Lnet/kaki87/soul2/testing/R$string;->url:I

    .line 186
    .line 187
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 188
    .line 189
    .line 190
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogQuickEdit;->w0:Lcom/mycompany/app/view/MyEditText;

    .line 191
    .line 192
    const v2, -0x252526

    .line 193
    .line 194
    .line 195
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyEditText;->setElineColor(I)V

    .line 196
    .line 197
    .line 198
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogQuickEdit;->w0:Lcom/mycompany/app/view/MyEditText;

    .line 199
    .line 200
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogQuickEdit;->f0:Ljava/lang/String;

    .line 201
    .line 202
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 203
    .line 204
    .line 205
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogQuickEdit;->w0:Lcom/mycompany/app/view/MyEditText;

    .line 206
    .line 207
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setSelectAllOnFocus(Z)V

    .line 208
    .line 209
    .line 210
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogQuickEdit;->w0:Lcom/mycompany/app/view/MyEditText;

    .line 211
    .line 212
    new-instance v2, Lcom/mycompany/app/dialog/DialogQuickEdit$6;

    .line 213
    .line 214
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogQuickEdit$6;-><init>(Lcom/mycompany/app/dialog/DialogQuickEdit;)V

    .line 215
    .line 216
    .line 217
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 218
    .line 219
    .line 220
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogQuickEdit;->w0:Lcom/mycompany/app/view/MyEditText;

    .line 221
    .line 222
    new-instance v2, Lcom/mycompany/app/dialog/DialogQuickEdit$7;

    .line 223
    .line 224
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogQuickEdit$7;-><init>(Lcom/mycompany/app/dialog/DialogQuickEdit;)V

    .line 225
    .line 226
    .line 227
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 228
    .line 229
    .line 230
    :cond_4
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogQuickEdit;->x0:Lcom/mycompany/app/view/MyLineText;

    .line 231
    .line 232
    new-instance v2, Lcom/mycompany/app/dialog/DialogQuickEdit$8;

    .line 233
    .line 234
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogQuickEdit$8;-><init>(Lcom/mycompany/app/dialog/DialogQuickEdit;)V

    .line 235
    .line 236
    .line 237
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 238
    .line 239
    .line 240
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogQuickEdit;->n0:Ljava/util/List;

    .line 241
    .line 242
    if-eqz v1, :cond_6

    .line 243
    .line 244
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 245
    .line 246
    .line 247
    move-result v1

    .line 248
    if-nez v1, :cond_6

    .line 249
    .line 250
    iput-boolean v4, v0, Lcom/mycompany/app/dialog/DialogQuickEdit;->o0:Z

    .line 251
    .line 252
    iput-boolean v4, v0, Lcom/mycompany/app/dialog/DialogQuickEdit;->p0:Z

    .line 253
    .line 254
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogQuickEdit;->r0:Lcom/mycompany/app/view/MyRoundImage;

    .line 255
    .line 256
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogQuickEdit;->n0:Ljava/util/List;

    .line 257
    .line 258
    sget-boolean v3, Lcom/mycompany/app/pref/PrefSync;->k:Z

    .line 259
    .line 260
    sget-boolean v5, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 261
    .line 262
    if-eqz v5, :cond_5

    .line 263
    .line 264
    const v5, -0xafafb0

    .line 265
    .line 266
    .line 267
    goto :goto_2

    .line 268
    :cond_5
    const v5, -0x70708

    .line 269
    .line 270
    .line 271
    :goto_2
    invoke-virtual {v1, v4, v5, v2, v3}, Lcom/mycompany/app/view/MyRoundImage;->B(IILjava/util/List;Z)V

    .line 272
    .line 273
    .line 274
    goto :goto_5

    .line 275
    :cond_6
    iget-boolean v1, v0, Lcom/mycompany/app/dialog/DialogQuickEdit;->d0:Z

    .line 276
    .line 277
    if-eqz v1, :cond_7

    .line 278
    .line 279
    const/16 v1, 0x21

    .line 280
    .line 281
    :goto_3
    move v5, v1

    .line 282
    goto :goto_4

    .line 283
    :cond_7
    const/16 v1, 0x12

    .line 284
    .line 285
    goto :goto_3

    .line 286
    :goto_4
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogQuickEdit;->f0:Ljava/lang/String;

    .line 287
    .line 288
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogQuickEdit;->g0:Ljava/lang/String;

    .line 289
    .line 290
    iget v4, v0, Lcom/mycompany/app/dialog/DialogQuickEdit;->l0:I

    .line 291
    .line 292
    invoke-virtual/range {v0 .. v5}, Lcom/mycompany/app/dialog/DialogQuickEdit;->G(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;II)V

    .line 293
    .line 294
    .line 295
    new-instance v1, Lcom/mycompany/app/dialog/DialogQuickEdit$9;

    .line 296
    .line 297
    invoke-direct {v1, v0}, Lcom/mycompany/app/dialog/DialogQuickEdit$9;-><init>(Lcom/mycompany/app/dialog/DialogQuickEdit;)V

    .line 298
    .line 299
    .line 300
    invoke-virtual {v0, v1}, Lcom/mycompany/app/view/MyDialogBottom;->s(Ljava/lang/Runnable;)V

    .line 301
    .line 302
    .line 303
    :goto_5
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogQuickEdit;->q0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 304
    .line 305
    new-instance v2, Lcom/mycompany/app/dialog/DialogQuickEdit$10;

    .line 306
    .line 307
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogQuickEdit$10;-><init>(Lcom/mycompany/app/dialog/DialogQuickEdit;)V

    .line 308
    .line 309
    .line 310
    invoke-virtual {v0, v1, v2}, Lcom/mycompany/app/view/MyDialogBottom;->g(Landroid/view/View;Lcom/mycompany/app/view/MyDialogBottom$BotViewListener;)V

    .line 311
    .line 312
    .line 313
    :cond_8
    :goto_6
    return-void
.end method
