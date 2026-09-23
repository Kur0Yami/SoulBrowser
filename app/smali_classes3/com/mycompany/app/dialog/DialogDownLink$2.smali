.class Lcom/mycompany/app/dialog/DialogDownLink$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogDownLink;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogDownLink;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogDownLink$2;->c:Lcom/mycompany/app/dialog/DialogDownLink;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogDownLink$2;->c:Lcom/mycompany/app/dialog/DialogDownLink;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownLink;->g0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 4
    .line 5
    if-eqz v1, :cond_4

    .line 6
    .line 7
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownLink;->b0:Landroid/content/Context;

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
    if-eqz v1, :cond_1

    .line 16
    .line 17
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownLink;->i0:Lcom/mycompany/app/view/MyButtonImage;

    .line 18
    .line 19
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->outline_contact_support_dark_20:I

    .line 20
    .line 21
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 22
    .line 23
    .line 24
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownLink;->j0:Lcom/mycompany/app/view/MyButtonImage;

    .line 25
    .line 26
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->outline_open_with_dark_24:I

    .line 27
    .line 28
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 29
    .line 30
    .line 31
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownLink;->k0:Lcom/mycompany/app/view/MyButtonImage;

    .line 32
    .line 33
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->outline_share_dark_24:I

    .line 34
    .line 35
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 36
    .line 37
    .line 38
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownLink;->l0:Lcom/mycompany/app/view/MyButtonImage;

    .line 39
    .line 40
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->outline_link_dark_24:I

    .line 41
    .line 42
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 43
    .line 44
    .line 45
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownLink;->i0:Lcom/mycompany/app/view/MyButtonImage;

    .line 46
    .line 47
    const v2, -0xc0c0c1

    .line 48
    .line 49
    .line 50
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 51
    .line 52
    .line 53
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownLink;->j0:Lcom/mycompany/app/view/MyButtonImage;

    .line 54
    .line 55
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 56
    .line 57
    .line 58
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownLink;->k0:Lcom/mycompany/app/view/MyButtonImage;

    .line 59
    .line 60
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 61
    .line 62
    .line 63
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownLink;->l0:Lcom/mycompany/app/view/MyButtonImage;

    .line 64
    .line 65
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 66
    .line 67
    .line 68
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownLink;->h0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 69
    .line 70
    const v2, -0x50506

    .line 71
    .line 72
    .line 73
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 74
    .line 75
    .line 76
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownLink;->m0:Lcom/mycompany/app/view/MyLineText;

    .line 77
    .line 78
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 79
    .line 80
    .line 81
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownLink;->n0:Lcom/mycompany/app/view/MyLineText;

    .line 82
    .line 83
    sget v3, Lnet/kaki87/soul2/testing/R$drawable;->selector_normal_dark:I

    .line 84
    .line 85
    invoke-virtual {v1, v3}, Landroidx/appcompat/widget/AppCompatTextView;->setBackgroundResource(I)V

    .line 86
    .line 87
    .line 88
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownLink;->n0:Lcom/mycompany/app/view/MyLineText;

    .line 89
    .line 90
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 91
    .line 92
    .line 93
    goto :goto_0

    .line 94
    :cond_1
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownLink;->i0:Lcom/mycompany/app/view/MyButtonImage;

    .line 95
    .line 96
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->outline_contact_support_black_20:I

    .line 97
    .line 98
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 99
    .line 100
    .line 101
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownLink;->j0:Lcom/mycompany/app/view/MyButtonImage;

    .line 102
    .line 103
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->outline_open_with_black_24:I

    .line 104
    .line 105
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 106
    .line 107
    .line 108
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownLink;->k0:Lcom/mycompany/app/view/MyButtonImage;

    .line 109
    .line 110
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->outline_share_black_24:I

    .line 111
    .line 112
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 113
    .line 114
    .line 115
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownLink;->l0:Lcom/mycompany/app/view/MyButtonImage;

    .line 116
    .line 117
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->outline_link_black_24:I

    .line 118
    .line 119
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 120
    .line 121
    .line 122
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownLink;->i0:Lcom/mycompany/app/view/MyButtonImage;

    .line 123
    .line 124
    const/high16 v2, 0x21000000

    .line 125
    .line 126
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 127
    .line 128
    .line 129
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownLink;->j0:Lcom/mycompany/app/view/MyButtonImage;

    .line 130
    .line 131
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 132
    .line 133
    .line 134
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownLink;->k0:Lcom/mycompany/app/view/MyButtonImage;

    .line 135
    .line 136
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 137
    .line 138
    .line 139
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownLink;->l0:Lcom/mycompany/app/view/MyButtonImage;

    .line 140
    .line 141
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 142
    .line 143
    .line 144
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownLink;->h0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 145
    .line 146
    const/high16 v2, -0x1000000

    .line 147
    .line 148
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 149
    .line 150
    .line 151
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownLink;->m0:Lcom/mycompany/app/view/MyLineText;

    .line 152
    .line 153
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 154
    .line 155
    .line 156
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownLink;->n0:Lcom/mycompany/app/view/MyLineText;

    .line 157
    .line 158
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->selector_normal:I

    .line 159
    .line 160
    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/AppCompatTextView;->setBackgroundResource(I)V

    .line 161
    .line 162
    .line 163
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownLink;->n0:Lcom/mycompany/app/view/MyLineText;

    .line 164
    .line 165
    const v2, -0xe19938

    .line 166
    .line 167
    .line 168
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 169
    .line 170
    .line 171
    :goto_0
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownLink;->m0:Lcom/mycompany/app/view/MyLineText;

    .line 172
    .line 173
    if-nez v1, :cond_2

    .line 174
    .line 175
    goto :goto_1

    .line 176
    :cond_2
    new-instance v1, Lcom/mycompany/app/dialog/DialogDownLink$9;

    .line 177
    .line 178
    invoke-direct {v1, v0}, Lcom/mycompany/app/dialog/DialogDownLink$9;-><init>(Lcom/mycompany/app/dialog/DialogDownLink;)V

    .line 179
    .line 180
    .line 181
    invoke-virtual {v0, v1}, Lcom/mycompany/app/view/MyDialogBottom;->s(Ljava/lang/Runnable;)V

    .line 182
    .line 183
    .line 184
    :goto_1
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogDownLink;->B()V

    .line 185
    .line 186
    .line 187
    iget-wide v1, v0, Lcom/mycompany/app/dialog/DialogDownLink;->f0:J

    .line 188
    .line 189
    const-wide/16 v3, 0x0

    .line 190
    .line 191
    cmp-long v1, v1, v3

    .line 192
    .line 193
    if-gtz v1, :cond_3

    .line 194
    .line 195
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownLink;->i0:Lcom/mycompany/app/view/MyButtonImage;

    .line 196
    .line 197
    new-instance v2, Lcom/mycompany/app/dialog/DialogDownLink$3;

    .line 198
    .line 199
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogDownLink$3;-><init>(Lcom/mycompany/app/dialog/DialogDownLink;)V

    .line 200
    .line 201
    .line 202
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 203
    .line 204
    .line 205
    :cond_3
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownLink;->j0:Lcom/mycompany/app/view/MyButtonImage;

    .line 206
    .line 207
    new-instance v2, Lcom/mycompany/app/dialog/DialogDownLink$4;

    .line 208
    .line 209
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogDownLink$4;-><init>(Lcom/mycompany/app/dialog/DialogDownLink;)V

    .line 210
    .line 211
    .line 212
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 213
    .line 214
    .line 215
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownLink;->k0:Lcom/mycompany/app/view/MyButtonImage;

    .line 216
    .line 217
    new-instance v2, Lcom/mycompany/app/dialog/DialogDownLink$5;

    .line 218
    .line 219
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogDownLink$5;-><init>(Lcom/mycompany/app/dialog/DialogDownLink;)V

    .line 220
    .line 221
    .line 222
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 223
    .line 224
    .line 225
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownLink;->l0:Lcom/mycompany/app/view/MyButtonImage;

    .line 226
    .line 227
    new-instance v2, Lcom/mycompany/app/dialog/DialogDownLink$6;

    .line 228
    .line 229
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogDownLink$6;-><init>(Lcom/mycompany/app/dialog/DialogDownLink;)V

    .line 230
    .line 231
    .line 232
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 233
    .line 234
    .line 235
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownLink;->n0:Lcom/mycompany/app/view/MyLineText;

    .line 236
    .line 237
    new-instance v2, Lcom/mycompany/app/dialog/DialogDownLink$7;

    .line 238
    .line 239
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogDownLink$7;-><init>(Lcom/mycompany/app/dialog/DialogDownLink;)V

    .line 240
    .line 241
    .line 242
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 243
    .line 244
    .line 245
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownLink;->g0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 246
    .line 247
    new-instance v2, Lcom/mycompany/app/dialog/DialogDownLink$8;

    .line 248
    .line 249
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogDownLink$8;-><init>(Lcom/mycompany/app/dialog/DialogDownLink;)V

    .line 250
    .line 251
    .line 252
    invoke-virtual {v0, v1, v2}, Lcom/mycompany/app/view/MyDialogBottom;->g(Landroid/view/View;Lcom/mycompany/app/view/MyDialogBottom$BotViewListener;)V

    .line 253
    .line 254
    .line 255
    :cond_4
    :goto_2
    return-void
.end method
