.class Lcom/mycompany/app/dialog/DialogEditArea$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogEditArea;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogEditArea;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogEditArea$2;->c:Lcom/mycompany/app/dialog/DialogEditArea;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogEditArea$2;->c:Lcom/mycompany/app/dialog/DialogEditArea;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditArea;->d0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 4
    .line 5
    if-eqz v1, :cond_4

    .line 6
    .line 7
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditArea;->b0:Landroid/content/Context;

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
    const/high16 v2, -0x1000000

    .line 16
    .line 17
    if-eqz v1, :cond_1

    .line 18
    .line 19
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditArea;->e0:Lcom/mycompany/app/view/MyButtonImage;

    .line 20
    .line 21
    sget v3, Lnet/kaki87/soul2/testing/R$drawable;->outline_help_dark_24:I

    .line 22
    .line 23
    invoke-virtual {v1, v3}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 24
    .line 25
    .line 26
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditArea;->f0:Lcom/mycompany/app/view/MyButtonImage;

    .line 27
    .line 28
    sget v3, Lnet/kaki87/soul2/testing/R$drawable;->outline_replay_dark_20:I

    .line 29
    .line 30
    invoke-virtual {v1, v3}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 31
    .line 32
    .line 33
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditArea;->e0:Lcom/mycompany/app/view/MyButtonImage;

    .line 34
    .line 35
    const v3, -0xc0c0c1

    .line 36
    .line 37
    .line 38
    invoke-virtual {v1, v3}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 39
    .line 40
    .line 41
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditArea;->f0:Lcom/mycompany/app/view/MyButtonImage;

    .line 42
    .line 43
    invoke-virtual {v1, v3}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 44
    .line 45
    .line 46
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditArea;->g0:Lcom/mycompany/app/view/MyLineText;

    .line 47
    .line 48
    const v3, -0x50506

    .line 49
    .line 50
    .line 51
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 52
    .line 53
    .line 54
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditArea;->h0:Lcom/mycompany/app/view/MyRecyclerView;

    .line 55
    .line 56
    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 57
    .line 58
    .line 59
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditArea;->j0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 60
    .line 61
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->selector_normal_dark:I

    .line 62
    .line 63
    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/AppCompatTextView;->setBackgroundResource(I)V

    .line 64
    .line 65
    .line 66
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditArea;->j0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 67
    .line 68
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 69
    .line 70
    .line 71
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditArea;->k0:Lcom/mycompany/app/view/MyLineText;

    .line 72
    .line 73
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->selector_normal_dark:I

    .line 74
    .line 75
    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/AppCompatTextView;->setBackgroundResource(I)V

    .line 76
    .line 77
    .line 78
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditArea;->k0:Lcom/mycompany/app/view/MyLineText;

    .line 79
    .line 80
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 81
    .line 82
    .line 83
    goto :goto_0

    .line 84
    :cond_1
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditArea;->e0:Lcom/mycompany/app/view/MyButtonImage;

    .line 85
    .line 86
    sget v3, Lnet/kaki87/soul2/testing/R$drawable;->outline_help_black_24:I

    .line 87
    .line 88
    invoke-virtual {v1, v3}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 89
    .line 90
    .line 91
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditArea;->f0:Lcom/mycompany/app/view/MyButtonImage;

    .line 92
    .line 93
    sget v3, Lnet/kaki87/soul2/testing/R$drawable;->outline_replay_black_20:I

    .line 94
    .line 95
    invoke-virtual {v1, v3}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 96
    .line 97
    .line 98
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditArea;->e0:Lcom/mycompany/app/view/MyButtonImage;

    .line 99
    .line 100
    const/high16 v3, 0x21000000

    .line 101
    .line 102
    invoke-virtual {v1, v3}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 103
    .line 104
    .line 105
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditArea;->f0:Lcom/mycompany/app/view/MyButtonImage;

    .line 106
    .line 107
    invoke-virtual {v1, v3}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 108
    .line 109
    .line 110
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditArea;->g0:Lcom/mycompany/app/view/MyLineText;

    .line 111
    .line 112
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 113
    .line 114
    .line 115
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditArea;->h0:Lcom/mycompany/app/view/MyRecyclerView;

    .line 116
    .line 117
    const v3, -0x70708

    .line 118
    .line 119
    .line 120
    invoke-virtual {v1, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 121
    .line 122
    .line 123
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditArea;->j0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 124
    .line 125
    sget v3, Lnet/kaki87/soul2/testing/R$drawable;->selector_normal:I

    .line 126
    .line 127
    invoke-virtual {v1, v3}, Landroidx/appcompat/widget/AppCompatTextView;->setBackgroundResource(I)V

    .line 128
    .line 129
    .line 130
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditArea;->j0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 131
    .line 132
    const v3, -0xe19938

    .line 133
    .line 134
    .line 135
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 136
    .line 137
    .line 138
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditArea;->k0:Lcom/mycompany/app/view/MyLineText;

    .line 139
    .line 140
    sget v3, Lnet/kaki87/soul2/testing/R$drawable;->selector_normal:I

    .line 141
    .line 142
    invoke-virtual {v1, v3}, Landroidx/appcompat/widget/AppCompatTextView;->setBackgroundResource(I)V

    .line 143
    .line 144
    .line 145
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditArea;->k0:Lcom/mycompany/app/view/MyLineText;

    .line 146
    .line 147
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 148
    .line 149
    .line 150
    :goto_0
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditArea;->g0:Lcom/mycompany/app/view/MyLineText;

    .line 151
    .line 152
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogEditArea;->w0:Ljava/lang/String;

    .line 153
    .line 154
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 155
    .line 156
    .line 157
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditArea;->j0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 158
    .line 159
    sget v2, Lnet/kaki87/soul2/testing/R$string;->remove_title:I

    .line 160
    .line 161
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 162
    .line 163
    .line 164
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditArea;->k0:Lcom/mycompany/app/view/MyLineText;

    .line 165
    .line 166
    sget v2, Lnet/kaki87/soul2/testing/R$string;->preview:I

    .line 167
    .line 168
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 169
    .line 170
    .line 171
    sget-boolean v1, Lcom/mycompany/app/pref/PrefRead;->H:Z

    .line 172
    .line 173
    const/4 v2, 0x1

    .line 174
    if-eqz v1, :cond_2

    .line 175
    .line 176
    iput-boolean v2, v0, Lcom/mycompany/app/dialog/DialogEditArea;->B0:Z

    .line 177
    .line 178
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditArea;->e0:Lcom/mycompany/app/view/MyButtonImage;

    .line 179
    .line 180
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setNoti(Z)V

    .line 181
    .line 182
    .line 183
    :cond_2
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditArea;->e0:Lcom/mycompany/app/view/MyButtonImage;

    .line 184
    .line 185
    new-instance v3, Lcom/mycompany/app/dialog/DialogEditArea$3;

    .line 186
    .line 187
    invoke-direct {v3, v0}, Lcom/mycompany/app/dialog/DialogEditArea$3;-><init>(Lcom/mycompany/app/dialog/DialogEditArea;)V

    .line 188
    .line 189
    .line 190
    invoke-virtual {v1, v3}, Lcom/mycompany/app/view/MyButtonImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 191
    .line 192
    .line 193
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditArea;->f0:Lcom/mycompany/app/view/MyButtonImage;

    .line 194
    .line 195
    new-instance v3, Lcom/mycompany/app/dialog/DialogEditArea$4;

    .line 196
    .line 197
    invoke-direct {v3, v0}, Lcom/mycompany/app/dialog/DialogEditArea$4;-><init>(Lcom/mycompany/app/dialog/DialogEditArea;)V

    .line 198
    .line 199
    .line 200
    invoke-virtual {v1, v3}, Lcom/mycompany/app/view/MyButtonImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 201
    .line 202
    .line 203
    new-instance v1, Lcom/mycompany/app/main/MainAreaAdapter;

    .line 204
    .line 205
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogEditArea;->A0:Ljava/util/ArrayList;

    .line 206
    .line 207
    new-instance v4, Lcom/mycompany/app/dialog/DialogEditArea$5;

    .line 208
    .line 209
    invoke-direct {v4, v0}, Lcom/mycompany/app/dialog/DialogEditArea$5;-><init>(Lcom/mycompany/app/dialog/DialogEditArea;)V

    .line 210
    .line 211
    .line 212
    invoke-direct {v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 213
    .line 214
    .line 215
    iput-object v3, v1, Lcom/mycompany/app/main/MainAreaAdapter;->d:Ljava/util/ArrayList;

    .line 216
    .line 217
    iput-object v4, v1, Lcom/mycompany/app/main/MainAreaAdapter;->e:Lcom/mycompany/app/main/MainAreaAdapter$MainAreaListener;

    .line 218
    .line 219
    sget-boolean v3, Lcom/mycompany/app/pref/PrefRead;->J:Z

    .line 220
    .line 221
    if-eqz v3, :cond_3

    .line 222
    .line 223
    invoke-virtual {v1}, Lcom/mycompany/app/main/MainAreaAdapter;->w()I

    .line 224
    .line 225
    .line 226
    move-result v3

    .line 227
    iput v3, v1, Lcom/mycompany/app/main/MainAreaAdapter;->f:I

    .line 228
    .line 229
    :cond_3
    iput-object v1, v0, Lcom/mycompany/app/dialog/DialogEditArea;->i0:Lcom/mycompany/app/main/MainAreaAdapter;

    .line 230
    .line 231
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditArea;->h0:Lcom/mycompany/app/view/MyRecyclerView;

    .line 232
    .line 233
    invoke-static {v2, v1}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->w(ILcom/mycompany/app/view/MyRecyclerView;)V

    .line 234
    .line 235
    .line 236
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditArea;->h0:Lcom/mycompany/app/view/MyRecyclerView;

    .line 237
    .line 238
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogEditArea;->i0:Lcom/mycompany/app/main/MainAreaAdapter;

    .line 239
    .line 240
    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 241
    .line 242
    .line 243
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditArea;->j0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 244
    .line 245
    new-instance v2, Lcom/mycompany/app/dialog/DialogEditArea$6;

    .line 246
    .line 247
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogEditArea$6;-><init>(Lcom/mycompany/app/dialog/DialogEditArea;)V

    .line 248
    .line 249
    .line 250
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 251
    .line 252
    .line 253
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditArea;->k0:Lcom/mycompany/app/view/MyLineText;

    .line 254
    .line 255
    new-instance v2, Lcom/mycompany/app/dialog/DialogEditArea$7;

    .line 256
    .line 257
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogEditArea$7;-><init>(Lcom/mycompany/app/dialog/DialogEditArea;)V

    .line 258
    .line 259
    .line 260
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 261
    .line 262
    .line 263
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditArea;->d0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 264
    .line 265
    new-instance v2, Lcom/mycompany/app/dialog/DialogEditArea$8;

    .line 266
    .line 267
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogEditArea$8;-><init>(Lcom/mycompany/app/dialog/DialogEditArea;)V

    .line 268
    .line 269
    .line 270
    invoke-virtual {v0, v1, v2}, Lcom/mycompany/app/view/MyDialogBottom;->g(Landroid/view/View;Lcom/mycompany/app/view/MyDialogBottom$BotViewListener;)V

    .line 271
    .line 272
    .line 273
    :cond_4
    :goto_1
    return-void
.end method
