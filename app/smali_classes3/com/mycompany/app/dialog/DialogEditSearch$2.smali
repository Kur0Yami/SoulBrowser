.class Lcom/mycompany/app/dialog/DialogEditSearch$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogEditSearch;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogEditSearch;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogEditSearch$2;->c:Lcom/mycompany/app/dialog/DialogEditSearch;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogEditSearch$2;->c:Lcom/mycompany/app/dialog/DialogEditSearch;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditSearch;->k0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 4
    .line 5
    if-eqz v1, :cond_5

    .line 6
    .line 7
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditSearch;->b0:Landroid/content/Context;

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
    const v3, -0x50506

    .line 19
    .line 20
    .line 21
    if-eqz v1, :cond_1

    .line 22
    .line 23
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditSearch;->m0:Lcom/mycompany/app/view/MyLineView;

    .line 24
    .line 25
    sget v4, Lnet/kaki87/soul2/testing/R$drawable;->selector_overlay_dark:I

    .line 26
    .line 27
    invoke-virtual {v1, v4}, Landroid/view/View;->setBackgroundResource(I)V

    .line 28
    .line 29
    .line 30
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditSearch;->n0:Lcom/mycompany/app/view/MyEditText;

    .line 31
    .line 32
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 33
    .line 34
    .line 35
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditSearch;->o0:Lcom/mycompany/app/view/MyRoundFrame;

    .line 36
    .line 37
    const v4, -0xd2d2d3

    .line 38
    .line 39
    .line 40
    invoke-virtual {v1, v4}, Lcom/mycompany/app/view/MyRoundFrame;->setBgColor(I)V

    .line 41
    .line 42
    .line 43
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditSearch;->p0:Lcom/mycompany/app/view/MyEditPure;

    .line 44
    .line 45
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 46
    .line 47
    .line 48
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditSearch;->q0:Lcom/mycompany/app/view/MyLineText;

    .line 49
    .line 50
    sget v4, Lnet/kaki87/soul2/testing/R$drawable;->selector_normal_dark:I

    .line 51
    .line 52
    invoke-virtual {v1, v4}, Landroidx/appcompat/widget/AppCompatTextView;->setBackgroundResource(I)V

    .line 53
    .line 54
    .line 55
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditSearch;->q0:Lcom/mycompany/app/view/MyLineText;

    .line 56
    .line 57
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 58
    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_1
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditSearch;->m0:Lcom/mycompany/app/view/MyLineView;

    .line 62
    .line 63
    sget v4, Lnet/kaki87/soul2/testing/R$drawable;->selector_overlay:I

    .line 64
    .line 65
    invoke-virtual {v1, v4}, Landroid/view/View;->setBackgroundResource(I)V

    .line 66
    .line 67
    .line 68
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditSearch;->n0:Lcom/mycompany/app/view/MyEditText;

    .line 69
    .line 70
    const/high16 v4, -0x1000000

    .line 71
    .line 72
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 73
    .line 74
    .line 75
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditSearch;->o0:Lcom/mycompany/app/view/MyRoundFrame;

    .line 76
    .line 77
    const v5, -0x70708

    .line 78
    .line 79
    .line 80
    invoke-virtual {v1, v5}, Lcom/mycompany/app/view/MyRoundFrame;->setBgColor(I)V

    .line 81
    .line 82
    .line 83
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditSearch;->p0:Lcom/mycompany/app/view/MyEditPure;

    .line 84
    .line 85
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 86
    .line 87
    .line 88
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditSearch;->q0:Lcom/mycompany/app/view/MyLineText;

    .line 89
    .line 90
    sget v4, Lnet/kaki87/soul2/testing/R$drawable;->selector_normal:I

    .line 91
    .line 92
    invoke-virtual {v1, v4}, Landroidx/appcompat/widget/AppCompatTextView;->setBackgroundResource(I)V

    .line 93
    .line 94
    .line 95
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditSearch;->q0:Lcom/mycompany/app/view/MyLineText;

    .line 96
    .line 97
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 98
    .line 99
    .line 100
    :goto_0
    sget-boolean v1, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 101
    .line 102
    if-eqz v1, :cond_2

    .line 103
    .line 104
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditSearch;->m0:Lcom/mycompany/app/view/MyLineView;

    .line 105
    .line 106
    sget v4, Lcom/mycompany/app/main/MainApp;->n1:I

    .line 107
    .line 108
    int-to-float v4, v4

    .line 109
    invoke-virtual {v1, v4, v3}, Lcom/mycompany/app/view/MyLineView;->c(FI)V

    .line 110
    .line 111
    .line 112
    goto :goto_1

    .line 113
    :cond_2
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditSearch;->m0:Lcom/mycompany/app/view/MyLineView;

    .line 114
    .line 115
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyLineView;->setLineColor(I)V

    .line 116
    .line 117
    .line 118
    :goto_1
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditSearch;->m0:Lcom/mycompany/app/view/MyLineView;

    .line 119
    .line 120
    new-instance v3, Lcom/mycompany/app/dialog/DialogEditSearch$3;

    .line 121
    .line 122
    invoke-direct {v3, v0}, Lcom/mycompany/app/dialog/DialogEditSearch$3;-><init>(Lcom/mycompany/app/dialog/DialogEditSearch;)V

    .line 123
    .line 124
    .line 125
    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 126
    .line 127
    .line 128
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditSearch;->f0:Ljava/lang/String;

    .line 129
    .line 130
    iget v3, v0, Lcom/mycompany/app/dialog/DialogEditSearch;->g0:I

    .line 131
    .line 132
    const/16 v4, 0x23

    .line 133
    .line 134
    invoke-virtual {v0, v3, v4, v1}, Lcom/mycompany/app/dialog/DialogEditSearch;->E(IILjava/lang/String;)V

    .line 135
    .line 136
    .line 137
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditSearch;->e0:Ljava/lang/String;

    .line 138
    .line 139
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 140
    .line 141
    .line 142
    move-result v1

    .line 143
    if-nez v1, :cond_3

    .line 144
    .line 145
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditSearch;->n0:Lcom/mycompany/app/view/MyEditText;

    .line 146
    .line 147
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogEditSearch;->e0:Ljava/lang/String;

    .line 148
    .line 149
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 150
    .line 151
    .line 152
    :cond_3
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditSearch;->n0:Lcom/mycompany/app/view/MyEditText;

    .line 153
    .line 154
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyEditText;->setElineColor(I)V

    .line 155
    .line 156
    .line 157
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditSearch;->n0:Lcom/mycompany/app/view/MyEditText;

    .line 158
    .line 159
    const/4 v2, 0x1

    .line 160
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setSelectAllOnFocus(Z)V

    .line 161
    .line 162
    .line 163
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditSearch;->n0:Lcom/mycompany/app/view/MyEditText;

    .line 164
    .line 165
    new-instance v3, Lcom/mycompany/app/dialog/DialogEditSearch$4;

    .line 166
    .line 167
    invoke-direct {v3, v0}, Lcom/mycompany/app/dialog/DialogEditSearch$4;-><init>(Lcom/mycompany/app/dialog/DialogEditSearch;)V

    .line 168
    .line 169
    .line 170
    invoke-virtual {v1, v3}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 171
    .line 172
    .line 173
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditSearch;->f0:Ljava/lang/String;

    .line 174
    .line 175
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 176
    .line 177
    .line 178
    move-result v1

    .line 179
    if-nez v1, :cond_4

    .line 180
    .line 181
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditSearch;->p0:Lcom/mycompany/app/view/MyEditPure;

    .line 182
    .line 183
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogEditSearch;->f0:Ljava/lang/String;

    .line 184
    .line 185
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 186
    .line 187
    .line 188
    :cond_4
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditSearch;->p0:Lcom/mycompany/app/view/MyEditPure;

    .line 189
    .line 190
    const-string v3, "https://..."

    .line 191
    .line 192
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    .line 193
    .line 194
    .line 195
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditSearch;->p0:Lcom/mycompany/app/view/MyEditPure;

    .line 196
    .line 197
    const v3, -0x7e7e7f

    .line 198
    .line 199
    .line 200
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setHintTextColor(I)V

    .line 201
    .line 202
    .line 203
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditSearch;->p0:Lcom/mycompany/app/view/MyEditPure;

    .line 204
    .line 205
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setSelectAllOnFocus(Z)V

    .line 206
    .line 207
    .line 208
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditSearch;->o0:Lcom/mycompany/app/view/MyRoundFrame;

    .line 209
    .line 210
    new-instance v2, Lcom/mycompany/app/dialog/DialogEditSearch$5;

    .line 211
    .line 212
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogEditSearch$5;-><init>(Lcom/mycompany/app/dialog/DialogEditSearch;)V

    .line 213
    .line 214
    .line 215
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 216
    .line 217
    .line 218
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditSearch;->p0:Lcom/mycompany/app/view/MyEditPure;

    .line 219
    .line 220
    new-instance v2, Lcom/mycompany/app/dialog/DialogEditSearch$6;

    .line 221
    .line 222
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogEditSearch$6;-><init>(Lcom/mycompany/app/dialog/DialogEditSearch;)V

    .line 223
    .line 224
    .line 225
    const-wide/16 v3, 0xc8

    .line 226
    .line 227
    invoke-virtual {v1, v2, v3, v4}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 228
    .line 229
    .line 230
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditSearch;->q0:Lcom/mycompany/app/view/MyLineText;

    .line 231
    .line 232
    new-instance v2, Lcom/mycompany/app/dialog/DialogEditSearch$7;

    .line 233
    .line 234
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogEditSearch$7;-><init>(Lcom/mycompany/app/dialog/DialogEditSearch;)V

    .line 235
    .line 236
    .line 237
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 238
    .line 239
    .line 240
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditSearch;->k0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 241
    .line 242
    new-instance v2, Lcom/mycompany/app/dialog/DialogEditSearch$8;

    .line 243
    .line 244
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogEditSearch$8;-><init>(Lcom/mycompany/app/dialog/DialogEditSearch;)V

    .line 245
    .line 246
    .line 247
    invoke-virtual {v0, v1, v2}, Lcom/mycompany/app/view/MyDialogBottom;->g(Landroid/view/View;Lcom/mycompany/app/view/MyDialogBottom$BotViewListener;)V

    .line 248
    .line 249
    .line 250
    :cond_5
    :goto_2
    return-void
.end method
