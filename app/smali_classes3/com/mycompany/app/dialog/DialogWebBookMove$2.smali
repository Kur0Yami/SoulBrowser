.class Lcom/mycompany/app/dialog/DialogWebBookMove$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogWebBookMove;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogWebBookMove;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogWebBookMove$2;->c:Lcom/mycompany/app/dialog/DialogWebBookMove;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogWebBookMove$2;->c:Lcom/mycompany/app/dialog/DialogWebBookMove;

    .line 2
    .line 3
    iget v1, v0, Lcom/mycompany/app/dialog/DialogWebBookMove;->e0:I

    .line 4
    .line 5
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogWebBookMove;->f0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 6
    .line 7
    if-eqz v2, :cond_b

    .line 8
    .line 9
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogWebBookMove;->a0:Landroid/content/Context;

    .line 10
    .line 11
    if-nez v2, :cond_0

    .line 12
    .line 13
    goto/16 :goto_3

    .line 14
    .line 15
    :cond_0
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogWebBookMove;->d0:Ljava/util/List;

    .line 16
    .line 17
    if-nez v2, :cond_1

    .line 18
    .line 19
    goto/16 :goto_3

    .line 20
    .line 21
    :cond_1
    sget-boolean v2, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 22
    .line 23
    if-eqz v2, :cond_3

    .line 24
    .line 25
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogWebBookMove;->h0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 26
    .line 27
    const v3, -0x50506

    .line 28
    .line 29
    .line 30
    if-eqz v2, :cond_2

    .line 31
    .line 32
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 33
    .line 34
    .line 35
    :cond_2
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogWebBookMove;->i0:Lcom/mycompany/app/view/MyEditText;

    .line 36
    .line 37
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 38
    .line 39
    .line 40
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogWebBookMove;->k0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 41
    .line 42
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 43
    .line 44
    .line 45
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogWebBookMove;->l0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 46
    .line 47
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 48
    .line 49
    .line 50
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogWebBookMove;->n0:Lcom/mycompany/app/view/MyLineText;

    .line 51
    .line 52
    sget v4, Lnet/kaki87/soul2/testing/R$drawable;->selector_normal_dark:I

    .line 53
    .line 54
    invoke-virtual {v2, v4}, Landroidx/appcompat/widget/AppCompatTextView;->setBackgroundResource(I)V

    .line 55
    .line 56
    .line 57
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogWebBookMove;->n0:Lcom/mycompany/app/view/MyLineText;

    .line 58
    .line 59
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 60
    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_3
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogWebBookMove;->h0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 64
    .line 65
    const/high16 v3, -0x1000000

    .line 66
    .line 67
    if-eqz v2, :cond_4

    .line 68
    .line 69
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 70
    .line 71
    .line 72
    :cond_4
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogWebBookMove;->i0:Lcom/mycompany/app/view/MyEditText;

    .line 73
    .line 74
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 75
    .line 76
    .line 77
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogWebBookMove;->k0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 78
    .line 79
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 80
    .line 81
    .line 82
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogWebBookMove;->l0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 83
    .line 84
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 85
    .line 86
    .line 87
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogWebBookMove;->n0:Lcom/mycompany/app/view/MyLineText;

    .line 88
    .line 89
    sget v3, Lnet/kaki87/soul2/testing/R$drawable;->selector_normal:I

    .line 90
    .line 91
    invoke-virtual {v2, v3}, Landroidx/appcompat/widget/AppCompatTextView;->setBackgroundResource(I)V

    .line 92
    .line 93
    .line 94
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogWebBookMove;->n0:Lcom/mycompany/app/view/MyLineText;

    .line 95
    .line 96
    const v3, -0xe19938

    .line 97
    .line 98
    .line 99
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 100
    .line 101
    .line 102
    :goto_0
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogWebBookMove;->d0:Ljava/util/List;

    .line 103
    .line 104
    const/4 v3, 0x0

    .line 105
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 106
    .line 107
    .line 108
    move-result-object v2

    .line 109
    check-cast v2, Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 110
    .line 111
    iget-object v2, v2, Lcom/mycompany/app/main/MainItem$ChildItem;->h:Ljava/lang/String;

    .line 112
    .line 113
    const/4 v4, 0x2

    .line 114
    const/4 v5, 0x1

    .line 115
    if-ne v1, v4, :cond_7

    .line 116
    .line 117
    iget-object v4, v0, Lcom/mycompany/app/dialog/DialogWebBookMove;->h0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 118
    .line 119
    if-nez v4, :cond_5

    .line 120
    .line 121
    goto/16 :goto_3

    .line 122
    .line 123
    :cond_5
    iget-object v4, v0, Lcom/mycompany/app/dialog/DialogWebBookMove;->d0:Ljava/util/List;

    .line 124
    .line 125
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 126
    .line 127
    .line 128
    move-result v4

    .line 129
    if-ne v4, v5, :cond_6

    .line 130
    .line 131
    iget-object v4, v0, Lcom/mycompany/app/dialog/DialogWebBookMove;->h0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 132
    .line 133
    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 134
    .line 135
    .line 136
    goto :goto_1

    .line 137
    :cond_6
    iget-object v4, v0, Lcom/mycompany/app/dialog/DialogWebBookMove;->h0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 138
    .line 139
    new-instance v5, Ljava/lang/StringBuilder;

    .line 140
    .line 141
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 142
    .line 143
    .line 144
    iget-object v6, v0, Lcom/mycompany/app/dialog/DialogWebBookMove;->d0:Ljava/util/List;

    .line 145
    .line 146
    invoke-interface {v6}, Ljava/util/List;->size()I

    .line 147
    .line 148
    .line 149
    move-result v6

    .line 150
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 151
    .line 152
    .line 153
    iget-object v6, v0, Lcom/mycompany/app/dialog/DialogWebBookMove;->a0:Landroid/content/Context;

    .line 154
    .line 155
    sget v7, Lnet/kaki87/soul2/testing/R$string;->items:I

    .line 156
    .line 157
    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object v6

    .line 161
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    .line 163
    .line 164
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 165
    .line 166
    .line 167
    move-result-object v5

    .line 168
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 169
    .line 170
    .line 171
    :goto_1
    iget-object v4, v0, Lcom/mycompany/app/dialog/DialogWebBookMove;->d0:Ljava/util/List;

    .line 172
    .line 173
    invoke-virtual {v0, v4}, Lcom/mycompany/app/dialog/DialogWebBookMove;->E(Ljava/util/List;)V

    .line 174
    .line 175
    .line 176
    iget-object v4, v0, Lcom/mycompany/app/dialog/DialogWebBookMove;->n0:Lcom/mycompany/app/view/MyLineText;

    .line 177
    .line 178
    sget v5, Lnet/kaki87/soul2/testing/R$string;->delete:I

    .line 179
    .line 180
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    .line 181
    .line 182
    .line 183
    iget-object v4, v0, Lcom/mycompany/app/dialog/DialogWebBookMove;->n0:Lcom/mycompany/app/view/MyLineText;

    .line 184
    .line 185
    invoke-virtual {v4, v3}, Lcom/mycompany/app/view/MyLineText;->setDrawLine(Z)V

    .line 186
    .line 187
    .line 188
    goto :goto_2

    .line 189
    :cond_7
    const/4 v4, 0x4

    .line 190
    if-ne v1, v4, :cond_9

    .line 191
    .line 192
    iget-object v4, v0, Lcom/mycompany/app/dialog/DialogWebBookMove;->h0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 193
    .line 194
    if-nez v4, :cond_8

    .line 195
    .line 196
    goto :goto_3

    .line 197
    :cond_8
    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 198
    .line 199
    .line 200
    iget-object v4, v0, Lcom/mycompany/app/dialog/DialogWebBookMove;->d0:Ljava/util/List;

    .line 201
    .line 202
    invoke-virtual {v0, v4}, Lcom/mycompany/app/dialog/DialogWebBookMove;->E(Ljava/util/List;)V

    .line 203
    .line 204
    .line 205
    iget-object v4, v0, Lcom/mycompany/app/dialog/DialogWebBookMove;->n0:Lcom/mycompany/app/view/MyLineText;

    .line 206
    .line 207
    sget v6, Lnet/kaki87/soul2/testing/R$string;->rename:I

    .line 208
    .line 209
    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(I)V

    .line 210
    .line 211
    .line 212
    iget-object v4, v0, Lcom/mycompany/app/dialog/DialogWebBookMove;->i0:Lcom/mycompany/app/view/MyEditText;

    .line 213
    .line 214
    invoke-virtual {v4, v3}, Landroid/view/View;->setVisibility(I)V

    .line 215
    .line 216
    .line 217
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogWebBookMove;->i0:Lcom/mycompany/app/view/MyEditText;

    .line 218
    .line 219
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 220
    .line 221
    .line 222
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogWebBookMove;->i0:Lcom/mycompany/app/view/MyEditText;

    .line 223
    .line 224
    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setSelectAllOnFocus(Z)V

    .line 225
    .line 226
    .line 227
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogWebBookMove;->i0:Lcom/mycompany/app/view/MyEditText;

    .line 228
    .line 229
    new-instance v4, Lcom/mycompany/app/dialog/DialogWebBookMove$3;

    .line 230
    .line 231
    invoke-direct {v4, v0}, Lcom/mycompany/app/dialog/DialogWebBookMove$3;-><init>(Lcom/mycompany/app/dialog/DialogWebBookMove;)V

    .line 232
    .line 233
    .line 234
    invoke-virtual {v3, v4}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 235
    .line 236
    .line 237
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogWebBookMove;->i0:Lcom/mycompany/app/view/MyEditText;

    .line 238
    .line 239
    new-instance v4, Lcom/mycompany/app/dialog/DialogWebBookMove$4;

    .line 240
    .line 241
    invoke-direct {v4, v0}, Lcom/mycompany/app/dialog/DialogWebBookMove$4;-><init>(Lcom/mycompany/app/dialog/DialogWebBookMove;)V

    .line 242
    .line 243
    .line 244
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 245
    .line 246
    .line 247
    :cond_9
    :goto_2
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogWebBookMove;->n0:Lcom/mycompany/app/view/MyLineText;

    .line 248
    .line 249
    new-instance v4, Lcom/mycompany/app/dialog/DialogWebBookMove$5;

    .line 250
    .line 251
    invoke-direct {v4, v0}, Lcom/mycompany/app/dialog/DialogWebBookMove$5;-><init>(Lcom/mycompany/app/dialog/DialogWebBookMove;)V

    .line 252
    .line 253
    .line 254
    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 255
    .line 256
    .line 257
    const/4 v3, 0x3

    .line 258
    if-ne v1, v3, :cond_a

    .line 259
    .line 260
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogWebBookMove;->d0:Ljava/util/List;

    .line 261
    .line 262
    iget-object v4, v0, Lcom/mycompany/app/dialog/DialogWebBookMove;->c0:Ljava/lang/String;

    .line 263
    .line 264
    invoke-virtual {v0, v1, v4, v2, v3}, Lcom/mycompany/app/dialog/DialogWebBookMove;->D(ILjava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 265
    .line 266
    .line 267
    :cond_a
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogWebBookMove;->f0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 268
    .line 269
    new-instance v2, Lcom/mycompany/app/dialog/DialogWebBookMove$6;

    .line 270
    .line 271
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogWebBookMove$6;-><init>(Lcom/mycompany/app/dialog/DialogWebBookMove;)V

    .line 272
    .line 273
    .line 274
    invoke-virtual {v0, v1, v2}, Lcom/mycompany/app/view/MyDialogBottom;->g(Landroid/view/View;Lcom/mycompany/app/view/MyDialogBottom$BotViewListener;)V

    .line 275
    .line 276
    .line 277
    :cond_b
    :goto_3
    return-void
.end method
