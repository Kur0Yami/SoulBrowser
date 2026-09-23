.class Lcom/mycompany/app/dialog/DialogWebBookLoad$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogWebBookLoad;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogWebBookLoad;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogWebBookLoad$2;->c:Lcom/mycompany/app/dialog/DialogWebBookLoad;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogWebBookLoad$2;->c:Lcom/mycompany/app/dialog/DialogWebBookLoad;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogWebBookLoad;->d0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 4
    .line 5
    if-eqz v1, :cond_2

    .line 6
    .line 7
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogWebBookLoad;->a0:Landroid/content/Context;

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
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogWebBookLoad;->e0:Landroidx/appcompat/widget/AppCompatTextView;

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
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogWebBookLoad;->g0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 26
    .line 27
    const v3, -0xc0c0c1

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 31
    .line 32
    .line 33
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogWebBookLoad;->g0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 34
    .line 35
    const v4, -0x252526

    .line 36
    .line 37
    .line 38
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 39
    .line 40
    .line 41
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogWebBookLoad;->h0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 42
    .line 43
    const v4, -0x3e3e3f

    .line 44
    .line 45
    .line 46
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 47
    .line 48
    .line 49
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogWebBookLoad;->j0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 50
    .line 51
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 52
    .line 53
    .line 54
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogWebBookLoad;->k0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 55
    .line 56
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 57
    .line 58
    .line 59
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogWebBookLoad;->l0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 60
    .line 61
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 62
    .line 63
    .line 64
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogWebBookLoad;->n0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 65
    .line 66
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 67
    .line 68
    .line 69
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogWebBookLoad;->o0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 70
    .line 71
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 72
    .line 73
    .line 74
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogWebBookLoad;->p0:Landroid/widget/FrameLayout;

    .line 75
    .line 76
    sget v4, Lnet/kaki87/soul2/testing/R$drawable;->selector_normal_dark:I

    .line 77
    .line 78
    invoke-virtual {v1, v4}, Landroid/view/View;->setBackgroundResource(I)V

    .line 79
    .line 80
    .line 81
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogWebBookLoad;->r0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 82
    .line 83
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 84
    .line 85
    .line 86
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogWebBookLoad;->t0:Lcom/mycompany/app/view/MyLineText;

    .line 87
    .line 88
    sget v4, Lnet/kaki87/soul2/testing/R$drawable;->selector_normal_dark:I

    .line 89
    .line 90
    invoke-virtual {v1, v4}, Landroidx/appcompat/widget/AppCompatTextView;->setBackgroundResource(I)V

    .line 91
    .line 92
    .line 93
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogWebBookLoad;->t0:Lcom/mycompany/app/view/MyLineText;

    .line 94
    .line 95
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 96
    .line 97
    .line 98
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogWebBookLoad;->u0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 99
    .line 100
    sget v4, Lnet/kaki87/soul2/testing/R$drawable;->selector_normal_dark:I

    .line 101
    .line 102
    invoke-virtual {v1, v4}, Landroidx/appcompat/widget/AppCompatTextView;->setBackgroundResource(I)V

    .line 103
    .line 104
    .line 105
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogWebBookLoad;->u0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 106
    .line 107
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 108
    .line 109
    .line 110
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogWebBookLoad;->q0:Lcom/mycompany/app/view/MyButtonCheck;

    .line 111
    .line 112
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->baseline_check_circle_dark_24:I

    .line 113
    .line 114
    sget v4, Lnet/kaki87/soul2/testing/R$drawable;->outline_radio_button_unchecked_dark_24:I

    .line 115
    .line 116
    invoke-virtual {v1, v2, v4}, Lcom/mycompany/app/view/MyButtonCheck;->p(II)V

    .line 117
    .line 118
    .line 119
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogWebBookLoad;->q0:Lcom/mycompany/app/view/MyButtonCheck;

    .line 120
    .line 121
    invoke-virtual {v1, v3}, Lcom/mycompany/app/view/MyButtonCheck;->setBgPreColor(I)V

    .line 122
    .line 123
    .line 124
    goto :goto_0

    .line 125
    :cond_1
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogWebBookLoad;->e0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 126
    .line 127
    const/high16 v2, -0x1000000

    .line 128
    .line 129
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 130
    .line 131
    .line 132
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogWebBookLoad;->g0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 133
    .line 134
    const v3, -0x70708

    .line 135
    .line 136
    .line 137
    invoke-virtual {v1, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 138
    .line 139
    .line 140
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogWebBookLoad;->g0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 141
    .line 142
    const v3, -0xbbbbbc

    .line 143
    .line 144
    .line 145
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 146
    .line 147
    .line 148
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogWebBookLoad;->h0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 149
    .line 150
    const v3, -0x9e9e9f

    .line 151
    .line 152
    .line 153
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 154
    .line 155
    .line 156
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogWebBookLoad;->j0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 157
    .line 158
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 159
    .line 160
    .line 161
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogWebBookLoad;->k0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 162
    .line 163
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 164
    .line 165
    .line 166
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogWebBookLoad;->l0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 167
    .line 168
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 169
    .line 170
    .line 171
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogWebBookLoad;->n0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 172
    .line 173
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 174
    .line 175
    .line 176
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogWebBookLoad;->o0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 177
    .line 178
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 179
    .line 180
    .line 181
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogWebBookLoad;->p0:Landroid/widget/FrameLayout;

    .line 182
    .line 183
    sget v3, Lnet/kaki87/soul2/testing/R$drawable;->selector_normal:I

    .line 184
    .line 185
    invoke-virtual {v1, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 186
    .line 187
    .line 188
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogWebBookLoad;->r0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 189
    .line 190
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 191
    .line 192
    .line 193
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogWebBookLoad;->t0:Lcom/mycompany/app/view/MyLineText;

    .line 194
    .line 195
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->selector_normal:I

    .line 196
    .line 197
    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/AppCompatTextView;->setBackgroundResource(I)V

    .line 198
    .line 199
    .line 200
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogWebBookLoad;->t0:Lcom/mycompany/app/view/MyLineText;

    .line 201
    .line 202
    const v2, -0xe19938

    .line 203
    .line 204
    .line 205
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 206
    .line 207
    .line 208
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogWebBookLoad;->u0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 209
    .line 210
    sget v3, Lnet/kaki87/soul2/testing/R$drawable;->selector_normal:I

    .line 211
    .line 212
    invoke-virtual {v1, v3}, Landroidx/appcompat/widget/AppCompatTextView;->setBackgroundResource(I)V

    .line 213
    .line 214
    .line 215
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogWebBookLoad;->u0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 216
    .line 217
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 218
    .line 219
    .line 220
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogWebBookLoad;->q0:Lcom/mycompany/app/view/MyButtonCheck;

    .line 221
    .line 222
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->baseline_check_circle_black_24:I

    .line 223
    .line 224
    sget v3, Lnet/kaki87/soul2/testing/R$drawable;->outline_radio_button_unchecked_black_24:I

    .line 225
    .line 226
    invoke-virtual {v1, v2, v3}, Lcom/mycompany/app/view/MyButtonCheck;->p(II)V

    .line 227
    .line 228
    .line 229
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogWebBookLoad;->q0:Lcom/mycompany/app/view/MyButtonCheck;

    .line 230
    .line 231
    const v2, -0x1f1f20

    .line 232
    .line 233
    .line 234
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonCheck;->setBgPreColor(I)V

    .line 235
    .line 236
    .line 237
    :goto_0
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogWebBookLoad;->p0:Landroid/widget/FrameLayout;

    .line 238
    .line 239
    new-instance v2, Lcom/mycompany/app/dialog/DialogWebBookLoad$3;

    .line 240
    .line 241
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogWebBookLoad$3;-><init>(Lcom/mycompany/app/dialog/DialogWebBookLoad;)V

    .line 242
    .line 243
    .line 244
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 245
    .line 246
    .line 247
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogWebBookLoad;->q0:Lcom/mycompany/app/view/MyButtonCheck;

    .line 248
    .line 249
    new-instance v2, Lcom/mycompany/app/dialog/DialogWebBookLoad$4;

    .line 250
    .line 251
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogWebBookLoad$4;-><init>(Lcom/mycompany/app/dialog/DialogWebBookLoad;)V

    .line 252
    .line 253
    .line 254
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonCheck;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 255
    .line 256
    .line 257
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogWebBookLoad;->t0:Lcom/mycompany/app/view/MyLineText;

    .line 258
    .line 259
    new-instance v2, Lcom/mycompany/app/dialog/DialogWebBookLoad$5;

    .line 260
    .line 261
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogWebBookLoad$5;-><init>(Lcom/mycompany/app/dialog/DialogWebBookLoad;)V

    .line 262
    .line 263
    .line 264
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 265
    .line 266
    .line 267
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogWebBookLoad;->u0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 268
    .line 269
    new-instance v2, Lcom/mycompany/app/dialog/DialogWebBookLoad$6;

    .line 270
    .line 271
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogWebBookLoad$6;-><init>(Lcom/mycompany/app/dialog/DialogWebBookLoad;)V

    .line 272
    .line 273
    .line 274
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 275
    .line 276
    .line 277
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogWebBookLoad;->c0:Ljava/lang/String;

    .line 278
    .line 279
    invoke-virtual {v0, v1}, Lcom/mycompany/app/dialog/DialogWebBookLoad;->C(Ljava/lang/String;)V

    .line 280
    .line 281
    .line 282
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogWebBookLoad;->d0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 283
    .line 284
    new-instance v2, Lcom/mycompany/app/dialog/DialogWebBookLoad$7;

    .line 285
    .line 286
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogWebBookLoad$7;-><init>(Lcom/mycompany/app/dialog/DialogWebBookLoad;)V

    .line 287
    .line 288
    .line 289
    invoke-virtual {v0, v1, v2}, Lcom/mycompany/app/view/MyDialogBottom;->g(Landroid/view/View;Lcom/mycompany/app/view/MyDialogBottom$BotViewListener;)V

    .line 290
    .line 291
    .line 292
    :cond_2
    :goto_1
    return-void
.end method
