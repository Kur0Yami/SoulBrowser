.class Lcom/mycompany/app/dialog/DialogEditShort$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogEditShort;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogEditShort;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogEditShort$2;->c:Lcom/mycompany/app/dialog/DialogEditShort;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogEditShort$2;->c:Lcom/mycompany/app/dialog/DialogEditShort;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditShort;->g0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 4
    .line 5
    if-eqz v1, :cond_5

    .line 6
    .line 7
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditShort;->b0:Landroid/content/Context;

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
    const v3, -0xe19938

    .line 18
    .line 19
    .line 20
    const v4, -0x50506

    .line 21
    .line 22
    .line 23
    if-eqz v1, :cond_1

    .line 24
    .line 25
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditShort;->i0:Lcom/mycompany/app/view/MyLineView;

    .line 26
    .line 27
    sget v5, Lcom/mycompany/app/main/MainApp;->n1:I

    .line 28
    .line 29
    int-to-float v5, v5

    .line 30
    invoke-virtual {v1, v5, v4}, Lcom/mycompany/app/view/MyLineView;->c(FI)V

    .line 31
    .line 32
    .line 33
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditShort;->i0:Lcom/mycompany/app/view/MyLineView;

    .line 34
    .line 35
    sget v5, Lnet/kaki87/soul2/testing/R$drawable;->selector_overlay_dark:I

    .line 36
    .line 37
    invoke-virtual {v1, v5}, Landroid/view/View;->setBackgroundResource(I)V

    .line 38
    .line 39
    .line 40
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditShort;->k0:Lcom/mycompany/app/view/MyEditText;

    .line 41
    .line 42
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 43
    .line 44
    .line 45
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditShort;->n0:Lcom/mycompany/app/view/MyLineText;

    .line 46
    .line 47
    sget v5, Lnet/kaki87/soul2/testing/R$drawable;->selector_normal_dark:I

    .line 48
    .line 49
    invoke-virtual {v1, v5}, Landroidx/appcompat/widget/AppCompatTextView;->setBackgroundResource(I)V

    .line 50
    .line 51
    .line 52
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditShort;->n0:Lcom/mycompany/app/view/MyLineText;

    .line 53
    .line 54
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 55
    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_1
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditShort;->i0:Lcom/mycompany/app/view/MyLineView;

    .line 59
    .line 60
    invoke-virtual {v1, v3}, Lcom/mycompany/app/view/MyLineView;->setLineColor(I)V

    .line 61
    .line 62
    .line 63
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditShort;->i0:Lcom/mycompany/app/view/MyLineView;

    .line 64
    .line 65
    sget v5, Lnet/kaki87/soul2/testing/R$drawable;->selector_overlay:I

    .line 66
    .line 67
    invoke-virtual {v1, v5}, Landroid/view/View;->setBackgroundResource(I)V

    .line 68
    .line 69
    .line 70
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditShort;->k0:Lcom/mycompany/app/view/MyEditText;

    .line 71
    .line 72
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 73
    .line 74
    .line 75
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditShort;->n0:Lcom/mycompany/app/view/MyLineText;

    .line 76
    .line 77
    sget v5, Lnet/kaki87/soul2/testing/R$drawable;->selector_normal:I

    .line 78
    .line 79
    invoke-virtual {v1, v5}, Landroidx/appcompat/widget/AppCompatTextView;->setBackgroundResource(I)V

    .line 80
    .line 81
    .line 82
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditShort;->n0:Lcom/mycompany/app/view/MyLineText;

    .line 83
    .line 84
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 85
    .line 86
    .line 87
    :goto_0
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditShort;->i0:Lcom/mycompany/app/view/MyLineView;

    .line 88
    .line 89
    new-instance v5, Lcom/mycompany/app/dialog/DialogEditShort$3;

    .line 90
    .line 91
    invoke-direct {v5, v0}, Lcom/mycompany/app/dialog/DialogEditShort$3;-><init>(Lcom/mycompany/app/dialog/DialogEditShort;)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {v1, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 95
    .line 96
    .line 97
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditShort;->k0:Lcom/mycompany/app/view/MyEditText;

    .line 98
    .line 99
    iget-object v5, v0, Lcom/mycompany/app/dialog/DialogEditShort;->e0:Ljava/lang/String;

    .line 100
    .line 101
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 102
    .line 103
    .line 104
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditShort;->k0:Lcom/mycompany/app/view/MyEditText;

    .line 105
    .line 106
    invoke-virtual {v1, v3}, Lcom/mycompany/app/view/MyEditText;->setElineColor(I)V

    .line 107
    .line 108
    .line 109
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditShort;->k0:Lcom/mycompany/app/view/MyEditText;

    .line 110
    .line 111
    const/4 v3, 0x1

    .line 112
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setSelectAllOnFocus(Z)V

    .line 113
    .line 114
    .line 115
    const/4 v1, 0x0

    .line 116
    invoke-virtual {v0, v1, v3}, Lcom/mycompany/app/dialog/DialogEditShort;->F(Ljava/lang/String;Z)V

    .line 117
    .line 118
    .line 119
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditShort;->k0:Lcom/mycompany/app/view/MyEditText;

    .line 120
    .line 121
    new-instance v5, Lcom/mycompany/app/dialog/DialogEditShort$4;

    .line 122
    .line 123
    invoke-direct {v5, v0}, Lcom/mycompany/app/dialog/DialogEditShort$4;-><init>(Lcom/mycompany/app/dialog/DialogEditShort;)V

    .line 124
    .line 125
    .line 126
    invoke-virtual {v1, v5}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 127
    .line 128
    .line 129
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditShort;->k0:Lcom/mycompany/app/view/MyEditText;

    .line 130
    .line 131
    new-instance v5, Lcom/mycompany/app/dialog/DialogEditShort$5;

    .line 132
    .line 133
    invoke-direct {v5, v0}, Lcom/mycompany/app/dialog/DialogEditShort$5;-><init>(Lcom/mycompany/app/dialog/DialogEditShort;)V

    .line 134
    .line 135
    .line 136
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 137
    .line 138
    .line 139
    iget v1, v0, Lcom/mycompany/app/dialog/DialogEditShort;->f0:I

    .line 140
    .line 141
    if-nez v1, :cond_4

    .line 142
    .line 143
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditShort;->l0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 144
    .line 145
    if-nez v1, :cond_2

    .line 146
    .line 147
    goto :goto_2

    .line 148
    :cond_2
    sget-boolean v5, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 149
    .line 150
    if-eqz v5, :cond_3

    .line 151
    .line 152
    const v2, -0x3e3e3f

    .line 153
    .line 154
    .line 155
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 156
    .line 157
    .line 158
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditShort;->m0:Lcom/mycompany/app/view/MyEditText;

    .line 159
    .line 160
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 161
    .line 162
    .line 163
    goto :goto_1

    .line 164
    :cond_3
    const v4, -0x9e9e9f

    .line 165
    .line 166
    .line 167
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 168
    .line 169
    .line 170
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditShort;->m0:Lcom/mycompany/app/view/MyEditText;

    .line 171
    .line 172
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 173
    .line 174
    .line 175
    :goto_1
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditShort;->l0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 176
    .line 177
    sget v2, Lnet/kaki87/soul2/testing/R$string;->url:I

    .line 178
    .line 179
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 180
    .line 181
    .line 182
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditShort;->m0:Lcom/mycompany/app/view/MyEditText;

    .line 183
    .line 184
    const-string v2, "https://..."

    .line 185
    .line 186
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    .line 187
    .line 188
    .line 189
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditShort;->m0:Lcom/mycompany/app/view/MyEditText;

    .line 190
    .line 191
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogEditShort;->d0:Ljava/lang/String;

    .line 192
    .line 193
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 194
    .line 195
    .line 196
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditShort;->m0:Lcom/mycompany/app/view/MyEditText;

    .line 197
    .line 198
    const v2, -0x252526

    .line 199
    .line 200
    .line 201
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyEditText;->setElineColor(I)V

    .line 202
    .line 203
    .line 204
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditShort;->m0:Lcom/mycompany/app/view/MyEditText;

    .line 205
    .line 206
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setSelectAllOnFocus(Z)V

    .line 207
    .line 208
    .line 209
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditShort;->m0:Lcom/mycompany/app/view/MyEditText;

    .line 210
    .line 211
    new-instance v2, Lcom/mycompany/app/dialog/DialogEditShort$6;

    .line 212
    .line 213
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogEditShort$6;-><init>(Lcom/mycompany/app/dialog/DialogEditShort;)V

    .line 214
    .line 215
    .line 216
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 217
    .line 218
    .line 219
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditShort;->m0:Lcom/mycompany/app/view/MyEditText;

    .line 220
    .line 221
    new-instance v2, Lcom/mycompany/app/dialog/DialogEditShort$7;

    .line 222
    .line 223
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogEditShort$7;-><init>(Lcom/mycompany/app/dialog/DialogEditShort;)V

    .line 224
    .line 225
    .line 226
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 227
    .line 228
    .line 229
    :cond_4
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditShort;->n0:Lcom/mycompany/app/view/MyLineText;

    .line 230
    .line 231
    new-instance v2, Lcom/mycompany/app/dialog/DialogEditShort$8;

    .line 232
    .line 233
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogEditShort$8;-><init>(Lcom/mycompany/app/dialog/DialogEditShort;)V

    .line 234
    .line 235
    .line 236
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 237
    .line 238
    .line 239
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditShort;->g0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 240
    .line 241
    new-instance v2, Lcom/mycompany/app/dialog/DialogEditShort$9;

    .line 242
    .line 243
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogEditShort$9;-><init>(Lcom/mycompany/app/dialog/DialogEditShort;)V

    .line 244
    .line 245
    .line 246
    invoke-virtual {v0, v1, v2}, Lcom/mycompany/app/view/MyDialogBottom;->g(Landroid/view/View;Lcom/mycompany/app/view/MyDialogBottom$BotViewListener;)V

    .line 247
    .line 248
    .line 249
    :cond_5
    :goto_2
    return-void
.end method
