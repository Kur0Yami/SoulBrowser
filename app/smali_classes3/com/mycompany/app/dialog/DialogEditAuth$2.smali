.class Lcom/mycompany/app/dialog/DialogEditAuth$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogEditAuth;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogEditAuth;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogEditAuth$2;->c:Lcom/mycompany/app/dialog/DialogEditAuth;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogEditAuth$2;->c:Lcom/mycompany/app/dialog/DialogEditAuth;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditAuth;->c0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 4
    .line 5
    if-eqz v1, :cond_2

    .line 6
    .line 7
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditAuth;->a0:Landroid/content/Context;

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
    const v2, -0xe19938

    .line 16
    .line 17
    .line 18
    if-eqz v1, :cond_1

    .line 19
    .line 20
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditAuth;->d0:Landroidx/appcompat/widget/AppCompatTextView;

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
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditAuth;->e0:Lcom/mycompany/app/view/MyEditText;

    .line 29
    .line 30
    const v4, -0x50506

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 34
    .line 35
    .line 36
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditAuth;->f0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 37
    .line 38
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 39
    .line 40
    .line 41
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditAuth;->g0:Lcom/mycompany/app/view/MyEditText;

    .line 42
    .line 43
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 44
    .line 45
    .line 46
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditAuth;->h0:Lcom/mycompany/app/view/MyButtonCheck;

    .line 47
    .line 48
    sget v3, Lnet/kaki87/soul2/testing/R$drawable;->outline_visibility_off_dark_24:I

    .line 49
    .line 50
    sget v5, Lnet/kaki87/soul2/testing/R$drawable;->outline_visibility_dark_24:I

    .line 51
    .line 52
    invoke-virtual {v1, v3, v5}, Lcom/mycompany/app/view/MyButtonCheck;->p(II)V

    .line 53
    .line 54
    .line 55
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditAuth;->i0:Lcom/mycompany/app/view/MyLineText;

    .line 56
    .line 57
    sget v3, Lnet/kaki87/soul2/testing/R$drawable;->selector_normal_dark:I

    .line 58
    .line 59
    invoke-virtual {v1, v3}, Landroidx/appcompat/widget/AppCompatTextView;->setBackgroundResource(I)V

    .line 60
    .line 61
    .line 62
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditAuth;->i0:Lcom/mycompany/app/view/MyLineText;

    .line 63
    .line 64
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 65
    .line 66
    .line 67
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditAuth;->h0:Lcom/mycompany/app/view/MyButtonCheck;

    .line 68
    .line 69
    const v3, -0xc0c0c1

    .line 70
    .line 71
    .line 72
    invoke-virtual {v1, v3}, Lcom/mycompany/app/view/MyButtonCheck;->setBgPreColor(I)V

    .line 73
    .line 74
    .line 75
    goto :goto_0

    .line 76
    :cond_1
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditAuth;->d0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 77
    .line 78
    const v3, -0x9e9e9f

    .line 79
    .line 80
    .line 81
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 82
    .line 83
    .line 84
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditAuth;->e0:Lcom/mycompany/app/view/MyEditText;

    .line 85
    .line 86
    const/high16 v4, -0x1000000

    .line 87
    .line 88
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 89
    .line 90
    .line 91
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditAuth;->f0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 92
    .line 93
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 94
    .line 95
    .line 96
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditAuth;->g0:Lcom/mycompany/app/view/MyEditText;

    .line 97
    .line 98
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 99
    .line 100
    .line 101
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditAuth;->h0:Lcom/mycompany/app/view/MyButtonCheck;

    .line 102
    .line 103
    sget v3, Lnet/kaki87/soul2/testing/R$drawable;->outline_visibility_off_black_24:I

    .line 104
    .line 105
    sget v4, Lnet/kaki87/soul2/testing/R$drawable;->outline_visibility_black_24:I

    .line 106
    .line 107
    invoke-virtual {v1, v3, v4}, Lcom/mycompany/app/view/MyButtonCheck;->p(II)V

    .line 108
    .line 109
    .line 110
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditAuth;->i0:Lcom/mycompany/app/view/MyLineText;

    .line 111
    .line 112
    sget v3, Lnet/kaki87/soul2/testing/R$drawable;->selector_normal:I

    .line 113
    .line 114
    invoke-virtual {v1, v3}, Landroidx/appcompat/widget/AppCompatTextView;->setBackgroundResource(I)V

    .line 115
    .line 116
    .line 117
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditAuth;->i0:Lcom/mycompany/app/view/MyLineText;

    .line 118
    .line 119
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 120
    .line 121
    .line 122
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditAuth;->h0:Lcom/mycompany/app/view/MyButtonCheck;

    .line 123
    .line 124
    const v3, -0x1f1f20

    .line 125
    .line 126
    .line 127
    invoke-virtual {v1, v3}, Lcom/mycompany/app/view/MyButtonCheck;->setBgPreColor(I)V

    .line 128
    .line 129
    .line 130
    :goto_0
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditAuth;->e0:Lcom/mycompany/app/view/MyEditText;

    .line 131
    .line 132
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyEditText;->setElineColor(I)V

    .line 133
    .line 134
    .line 135
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditAuth;->g0:Lcom/mycompany/app/view/MyEditText;

    .line 136
    .line 137
    const v2, -0x252526

    .line 138
    .line 139
    .line 140
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyEditText;->setElineColor(I)V

    .line 141
    .line 142
    .line 143
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditAuth;->e0:Lcom/mycompany/app/view/MyEditText;

    .line 144
    .line 145
    const/4 v2, 0x1

    .line 146
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setSelectAllOnFocus(Z)V

    .line 147
    .line 148
    .line 149
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditAuth;->e0:Lcom/mycompany/app/view/MyEditText;

    .line 150
    .line 151
    new-instance v3, Lcom/mycompany/app/dialog/DialogEditAuth$3;

    .line 152
    .line 153
    invoke-direct {v3, v0}, Lcom/mycompany/app/dialog/DialogEditAuth$3;-><init>(Lcom/mycompany/app/dialog/DialogEditAuth;)V

    .line 154
    .line 155
    .line 156
    invoke-virtual {v1, v3}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 157
    .line 158
    .line 159
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditAuth;->e0:Lcom/mycompany/app/view/MyEditText;

    .line 160
    .line 161
    new-instance v3, Lcom/mycompany/app/dialog/DialogEditAuth$4;

    .line 162
    .line 163
    invoke-direct {v3, v0}, Lcom/mycompany/app/dialog/DialogEditAuth$4;-><init>(Lcom/mycompany/app/dialog/DialogEditAuth;)V

    .line 164
    .line 165
    .line 166
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 167
    .line 168
    .line 169
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditAuth;->g0:Lcom/mycompany/app/view/MyEditText;

    .line 170
    .line 171
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setSelectAllOnFocus(Z)V

    .line 172
    .line 173
    .line 174
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditAuth;->g0:Lcom/mycompany/app/view/MyEditText;

    .line 175
    .line 176
    new-instance v2, Lcom/mycompany/app/dialog/DialogEditAuth$5;

    .line 177
    .line 178
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogEditAuth$5;-><init>(Lcom/mycompany/app/dialog/DialogEditAuth;)V

    .line 179
    .line 180
    .line 181
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 182
    .line 183
    .line 184
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditAuth;->g0:Lcom/mycompany/app/view/MyEditText;

    .line 185
    .line 186
    new-instance v2, Lcom/mycompany/app/dialog/DialogEditAuth$6;

    .line 187
    .line 188
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogEditAuth$6;-><init>(Lcom/mycompany/app/dialog/DialogEditAuth;)V

    .line 189
    .line 190
    .line 191
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 192
    .line 193
    .line 194
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditAuth;->g0:Lcom/mycompany/app/view/MyEditText;

    .line 195
    .line 196
    const/16 v2, 0x81

    .line 197
    .line 198
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setInputType(I)V

    .line 199
    .line 200
    .line 201
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditAuth;->g0:Lcom/mycompany/app/view/MyEditText;

    .line 202
    .line 203
    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    .line 204
    .line 205
    .line 206
    move-result-object v2

    .line 207
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 208
    .line 209
    .line 210
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditAuth;->h0:Lcom/mycompany/app/view/MyButtonCheck;

    .line 211
    .line 212
    new-instance v2, Lcom/mycompany/app/dialog/DialogEditAuth$7;

    .line 213
    .line 214
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogEditAuth$7;-><init>(Lcom/mycompany/app/dialog/DialogEditAuth;)V

    .line 215
    .line 216
    .line 217
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonCheck;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 218
    .line 219
    .line 220
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditAuth;->i0:Lcom/mycompany/app/view/MyLineText;

    .line 221
    .line 222
    new-instance v2, Lcom/mycompany/app/dialog/DialogEditAuth$8;

    .line 223
    .line 224
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogEditAuth$8;-><init>(Lcom/mycompany/app/dialog/DialogEditAuth;)V

    .line 225
    .line 226
    .line 227
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 228
    .line 229
    .line 230
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditAuth;->c0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 231
    .line 232
    new-instance v2, Lcom/mycompany/app/dialog/DialogEditAuth$9;

    .line 233
    .line 234
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogEditAuth$9;-><init>(Lcom/mycompany/app/dialog/DialogEditAuth;)V

    .line 235
    .line 236
    .line 237
    invoke-virtual {v0, v1, v2}, Lcom/mycompany/app/view/MyDialogBottom;->g(Landroid/view/View;Lcom/mycompany/app/view/MyDialogBottom$BotViewListener;)V

    .line 238
    .line 239
    .line 240
    :cond_2
    :goto_1
    return-void
.end method
