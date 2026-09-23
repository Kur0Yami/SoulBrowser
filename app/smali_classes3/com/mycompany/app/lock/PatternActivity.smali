.class public Lcom/mycompany/app/lock/PatternActivity;
.super Lcom/mycompany/app/main/MainActivity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mycompany/app/lock/PatternActivity$SystemRunnable;
    }
.end annotation


# static fields
.field public static final synthetic y1:I


# instance fields
.field public f1:Landroid/content/Context;

.field public g1:Landroid/view/View;

.field public h1:Lcom/mycompany/app/lock/PatternActivity$SystemRunnable;

.field public i1:Lcom/mycompany/app/view/MyMainRelative;

.field public j1:Landroid/widget/ImageView;

.field public k1:Landroidx/appcompat/widget/AppCompatTextView;

.field public l1:Lcom/mycompany/app/lock/PatternLock;

.field public m1:Lcom/mycompany/app/view/MyButtonText;

.field public n1:Lcom/mycompany/app/view/MyLineText;

.field public o1:Landroidx/appcompat/widget/AppCompatTextView;

.field public p1:I

.field public q1:I

.field public r1:Ljava/lang/String;

.field public s1:Z

.field public t1:Z

.field public u1:Z

.field public v1:Ljava/lang/String;

.field public w1:Z

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

.method public static u0(Lcom/mycompany/app/lock/PatternActivity;)V
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
    iget-boolean v2, p0, Lcom/mycompany/app/lock/PatternActivity;->s1:Z

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

.method public static v0(Lcom/mycompany/app/lock/PatternActivity;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/lock/PatternActivity;->x1:Lcom/mycompany/app/dialog/DialogLockReset;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-virtual {p0}, Lcom/mycompany/app/lock/PatternActivity;->x0()V

    .line 7
    .line 8
    .line 9
    new-instance v0, Lcom/mycompany/app/dialog/DialogLockReset;

    .line 10
    .line 11
    iget v1, p0, Lcom/mycompany/app/lock/PatternActivity;->p1:I

    .line 12
    .line 13
    new-instance v2, Lcom/mycompany/app/lock/PatternActivity$10;

    .line 14
    .line 15
    invoke-direct {v2, p0}, Lcom/mycompany/app/lock/PatternActivity$10;-><init>(Lcom/mycompany/app/lock/PatternActivity;)V

    .line 16
    .line 17
    .line 18
    invoke-direct {v0, p0, v1, v2}, Lcom/mycompany/app/dialog/DialogLockReset;-><init>(Landroid/app/Activity;ILcom/mycompany/app/dialog/DialogSetFull$DialogApplyListener;)V

    .line 19
    .line 20
    .line 21
    iput-object v0, p0, Lcom/mycompany/app/lock/PatternActivity;->x1:Lcom/mycompany/app/dialog/DialogLockReset;

    .line 22
    .line 23
    new-instance v1, Lcom/mycompany/app/lock/PatternActivity$11;

    .line 24
    .line 25
    invoke-direct {v1, p0}, Lcom/mycompany/app/lock/PatternActivity$11;-><init>(Lcom/mycompany/app/lock/PatternActivity;)V

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
    iget v0, p0, Lcom/mycompany/app/lock/PatternActivity;->q1:I

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
    invoke-virtual {p0}, Lcom/mycompany/app/lock/PatternActivity;->l0()V

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
    iput-object v1, v0, Lcom/mycompany/app/lock/PatternActivity;->f1:Landroid/content/Context;

    .line 17
    .line 18
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-virtual {v0, v1}, Lcom/mycompany/app/lock/PatternActivity;->w0(Landroid/content/Intent;)V

    .line 23
    .line 24
    .line 25
    new-instance v1, Lcom/mycompany/app/lock/PatternActivity$12;

    .line 26
    .line 27
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 28
    .line 29
    .line 30
    iput-object v1, v0, Lcom/mycompany/app/main/MainActivity;->V0:Lcom/mycompany/app/main/MainActivity$SystemBarListener;

    .line 31
    .line 32
    iget v1, v0, Lcom/mycompany/app/lock/PatternActivity;->q1:I

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
    const/16 v2, 0x1e

    .line 49
    .line 50
    if-ge v1, v2, :cond_0

    .line 51
    .line 52
    invoke-virtual {v0}, Lcom/mycompany/app/main/MainActivity;->a0()Landroid/view/View;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    iput-object v1, v0, Lcom/mycompany/app/lock/PatternActivity;->g1:Landroid/view/View;

    .line 57
    .line 58
    if-eqz v1, :cond_0

    .line 59
    .line 60
    new-instance v2, Lcom/mycompany/app/lock/PatternActivity$SystemRunnable;

    .line 61
    .line 62
    invoke-direct {v2, v0}, Lcom/mycompany/app/lock/PatternActivity$SystemRunnable;-><init>(Lcom/mycompany/app/lock/PatternActivity;)V

    .line 63
    .line 64
    .line 65
    iput-object v2, v0, Lcom/mycompany/app/lock/PatternActivity;->h1:Lcom/mycompany/app/lock/PatternActivity$SystemRunnable;

    .line 66
    .line 67
    new-instance v2, Lcom/mycompany/app/lock/PatternActivity$1;

    .line 68
    .line 69
    invoke-direct {v2, v0}, Lcom/mycompany/app/lock/PatternActivity$1;-><init>(Lcom/mycompany/app/lock/PatternActivity;)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnSystemUiVisibilityChangeListener(Landroid/view/View$OnSystemUiVisibilityChangeListener;)V

    .line 73
    .line 74
    .line 75
    :cond_0
    sget v1, Lnet/kaki87/soul2/testing/R$id;->lock_button_view:I

    .line 76
    .line 77
    new-instance v2, Lcom/mycompany/app/view/MyMainRelative;

    .line 78
    .line 79
    invoke-direct {v2, v0}, Lcom/mycompany/app/view/MyMainRelative;-><init>(Landroid/content/Context;)V

    .line 80
    .line 81
    .line 82
    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    .line 83
    .line 84
    const/4 v4, -0x1

    .line 85
    invoke-direct {v3, v4, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {v2, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 89
    .line 90
    .line 91
    new-instance v3, Landroid/widget/LinearLayout;

    .line 92
    .line 93
    invoke-direct {v3, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 94
    .line 95
    .line 96
    const/4 v5, 0x1

    .line 97
    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 98
    .line 99
    .line 100
    const/4 v6, 0x2

    .line 101
    invoke-static {v4, v4, v6, v1}, Landroidx/work/impl/workers/a;->h(IIII)Landroid/widget/RelativeLayout$LayoutParams;

    .line 102
    .line 103
    .line 104
    move-result-object v6

    .line 105
    invoke-virtual {v2, v3, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 106
    .line 107
    .line 108
    new-instance v6, Landroid/view/View;

    .line 109
    .line 110
    invoke-direct {v6, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 111
    .line 112
    .line 113
    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    .line 114
    .line 115
    const/4 v8, 0x0

    .line 116
    invoke-direct {v7, v4, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 117
    .line 118
    .line 119
    const/high16 v9, 0x40000000    # 2.0f

    .line 120
    .line 121
    iput v9, v7, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 122
    .line 123
    invoke-virtual {v3, v6, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 124
    .line 125
    .line 126
    const/high16 v6, 0x42a80000    # 84.0f

    .line 127
    .line 128
    invoke-static {v0, v6}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 129
    .line 130
    .line 131
    move-result v6

    .line 132
    float-to-int v6, v6

    .line 133
    new-instance v7, Landroid/widget/ImageView;

    .line 134
    .line 135
    invoke-direct {v7, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 136
    .line 137
    .line 138
    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    .line 139
    .line 140
    invoke-direct {v9, v6, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 141
    .line 142
    .line 143
    iput v5, v9, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 144
    .line 145
    invoke-virtual {v3, v7, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 146
    .line 147
    .line 148
    new-instance v6, Landroid/view/View;

    .line 149
    .line 150
    invoke-direct {v6, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 151
    .line 152
    .line 153
    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    .line 154
    .line 155
    invoke-direct {v9, v4, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 156
    .line 157
    .line 158
    const/high16 v10, 0x3f000000    # 0.5f

    .line 159
    .line 160
    iput v10, v9, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 161
    .line 162
    invoke-virtual {v3, v6, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 163
    .line 164
    .line 165
    new-instance v6, Landroidx/appcompat/widget/AppCompatTextView;

    .line 166
    .line 167
    const/4 v9, 0x0

    .line 168
    invoke-direct {v6, v0, v9}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 169
    .line 170
    .line 171
    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 172
    .line 173
    .line 174
    const/high16 v11, 0x41800000    # 16.0f

    .line 175
    .line 176
    invoke-virtual {v6, v5, v11}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 177
    .line 178
    .line 179
    new-instance v12, Landroid/widget/LinearLayout$LayoutParams;

    .line 180
    .line 181
    const/4 v13, -0x2

    .line 182
    invoke-direct {v12, v13, v13}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 183
    .line 184
    .line 185
    iput v5, v12, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 186
    .line 187
    invoke-virtual {v3, v6, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 188
    .line 189
    .line 190
    new-instance v12, Landroid/view/View;

    .line 191
    .line 192
    invoke-direct {v12, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 193
    .line 194
    .line 195
    new-instance v14, Landroid/widget/LinearLayout$LayoutParams;

    .line 196
    .line 197
    invoke-direct {v14, v4, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 198
    .line 199
    .line 200
    iput v10, v14, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 201
    .line 202
    invoke-virtual {v3, v12, v14}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 203
    .line 204
    .line 205
    const/high16 v10, 0x438c0000    # 280.0f

    .line 206
    .line 207
    invoke-static {v0, v10}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 208
    .line 209
    .line 210
    move-result v10

    .line 211
    float-to-int v10, v10

    .line 212
    new-instance v12, Lcom/mycompany/app/lock/PatternLock;

    .line 213
    .line 214
    invoke-direct {v12, v0}, Lcom/mycompany/app/lock/PatternLock;-><init>(Lcom/mycompany/app/lock/PatternActivity;)V

    .line 215
    .line 216
    .line 217
    new-instance v14, Landroid/widget/LinearLayout$LayoutParams;

    .line 218
    .line 219
    invoke-direct {v14, v10, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 220
    .line 221
    .line 222
    iput v5, v14, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 223
    .line 224
    invoke-virtual {v3, v12, v14}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 225
    .line 226
    .line 227
    new-instance v10, Landroid/view/View;

    .line 228
    .line 229
    invoke-direct {v10, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 230
    .line 231
    .line 232
    new-instance v14, Landroid/widget/LinearLayout$LayoutParams;

    .line 233
    .line 234
    invoke-direct {v14, v4, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 235
    .line 236
    .line 237
    const/high16 v15, 0x3f800000    # 1.0f

    .line 238
    .line 239
    iput v15, v14, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 240
    .line 241
    invoke-virtual {v3, v10, v14}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 242
    .line 243
    .line 244
    new-instance v3, Landroid/widget/LinearLayout;

    .line 245
    .line 246
    invoke-direct {v3, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 247
    .line 248
    .line 249
    invoke-virtual {v3, v1}, Landroid/view/View;->setId(I)V

    .line 250
    .line 251
    .line 252
    invoke-virtual {v3, v8}, Landroid/widget/LinearLayout;->setBaselineAligned(Z)V

    .line 253
    .line 254
    .line 255
    invoke-virtual {v3, v8}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 256
    .line 257
    .line 258
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 259
    .line 260
    invoke-direct {v1, v4, v13}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 261
    .line 262
    .line 263
    const/16 v10, 0xc

    .line 264
    .line 265
    invoke-virtual {v1, v10}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 266
    .line 267
    .line 268
    invoke-virtual {v2, v3, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 269
    .line 270
    .line 271
    iget v1, v0, Lcom/mycompany/app/lock/PatternActivity;->q1:I

    .line 272
    .line 273
    const/16 v10, 0x11

    .line 274
    .line 275
    if-ne v1, v5, :cond_1

    .line 276
    .line 277
    new-instance v1, Lcom/mycompany/app/view/MyLineText;

    .line 278
    .line 279
    invoke-direct {v1, v0}, Lcom/mycompany/app/view/MyLineText;-><init>(Landroid/content/Context;)V

    .line 280
    .line 281
    .line 282
    invoke-virtual {v1, v10}, Landroid/widget/TextView;->setGravity(I)V

    .line 283
    .line 284
    .line 285
    invoke-virtual {v1, v5, v11}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 286
    .line 287
    .line 288
    sget v4, Lnet/kaki87/soul2/testing/R$string;->retry:I

    .line 289
    .line 290
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(I)V

    .line 291
    .line 292
    .line 293
    invoke-virtual {v1, v0}, Lcom/mycompany/app/view/MyLineText;->s(Landroid/content/Context;)V

    .line 294
    .line 295
    .line 296
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    .line 297
    .line 298
    sget v13, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 299
    .line 300
    invoke-direct {v4, v8, v13}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 301
    .line 302
    .line 303
    iput v15, v4, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 304
    .line 305
    invoke-virtual {v3, v1, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 306
    .line 307
    .line 308
    new-instance v4, Landroidx/appcompat/widget/AppCompatTextView;

    .line 309
    .line 310
    invoke-direct {v4, v0, v9}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 311
    .line 312
    .line 313
    invoke-virtual {v4, v10}, Landroid/widget/TextView;->setGravity(I)V

    .line 314
    .line 315
    .line 316
    invoke-virtual {v4, v5, v11}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 317
    .line 318
    .line 319
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    .line 320
    .line 321
    sget v10, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 322
    .line 323
    invoke-direct {v5, v8, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 324
    .line 325
    .line 326
    iput v15, v5, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 327
    .line 328
    invoke-virtual {v3, v4, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 329
    .line 330
    .line 331
    move-object v14, v9

    .line 332
    goto :goto_0

    .line 333
    :cond_1
    const/high16 v1, 0x41c00000    # 24.0f

    .line 334
    .line 335
    invoke-static {v0, v1}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 336
    .line 337
    .line 338
    move-result v1

    .line 339
    float-to-int v1, v1

    .line 340
    new-instance v14, Lcom/mycompany/app/view/MyButtonText;

    .line 341
    .line 342
    invoke-direct {v14, v0}, Lcom/mycompany/app/view/MyButtonText;-><init>(Landroid/content/Context;)V

    .line 343
    .line 344
    .line 345
    sget v15, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 346
    .line 347
    sget v9, Lcom/mycompany/app/main/MainApp;->G1:I

    .line 348
    .line 349
    sget v8, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 350
    .line 351
    sget v4, Lcom/mycompany/app/main/MainApp;->G1:I

    .line 352
    .line 353
    invoke-virtual {v14, v15, v9, v8, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 354
    .line 355
    .line 356
    invoke-virtual {v14, v10}, Landroid/widget/TextView;->setGravity(I)V

    .line 357
    .line 358
    .line 359
    sget v4, Lcom/mycompany/app/main/MainApp;->f1:I

    .line 360
    .line 361
    invoke-virtual {v14, v4}, Landroid/widget/TextView;->setMinHeight(I)V

    .line 362
    .line 363
    .line 364
    invoke-virtual {v14, v5, v11}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 365
    .line 366
    .line 367
    invoke-virtual {v14, v5}, Lcom/mycompany/app/view/MyButtonText;->setBgNorFixed(Z)V

    .line 368
    .line 369
    .line 370
    invoke-virtual {v14, v5}, Lcom/mycompany/app/view/MyButtonText;->setRoundRect(Z)V

    .line 371
    .line 372
    .line 373
    sget v4, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 374
    .line 375
    invoke-virtual {v14, v4}, Lcom/mycompany/app/view/MyButtonText;->setRoundRadius(I)V

    .line 376
    .line 377
    .line 378
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    .line 379
    .line 380
    const/4 v5, -0x1

    .line 381
    invoke-direct {v4, v5, v13}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 382
    .line 383
    .line 384
    sget v5, Lcom/mycompany/app/main/MainApp;->f1:I

    .line 385
    .line 386
    iput v5, v4, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 387
    .line 388
    invoke-virtual {v4, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 389
    .line 390
    .line 391
    invoke-virtual {v4, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 392
    .line 393
    .line 394
    invoke-virtual {v3, v14, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 395
    .line 396
    .line 397
    const/4 v1, 0x0

    .line 398
    const/4 v4, 0x0

    .line 399
    :goto_0
    iput-object v2, v0, Lcom/mycompany/app/lock/PatternActivity;->i1:Lcom/mycompany/app/view/MyMainRelative;

    .line 400
    .line 401
    iput-object v7, v0, Lcom/mycompany/app/lock/PatternActivity;->j1:Landroid/widget/ImageView;

    .line 402
    .line 403
    iput-object v6, v0, Lcom/mycompany/app/lock/PatternActivity;->k1:Landroidx/appcompat/widget/AppCompatTextView;

    .line 404
    .line 405
    iput-object v12, v0, Lcom/mycompany/app/lock/PatternActivity;->l1:Lcom/mycompany/app/lock/PatternLock;

    .line 406
    .line 407
    iput-object v14, v0, Lcom/mycompany/app/lock/PatternActivity;->m1:Lcom/mycompany/app/view/MyButtonText;

    .line 408
    .line 409
    iput-object v1, v0, Lcom/mycompany/app/lock/PatternActivity;->n1:Lcom/mycompany/app/view/MyLineText;

    .line 410
    .line 411
    iput-object v4, v0, Lcom/mycompany/app/lock/PatternActivity;->o1:Landroidx/appcompat/widget/AppCompatTextView;

    .line 412
    .line 413
    invoke-virtual {v0, v2}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(Landroid/view/View;)V

    .line 414
    .line 415
    .line 416
    iget-object v1, v0, Lcom/mycompany/app/lock/PatternActivity;->i1:Lcom/mycompany/app/view/MyMainRelative;

    .line 417
    .line 418
    invoke-virtual {v0, v1}, Lcom/mycompany/app/main/MainActivity;->setMainInsetView(Landroid/view/View;)V

    .line 419
    .line 420
    .line 421
    iget-object v1, v0, Lcom/mycompany/app/lock/PatternActivity;->i1:Lcom/mycompany/app/view/MyMainRelative;

    .line 422
    .line 423
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 424
    .line 425
    .line 426
    move-result-object v2

    .line 427
    sget-boolean v3, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 428
    .line 429
    if-eqz v3, :cond_2

    .line 430
    .line 431
    const v3, -0xdededf

    .line 432
    .line 433
    .line 434
    goto :goto_1

    .line 435
    :cond_2
    const v3, -0x70708

    .line 436
    .line 437
    .line 438
    :goto_1
    invoke-virtual {v1, v2, v3}, Lcom/mycompany/app/view/MyMainRelative;->b(Landroid/view/Window;I)V

    .line 439
    .line 440
    .line 441
    iget-object v1, v0, Lcom/mycompany/app/lock/PatternActivity;->i1:Lcom/mycompany/app/view/MyMainRelative;

    .line 442
    .line 443
    invoke-virtual {v0, v1}, Lcom/mycompany/app/main/MainActivity;->initMainScreenOn(Landroid/view/View;)V

    .line 444
    .line 445
    .line 446
    const/4 v1, 0x0

    .line 447
    iput-boolean v1, v0, Lcom/mycompany/app/lock/PatternActivity;->t1:Z

    .line 448
    .line 449
    iput-boolean v1, v0, Lcom/mycompany/app/lock/PatternActivity;->u1:Z

    .line 450
    .line 451
    const/4 v1, 0x0

    .line 452
    iput-object v1, v0, Lcom/mycompany/app/lock/PatternActivity;->v1:Ljava/lang/String;

    .line 453
    .line 454
    iget-object v1, v0, Lcom/mycompany/app/main/MainActivity;->O0:Landroid/os/Handler;

    .line 455
    .line 456
    if-nez v1, :cond_3

    .line 457
    .line 458
    return-void

    .line 459
    :cond_3
    new-instance v2, Lcom/mycompany/app/lock/PatternActivity$3;

    .line 460
    .line 461
    invoke-direct {v2, v0}, Lcom/mycompany/app/lock/PatternActivity$3;-><init>(Lcom/mycompany/app/lock/PatternActivity;)V

    .line 462
    .line 463
    .line 464
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 465
    .line 466
    .line 467
    return-void
.end method

.method public final onDestroy()V
    .locals 3

    .line 1
    invoke-super {p0}, Lcom/mycompany/app/main/MainActivity;->onDestroy()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/mycompany/app/lock/PatternActivity;->g1:Landroid/view/View;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    iget-object v2, p0, Lcom/mycompany/app/lock/PatternActivity;->h1:Lcom/mycompany/app/lock/PatternActivity$SystemRunnable;

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
    iput-object v1, p0, Lcom/mycompany/app/lock/PatternActivity;->g1:Landroid/view/View;

    .line 17
    .line 18
    :cond_1
    iput-object v1, p0, Lcom/mycompany/app/lock/PatternActivity;->h1:Lcom/mycompany/app/lock/PatternActivity$SystemRunnable;

    .line 19
    .line 20
    iget-object v0, p0, Lcom/mycompany/app/lock/PatternActivity;->m1:Lcom/mycompany/app/view/MyButtonText;

    .line 21
    .line 22
    if-eqz v0, :cond_2

    .line 23
    .line 24
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyButtonText;->t()V

    .line 25
    .line 26
    .line 27
    iput-object v1, p0, Lcom/mycompany/app/lock/PatternActivity;->m1:Lcom/mycompany/app/view/MyButtonText;

    .line 28
    .line 29
    :cond_2
    iget-object v0, p0, Lcom/mycompany/app/lock/PatternActivity;->n1:Lcom/mycompany/app/view/MyLineText;

    .line 30
    .line 31
    if-eqz v0, :cond_3

    .line 32
    .line 33
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyLineText;->u()V

    .line 34
    .line 35
    .line 36
    iput-object v1, p0, Lcom/mycompany/app/lock/PatternActivity;->n1:Lcom/mycompany/app/view/MyLineText;

    .line 37
    .line 38
    :cond_3
    iput-object v1, p0, Lcom/mycompany/app/lock/PatternActivity;->i1:Lcom/mycompany/app/view/MyMainRelative;

    .line 39
    .line 40
    iput-object v1, p0, Lcom/mycompany/app/lock/PatternActivity;->j1:Landroid/widget/ImageView;

    .line 41
    .line 42
    iput-object v1, p0, Lcom/mycompany/app/lock/PatternActivity;->k1:Landroidx/appcompat/widget/AppCompatTextView;

    .line 43
    .line 44
    iput-object v1, p0, Lcom/mycompany/app/lock/PatternActivity;->l1:Lcom/mycompany/app/lock/PatternLock;

    .line 45
    .line 46
    iput-object v1, p0, Lcom/mycompany/app/lock/PatternActivity;->o1:Landroidx/appcompat/widget/AppCompatTextView;

    .line 47
    .line 48
    iput-object v1, p0, Lcom/mycompany/app/lock/PatternActivity;->v1:Ljava/lang/String;

    .line 49
    .line 50
    iput-object v1, p0, Lcom/mycompany/app/lock/PatternActivity;->r1:Ljava/lang/String;

    .line 51
    .line 52
    return-void
.end method

.method public final onNewIntent(Landroid/content/Intent;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroidx/activity/ComponentActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, p1}, Lcom/mycompany/app/lock/PatternActivity;->w0(Landroid/content/Intent;)V

    .line 5
    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    iput-boolean p1, p0, Lcom/mycompany/app/lock/PatternActivity;->t1:Z

    .line 9
    .line 10
    iput-boolean p1, p0, Lcom/mycompany/app/lock/PatternActivity;->u1:Z

    .line 11
    .line 12
    const/4 p1, 0x0

    .line 13
    iput-object p1, p0, Lcom/mycompany/app/lock/PatternActivity;->v1:Ljava/lang/String;

    .line 14
    .line 15
    iget-object p1, p0, Lcom/mycompany/app/main/MainActivity;->O0:Landroid/os/Handler;

    .line 16
    .line 17
    if-nez p1, :cond_0

    .line 18
    .line 19
    return-void

    .line 20
    :cond_0
    new-instance v0, Lcom/mycompany/app/lock/PatternActivity$3;

    .line 21
    .line 22
    invoke-direct {v0, p0}, Lcom/mycompany/app/lock/PatternActivity$3;-><init>(Lcom/mycompany/app/lock/PatternActivity;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method public final onPause()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/mycompany/app/main/MainActivity;->onPause()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/mycompany/app/lock/PatternActivity;->x0()V

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
    new-instance v1, Lcom/mycompany/app/lock/PatternActivity$2;

    .line 10
    .line 11
    invoke-direct {v1, p0}, Lcom/mycompany/app/lock/PatternActivity$2;-><init>(Lcom/mycompany/app/lock/PatternActivity;)V

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
    iget p1, p0, Lcom/mycompany/app/lock/PatternActivity;->q1:I

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
    iput v0, p0, Lcom/mycompany/app/lock/PatternActivity;->p1:I

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
    iput v0, p0, Lcom/mycompany/app/lock/PatternActivity;->q1:I

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
    iput-object v0, p0, Lcom/mycompany/app/lock/PatternActivity;->r1:Ljava/lang/String;

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_1
    const/4 v0, 0x0

    .line 33
    iput-object v0, p0, Lcom/mycompany/app/lock/PatternActivity;->r1:Ljava/lang/String;

    .line 34
    .line 35
    :goto_0
    iget v0, p0, Lcom/mycompany/app/lock/PatternActivity;->q1:I

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
    iput-boolean p1, p0, Lcom/mycompany/app/lock/PatternActivity;->s1:Z

    .line 47
    .line 48
    return-void

    .line 49
    :cond_2
    iput-boolean v1, p0, Lcom/mycompany/app/lock/PatternActivity;->s1:Z

    .line 50
    .line 51
    return-void
.end method

.method public final x0()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/lock/PatternActivity;->x1:Lcom/mycompany/app/dialog/DialogLockReset;

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
    iput-object v0, p0, Lcom/mycompany/app/lock/PatternActivity;->x1:Lcom/mycompany/app/dialog/DialogLockReset;

    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public final y0(Z)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/lock/PatternActivity;->k1:Landroidx/appcompat/widget/AppCompatTextView;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto/16 :goto_4

    .line 6
    .line 7
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/lock/PatternActivity;->v1:Ljava/lang/String;

    .line 8
    .line 9
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    const v1, -0xe19938

    .line 14
    .line 15
    .line 16
    const v2, -0x50506

    .line 17
    .line 18
    .line 19
    const/4 v3, 0x1

    .line 20
    const v4, -0x252526

    .line 21
    .line 22
    .line 23
    const v5, -0x7f7f80

    .line 24
    .line 25
    .line 26
    const/4 v6, 0x0

    .line 27
    if-eqz v0, :cond_2

    .line 28
    .line 29
    iput-boolean v6, p0, Lcom/mycompany/app/lock/PatternActivity;->t1:Z

    .line 30
    .line 31
    iget-object v0, p0, Lcom/mycompany/app/lock/PatternActivity;->n1:Lcom/mycompany/app/view/MyLineText;

    .line 32
    .line 33
    if-eqz v0, :cond_4

    .line 34
    .line 35
    invoke-virtual {v0, v6}, Landroid/view/View;->setEnabled(Z)V

    .line 36
    .line 37
    .line 38
    iget-object v0, p0, Lcom/mycompany/app/lock/PatternActivity;->n1:Lcom/mycompany/app/view/MyLineText;

    .line 39
    .line 40
    sget-boolean v7, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 41
    .line 42
    if-eqz v7, :cond_1

    .line 43
    .line 44
    move v7, v5

    .line 45
    goto :goto_0

    .line 46
    :cond_1
    move v7, v4

    .line 47
    :goto_0
    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 48
    .line 49
    .line 50
    goto :goto_2

    .line 51
    :cond_2
    iget-object v0, p0, Lcom/mycompany/app/lock/PatternActivity;->n1:Lcom/mycompany/app/view/MyLineText;

    .line 52
    .line 53
    if-eqz v0, :cond_4

    .line 54
    .line 55
    invoke-virtual {v0, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 56
    .line 57
    .line 58
    iget-object v0, p0, Lcom/mycompany/app/lock/PatternActivity;->n1:Lcom/mycompany/app/view/MyLineText;

    .line 59
    .line 60
    sget-boolean v7, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 61
    .line 62
    if-eqz v7, :cond_3

    .line 63
    .line 64
    move v7, v2

    .line 65
    goto :goto_1

    .line 66
    :cond_3
    move v7, v1

    .line 67
    :goto_1
    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 68
    .line 69
    .line 70
    :cond_4
    :goto_2
    iput-boolean p1, p0, Lcom/mycompany/app/lock/PatternActivity;->w1:Z

    .line 71
    .line 72
    if-eqz p1, :cond_6

    .line 73
    .line 74
    iget-object p1, p0, Lcom/mycompany/app/lock/PatternActivity;->k1:Landroidx/appcompat/widget/AppCompatTextView;

    .line 75
    .line 76
    sget v0, Lnet/kaki87/soul2/testing/R$string;->wrong_input:I

    .line 77
    .line 78
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 79
    .line 80
    .line 81
    iget-object p1, p0, Lcom/mycompany/app/lock/PatternActivity;->o1:Landroidx/appcompat/widget/AppCompatTextView;

    .line 82
    .line 83
    if-eqz p1, :cond_d

    .line 84
    .line 85
    invoke-virtual {p1, v6}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 86
    .line 87
    .line 88
    iget-object p1, p0, Lcom/mycompany/app/lock/PatternActivity;->o1:Landroidx/appcompat/widget/AppCompatTextView;

    .line 89
    .line 90
    sget-boolean v0, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 91
    .line 92
    if-eqz v0, :cond_5

    .line 93
    .line 94
    move v4, v5

    .line 95
    :cond_5
    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 96
    .line 97
    .line 98
    return-void

    .line 99
    :cond_6
    iget-boolean p1, p0, Lcom/mycompany/app/lock/PatternActivity;->t1:Z

    .line 100
    .line 101
    if-eqz p1, :cond_8

    .line 102
    .line 103
    iget-boolean p1, p0, Lcom/mycompany/app/lock/PatternActivity;->u1:Z

    .line 104
    .line 105
    if-eqz p1, :cond_7

    .line 106
    .line 107
    iget-object p1, p0, Lcom/mycompany/app/lock/PatternActivity;->k1:Landroidx/appcompat/widget/AppCompatTextView;

    .line 108
    .line 109
    const/4 v0, 0x0

    .line 110
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 111
    .line 112
    .line 113
    iget-object p1, p0, Lcom/mycompany/app/lock/PatternActivity;->o1:Landroidx/appcompat/widget/AppCompatTextView;

    .line 114
    .line 115
    if-eqz p1, :cond_9

    .line 116
    .line 117
    sget v0, Lnet/kaki87/soul2/testing/R$string;->apply:I

    .line 118
    .line 119
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 120
    .line 121
    .line 122
    goto :goto_3

    .line 123
    :cond_7
    iget-object p1, p0, Lcom/mycompany/app/lock/PatternActivity;->k1:Landroidx/appcompat/widget/AppCompatTextView;

    .line 124
    .line 125
    sget v0, Lnet/kaki87/soul2/testing/R$string;->reinput:I

    .line 126
    .line 127
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 128
    .line 129
    .line 130
    iget-object p1, p0, Lcom/mycompany/app/lock/PatternActivity;->o1:Landroidx/appcompat/widget/AppCompatTextView;

    .line 131
    .line 132
    if-eqz p1, :cond_9

    .line 133
    .line 134
    sget v0, Lnet/kaki87/soul2/testing/R$string;->continue_input:I

    .line 135
    .line 136
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 137
    .line 138
    .line 139
    goto :goto_3

    .line 140
    :cond_8
    iget-object p1, p0, Lcom/mycompany/app/lock/PatternActivity;->k1:Landroidx/appcompat/widget/AppCompatTextView;

    .line 141
    .line 142
    sget v0, Lnet/kaki87/soul2/testing/R$string;->input:I

    .line 143
    .line 144
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 145
    .line 146
    .line 147
    iget-object p1, p0, Lcom/mycompany/app/lock/PatternActivity;->o1:Landroidx/appcompat/widget/AppCompatTextView;

    .line 148
    .line 149
    if-eqz p1, :cond_9

    .line 150
    .line 151
    sget v0, Lnet/kaki87/soul2/testing/R$string;->continue_input:I

    .line 152
    .line 153
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 154
    .line 155
    .line 156
    :cond_9
    :goto_3
    iget-object p1, p0, Lcom/mycompany/app/lock/PatternActivity;->o1:Landroidx/appcompat/widget/AppCompatTextView;

    .line 157
    .line 158
    if-eqz p1, :cond_d

    .line 159
    .line 160
    iget-boolean v0, p0, Lcom/mycompany/app/lock/PatternActivity;->u1:Z

    .line 161
    .line 162
    if-eqz v0, :cond_b

    .line 163
    .line 164
    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 165
    .line 166
    .line 167
    iget-object p1, p0, Lcom/mycompany/app/lock/PatternActivity;->o1:Landroidx/appcompat/widget/AppCompatTextView;

    .line 168
    .line 169
    sget-boolean v0, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 170
    .line 171
    if-eqz v0, :cond_a

    .line 172
    .line 173
    move v1, v2

    .line 174
    :cond_a
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 175
    .line 176
    .line 177
    return-void

    .line 178
    :cond_b
    invoke-virtual {p1, v6}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 179
    .line 180
    .line 181
    iget-object p1, p0, Lcom/mycompany/app/lock/PatternActivity;->o1:Landroidx/appcompat/widget/AppCompatTextView;

    .line 182
    .line 183
    sget-boolean v0, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 184
    .line 185
    if-eqz v0, :cond_c

    .line 186
    .line 187
    move v4, v5

    .line 188
    :cond_c
    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 189
    .line 190
    .line 191
    :cond_d
    :goto_4
    return-void
.end method
