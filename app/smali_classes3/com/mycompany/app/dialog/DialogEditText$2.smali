.class Lcom/mycompany/app/dialog/DialogEditText$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogEditText;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogEditText;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogEditText$2;->c:Lcom/mycompany/app/dialog/DialogEditText;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogEditText$2;->c:Lcom/mycompany/app/dialog/DialogEditText;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditText;->c0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 4
    .line 5
    if-eqz v1, :cond_a

    .line 6
    .line 7
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditText;->a0:Landroid/content/Context;

    .line 8
    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    goto/16 :goto_5

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
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditText;->g0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 23
    .line 24
    const v4, -0x3e3e3f

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 28
    .line 29
    .line 30
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditText;->h0:Lcom/mycompany/app/view/MyEditText;

    .line 31
    .line 32
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 33
    .line 34
    .line 35
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditText;->i0:Lcom/mycompany/app/view/MyLineText;

    .line 36
    .line 37
    sget v4, Lnet/kaki87/soul2/testing/R$drawable;->selector_normal_dark:I

    .line 38
    .line 39
    invoke-virtual {v1, v4}, Landroidx/appcompat/widget/AppCompatTextView;->setBackgroundResource(I)V

    .line 40
    .line 41
    .line 42
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditText;->i0:Lcom/mycompany/app/view/MyLineText;

    .line 43
    .line 44
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 45
    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_1
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditText;->g0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 49
    .line 50
    const v4, -0x9e9e9f

    .line 51
    .line 52
    .line 53
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 54
    .line 55
    .line 56
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditText;->h0:Lcom/mycompany/app/view/MyEditText;

    .line 57
    .line 58
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 59
    .line 60
    .line 61
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditText;->i0:Lcom/mycompany/app/view/MyLineText;

    .line 62
    .line 63
    sget v4, Lnet/kaki87/soul2/testing/R$drawable;->selector_normal:I

    .line 64
    .line 65
    invoke-virtual {v1, v4}, Landroidx/appcompat/widget/AppCompatTextView;->setBackgroundResource(I)V

    .line 66
    .line 67
    .line 68
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditText;->i0:Lcom/mycompany/app/view/MyLineText;

    .line 69
    .line 70
    const v4, -0xe19938

    .line 71
    .line 72
    .line 73
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 74
    .line 75
    .line 76
    :goto_0
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditText;->e0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 77
    .line 78
    if-eqz v1, :cond_3

    .line 79
    .line 80
    sget-boolean v4, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 81
    .line 82
    if-eqz v4, :cond_2

    .line 83
    .line 84
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 85
    .line 86
    .line 87
    goto :goto_1

    .line 88
    :cond_2
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 89
    .line 90
    .line 91
    :goto_1
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditText;->e0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 92
    .line 93
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogEditText;->p0:Ljava/lang/String;

    .line 94
    .line 95
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 96
    .line 97
    .line 98
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditText;->d0:Lcom/mycompany/app/view/MyRoundImage;

    .line 99
    .line 100
    const v2, -0x70708

    .line 101
    .line 102
    .line 103
    sget v3, Lnet/kaki87/soul2/testing/R$drawable;->outline_folder_zip_black_24:I

    .line 104
    .line 105
    invoke-virtual {v1, v2, v3}, Lcom/mycompany/app/view/MyRoundImage;->o(II)V

    .line 106
    .line 107
    .line 108
    :cond_3
    iget v1, v0, Lcom/mycompany/app/dialog/DialogEditText;->n0:I

    .line 109
    .line 110
    sget v2, Lnet/kaki87/soul2/testing/R$string;->news_info_1:I

    .line 111
    .line 112
    if-ne v1, v2, :cond_4

    .line 113
    .line 114
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditText;->g0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 115
    .line 116
    const-string v2, "RSS Feed URL"

    .line 117
    .line 118
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 119
    .line 120
    .line 121
    goto :goto_3

    .line 122
    :cond_4
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogEditText;->g0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 123
    .line 124
    if-lez v1, :cond_5

    .line 125
    .line 126
    goto :goto_2

    .line 127
    :cond_5
    sget v1, Lnet/kaki87/soul2/testing/R$string;->name:I

    .line 128
    .line 129
    :goto_2
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(I)V

    .line 130
    .line 131
    .line 132
    :goto_3
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditText;->f0:Lcom/mycompany/app/view/MyButtonCheck;

    .line 133
    .line 134
    if-eqz v1, :cond_7

    .line 135
    .line 136
    sget-boolean v2, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 137
    .line 138
    if-eqz v2, :cond_6

    .line 139
    .line 140
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->outline_visibility_off_dark_24:I

    .line 141
    .line 142
    sget v3, Lnet/kaki87/soul2/testing/R$drawable;->outline_visibility_dark_24:I

    .line 143
    .line 144
    invoke-virtual {v1, v2, v3}, Lcom/mycompany/app/view/MyButtonCheck;->p(II)V

    .line 145
    .line 146
    .line 147
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditText;->f0:Lcom/mycompany/app/view/MyButtonCheck;

    .line 148
    .line 149
    const v2, -0xc0c0c1

    .line 150
    .line 151
    .line 152
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonCheck;->setBgPreColor(I)V

    .line 153
    .line 154
    .line 155
    goto :goto_4

    .line 156
    :cond_6
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->outline_visibility_off_black_24:I

    .line 157
    .line 158
    sget v3, Lnet/kaki87/soul2/testing/R$drawable;->outline_visibility_black_24:I

    .line 159
    .line 160
    invoke-virtual {v1, v2, v3}, Lcom/mycompany/app/view/MyButtonCheck;->p(II)V

    .line 161
    .line 162
    .line 163
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditText;->f0:Lcom/mycompany/app/view/MyButtonCheck;

    .line 164
    .line 165
    const v2, -0x1f1f20

    .line 166
    .line 167
    .line 168
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonCheck;->setBgPreColor(I)V

    .line 169
    .line 170
    .line 171
    :goto_4
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditText;->f0:Lcom/mycompany/app/view/MyButtonCheck;

    .line 172
    .line 173
    new-instance v2, Lcom/mycompany/app/dialog/DialogEditText$3;

    .line 174
    .line 175
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogEditText$3;-><init>(Lcom/mycompany/app/dialog/DialogEditText;)V

    .line 176
    .line 177
    .line 178
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonCheck;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 179
    .line 180
    .line 181
    :cond_7
    iget-boolean v1, v0, Lcom/mycompany/app/dialog/DialogEditText;->m0:Z

    .line 182
    .line 183
    if-eqz v1, :cond_9

    .line 184
    .line 185
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditText;->o0:Ljava/lang/String;

    .line 186
    .line 187
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 188
    .line 189
    .line 190
    move-result v1

    .line 191
    if-nez v1, :cond_8

    .line 192
    .line 193
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditText;->h0:Lcom/mycompany/app/view/MyEditText;

    .line 194
    .line 195
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogEditText;->o0:Ljava/lang/String;

    .line 196
    .line 197
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 198
    .line 199
    .line 200
    :cond_8
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditText;->h0:Lcom/mycompany/app/view/MyEditText;

    .line 201
    .line 202
    const-string v2, "https://..."

    .line 203
    .line 204
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    .line 205
    .line 206
    .line 207
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditText;->h0:Lcom/mycompany/app/view/MyEditText;

    .line 208
    .line 209
    const v2, -0x7e7e7f

    .line 210
    .line 211
    .line 212
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setHintTextColor(I)V

    .line 213
    .line 214
    .line 215
    :cond_9
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditText;->h0:Lcom/mycompany/app/view/MyEditText;

    .line 216
    .line 217
    const/4 v2, 0x1

    .line 218
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setSelectAllOnFocus(Z)V

    .line 219
    .line 220
    .line 221
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditText;->h0:Lcom/mycompany/app/view/MyEditText;

    .line 222
    .line 223
    new-instance v2, Lcom/mycompany/app/dialog/DialogEditText$4;

    .line 224
    .line 225
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogEditText$4;-><init>(Lcom/mycompany/app/dialog/DialogEditText;)V

    .line 226
    .line 227
    .line 228
    invoke-virtual {v1, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 229
    .line 230
    .line 231
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditText;->h0:Lcom/mycompany/app/view/MyEditText;

    .line 232
    .line 233
    new-instance v2, Lcom/mycompany/app/dialog/DialogEditText$5;

    .line 234
    .line 235
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogEditText$5;-><init>(Lcom/mycompany/app/dialog/DialogEditText;)V

    .line 236
    .line 237
    .line 238
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 239
    .line 240
    .line 241
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditText;->i0:Lcom/mycompany/app/view/MyLineText;

    .line 242
    .line 243
    new-instance v2, Lcom/mycompany/app/dialog/DialogEditText$6;

    .line 244
    .line 245
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogEditText$6;-><init>(Lcom/mycompany/app/dialog/DialogEditText;)V

    .line 246
    .line 247
    .line 248
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 249
    .line 250
    .line 251
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditText;->c0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 252
    .line 253
    new-instance v2, Lcom/mycompany/app/dialog/DialogEditText$7;

    .line 254
    .line 255
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogEditText$7;-><init>(Lcom/mycompany/app/dialog/DialogEditText;)V

    .line 256
    .line 257
    .line 258
    invoke-virtual {v0, v1, v2}, Lcom/mycompany/app/view/MyDialogBottom;->g(Landroid/view/View;Lcom/mycompany/app/view/MyDialogBottom$BotViewListener;)V

    .line 259
    .line 260
    .line 261
    :cond_a
    :goto_5
    return-void
.end method
