.class Lcom/mycompany/app/dialog/DialogInfo$14$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Ljava/lang/String;

.field public final synthetic f:Ljava/lang/String;

.field public final synthetic g:Ljava/lang/String;

.field public final synthetic h:Ljava/lang/String;

.field public final synthetic i:J

.field public final synthetic j:Lcom/mycompany/app/dialog/DialogInfo$14;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogInfo$14;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogInfo$14$1;->j:Lcom/mycompany/app/dialog/DialogInfo$14;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/mycompany/app/dialog/DialogInfo$14$1;->c:Ljava/lang/String;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/mycompany/app/dialog/DialogInfo$14$1;->f:Ljava/lang/String;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/mycompany/app/dialog/DialogInfo$14$1;->g:Ljava/lang/String;

    .line 11
    .line 12
    iput-object p5, p0, Lcom/mycompany/app/dialog/DialogInfo$14$1;->h:Ljava/lang/String;

    .line 13
    .line 14
    iput-wide p6, p0, Lcom/mycompany/app/dialog/DialogInfo$14$1;->i:J

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogInfo$14$1;->j:Lcom/mycompany/app/dialog/DialogInfo$14;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogInfo$14;->c:Lcom/mycompany/app/dialog/DialogInfo;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogInfo;->f0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 6
    .line 7
    if-eqz v1, :cond_a

    .line 8
    .line 9
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogInfo;->k0:Lcom/mycompany/app/view/MyCoverView;

    .line 10
    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    goto/16 :goto_5

    .line 14
    .line 15
    :cond_0
    const/16 v2, 0x8

    .line 16
    .line 17
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyCoverView;->setVisibility(I)V

    .line 18
    .line 19
    .line 20
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogInfo$14$1;->c:Ljava/lang/String;

    .line 21
    .line 22
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    const/high16 v3, -0x1000000

    .line 27
    .line 28
    const v4, -0x9e9e9f

    .line 29
    .line 30
    .line 31
    const v5, -0x50506

    .line 32
    .line 33
    .line 34
    const v6, -0x3e3e3f

    .line 35
    .line 36
    .line 37
    const/4 v7, 0x0

    .line 38
    if-nez v2, :cond_2

    .line 39
    .line 40
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogInfo;->r0:Landroid/widget/LinearLayout;

    .line 41
    .line 42
    invoke-virtual {v2, v7}, Landroid/view/View;->setVisibility(I)V

    .line 43
    .line 44
    .line 45
    sget-boolean v2, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 46
    .line 47
    if-eqz v2, :cond_1

    .line 48
    .line 49
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogInfo;->s0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 50
    .line 51
    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 52
    .line 53
    .line 54
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogInfo;->t0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 55
    .line 56
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 57
    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_1
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogInfo;->s0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 61
    .line 62
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 63
    .line 64
    .line 65
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogInfo;->t0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 66
    .line 67
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 68
    .line 69
    .line 70
    :goto_0
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogInfo;->s0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 71
    .line 72
    sget v8, Lnet/kaki87/soul2/testing/R$string;->title:I

    .line 73
    .line 74
    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setText(I)V

    .line 75
    .line 76
    .line 77
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogInfo;->t0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 78
    .line 79
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 80
    .line 81
    .line 82
    :cond_2
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogInfo$14$1;->f:Ljava/lang/String;

    .line 83
    .line 84
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 85
    .line 86
    .line 87
    move-result v2

    .line 88
    if-nez v2, :cond_4

    .line 89
    .line 90
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogInfo;->u0:Landroid/widget/LinearLayout;

    .line 91
    .line 92
    invoke-virtual {v2, v7}, Landroid/view/View;->setVisibility(I)V

    .line 93
    .line 94
    .line 95
    sget-boolean v2, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 96
    .line 97
    if-eqz v2, :cond_3

    .line 98
    .line 99
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogInfo;->v0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 100
    .line 101
    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 102
    .line 103
    .line 104
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogInfo;->w0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 105
    .line 106
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 107
    .line 108
    .line 109
    goto :goto_1

    .line 110
    :cond_3
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogInfo;->v0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 111
    .line 112
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 113
    .line 114
    .line 115
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogInfo;->w0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 116
    .line 117
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 118
    .line 119
    .line 120
    :goto_1
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogInfo;->v0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 121
    .line 122
    sget v8, Lnet/kaki87/soul2/testing/R$string;->artist:I

    .line 123
    .line 124
    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setText(I)V

    .line 125
    .line 126
    .line 127
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogInfo;->w0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 128
    .line 129
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 130
    .line 131
    .line 132
    :cond_4
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogInfo$14$1;->g:Ljava/lang/String;

    .line 133
    .line 134
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 135
    .line 136
    .line 137
    move-result v2

    .line 138
    if-nez v2, :cond_6

    .line 139
    .line 140
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogInfo;->x0:Landroid/widget/LinearLayout;

    .line 141
    .line 142
    invoke-virtual {v2, v7}, Landroid/view/View;->setVisibility(I)V

    .line 143
    .line 144
    .line 145
    sget-boolean v2, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 146
    .line 147
    if-eqz v2, :cond_5

    .line 148
    .line 149
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogInfo;->y0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 150
    .line 151
    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 152
    .line 153
    .line 154
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogInfo;->z0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 155
    .line 156
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 157
    .line 158
    .line 159
    goto :goto_2

    .line 160
    :cond_5
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogInfo;->y0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 161
    .line 162
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 163
    .line 164
    .line 165
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogInfo;->z0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 166
    .line 167
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 168
    .line 169
    .line 170
    :goto_2
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogInfo;->y0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 171
    .line 172
    sget v8, Lnet/kaki87/soul2/testing/R$string;->album:I

    .line 173
    .line 174
    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setText(I)V

    .line 175
    .line 176
    .line 177
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogInfo;->z0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 178
    .line 179
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 180
    .line 181
    .line 182
    :cond_6
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogInfo$14$1;->h:Ljava/lang/String;

    .line 183
    .line 184
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 185
    .line 186
    .line 187
    move-result v2

    .line 188
    if-nez v2, :cond_8

    .line 189
    .line 190
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogInfo;->A0:Landroid/widget/LinearLayout;

    .line 191
    .line 192
    invoke-virtual {v2, v7}, Landroid/view/View;->setVisibility(I)V

    .line 193
    .line 194
    .line 195
    sget-boolean v2, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 196
    .line 197
    if-eqz v2, :cond_7

    .line 198
    .line 199
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogInfo;->B0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 200
    .line 201
    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 202
    .line 203
    .line 204
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogInfo;->C0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 205
    .line 206
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 207
    .line 208
    .line 209
    goto :goto_3

    .line 210
    :cond_7
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogInfo;->B0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 211
    .line 212
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 213
    .line 214
    .line 215
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogInfo;->C0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 216
    .line 217
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 218
    .line 219
    .line 220
    :goto_3
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogInfo;->B0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 221
    .line 222
    sget v8, Lnet/kaki87/soul2/testing/R$string;->genre:I

    .line 223
    .line 224
    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setText(I)V

    .line 225
    .line 226
    .line 227
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogInfo;->C0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 228
    .line 229
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 230
    .line 231
    .line 232
    :cond_8
    const-wide/16 v1, 0x0

    .line 233
    .line 234
    iget-wide v8, p0, Lcom/mycompany/app/dialog/DialogInfo$14$1;->i:J

    .line 235
    .line 236
    cmp-long v1, v8, v1

    .line 237
    .line 238
    if-lez v1, :cond_a

    .line 239
    .line 240
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogInfo;->D0:Landroid/widget/LinearLayout;

    .line 241
    .line 242
    invoke-virtual {v1, v7}, Landroid/view/View;->setVisibility(I)V

    .line 243
    .line 244
    .line 245
    sget-boolean v1, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 246
    .line 247
    if-eqz v1, :cond_9

    .line 248
    .line 249
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogInfo;->E0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 250
    .line 251
    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 252
    .line 253
    .line 254
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogInfo;->F0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 255
    .line 256
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 257
    .line 258
    .line 259
    goto :goto_4

    .line 260
    :cond_9
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogInfo;->E0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 261
    .line 262
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 263
    .line 264
    .line 265
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogInfo;->F0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 266
    .line 267
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 268
    .line 269
    .line 270
    :goto_4
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogInfo;->E0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 271
    .line 272
    sget v2, Lnet/kaki87/soul2/testing/R$string;->duration:I

    .line 273
    .line 274
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 275
    .line 276
    .line 277
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogInfo;->F0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 278
    .line 279
    invoke-static {v8, v9}, Lcom/mycompany/app/main/MainUtil;->r2(J)Ljava/lang/String;

    .line 280
    .line 281
    .line 282
    move-result-object v1

    .line 283
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 284
    .line 285
    .line 286
    :cond_a
    :goto_5
    return-void
.end method
