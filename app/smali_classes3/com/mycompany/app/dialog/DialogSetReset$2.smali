.class Lcom/mycompany/app/dialog/DialogSetReset$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogSetReset;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogSetReset;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogSetReset$2;->c:Lcom/mycompany/app/dialog/DialogSetReset;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetReset$2;->c:Lcom/mycompany/app/dialog/DialogSetReset;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetReset;->d0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 4
    .line 5
    if-eqz v1, :cond_19

    .line 6
    .line 7
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetReset;->a0:Landroid/content/Context;

    .line 8
    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    goto/16 :goto_2

    .line 12
    .line 13
    :cond_0
    sget-boolean v1, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 14
    .line 15
    const/high16 v2, -0x1000000

    .line 16
    .line 17
    const v3, -0x50506

    .line 18
    .line 19
    .line 20
    if-eqz v1, :cond_1

    .line 21
    .line 22
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetReset;->e0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 23
    .line 24
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 25
    .line 26
    .line 27
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetReset;->q0:Lcom/mycompany/app/view/MyLineText;

    .line 28
    .line 29
    sget v4, Lnet/kaki87/soul2/testing/R$drawable;->selector_normal_dark:I

    .line 30
    .line 31
    invoke-virtual {v1, v4}, Landroidx/appcompat/widget/AppCompatTextView;->setBackgroundResource(I)V

    .line 32
    .line 33
    .line 34
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetReset;->q0:Lcom/mycompany/app/view/MyLineText;

    .line 35
    .line 36
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_1
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetReset;->e0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 41
    .line 42
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 43
    .line 44
    .line 45
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetReset;->q0:Lcom/mycompany/app/view/MyLineText;

    .line 46
    .line 47
    sget v4, Lnet/kaki87/soul2/testing/R$drawable;->selector_normal:I

    .line 48
    .line 49
    invoke-virtual {v1, v4}, Landroidx/appcompat/widget/AppCompatTextView;->setBackgroundResource(I)V

    .line 50
    .line 51
    .line 52
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetReset;->q0:Lcom/mycompany/app/view/MyLineText;

    .line 53
    .line 54
    const v4, -0xe19938

    .line 55
    .line 56
    .line 57
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 58
    .line 59
    .line 60
    :goto_0
    iget v1, v0, Lcom/mycompany/app/dialog/DialogSetReset;->c0:I

    .line 61
    .line 62
    if-nez v1, :cond_2

    .line 63
    .line 64
    goto/16 :goto_1

    .line 65
    .line 66
    :cond_2
    sget-boolean v1, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 67
    .line 68
    if-eqz v1, :cond_d

    .line 69
    .line 70
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetReset;->g0:Landroid/view/View;

    .line 71
    .line 72
    if-eqz v1, :cond_3

    .line 73
    .line 74
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->outline_language_dark_24:I

    .line 75
    .line 76
    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 77
    .line 78
    .line 79
    :cond_3
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetReset;->i0:Landroid/view/View;

    .line 80
    .line 81
    if-eqz v1, :cond_4

    .line 82
    .line 83
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->outline_sd_card_dark_24:I

    .line 84
    .line 85
    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 86
    .line 87
    .line 88
    :cond_4
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetReset;->k0:Landroid/view/View;

    .line 89
    .line 90
    if-eqz v1, :cond_5

    .line 91
    .line 92
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->outline_cast_dark_24:I

    .line 93
    .line 94
    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 95
    .line 96
    .line 97
    :cond_5
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetReset;->m0:Landroid/view/View;

    .line 98
    .line 99
    if-eqz v1, :cond_6

    .line 100
    .line 101
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->outline_lock_dark_24:I

    .line 102
    .line 103
    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 104
    .line 105
    .line 106
    :cond_6
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetReset;->o0:Landroid/view/View;

    .line 107
    .line 108
    if-eqz v1, :cond_7

    .line 109
    .line 110
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->outline_vpn_key_dark_24:I

    .line 111
    .line 112
    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 113
    .line 114
    .line 115
    :cond_7
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetReset;->f0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 116
    .line 117
    if-eqz v1, :cond_8

    .line 118
    .line 119
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 120
    .line 121
    .line 122
    :cond_8
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetReset;->h0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 123
    .line 124
    if-eqz v1, :cond_9

    .line 125
    .line 126
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 127
    .line 128
    .line 129
    :cond_9
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetReset;->j0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 130
    .line 131
    if-eqz v1, :cond_a

    .line 132
    .line 133
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 134
    .line 135
    .line 136
    :cond_a
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetReset;->l0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 137
    .line 138
    if-eqz v1, :cond_b

    .line 139
    .line 140
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 141
    .line 142
    .line 143
    :cond_b
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetReset;->n0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 144
    .line 145
    if-eqz v1, :cond_c

    .line 146
    .line 147
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 148
    .line 149
    .line 150
    :cond_c
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetReset;->p0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 151
    .line 152
    if-eqz v1, :cond_18

    .line 153
    .line 154
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 155
    .line 156
    .line 157
    goto :goto_1

    .line 158
    :cond_d
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetReset;->g0:Landroid/view/View;

    .line 159
    .line 160
    if-eqz v1, :cond_e

    .line 161
    .line 162
    sget v3, Lnet/kaki87/soul2/testing/R$drawable;->outline_language_black_24:I

    .line 163
    .line 164
    invoke-virtual {v1, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 165
    .line 166
    .line 167
    :cond_e
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetReset;->i0:Landroid/view/View;

    .line 168
    .line 169
    if-eqz v1, :cond_f

    .line 170
    .line 171
    sget v3, Lnet/kaki87/soul2/testing/R$drawable;->outline_sd_card_black_24:I

    .line 172
    .line 173
    invoke-virtual {v1, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 174
    .line 175
    .line 176
    :cond_f
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetReset;->k0:Landroid/view/View;

    .line 177
    .line 178
    if-eqz v1, :cond_10

    .line 179
    .line 180
    sget v3, Lnet/kaki87/soul2/testing/R$drawable;->outline_cast_black_24:I

    .line 181
    .line 182
    invoke-virtual {v1, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 183
    .line 184
    .line 185
    :cond_10
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetReset;->m0:Landroid/view/View;

    .line 186
    .line 187
    if-eqz v1, :cond_11

    .line 188
    .line 189
    sget v3, Lnet/kaki87/soul2/testing/R$drawable;->outline_lock_black_24:I

    .line 190
    .line 191
    invoke-virtual {v1, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 192
    .line 193
    .line 194
    :cond_11
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetReset;->o0:Landroid/view/View;

    .line 195
    .line 196
    if-eqz v1, :cond_12

    .line 197
    .line 198
    sget v3, Lnet/kaki87/soul2/testing/R$drawable;->outline_vpn_key_black_24:I

    .line 199
    .line 200
    invoke-virtual {v1, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 201
    .line 202
    .line 203
    :cond_12
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetReset;->f0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 204
    .line 205
    if-eqz v1, :cond_13

    .line 206
    .line 207
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 208
    .line 209
    .line 210
    :cond_13
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetReset;->h0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 211
    .line 212
    if-eqz v1, :cond_14

    .line 213
    .line 214
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 215
    .line 216
    .line 217
    :cond_14
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetReset;->j0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 218
    .line 219
    if-eqz v1, :cond_15

    .line 220
    .line 221
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 222
    .line 223
    .line 224
    :cond_15
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetReset;->l0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 225
    .line 226
    if-eqz v1, :cond_16

    .line 227
    .line 228
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 229
    .line 230
    .line 231
    :cond_16
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetReset;->n0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 232
    .line 233
    if-eqz v1, :cond_17

    .line 234
    .line 235
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 236
    .line 237
    .line 238
    :cond_17
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetReset;->p0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 239
    .line 240
    if-eqz v1, :cond_18

    .line 241
    .line 242
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 243
    .line 244
    .line 245
    :cond_18
    :goto_1
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetReset;->q0:Lcom/mycompany/app/view/MyLineText;

    .line 246
    .line 247
    new-instance v2, Lcom/mycompany/app/dialog/DialogSetReset$3;

    .line 248
    .line 249
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogSetReset$3;-><init>(Lcom/mycompany/app/dialog/DialogSetReset;)V

    .line 250
    .line 251
    .line 252
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 253
    .line 254
    .line 255
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetReset;->d0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 256
    .line 257
    new-instance v2, Lcom/mycompany/app/dialog/DialogSetReset$4;

    .line 258
    .line 259
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogSetReset$4;-><init>(Lcom/mycompany/app/dialog/DialogSetReset;)V

    .line 260
    .line 261
    .line 262
    invoke-virtual {v0, v1, v2}, Lcom/mycompany/app/view/MyDialogBottom;->g(Landroid/view/View;Lcom/mycompany/app/view/MyDialogBottom$BotViewListener;)V

    .line 263
    .line 264
    .line 265
    :cond_19
    :goto_2
    return-void
.end method
