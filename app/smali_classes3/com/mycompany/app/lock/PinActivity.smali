.class public Lcom/mycompany/app/lock/PinActivity;
.super Lcom/mycompany/app/main/MainActivity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mycompany/app/lock/PinActivity$SystemRunnable;
    }
.end annotation


# static fields
.field public static final synthetic A1:I


# instance fields
.field public f1:Landroid/content/Context;

.field public g1:Landroid/view/View;

.field public h1:Lcom/mycompany/app/lock/PinActivity$SystemRunnable;

.field public i1:Lcom/mycompany/app/view/MyMainRelative;

.field public j1:Landroid/widget/ImageView;

.field public k1:Landroidx/appcompat/widget/AppCompatTextView;

.field public l1:Lcom/mycompany/app/view/MyButtonText;

.field public m1:Lcom/mycompany/app/view/MyButtonText;

.field public n1:Lcom/mycompany/app/view/MyButtonText;

.field public o1:Lcom/mycompany/app/view/MyButtonText;

.field public p1:Lcom/mycompany/app/lock/PinLock;

.field public q1:Lcom/mycompany/app/view/MyButtonText;

.field public r1:Lcom/mycompany/app/view/MyLineText;

.field public s1:Landroidx/appcompat/widget/AppCompatTextView;

.field public t1:I

.field public u1:I

.field public v1:Ljava/lang/String;

.field public w1:Z

.field public x1:Z

.field public y1:Ljava/lang/String;

.field public z1:Lcom/mycompany/app/dialog/DialogLockReset;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static u0(Lcom/mycompany/app/lock/PinActivity;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->finishAffinity()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/content/Intent;

    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    const-class v2, Lcom/mycompany/app/widget/WidgetSearchActivity;

    .line 11
    .line 12
    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 13
    .line 14
    .line 15
    const-string v1, "EXTRA_LOCK"

    .line 16
    .line 17
    const/4 v2, 0x1

    .line 18
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 19
    .line 20
    .line 21
    const-string v1, "EXTRA_VOICE"

    .line 22
    .line 23
    iget-boolean v2, p0, Lcom/mycompany/app/lock/PinActivity;->w1:Z

    .line 24
    .line 25
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method public static v0(Lcom/mycompany/app/lock/PinActivity;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/lock/PinActivity;->i1:Lcom/mycompany/app/view/MyMainRelative;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto/16 :goto_2

    .line 6
    .line 7
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/lock/PinActivity;->p1:Lcom/mycompany/app/lock/PinLock;

    .line 8
    .line 9
    const-string v1, ""

    .line 10
    .line 11
    iput-object v1, v0, Lcom/mycompany/app/lock/PinLock;->h:Ljava/lang/String;

    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    invoke-virtual {p0, v0}, Lcom/mycompany/app/lock/PinActivity;->C0(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    sget-boolean v1, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 18
    .line 19
    const/high16 v2, -0x1000000

    .line 20
    .line 21
    if-eqz v1, :cond_3

    .line 22
    .line 23
    iget-object v1, p0, Lcom/mycompany/app/lock/PinActivity;->j1:Landroid/widget/ImageView;

    .line 24
    .line 25
    sget v3, Lnet/kaki87/soul2/testing/R$drawable;->outline_lock_dark_84:I

    .line 26
    .line 27
    invoke-virtual {v1, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 28
    .line 29
    .line 30
    iget-object v1, p0, Lcom/mycompany/app/lock/PinActivity;->k1:Landroidx/appcompat/widget/AppCompatTextView;

    .line 31
    .line 32
    const v3, -0x50506

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 36
    .line 37
    .line 38
    iget-object v1, p0, Lcom/mycompany/app/lock/PinActivity;->l1:Lcom/mycompany/app/view/MyButtonText;

    .line 39
    .line 40
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 41
    .line 42
    .line 43
    iget-object v1, p0, Lcom/mycompany/app/lock/PinActivity;->m1:Lcom/mycompany/app/view/MyButtonText;

    .line 44
    .line 45
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 46
    .line 47
    .line 48
    iget-object v1, p0, Lcom/mycompany/app/lock/PinActivity;->n1:Lcom/mycompany/app/view/MyButtonText;

    .line 49
    .line 50
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 51
    .line 52
    .line 53
    iget-object v1, p0, Lcom/mycompany/app/lock/PinActivity;->o1:Lcom/mycompany/app/view/MyButtonText;

    .line 54
    .line 55
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 56
    .line 57
    .line 58
    iget-object v1, p0, Lcom/mycompany/app/lock/PinActivity;->l1:Lcom/mycompany/app/view/MyButtonText;

    .line 59
    .line 60
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonText;->setBgNorColor(I)V

    .line 61
    .line 62
    .line 63
    iget-object v1, p0, Lcom/mycompany/app/lock/PinActivity;->m1:Lcom/mycompany/app/view/MyButtonText;

    .line 64
    .line 65
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonText;->setBgNorColor(I)V

    .line 66
    .line 67
    .line 68
    iget-object v1, p0, Lcom/mycompany/app/lock/PinActivity;->n1:Lcom/mycompany/app/view/MyButtonText;

    .line 69
    .line 70
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonText;->setBgNorColor(I)V

    .line 71
    .line 72
    .line 73
    iget-object v1, p0, Lcom/mycompany/app/lock/PinActivity;->o1:Lcom/mycompany/app/view/MyButtonText;

    .line 74
    .line 75
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonText;->setBgNorColor(I)V

    .line 76
    .line 77
    .line 78
    iget-object v1, p0, Lcom/mycompany/app/lock/PinActivity;->q1:Lcom/mycompany/app/view/MyButtonText;

    .line 79
    .line 80
    if-eqz v1, :cond_1

    .line 81
    .line 82
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 83
    .line 84
    .line 85
    iget-object v1, p0, Lcom/mycompany/app/lock/PinActivity;->q1:Lcom/mycompany/app/view/MyButtonText;

    .line 86
    .line 87
    const v3, -0xd8d8d9

    .line 88
    .line 89
    .line 90
    invoke-virtual {v1, v2, v3}, Lcom/mycompany/app/view/MyButtonText;->u(II)V

    .line 91
    .line 92
    .line 93
    :cond_1
    iget-object v1, p0, Lcom/mycompany/app/lock/PinActivity;->r1:Lcom/mycompany/app/view/MyLineText;

    .line 94
    .line 95
    if-eqz v1, :cond_2

    .line 96
    .line 97
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->selector_normal_dark:I

    .line 98
    .line 99
    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/AppCompatTextView;->setBackgroundResource(I)V

    .line 100
    .line 101
    .line 102
    :cond_2
    iget-object v1, p0, Lcom/mycompany/app/lock/PinActivity;->s1:Landroidx/appcompat/widget/AppCompatTextView;

    .line 103
    .line 104
    if-eqz v1, :cond_6

    .line 105
    .line 106
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->selector_normal_dark:I

    .line 107
    .line 108
    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/AppCompatTextView;->setBackgroundResource(I)V

    .line 109
    .line 110
    .line 111
    goto :goto_0

    .line 112
    :cond_3
    iget-object v1, p0, Lcom/mycompany/app/lock/PinActivity;->j1:Landroid/widget/ImageView;

    .line 113
    .line 114
    sget v3, Lnet/kaki87/soul2/testing/R$drawable;->outline_lock_black_84:I

    .line 115
    .line 116
    invoke-virtual {v1, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 117
    .line 118
    .line 119
    iget-object v1, p0, Lcom/mycompany/app/lock/PinActivity;->k1:Landroidx/appcompat/widget/AppCompatTextView;

    .line 120
    .line 121
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 122
    .line 123
    .line 124
    iget-object v1, p0, Lcom/mycompany/app/lock/PinActivity;->l1:Lcom/mycompany/app/view/MyButtonText;

    .line 125
    .line 126
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 127
    .line 128
    .line 129
    iget-object v1, p0, Lcom/mycompany/app/lock/PinActivity;->m1:Lcom/mycompany/app/view/MyButtonText;

    .line 130
    .line 131
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 132
    .line 133
    .line 134
    iget-object v1, p0, Lcom/mycompany/app/lock/PinActivity;->n1:Lcom/mycompany/app/view/MyButtonText;

    .line 135
    .line 136
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 137
    .line 138
    .line 139
    iget-object v1, p0, Lcom/mycompany/app/lock/PinActivity;->o1:Lcom/mycompany/app/view/MyButtonText;

    .line 140
    .line 141
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 142
    .line 143
    .line 144
    iget-object v1, p0, Lcom/mycompany/app/lock/PinActivity;->l1:Lcom/mycompany/app/view/MyButtonText;

    .line 145
    .line 146
    const v3, -0x1f1f20

    .line 147
    .line 148
    .line 149
    invoke-virtual {v1, v3}, Lcom/mycompany/app/view/MyButtonText;->setBgNorColor(I)V

    .line 150
    .line 151
    .line 152
    iget-object v1, p0, Lcom/mycompany/app/lock/PinActivity;->m1:Lcom/mycompany/app/view/MyButtonText;

    .line 153
    .line 154
    invoke-virtual {v1, v3}, Lcom/mycompany/app/view/MyButtonText;->setBgNorColor(I)V

    .line 155
    .line 156
    .line 157
    iget-object v1, p0, Lcom/mycompany/app/lock/PinActivity;->n1:Lcom/mycompany/app/view/MyButtonText;

    .line 158
    .line 159
    invoke-virtual {v1, v3}, Lcom/mycompany/app/view/MyButtonText;->setBgNorColor(I)V

    .line 160
    .line 161
    .line 162
    iget-object v1, p0, Lcom/mycompany/app/lock/PinActivity;->o1:Lcom/mycompany/app/view/MyButtonText;

    .line 163
    .line 164
    invoke-virtual {v1, v3}, Lcom/mycompany/app/view/MyButtonText;->setBgNorColor(I)V

    .line 165
    .line 166
    .line 167
    iget-object v1, p0, Lcom/mycompany/app/lock/PinActivity;->q1:Lcom/mycompany/app/view/MyButtonText;

    .line 168
    .line 169
    if-eqz v1, :cond_4

    .line 170
    .line 171
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 172
    .line 173
    .line 174
    iget-object v1, p0, Lcom/mycompany/app/lock/PinActivity;->q1:Lcom/mycompany/app/view/MyButtonText;

    .line 175
    .line 176
    const v2, -0x2f2f30

    .line 177
    .line 178
    .line 179
    invoke-virtual {v1, v3, v2}, Lcom/mycompany/app/view/MyButtonText;->u(II)V

    .line 180
    .line 181
    .line 182
    :cond_4
    iget-object v1, p0, Lcom/mycompany/app/lock/PinActivity;->r1:Lcom/mycompany/app/view/MyLineText;

    .line 183
    .line 184
    if-eqz v1, :cond_5

    .line 185
    .line 186
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->selector_normal_gray:I

    .line 187
    .line 188
    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/AppCompatTextView;->setBackgroundResource(I)V

    .line 189
    .line 190
    .line 191
    :cond_5
    iget-object v1, p0, Lcom/mycompany/app/lock/PinActivity;->s1:Landroidx/appcompat/widget/AppCompatTextView;

    .line 192
    .line 193
    if-eqz v1, :cond_6

    .line 194
    .line 195
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->selector_normal_gray:I

    .line 196
    .line 197
    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/AppCompatTextView;->setBackgroundResource(I)V

    .line 198
    .line 199
    .line 200
    :cond_6
    :goto_0
    iget-object v1, p0, Lcom/mycompany/app/lock/PinActivity;->p1:Lcom/mycompany/app/lock/PinLock;

    .line 201
    .line 202
    new-instance v2, Lcom/mycompany/app/lock/PinActivity$5;

    .line 203
    .line 204
    invoke-direct {v2, p0}, Lcom/mycompany/app/lock/PinActivity$5;-><init>(Lcom/mycompany/app/lock/PinActivity;)V

    .line 205
    .line 206
    .line 207
    invoke-virtual {v1, v2}, Lcom/mycompany/app/lock/PinLock;->setListener(Lcom/mycompany/app/lock/PinLock$PinLockListener;)V

    .line 208
    .line 209
    .line 210
    iget v1, p0, Lcom/mycompany/app/lock/PinActivity;->u1:I

    .line 211
    .line 212
    const/4 v2, 0x1

    .line 213
    if-ne v1, v2, :cond_a

    .line 214
    .line 215
    iget-object v0, p0, Lcom/mycompany/app/lock/PinActivity;->r1:Lcom/mycompany/app/view/MyLineText;

    .line 216
    .line 217
    if-eqz v0, :cond_f

    .line 218
    .line 219
    iget-object v0, p0, Lcom/mycompany/app/lock/PinActivity;->s1:Landroidx/appcompat/widget/AppCompatTextView;

    .line 220
    .line 221
    if-nez v0, :cond_7

    .line 222
    .line 223
    goto/16 :goto_2

    .line 224
    .line 225
    :cond_7
    iget-object v0, p0, Lcom/mycompany/app/lock/PinActivity;->k1:Landroidx/appcompat/widget/AppCompatTextView;

    .line 226
    .line 227
    sget v1, Lnet/kaki87/soul2/testing/R$string;->input:I

    .line 228
    .line 229
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 230
    .line 231
    .line 232
    iget-object v0, p0, Lcom/mycompany/app/lock/PinActivity;->r1:Lcom/mycompany/app/view/MyLineText;

    .line 233
    .line 234
    const/4 v1, 0x0

    .line 235
    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 236
    .line 237
    .line 238
    iget-object v0, p0, Lcom/mycompany/app/lock/PinActivity;->r1:Lcom/mycompany/app/view/MyLineText;

    .line 239
    .line 240
    sget-boolean v2, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 241
    .line 242
    const v3, -0x252526

    .line 243
    .line 244
    .line 245
    const v4, -0x7f7f80

    .line 246
    .line 247
    .line 248
    if-eqz v2, :cond_8

    .line 249
    .line 250
    move v2, v4

    .line 251
    goto :goto_1

    .line 252
    :cond_8
    move v2, v3

    .line 253
    :goto_1
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 254
    .line 255
    .line 256
    iget-object v0, p0, Lcom/mycompany/app/lock/PinActivity;->s1:Landroidx/appcompat/widget/AppCompatTextView;

    .line 257
    .line 258
    sget v2, Lnet/kaki87/soul2/testing/R$string;->continue_input:I

    .line 259
    .line 260
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 261
    .line 262
    .line 263
    iget-object v0, p0, Lcom/mycompany/app/lock/PinActivity;->s1:Landroidx/appcompat/widget/AppCompatTextView;

    .line 264
    .line 265
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 266
    .line 267
    .line 268
    iget-object v0, p0, Lcom/mycompany/app/lock/PinActivity;->s1:Landroidx/appcompat/widget/AppCompatTextView;

    .line 269
    .line 270
    sget-boolean v1, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 271
    .line 272
    if-eqz v1, :cond_9

    .line 273
    .line 274
    move v3, v4

    .line 275
    :cond_9
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 276
    .line 277
    .line 278
    iget-object v0, p0, Lcom/mycompany/app/lock/PinActivity;->r1:Lcom/mycompany/app/view/MyLineText;

    .line 279
    .line 280
    new-instance v1, Lcom/mycompany/app/lock/PinActivity$6;

    .line 281
    .line 282
    invoke-direct {v1, p0}, Lcom/mycompany/app/lock/PinActivity$6;-><init>(Lcom/mycompany/app/lock/PinActivity;)V

    .line 283
    .line 284
    .line 285
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 286
    .line 287
    .line 288
    iget-object v0, p0, Lcom/mycompany/app/lock/PinActivity;->s1:Landroidx/appcompat/widget/AppCompatTextView;

    .line 289
    .line 290
    new-instance v1, Lcom/mycompany/app/lock/PinActivity$7;

    .line 291
    .line 292
    invoke-direct {v1, p0}, Lcom/mycompany/app/lock/PinActivity$7;-><init>(Lcom/mycompany/app/lock/PinActivity;)V

    .line 293
    .line 294
    .line 295
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 296
    .line 297
    .line 298
    return-void

    .line 299
    :cond_a
    const/4 v2, 0x2

    .line 300
    if-ne v1, v2, :cond_c

    .line 301
    .line 302
    iget-object v1, p0, Lcom/mycompany/app/lock/PinActivity;->q1:Lcom/mycompany/app/view/MyButtonText;

    .line 303
    .line 304
    if-nez v1, :cond_b

    .line 305
    .line 306
    goto :goto_2

    .line 307
    :cond_b
    iget-object v1, p0, Lcom/mycompany/app/lock/PinActivity;->k1:Landroidx/appcompat/widget/AppCompatTextView;

    .line 308
    .line 309
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 310
    .line 311
    .line 312
    iget-object v0, p0, Lcom/mycompany/app/lock/PinActivity;->q1:Lcom/mycompany/app/view/MyButtonText;

    .line 313
    .line 314
    sget v1, Lnet/kaki87/soul2/testing/R$string;->secret_reset:I

    .line 315
    .line 316
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 317
    .line 318
    .line 319
    iget-object v0, p0, Lcom/mycompany/app/lock/PinActivity;->q1:Lcom/mycompany/app/view/MyButtonText;

    .line 320
    .line 321
    new-instance v1, Lcom/mycompany/app/lock/PinActivity$8;

    .line 322
    .line 323
    invoke-direct {v1, p0}, Lcom/mycompany/app/lock/PinActivity$8;-><init>(Lcom/mycompany/app/lock/PinActivity;)V

    .line 324
    .line 325
    .line 326
    invoke-virtual {v0, v1}, Lcom/mycompany/app/view/MyButtonText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 327
    .line 328
    .line 329
    return-void

    .line 330
    :cond_c
    const/4 v2, 0x3

    .line 331
    if-ne v1, v2, :cond_e

    .line 332
    .line 333
    iget-object v1, p0, Lcom/mycompany/app/lock/PinActivity;->q1:Lcom/mycompany/app/view/MyButtonText;

    .line 334
    .line 335
    if-nez v1, :cond_d

    .line 336
    .line 337
    goto :goto_2

    .line 338
    :cond_d
    iget-object v1, p0, Lcom/mycompany/app/lock/PinActivity;->k1:Landroidx/appcompat/widget/AppCompatTextView;

    .line 339
    .line 340
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 341
    .line 342
    .line 343
    iget-object v0, p0, Lcom/mycompany/app/lock/PinActivity;->q1:Lcom/mycompany/app/view/MyButtonText;

    .line 344
    .line 345
    sget v1, Lnet/kaki87/soul2/testing/R$string;->cancel:I

    .line 346
    .line 347
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 348
    .line 349
    .line 350
    iget-object v0, p0, Lcom/mycompany/app/lock/PinActivity;->q1:Lcom/mycompany/app/view/MyButtonText;

    .line 351
    .line 352
    new-instance v1, Lcom/mycompany/app/lock/PinActivity$9;

    .line 353
    .line 354
    invoke-direct {v1, p0}, Lcom/mycompany/app/lock/PinActivity$9;-><init>(Lcom/mycompany/app/lock/PinActivity;)V

    .line 355
    .line 356
    .line 357
    invoke-virtual {v0, v1}, Lcom/mycompany/app/view/MyButtonText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 358
    .line 359
    .line 360
    return-void

    .line 361
    :cond_e
    iget-object v1, p0, Lcom/mycompany/app/lock/PinActivity;->q1:Lcom/mycompany/app/view/MyButtonText;

    .line 362
    .line 363
    if-nez v1, :cond_10

    .line 364
    .line 365
    :cond_f
    :goto_2
    return-void

    .line 366
    :cond_10
    iget-object v1, p0, Lcom/mycompany/app/lock/PinActivity;->k1:Landroidx/appcompat/widget/AppCompatTextView;

    .line 367
    .line 368
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 369
    .line 370
    .line 371
    sget-boolean v0, Lcom/mycompany/app/pref/PrefSecret;->u:Z

    .line 372
    .line 373
    if-eqz v0, :cond_11

    .line 374
    .line 375
    iget-object v0, p0, Lcom/mycompany/app/lock/PinActivity;->q1:Lcom/mycompany/app/view/MyButtonText;

    .line 376
    .line 377
    sget v1, Lnet/kaki87/soul2/testing/R$string;->normal_start:I

    .line 378
    .line 379
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 380
    .line 381
    .line 382
    goto :goto_3

    .line 383
    :cond_11
    iget-object v0, p0, Lcom/mycompany/app/lock/PinActivity;->q1:Lcom/mycompany/app/view/MyButtonText;

    .line 384
    .line 385
    sget v1, Lnet/kaki87/soul2/testing/R$string;->secret_reset:I

    .line 386
    .line 387
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 388
    .line 389
    .line 390
    :goto_3
    iget-object v0, p0, Lcom/mycompany/app/lock/PinActivity;->q1:Lcom/mycompany/app/view/MyButtonText;

    .line 391
    .line 392
    new-instance v1, Lcom/mycompany/app/lock/PinActivity$10;

    .line 393
    .line 394
    invoke-direct {v1, p0}, Lcom/mycompany/app/lock/PinActivity$10;-><init>(Lcom/mycompany/app/lock/PinActivity;)V

    .line 395
    .line 396
    .line 397
    invoke-virtual {v0, v1}, Lcom/mycompany/app/view/MyButtonText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 398
    .line 399
    .line 400
    return-void
.end method

.method public static w0(Lcom/mycompany/app/lock/PinActivity;Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/lock/PinActivity;->l1:Lcom/mycompany/app/view/MyButtonText;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    if-eqz p1, :cond_2

    .line 7
    .line 8
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    const/4 v1, 0x4

    .line 13
    if-eq v0, v1, :cond_1

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_1
    iget-object v0, p0, Lcom/mycompany/app/lock/PinActivity;->l1:Lcom/mycompany/app/view/MyButtonText;

    .line 17
    .line 18
    const-string v1, "*"

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Lcom/mycompany/app/lock/PinActivity;->m1:Lcom/mycompany/app/view/MyButtonText;

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 26
    .line 27
    .line 28
    iget-object v0, p0, Lcom/mycompany/app/lock/PinActivity;->n1:Lcom/mycompany/app/view/MyButtonText;

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 31
    .line 32
    .line 33
    iget-object v0, p0, Lcom/mycompany/app/lock/PinActivity;->o1:Lcom/mycompany/app/view/MyButtonText;

    .line 34
    .line 35
    const/4 v1, 0x3

    .line 36
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 41
    .line 42
    .line 43
    iget-object p1, p0, Lcom/mycompany/app/lock/PinActivity;->o1:Lcom/mycompany/app/view/MyButtonText;

    .line 44
    .line 45
    new-instance v0, Lcom/mycompany/app/lock/PinActivity$11;

    .line 46
    .line 47
    invoke-direct {v0, p0}, Lcom/mycompany/app/lock/PinActivity$11;-><init>(Lcom/mycompany/app/lock/PinActivity;)V

    .line 48
    .line 49
    .line 50
    const-wide/16 v1, 0xc8

    .line 51
    .line 52
    invoke-virtual {p1, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 53
    .line 54
    .line 55
    return-void

    .line 56
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/mycompany/app/lock/PinActivity;->p1:Lcom/mycompany/app/lock/PinLock;

    .line 57
    .line 58
    const-string v0, ""

    .line 59
    .line 60
    iput-object v0, p1, Lcom/mycompany/app/lock/PinLock;->h:Ljava/lang/String;

    .line 61
    .line 62
    iget-object p1, p0, Lcom/mycompany/app/lock/PinActivity;->l1:Lcom/mycompany/app/view/MyButtonText;

    .line 63
    .line 64
    const/4 v0, 0x0

    .line 65
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 66
    .line 67
    .line 68
    iget-object p1, p0, Lcom/mycompany/app/lock/PinActivity;->m1:Lcom/mycompany/app/view/MyButtonText;

    .line 69
    .line 70
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 71
    .line 72
    .line 73
    iget-object p1, p0, Lcom/mycompany/app/lock/PinActivity;->n1:Lcom/mycompany/app/view/MyButtonText;

    .line 74
    .line 75
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 76
    .line 77
    .line 78
    iget-object p1, p0, Lcom/mycompany/app/lock/PinActivity;->o1:Lcom/mycompany/app/view/MyButtonText;

    .line 79
    .line 80
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 81
    .line 82
    .line 83
    iget-object p0, p0, Lcom/mycompany/app/lock/PinActivity;->k1:Landroidx/appcompat/widget/AppCompatTextView;

    .line 84
    .line 85
    sget p1, Lnet/kaki87/soul2/testing/R$string;->wrong_input:I

    .line 86
    .line 87
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 88
    .line 89
    .line 90
    return-void
.end method

.method public static x0(Lcom/mycompany/app/lock/PinActivity;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/lock/PinActivity;->z1:Lcom/mycompany/app/dialog/DialogLockReset;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-virtual {p0}, Lcom/mycompany/app/lock/PinActivity;->z0()V

    .line 7
    .line 8
    .line 9
    new-instance v0, Lcom/mycompany/app/dialog/DialogLockReset;

    .line 10
    .line 11
    iget v1, p0, Lcom/mycompany/app/lock/PinActivity;->t1:I

    .line 12
    .line 13
    new-instance v2, Lcom/mycompany/app/lock/PinActivity$13;

    .line 14
    .line 15
    invoke-direct {v2, p0}, Lcom/mycompany/app/lock/PinActivity$13;-><init>(Lcom/mycompany/app/lock/PinActivity;)V

    .line 16
    .line 17
    .line 18
    invoke-direct {v0, p0, v1, v2}, Lcom/mycompany/app/dialog/DialogLockReset;-><init>(Landroid/app/Activity;ILcom/mycompany/app/dialog/DialogSetFull$DialogApplyListener;)V

    .line 19
    .line 20
    .line 21
    iput-object v0, p0, Lcom/mycompany/app/lock/PinActivity;->z1:Lcom/mycompany/app/dialog/DialogLockReset;

    .line 22
    .line 23
    new-instance v1, Lcom/mycompany/app/lock/PinActivity$14;

    .line 24
    .line 25
    invoke-direct {v1, p0}, Lcom/mycompany/app/lock/PinActivity$14;-><init>(Lcom/mycompany/app/lock/PinActivity;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, v1}, Lcom/mycompany/app/view/MyDialogBottom;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 29
    .line 30
    .line 31
    return-void
.end method


# virtual methods
.method public final A0()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/mycompany/app/lock/PinActivity;->x1:Z

    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/mycompany/app/lock/PinActivity;->y1:Ljava/lang/String;

    .line 6
    .line 7
    iget-object v0, p0, Lcom/mycompany/app/lock/PinActivity;->p1:Lcom/mycompany/app/lock/PinLock;

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iget-object v0, v0, Lcom/mycompany/app/lock/PinLock;->g:Lcom/mycompany/app/view/MyButtonImage;

    .line 13
    .line 14
    if-eqz v0, :cond_2

    .line 15
    .line 16
    iget-object v0, p0, Lcom/mycompany/app/main/MainActivity;->O0:Landroid/os/Handler;

    .line 17
    .line 18
    if-nez v0, :cond_1

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_1
    new-instance v1, Lcom/mycompany/app/lock/PinActivity$3;

    .line 22
    .line 23
    invoke-direct {v1, p0}, Lcom/mycompany/app/lock/PinActivity$3;-><init>(Lcom/mycompany/app/lock/PinActivity;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 27
    .line 28
    .line 29
    return-void

    .line 30
    :cond_2
    iget-object v0, p0, Lcom/mycompany/app/main/MainActivity;->O0:Landroid/os/Handler;

    .line 31
    .line 32
    if-nez v0, :cond_3

    .line 33
    .line 34
    :goto_0
    return-void

    .line 35
    :cond_3
    new-instance v1, Lcom/mycompany/app/lock/PinActivity$4;

    .line 36
    .line 37
    invoke-direct {v1, p0}, Lcom/mycompany/app/lock/PinActivity$4;-><init>(Lcom/mycompany/app/lock/PinActivity;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 41
    .line 42
    .line 43
    return-void
.end method

.method public final B0(Landroid/widget/TextView;Ljava/lang/String;)V
    .locals 2

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    if-nez v0, :cond_1

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_1
    const-string v1, "*"

    .line 12
    .line 13
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_2

    .line 22
    .line 23
    :goto_0
    return-void

    .line 24
    :cond_2
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 25
    .line 26
    .line 27
    new-instance p2, Lcom/mycompany/app/lock/PinActivity$12;

    .line 28
    .line 29
    invoke-direct {p2, p0, p1}, Lcom/mycompany/app/lock/PinActivity$12;-><init>(Lcom/mycompany/app/lock/PinActivity;Landroid/widget/TextView;)V

    .line 30
    .line 31
    .line 32
    const-wide/16 v0, 0xc8

    .line 33
    .line 34
    invoke-virtual {p1, p2, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 35
    .line 36
    .line 37
    return-void
.end method

.method public final C0(Ljava/lang/String;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/lock/PinActivity;->l1:Lcom/mycompany/app/view/MyButtonText;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto/16 :goto_0

    .line 6
    .line 7
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const/4 v1, 0x0

    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    iget-object p1, p0, Lcom/mycompany/app/lock/PinActivity;->l1:Lcom/mycompany/app/view/MyButtonText;

    .line 15
    .line 16
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 17
    .line 18
    .line 19
    iget-object p1, p0, Lcom/mycompany/app/lock/PinActivity;->m1:Lcom/mycompany/app/view/MyButtonText;

    .line 20
    .line 21
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 22
    .line 23
    .line 24
    iget-object p1, p0, Lcom/mycompany/app/lock/PinActivity;->n1:Lcom/mycompany/app/view/MyButtonText;

    .line 25
    .line 26
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 27
    .line 28
    .line 29
    iget-object p1, p0, Lcom/mycompany/app/lock/PinActivity;->o1:Lcom/mycompany/app/view/MyButtonText;

    .line 30
    .line 31
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 32
    .line 33
    .line 34
    return-void

    .line 35
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    const/4 v2, 0x1

    .line 40
    if-ne v0, v2, :cond_2

    .line 41
    .line 42
    iget-object v0, p0, Lcom/mycompany/app/lock/PinActivity;->l1:Lcom/mycompany/app/view/MyButtonText;

    .line 43
    .line 44
    invoke-virtual {p0, v0, p1}, Lcom/mycompany/app/lock/PinActivity;->B0(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    iget-object p1, p0, Lcom/mycompany/app/lock/PinActivity;->m1:Lcom/mycompany/app/view/MyButtonText;

    .line 48
    .line 49
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 50
    .line 51
    .line 52
    iget-object p1, p0, Lcom/mycompany/app/lock/PinActivity;->n1:Lcom/mycompany/app/view/MyButtonText;

    .line 53
    .line 54
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 55
    .line 56
    .line 57
    iget-object p1, p0, Lcom/mycompany/app/lock/PinActivity;->o1:Lcom/mycompany/app/view/MyButtonText;

    .line 58
    .line 59
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 60
    .line 61
    .line 62
    return-void

    .line 63
    :cond_2
    const/4 v3, 0x2

    .line 64
    const-string v4, "*"

    .line 65
    .line 66
    if-ne v0, v3, :cond_3

    .line 67
    .line 68
    iget-object v0, p0, Lcom/mycompany/app/lock/PinActivity;->l1:Lcom/mycompany/app/view/MyButtonText;

    .line 69
    .line 70
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 71
    .line 72
    .line 73
    iget-object v0, p0, Lcom/mycompany/app/lock/PinActivity;->m1:Lcom/mycompany/app/view/MyButtonText;

    .line 74
    .line 75
    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    invoke-virtual {p0, v0, p1}, Lcom/mycompany/app/lock/PinActivity;->B0(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    iget-object p1, p0, Lcom/mycompany/app/lock/PinActivity;->n1:Lcom/mycompany/app/view/MyButtonText;

    .line 83
    .line 84
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 85
    .line 86
    .line 87
    iget-object p1, p0, Lcom/mycompany/app/lock/PinActivity;->o1:Lcom/mycompany/app/view/MyButtonText;

    .line 88
    .line 89
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 90
    .line 91
    .line 92
    return-void

    .line 93
    :cond_3
    const/4 v2, 0x3

    .line 94
    if-ne v0, v2, :cond_4

    .line 95
    .line 96
    iget-object v0, p0, Lcom/mycompany/app/lock/PinActivity;->l1:Lcom/mycompany/app/view/MyButtonText;

    .line 97
    .line 98
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 99
    .line 100
    .line 101
    iget-object v0, p0, Lcom/mycompany/app/lock/PinActivity;->m1:Lcom/mycompany/app/view/MyButtonText;

    .line 102
    .line 103
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 104
    .line 105
    .line 106
    iget-object v0, p0, Lcom/mycompany/app/lock/PinActivity;->n1:Lcom/mycompany/app/view/MyButtonText;

    .line 107
    .line 108
    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object p1

    .line 112
    invoke-virtual {p0, v0, p1}, Lcom/mycompany/app/lock/PinActivity;->B0(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    iget-object p1, p0, Lcom/mycompany/app/lock/PinActivity;->o1:Lcom/mycompany/app/view/MyButtonText;

    .line 116
    .line 117
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 118
    .line 119
    .line 120
    return-void

    .line 121
    :cond_4
    const/4 v1, 0x4

    .line 122
    if-ne v0, v1, :cond_5

    .line 123
    .line 124
    iget-object v0, p0, Lcom/mycompany/app/lock/PinActivity;->l1:Lcom/mycompany/app/view/MyButtonText;

    .line 125
    .line 126
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 127
    .line 128
    .line 129
    iget-object v0, p0, Lcom/mycompany/app/lock/PinActivity;->m1:Lcom/mycompany/app/view/MyButtonText;

    .line 130
    .line 131
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 132
    .line 133
    .line 134
    iget-object v0, p0, Lcom/mycompany/app/lock/PinActivity;->n1:Lcom/mycompany/app/view/MyButtonText;

    .line 135
    .line 136
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 137
    .line 138
    .line 139
    iget-object v0, p0, Lcom/mycompany/app/lock/PinActivity;->o1:Lcom/mycompany/app/view/MyButtonText;

    .line 140
    .line 141
    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object p1

    .line 145
    invoke-virtual {p0, v0, p1}, Lcom/mycompany/app/lock/PinActivity;->B0(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 146
    .line 147
    .line 148
    :cond_5
    :goto_0
    return-void
.end method

.method public final l0()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/mycompany/app/lock/PinActivity;->u1:I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    invoke-virtual {p0, v0}, Landroid/app/Activity;->moveTaskToBack(Z)Z

    .line 7
    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public final onBackPressed()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/mycompany/app/main/MainActivity;->Y()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-virtual {p0}, Lcom/mycompany/app/lock/PinActivity;->l0()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-super/range {p0 .. p1}, Lcom/mycompany/app/main/MainActivity;->onCreate(Landroid/os/Bundle;)V

    .line 4
    .line 5
    .line 6
    invoke-static {v0}, Lcom/mycompany/app/main/MainUtil;->C7(Landroidx/appcompat/app/AppCompatActivity;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/mycompany/app/main/MainActivity;->f0()V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    iput-object v1, v0, Lcom/mycompany/app/lock/PinActivity;->f1:Landroid/content/Context;

    .line 17
    .line 18
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-virtual {v0, v1}, Lcom/mycompany/app/lock/PinActivity;->y0(Landroid/content/Intent;)V

    .line 23
    .line 24
    .line 25
    new-instance v1, Lcom/mycompany/app/lock/PinActivity$15;

    .line 26
    .line 27
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 28
    .line 29
    .line 30
    iput-object v1, v0, Lcom/mycompany/app/main/MainActivity;->V0:Lcom/mycompany/app/main/MainActivity$SystemBarListener;

    .line 31
    .line 32
    iget v1, v0, Lcom/mycompany/app/lock/PinActivity;->u1:I

    .line 33
    .line 34
    const/4 v2, 0x3

    .line 35
    if-ne v1, v2, :cond_0

    .line 36
    .line 37
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    if-eqz v1, :cond_0

    .line 42
    .line 43
    invoke-virtual {v0}, Lcom/mycompany/app/main/MainActivity;->r0()V

    .line 44
    .line 45
    .line 46
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 47
    .line 48
    const/16 v3, 0x1e

    .line 49
    .line 50
    if-ge v1, v3, :cond_0

    .line 51
    .line 52
    invoke-virtual {v0}, Lcom/mycompany/app/main/MainActivity;->a0()Landroid/view/View;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    iput-object v1, v0, Lcom/mycompany/app/lock/PinActivity;->g1:Landroid/view/View;

    .line 57
    .line 58
    if-eqz v1, :cond_0

    .line 59
    .line 60
    new-instance v3, Lcom/mycompany/app/lock/PinActivity$SystemRunnable;

    .line 61
    .line 62
    invoke-direct {v3, v0}, Lcom/mycompany/app/lock/PinActivity$SystemRunnable;-><init>(Lcom/mycompany/app/lock/PinActivity;)V

    .line 63
    .line 64
    .line 65
    iput-object v3, v0, Lcom/mycompany/app/lock/PinActivity;->h1:Lcom/mycompany/app/lock/PinActivity$SystemRunnable;

    .line 66
    .line 67
    new-instance v3, Lcom/mycompany/app/lock/PinActivity$1;

    .line 68
    .line 69
    invoke-direct {v3, v0}, Lcom/mycompany/app/lock/PinActivity$1;-><init>(Lcom/mycompany/app/lock/PinActivity;)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {v1, v3}, Landroid/view/View;->setOnSystemUiVisibilityChangeListener(Landroid/view/View$OnSystemUiVisibilityChangeListener;)V

    .line 73
    .line 74
    .line 75
    :cond_0
    sget v1, Lnet/kaki87/soul2/testing/R$id;->lock_button_view:I

    .line 76
    .line 77
    new-instance v3, Lcom/mycompany/app/view/MyMainRelative;

    .line 78
    .line 79
    invoke-direct {v3, v0}, Lcom/mycompany/app/view/MyMainRelative;-><init>(Landroid/content/Context;)V

    .line 80
    .line 81
    .line 82
    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    .line 83
    .line 84
    const/4 v5, -0x1

    .line 85
    invoke-direct {v4, v5, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {v3, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 89
    .line 90
    .line 91
    new-instance v4, Landroid/widget/LinearLayout;

    .line 92
    .line 93
    invoke-direct {v4, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 94
    .line 95
    .line 96
    const/4 v6, 0x1

    .line 97
    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 98
    .line 99
    .line 100
    const/4 v7, 0x2

    .line 101
    invoke-static {v5, v5, v7, v1}, Landroidx/work/impl/workers/a;->h(IIII)Landroid/widget/RelativeLayout$LayoutParams;

    .line 102
    .line 103
    .line 104
    move-result-object v8

    .line 105
    invoke-virtual {v3, v4, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 106
    .line 107
    .line 108
    new-instance v8, Landroid/view/View;

    .line 109
    .line 110
    invoke-direct {v8, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 111
    .line 112
    .line 113
    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    .line 114
    .line 115
    const/4 v10, 0x0

    .line 116
    invoke-direct {v9, v5, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 117
    .line 118
    .line 119
    const/high16 v11, 0x40000000    # 2.0f

    .line 120
    .line 121
    iput v11, v9, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 122
    .line 123
    invoke-virtual {v4, v8, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 124
    .line 125
    .line 126
    const/high16 v8, 0x42a80000    # 84.0f

    .line 127
    .line 128
    invoke-static {v0, v8}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 129
    .line 130
    .line 131
    move-result v8

    .line 132
    float-to-int v8, v8

    .line 133
    new-instance v9, Landroid/widget/ImageView;

    .line 134
    .line 135
    invoke-direct {v9, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 136
    .line 137
    .line 138
    new-instance v11, Landroid/widget/LinearLayout$LayoutParams;

    .line 139
    .line 140
    invoke-direct {v11, v8, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 141
    .line 142
    .line 143
    iput v6, v11, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 144
    .line 145
    invoke-virtual {v4, v9, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 146
    .line 147
    .line 148
    new-instance v8, Landroid/view/View;

    .line 149
    .line 150
    invoke-direct {v8, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 151
    .line 152
    .line 153
    new-instance v11, Landroid/widget/LinearLayout$LayoutParams;

    .line 154
    .line 155
    invoke-direct {v11, v5, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 156
    .line 157
    .line 158
    const/high16 v12, 0x3f800000    # 1.0f

    .line 159
    .line 160
    iput v12, v11, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 161
    .line 162
    invoke-virtual {v4, v8, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 163
    .line 164
    .line 165
    new-instance v8, Landroid/widget/FrameLayout;

    .line 166
    .line 167
    invoke-direct {v8, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 168
    .line 169
    .line 170
    new-instance v11, Landroid/widget/LinearLayout$LayoutParams;

    .line 171
    .line 172
    const/4 v13, -0x2

    .line 173
    invoke-direct {v11, v13, v13}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 174
    .line 175
    .line 176
    iput v6, v11, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 177
    .line 178
    invoke-virtual {v4, v8, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 179
    .line 180
    .line 181
    const/high16 v11, 0x42100000    # 36.0f

    .line 182
    .line 183
    invoke-static {v0, v11}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 184
    .line 185
    .line 186
    move-result v11

    .line 187
    float-to-int v11, v11

    .line 188
    const/high16 v14, 0x41900000    # 18.0f

    .line 189
    .line 190
    invoke-static {v0, v14}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 191
    .line 192
    .line 193
    move-result v14

    .line 194
    float-to-int v14, v14

    .line 195
    new-instance v15, Lcom/mycompany/app/view/MyButtonText;

    .line 196
    .line 197
    invoke-direct {v15, v0}, Lcom/mycompany/app/view/MyButtonText;-><init>(Landroid/content/Context;)V

    .line 198
    .line 199
    .line 200
    move/from16 p1, v2

    .line 201
    .line 202
    const/16 v2, 0x11

    .line 203
    .line 204
    invoke-virtual {v15, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 205
    .line 206
    .line 207
    move/from16 v16, v7

    .line 208
    .line 209
    const/high16 v7, 0x41a00000    # 20.0f

    .line 210
    .line 211
    invoke-virtual {v15, v6, v7}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 212
    .line 213
    .line 214
    invoke-virtual {v15, v6}, Lcom/mycompany/app/view/MyButtonText;->setRoundRect(Z)V

    .line 215
    .line 216
    .line 217
    invoke-virtual {v15, v14}, Lcom/mycompany/app/view/MyButtonText;->setRoundRadius(I)V

    .line 218
    .line 219
    .line 220
    invoke-virtual {v8, v15, v11, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 221
    .line 222
    .line 223
    new-instance v12, Lcom/mycompany/app/view/MyButtonText;

    .line 224
    .line 225
    invoke-direct {v12, v0}, Lcom/mycompany/app/view/MyButtonText;-><init>(Landroid/content/Context;)V

    .line 226
    .line 227
    .line 228
    invoke-virtual {v12, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 229
    .line 230
    .line 231
    invoke-virtual {v12, v6, v7}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 232
    .line 233
    .line 234
    invoke-virtual {v12, v6}, Lcom/mycompany/app/view/MyButtonText;->setRoundRect(Z)V

    .line 235
    .line 236
    .line 237
    invoke-virtual {v12, v14}, Lcom/mycompany/app/view/MyButtonText;->setRoundRadius(I)V

    .line 238
    .line 239
    .line 240
    new-instance v13, Landroid/widget/FrameLayout$LayoutParams;

    .line 241
    .line 242
    invoke-direct {v13, v11, v11}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 243
    .line 244
    .line 245
    sget v5, Lcom/mycompany/app/main/MainApp;->i1:I

    .line 246
    .line 247
    invoke-virtual {v13, v5}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 248
    .line 249
    .line 250
    invoke-virtual {v8, v12, v13}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 251
    .line 252
    .line 253
    new-instance v5, Lcom/mycompany/app/view/MyButtonText;

    .line 254
    .line 255
    invoke-direct {v5, v0}, Lcom/mycompany/app/view/MyButtonText;-><init>(Landroid/content/Context;)V

    .line 256
    .line 257
    .line 258
    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 259
    .line 260
    .line 261
    invoke-virtual {v5, v6, v7}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 262
    .line 263
    .line 264
    invoke-virtual {v5, v6}, Lcom/mycompany/app/view/MyButtonText;->setRoundRect(Z)V

    .line 265
    .line 266
    .line 267
    invoke-virtual {v5, v14}, Lcom/mycompany/app/view/MyButtonText;->setRoundRadius(I)V

    .line 268
    .line 269
    .line 270
    new-instance v13, Landroid/widget/FrameLayout$LayoutParams;

    .line 271
    .line 272
    invoke-direct {v13, v11, v11}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 273
    .line 274
    .line 275
    sget v17, Lcom/mycompany/app/main/MainApp;->i1:I

    .line 276
    .line 277
    mul-int/lit8 v10, v17, 0x2

    .line 278
    .line 279
    invoke-virtual {v13, v10}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 280
    .line 281
    .line 282
    invoke-virtual {v8, v5, v13}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 283
    .line 284
    .line 285
    new-instance v10, Lcom/mycompany/app/view/MyButtonText;

    .line 286
    .line 287
    invoke-direct {v10, v0}, Lcom/mycompany/app/view/MyButtonText;-><init>(Landroid/content/Context;)V

    .line 288
    .line 289
    .line 290
    invoke-virtual {v10, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 291
    .line 292
    .line 293
    invoke-virtual {v10, v6, v7}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 294
    .line 295
    .line 296
    invoke-virtual {v10, v6}, Lcom/mycompany/app/view/MyButtonText;->setRoundRect(Z)V

    .line 297
    .line 298
    .line 299
    invoke-virtual {v10, v14}, Lcom/mycompany/app/view/MyButtonText;->setRoundRadius(I)V

    .line 300
    .line 301
    .line 302
    new-instance v7, Landroid/widget/FrameLayout$LayoutParams;

    .line 303
    .line 304
    invoke-direct {v7, v11, v11}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 305
    .line 306
    .line 307
    sget v11, Lcom/mycompany/app/main/MainApp;->i1:I

    .line 308
    .line 309
    mul-int/lit8 v11, v11, 0x3

    .line 310
    .line 311
    invoke-virtual {v7, v11}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 312
    .line 313
    .line 314
    invoke-virtual {v8, v10, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 315
    .line 316
    .line 317
    new-instance v7, Landroid/view/View;

    .line 318
    .line 319
    invoke-direct {v7, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 320
    .line 321
    .line 322
    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    .line 323
    .line 324
    const/4 v11, -0x1

    .line 325
    const/4 v13, 0x0

    .line 326
    invoke-direct {v8, v11, v13}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 327
    .line 328
    .line 329
    const/high16 v11, 0x3f000000    # 0.5f

    .line 330
    .line 331
    iput v11, v8, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 332
    .line 333
    invoke-virtual {v4, v7, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 334
    .line 335
    .line 336
    new-instance v7, Landroidx/appcompat/widget/AppCompatTextView;

    .line 337
    .line 338
    const/4 v8, 0x0

    .line 339
    invoke-direct {v7, v0, v8}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 340
    .line 341
    .line 342
    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 343
    .line 344
    .line 345
    const/high16 v13, 0x41800000    # 16.0f

    .line 346
    .line 347
    invoke-virtual {v7, v6, v13}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 348
    .line 349
    .line 350
    new-instance v14, Landroid/widget/LinearLayout$LayoutParams;

    .line 351
    .line 352
    const/4 v8, -0x2

    .line 353
    invoke-direct {v14, v8, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 354
    .line 355
    .line 356
    iput v6, v14, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 357
    .line 358
    invoke-virtual {v4, v7, v14}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 359
    .line 360
    .line 361
    new-instance v8, Landroid/view/View;

    .line 362
    .line 363
    invoke-direct {v8, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 364
    .line 365
    .line 366
    new-instance v14, Landroid/widget/LinearLayout$LayoutParams;

    .line 367
    .line 368
    const/4 v2, 0x0

    .line 369
    const/4 v13, -0x1

    .line 370
    invoke-direct {v14, v13, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 371
    .line 372
    .line 373
    iput v11, v14, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 374
    .line 375
    invoke-virtual {v4, v8, v14}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 376
    .line 377
    .line 378
    const/high16 v2, 0x438c0000    # 280.0f

    .line 379
    .line 380
    invoke-static {v0, v2}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 381
    .line 382
    .line 383
    move-result v2

    .line 384
    float-to-int v2, v2

    .line 385
    new-instance v8, Lcom/mycompany/app/lock/PinLock;

    .line 386
    .line 387
    invoke-direct {v8, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 388
    .line 389
    .line 390
    new-instance v11, Landroid/widget/LinearLayout$LayoutParams;

    .line 391
    .line 392
    invoke-direct {v11, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 393
    .line 394
    .line 395
    iput v6, v11, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 396
    .line 397
    invoke-virtual {v4, v8, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 398
    .line 399
    .line 400
    new-instance v2, Landroid/view/View;

    .line 401
    .line 402
    invoke-direct {v2, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 403
    .line 404
    .line 405
    new-instance v11, Landroid/widget/LinearLayout$LayoutParams;

    .line 406
    .line 407
    const/4 v13, -0x1

    .line 408
    const/4 v14, 0x0

    .line 409
    invoke-direct {v11, v13, v14}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 410
    .line 411
    .line 412
    const/high16 v6, 0x3f800000    # 1.0f

    .line 413
    .line 414
    iput v6, v11, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 415
    .line 416
    invoke-virtual {v4, v2, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 417
    .line 418
    .line 419
    new-instance v2, Landroid/widget/LinearLayout;

    .line 420
    .line 421
    invoke-direct {v2, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 422
    .line 423
    .line 424
    invoke-virtual {v2, v1}, Landroid/view/View;->setId(I)V

    .line 425
    .line 426
    .line 427
    invoke-virtual {v2, v14}, Landroid/widget/LinearLayout;->setBaselineAligned(Z)V

    .line 428
    .line 429
    .line 430
    invoke-virtual {v2, v14}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 431
    .line 432
    .line 433
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 434
    .line 435
    const/4 v4, -0x2

    .line 436
    invoke-direct {v1, v13, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 437
    .line 438
    .line 439
    const/16 v4, 0xc

    .line 440
    .line 441
    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 442
    .line 443
    .line 444
    invoke-virtual {v3, v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 445
    .line 446
    .line 447
    iget v1, v0, Lcom/mycompany/app/lock/PinActivity;->u1:I

    .line 448
    .line 449
    const/4 v4, 0x1

    .line 450
    if-ne v1, v4, :cond_1

    .line 451
    .line 452
    new-instance v1, Lcom/mycompany/app/view/MyLineText;

    .line 453
    .line 454
    invoke-direct {v1, v0}, Lcom/mycompany/app/view/MyLineText;-><init>(Landroid/content/Context;)V

    .line 455
    .line 456
    .line 457
    const/16 v6, 0x11

    .line 458
    .line 459
    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setGravity(I)V

    .line 460
    .line 461
    .line 462
    const/high16 v6, 0x41800000    # 16.0f

    .line 463
    .line 464
    invoke-virtual {v1, v4, v6}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 465
    .line 466
    .line 467
    sget v4, Lnet/kaki87/soul2/testing/R$string;->retry:I

    .line 468
    .line 469
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(I)V

    .line 470
    .line 471
    .line 472
    invoke-virtual {v1, v0}, Lcom/mycompany/app/view/MyLineText;->s(Landroid/content/Context;)V

    .line 473
    .line 474
    .line 475
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    .line 476
    .line 477
    sget v6, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 478
    .line 479
    const/4 v14, 0x0

    .line 480
    invoke-direct {v4, v14, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 481
    .line 482
    .line 483
    const/high16 v6, 0x3f800000    # 1.0f

    .line 484
    .line 485
    iput v6, v4, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 486
    .line 487
    invoke-virtual {v2, v1, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 488
    .line 489
    .line 490
    new-instance v4, Landroidx/appcompat/widget/AppCompatTextView;

    .line 491
    .line 492
    const/4 v11, 0x0

    .line 493
    invoke-direct {v4, v0, v11}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 494
    .line 495
    .line 496
    const/16 v13, 0x11

    .line 497
    .line 498
    invoke-virtual {v4, v13}, Landroid/widget/TextView;->setGravity(I)V

    .line 499
    .line 500
    .line 501
    const/high16 v11, 0x41800000    # 16.0f

    .line 502
    .line 503
    const/4 v13, 0x1

    .line 504
    invoke-virtual {v4, v13, v11}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 505
    .line 506
    .line 507
    new-instance v11, Landroid/widget/LinearLayout$LayoutParams;

    .line 508
    .line 509
    sget v13, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 510
    .line 511
    invoke-direct {v11, v14, v13}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 512
    .line 513
    .line 514
    iput v6, v11, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 515
    .line 516
    invoke-virtual {v2, v4, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 517
    .line 518
    .line 519
    move-object v2, v4

    .line 520
    const/4 v4, 0x0

    .line 521
    goto :goto_0

    .line 522
    :cond_1
    const/high16 v1, 0x41c00000    # 24.0f

    .line 523
    .line 524
    invoke-static {v0, v1}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 525
    .line 526
    .line 527
    move-result v1

    .line 528
    float-to-int v1, v1

    .line 529
    new-instance v4, Lcom/mycompany/app/view/MyButtonText;

    .line 530
    .line 531
    invoke-direct {v4, v0}, Lcom/mycompany/app/view/MyButtonText;-><init>(Landroid/content/Context;)V

    .line 532
    .line 533
    .line 534
    sget v6, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 535
    .line 536
    sget v11, Lcom/mycompany/app/main/MainApp;->G1:I

    .line 537
    .line 538
    sget v13, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 539
    .line 540
    sget v14, Lcom/mycompany/app/main/MainApp;->G1:I

    .line 541
    .line 542
    invoke-virtual {v4, v6, v11, v13, v14}, Landroid/view/View;->setPadding(IIII)V

    .line 543
    .line 544
    .line 545
    const/16 v6, 0x11

    .line 546
    .line 547
    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setGravity(I)V

    .line 548
    .line 549
    .line 550
    sget v6, Lcom/mycompany/app/main/MainApp;->f1:I

    .line 551
    .line 552
    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setMinHeight(I)V

    .line 553
    .line 554
    .line 555
    const/high16 v6, 0x41800000    # 16.0f

    .line 556
    .line 557
    const/4 v13, 0x1

    .line 558
    invoke-virtual {v4, v13, v6}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 559
    .line 560
    .line 561
    invoke-virtual {v4, v13}, Lcom/mycompany/app/view/MyButtonText;->setBgNorFixed(Z)V

    .line 562
    .line 563
    .line 564
    invoke-virtual {v4, v13}, Lcom/mycompany/app/view/MyButtonText;->setRoundRect(Z)V

    .line 565
    .line 566
    .line 567
    sget v6, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 568
    .line 569
    invoke-virtual {v4, v6}, Lcom/mycompany/app/view/MyButtonText;->setRoundRadius(I)V

    .line 570
    .line 571
    .line 572
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    .line 573
    .line 574
    const/4 v11, -0x2

    .line 575
    const/4 v13, -0x1

    .line 576
    invoke-direct {v6, v13, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 577
    .line 578
    .line 579
    sget v11, Lcom/mycompany/app/main/MainApp;->f1:I

    .line 580
    .line 581
    iput v11, v6, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 582
    .line 583
    invoke-virtual {v6, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 584
    .line 585
    .line 586
    invoke-virtual {v6, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 587
    .line 588
    .line 589
    invoke-virtual {v2, v4, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 590
    .line 591
    .line 592
    const/4 v1, 0x0

    .line 593
    const/4 v2, 0x0

    .line 594
    :goto_0
    iput-object v3, v0, Lcom/mycompany/app/lock/PinActivity;->i1:Lcom/mycompany/app/view/MyMainRelative;

    .line 595
    .line 596
    iput-object v9, v0, Lcom/mycompany/app/lock/PinActivity;->j1:Landroid/widget/ImageView;

    .line 597
    .line 598
    iput-object v7, v0, Lcom/mycompany/app/lock/PinActivity;->k1:Landroidx/appcompat/widget/AppCompatTextView;

    .line 599
    .line 600
    iput-object v15, v0, Lcom/mycompany/app/lock/PinActivity;->l1:Lcom/mycompany/app/view/MyButtonText;

    .line 601
    .line 602
    iput-object v12, v0, Lcom/mycompany/app/lock/PinActivity;->m1:Lcom/mycompany/app/view/MyButtonText;

    .line 603
    .line 604
    iput-object v5, v0, Lcom/mycompany/app/lock/PinActivity;->n1:Lcom/mycompany/app/view/MyButtonText;

    .line 605
    .line 606
    iput-object v10, v0, Lcom/mycompany/app/lock/PinActivity;->o1:Lcom/mycompany/app/view/MyButtonText;

    .line 607
    .line 608
    iput-object v8, v0, Lcom/mycompany/app/lock/PinActivity;->p1:Lcom/mycompany/app/lock/PinLock;

    .line 609
    .line 610
    iput-object v4, v0, Lcom/mycompany/app/lock/PinActivity;->q1:Lcom/mycompany/app/view/MyButtonText;

    .line 611
    .line 612
    iput-object v1, v0, Lcom/mycompany/app/lock/PinActivity;->r1:Lcom/mycompany/app/view/MyLineText;

    .line 613
    .line 614
    iput-object v2, v0, Lcom/mycompany/app/lock/PinActivity;->s1:Landroidx/appcompat/widget/AppCompatTextView;

    .line 615
    .line 616
    invoke-virtual {v0, v3}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(Landroid/view/View;)V

    .line 617
    .line 618
    .line 619
    iget-object v1, v0, Lcom/mycompany/app/lock/PinActivity;->i1:Lcom/mycompany/app/view/MyMainRelative;

    .line 620
    .line 621
    invoke-virtual {v0, v1}, Lcom/mycompany/app/main/MainActivity;->setMainInsetView(Landroid/view/View;)V

    .line 622
    .line 623
    .line 624
    iget-object v1, v0, Lcom/mycompany/app/lock/PinActivity;->i1:Lcom/mycompany/app/view/MyMainRelative;

    .line 625
    .line 626
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 627
    .line 628
    .line 629
    move-result-object v2

    .line 630
    sget-boolean v3, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 631
    .line 632
    if-eqz v3, :cond_2

    .line 633
    .line 634
    const v3, -0xdededf

    .line 635
    .line 636
    .line 637
    goto :goto_1

    .line 638
    :cond_2
    const v3, -0x70708

    .line 639
    .line 640
    .line 641
    :goto_1
    invoke-virtual {v1, v2, v3}, Lcom/mycompany/app/view/MyMainRelative;->b(Landroid/view/Window;I)V

    .line 642
    .line 643
    .line 644
    iget-object v1, v0, Lcom/mycompany/app/lock/PinActivity;->i1:Lcom/mycompany/app/view/MyMainRelative;

    .line 645
    .line 646
    invoke-virtual {v0, v1}, Lcom/mycompany/app/main/MainActivity;->initMainScreenOn(Landroid/view/View;)V

    .line 647
    .line 648
    .line 649
    invoke-virtual {v0}, Lcom/mycompany/app/lock/PinActivity;->A0()V

    .line 650
    .line 651
    .line 652
    return-void
.end method

.method public final onDestroy()V
    .locals 5

    .line 1
    invoke-super {p0}, Lcom/mycompany/app/main/MainActivity;->onDestroy()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/mycompany/app/lock/PinActivity;->g1:Landroid/view/View;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    iget-object v2, p0, Lcom/mycompany/app/lock/PinActivity;->h1:Lcom/mycompany/app/lock/PinActivity$SystemRunnable;

    .line 10
    .line 11
    if-eqz v2, :cond_0

    .line 12
    .line 13
    invoke-virtual {v0, v2}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 14
    .line 15
    .line 16
    :cond_0
    iput-object v1, p0, Lcom/mycompany/app/lock/PinActivity;->g1:Landroid/view/View;

    .line 17
    .line 18
    :cond_1
    iput-object v1, p0, Lcom/mycompany/app/lock/PinActivity;->h1:Lcom/mycompany/app/lock/PinActivity$SystemRunnable;

    .line 19
    .line 20
    iget-object v0, p0, Lcom/mycompany/app/lock/PinActivity;->l1:Lcom/mycompany/app/view/MyButtonText;

    .line 21
    .line 22
    if-eqz v0, :cond_2

    .line 23
    .line 24
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyButtonText;->t()V

    .line 25
    .line 26
    .line 27
    iput-object v1, p0, Lcom/mycompany/app/lock/PinActivity;->l1:Lcom/mycompany/app/view/MyButtonText;

    .line 28
    .line 29
    :cond_2
    iget-object v0, p0, Lcom/mycompany/app/lock/PinActivity;->m1:Lcom/mycompany/app/view/MyButtonText;

    .line 30
    .line 31
    if-eqz v0, :cond_3

    .line 32
    .line 33
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyButtonText;->t()V

    .line 34
    .line 35
    .line 36
    iput-object v1, p0, Lcom/mycompany/app/lock/PinActivity;->m1:Lcom/mycompany/app/view/MyButtonText;

    .line 37
    .line 38
    :cond_3
    iget-object v0, p0, Lcom/mycompany/app/lock/PinActivity;->n1:Lcom/mycompany/app/view/MyButtonText;

    .line 39
    .line 40
    if-eqz v0, :cond_4

    .line 41
    .line 42
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyButtonText;->t()V

    .line 43
    .line 44
    .line 45
    iput-object v1, p0, Lcom/mycompany/app/lock/PinActivity;->n1:Lcom/mycompany/app/view/MyButtonText;

    .line 46
    .line 47
    :cond_4
    iget-object v0, p0, Lcom/mycompany/app/lock/PinActivity;->o1:Lcom/mycompany/app/view/MyButtonText;

    .line 48
    .line 49
    if-eqz v0, :cond_5

    .line 50
    .line 51
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyButtonText;->t()V

    .line 52
    .line 53
    .line 54
    iput-object v1, p0, Lcom/mycompany/app/lock/PinActivity;->o1:Lcom/mycompany/app/view/MyButtonText;

    .line 55
    .line 56
    :cond_5
    iget-object v0, p0, Lcom/mycompany/app/lock/PinActivity;->p1:Lcom/mycompany/app/lock/PinLock;

    .line 57
    .line 58
    if-eqz v0, :cond_a

    .line 59
    .line 60
    iget-object v2, v0, Lcom/mycompany/app/lock/PinLock;->f:[Lcom/mycompany/app/view/MyButtonText;

    .line 61
    .line 62
    if-eqz v2, :cond_8

    .line 63
    .line 64
    array-length v2, v2

    .line 65
    const/4 v3, 0x0

    .line 66
    :goto_0
    if-ge v3, v2, :cond_7

    .line 67
    .line 68
    iget-object v4, v0, Lcom/mycompany/app/lock/PinLock;->f:[Lcom/mycompany/app/view/MyButtonText;

    .line 69
    .line 70
    aget-object v4, v4, v3

    .line 71
    .line 72
    if-eqz v4, :cond_6

    .line 73
    .line 74
    invoke-virtual {v4}, Lcom/mycompany/app/view/MyButtonText;->t()V

    .line 75
    .line 76
    .line 77
    iget-object v4, v0, Lcom/mycompany/app/lock/PinLock;->f:[Lcom/mycompany/app/view/MyButtonText;

    .line 78
    .line 79
    aput-object v1, v4, v3

    .line 80
    .line 81
    :cond_6
    add-int/lit8 v3, v3, 0x1

    .line 82
    .line 83
    goto :goto_0

    .line 84
    :cond_7
    iput-object v1, v0, Lcom/mycompany/app/lock/PinLock;->f:[Lcom/mycompany/app/view/MyButtonText;

    .line 85
    .line 86
    :cond_8
    iget-object v2, v0, Lcom/mycompany/app/lock/PinLock;->g:Lcom/mycompany/app/view/MyButtonImage;

    .line 87
    .line 88
    if-eqz v2, :cond_9

    .line 89
    .line 90
    invoke-virtual {v2}, Lcom/mycompany/app/view/MyButtonImage;->j()V

    .line 91
    .line 92
    .line 93
    iput-object v1, v0, Lcom/mycompany/app/lock/PinLock;->g:Lcom/mycompany/app/view/MyButtonImage;

    .line 94
    .line 95
    :cond_9
    iput-object v1, v0, Lcom/mycompany/app/lock/PinLock;->c:Lcom/mycompany/app/lock/PinLock$PinLockListener;

    .line 96
    .line 97
    iput-object v1, v0, Lcom/mycompany/app/lock/PinLock;->h:Ljava/lang/String;

    .line 98
    .line 99
    iput-object v1, p0, Lcom/mycompany/app/lock/PinActivity;->p1:Lcom/mycompany/app/lock/PinLock;

    .line 100
    .line 101
    :cond_a
    iget-object v0, p0, Lcom/mycompany/app/lock/PinActivity;->q1:Lcom/mycompany/app/view/MyButtonText;

    .line 102
    .line 103
    if-eqz v0, :cond_b

    .line 104
    .line 105
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyButtonText;->t()V

    .line 106
    .line 107
    .line 108
    iput-object v1, p0, Lcom/mycompany/app/lock/PinActivity;->q1:Lcom/mycompany/app/view/MyButtonText;

    .line 109
    .line 110
    :cond_b
    iget-object v0, p0, Lcom/mycompany/app/lock/PinActivity;->r1:Lcom/mycompany/app/view/MyLineText;

    .line 111
    .line 112
    if-eqz v0, :cond_c

    .line 113
    .line 114
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyLineText;->u()V

    .line 115
    .line 116
    .line 117
    iput-object v1, p0, Lcom/mycompany/app/lock/PinActivity;->r1:Lcom/mycompany/app/view/MyLineText;

    .line 118
    .line 119
    :cond_c
    iput-object v1, p0, Lcom/mycompany/app/lock/PinActivity;->i1:Lcom/mycompany/app/view/MyMainRelative;

    .line 120
    .line 121
    iput-object v1, p0, Lcom/mycompany/app/lock/PinActivity;->j1:Landroid/widget/ImageView;

    .line 122
    .line 123
    iput-object v1, p0, Lcom/mycompany/app/lock/PinActivity;->k1:Landroidx/appcompat/widget/AppCompatTextView;

    .line 124
    .line 125
    iput-object v1, p0, Lcom/mycompany/app/lock/PinActivity;->s1:Landroidx/appcompat/widget/AppCompatTextView;

    .line 126
    .line 127
    iput-object v1, p0, Lcom/mycompany/app/lock/PinActivity;->y1:Ljava/lang/String;

    .line 128
    .line 129
    iput-object v1, p0, Lcom/mycompany/app/lock/PinActivity;->v1:Ljava/lang/String;

    .line 130
    .line 131
    return-void
.end method

.method public final onNewIntent(Landroid/content/Intent;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroidx/activity/ComponentActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, p1}, Lcom/mycompany/app/lock/PinActivity;->y0(Landroid/content/Intent;)V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/mycompany/app/lock/PinActivity;->A0()V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public final onPause()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/mycompany/app/main/MainActivity;->onPause()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/mycompany/app/lock/PinActivity;->z0()V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public final onResume()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/mycompany/app/main/MainActivity;->onResume()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/mycompany/app/main/MainActivity;->O0:Landroid/os/Handler;

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    new-instance v1, Lcom/mycompany/app/lock/PinActivity$2;

    .line 10
    .line 11
    invoke-direct {v1, p0}, Lcom/mycompany/app/lock/PinActivity$2;-><init>(Lcom/mycompany/app/lock/PinActivity;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public final onWindowFocusChanged(Z)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    .line 2
    .line 3
    .line 4
    iget p1, p0, Lcom/mycompany/app/lock/PinActivity;->u1:I

    .line 5
    .line 6
    const/4 v0, 0x3

    .line 7
    if-ne p1, v0, :cond_0

    .line 8
    .line 9
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 10
    .line 11
    const/16 v0, 0x1e

    .line 12
    .line 13
    if-ge p1, v0, :cond_0

    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/mycompany/app/main/MainActivity;->r0()V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method public final y0(Landroid/content/Intent;)V
    .locals 3

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    const-string v0, "EXTRA_PASS"

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    iput v0, p0, Lcom/mycompany/app/lock/PinActivity;->t1:I

    .line 12
    .line 13
    const-string v0, "EXTRA_TYPE"

    .line 14
    .line 15
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    iput v0, p0, Lcom/mycompany/app/lock/PinActivity;->u1:I

    .line 20
    .line 21
    if-nez v0, :cond_1

    .line 22
    .line 23
    const-string v0, "EXTRA_PATH"

    .line 24
    .line 25
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    iput-object v0, p0, Lcom/mycompany/app/lock/PinActivity;->v1:Ljava/lang/String;

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_1
    const/4 v0, 0x0

    .line 33
    iput-object v0, p0, Lcom/mycompany/app/lock/PinActivity;->v1:Ljava/lang/String;

    .line 34
    .line 35
    :goto_0
    iget v0, p0, Lcom/mycompany/app/lock/PinActivity;->u1:I

    .line 36
    .line 37
    const/4 v2, 0x4

    .line 38
    if-ne v0, v2, :cond_2

    .line 39
    .line 40
    const-string v0, "EXTRA_VOICE"

    .line 41
    .line 42
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 43
    .line 44
    .line 45
    move-result p1

    .line 46
    iput-boolean p1, p0, Lcom/mycompany/app/lock/PinActivity;->w1:Z

    .line 47
    .line 48
    return-void

    .line 49
    :cond_2
    iput-boolean v1, p0, Lcom/mycompany/app/lock/PinActivity;->w1:Z

    .line 50
    .line 51
    return-void
.end method

.method public final z0()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/lock/PinActivity;->z1:Lcom/mycompany/app/dialog/DialogLockReset;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogLockReset;->dismiss()V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/mycompany/app/lock/PinActivity;->z1:Lcom/mycompany/app/dialog/DialogLockReset;

    .line 10
    .line 11
    :cond_0
    return-void
.end method
