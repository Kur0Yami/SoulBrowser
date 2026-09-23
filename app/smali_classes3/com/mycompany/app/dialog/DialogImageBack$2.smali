.class Lcom/mycompany/app/dialog/DialogImageBack$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogImageBack;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogImageBack;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogImageBack$2;->c:Lcom/mycompany/app/dialog/DialogImageBack;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogImageBack$2;->c:Lcom/mycompany/app/dialog/DialogImageBack;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogImageBack;->j0:Landroid/graphics/Bitmap;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    iput-object v2, v0, Lcom/mycompany/app/dialog/DialogImageBack;->j0:Landroid/graphics/Bitmap;

    .line 7
    .line 8
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogImageBack;->c0:Landroid/widget/LinearLayout;

    .line 9
    .line 10
    if-eqz v2, :cond_8

    .line 11
    .line 12
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogImageBack;->a0:Landroid/content/Context;

    .line 13
    .line 14
    if-nez v2, :cond_0

    .line 15
    .line 16
    goto/16 :goto_6

    .line 17
    .line 18
    :cond_0
    sget-boolean v2, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 19
    .line 20
    if-eqz v2, :cond_1

    .line 21
    .line 22
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogImageBack;->i0:Lcom/mycompany/app/view/MyLineText;

    .line 23
    .line 24
    sget v3, Lnet/kaki87/soul2/testing/R$drawable;->selector_normal_dark:I

    .line 25
    .line 26
    invoke-virtual {v2, v3}, Landroidx/appcompat/widget/AppCompatTextView;->setBackgroundResource(I)V

    .line 27
    .line 28
    .line 29
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogImageBack;->i0:Lcom/mycompany/app/view/MyLineText;

    .line 30
    .line 31
    const v3, -0x50506

    .line 32
    .line 33
    .line 34
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_1
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogImageBack;->i0:Lcom/mycompany/app/view/MyLineText;

    .line 39
    .line 40
    sget v3, Lnet/kaki87/soul2/testing/R$drawable;->selector_normal:I

    .line 41
    .line 42
    invoke-virtual {v2, v3}, Landroidx/appcompat/widget/AppCompatTextView;->setBackgroundResource(I)V

    .line 43
    .line 44
    .line 45
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogImageBack;->i0:Lcom/mycompany/app/view/MyLineText;

    .line 46
    .line 47
    const v3, -0xe19938

    .line 48
    .line 49
    .line 50
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 51
    .line 52
    .line 53
    :goto_0
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogImageBack;->f0:Landroid/widget/ImageView;

    .line 54
    .line 55
    if-nez v2, :cond_2

    .line 56
    .line 57
    goto :goto_2

    .line 58
    :cond_2
    invoke-static {v1}, Lcom/mycompany/app/main/MainUtil;->f6(Landroid/graphics/Bitmap;)Z

    .line 59
    .line 60
    .line 61
    move-result v2

    .line 62
    if-eqz v2, :cond_3

    .line 63
    .line 64
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogImageBack;->f0:Landroid/widget/ImageView;

    .line 65
    .line 66
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 67
    .line 68
    .line 69
    goto :goto_2

    .line 70
    :cond_3
    iget v1, v0, Lcom/mycompany/app/dialog/DialogImageBack;->l0:F

    .line 71
    .line 72
    const v2, 0x3e4ccccd    # 0.2f

    .line 73
    .line 74
    .line 75
    cmpl-float v1, v1, v2

    .line 76
    .line 77
    if-lez v1, :cond_4

    .line 78
    .line 79
    sget v1, Lnet/kaki87/soul2/testing/R$drawable;->outline_error_dark_web_48:I

    .line 80
    .line 81
    goto :goto_1

    .line 82
    :cond_4
    sget v1, Lnet/kaki87/soul2/testing/R$drawable;->outline_error_black_web_48:I

    .line 83
    .line 84
    :goto_1
    iput v1, v0, Lcom/mycompany/app/dialog/DialogImageBack;->m0:I

    .line 85
    .line 86
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogImageBack;->f0:Landroid/widget/ImageView;

    .line 87
    .line 88
    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    .line 89
    .line 90
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 91
    .line 92
    .line 93
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogImageBack;->f0:Landroid/widget/ImageView;

    .line 94
    .line 95
    iget v2, v0, Lcom/mycompany/app/dialog/DialogImageBack;->m0:I

    .line 96
    .line 97
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 98
    .line 99
    .line 100
    :goto_2
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogImageBack;->c0:Landroid/widget/LinearLayout;

    .line 101
    .line 102
    new-instance v2, Lcom/mycompany/app/dialog/DialogImageBack$3;

    .line 103
    .line 104
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogImageBack$3;-><init>(Lcom/mycompany/app/dialog/DialogImageBack;)V

    .line 105
    .line 106
    .line 107
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 108
    .line 109
    .line 110
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogImageBack;->d0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 111
    .line 112
    new-instance v2, Lcom/mycompany/app/dialog/DialogImageBack$4;

    .line 113
    .line 114
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 115
    .line 116
    .line 117
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 118
    .line 119
    .line 120
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogImageBack;->e0:Lcom/mycompany/app/view/MyButtonRelative;

    .line 121
    .line 122
    iget v2, v0, Lcom/mycompany/app/dialog/DialogImageBack;->k0:I

    .line 123
    .line 124
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonRelative;->setBgNorColor(I)V

    .line 125
    .line 126
    .line 127
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogImageBack;->e0:Lcom/mycompany/app/view/MyButtonRelative;

    .line 128
    .line 129
    new-instance v2, Lcom/mycompany/app/dialog/DialogImageBack$5;

    .line 130
    .line 131
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 132
    .line 133
    .line 134
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonRelative;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 135
    .line 136
    .line 137
    sget-object v1, Lcom/mycompany/app/main/MainConst;->v:[I

    .line 138
    .line 139
    array-length v1, v1

    .line 140
    const/4 v2, 0x0

    .line 141
    move v3, v2

    .line 142
    :goto_3
    if-ge v3, v1, :cond_7

    .line 143
    .line 144
    sget-object v4, Lcom/mycompany/app/main/MainConst;->v:[I

    .line 145
    .line 146
    aget v4, v4, v3

    .line 147
    .line 148
    iget-object v5, v0, Lcom/mycompany/app/dialog/DialogImageBack;->g0:[Lcom/mycompany/app/view/MyButtonCheck;

    .line 149
    .line 150
    aget-object v5, v5, v3

    .line 151
    .line 152
    invoke-virtual {v5, v4, v4}, Lcom/mycompany/app/view/MyButtonCheck;->m(II)V

    .line 153
    .line 154
    .line 155
    iget-object v5, v0, Lcom/mycompany/app/dialog/DialogImageBack;->g0:[Lcom/mycompany/app/view/MyButtonCheck;

    .line 156
    .line 157
    aget-object v5, v5, v3

    .line 158
    .line 159
    const v6, -0xc0c0c1

    .line 160
    .line 161
    .line 162
    sget v7, Lcom/mycompany/app/main/MainApp;->n1:I

    .line 163
    .line 164
    invoke-virtual {v5, v6, v7}, Lcom/mycompany/app/view/MyButtonCheck;->n(II)V

    .line 165
    .line 166
    .line 167
    const/4 v5, 0x1

    .line 168
    if-gt v3, v5, :cond_5

    .line 169
    .line 170
    iget-object v6, v0, Lcom/mycompany/app/dialog/DialogImageBack;->g0:[Lcom/mycompany/app/view/MyButtonCheck;

    .line 171
    .line 172
    aget-object v6, v6, v3

    .line 173
    .line 174
    sget v7, Lnet/kaki87/soul2/testing/R$drawable;->outline_check_black_24:I

    .line 175
    .line 176
    invoke-virtual {v6, v7, v2}, Lcom/mycompany/app/view/MyButtonCheck;->p(II)V

    .line 177
    .line 178
    .line 179
    goto :goto_4

    .line 180
    :cond_5
    iget-object v6, v0, Lcom/mycompany/app/dialog/DialogImageBack;->g0:[Lcom/mycompany/app/view/MyButtonCheck;

    .line 181
    .line 182
    aget-object v6, v6, v3

    .line 183
    .line 184
    sget v7, Lnet/kaki87/soul2/testing/R$drawable;->outline_check_white_24:I

    .line 185
    .line 186
    invoke-virtual {v6, v7, v2}, Lcom/mycompany/app/view/MyButtonCheck;->p(II)V

    .line 187
    .line 188
    .line 189
    :goto_4
    iget v6, v0, Lcom/mycompany/app/dialog/DialogImageBack;->k0:I

    .line 190
    .line 191
    if-ne v6, v4, :cond_6

    .line 192
    .line 193
    iget-object v4, v0, Lcom/mycompany/app/dialog/DialogImageBack;->g0:[Lcom/mycompany/app/view/MyButtonCheck;

    .line 194
    .line 195
    aget-object v4, v4, v3

    .line 196
    .line 197
    invoke-virtual {v4, v5, v2}, Lcom/mycompany/app/view/MyButtonCheck;->q(ZZ)V

    .line 198
    .line 199
    .line 200
    goto :goto_5

    .line 201
    :cond_6
    iget-object v4, v0, Lcom/mycompany/app/dialog/DialogImageBack;->g0:[Lcom/mycompany/app/view/MyButtonCheck;

    .line 202
    .line 203
    aget-object v4, v4, v3

    .line 204
    .line 205
    invoke-virtual {v4, v2, v2}, Lcom/mycompany/app/view/MyButtonCheck;->q(ZZ)V

    .line 206
    .line 207
    .line 208
    :goto_5
    iget-object v4, v0, Lcom/mycompany/app/dialog/DialogImageBack;->g0:[Lcom/mycompany/app/view/MyButtonCheck;

    .line 209
    .line 210
    aget-object v4, v4, v3

    .line 211
    .line 212
    new-instance v5, Lcom/mycompany/app/dialog/DialogImageBack$6;

    .line 213
    .line 214
    invoke-direct {v5, v0, v3, v1}, Lcom/mycompany/app/dialog/DialogImageBack$6;-><init>(Lcom/mycompany/app/dialog/DialogImageBack;II)V

    .line 215
    .line 216
    .line 217
    invoke-virtual {v4, v5}, Lcom/mycompany/app/view/MyButtonCheck;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 218
    .line 219
    .line 220
    add-int/lit8 v3, v3, 0x1

    .line 221
    .line 222
    goto :goto_3

    .line 223
    :cond_7
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogImageBack;->h0:Lcom/mycompany/app/view/MyPaletteView;

    .line 224
    .line 225
    const/4 v2, 0x3

    .line 226
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyPaletteView;->setType(I)V

    .line 227
    .line 228
    .line 229
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogImageBack;->h0:Lcom/mycompany/app/view/MyPaletteView;

    .line 230
    .line 231
    new-instance v2, Lcom/mycompany/app/dialog/DialogImageBack$7;

    .line 232
    .line 233
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogImageBack$7;-><init>(Lcom/mycompany/app/dialog/DialogImageBack;)V

    .line 234
    .line 235
    .line 236
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyPaletteView;->setListener(Lcom/mycompany/app/view/MyPaletteView$PaletteListener;)V

    .line 237
    .line 238
    .line 239
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogImageBack;->h0:Lcom/mycompany/app/view/MyPaletteView;

    .line 240
    .line 241
    iget v2, v0, Lcom/mycompany/app/dialog/DialogImageBack;->k0:I

    .line 242
    .line 243
    iget v3, v0, Lcom/mycompany/app/dialog/DialogImageBack;->l0:F

    .line 244
    .line 245
    invoke-virtual {v1, v3, v2}, Lcom/mycompany/app/view/MyPaletteView;->b(FI)V

    .line 246
    .line 247
    .line 248
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogImageBack;->i0:Lcom/mycompany/app/view/MyLineText;

    .line 249
    .line 250
    new-instance v2, Lcom/mycompany/app/dialog/DialogImageBack$8;

    .line 251
    .line 252
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogImageBack$8;-><init>(Lcom/mycompany/app/dialog/DialogImageBack;)V

    .line 253
    .line 254
    .line 255
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 256
    .line 257
    .line 258
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogImageBack;->c0:Landroid/widget/LinearLayout;

    .line 259
    .line 260
    new-instance v2, Lcom/mycompany/app/dialog/DialogImageBack$9;

    .line 261
    .line 262
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogImageBack$9;-><init>(Lcom/mycompany/app/dialog/DialogImageBack;)V

    .line 263
    .line 264
    .line 265
    invoke-virtual {v0, v1, v2}, Lcom/mycompany/app/view/MyDialogBottom;->f(Landroid/view/View;Lcom/mycompany/app/view/MyDialogBottom$BotViewListener;)V

    .line 266
    .line 267
    .line 268
    :cond_8
    :goto_6
    return-void
.end method
