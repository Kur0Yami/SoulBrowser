.class Lcom/mycompany/app/dialog/DialogNewsLocale$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogNewsLocale;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogNewsLocale;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogNewsLocale$2;->c:Lcom/mycompany/app/dialog/DialogNewsLocale;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogNewsLocale$2;->c:Lcom/mycompany/app/dialog/DialogNewsLocale;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogNewsLocale;->h0:Lcom/mycompany/app/view/MyDialogRelative;

    .line 4
    .line 5
    if-eqz v1, :cond_4

    .line 6
    .line 7
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogNewsLocale;->b0:Landroid/content/Context;

    .line 8
    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    goto/16 :goto_1

    .line 12
    .line 13
    :cond_0
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogNewsLocale;->p0:Lcom/mycompany/app/view/MyRecyclerView;

    .line 14
    .line 15
    invoke-static {v1}, Lcom/mycompany/app/main/MainUtil;->r7(Landroid/view/View;)V

    .line 16
    .line 17
    .line 18
    sget-boolean v1, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 19
    .line 20
    const/4 v2, -0x1

    .line 21
    const v3, -0xdededf

    .line 22
    .line 23
    .line 24
    const/high16 v4, -0x1000000

    .line 25
    .line 26
    if-eqz v1, :cond_1

    .line 27
    .line 28
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogNewsLocale;->h0:Lcom/mycompany/app/view/MyDialogRelative;

    .line 29
    .line 30
    invoke-virtual {v1, v4}, Landroid/view/View;->setBackgroundColor(I)V

    .line 31
    .line 32
    .line 33
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogNewsLocale;->i0:Lcom/mycompany/app/view/MyEditPure;

    .line 34
    .line 35
    const v4, -0x50506

    .line 36
    .line 37
    .line 38
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 39
    .line 40
    .line 41
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogNewsLocale;->j0:Lcom/mycompany/app/view/MyButtonImage;

    .line 42
    .line 43
    sget v5, Lnet/kaki87/soul2/testing/R$drawable;->outline_cancel_dark_18:I

    .line 44
    .line 45
    invoke-virtual {v1, v5}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 46
    .line 47
    .line 48
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogNewsLocale;->j0:Lcom/mycompany/app/view/MyButtonImage;

    .line 49
    .line 50
    const v5, -0xc0c0c1

    .line 51
    .line 52
    .line 53
    invoke-virtual {v1, v5}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 54
    .line 55
    .line 56
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogNewsLocale;->l0:Lcom/mycompany/app/view/MyButtonImage;

    .line 57
    .line 58
    sget v6, Lnet/kaki87/soul2/testing/R$drawable;->outline_delete_dark_20:I

    .line 59
    .line 60
    invoke-virtual {v1, v6}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 61
    .line 62
    .line 63
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogNewsLocale;->l0:Lcom/mycompany/app/view/MyButtonImage;

    .line 64
    .line 65
    invoke-virtual {v1, v5}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 66
    .line 67
    .line 68
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogNewsLocale;->m0:Lcom/mycompany/app/view/MyButtonImage;

    .line 69
    .line 70
    invoke-virtual {v1, v5}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 71
    .line 72
    .line 73
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogNewsLocale;->o0:Landroid/view/View;

    .line 74
    .line 75
    sget v5, Lnet/kaki87/soul2/testing/R$drawable;->trans_logo_short_back_dark:I

    .line 76
    .line 77
    invoke-virtual {v1, v5}, Landroid/view/View;->setBackgroundResource(I)V

    .line 78
    .line 79
    .line 80
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogNewsLocale;->p0:Lcom/mycompany/app/view/MyRecyclerView;

    .line 81
    .line 82
    invoke-virtual {v1, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 83
    .line 84
    .line 85
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogNewsLocale;->q0:Lcom/mycompany/app/view/MyLineText;

    .line 86
    .line 87
    sget v5, Lnet/kaki87/soul2/testing/R$drawable;->selector_list_back_dark:I

    .line 88
    .line 89
    invoke-virtual {v1, v5}, Landroidx/appcompat/widget/AppCompatTextView;->setBackgroundResource(I)V

    .line 90
    .line 91
    .line 92
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogNewsLocale;->q0:Lcom/mycompany/app/view/MyLineText;

    .line 93
    .line 94
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 95
    .line 96
    .line 97
    goto :goto_0

    .line 98
    :cond_1
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogNewsLocale;->h0:Lcom/mycompany/app/view/MyDialogRelative;

    .line 99
    .line 100
    const v5, -0x70708

    .line 101
    .line 102
    .line 103
    invoke-virtual {v1, v5}, Landroid/view/View;->setBackgroundColor(I)V

    .line 104
    .line 105
    .line 106
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogNewsLocale;->i0:Lcom/mycompany/app/view/MyEditPure;

    .line 107
    .line 108
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 109
    .line 110
    .line 111
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogNewsLocale;->j0:Lcom/mycompany/app/view/MyButtonImage;

    .line 112
    .line 113
    sget v5, Lnet/kaki87/soul2/testing/R$drawable;->outline_cancel_black_18:I

    .line 114
    .line 115
    invoke-virtual {v1, v5}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 116
    .line 117
    .line 118
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogNewsLocale;->j0:Lcom/mycompany/app/view/MyButtonImage;

    .line 119
    .line 120
    const v5, -0x1f1f20

    .line 121
    .line 122
    .line 123
    invoke-virtual {v1, v5}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 124
    .line 125
    .line 126
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogNewsLocale;->l0:Lcom/mycompany/app/view/MyButtonImage;

    .line 127
    .line 128
    sget v6, Lnet/kaki87/soul2/testing/R$drawable;->outline_delete_black_20:I

    .line 129
    .line 130
    invoke-virtual {v1, v6}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 131
    .line 132
    .line 133
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogNewsLocale;->l0:Lcom/mycompany/app/view/MyButtonImage;

    .line 134
    .line 135
    invoke-virtual {v1, v5}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 136
    .line 137
    .line 138
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogNewsLocale;->m0:Lcom/mycompany/app/view/MyButtonImage;

    .line 139
    .line 140
    invoke-virtual {v1, v5}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 141
    .line 142
    .line 143
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogNewsLocale;->o0:Landroid/view/View;

    .line 144
    .line 145
    sget v5, Lnet/kaki87/soul2/testing/R$drawable;->trans_logo_short_back_color:I

    .line 146
    .line 147
    invoke-virtual {v1, v5}, Landroid/view/View;->setBackgroundResource(I)V

    .line 148
    .line 149
    .line 150
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogNewsLocale;->p0:Lcom/mycompany/app/view/MyRecyclerView;

    .line 151
    .line 152
    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 153
    .line 154
    .line 155
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogNewsLocale;->q0:Lcom/mycompany/app/view/MyLineText;

    .line 156
    .line 157
    sget v5, Lnet/kaki87/soul2/testing/R$drawable;->selector_list_back:I

    .line 158
    .line 159
    invoke-virtual {v1, v5}, Landroidx/appcompat/widget/AppCompatTextView;->setBackgroundResource(I)V

    .line 160
    .line 161
    .line 162
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogNewsLocale;->q0:Lcom/mycompany/app/view/MyLineText;

    .line 163
    .line 164
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 165
    .line 166
    .line 167
    :goto_0
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogNewsLocale;->k0:Lcom/mycompany/app/view/MyRoundView;

    .line 168
    .line 169
    sget-boolean v4, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 170
    .line 171
    if-eqz v4, :cond_2

    .line 172
    .line 173
    move v2, v3

    .line 174
    :cond_2
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyRoundView;->setBackColor(I)V

    .line 175
    .line 176
    .line 177
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogNewsLocale;->n0:Lcom/mycompany/app/view/MyCoverView;

    .line 178
    .line 179
    sget v2, Lcom/mycompany/app/main/MainApp;->z1:I

    .line 180
    .line 181
    sget v3, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 182
    .line 183
    add-int/2addr v2, v3

    .line 184
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyCoverView;->setForeSize(I)V

    .line 185
    .line 186
    .line 187
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogNewsLocale;->J()V

    .line 188
    .line 189
    .line 190
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogNewsLocale;->j0:Lcom/mycompany/app/view/MyButtonImage;

    .line 191
    .line 192
    new-instance v2, Lcom/mycompany/app/dialog/DialogNewsLocale$3;

    .line 193
    .line 194
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogNewsLocale$3;-><init>(Lcom/mycompany/app/dialog/DialogNewsLocale;)V

    .line 195
    .line 196
    .line 197
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 198
    .line 199
    .line 200
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogNewsLocale;->i0:Lcom/mycompany/app/view/MyEditPure;

    .line 201
    .line 202
    new-instance v2, Lcom/mycompany/app/dialog/DialogNewsLocale$4;

    .line 203
    .line 204
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogNewsLocale$4;-><init>(Lcom/mycompany/app/dialog/DialogNewsLocale;)V

    .line 205
    .line 206
    .line 207
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 208
    .line 209
    .line 210
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogNewsLocale;->l0:Lcom/mycompany/app/view/MyButtonImage;

    .line 211
    .line 212
    new-instance v2, Lcom/mycompany/app/dialog/DialogNewsLocale$5;

    .line 213
    .line 214
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogNewsLocale$5;-><init>(Lcom/mycompany/app/dialog/DialogNewsLocale;)V

    .line 215
    .line 216
    .line 217
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 218
    .line 219
    .line 220
    sget-boolean v1, Lcom/mycompany/app/pref/PrefZtwo;->X:Z

    .line 221
    .line 222
    const/4 v2, 0x1

    .line 223
    if-eqz v1, :cond_3

    .line 224
    .line 225
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogNewsLocale;->m0:Lcom/mycompany/app/view/MyButtonImage;

    .line 226
    .line 227
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setNoti(Z)V

    .line 228
    .line 229
    .line 230
    :cond_3
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogNewsLocale;->m0:Lcom/mycompany/app/view/MyButtonImage;

    .line 231
    .line 232
    new-instance v3, Lcom/mycompany/app/dialog/DialogNewsLocale$6;

    .line 233
    .line 234
    invoke-direct {v3, v0}, Lcom/mycompany/app/dialog/DialogNewsLocale$6;-><init>(Lcom/mycompany/app/dialog/DialogNewsLocale;)V

    .line 235
    .line 236
    .line 237
    invoke-virtual {v1, v3}, Lcom/mycompany/app/view/MyButtonImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 238
    .line 239
    .line 240
    new-instance v1, Lcom/mycompany/app/view/MyManagerLinear;

    .line 241
    .line 242
    invoke-direct {v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(I)V

    .line 243
    .line 244
    .line 245
    iput-object v1, v0, Lcom/mycompany/app/dialog/DialogNewsLocale;->v0:Lcom/mycompany/app/view/MyManagerLinear;

    .line 246
    .line 247
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogNewsLocale;->p0:Lcom/mycompany/app/view/MyRecyclerView;

    .line 248
    .line 249
    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 250
    .line 251
    .line 252
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogNewsLocale;->p0:Lcom/mycompany/app/view/MyRecyclerView;

    .line 253
    .line 254
    new-instance v2, Lcom/mycompany/app/dialog/DialogNewsLocale$7;

    .line 255
    .line 256
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogNewsLocale$7;-><init>(Lcom/mycompany/app/dialog/DialogNewsLocale;)V

    .line 257
    .line 258
    .line 259
    invoke-virtual {v0, v1, v2}, Lcom/mycompany/app/view/MyDialogBottom;->t(Lcom/mycompany/app/view/MyRecyclerView;Lcom/mycompany/app/view/MyDialogBottom$BotListListener;)V

    .line 260
    .line 261
    .line 262
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogNewsLocale;->q0:Lcom/mycompany/app/view/MyLineText;

    .line 263
    .line 264
    new-instance v2, Lcom/mycompany/app/dialog/DialogNewsLocale$8;

    .line 265
    .line 266
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogNewsLocale$8;-><init>(Lcom/mycompany/app/dialog/DialogNewsLocale;)V

    .line 267
    .line 268
    .line 269
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 270
    .line 271
    .line 272
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogNewsLocale;->h0:Lcom/mycompany/app/view/MyDialogRelative;

    .line 273
    .line 274
    new-instance v2, Lcom/mycompany/app/dialog/DialogNewsLocale$9;

    .line 275
    .line 276
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogNewsLocale$9;-><init>(Lcom/mycompany/app/dialog/DialogNewsLocale;)V

    .line 277
    .line 278
    .line 279
    invoke-virtual {v0, v1, v2}, Lcom/mycompany/app/view/MyDialogBottom;->f(Landroid/view/View;Lcom/mycompany/app/view/MyDialogBottom$BotViewListener;)V

    .line 280
    .line 281
    .line 282
    :cond_4
    :goto_1
    return-void
.end method
