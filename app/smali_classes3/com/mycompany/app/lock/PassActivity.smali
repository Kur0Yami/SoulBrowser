.class public Lcom/mycompany/app/lock/PassActivity;
.super Lcom/mycompany/app/main/MainActivity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mycompany/app/lock/PassActivity$SystemRunnable;
    }
.end annotation


# static fields
.field public static final synthetic y1:I


# instance fields
.field public f1:Landroid/content/Context;

.field public g1:Landroid/view/View;

.field public h1:Lcom/mycompany/app/lock/PassActivity$SystemRunnable;

.field public i1:Lcom/mycompany/app/view/MyMainRelative;

.field public j1:Landroid/widget/ImageView;

.field public k1:Landroidx/appcompat/widget/AppCompatTextView;

.field public l1:Lcom/mycompany/app/view/MyButtonRelative;

.field public m1:Lcom/mycompany/app/view/MyEditPure;

.field public n1:Lcom/mycompany/app/view/MyButtonImage;

.field public o1:Lcom/mycompany/app/view/MyButtonText;

.field public p1:Lcom/mycompany/app/view/MyLineText;

.field public q1:Landroidx/appcompat/widget/AppCompatTextView;

.field public r1:I

.field public s1:I

.field public t1:Ljava/lang/String;

.field public u1:Z

.field public v1:Z

.field public w1:Ljava/lang/String;

.field public x1:Lcom/mycompany/app/dialog/DialogLockReset;


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

.method public static u0(Lcom/mycompany/app/lock/PassActivity;)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/lock/PassActivity;->m1:Lcom/mycompany/app/view/MyEditPure;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto/16 :goto_1

    .line 6
    .line 7
    :cond_0
    const/4 v1, 0x0

    .line 8
    invoke-static {v0, v1}, Lcom/mycompany/app/main/MainUtil;->Q0(Landroid/widget/EditText;Z)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    if-eqz v2, :cond_1

    .line 17
    .line 18
    goto/16 :goto_1

    .line 19
    .line 20
    :cond_1
    iget v2, p0, Lcom/mycompany/app/lock/PassActivity;->s1:I

    .line 21
    .line 22
    const/4 v3, -0x1

    .line 23
    const/4 v4, 0x2

    .line 24
    const/4 v5, 0x4

    .line 25
    const/4 v6, 0x1

    .line 26
    const/4 v7, 0x3

    .line 27
    if-ne v2, v6, :cond_d

    .line 28
    .line 29
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    if-ge v2, v5, :cond_2

    .line 34
    .line 35
    goto/16 :goto_1

    .line 36
    .line 37
    :cond_2
    iget-object v2, p0, Lcom/mycompany/app/lock/PassActivity;->p1:Lcom/mycompany/app/view/MyLineText;

    .line 38
    .line 39
    if-eqz v2, :cond_4

    .line 40
    .line 41
    invoke-virtual {v2, v6}, Landroid/view/View;->setEnabled(Z)V

    .line 42
    .line 43
    .line 44
    iget-object v2, p0, Lcom/mycompany/app/lock/PassActivity;->p1:Lcom/mycompany/app/view/MyLineText;

    .line 45
    .line 46
    sget-boolean v5, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 47
    .line 48
    if-eqz v5, :cond_3

    .line 49
    .line 50
    const v5, -0x50506

    .line 51
    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_3
    const v5, -0xe19938

    .line 55
    .line 56
    .line 57
    :goto_0
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 58
    .line 59
    .line 60
    :cond_4
    iget-boolean v2, p0, Lcom/mycompany/app/lock/PassActivity;->v1:Z

    .line 61
    .line 62
    const v5, -0x252526

    .line 63
    .line 64
    .line 65
    const v8, -0x7f7f80

    .line 66
    .line 67
    .line 68
    if-nez v2, :cond_6

    .line 69
    .line 70
    iput-boolean v6, p0, Lcom/mycompany/app/lock/PassActivity;->v1:Z

    .line 71
    .line 72
    iput-object v0, p0, Lcom/mycompany/app/lock/PassActivity;->w1:Ljava/lang/String;

    .line 73
    .line 74
    iget-object v0, p0, Lcom/mycompany/app/lock/PassActivity;->m1:Lcom/mycompany/app/view/MyEditPure;

    .line 75
    .line 76
    const/4 v2, 0x0

    .line 77
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 78
    .line 79
    .line 80
    iget-object v0, p0, Lcom/mycompany/app/lock/PassActivity;->k1:Landroidx/appcompat/widget/AppCompatTextView;

    .line 81
    .line 82
    sget v2, Lnet/kaki87/soul2/testing/R$string;->reinput:I

    .line 83
    .line 84
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 85
    .line 86
    .line 87
    iget-object v0, p0, Lcom/mycompany/app/lock/PassActivity;->q1:Landroidx/appcompat/widget/AppCompatTextView;

    .line 88
    .line 89
    if-eqz v0, :cond_8

    .line 90
    .line 91
    sget v2, Lnet/kaki87/soul2/testing/R$string;->apply:I

    .line 92
    .line 93
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 94
    .line 95
    .line 96
    iget-object v0, p0, Lcom/mycompany/app/lock/PassActivity;->q1:Landroidx/appcompat/widget/AppCompatTextView;

    .line 97
    .line 98
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 99
    .line 100
    .line 101
    iget-object p0, p0, Lcom/mycompany/app/lock/PassActivity;->q1:Landroidx/appcompat/widget/AppCompatTextView;

    .line 102
    .line 103
    sget-boolean v0, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 104
    .line 105
    if-eqz v0, :cond_5

    .line 106
    .line 107
    move v5, v8

    .line 108
    :cond_5
    invoke-virtual {p0, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 109
    .line 110
    .line 111
    return-void

    .line 112
    :cond_6
    iget-object v2, p0, Lcom/mycompany/app/lock/PassActivity;->w1:Ljava/lang/String;

    .line 113
    .line 114
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 115
    .line 116
    .line 117
    move-result v0

    .line 118
    if-nez v0, :cond_9

    .line 119
    .line 120
    iget-object v0, p0, Lcom/mycompany/app/lock/PassActivity;->m1:Lcom/mycompany/app/view/MyEditPure;

    .line 121
    .line 122
    invoke-virtual {v0}, Landroid/widget/EditText;->selectAll()V

    .line 123
    .line 124
    .line 125
    iget-object v0, p0, Lcom/mycompany/app/lock/PassActivity;->k1:Landroidx/appcompat/widget/AppCompatTextView;

    .line 126
    .line 127
    sget v2, Lnet/kaki87/soul2/testing/R$string;->wrong_input:I

    .line 128
    .line 129
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 130
    .line 131
    .line 132
    iget-object v0, p0, Lcom/mycompany/app/lock/PassActivity;->q1:Landroidx/appcompat/widget/AppCompatTextView;

    .line 133
    .line 134
    if-eqz v0, :cond_8

    .line 135
    .line 136
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 137
    .line 138
    .line 139
    iget-object p0, p0, Lcom/mycompany/app/lock/PassActivity;->q1:Landroidx/appcompat/widget/AppCompatTextView;

    .line 140
    .line 141
    sget-boolean v0, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 142
    .line 143
    if-eqz v0, :cond_7

    .line 144
    .line 145
    move v5, v8

    .line 146
    :cond_7
    invoke-virtual {p0, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 147
    .line 148
    .line 149
    :cond_8
    :goto_1
    return-void

    .line 150
    :cond_9
    iget v0, p0, Lcom/mycompany/app/lock/PassActivity;->r1:I

    .line 151
    .line 152
    if-ne v0, v6, :cond_a

    .line 153
    .line 154
    sput v7, Lcom/mycompany/app/pref/PrefSecret;->z:I

    .line 155
    .line 156
    iget-object v0, p0, Lcom/mycompany/app/lock/PassActivity;->w1:Ljava/lang/String;

    .line 157
    .line 158
    sput-object v0, Lcom/mycompany/app/pref/PrefSecret;->A:Ljava/lang/String;

    .line 159
    .line 160
    iget-object v0, p0, Lcom/mycompany/app/lock/PassActivity;->f1:Landroid/content/Context;

    .line 161
    .line 162
    invoke-static {v0}, Lcom/mycompany/app/pref/PrefSecret;->v(Landroid/content/Context;)V

    .line 163
    .line 164
    .line 165
    goto :goto_2

    .line 166
    :cond_a
    if-ne v0, v4, :cond_b

    .line 167
    .line 168
    sput v7, Lcom/mycompany/app/pref/PrefSecret;->B:I

    .line 169
    .line 170
    iget-object v0, p0, Lcom/mycompany/app/lock/PassActivity;->w1:Ljava/lang/String;

    .line 171
    .line 172
    sput-object v0, Lcom/mycompany/app/pref/PrefSecret;->C:Ljava/lang/String;

    .line 173
    .line 174
    iget-object v0, p0, Lcom/mycompany/app/lock/PassActivity;->f1:Landroid/content/Context;

    .line 175
    .line 176
    invoke-static {v0}, Lcom/mycompany/app/pref/PrefSecret;->t(Landroid/content/Context;)V

    .line 177
    .line 178
    .line 179
    goto :goto_2

    .line 180
    :cond_b
    if-ne v0, v7, :cond_c

    .line 181
    .line 182
    sput v7, Lcom/mycompany/app/pref/PrefSecret;->D:I

    .line 183
    .line 184
    iget-object v0, p0, Lcom/mycompany/app/lock/PassActivity;->w1:Ljava/lang/String;

    .line 185
    .line 186
    sput-object v0, Lcom/mycompany/app/pref/PrefSecret;->E:Ljava/lang/String;

    .line 187
    .line 188
    iget-object v0, p0, Lcom/mycompany/app/lock/PassActivity;->f1:Landroid/content/Context;

    .line 189
    .line 190
    invoke-static {v0}, Lcom/mycompany/app/pref/PrefSecret;->w(Landroid/content/Context;)V

    .line 191
    .line 192
    .line 193
    goto :goto_2

    .line 194
    :cond_c
    sput v7, Lcom/mycompany/app/pref/PrefSecret;->s:I

    .line 195
    .line 196
    iget-object v0, p0, Lcom/mycompany/app/lock/PassActivity;->w1:Ljava/lang/String;

    .line 197
    .line 198
    sput-object v0, Lcom/mycompany/app/pref/PrefSecret;->t:Ljava/lang/String;

    .line 199
    .line 200
    iget-object v0, p0, Lcom/mycompany/app/lock/PassActivity;->f1:Landroid/content/Context;

    .line 201
    .line 202
    invoke-static {v0}, Lcom/mycompany/app/pref/PrefSecret;->u(Landroid/content/Context;)V

    .line 203
    .line 204
    .line 205
    :goto_2
    invoke-virtual {p0, v3}, Landroid/app/Activity;->setResult(I)V

    .line 206
    .line 207
    .line 208
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 209
    .line 210
    .line 211
    return-void

    .line 212
    :cond_d
    iget v1, p0, Lcom/mycompany/app/lock/PassActivity;->r1:I

    .line 213
    .line 214
    if-ne v1, v6, :cond_e

    .line 215
    .line 216
    sget-object v1, Lcom/mycompany/app/pref/PrefSecret;->A:Ljava/lang/String;

    .line 217
    .line 218
    goto :goto_3

    .line 219
    :cond_e
    if-ne v1, v4, :cond_f

    .line 220
    .line 221
    sget-object v1, Lcom/mycompany/app/pref/PrefSecret;->C:Ljava/lang/String;

    .line 222
    .line 223
    goto :goto_3

    .line 224
    :cond_f
    if-ne v1, v7, :cond_10

    .line 225
    .line 226
    sget-object v1, Lcom/mycompany/app/pref/PrefSecret;->E:Ljava/lang/String;

    .line 227
    .line 228
    goto :goto_3

    .line 229
    :cond_10
    sget-object v1, Lcom/mycompany/app/pref/PrefSecret;->t:Ljava/lang/String;

    .line 230
    .line 231
    :goto_3
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 232
    .line 233
    .line 234
    move-result v0

    .line 235
    if-nez v0, :cond_11

    .line 236
    .line 237
    iget-object v0, p0, Lcom/mycompany/app/lock/PassActivity;->m1:Lcom/mycompany/app/view/MyEditPure;

    .line 238
    .line 239
    invoke-virtual {v0}, Landroid/widget/EditText;->selectAll()V

    .line 240
    .line 241
    .line 242
    iget-object p0, p0, Lcom/mycompany/app/lock/PassActivity;->k1:Landroidx/appcompat/widget/AppCompatTextView;

    .line 243
    .line 244
    sget v0, Lnet/kaki87/soul2/testing/R$string;->wrong_input:I

    .line 245
    .line 246
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(I)V

    .line 247
    .line 248
    .line 249
    return-void

    .line 250
    :cond_11
    iget v0, p0, Lcom/mycompany/app/lock/PassActivity;->s1:I

    .line 251
    .line 252
    if-ne v0, v5, :cond_12

    .line 253
    .line 254
    invoke-virtual {p0}, Lcom/mycompany/app/lock/PassActivity;->x0()V

    .line 255
    .line 256
    .line 257
    return-void

    .line 258
    :cond_12
    iget-object v0, p0, Lcom/mycompany/app/lock/PassActivity;->t1:Ljava/lang/String;

    .line 259
    .line 260
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 261
    .line 262
    .line 263
    move-result v0

    .line 264
    if-nez v0, :cond_13

    .line 265
    .line 266
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 267
    .line 268
    .line 269
    move-result-object v0

    .line 270
    invoke-static {v0}, Lcom/mycompany/app/main/MainUtil;->o4(Landroid/content/Context;)Landroid/content/Intent;

    .line 271
    .line 272
    .line 273
    move-result-object v0

    .line 274
    const-string v1, "EXTRA_PATH"

    .line 275
    .line 276
    iget-object v2, p0, Lcom/mycompany/app/lock/PassActivity;->t1:Ljava/lang/String;

    .line 277
    .line 278
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 279
    .line 280
    .line 281
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 282
    .line 283
    .line 284
    return-void

    .line 285
    :cond_13
    invoke-virtual {p0, v3}, Landroid/app/Activity;->setResult(I)V

    .line 286
    .line 287
    .line 288
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 289
    .line 290
    .line 291
    return-void
.end method

.method public static v0(Lcom/mycompany/app/lock/PassActivity;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/lock/PassActivity;->x1:Lcom/mycompany/app/dialog/DialogLockReset;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-virtual {p0}, Lcom/mycompany/app/lock/PassActivity;->y0()V

    .line 7
    .line 8
    .line 9
    new-instance v0, Lcom/mycompany/app/dialog/DialogLockReset;

    .line 10
    .line 11
    iget v1, p0, Lcom/mycompany/app/lock/PassActivity;->r1:I

    .line 12
    .line 13
    new-instance v2, Lcom/mycompany/app/lock/PassActivity$13;

    .line 14
    .line 15
    invoke-direct {v2, p0}, Lcom/mycompany/app/lock/PassActivity$13;-><init>(Lcom/mycompany/app/lock/PassActivity;)V

    .line 16
    .line 17
    .line 18
    invoke-direct {v0, p0, v1, v2}, Lcom/mycompany/app/dialog/DialogLockReset;-><init>(Landroid/app/Activity;ILcom/mycompany/app/dialog/DialogSetFull$DialogApplyListener;)V

    .line 19
    .line 20
    .line 21
    iput-object v0, p0, Lcom/mycompany/app/lock/PassActivity;->x1:Lcom/mycompany/app/dialog/DialogLockReset;

    .line 22
    .line 23
    new-instance v1, Lcom/mycompany/app/lock/PassActivity$14;

    .line 24
    .line 25
    invoke-direct {v1, p0}, Lcom/mycompany/app/lock/PassActivity$14;-><init>(Lcom/mycompany/app/lock/PassActivity;)V

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
.method public final l0()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/mycompany/app/lock/PassActivity;->s1:I

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
    invoke-virtual {p0}, Lcom/mycompany/app/lock/PassActivity;->l0()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 16

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
    iput-object v1, v0, Lcom/mycompany/app/lock/PassActivity;->f1:Landroid/content/Context;

    .line 17
    .line 18
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-virtual {v0, v1}, Lcom/mycompany/app/lock/PassActivity;->w0(Landroid/content/Intent;)V

    .line 23
    .line 24
    .line 25
    new-instance v1, Lcom/mycompany/app/lock/PassActivity$15;

    .line 26
    .line 27
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 28
    .line 29
    .line 30
    iput-object v1, v0, Lcom/mycompany/app/main/MainActivity;->V0:Lcom/mycompany/app/main/MainActivity$SystemBarListener;

    .line 31
    .line 32
    iget v1, v0, Lcom/mycompany/app/lock/PassActivity;->s1:I

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
    iput-object v1, v0, Lcom/mycompany/app/lock/PassActivity;->g1:Landroid/view/View;

    .line 57
    .line 58
    if-eqz v1, :cond_0

    .line 59
    .line 60
    new-instance v3, Lcom/mycompany/app/lock/PassActivity$SystemRunnable;

    .line 61
    .line 62
    invoke-direct {v3, v0}, Lcom/mycompany/app/lock/PassActivity$SystemRunnable;-><init>(Lcom/mycompany/app/lock/PassActivity;)V

    .line 63
    .line 64
    .line 65
    iput-object v3, v0, Lcom/mycompany/app/lock/PassActivity;->h1:Lcom/mycompany/app/lock/PassActivity$SystemRunnable;

    .line 66
    .line 67
    new-instance v3, Lcom/mycompany/app/lock/PassActivity$1;

    .line 68
    .line 69
    invoke-direct {v3, v0}, Lcom/mycompany/app/lock/PassActivity$1;-><init>(Lcom/mycompany/app/lock/PassActivity;)V

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
    move-result-object v7

    .line 105
    invoke-virtual {v3, v4, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 106
    .line 107
    .line 108
    new-instance v7, Landroid/view/View;

    .line 109
    .line 110
    invoke-direct {v7, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 111
    .line 112
    .line 113
    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    .line 114
    .line 115
    const/4 v9, 0x0

    .line 116
    invoke-direct {v8, v5, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 117
    .line 118
    .line 119
    const/high16 v10, 0x40000000    # 2.0f

    .line 120
    .line 121
    iput v10, v8, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 122
    .line 123
    invoke-virtual {v4, v7, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 124
    .line 125
    .line 126
    const/high16 v7, 0x42a80000    # 84.0f

    .line 127
    .line 128
    invoke-static {v0, v7}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 129
    .line 130
    .line 131
    move-result v7

    .line 132
    float-to-int v7, v7

    .line 133
    new-instance v8, Landroid/widget/ImageView;

    .line 134
    .line 135
    invoke-direct {v8, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 136
    .line 137
    .line 138
    new-instance v10, Landroid/widget/LinearLayout$LayoutParams;

    .line 139
    .line 140
    invoke-direct {v10, v7, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 141
    .line 142
    .line 143
    iput v6, v10, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 144
    .line 145
    invoke-virtual {v4, v8, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 146
    .line 147
    .line 148
    new-instance v7, Landroid/view/View;

    .line 149
    .line 150
    invoke-direct {v7, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 151
    .line 152
    .line 153
    new-instance v10, Landroid/widget/LinearLayout$LayoutParams;

    .line 154
    .line 155
    invoke-direct {v10, v5, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 156
    .line 157
    .line 158
    const/high16 v11, 0x3f000000    # 0.5f

    .line 159
    .line 160
    iput v11, v10, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 161
    .line 162
    invoke-virtual {v4, v7, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 163
    .line 164
    .line 165
    new-instance v7, Landroidx/appcompat/widget/AppCompatTextView;

    .line 166
    .line 167
    const/4 v10, 0x0

    .line 168
    invoke-direct {v7, v0, v10}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 169
    .line 170
    .line 171
    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 172
    .line 173
    .line 174
    const/high16 v12, 0x41800000    # 16.0f

    .line 175
    .line 176
    invoke-virtual {v7, v6, v12}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 177
    .line 178
    .line 179
    new-instance v13, Landroid/widget/LinearLayout$LayoutParams;

    .line 180
    .line 181
    const/4 v14, -0x2

    .line 182
    invoke-direct {v13, v14, v14}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 183
    .line 184
    .line 185
    iput v6, v13, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 186
    .line 187
    invoke-virtual {v4, v7, v13}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 188
    .line 189
    .line 190
    new-instance v13, Landroid/view/View;

    .line 191
    .line 192
    invoke-direct {v13, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 193
    .line 194
    .line 195
    new-instance v15, Landroid/widget/LinearLayout$LayoutParams;

    .line 196
    .line 197
    invoke-direct {v15, v5, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 198
    .line 199
    .line 200
    iput v11, v15, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 201
    .line 202
    invoke-virtual {v4, v13, v15}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 203
    .line 204
    .line 205
    const/high16 v11, 0x41c00000    # 24.0f

    .line 206
    .line 207
    invoke-static {v0, v11}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 208
    .line 209
    .line 210
    move-result v11

    .line 211
    float-to-int v11, v11

    .line 212
    new-instance v13, Lcom/mycompany/app/view/MyButtonRelative;

    .line 213
    .line 214
    invoke-direct {v13, v0}, Lcom/mycompany/app/view/MyButtonRelative;-><init>(Landroid/content/Context;)V

    .line 215
    .line 216
    .line 217
    sget v15, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 218
    .line 219
    invoke-virtual {v13, v15, v9, v15, v9}, Landroid/view/View;->setPadding(IIII)V

    .line 220
    .line 221
    .line 222
    invoke-virtual {v13, v11, v6}, Lcom/mycompany/app/view/MyButtonRelative;->e(IZ)V

    .line 223
    .line 224
    .line 225
    new-instance v15, Landroid/widget/LinearLayout$LayoutParams;

    .line 226
    .line 227
    sget v14, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 228
    .line 229
    invoke-direct {v15, v5, v14}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 230
    .line 231
    .line 232
    invoke-virtual {v15, v11}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 233
    .line 234
    .line 235
    invoke-virtual {v15, v11}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 236
    .line 237
    .line 238
    invoke-virtual {v4, v13, v15}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 239
    .line 240
    .line 241
    iget v14, v0, Lcom/mycompany/app/lock/PassActivity;->s1:I

    .line 242
    .line 243
    if-eq v14, v6, :cond_1

    .line 244
    .line 245
    new-instance v14, Lcom/mycompany/app/view/MyButtonImage;

    .line 246
    .line 247
    invoke-direct {v14, v0}, Lcom/mycompany/app/view/MyButtonImage;-><init>(Landroid/content/Context;)V

    .line 248
    .line 249
    .line 250
    sget-object v15, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    .line 251
    .line 252
    invoke-virtual {v14, v15}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 253
    .line 254
    .line 255
    new-instance v15, Landroid/widget/RelativeLayout$LayoutParams;

    .line 256
    .line 257
    sget v9, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 258
    .line 259
    invoke-direct {v15, v9, v9}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 260
    .line 261
    .line 262
    const/16 v9, 0x15

    .line 263
    .line 264
    invoke-virtual {v15, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 265
    .line 266
    .line 267
    invoke-virtual {v13, v14, v15}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 268
    .line 269
    .line 270
    goto :goto_0

    .line 271
    :cond_1
    move-object v14, v10

    .line 272
    :goto_0
    new-instance v9, Lcom/mycompany/app/view/MyEditPure;

    .line 273
    .line 274
    invoke-direct {v9, v0}, Lcom/mycompany/app/view/MyEditPure;-><init>(Landroid/content/Context;)V

    .line 275
    .line 276
    .line 277
    const/16 v15, 0x11

    .line 278
    .line 279
    invoke-virtual {v9, v15}, Landroid/widget/TextView;->setGravity(I)V

    .line 280
    .line 281
    .line 282
    invoke-virtual {v9, v6}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 283
    .line 284
    .line 285
    invoke-virtual {v9, v2}, Landroid/view/View;->setTextDirection(I)V

    .line 286
    .line 287
    .line 288
    invoke-virtual {v9, v6, v12}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 289
    .line 290
    .line 291
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 292
    .line 293
    const/16 v12, 0x1d

    .line 294
    .line 295
    if-lt v2, v12, :cond_2

    .line 296
    .line 297
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->edit_cursor:I

    .line 298
    .line 299
    invoke-virtual {v9, v2}, Landroid/widget/EditText;->setTextCursorDrawable(I)V

    .line 300
    .line 301
    .line 302
    :cond_2
    const v2, -0x7e7e7f

    .line 303
    .line 304
    .line 305
    invoke-virtual {v9, v2}, Landroid/widget/TextView;->setHintTextColor(I)V

    .line 306
    .line 307
    .line 308
    const/high16 v2, 0x10000000

    .line 309
    .line 310
    invoke-virtual {v9, v2}, Landroid/widget/TextView;->setImeOptions(I)V

    .line 311
    .line 312
    .line 313
    invoke-virtual {v9, v6}, Landroid/widget/TextView;->setSelectAllOnFocus(Z)V

    .line 314
    .line 315
    .line 316
    invoke-virtual {v9, v10}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 317
    .line 318
    .line 319
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 320
    .line 321
    invoke-direct {v2, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 322
    .line 323
    .line 324
    iget v12, v0, Lcom/mycompany/app/lock/PassActivity;->s1:I

    .line 325
    .line 326
    if-eq v12, v6, :cond_3

    .line 327
    .line 328
    sget v12, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 329
    .line 330
    invoke-virtual {v2, v12}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 331
    .line 332
    .line 333
    sget v12, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 334
    .line 335
    invoke-virtual {v2, v12}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 336
    .line 337
    .line 338
    :cond_3
    invoke-virtual {v13, v9, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 339
    .line 340
    .line 341
    new-instance v2, Landroid/view/View;

    .line 342
    .line 343
    invoke-direct {v2, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 344
    .line 345
    .line 346
    new-instance v12, Landroid/widget/LinearLayout$LayoutParams;

    .line 347
    .line 348
    const/4 v10, 0x0

    .line 349
    invoke-direct {v12, v5, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 350
    .line 351
    .line 352
    const/high16 v15, 0x3f800000    # 1.0f

    .line 353
    .line 354
    iput v15, v12, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 355
    .line 356
    invoke-virtual {v4, v2, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 357
    .line 358
    .line 359
    new-instance v2, Landroid/widget/LinearLayout;

    .line 360
    .line 361
    invoke-direct {v2, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 362
    .line 363
    .line 364
    invoke-virtual {v2, v1}, Landroid/view/View;->setId(I)V

    .line 365
    .line 366
    .line 367
    invoke-virtual {v2, v10}, Landroid/widget/LinearLayout;->setBaselineAligned(Z)V

    .line 368
    .line 369
    .line 370
    invoke-virtual {v2, v10}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 371
    .line 372
    .line 373
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 374
    .line 375
    const/4 v4, -0x2

    .line 376
    invoke-direct {v1, v5, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 377
    .line 378
    .line 379
    const/16 v4, 0xc

    .line 380
    .line 381
    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 382
    .line 383
    .line 384
    invoke-virtual {v3, v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 385
    .line 386
    .line 387
    iget v1, v0, Lcom/mycompany/app/lock/PassActivity;->s1:I

    .line 388
    .line 389
    if-ne v1, v6, :cond_4

    .line 390
    .line 391
    new-instance v1, Lcom/mycompany/app/view/MyLineText;

    .line 392
    .line 393
    invoke-direct {v1, v0}, Lcom/mycompany/app/view/MyLineText;-><init>(Landroid/content/Context;)V

    .line 394
    .line 395
    .line 396
    const/16 v4, 0x11

    .line 397
    .line 398
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setGravity(I)V

    .line 399
    .line 400
    .line 401
    const/high16 v4, 0x41800000    # 16.0f

    .line 402
    .line 403
    invoke-virtual {v1, v6, v4}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 404
    .line 405
    .line 406
    sget v4, Lnet/kaki87/soul2/testing/R$string;->retry:I

    .line 407
    .line 408
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(I)V

    .line 409
    .line 410
    .line 411
    invoke-virtual {v1, v0}, Lcom/mycompany/app/view/MyLineText;->s(Landroid/content/Context;)V

    .line 412
    .line 413
    .line 414
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    .line 415
    .line 416
    sget v5, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 417
    .line 418
    const/4 v10, 0x0

    .line 419
    invoke-direct {v4, v10, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 420
    .line 421
    .line 422
    iput v15, v4, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 423
    .line 424
    invoke-virtual {v2, v1, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 425
    .line 426
    .line 427
    new-instance v4, Landroidx/appcompat/widget/AppCompatTextView;

    .line 428
    .line 429
    const/4 v5, 0x0

    .line 430
    invoke-direct {v4, v0, v5}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 431
    .line 432
    .line 433
    const/16 v5, 0x11

    .line 434
    .line 435
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setGravity(I)V

    .line 436
    .line 437
    .line 438
    const/high16 v5, 0x41800000    # 16.0f

    .line 439
    .line 440
    invoke-virtual {v4, v6, v5}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 441
    .line 442
    .line 443
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    .line 444
    .line 445
    sget v6, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 446
    .line 447
    invoke-direct {v5, v10, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 448
    .line 449
    .line 450
    iput v15, v5, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 451
    .line 452
    invoke-virtual {v2, v4, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 453
    .line 454
    .line 455
    const/4 v5, 0x0

    .line 456
    goto :goto_1

    .line 457
    :cond_4
    new-instance v1, Lcom/mycompany/app/view/MyButtonText;

    .line 458
    .line 459
    invoke-direct {v1, v0}, Lcom/mycompany/app/view/MyButtonText;-><init>(Landroid/content/Context;)V

    .line 460
    .line 461
    .line 462
    sget v4, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 463
    .line 464
    sget v10, Lcom/mycompany/app/main/MainApp;->G1:I

    .line 465
    .line 466
    sget v12, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 467
    .line 468
    sget v15, Lcom/mycompany/app/main/MainApp;->G1:I

    .line 469
    .line 470
    invoke-virtual {v1, v4, v10, v12, v15}, Landroid/view/View;->setPadding(IIII)V

    .line 471
    .line 472
    .line 473
    const/16 v4, 0x11

    .line 474
    .line 475
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setGravity(I)V

    .line 476
    .line 477
    .line 478
    sget v4, Lcom/mycompany/app/main/MainApp;->f1:I

    .line 479
    .line 480
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setMinHeight(I)V

    .line 481
    .line 482
    .line 483
    const/high16 v4, 0x41800000    # 16.0f

    .line 484
    .line 485
    invoke-virtual {v1, v6, v4}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 486
    .line 487
    .line 488
    invoke-virtual {v1, v6}, Lcom/mycompany/app/view/MyButtonText;->setBgNorFixed(Z)V

    .line 489
    .line 490
    .line 491
    invoke-virtual {v1, v6}, Lcom/mycompany/app/view/MyButtonText;->setRoundRect(Z)V

    .line 492
    .line 493
    .line 494
    sget v4, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 495
    .line 496
    invoke-virtual {v1, v4}, Lcom/mycompany/app/view/MyButtonText;->setRoundRadius(I)V

    .line 497
    .line 498
    .line 499
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    .line 500
    .line 501
    const/4 v6, -0x2

    .line 502
    invoke-direct {v4, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 503
    .line 504
    .line 505
    sget v5, Lcom/mycompany/app/main/MainApp;->f1:I

    .line 506
    .line 507
    iput v5, v4, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 508
    .line 509
    invoke-virtual {v4, v11}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 510
    .line 511
    .line 512
    invoke-virtual {v4, v11}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 513
    .line 514
    .line 515
    invoke-virtual {v2, v1, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 516
    .line 517
    .line 518
    move-object v5, v1

    .line 519
    const/4 v1, 0x0

    .line 520
    const/4 v4, 0x0

    .line 521
    :goto_1
    iput-object v3, v0, Lcom/mycompany/app/lock/PassActivity;->i1:Lcom/mycompany/app/view/MyMainRelative;

    .line 522
    .line 523
    iput-object v8, v0, Lcom/mycompany/app/lock/PassActivity;->j1:Landroid/widget/ImageView;

    .line 524
    .line 525
    iput-object v7, v0, Lcom/mycompany/app/lock/PassActivity;->k1:Landroidx/appcompat/widget/AppCompatTextView;

    .line 526
    .line 527
    iput-object v13, v0, Lcom/mycompany/app/lock/PassActivity;->l1:Lcom/mycompany/app/view/MyButtonRelative;

    .line 528
    .line 529
    iput-object v9, v0, Lcom/mycompany/app/lock/PassActivity;->m1:Lcom/mycompany/app/view/MyEditPure;

    .line 530
    .line 531
    iput-object v14, v0, Lcom/mycompany/app/lock/PassActivity;->n1:Lcom/mycompany/app/view/MyButtonImage;

    .line 532
    .line 533
    iput-object v5, v0, Lcom/mycompany/app/lock/PassActivity;->o1:Lcom/mycompany/app/view/MyButtonText;

    .line 534
    .line 535
    iput-object v1, v0, Lcom/mycompany/app/lock/PassActivity;->p1:Lcom/mycompany/app/view/MyLineText;

    .line 536
    .line 537
    iput-object v4, v0, Lcom/mycompany/app/lock/PassActivity;->q1:Landroidx/appcompat/widget/AppCompatTextView;

    .line 538
    .line 539
    invoke-virtual {v0, v3}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(Landroid/view/View;)V

    .line 540
    .line 541
    .line 542
    iget-object v1, v0, Lcom/mycompany/app/lock/PassActivity;->i1:Lcom/mycompany/app/view/MyMainRelative;

    .line 543
    .line 544
    invoke-virtual {v0, v1}, Lcom/mycompany/app/main/MainActivity;->setMainInsetView(Landroid/view/View;)V

    .line 545
    .line 546
    .line 547
    iget-object v1, v0, Lcom/mycompany/app/lock/PassActivity;->i1:Lcom/mycompany/app/view/MyMainRelative;

    .line 548
    .line 549
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 550
    .line 551
    .line 552
    move-result-object v2

    .line 553
    sget-boolean v3, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 554
    .line 555
    if-eqz v3, :cond_5

    .line 556
    .line 557
    const v3, -0xdededf

    .line 558
    .line 559
    .line 560
    goto :goto_2

    .line 561
    :cond_5
    const v3, -0x70708

    .line 562
    .line 563
    .line 564
    :goto_2
    invoke-virtual {v1, v2, v3}, Lcom/mycompany/app/view/MyMainRelative;->b(Landroid/view/Window;I)V

    .line 565
    .line 566
    .line 567
    iget-object v1, v0, Lcom/mycompany/app/lock/PassActivity;->i1:Lcom/mycompany/app/view/MyMainRelative;

    .line 568
    .line 569
    invoke-virtual {v0, v1}, Lcom/mycompany/app/main/MainActivity;->initMainScreenOn(Landroid/view/View;)V

    .line 570
    .line 571
    .line 572
    const/4 v10, 0x0

    .line 573
    iput-boolean v10, v0, Lcom/mycompany/app/lock/PassActivity;->v1:Z

    .line 574
    .line 575
    const/4 v5, 0x0

    .line 576
    iput-object v5, v0, Lcom/mycompany/app/lock/PassActivity;->w1:Ljava/lang/String;

    .line 577
    .line 578
    iget-object v1, v0, Lcom/mycompany/app/main/MainActivity;->O0:Landroid/os/Handler;

    .line 579
    .line 580
    if-nez v1, :cond_6

    .line 581
    .line 582
    return-void

    .line 583
    :cond_6
    new-instance v2, Lcom/mycompany/app/lock/PassActivity$3;

    .line 584
    .line 585
    invoke-direct {v2, v0}, Lcom/mycompany/app/lock/PassActivity$3;-><init>(Lcom/mycompany/app/lock/PassActivity;)V

    .line 586
    .line 587
    .line 588
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 589
    .line 590
    .line 591
    return-void
.end method

.method public final onDestroy()V
    .locals 3

    .line 1
    invoke-super {p0}, Lcom/mycompany/app/main/MainActivity;->onDestroy()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/mycompany/app/lock/PassActivity;->g1:Landroid/view/View;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    iget-object v2, p0, Lcom/mycompany/app/lock/PassActivity;->h1:Lcom/mycompany/app/lock/PassActivity$SystemRunnable;

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
    iput-object v1, p0, Lcom/mycompany/app/lock/PassActivity;->g1:Landroid/view/View;

    .line 17
    .line 18
    :cond_1
    iput-object v1, p0, Lcom/mycompany/app/lock/PassActivity;->h1:Lcom/mycompany/app/lock/PassActivity$SystemRunnable;

    .line 19
    .line 20
    iget-object v0, p0, Lcom/mycompany/app/lock/PassActivity;->l1:Lcom/mycompany/app/view/MyButtonRelative;

    .line 21
    .line 22
    if-eqz v0, :cond_2

    .line 23
    .line 24
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyButtonRelative;->f()V

    .line 25
    .line 26
    .line 27
    iput-object v1, p0, Lcom/mycompany/app/lock/PassActivity;->l1:Lcom/mycompany/app/view/MyButtonRelative;

    .line 28
    .line 29
    :cond_2
    iget-object v0, p0, Lcom/mycompany/app/lock/PassActivity;->n1:Lcom/mycompany/app/view/MyButtonImage;

    .line 30
    .line 31
    if-eqz v0, :cond_3

    .line 32
    .line 33
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyButtonImage;->j()V

    .line 34
    .line 35
    .line 36
    iput-object v1, p0, Lcom/mycompany/app/lock/PassActivity;->n1:Lcom/mycompany/app/view/MyButtonImage;

    .line 37
    .line 38
    :cond_3
    iget-object v0, p0, Lcom/mycompany/app/lock/PassActivity;->o1:Lcom/mycompany/app/view/MyButtonText;

    .line 39
    .line 40
    if-eqz v0, :cond_4

    .line 41
    .line 42
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyButtonText;->t()V

    .line 43
    .line 44
    .line 45
    iput-object v1, p0, Lcom/mycompany/app/lock/PassActivity;->o1:Lcom/mycompany/app/view/MyButtonText;

    .line 46
    .line 47
    :cond_4
    iget-object v0, p0, Lcom/mycompany/app/lock/PassActivity;->p1:Lcom/mycompany/app/view/MyLineText;

    .line 48
    .line 49
    if-eqz v0, :cond_5

    .line 50
    .line 51
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyLineText;->u()V

    .line 52
    .line 53
    .line 54
    iput-object v1, p0, Lcom/mycompany/app/lock/PassActivity;->p1:Lcom/mycompany/app/view/MyLineText;

    .line 55
    .line 56
    :cond_5
    iput-object v1, p0, Lcom/mycompany/app/lock/PassActivity;->i1:Lcom/mycompany/app/view/MyMainRelative;

    .line 57
    .line 58
    iput-object v1, p0, Lcom/mycompany/app/lock/PassActivity;->j1:Landroid/widget/ImageView;

    .line 59
    .line 60
    iput-object v1, p0, Lcom/mycompany/app/lock/PassActivity;->k1:Landroidx/appcompat/widget/AppCompatTextView;

    .line 61
    .line 62
    iput-object v1, p0, Lcom/mycompany/app/lock/PassActivity;->m1:Lcom/mycompany/app/view/MyEditPure;

    .line 63
    .line 64
    iput-object v1, p0, Lcom/mycompany/app/lock/PassActivity;->q1:Landroidx/appcompat/widget/AppCompatTextView;

    .line 65
    .line 66
    iput-object v1, p0, Lcom/mycompany/app/lock/PassActivity;->w1:Ljava/lang/String;

    .line 67
    .line 68
    iput-object v1, p0, Lcom/mycompany/app/lock/PassActivity;->t1:Ljava/lang/String;

    .line 69
    .line 70
    return-void
.end method

.method public final onNewIntent(Landroid/content/Intent;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroidx/activity/ComponentActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, p1}, Lcom/mycompany/app/lock/PassActivity;->w0(Landroid/content/Intent;)V

    .line 5
    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    iput-boolean p1, p0, Lcom/mycompany/app/lock/PassActivity;->v1:Z

    .line 9
    .line 10
    const/4 p1, 0x0

    .line 11
    iput-object p1, p0, Lcom/mycompany/app/lock/PassActivity;->w1:Ljava/lang/String;

    .line 12
    .line 13
    iget-object p1, p0, Lcom/mycompany/app/main/MainActivity;->O0:Landroid/os/Handler;

    .line 14
    .line 15
    if-nez p1, :cond_0

    .line 16
    .line 17
    return-void

    .line 18
    :cond_0
    new-instance v0, Lcom/mycompany/app/lock/PassActivity$3;

    .line 19
    .line 20
    invoke-direct {v0, p0}, Lcom/mycompany/app/lock/PassActivity$3;-><init>(Lcom/mycompany/app/lock/PassActivity;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method public final onPause()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/mycompany/app/main/MainActivity;->onPause()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/mycompany/app/lock/PassActivity;->y0()V

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
    new-instance v1, Lcom/mycompany/app/lock/PassActivity$2;

    .line 10
    .line 11
    invoke-direct {v1, p0}, Lcom/mycompany/app/lock/PassActivity$2;-><init>(Lcom/mycompany/app/lock/PassActivity;)V

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
    iget p1, p0, Lcom/mycompany/app/lock/PassActivity;->s1:I

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

.method public final w0(Landroid/content/Intent;)V
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
    iput v0, p0, Lcom/mycompany/app/lock/PassActivity;->r1:I

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
    iput v0, p0, Lcom/mycompany/app/lock/PassActivity;->s1:I

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
    iput-object v0, p0, Lcom/mycompany/app/lock/PassActivity;->t1:Ljava/lang/String;

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_1
    const/4 v0, 0x0

    .line 33
    iput-object v0, p0, Lcom/mycompany/app/lock/PassActivity;->t1:Ljava/lang/String;

    .line 34
    .line 35
    :goto_0
    iget v0, p0, Lcom/mycompany/app/lock/PassActivity;->s1:I

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
    iput-boolean p1, p0, Lcom/mycompany/app/lock/PassActivity;->u1:Z

    .line 47
    .line 48
    return-void

    .line 49
    :cond_2
    iput-boolean v1, p0, Lcom/mycompany/app/lock/PassActivity;->u1:Z

    .line 50
    .line 51
    return-void
.end method

.method public final x0()V
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
    iget-boolean v2, p0, Lcom/mycompany/app/lock/PassActivity;->u1:Z

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

.method public final y0()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/lock/PassActivity;->x1:Lcom/mycompany/app/dialog/DialogLockReset;

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
    iput-object v0, p0, Lcom/mycompany/app/lock/PassActivity;->x1:Lcom/mycompany/app/dialog/DialogLockReset;

    .line 10
    .line 11
    :cond_0
    return-void
.end method
