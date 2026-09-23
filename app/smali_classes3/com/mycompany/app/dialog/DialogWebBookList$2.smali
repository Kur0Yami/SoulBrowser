.class Lcom/mycompany/app/dialog/DialogWebBookList$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogWebBookList;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogWebBookList;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogWebBookList$2;->c:Lcom/mycompany/app/dialog/DialogWebBookList;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogWebBookList$2;->c:Lcom/mycompany/app/dialog/DialogWebBookList;

    .line 2
    .line 3
    iget-boolean v1, v0, Lcom/mycompany/app/dialog/DialogWebBookList;->I:Z

    .line 4
    .line 5
    iget v2, v0, Lcom/mycompany/app/dialog/DialogWebBookList;->S:I

    .line 6
    .line 7
    iget v3, v0, Lcom/mycompany/app/dialog/DialogWebBookList;->T:I

    .line 8
    .line 9
    iget-object v4, v0, Lcom/mycompany/app/dialog/DialogWebBookList;->U:Lcom/mycompany/app/main/MainListView$ListViewHolder;

    .line 10
    .line 11
    const/4 v5, 0x0

    .line 12
    iput-object v5, v0, Lcom/mycompany/app/dialog/DialogWebBookList;->U:Lcom/mycompany/app/main/MainListView$ListViewHolder;

    .line 13
    .line 14
    if-nez v4, :cond_0

    .line 15
    .line 16
    goto/16 :goto_6

    .line 17
    .line 18
    :cond_0
    iget-object v5, v0, Lcom/mycompany/app/dialog/DialogWebBookList;->w:Lcom/mycompany/app/main/MainActivity;

    .line 19
    .line 20
    if-eqz v5, :cond_d

    .line 21
    .line 22
    iget-object v6, v0, Lcom/mycompany/app/dialog/DialogWebBookList;->x:Landroid/content/Context;

    .line 23
    .line 24
    if-nez v6, :cond_1

    .line 25
    .line 26
    goto/16 :goto_6

    .line 27
    .line 28
    :cond_1
    new-instance v7, Lcom/mycompany/app/main/MainListView$ListViewConfig;

    .line 29
    .line 30
    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    .line 31
    .line 32
    .line 33
    const/16 v8, 0x11

    .line 34
    .line 35
    iput v8, v7, Lcom/mycompany/app/main/MainListView$ListViewConfig;->a:I

    .line 36
    .line 37
    const/4 v8, 0x1

    .line 38
    iput-boolean v8, v7, Lcom/mycompany/app/main/MainListView$ListViewConfig;->b:Z

    .line 39
    .line 40
    iput-boolean v8, v7, Lcom/mycompany/app/main/MainListView$ListViewConfig;->c:Z

    .line 41
    .line 42
    iput-boolean v1, v7, Lcom/mycompany/app/main/MainListView$ListViewConfig;->d:Z

    .line 43
    .line 44
    iput-object v4, v7, Lcom/mycompany/app/main/MainListView$ListViewConfig;->e:Lcom/mycompany/app/main/MainListView$ListViewHolder;

    .line 45
    .line 46
    iput v2, v7, Lcom/mycompany/app/main/MainListView$ListViewConfig;->f:I

    .line 47
    .line 48
    sget v2, Lcom/mycompany/app/main/MainApp;->c1:I

    .line 49
    .line 50
    iput v2, v7, Lcom/mycompany/app/main/MainListView$ListViewConfig;->g:I

    .line 51
    .line 52
    iput-boolean v8, v7, Lcom/mycompany/app/main/MainListView$ListViewConfig;->h:Z

    .line 53
    .line 54
    iput-boolean v8, v7, Lcom/mycompany/app/main/MainListView$ListViewConfig;->i:Z

    .line 55
    .line 56
    xor-int/lit8 v2, v1, 0x1

    .line 57
    .line 58
    iput-boolean v2, v7, Lcom/mycompany/app/main/MainListView$ListViewConfig;->j:Z

    .line 59
    .line 60
    iput-boolean v2, v7, Lcom/mycompany/app/main/MainListView$ListViewConfig;->k:Z

    .line 61
    .line 62
    new-instance v2, Lcom/mycompany/app/main/MainListView2;

    .line 63
    .line 64
    new-instance v4, Lcom/mycompany/app/dialog/DialogWebBookList$3;

    .line 65
    .line 66
    invoke-direct {v4, v0}, Lcom/mycompany/app/dialog/DialogWebBookList$3;-><init>(Lcom/mycompany/app/dialog/DialogWebBookList;)V

    .line 67
    .line 68
    .line 69
    invoke-direct {v2, v5, v6, v7, v4}, Lcom/mycompany/app/main/MainListView2;-><init>(Lcom/mycompany/app/main/MainActivity;Landroid/content/Context;Lcom/mycompany/app/main/MainListView$ListViewConfig;Lcom/mycompany/app/main/MainListListener;)V

    .line 70
    .line 71
    .line 72
    iput-object v2, v0, Lcom/mycompany/app/dialog/DialogWebBookList;->B:Lcom/mycompany/app/main/MainListView2;

    .line 73
    .line 74
    iput-object v0, v2, Lcom/mycompany/app/main/MainListView2;->y0:Lcom/mycompany/app/view/MyDialogNormal;

    .line 75
    .line 76
    iput-boolean v8, v2, Lcom/mycompany/app/main/MainListView2;->a0:Z

    .line 77
    .line 78
    const/high16 v2, -0x1000000

    .line 79
    .line 80
    const v4, -0x50506

    .line 81
    .line 82
    .line 83
    if-eqz v1, :cond_6

    .line 84
    .line 85
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogWebBookList;->D:Lcom/mycompany/app/view/MyLineText;

    .line 86
    .line 87
    if-nez v1, :cond_2

    .line 88
    .line 89
    goto/16 :goto_6

    .line 90
    .line 91
    :cond_2
    sget-boolean v5, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 92
    .line 93
    if-eqz v5, :cond_3

    .line 94
    .line 95
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->selector_normal_dark:I

    .line 96
    .line 97
    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/AppCompatTextView;->setBackgroundResource(I)V

    .line 98
    .line 99
    .line 100
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogWebBookList;->E:Landroidx/appcompat/widget/AppCompatTextView;

    .line 101
    .line 102
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 103
    .line 104
    .line 105
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogWebBookList;->E:Landroidx/appcompat/widget/AppCompatTextView;

    .line 106
    .line 107
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->selector_normal_dark:I

    .line 108
    .line 109
    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/AppCompatTextView;->setBackgroundResource(I)V

    .line 110
    .line 111
    .line 112
    goto :goto_0

    .line 113
    :cond_3
    sget v5, Lnet/kaki87/soul2/testing/R$drawable;->selector_normal_gray:I

    .line 114
    .line 115
    invoke-virtual {v1, v5}, Landroidx/appcompat/widget/AppCompatTextView;->setBackgroundResource(I)V

    .line 116
    .line 117
    .line 118
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogWebBookList;->E:Landroidx/appcompat/widget/AppCompatTextView;

    .line 119
    .line 120
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 121
    .line 122
    .line 123
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogWebBookList;->E:Landroidx/appcompat/widget/AppCompatTextView;

    .line 124
    .line 125
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->selector_normal_gray:I

    .line 126
    .line 127
    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/AppCompatTextView;->setBackgroundResource(I)V

    .line 128
    .line 129
    .line 130
    :goto_0
    iget v1, v0, Lcom/mycompany/app/dialog/DialogWebBookList;->H:I

    .line 131
    .line 132
    const/4 v2, 0x3

    .line 133
    if-ne v1, v2, :cond_4

    .line 134
    .line 135
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogWebBookList;->G:Ljava/lang/String;

    .line 136
    .line 137
    invoke-virtual {v0, v1}, Lcom/mycompany/app/dialog/DialogWebBookList;->x(Ljava/lang/String;)V

    .line 138
    .line 139
    .line 140
    goto :goto_2

    .line 141
    :cond_4
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogWebBookList;->D:Lcom/mycompany/app/view/MyLineText;

    .line 142
    .line 143
    sget-boolean v2, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 144
    .line 145
    if-eqz v2, :cond_5

    .line 146
    .line 147
    goto :goto_1

    .line 148
    :cond_5
    const v4, -0xe19938

    .line 149
    .line 150
    .line 151
    :goto_1
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 152
    .line 153
    .line 154
    :goto_2
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogWebBookList;->D:Lcom/mycompany/app/view/MyLineText;

    .line 155
    .line 156
    const/4 v2, 0x0

    .line 157
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 158
    .line 159
    .line 160
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogWebBookList;->D:Lcom/mycompany/app/view/MyLineText;

    .line 161
    .line 162
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(I)V

    .line 163
    .line 164
    .line 165
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogWebBookList;->D:Lcom/mycompany/app/view/MyLineText;

    .line 166
    .line 167
    new-instance v2, Lcom/mycompany/app/dialog/DialogWebBookList$4;

    .line 168
    .line 169
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogWebBookList$4;-><init>(Lcom/mycompany/app/dialog/DialogWebBookList;)V

    .line 170
    .line 171
    .line 172
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 173
    .line 174
    .line 175
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogWebBookList;->E:Landroidx/appcompat/widget/AppCompatTextView;

    .line 176
    .line 177
    new-instance v2, Lcom/mycompany/app/dialog/DialogWebBookList$5;

    .line 178
    .line 179
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogWebBookList$5;-><init>(Lcom/mycompany/app/dialog/DialogWebBookList;)V

    .line 180
    .line 181
    .line 182
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 183
    .line 184
    .line 185
    goto :goto_5

    .line 186
    :cond_6
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogWebBookList;->E:Landroidx/appcompat/widget/AppCompatTextView;

    .line 187
    .line 188
    if-nez v1, :cond_7

    .line 189
    .line 190
    goto :goto_6

    .line 191
    :cond_7
    sget-boolean v3, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 192
    .line 193
    if-eqz v3, :cond_8

    .line 194
    .line 195
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 196
    .line 197
    .line 198
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogWebBookList;->E:Landroidx/appcompat/widget/AppCompatTextView;

    .line 199
    .line 200
    sget v3, Lnet/kaki87/soul2/testing/R$drawable;->selector_normal_dark:I

    .line 201
    .line 202
    invoke-virtual {v1, v3}, Landroidx/appcompat/widget/AppCompatTextView;->setBackgroundResource(I)V

    .line 203
    .line 204
    .line 205
    goto :goto_3

    .line 206
    :cond_8
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 207
    .line 208
    .line 209
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogWebBookList;->E:Landroidx/appcompat/widget/AppCompatTextView;

    .line 210
    .line 211
    sget v3, Lnet/kaki87/soul2/testing/R$drawable;->selector_normal_gray:I

    .line 212
    .line 213
    invoke-virtual {v1, v3}, Landroidx/appcompat/widget/AppCompatTextView;->setBackgroundResource(I)V

    .line 214
    .line 215
    .line 216
    :goto_3
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogWebBookList;->E:Landroidx/appcompat/widget/AppCompatTextView;

    .line 217
    .line 218
    new-instance v3, Lcom/mycompany/app/dialog/DialogWebBookList$6;

    .line 219
    .line 220
    invoke-direct {v3, v0}, Lcom/mycompany/app/dialog/DialogWebBookList$6;-><init>(Lcom/mycompany/app/dialog/DialogWebBookList;)V

    .line 221
    .line 222
    .line 223
    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 224
    .line 225
    .line 226
    sget-boolean v1, Lcom/mycompany/app/pref/PrefSync;->k:Z

    .line 227
    .line 228
    if-eqz v1, :cond_b

    .line 229
    .line 230
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogWebBookList;->C:Lcom/mycompany/app/view/MyButtonText;

    .line 231
    .line 232
    if-nez v1, :cond_9

    .line 233
    .line 234
    goto :goto_6

    .line 235
    :cond_9
    sget-boolean v3, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 236
    .line 237
    if-eqz v3, :cond_a

    .line 238
    .line 239
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 240
    .line 241
    .line 242
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogWebBookList;->C:Lcom/mycompany/app/view/MyButtonText;

    .line 243
    .line 244
    const v3, -0xd8d8d9

    .line 245
    .line 246
    .line 247
    invoke-virtual {v1, v2, v3}, Lcom/mycompany/app/view/MyButtonText;->u(II)V

    .line 248
    .line 249
    .line 250
    goto :goto_4

    .line 251
    :cond_a
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 252
    .line 253
    .line 254
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogWebBookList;->C:Lcom/mycompany/app/view/MyButtonText;

    .line 255
    .line 256
    const v2, -0x70708

    .line 257
    .line 258
    .line 259
    const/high16 v3, 0x21000000

    .line 260
    .line 261
    invoke-virtual {v1, v2, v3}, Lcom/mycompany/app/view/MyButtonText;->u(II)V

    .line 262
    .line 263
    .line 264
    :goto_4
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogWebBookList;->C:Lcom/mycompany/app/view/MyButtonText;

    .line 265
    .line 266
    new-instance v2, Lcom/mycompany/app/dialog/DialogWebBookList$7;

    .line 267
    .line 268
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogWebBookList$7;-><init>(Lcom/mycompany/app/dialog/DialogWebBookList;)V

    .line 269
    .line 270
    .line 271
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 272
    .line 273
    .line 274
    :cond_b
    :goto_5
    iget-object v1, v0, Lcom/mycompany/app/view/MyDialogNormal;->i:Landroid/os/Handler;

    .line 275
    .line 276
    if-nez v1, :cond_c

    .line 277
    .line 278
    goto :goto_6

    .line 279
    :cond_c
    new-instance v2, Lcom/mycompany/app/dialog/DialogWebBookList$8;

    .line 280
    .line 281
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogWebBookList$8;-><init>(Lcom/mycompany/app/dialog/DialogWebBookList;)V

    .line 282
    .line 283
    .line 284
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 285
    .line 286
    .line 287
    :cond_d
    :goto_6
    return-void
.end method
