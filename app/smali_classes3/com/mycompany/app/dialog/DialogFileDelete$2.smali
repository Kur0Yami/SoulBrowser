.class Lcom/mycompany/app/dialog/DialogFileDelete$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogFileDelete;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogFileDelete;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogFileDelete$2;->c:Lcom/mycompany/app/dialog/DialogFileDelete;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogFileDelete$2;->c:Lcom/mycompany/app/dialog/DialogFileDelete;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogFileDelete;->g0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 4
    .line 5
    if-eqz v1, :cond_2

    .line 6
    .line 7
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogFileDelete;->a0:Landroid/content/Context;

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
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogFileDelete;->i0:Landroidx/appcompat/widget/AppCompatTextView;

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
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogFileDelete;->j0:Lcom/mycompany/app/view/MyEditText;

    .line 26
    .line 27
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 28
    .line 29
    .line 30
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogFileDelete;->t0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 31
    .line 32
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 33
    .line 34
    .line 35
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogFileDelete;->l0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 36
    .line 37
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 38
    .line 39
    .line 40
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogFileDelete;->u0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 41
    .line 42
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 43
    .line 44
    .line 45
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogFileDelete;->n0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 46
    .line 47
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 48
    .line 49
    .line 50
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogFileDelete;->v0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 51
    .line 52
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 53
    .line 54
    .line 55
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogFileDelete;->o0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 56
    .line 57
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 58
    .line 59
    .line 60
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogFileDelete;->w0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 61
    .line 62
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 63
    .line 64
    .line 65
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogFileDelete;->q0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 66
    .line 67
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 68
    .line 69
    .line 70
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogFileDelete;->x0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 71
    .line 72
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 73
    .line 74
    .line 75
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogFileDelete;->r0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 76
    .line 77
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 78
    .line 79
    .line 80
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogFileDelete;->y0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 81
    .line 82
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 83
    .line 84
    .line 85
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogFileDelete;->s0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 86
    .line 87
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 88
    .line 89
    .line 90
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogFileDelete;->z0:Lcom/mycompany/app/view/MyLineText;

    .line 91
    .line 92
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 93
    .line 94
    .line 95
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogFileDelete;->z0:Lcom/mycompany/app/view/MyLineText;

    .line 96
    .line 97
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->selector_normal_dark:I

    .line 98
    .line 99
    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/AppCompatTextView;->setBackgroundResource(I)V

    .line 100
    .line 101
    .line 102
    goto :goto_0

    .line 103
    :cond_1
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogFileDelete;->i0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 104
    .line 105
    const/high16 v2, -0x1000000

    .line 106
    .line 107
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 108
    .line 109
    .line 110
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogFileDelete;->j0:Lcom/mycompany/app/view/MyEditText;

    .line 111
    .line 112
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 113
    .line 114
    .line 115
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogFileDelete;->t0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 116
    .line 117
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 118
    .line 119
    .line 120
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogFileDelete;->l0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 121
    .line 122
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 123
    .line 124
    .line 125
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogFileDelete;->u0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 126
    .line 127
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 128
    .line 129
    .line 130
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogFileDelete;->n0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 131
    .line 132
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 133
    .line 134
    .line 135
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogFileDelete;->v0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 136
    .line 137
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 138
    .line 139
    .line 140
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogFileDelete;->o0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 141
    .line 142
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 143
    .line 144
    .line 145
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogFileDelete;->w0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 146
    .line 147
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 148
    .line 149
    .line 150
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogFileDelete;->q0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 151
    .line 152
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 153
    .line 154
    .line 155
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogFileDelete;->x0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 156
    .line 157
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 158
    .line 159
    .line 160
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogFileDelete;->r0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 161
    .line 162
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 163
    .line 164
    .line 165
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogFileDelete;->y0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 166
    .line 167
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 168
    .line 169
    .line 170
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogFileDelete;->s0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 171
    .line 172
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 173
    .line 174
    .line 175
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogFileDelete;->z0:Lcom/mycompany/app/view/MyLineText;

    .line 176
    .line 177
    const v2, -0xe19938

    .line 178
    .line 179
    .line 180
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 181
    .line 182
    .line 183
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogFileDelete;->z0:Lcom/mycompany/app/view/MyLineText;

    .line 184
    .line 185
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->selector_normal:I

    .line 186
    .line 187
    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/AppCompatTextView;->setBackgroundResource(I)V

    .line 188
    .line 189
    .line 190
    :goto_0
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogFileDelete;->z0:Lcom/mycompany/app/view/MyLineText;

    .line 191
    .line 192
    sget v2, Lnet/kaki87/soul2/testing/R$string;->delete:I

    .line 193
    .line 194
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 195
    .line 196
    .line 197
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogFileDelete;->c0:Ljava/util/List;

    .line 198
    .line 199
    invoke-virtual {v0, v1}, Lcom/mycompany/app/dialog/DialogFileDelete;->D(Ljava/util/List;)V

    .line 200
    .line 201
    .line 202
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogFileDelete;->c0:Ljava/util/List;

    .line 203
    .line 204
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 205
    .line 206
    .line 207
    move-result v1

    .line 208
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogFileDelete;->l0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 209
    .line 210
    const/4 v3, 0x0

    .line 211
    invoke-static {v3, v1}, Lcom/mycompany/app/main/MainUtil;->h3(II)Ljava/lang/String;

    .line 212
    .line 213
    .line 214
    move-result-object v3

    .line 215
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 216
    .line 217
    .line 218
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogFileDelete;->m0:Lcom/mycompany/app/view/MyProgressBar;

    .line 219
    .line 220
    invoke-virtual {v2, v1}, Lcom/mycompany/app/view/MyProgressBar;->setMax(I)V

    .line 221
    .line 222
    .line 223
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogFileDelete;->n0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 224
    .line 225
    const-string v2, "0"

    .line 226
    .line 227
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 228
    .line 229
    .line 230
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogFileDelete;->o0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 231
    .line 232
    const-string v2, "0:00:00"

    .line 233
    .line 234
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 235
    .line 236
    .line 237
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogFileDelete;->z0:Lcom/mycompany/app/view/MyLineText;

    .line 238
    .line 239
    new-instance v2, Lcom/mycompany/app/dialog/DialogFileDelete$3;

    .line 240
    .line 241
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogFileDelete$3;-><init>(Lcom/mycompany/app/dialog/DialogFileDelete;)V

    .line 242
    .line 243
    .line 244
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 245
    .line 246
    .line 247
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogFileDelete;->g0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 248
    .line 249
    new-instance v2, Lcom/mycompany/app/dialog/DialogFileDelete$4;

    .line 250
    .line 251
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogFileDelete$4;-><init>(Lcom/mycompany/app/dialog/DialogFileDelete;)V

    .line 252
    .line 253
    .line 254
    invoke-virtual {v0, v1, v2}, Lcom/mycompany/app/view/MyDialogBottom;->g(Landroid/view/View;Lcom/mycompany/app/view/MyDialogBottom$BotViewListener;)V

    .line 255
    .line 256
    .line 257
    :cond_2
    :goto_1
    return-void
.end method
