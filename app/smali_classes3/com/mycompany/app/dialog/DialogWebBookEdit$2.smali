.class Lcom/mycompany/app/dialog/DialogWebBookEdit$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogWebBookEdit;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogWebBookEdit;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogWebBookEdit$2;->c:Lcom/mycompany/app/dialog/DialogWebBookEdit;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogWebBookEdit$2;->c:Lcom/mycompany/app/dialog/DialogWebBookEdit;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogWebBookEdit;->l0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 4
    .line 5
    if-eqz v1, :cond_4

    .line 6
    .line 7
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogWebBookEdit;->b0:Landroid/content/Context;

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
    const v2, -0xe19938

    .line 16
    .line 17
    .line 18
    if-eqz v1, :cond_1

    .line 19
    .line 20
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogWebBookEdit;->n0:Lcom/mycompany/app/view/MyEditText;

    .line 21
    .line 22
    const v3, -0x50506

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 26
    .line 27
    .line 28
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogWebBookEdit;->o0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 29
    .line 30
    const v4, -0x3e3e3f

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 34
    .line 35
    .line 36
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogWebBookEdit;->p0:Lcom/mycompany/app/view/MyEditText;

    .line 37
    .line 38
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 39
    .line 40
    .line 41
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogWebBookEdit;->q0:Lcom/mycompany/app/view/MyLineFrame;

    .line 42
    .line 43
    sget v5, Lnet/kaki87/soul2/testing/R$drawable;->selector_normal_dark:I

    .line 44
    .line 45
    invoke-virtual {v1, v5}, Landroid/view/View;->setBackgroundResource(I)V

    .line 46
    .line 47
    .line 48
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogWebBookEdit;->r0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 49
    .line 50
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 51
    .line 52
    .line 53
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogWebBookEdit;->s0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 54
    .line 55
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 56
    .line 57
    .line 58
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogWebBookEdit;->t0:Lcom/mycompany/app/view/MyLineText;

    .line 59
    .line 60
    sget v4, Lnet/kaki87/soul2/testing/R$drawable;->selector_normal_dark:I

    .line 61
    .line 62
    invoke-virtual {v1, v4}, Landroidx/appcompat/widget/AppCompatTextView;->setBackgroundResource(I)V

    .line 63
    .line 64
    .line 65
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogWebBookEdit;->t0:Lcom/mycompany/app/view/MyLineText;

    .line 66
    .line 67
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 68
    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_1
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogWebBookEdit;->n0:Lcom/mycompany/app/view/MyEditText;

    .line 72
    .line 73
    const/high16 v3, -0x1000000

    .line 74
    .line 75
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 76
    .line 77
    .line 78
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogWebBookEdit;->o0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 79
    .line 80
    const v4, -0x9e9e9f

    .line 81
    .line 82
    .line 83
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 84
    .line 85
    .line 86
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogWebBookEdit;->p0:Lcom/mycompany/app/view/MyEditText;

    .line 87
    .line 88
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 89
    .line 90
    .line 91
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogWebBookEdit;->q0:Lcom/mycompany/app/view/MyLineFrame;

    .line 92
    .line 93
    sget v5, Lnet/kaki87/soul2/testing/R$drawable;->selector_normal:I

    .line 94
    .line 95
    invoke-virtual {v1, v5}, Landroid/view/View;->setBackgroundResource(I)V

    .line 96
    .line 97
    .line 98
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogWebBookEdit;->r0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 99
    .line 100
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 101
    .line 102
    .line 103
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogWebBookEdit;->s0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 104
    .line 105
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 106
    .line 107
    .line 108
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogWebBookEdit;->t0:Lcom/mycompany/app/view/MyLineText;

    .line 109
    .line 110
    sget v3, Lnet/kaki87/soul2/testing/R$drawable;->selector_normal:I

    .line 111
    .line 112
    invoke-virtual {v1, v3}, Landroidx/appcompat/widget/AppCompatTextView;->setBackgroundResource(I)V

    .line 113
    .line 114
    .line 115
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogWebBookEdit;->t0:Lcom/mycompany/app/view/MyLineText;

    .line 116
    .line 117
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 118
    .line 119
    .line 120
    :goto_0
    iget-boolean v1, v0, Lcom/mycompany/app/dialog/DialogWebBookEdit;->d0:Z

    .line 121
    .line 122
    if-nez v1, :cond_3

    .line 123
    .line 124
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogWebBookEdit;->c0:Lcom/mycompany/app/dialog/DialogWebBookEdit$BookEditListener;

    .line 125
    .line 126
    if-eqz v1, :cond_3

    .line 127
    .line 128
    invoke-interface {v1}, Lcom/mycompany/app/dialog/DialogWebBookEdit$BookEditListener;->getIcon()Landroid/graphics/Bitmap;

    .line 129
    .line 130
    .line 131
    move-result-object v1

    .line 132
    invoke-static {v1}, Lcom/mycompany/app/main/MainUtil;->f6(Landroid/graphics/Bitmap;)Z

    .line 133
    .line 134
    .line 135
    move-result v3

    .line 136
    if-nez v3, :cond_2

    .line 137
    .line 138
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogWebBookEdit;->f0:Ljava/lang/String;

    .line 139
    .line 140
    invoke-static {v1}, Lcom/mycompany/app/main/MainUtil;->O1(Ljava/lang/String;)Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object v1

    .line 144
    invoke-static {v1}, Lcom/mycompany/app/main/MainUtil;->n4(Ljava/lang/String;)Landroid/graphics/Bitmap;

    .line 145
    .line 146
    .line 147
    move-result-object v1

    .line 148
    :cond_2
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogWebBookEdit;->j0:Ljava/lang/String;

    .line 149
    .line 150
    iget-object v4, v0, Lcom/mycompany/app/dialog/DialogWebBookEdit;->g0:Ljava/lang/String;

    .line 151
    .line 152
    invoke-virtual {v0, v3, v4, v1}, Lcom/mycompany/app/dialog/DialogWebBookEdit;->F(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 153
    .line 154
    .line 155
    goto :goto_1

    .line 156
    :cond_3
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogWebBookEdit;->j0:Ljava/lang/String;

    .line 157
    .line 158
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogWebBookEdit;->g0:Ljava/lang/String;

    .line 159
    .line 160
    const/4 v4, 0x0

    .line 161
    invoke-virtual {v0, v1, v3, v4}, Lcom/mycompany/app/dialog/DialogWebBookEdit;->F(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 162
    .line 163
    .line 164
    :goto_1
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogWebBookEdit;->h0:Ljava/lang/String;

    .line 165
    .line 166
    invoke-virtual {v0, v1}, Lcom/mycompany/app/dialog/DialogWebBookEdit;->G(Ljava/lang/String;)V

    .line 167
    .line 168
    .line 169
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogWebBookEdit;->n0:Lcom/mycompany/app/view/MyEditText;

    .line 170
    .line 171
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyEditText;->setElineColor(I)V

    .line 172
    .line 173
    .line 174
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogWebBookEdit;->p0:Lcom/mycompany/app/view/MyEditText;

    .line 175
    .line 176
    const v2, -0x252526

    .line 177
    .line 178
    .line 179
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyEditText;->setElineColor(I)V

    .line 180
    .line 181
    .line 182
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogWebBookEdit;->n0:Lcom/mycompany/app/view/MyEditText;

    .line 183
    .line 184
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogWebBookEdit;->g0:Ljava/lang/String;

    .line 185
    .line 186
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 187
    .line 188
    .line 189
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogWebBookEdit;->p0:Lcom/mycompany/app/view/MyEditText;

    .line 190
    .line 191
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogWebBookEdit;->f0:Ljava/lang/String;

    .line 192
    .line 193
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 194
    .line 195
    .line 196
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogWebBookEdit;->n0:Lcom/mycompany/app/view/MyEditText;

    .line 197
    .line 198
    const/4 v2, 0x1

    .line 199
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setSelectAllOnFocus(Z)V

    .line 200
    .line 201
    .line 202
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogWebBookEdit;->n0:Lcom/mycompany/app/view/MyEditText;

    .line 203
    .line 204
    new-instance v3, Lcom/mycompany/app/dialog/DialogWebBookEdit$3;

    .line 205
    .line 206
    invoke-direct {v3, v0}, Lcom/mycompany/app/dialog/DialogWebBookEdit$3;-><init>(Lcom/mycompany/app/dialog/DialogWebBookEdit;)V

    .line 207
    .line 208
    .line 209
    invoke-virtual {v1, v3}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 210
    .line 211
    .line 212
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogWebBookEdit;->n0:Lcom/mycompany/app/view/MyEditText;

    .line 213
    .line 214
    new-instance v3, Lcom/mycompany/app/dialog/DialogWebBookEdit$4;

    .line 215
    .line 216
    invoke-direct {v3, v0}, Lcom/mycompany/app/dialog/DialogWebBookEdit$4;-><init>(Lcom/mycompany/app/dialog/DialogWebBookEdit;)V

    .line 217
    .line 218
    .line 219
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 220
    .line 221
    .line 222
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogWebBookEdit;->p0:Lcom/mycompany/app/view/MyEditText;

    .line 223
    .line 224
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setSelectAllOnFocus(Z)V

    .line 225
    .line 226
    .line 227
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogWebBookEdit;->p0:Lcom/mycompany/app/view/MyEditText;

    .line 228
    .line 229
    new-instance v2, Lcom/mycompany/app/dialog/DialogWebBookEdit$5;

    .line 230
    .line 231
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogWebBookEdit$5;-><init>(Lcom/mycompany/app/dialog/DialogWebBookEdit;)V

    .line 232
    .line 233
    .line 234
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 235
    .line 236
    .line 237
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogWebBookEdit;->p0:Lcom/mycompany/app/view/MyEditText;

    .line 238
    .line 239
    new-instance v2, Lcom/mycompany/app/dialog/DialogWebBookEdit$6;

    .line 240
    .line 241
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogWebBookEdit$6;-><init>(Lcom/mycompany/app/dialog/DialogWebBookEdit;)V

    .line 242
    .line 243
    .line 244
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 245
    .line 246
    .line 247
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogWebBookEdit;->q0:Lcom/mycompany/app/view/MyLineFrame;

    .line 248
    .line 249
    new-instance v2, Lcom/mycompany/app/dialog/DialogWebBookEdit$7;

    .line 250
    .line 251
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogWebBookEdit$7;-><init>(Lcom/mycompany/app/dialog/DialogWebBookEdit;)V

    .line 252
    .line 253
    .line 254
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 255
    .line 256
    .line 257
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogWebBookEdit;->t0:Lcom/mycompany/app/view/MyLineText;

    .line 258
    .line 259
    new-instance v2, Lcom/mycompany/app/dialog/DialogWebBookEdit$8;

    .line 260
    .line 261
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogWebBookEdit$8;-><init>(Lcom/mycompany/app/dialog/DialogWebBookEdit;)V

    .line 262
    .line 263
    .line 264
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 265
    .line 266
    .line 267
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogWebBookEdit;->l0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 268
    .line 269
    new-instance v2, Lcom/mycompany/app/dialog/DialogWebBookEdit$9;

    .line 270
    .line 271
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogWebBookEdit$9;-><init>(Lcom/mycompany/app/dialog/DialogWebBookEdit;)V

    .line 272
    .line 273
    .line 274
    invoke-virtual {v0, v1, v2}, Lcom/mycompany/app/view/MyDialogBottom;->g(Landroid/view/View;Lcom/mycompany/app/view/MyDialogBottom$BotViewListener;)V

    .line 275
    .line 276
    .line 277
    :cond_4
    :goto_2
    return-void
.end method
