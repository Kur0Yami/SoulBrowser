.class Lcom/mycompany/app/lock/PatternActivity$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/lock/PatternActivity;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/lock/PatternActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/lock/PatternActivity$3;->c:Lcom/mycompany/app/lock/PatternActivity;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/lock/PatternActivity$3;->c:Lcom/mycompany/app/lock/PatternActivity;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/lock/PatternActivity;->i1:Lcom/mycompany/app/view/MyMainRelative;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    goto/16 :goto_1

    .line 8
    .line 9
    :cond_0
    iget-object v1, v0, Lcom/mycompany/app/lock/PatternActivity;->l1:Lcom/mycompany/app/lock/PatternLock;

    .line 10
    .line 11
    invoke-virtual {v1}, Lcom/mycompany/app/lock/PatternLock;->i()V

    .line 12
    .line 13
    .line 14
    sget-boolean v1, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 15
    .line 16
    const/high16 v2, -0x1000000

    .line 17
    .line 18
    if-eqz v1, :cond_3

    .line 19
    .line 20
    iget-object v1, v0, Lcom/mycompany/app/lock/PatternActivity;->j1:Landroid/widget/ImageView;

    .line 21
    .line 22
    sget v3, Lnet/kaki87/soul2/testing/R$drawable;->outline_lock_dark_84:I

    .line 23
    .line 24
    invoke-virtual {v1, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 25
    .line 26
    .line 27
    iget-object v1, v0, Lcom/mycompany/app/lock/PatternActivity;->k1:Landroidx/appcompat/widget/AppCompatTextView;

    .line 28
    .line 29
    const v3, -0x50506

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 33
    .line 34
    .line 35
    iget-object v1, v0, Lcom/mycompany/app/lock/PatternActivity;->m1:Lcom/mycompany/app/view/MyButtonText;

    .line 36
    .line 37
    if-eqz v1, :cond_1

    .line 38
    .line 39
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 40
    .line 41
    .line 42
    iget-object v1, v0, Lcom/mycompany/app/lock/PatternActivity;->m1:Lcom/mycompany/app/view/MyButtonText;

    .line 43
    .line 44
    const v3, -0xd8d8d9

    .line 45
    .line 46
    .line 47
    invoke-virtual {v1, v2, v3}, Lcom/mycompany/app/view/MyButtonText;->u(II)V

    .line 48
    .line 49
    .line 50
    :cond_1
    iget-object v1, v0, Lcom/mycompany/app/lock/PatternActivity;->n1:Lcom/mycompany/app/view/MyLineText;

    .line 51
    .line 52
    if-eqz v1, :cond_2

    .line 53
    .line 54
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->selector_normal_dark:I

    .line 55
    .line 56
    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/AppCompatTextView;->setBackgroundResource(I)V

    .line 57
    .line 58
    .line 59
    :cond_2
    iget-object v1, v0, Lcom/mycompany/app/lock/PatternActivity;->o1:Landroidx/appcompat/widget/AppCompatTextView;

    .line 60
    .line 61
    if-eqz v1, :cond_6

    .line 62
    .line 63
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->selector_normal_dark:I

    .line 64
    .line 65
    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/AppCompatTextView;->setBackgroundResource(I)V

    .line 66
    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_3
    iget-object v1, v0, Lcom/mycompany/app/lock/PatternActivity;->j1:Landroid/widget/ImageView;

    .line 70
    .line 71
    sget v3, Lnet/kaki87/soul2/testing/R$drawable;->outline_lock_black_84:I

    .line 72
    .line 73
    invoke-virtual {v1, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 74
    .line 75
    .line 76
    iget-object v1, v0, Lcom/mycompany/app/lock/PatternActivity;->k1:Landroidx/appcompat/widget/AppCompatTextView;

    .line 77
    .line 78
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 79
    .line 80
    .line 81
    iget-object v1, v0, Lcom/mycompany/app/lock/PatternActivity;->m1:Lcom/mycompany/app/view/MyButtonText;

    .line 82
    .line 83
    if-eqz v1, :cond_4

    .line 84
    .line 85
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 86
    .line 87
    .line 88
    iget-object v1, v0, Lcom/mycompany/app/lock/PatternActivity;->m1:Lcom/mycompany/app/view/MyButtonText;

    .line 89
    .line 90
    const v2, -0x1f1f20

    .line 91
    .line 92
    .line 93
    const v3, -0x2f2f30

    .line 94
    .line 95
    .line 96
    invoke-virtual {v1, v2, v3}, Lcom/mycompany/app/view/MyButtonText;->u(II)V

    .line 97
    .line 98
    .line 99
    :cond_4
    iget-object v1, v0, Lcom/mycompany/app/lock/PatternActivity;->n1:Lcom/mycompany/app/view/MyLineText;

    .line 100
    .line 101
    if-eqz v1, :cond_5

    .line 102
    .line 103
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->selector_normal_gray:I

    .line 104
    .line 105
    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/AppCompatTextView;->setBackgroundResource(I)V

    .line 106
    .line 107
    .line 108
    :cond_5
    iget-object v1, v0, Lcom/mycompany/app/lock/PatternActivity;->o1:Landroidx/appcompat/widget/AppCompatTextView;

    .line 109
    .line 110
    if-eqz v1, :cond_6

    .line 111
    .line 112
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->selector_normal_gray:I

    .line 113
    .line 114
    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/AppCompatTextView;->setBackgroundResource(I)V

    .line 115
    .line 116
    .line 117
    :cond_6
    :goto_0
    iget-object v1, v0, Lcom/mycompany/app/lock/PatternActivity;->l1:Lcom/mycompany/app/lock/PatternLock;

    .line 118
    .line 119
    new-instance v2, Lcom/mycompany/app/lock/PatternActivity$4;

    .line 120
    .line 121
    invoke-direct {v2, v0}, Lcom/mycompany/app/lock/PatternActivity$4;-><init>(Lcom/mycompany/app/lock/PatternActivity;)V

    .line 122
    .line 123
    .line 124
    iget-object v1, v1, Lcom/mycompany/app/lock/PatternLock;->u:Ljava/util/ArrayList;

    .line 125
    .line 126
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 127
    .line 128
    .line 129
    iget v1, v0, Lcom/mycompany/app/lock/PatternActivity;->q1:I

    .line 130
    .line 131
    const/4 v2, 0x1

    .line 132
    if-ne v1, v2, :cond_8

    .line 133
    .line 134
    iget-object v1, v0, Lcom/mycompany/app/lock/PatternActivity;->n1:Lcom/mycompany/app/view/MyLineText;

    .line 135
    .line 136
    if-eqz v1, :cond_d

    .line 137
    .line 138
    iget-object v1, v0, Lcom/mycompany/app/lock/PatternActivity;->o1:Landroidx/appcompat/widget/AppCompatTextView;

    .line 139
    .line 140
    if-nez v1, :cond_7

    .line 141
    .line 142
    goto :goto_1

    .line 143
    :cond_7
    const/4 v1, 0x0

    .line 144
    invoke-virtual {v0, v1}, Lcom/mycompany/app/lock/PatternActivity;->y0(Z)V

    .line 145
    .line 146
    .line 147
    iget-object v1, v0, Lcom/mycompany/app/lock/PatternActivity;->n1:Lcom/mycompany/app/view/MyLineText;

    .line 148
    .line 149
    new-instance v2, Lcom/mycompany/app/lock/PatternActivity$5;

    .line 150
    .line 151
    invoke-direct {v2, v0}, Lcom/mycompany/app/lock/PatternActivity$5;-><init>(Lcom/mycompany/app/lock/PatternActivity;)V

    .line 152
    .line 153
    .line 154
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 155
    .line 156
    .line 157
    iget-object v1, v0, Lcom/mycompany/app/lock/PatternActivity;->o1:Landroidx/appcompat/widget/AppCompatTextView;

    .line 158
    .line 159
    new-instance v2, Lcom/mycompany/app/lock/PatternActivity$6;

    .line 160
    .line 161
    invoke-direct {v2, v0}, Lcom/mycompany/app/lock/PatternActivity$6;-><init>(Lcom/mycompany/app/lock/PatternActivity;)V

    .line 162
    .line 163
    .line 164
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 165
    .line 166
    .line 167
    return-void

    .line 168
    :cond_8
    const/4 v2, 0x2

    .line 169
    const/4 v3, 0x0

    .line 170
    if-ne v1, v2, :cond_a

    .line 171
    .line 172
    iget-object v1, v0, Lcom/mycompany/app/lock/PatternActivity;->m1:Lcom/mycompany/app/view/MyButtonText;

    .line 173
    .line 174
    if-nez v1, :cond_9

    .line 175
    .line 176
    goto :goto_1

    .line 177
    :cond_9
    iget-object v1, v0, Lcom/mycompany/app/lock/PatternActivity;->k1:Landroidx/appcompat/widget/AppCompatTextView;

    .line 178
    .line 179
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 180
    .line 181
    .line 182
    iget-object v1, v0, Lcom/mycompany/app/lock/PatternActivity;->m1:Lcom/mycompany/app/view/MyButtonText;

    .line 183
    .line 184
    sget v2, Lnet/kaki87/soul2/testing/R$string;->secret_reset:I

    .line 185
    .line 186
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 187
    .line 188
    .line 189
    iget-object v1, v0, Lcom/mycompany/app/lock/PatternActivity;->m1:Lcom/mycompany/app/view/MyButtonText;

    .line 190
    .line 191
    new-instance v2, Lcom/mycompany/app/lock/PatternActivity$7;

    .line 192
    .line 193
    invoke-direct {v2, v0}, Lcom/mycompany/app/lock/PatternActivity$7;-><init>(Lcom/mycompany/app/lock/PatternActivity;)V

    .line 194
    .line 195
    .line 196
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 197
    .line 198
    .line 199
    return-void

    .line 200
    :cond_a
    const/4 v2, 0x3

    .line 201
    if-ne v1, v2, :cond_c

    .line 202
    .line 203
    iget-object v1, v0, Lcom/mycompany/app/lock/PatternActivity;->m1:Lcom/mycompany/app/view/MyButtonText;

    .line 204
    .line 205
    if-nez v1, :cond_b

    .line 206
    .line 207
    goto :goto_1

    .line 208
    :cond_b
    iget-object v1, v0, Lcom/mycompany/app/lock/PatternActivity;->k1:Landroidx/appcompat/widget/AppCompatTextView;

    .line 209
    .line 210
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 211
    .line 212
    .line 213
    iget-object v1, v0, Lcom/mycompany/app/lock/PatternActivity;->m1:Lcom/mycompany/app/view/MyButtonText;

    .line 214
    .line 215
    sget v2, Lnet/kaki87/soul2/testing/R$string;->cancel:I

    .line 216
    .line 217
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 218
    .line 219
    .line 220
    iget-object v1, v0, Lcom/mycompany/app/lock/PatternActivity;->m1:Lcom/mycompany/app/view/MyButtonText;

    .line 221
    .line 222
    new-instance v2, Lcom/mycompany/app/lock/PatternActivity$8;

    .line 223
    .line 224
    invoke-direct {v2, v0}, Lcom/mycompany/app/lock/PatternActivity$8;-><init>(Lcom/mycompany/app/lock/PatternActivity;)V

    .line 225
    .line 226
    .line 227
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 228
    .line 229
    .line 230
    return-void

    .line 231
    :cond_c
    iget-object v1, v0, Lcom/mycompany/app/lock/PatternActivity;->m1:Lcom/mycompany/app/view/MyButtonText;

    .line 232
    .line 233
    if-nez v1, :cond_e

    .line 234
    .line 235
    :cond_d
    :goto_1
    return-void

    .line 236
    :cond_e
    iget-object v1, v0, Lcom/mycompany/app/lock/PatternActivity;->k1:Landroidx/appcompat/widget/AppCompatTextView;

    .line 237
    .line 238
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 239
    .line 240
    .line 241
    sget-boolean v1, Lcom/mycompany/app/pref/PrefSecret;->u:Z

    .line 242
    .line 243
    if-eqz v1, :cond_f

    .line 244
    .line 245
    iget-object v1, v0, Lcom/mycompany/app/lock/PatternActivity;->m1:Lcom/mycompany/app/view/MyButtonText;

    .line 246
    .line 247
    sget v2, Lnet/kaki87/soul2/testing/R$string;->normal_start:I

    .line 248
    .line 249
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 250
    .line 251
    .line 252
    goto :goto_2

    .line 253
    :cond_f
    iget-object v1, v0, Lcom/mycompany/app/lock/PatternActivity;->m1:Lcom/mycompany/app/view/MyButtonText;

    .line 254
    .line 255
    sget v2, Lnet/kaki87/soul2/testing/R$string;->secret_reset:I

    .line 256
    .line 257
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 258
    .line 259
    .line 260
    :goto_2
    iget-object v1, v0, Lcom/mycompany/app/lock/PatternActivity;->m1:Lcom/mycompany/app/view/MyButtonText;

    .line 261
    .line 262
    new-instance v2, Lcom/mycompany/app/lock/PatternActivity$9;

    .line 263
    .line 264
    invoke-direct {v2, v0}, Lcom/mycompany/app/lock/PatternActivity$9;-><init>(Lcom/mycompany/app/lock/PatternActivity;)V

    .line 265
    .line 266
    .line 267
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 268
    .line 269
    .line 270
    return-void
.end method
