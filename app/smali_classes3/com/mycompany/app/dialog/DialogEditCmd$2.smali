.class Lcom/mycompany/app/dialog/DialogEditCmd$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogEditCmd;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogEditCmd;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogEditCmd$2;->c:Lcom/mycompany/app/dialog/DialogEditCmd;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogEditCmd$2;->c:Lcom/mycompany/app/dialog/DialogEditCmd;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditCmd;->g0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 4
    .line 5
    if-eqz v1, :cond_4

    .line 6
    .line 7
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditCmd;->b0:Landroid/content/Context;

    .line 8
    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    goto/16 :goto_1

    .line 12
    .line 13
    :cond_0
    sget-boolean v1, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 14
    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditCmd;->h0:Lcom/mycompany/app/view/MyButtonImage;

    .line 18
    .line 19
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->outline_help_dark_24:I

    .line 20
    .line 21
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 22
    .line 23
    .line 24
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditCmd;->i0:Lcom/mycompany/app/view/MyButtonText;

    .line 25
    .line 26
    const v2, -0x50506

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 30
    .line 31
    .line 32
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditCmd;->j0:Lcom/mycompany/app/view/MyButtonText;

    .line 33
    .line 34
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 35
    .line 36
    .line 37
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditCmd;->k0:Lcom/mycompany/app/view/MyButtonText;

    .line 38
    .line 39
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 40
    .line 41
    .line 42
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditCmd;->h0:Lcom/mycompany/app/view/MyButtonImage;

    .line 43
    .line 44
    const v3, -0xc0c0c1

    .line 45
    .line 46
    .line 47
    invoke-virtual {v1, v3}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 48
    .line 49
    .line 50
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditCmd;->i0:Lcom/mycompany/app/view/MyButtonText;

    .line 51
    .line 52
    invoke-virtual {v1, v3}, Lcom/mycompany/app/view/MyButtonText;->setBgPreColor(I)V

    .line 53
    .line 54
    .line 55
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditCmd;->j0:Lcom/mycompany/app/view/MyButtonText;

    .line 56
    .line 57
    invoke-virtual {v1, v3}, Lcom/mycompany/app/view/MyButtonText;->setBgPreColor(I)V

    .line 58
    .line 59
    .line 60
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditCmd;->k0:Lcom/mycompany/app/view/MyButtonText;

    .line 61
    .line 62
    invoke-virtual {v1, v3}, Lcom/mycompany/app/view/MyButtonText;->setBgPreColor(I)V

    .line 63
    .line 64
    .line 65
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditCmd;->l0:Lcom/mycompany/app/view/MyRoundFrame;

    .line 66
    .line 67
    const v3, -0xd2d2d3

    .line 68
    .line 69
    .line 70
    invoke-virtual {v1, v3}, Lcom/mycompany/app/view/MyRoundFrame;->setBgColor(I)V

    .line 71
    .line 72
    .line 73
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditCmd;->m0:Lcom/mycompany/app/view/MyEditPure;

    .line 74
    .line 75
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 76
    .line 77
    .line 78
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditCmd;->n0:Lcom/mycompany/app/view/MyLineText;

    .line 79
    .line 80
    sget v3, Lnet/kaki87/soul2/testing/R$drawable;->selector_normal_dark:I

    .line 81
    .line 82
    invoke-virtual {v1, v3}, Landroidx/appcompat/widget/AppCompatTextView;->setBackgroundResource(I)V

    .line 83
    .line 84
    .line 85
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditCmd;->n0:Lcom/mycompany/app/view/MyLineText;

    .line 86
    .line 87
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 88
    .line 89
    .line 90
    goto :goto_0

    .line 91
    :cond_1
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditCmd;->h0:Lcom/mycompany/app/view/MyButtonImage;

    .line 92
    .line 93
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->outline_help_black_24:I

    .line 94
    .line 95
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 96
    .line 97
    .line 98
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditCmd;->i0:Lcom/mycompany/app/view/MyButtonText;

    .line 99
    .line 100
    const/high16 v2, -0x1000000

    .line 101
    .line 102
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 103
    .line 104
    .line 105
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditCmd;->j0:Lcom/mycompany/app/view/MyButtonText;

    .line 106
    .line 107
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 108
    .line 109
    .line 110
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditCmd;->k0:Lcom/mycompany/app/view/MyButtonText;

    .line 111
    .line 112
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 113
    .line 114
    .line 115
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditCmd;->h0:Lcom/mycompany/app/view/MyButtonImage;

    .line 116
    .line 117
    const/high16 v3, 0x21000000

    .line 118
    .line 119
    invoke-virtual {v1, v3}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 120
    .line 121
    .line 122
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditCmd;->i0:Lcom/mycompany/app/view/MyButtonText;

    .line 123
    .line 124
    invoke-virtual {v1, v3}, Lcom/mycompany/app/view/MyButtonText;->setBgPreColor(I)V

    .line 125
    .line 126
    .line 127
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditCmd;->j0:Lcom/mycompany/app/view/MyButtonText;

    .line 128
    .line 129
    invoke-virtual {v1, v3}, Lcom/mycompany/app/view/MyButtonText;->setBgPreColor(I)V

    .line 130
    .line 131
    .line 132
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditCmd;->k0:Lcom/mycompany/app/view/MyButtonText;

    .line 133
    .line 134
    invoke-virtual {v1, v3}, Lcom/mycompany/app/view/MyButtonText;->setBgPreColor(I)V

    .line 135
    .line 136
    .line 137
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditCmd;->l0:Lcom/mycompany/app/view/MyRoundFrame;

    .line 138
    .line 139
    const v3, -0x70708

    .line 140
    .line 141
    .line 142
    invoke-virtual {v1, v3}, Lcom/mycompany/app/view/MyRoundFrame;->setBgColor(I)V

    .line 143
    .line 144
    .line 145
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditCmd;->m0:Lcom/mycompany/app/view/MyEditPure;

    .line 146
    .line 147
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 148
    .line 149
    .line 150
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditCmd;->n0:Lcom/mycompany/app/view/MyLineText;

    .line 151
    .line 152
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->selector_normal:I

    .line 153
    .line 154
    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/AppCompatTextView;->setBackgroundResource(I)V

    .line 155
    .line 156
    .line 157
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditCmd;->n0:Lcom/mycompany/app/view/MyLineText;

    .line 158
    .line 159
    const v2, -0xe19938

    .line 160
    .line 161
    .line 162
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 163
    .line 164
    .line 165
    :goto_0
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditCmd;->i0:Lcom/mycompany/app/view/MyButtonText;

    .line 166
    .line 167
    const-string v2, "^"

    .line 168
    .line 169
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 170
    .line 171
    .line 172
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditCmd;->j0:Lcom/mycompany/app/view/MyButtonText;

    .line 173
    .line 174
    const-string v2, "$"

    .line 175
    .line 176
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 177
    .line 178
    .line 179
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditCmd;->k0:Lcom/mycompany/app/view/MyButtonText;

    .line 180
    .line 181
    const-string v2, "*"

    .line 182
    .line 183
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 184
    .line 185
    .line 186
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditCmd;->e0:Ljava/lang/String;

    .line 187
    .line 188
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 189
    .line 190
    .line 191
    move-result v1

    .line 192
    if-nez v1, :cond_2

    .line 193
    .line 194
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditCmd;->m0:Lcom/mycompany/app/view/MyEditPure;

    .line 195
    .line 196
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogEditCmd;->e0:Ljava/lang/String;

    .line 197
    .line 198
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 199
    .line 200
    .line 201
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditCmd;->m0:Lcom/mycompany/app/view/MyEditPure;

    .line 202
    .line 203
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogEditCmd;->e0:Ljava/lang/String;

    .line 204
    .line 205
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 206
    .line 207
    .line 208
    move-result v2

    .line 209
    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setSelection(I)V

    .line 210
    .line 211
    .line 212
    :cond_2
    sget-boolean v1, Lcom/mycompany/app/pref/PrefRead;->H:Z

    .line 213
    .line 214
    if-eqz v1, :cond_3

    .line 215
    .line 216
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditCmd;->h0:Lcom/mycompany/app/view/MyButtonImage;

    .line 217
    .line 218
    const/4 v2, 0x1

    .line 219
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setNoti(Z)V

    .line 220
    .line 221
    .line 222
    :cond_3
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditCmd;->h0:Lcom/mycompany/app/view/MyButtonImage;

    .line 223
    .line 224
    new-instance v2, Lcom/mycompany/app/dialog/DialogEditCmd$3;

    .line 225
    .line 226
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogEditCmd$3;-><init>(Lcom/mycompany/app/dialog/DialogEditCmd;)V

    .line 227
    .line 228
    .line 229
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 230
    .line 231
    .line 232
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditCmd;->i0:Lcom/mycompany/app/view/MyButtonText;

    .line 233
    .line 234
    new-instance v2, Lcom/mycompany/app/dialog/DialogEditCmd$4;

    .line 235
    .line 236
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogEditCmd$4;-><init>(Lcom/mycompany/app/dialog/DialogEditCmd;)V

    .line 237
    .line 238
    .line 239
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 240
    .line 241
    .line 242
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditCmd;->j0:Lcom/mycompany/app/view/MyButtonText;

    .line 243
    .line 244
    new-instance v2, Lcom/mycompany/app/dialog/DialogEditCmd$5;

    .line 245
    .line 246
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogEditCmd$5;-><init>(Lcom/mycompany/app/dialog/DialogEditCmd;)V

    .line 247
    .line 248
    .line 249
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 250
    .line 251
    .line 252
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditCmd;->k0:Lcom/mycompany/app/view/MyButtonText;

    .line 253
    .line 254
    new-instance v2, Lcom/mycompany/app/dialog/DialogEditCmd$6;

    .line 255
    .line 256
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogEditCmd$6;-><init>(Lcom/mycompany/app/dialog/DialogEditCmd;)V

    .line 257
    .line 258
    .line 259
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 260
    .line 261
    .line 262
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditCmd;->l0:Lcom/mycompany/app/view/MyRoundFrame;

    .line 263
    .line 264
    new-instance v2, Lcom/mycompany/app/dialog/DialogEditCmd$7;

    .line 265
    .line 266
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogEditCmd$7;-><init>(Lcom/mycompany/app/dialog/DialogEditCmd;)V

    .line 267
    .line 268
    .line 269
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 270
    .line 271
    .line 272
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditCmd;->n0:Lcom/mycompany/app/view/MyLineText;

    .line 273
    .line 274
    new-instance v2, Lcom/mycompany/app/dialog/DialogEditCmd$8;

    .line 275
    .line 276
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogEditCmd$8;-><init>(Lcom/mycompany/app/dialog/DialogEditCmd;)V

    .line 277
    .line 278
    .line 279
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 280
    .line 281
    .line 282
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditCmd;->g0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 283
    .line 284
    new-instance v2, Lcom/mycompany/app/dialog/DialogEditCmd$9;

    .line 285
    .line 286
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogEditCmd$9;-><init>(Lcom/mycompany/app/dialog/DialogEditCmd;)V

    .line 287
    .line 288
    .line 289
    invoke-virtual {v0, v1, v2}, Lcom/mycompany/app/view/MyDialogBottom;->g(Landroid/view/View;Lcom/mycompany/app/view/MyDialogBottom$BotViewListener;)V

    .line 290
    .line 291
    .line 292
    :cond_4
    :goto_1
    return-void
.end method
