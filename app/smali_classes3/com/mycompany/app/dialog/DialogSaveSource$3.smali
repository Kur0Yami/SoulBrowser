.class Lcom/mycompany/app/dialog/DialogSaveSource$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogSaveSource;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogSaveSource;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogSaveSource$3;->c:Lcom/mycompany/app/dialog/DialogSaveSource;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSaveSource$3;->c:Lcom/mycompany/app/dialog/DialogSaveSource;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSaveSource;->d0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 4
    .line 5
    if-eqz v1, :cond_2

    .line 6
    .line 7
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSaveSource;->b0:Landroid/content/Context;

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
    const v2, -0x70708

    .line 16
    .line 17
    .line 18
    if-eqz v1, :cond_1

    .line 19
    .line 20
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSaveSource;->i0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 21
    .line 22
    const v3, -0x3e3e3f

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 26
    .line 27
    .line 28
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSaveSource;->l0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 29
    .line 30
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 31
    .line 32
    .line 33
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSaveSource;->e0:Lcom/mycompany/app/view/MyRoundImage;

    .line 34
    .line 35
    sget v3, Lnet/kaki87/soul2/testing/R$drawable;->outline_sticky_note_dark_24:I

    .line 36
    .line 37
    invoke-virtual {v1, v2, v3}, Lcom/mycompany/app/view/MyRoundImage;->o(II)V

    .line 38
    .line 39
    .line 40
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSaveSource;->h0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 41
    .line 42
    const v2, -0xc0c0c1

    .line 43
    .line 44
    .line 45
    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 46
    .line 47
    .line 48
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSaveSource;->h0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 49
    .line 50
    const v2, -0x252526

    .line 51
    .line 52
    .line 53
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 54
    .line 55
    .line 56
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSaveSource;->f0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 57
    .line 58
    const v2, -0x50506

    .line 59
    .line 60
    .line 61
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 62
    .line 63
    .line 64
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSaveSource;->j0:Lcom/mycompany/app/view/MyEditText;

    .line 65
    .line 66
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 67
    .line 68
    .line 69
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSaveSource;->m0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 70
    .line 71
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 72
    .line 73
    .line 74
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSaveSource;->k0:Lcom/mycompany/app/view/MyLineRelative;

    .line 75
    .line 76
    sget v3, Lnet/kaki87/soul2/testing/R$drawable;->selector_normal_dark:I

    .line 77
    .line 78
    invoke-virtual {v1, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 79
    .line 80
    .line 81
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSaveSource;->n0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 82
    .line 83
    sget v3, Lnet/kaki87/soul2/testing/R$drawable;->selector_normal_dark:I

    .line 84
    .line 85
    invoke-virtual {v1, v3}, Landroidx/appcompat/widget/AppCompatTextView;->setBackgroundResource(I)V

    .line 86
    .line 87
    .line 88
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSaveSource;->n0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 89
    .line 90
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 91
    .line 92
    .line 93
    goto :goto_0

    .line 94
    :cond_1
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSaveSource;->i0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 95
    .line 96
    const v3, -0x9e9e9f

    .line 97
    .line 98
    .line 99
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 100
    .line 101
    .line 102
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSaveSource;->l0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 103
    .line 104
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 105
    .line 106
    .line 107
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSaveSource;->e0:Lcom/mycompany/app/view/MyRoundImage;

    .line 108
    .line 109
    sget v3, Lnet/kaki87/soul2/testing/R$drawable;->outline_sticky_note_black_24:I

    .line 110
    .line 111
    invoke-virtual {v1, v2, v3}, Lcom/mycompany/app/view/MyRoundImage;->o(II)V

    .line 112
    .line 113
    .line 114
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSaveSource;->h0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 115
    .line 116
    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 117
    .line 118
    .line 119
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSaveSource;->h0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 120
    .line 121
    const v2, -0xbbbbbc

    .line 122
    .line 123
    .line 124
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 125
    .line 126
    .line 127
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSaveSource;->f0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 128
    .line 129
    const/high16 v2, -0x1000000

    .line 130
    .line 131
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 132
    .line 133
    .line 134
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSaveSource;->j0:Lcom/mycompany/app/view/MyEditText;

    .line 135
    .line 136
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 137
    .line 138
    .line 139
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSaveSource;->m0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 140
    .line 141
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 142
    .line 143
    .line 144
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSaveSource;->k0:Lcom/mycompany/app/view/MyLineRelative;

    .line 145
    .line 146
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->selector_normal:I

    .line 147
    .line 148
    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 149
    .line 150
    .line 151
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSaveSource;->n0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 152
    .line 153
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->selector_normal:I

    .line 154
    .line 155
    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/AppCompatTextView;->setBackgroundResource(I)V

    .line 156
    .line 157
    .line 158
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSaveSource;->n0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 159
    .line 160
    const v2, -0xe19938

    .line 161
    .line 162
    .line 163
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 164
    .line 165
    .line 166
    :goto_0
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSaveSource;->l0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 167
    .line 168
    sget v2, Lnet/kaki87/soul2/testing/R$string;->save_location:I

    .line 169
    .line 170
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 171
    .line 172
    .line 173
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSaveSource;->n0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 174
    .line 175
    sget v2, Lnet/kaki87/soul2/testing/R$string;->save:I

    .line 176
    .line 177
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 178
    .line 179
    .line 180
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSaveSource;->f0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 181
    .line 182
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogSaveSource;->t0:Ljava/lang/String;

    .line 183
    .line 184
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 185
    .line 186
    .line 187
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSaveSource;->u0:Ljava/lang/String;

    .line 188
    .line 189
    invoke-virtual {v0, v1}, Lcom/mycompany/app/dialog/DialogSaveSource;->F(Ljava/lang/String;)V

    .line 190
    .line 191
    .line 192
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSaveSource;->j0:Lcom/mycompany/app/view/MyEditText;

    .line 193
    .line 194
    const/4 v2, 0x0

    .line 195
    invoke-static {v1, v2}, Lcom/mycompany/app/main/MainUtil;->k7(Landroid/widget/EditText;Z)V

    .line 196
    .line 197
    .line 198
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSaveSource;->j0:Lcom/mycompany/app/view/MyEditText;

    .line 199
    .line 200
    new-instance v2, Lcom/mycompany/app/dialog/DialogSaveSource$4;

    .line 201
    .line 202
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogSaveSource$4;-><init>(Lcom/mycompany/app/dialog/DialogSaveSource;)V

    .line 203
    .line 204
    .line 205
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 206
    .line 207
    .line 208
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSaveSource;->j0:Lcom/mycompany/app/view/MyEditText;

    .line 209
    .line 210
    new-instance v2, Lcom/mycompany/app/dialog/DialogSaveSource$5;

    .line 211
    .line 212
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogSaveSource$5;-><init>(Lcom/mycompany/app/dialog/DialogSaveSource;)V

    .line 213
    .line 214
    .line 215
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 216
    .line 217
    .line 218
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSaveSource;->k0:Lcom/mycompany/app/view/MyLineRelative;

    .line 219
    .line 220
    new-instance v2, Lcom/mycompany/app/dialog/DialogSaveSource$6;

    .line 221
    .line 222
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogSaveSource$6;-><init>(Lcom/mycompany/app/dialog/DialogSaveSource;)V

    .line 223
    .line 224
    .line 225
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 226
    .line 227
    .line 228
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSaveSource;->n0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 229
    .line 230
    new-instance v2, Lcom/mycompany/app/dialog/DialogSaveSource$7;

    .line 231
    .line 232
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogSaveSource$7;-><init>(Lcom/mycompany/app/dialog/DialogSaveSource;)V

    .line 233
    .line 234
    .line 235
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 236
    .line 237
    .line 238
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSaveSource;->d0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 239
    .line 240
    new-instance v2, Lcom/mycompany/app/dialog/DialogSaveSource$8;

    .line 241
    .line 242
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogSaveSource$8;-><init>(Lcom/mycompany/app/dialog/DialogSaveSource;)V

    .line 243
    .line 244
    .line 245
    invoke-virtual {v0, v1, v2}, Lcom/mycompany/app/view/MyDialogBottom;->g(Landroid/view/View;Lcom/mycompany/app/view/MyDialogBottom$BotViewListener;)V

    .line 246
    .line 247
    .line 248
    :cond_2
    :goto_1
    return-void
.end method
