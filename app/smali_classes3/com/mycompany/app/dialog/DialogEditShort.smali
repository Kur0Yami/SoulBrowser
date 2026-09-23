.class public Lcom/mycompany/app/dialog/DialogEditShort;
.super Lcom/mycompany/app/view/MyDialogBottom;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mycompany/app/dialog/DialogEditShort$EditShortListener;
    }
.end annotation


# static fields
.field public static final synthetic u0:I


# instance fields
.field public a0:Lcom/mycompany/app/main/MainActivity;

.field public b0:Landroid/content/Context;

.field public c0:Lcom/mycompany/app/dialog/DialogEditShort$EditShortListener;

.field public d0:Ljava/lang/String;

.field public e0:Ljava/lang/String;

.field public final f0:I

.field public g0:Lcom/mycompany/app/view/MyDialogLinear;

.field public h0:Lcom/mycompany/app/view/MyRoundImage;

.field public i0:Lcom/mycompany/app/view/MyLineView;

.field public j0:Landroid/view/View;

.field public k0:Lcom/mycompany/app/view/MyEditText;

.field public l0:Landroidx/appcompat/widget/AppCompatTextView;

.field public m0:Lcom/mycompany/app/view/MyEditText;

.field public n0:Lcom/mycompany/app/view/MyLineText;

.field public o0:Z

.field public p0:Z

.field public q0:Lcom/mycompany/app/view/MyPopupMenu;

.field public r0:Landroid/net/Uri;

.field public s0:Ljava/lang/String;

.field public t0:Z


# direct methods
.method public constructor <init>(Lcom/mycompany/app/main/MainActivity;Ljava/lang/String;Ljava/lang/String;ILcom/mycompany/app/dialog/DialogEditShort$EditShortListener;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/mycompany/app/view/MyDialogBottom;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogEditShort;->a0:Lcom/mycompany/app/main/MainActivity;

    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogEditShort;->b0:Landroid/content/Context;

    .line 11
    .line 12
    iput-object p5, p0, Lcom/mycompany/app/dialog/DialogEditShort;->c0:Lcom/mycompany/app/dialog/DialogEditShort$EditShortListener;

    .line 13
    .line 14
    iput-object p2, p0, Lcom/mycompany/app/dialog/DialogEditShort;->d0:Ljava/lang/String;

    .line 15
    .line 16
    iput-object p3, p0, Lcom/mycompany/app/dialog/DialogEditShort;->e0:Ljava/lang/String;

    .line 17
    .line 18
    iput p4, p0, Lcom/mycompany/app/dialog/DialogEditShort;->f0:I

    .line 19
    .line 20
    iget-object p1, p0, Lcom/mycompany/app/view/MyDialogBottom;->i:Landroid/os/Handler;

    .line 21
    .line 22
    if-nez p1, :cond_0

    .line 23
    .line 24
    return-void

    .line 25
    :cond_0
    new-instance p2, Lcom/mycompany/app/dialog/DialogEditShort$1;

    .line 26
    .line 27
    invoke-direct {p2, p0}, Lcom/mycompany/app/dialog/DialogEditShort$1;-><init>(Lcom/mycompany/app/dialog/DialogEditShort;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 31
    .line 32
    .line 33
    return-void
.end method

.method public static B(Lcom/mycompany/app/dialog/DialogEditShort;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogEditShort;->b0:Landroid/content/Context;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto/16 :goto_7

    .line 6
    .line 7
    :cond_0
    iget v0, p0, Lcom/mycompany/app/dialog/DialogEditShort;->f0:I

    .line 8
    .line 9
    const-string v1, "EXTRA_SHORT"

    .line 10
    .line 11
    const/4 v2, 0x1

    .line 12
    if-ne v0, v2, :cond_1

    .line 13
    .line 14
    new-instance p1, Landroid/content/Intent;

    .line 15
    .line 16
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogEditShort;->b0:Landroid/content/Context;

    .line 17
    .line 18
    const-class v3, Lcom/mycompany/app/main/list/MainListAlbum;

    .line 19
    .line 20
    invoke-direct {p1, v0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_1
    const/4 v3, 0x2

    .line 28
    if-ne v0, v3, :cond_2

    .line 29
    .line 30
    new-instance p1, Landroid/content/Intent;

    .line 31
    .line 32
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogEditShort;->b0:Landroid/content/Context;

    .line 33
    .line 34
    const-class v3, Lcom/mycompany/app/main/list/MainListCast;

    .line 35
    .line 36
    invoke-direct {p1, v0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_2
    new-instance v0, Landroid/content/Intent;

    .line 44
    .line 45
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogEditShort;->b0:Landroid/content/Context;

    .line 46
    .line 47
    const-class v2, Lcom/mycompany/app/web/WebShortcut;

    .line 48
    .line 49
    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 50
    .line 51
    .line 52
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 57
    .line 58
    .line 59
    move-object p1, v0

    .line 60
    :goto_0
    const-string v0, "android.intent.action.VIEW"

    .line 61
    .line 62
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 63
    .line 64
    .line 65
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 66
    .line 67
    const/16 v1, 0x1a

    .line 68
    .line 69
    const/high16 v2, 0x3f800000    # 1.0f

    .line 70
    .line 71
    if-lt v0, v1, :cond_9

    .line 72
    .line 73
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogEditShort;->b0:Landroid/content/Context;

    .line 74
    .line 75
    const-class v1, Landroid/content/pm/ShortcutManager;

    .line 76
    .line 77
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    check-cast v0, Landroid/content/pm/ShortcutManager;

    .line 82
    .line 83
    if-eqz v0, :cond_7

    .line 84
    .line 85
    invoke-virtual {v0}, Landroid/content/pm/ShortcutManager;->isRequestPinShortcutSupported()Z

    .line 86
    .line 87
    .line 88
    move-result v1

    .line 89
    if-nez v1, :cond_3

    .line 90
    .line 91
    goto :goto_2

    .line 92
    :cond_3
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogEditShort;->h0:Lcom/mycompany/app/view/MyRoundImage;

    .line 93
    .line 94
    invoke-static {v1, v2}, Lcom/mycompany/app/main/MainUtil;->j4(Landroid/view/View;F)Landroid/graphics/Bitmap;

    .line 95
    .line 96
    .line 97
    move-result-object v1

    .line 98
    invoke-static {v1}, Lcom/mycompany/app/main/MainUtil;->f6(Landroid/graphics/Bitmap;)Z

    .line 99
    .line 100
    .line 101
    move-result v2

    .line 102
    const/4 v3, 0x0

    .line 103
    if-eqz v2, :cond_4

    .line 104
    .line 105
    invoke-static {v1}, Landroid/graphics/drawable/Icon;->createWithBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Icon;

    .line 106
    .line 107
    .line 108
    move-result-object v1

    .line 109
    goto :goto_1

    .line 110
    :cond_4
    move-object v1, v3

    .line 111
    :goto_1
    if-nez v1, :cond_5

    .line 112
    .line 113
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogEditShort;->b0:Landroid/content/Context;

    .line 114
    .line 115
    sget v2, Lnet/kaki87/soul2/testing/R$mipmap;->ic_launcher:I

    .line 116
    .line 117
    invoke-static {v1, v2}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/Context;I)Landroid/graphics/drawable/Icon;

    .line 118
    .line 119
    .line 120
    move-result-object v1

    .line 121
    :cond_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 122
    .line 123
    .line 124
    move-result-wide v4

    .line 125
    new-instance v2, Landroid/content/pm/ShortcutInfo$Builder;

    .line 126
    .line 127
    iget-object v2, p0, Lcom/mycompany/app/dialog/DialogEditShort;->b0:Landroid/content/Context;

    .line 128
    .line 129
    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object v4

    .line 133
    new-instance v5, Landroid/content/pm/ShortcutInfo$Builder;

    .line 134
    .line 135
    invoke-direct {v5, v2, v4}, Landroid/content/pm/ShortcutInfo$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 136
    .line 137
    .line 138
    invoke-virtual {v5, p1}, Landroid/content/pm/ShortcutInfo$Builder;->setIntent(Landroid/content/Intent;)Landroid/content/pm/ShortcutInfo$Builder;

    .line 139
    .line 140
    .line 141
    move-result-object p1

    .line 142
    invoke-virtual {p1, p2}, Landroid/content/pm/ShortcutInfo$Builder;->setShortLabel(Ljava/lang/CharSequence;)Landroid/content/pm/ShortcutInfo$Builder;

    .line 143
    .line 144
    .line 145
    move-result-object p1

    .line 146
    invoke-virtual {p1, v1}, Landroid/content/pm/ShortcutInfo$Builder;->setIcon(Landroid/graphics/drawable/Icon;)Landroid/content/pm/ShortcutInfo$Builder;

    .line 147
    .line 148
    .line 149
    move-result-object p1

    .line 150
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo$Builder;->build()Landroid/content/pm/ShortcutInfo;

    .line 151
    .line 152
    .line 153
    move-result-object p1

    .line 154
    invoke-virtual {v0, p1, v3}, Landroid/content/pm/ShortcutManager;->requestPinShortcut(Landroid/content/pm/ShortcutInfo;Landroid/content/IntentSender;)Z

    .line 155
    .line 156
    .line 157
    iget-object p1, p0, Lcom/mycompany/app/view/MyDialogBottom;->i:Landroid/os/Handler;

    .line 158
    .line 159
    if-nez p1, :cond_6

    .line 160
    .line 161
    goto/16 :goto_7

    .line 162
    .line 163
    :cond_6
    new-instance p2, Lcom/mycompany/app/dialog/DialogEditShort$13;

    .line 164
    .line 165
    invoke-direct {p2, p0}, Lcom/mycompany/app/dialog/DialogEditShort$13;-><init>(Lcom/mycompany/app/dialog/DialogEditShort;)V

    .line 166
    .line 167
    .line 168
    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 169
    .line 170
    .line 171
    return-void

    .line 172
    :cond_7
    :goto_2
    iget-object p1, p0, Lcom/mycompany/app/view/MyDialogBottom;->i:Landroid/os/Handler;

    .line 173
    .line 174
    if-nez p1, :cond_8

    .line 175
    .line 176
    goto/16 :goto_7

    .line 177
    .line 178
    :cond_8
    new-instance p2, Lcom/mycompany/app/dialog/DialogEditShort$12;

    .line 179
    .line 180
    invoke-direct {p2, p0}, Lcom/mycompany/app/dialog/DialogEditShort$12;-><init>(Lcom/mycompany/app/dialog/DialogEditShort;)V

    .line 181
    .line 182
    .line 183
    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 184
    .line 185
    .line 186
    return-void

    .line 187
    :cond_9
    new-instance v0, Landroid/content/Intent;

    .line 188
    .line 189
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 190
    .line 191
    .line 192
    const-string v1, "android.intent.extra.shortcut.INTENT"

    .line 193
    .line 194
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 195
    .line 196
    .line 197
    const-string p1, "android.intent.extra.shortcut.NAME"

    .line 198
    .line 199
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 200
    .line 201
    .line 202
    const-string p1, "com.android.launcher.action.INSTALL_SHORTCUT"

    .line 203
    .line 204
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 205
    .line 206
    .line 207
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogEditShort;->h0:Lcom/mycompany/app/view/MyRoundImage;

    .line 208
    .line 209
    invoke-static {p1, v2}, Lcom/mycompany/app/main/MainUtil;->j4(Landroid/view/View;F)Landroid/graphics/Bitmap;

    .line 210
    .line 211
    .line 212
    move-result-object p1

    .line 213
    invoke-static {p1}, Lcom/mycompany/app/main/MainUtil;->f6(Landroid/graphics/Bitmap;)Z

    .line 214
    .line 215
    .line 216
    move-result p2

    .line 217
    if-eqz p2, :cond_e

    .line 218
    .line 219
    iget-object p2, p0, Lcom/mycompany/app/dialog/DialogEditShort;->b0:Landroid/content/Context;

    .line 220
    .line 221
    const/16 v1, 0x60

    .line 222
    .line 223
    if-nez p2, :cond_a

    .line 224
    .line 225
    goto :goto_5

    .line 226
    :cond_a
    sget v2, Lnet/kaki87/soul2/testing/R$mipmap;->ic_launcher:I

    .line 227
    .line 228
    invoke-static {p2, v2}, Lcom/mycompany/app/main/MainUtil;->S(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 229
    .line 230
    .line 231
    move-result-object p2

    .line 232
    if-eqz p2, :cond_b

    .line 233
    .line 234
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 235
    .line 236
    .line 237
    move-result p2

    .line 238
    goto :goto_3

    .line 239
    :cond_b
    const/4 p2, 0x0

    .line 240
    :goto_3
    if-lez p2, :cond_c

    .line 241
    .line 242
    :goto_4
    move v1, p2

    .line 243
    goto :goto_5

    .line 244
    :cond_c
    iget-object p2, p0, Lcom/mycompany/app/dialog/DialogEditShort;->b0:Landroid/content/Context;

    .line 245
    .line 246
    const-string v2, "activity"

    .line 247
    .line 248
    invoke-virtual {p2, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 249
    .line 250
    .line 251
    move-result-object p2

    .line 252
    check-cast p2, Landroid/app/ActivityManager;

    .line 253
    .line 254
    invoke-virtual {p2}, Landroid/app/ActivityManager;->getLauncherLargeIconSize()I

    .line 255
    .line 256
    .line 257
    move-result p2

    .line 258
    if-lez p2, :cond_d

    .line 259
    .line 260
    goto :goto_4

    .line 261
    :cond_d
    :goto_5
    invoke-static {v1, v1, p1}, Lcom/mycompany/app/main/MainUtil;->k3(IILandroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 262
    .line 263
    .line 264
    move-result-object p2

    .line 265
    invoke-static {p2}, Lcom/mycompany/app/main/MainUtil;->f6(Landroid/graphics/Bitmap;)Z

    .line 266
    .line 267
    .line 268
    move-result v1

    .line 269
    if-eqz v1, :cond_e

    .line 270
    .line 271
    move-object p1, p2

    .line 272
    :cond_e
    invoke-static {p1}, Lcom/mycompany/app/main/MainUtil;->f6(Landroid/graphics/Bitmap;)Z

    .line 273
    .line 274
    .line 275
    move-result p2

    .line 276
    if-eqz p2, :cond_f

    .line 277
    .line 278
    const-string p2, "android.intent.extra.shortcut.ICON"

    .line 279
    .line 280
    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 281
    .line 282
    .line 283
    goto :goto_6

    .line 284
    :cond_f
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogEditShort;->b0:Landroid/content/Context;

    .line 285
    .line 286
    sget p2, Lnet/kaki87/soul2/testing/R$mipmap;->ic_launcher:I

    .line 287
    .line 288
    invoke-static {p1, p2}, Landroid/content/Intent$ShortcutIconResource;->fromContext(Landroid/content/Context;I)Landroid/content/Intent$ShortcutIconResource;

    .line 289
    .line 290
    .line 291
    move-result-object p1

    .line 292
    const-string p2, "android.intent.extra.shortcut.ICON_RESOURCE"

    .line 293
    .line 294
    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 295
    .line 296
    .line 297
    :goto_6
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogEditShort;->b0:Landroid/content/Context;

    .line 298
    .line 299
    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 300
    .line 301
    .line 302
    iget-object p1, p0, Lcom/mycompany/app/view/MyDialogBottom;->i:Landroid/os/Handler;

    .line 303
    .line 304
    if-nez p1, :cond_10

    .line 305
    .line 306
    :goto_7
    return-void

    .line 307
    :cond_10
    new-instance p2, Lcom/mycompany/app/dialog/DialogEditShort$14;

    .line 308
    .line 309
    invoke-direct {p2, p0}, Lcom/mycompany/app/dialog/DialogEditShort$14;-><init>(Lcom/mycompany/app/dialog/DialogEditShort;)V

    .line 310
    .line 311
    .line 312
    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 313
    .line 314
    .line 315
    return-void
.end method

.method public static C(Lcom/mycompany/app/dialog/DialogEditShort;)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditShort;->b0:Landroid/content/Context;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    goto/16 :goto_2

    .line 8
    .line 9
    :cond_0
    const/4 v2, 0x1

    .line 10
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->q(Landroid/content/Context;I)Lcom/mycompany/app/view/MyDialogLinear;

    .line 11
    .line 12
    .line 13
    move-result-object v3

    .line 14
    const/high16 v4, 0x42900000    # 72.0f

    .line 15
    .line 16
    invoke-static {v1, v4}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 17
    .line 18
    .line 19
    move-result v4

    .line 20
    float-to-int v4, v4

    .line 21
    new-instance v5, Lcom/mycompany/app/view/MyLineFrame;

    .line 22
    .line 23
    invoke-direct {v5, v1}, Lcom/mycompany/app/view/MyLineFrame;-><init>(Landroid/content/Context;)V

    .line 24
    .line 25
    .line 26
    sget v6, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 27
    .line 28
    invoke-virtual {v5, v6}, Lcom/mycompany/app/view/MyLineFrame;->a(I)V

    .line 29
    .line 30
    .line 31
    const/4 v6, -0x1

    .line 32
    invoke-virtual {v3, v5, v6, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 33
    .line 34
    .line 35
    new-instance v7, Lcom/mycompany/app/view/MyRoundImage;

    .line 36
    .line 37
    invoke-direct {v7, v1}, Lcom/mycompany/app/view/MyRoundImage;-><init>(Landroid/content/Context;)V

    .line 38
    .line 39
    .line 40
    sget-object v8, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    .line 41
    .line 42
    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 43
    .line 44
    .line 45
    sget v8, Lcom/mycompany/app/main/MainApp;->f1:I

    .line 46
    .line 47
    int-to-float v8, v8

    .line 48
    const/high16 v9, 0x40000000    # 2.0f

    .line 49
    .line 50
    div-float/2addr v8, v9

    .line 51
    invoke-virtual {v7, v8}, Lcom/mycompany/app/view/MyRoundImage;->setCircleRadius(F)V

    .line 52
    .line 53
    .line 54
    new-instance v8, Landroid/widget/FrameLayout$LayoutParams;

    .line 55
    .line 56
    sget v10, Lcom/mycompany/app/main/MainApp;->f1:I

    .line 57
    .line 58
    invoke-direct {v8, v10, v10}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 59
    .line 60
    .line 61
    const v10, 0x800013

    .line 62
    .line 63
    .line 64
    iput v10, v8, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 65
    .line 66
    sget v11, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 67
    .line 68
    invoke-virtual {v8, v11}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {v5, v7, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 72
    .line 73
    .line 74
    new-instance v8, Lcom/mycompany/app/view/MyLineView;

    .line 75
    .line 76
    invoke-direct {v8, v1}, Lcom/mycompany/app/view/MyLineView;-><init>(Landroid/content/Context;)V

    .line 77
    .line 78
    .line 79
    invoke-static {v1, v9}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 80
    .line 81
    .line 82
    move-result v9

    .line 83
    invoke-virtual {v8, v9}, Lcom/mycompany/app/view/MyLineView;->a(F)V

    .line 84
    .line 85
    .line 86
    new-instance v9, Landroid/widget/FrameLayout$LayoutParams;

    .line 87
    .line 88
    sget v11, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 89
    .line 90
    invoke-direct {v9, v11, v11}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 91
    .line 92
    .line 93
    iput v10, v9, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 94
    .line 95
    sget v11, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 96
    .line 97
    sget v12, Lcom/mycompany/app/main/MainApp;->G1:I

    .line 98
    .line 99
    add-int/2addr v11, v12

    .line 100
    invoke-virtual {v9, v11}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {v5, v8, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 104
    .line 105
    .line 106
    sget-boolean v9, Lcom/mycompany/app/pref/PrefZone;->A:Z

    .line 107
    .line 108
    const/4 v11, 0x0

    .line 109
    if-eqz v9, :cond_1

    .line 110
    .line 111
    new-instance v9, Landroid/view/View;

    .line 112
    .line 113
    invoke-direct {v9, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 114
    .line 115
    .line 116
    sget v12, Lnet/kaki87/soul2/testing/R$drawable;->noti_dot_red:I

    .line 117
    .line 118
    invoke-virtual {v9, v12}, Landroid/view/View;->setBackgroundResource(I)V

    .line 119
    .line 120
    .line 121
    new-instance v12, Landroid/widget/FrameLayout$LayoutParams;

    .line 122
    .line 123
    sget v13, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 124
    .line 125
    invoke-direct {v12, v13, v13}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 126
    .line 127
    .line 128
    const/high16 v13, 0x41100000    # 9.0f

    .line 129
    .line 130
    invoke-static {v1, v13}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 131
    .line 132
    .line 133
    move-result v13

    .line 134
    float-to-int v13, v13

    .line 135
    iput v13, v12, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 136
    .line 137
    invoke-virtual {v12, v13}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 138
    .line 139
    .line 140
    invoke-virtual {v5, v9, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 141
    .line 142
    .line 143
    goto :goto_0

    .line 144
    :cond_1
    move-object v9, v11

    .line 145
    :goto_0
    new-instance v12, Lcom/mycompany/app/view/MyEditText;

    .line 146
    .line 147
    invoke-direct {v12, v1}, Lcom/mycompany/app/view/MyEditText;-><init>(Landroid/content/Context;)V

    .line 148
    .line 149
    .line 150
    const/16 v13, 0x10

    .line 151
    .line 152
    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setGravity(I)V

    .line 153
    .line 154
    .line 155
    invoke-virtual {v12, v2}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 156
    .line 157
    .line 158
    const/4 v14, 0x3

    .line 159
    invoke-virtual {v12, v14}, Landroid/view/View;->setTextDirection(I)V

    .line 160
    .line 161
    .line 162
    const/high16 v15, 0x41800000    # 16.0f

    .line 163
    .line 164
    invoke-virtual {v12, v2, v15}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 165
    .line 166
    .line 167
    sget v15, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 168
    .line 169
    const/16 v13, 0x1d

    .line 170
    .line 171
    if-lt v15, v13, :cond_2

    .line 172
    .line 173
    sget v13, Lnet/kaki87/soul2/testing/R$drawable;->edit_cursor:I

    .line 174
    .line 175
    invoke-virtual {v12, v13}, Landroid/widget/EditText;->setTextCursorDrawable(I)V

    .line 176
    .line 177
    .line 178
    :cond_2
    sget v13, Lnet/kaki87/soul2/testing/R$string;->name:I

    .line 179
    .line 180
    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setHint(I)V

    .line 181
    .line 182
    .line 183
    const v13, -0x7e7e7f

    .line 184
    .line 185
    .line 186
    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setHintTextColor(I)V

    .line 187
    .line 188
    .line 189
    const/high16 v13, 0x10000000

    .line 190
    .line 191
    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setImeOptions(I)V

    .line 192
    .line 193
    .line 194
    invoke-virtual {v12, v11}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 195
    .line 196
    .line 197
    new-instance v13, Landroid/widget/FrameLayout$LayoutParams;

    .line 198
    .line 199
    sget v14, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 200
    .line 201
    invoke-direct {v13, v6, v14}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 202
    .line 203
    .line 204
    iput v10, v13, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 205
    .line 206
    invoke-virtual {v13, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 207
    .line 208
    .line 209
    sget v4, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 210
    .line 211
    invoke-virtual {v13, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 212
    .line 213
    .line 214
    invoke-virtual {v5, v12, v13}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 215
    .line 216
    .line 217
    iget v4, v0, Lcom/mycompany/app/dialog/DialogEditShort;->f0:I

    .line 218
    .line 219
    if-nez v4, :cond_4

    .line 220
    .line 221
    const/high16 v4, 0x42b00000    # 88.0f

    .line 222
    .line 223
    invoke-static {v1, v4}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 224
    .line 225
    .line 226
    move-result v4

    .line 227
    float-to-int v4, v4

    .line 228
    const/high16 v5, 0x41400000    # 12.0f

    .line 229
    .line 230
    invoke-static {v1, v5}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 231
    .line 232
    .line 233
    move-result v5

    .line 234
    float-to-int v5, v5

    .line 235
    new-instance v10, Landroid/widget/FrameLayout;

    .line 236
    .line 237
    invoke-direct {v10, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 238
    .line 239
    .line 240
    sget v13, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 241
    .line 242
    invoke-virtual {v10, v13, v5, v13, v5}, Landroid/view/View;->setPadding(IIII)V

    .line 243
    .line 244
    .line 245
    const/16 v5, 0x8

    .line 246
    .line 247
    invoke-virtual {v10, v5}, Landroid/view/View;->setVisibility(I)V

    .line 248
    .line 249
    .line 250
    invoke-virtual {v3, v10, v6, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 251
    .line 252
    .line 253
    const/high16 v4, 0x41600000    # 14.0f

    .line 254
    .line 255
    invoke-static {v1, v11, v2, v4}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->j(Landroid/content/Context;Landroid/util/AttributeSet;IF)Landroidx/appcompat/widget/AppCompatTextView;

    .line 256
    .line 257
    .line 258
    move-result-object v4

    .line 259
    const/4 v5, -0x2

    .line 260
    invoke-virtual {v10, v4, v5, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 261
    .line 262
    .line 263
    new-instance v5, Lcom/mycompany/app/view/MyEditText;

    .line 264
    .line 265
    invoke-direct {v5, v1}, Lcom/mycompany/app/view/MyEditText;-><init>(Landroid/content/Context;)V

    .line 266
    .line 267
    .line 268
    const/4 v13, 0x3

    .line 269
    const/16 v14, 0x10

    .line 270
    .line 271
    invoke-static {v5, v14, v2, v13}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->z(Lcom/mycompany/app/view/MyEditText;IZI)V

    .line 272
    .line 273
    .line 274
    const/high16 v13, 0x41800000    # 16.0f

    .line 275
    .line 276
    invoke-virtual {v5, v2, v13}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 277
    .line 278
    .line 279
    const/16 v13, 0x1d

    .line 280
    .line 281
    if-lt v15, v13, :cond_3

    .line 282
    .line 283
    sget v13, Lnet/kaki87/soul2/testing/R$drawable;->edit_cursor:I

    .line 284
    .line 285
    invoke-virtual {v5, v13}, Landroid/widget/EditText;->setTextCursorDrawable(I)V

    .line 286
    .line 287
    .line 288
    :cond_3
    const v13, -0x7e7e7f

    .line 289
    .line 290
    .line 291
    invoke-virtual {v5, v13}, Landroid/widget/TextView;->setHintTextColor(I)V

    .line 292
    .line 293
    .line 294
    invoke-virtual {v5, v14}, Landroid/widget/TextView;->setInputType(I)V

    .line 295
    .line 296
    .line 297
    const/high16 v13, 0x10000000

    .line 298
    .line 299
    invoke-virtual {v5, v13}, Landroid/widget/TextView;->setImeOptions(I)V

    .line 300
    .line 301
    .line 302
    invoke-virtual {v5, v11}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 303
    .line 304
    .line 305
    new-instance v11, Landroid/widget/FrameLayout$LayoutParams;

    .line 306
    .line 307
    sget v13, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 308
    .line 309
    invoke-direct {v11, v6, v13}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 310
    .line 311
    .line 312
    const v13, 0x800053

    .line 313
    .line 314
    .line 315
    iput v13, v11, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 316
    .line 317
    invoke-virtual {v10, v5, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 318
    .line 319
    .line 320
    move-object v11, v4

    .line 321
    goto :goto_1

    .line 322
    :cond_4
    move-object v5, v11

    .line 323
    :goto_1
    const/16 v4, 0x11

    .line 324
    .line 325
    const/high16 v13, 0x41800000    # 16.0f

    .line 326
    .line 327
    invoke-static {v1, v4, v2, v13}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->r(Landroid/content/Context;IIF)Lcom/mycompany/app/view/MyLineText;

    .line 328
    .line 329
    .line 330
    move-result-object v1

    .line 331
    sget v2, Lnet/kaki87/soul2/testing/R$string;->apply:I

    .line 332
    .line 333
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 334
    .line 335
    .line 336
    sget v2, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 337
    .line 338
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyLineText;->t(I)V

    .line 339
    .line 340
    .line 341
    sget v2, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 342
    .line 343
    invoke-virtual {v3, v1, v6, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 344
    .line 345
    .line 346
    iput-object v3, v0, Lcom/mycompany/app/dialog/DialogEditShort;->g0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 347
    .line 348
    iput-object v7, v0, Lcom/mycompany/app/dialog/DialogEditShort;->h0:Lcom/mycompany/app/view/MyRoundImage;

    .line 349
    .line 350
    iput-object v8, v0, Lcom/mycompany/app/dialog/DialogEditShort;->i0:Lcom/mycompany/app/view/MyLineView;

    .line 351
    .line 352
    iput-object v9, v0, Lcom/mycompany/app/dialog/DialogEditShort;->j0:Landroid/view/View;

    .line 353
    .line 354
    iput-object v12, v0, Lcom/mycompany/app/dialog/DialogEditShort;->k0:Lcom/mycompany/app/view/MyEditText;

    .line 355
    .line 356
    iput-object v11, v0, Lcom/mycompany/app/dialog/DialogEditShort;->l0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 357
    .line 358
    iput-object v5, v0, Lcom/mycompany/app/dialog/DialogEditShort;->m0:Lcom/mycompany/app/view/MyEditText;

    .line 359
    .line 360
    iput-object v1, v0, Lcom/mycompany/app/dialog/DialogEditShort;->n0:Lcom/mycompany/app/view/MyLineText;

    .line 361
    .line 362
    iget-object v1, v0, Lcom/mycompany/app/view/MyDialogBottom;->i:Landroid/os/Handler;

    .line 363
    .line 364
    if-nez v1, :cond_5

    .line 365
    .line 366
    :goto_2
    return-void

    .line 367
    :cond_5
    new-instance v2, Lcom/mycompany/app/dialog/DialogEditShort$2;

    .line 368
    .line 369
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogEditShort$2;-><init>(Lcom/mycompany/app/dialog/DialogEditShort;)V

    .line 370
    .line 371
    .line 372
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 373
    .line 374
    .line 375
    return-void
.end method

.method public static D(Lcom/mycompany/app/dialog/DialogEditShort;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogEditShort;->k0:Lcom/mycompany/app/view/MyEditText;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const/4 v1, 0x1

    .line 7
    invoke-static {v0, v1}, Lcom/mycompany/app/main/MainUtil;->Q0(Landroid/widget/EditText;Z)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    if-eqz v2, :cond_1

    .line 16
    .line 17
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogEditShort;->k0:Lcom/mycompany/app/view/MyEditText;

    .line 18
    .line 19
    invoke-static {v0}, Lcom/mycompany/app/main/MainUtil;->b7(Landroid/view/View;)V

    .line 20
    .line 21
    .line 22
    iget-object p0, p0, Lcom/mycompany/app/dialog/DialogEditShort;->b0:Landroid/content/Context;

    .line 23
    .line 24
    sget v0, Lnet/kaki87/soul2/testing/R$string;->input_name:I

    .line 25
    .line 26
    invoke-static {p0, v0}, Lcom/mycompany/app/main/MainUtil;->e8(Landroid/content/Context;I)V

    .line 27
    .line 28
    .line 29
    return-void

    .line 30
    :cond_1
    iget-object v2, p0, Lcom/mycompany/app/dialog/DialogEditShort;->m0:Lcom/mycompany/app/view/MyEditText;

    .line 31
    .line 32
    if-eqz v2, :cond_2

    .line 33
    .line 34
    invoke-static {v2, v1}, Lcom/mycompany/app/main/MainUtil;->Q0(Landroid/widget/EditText;Z)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 39
    .line 40
    .line 41
    move-result v2

    .line 42
    if-eqz v2, :cond_3

    .line 43
    .line 44
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogEditShort;->m0:Lcom/mycompany/app/view/MyEditText;

    .line 45
    .line 46
    invoke-static {v0}, Lcom/mycompany/app/main/MainUtil;->b7(Landroid/view/View;)V

    .line 47
    .line 48
    .line 49
    iget-object p0, p0, Lcom/mycompany/app/dialog/DialogEditShort;->b0:Landroid/content/Context;

    .line 50
    .line 51
    sget v0, Lnet/kaki87/soul2/testing/R$string;->input_url:I

    .line 52
    .line 53
    invoke-static {p0, v0}, Lcom/mycompany/app/main/MainUtil;->e8(Landroid/content/Context;I)V

    .line 54
    .line 55
    .line 56
    return-void

    .line 57
    :cond_2
    const/4 v1, 0x0

    .line 58
    :cond_3
    new-instance v2, Lcom/mycompany/app/dialog/DialogEditShort$11;

    .line 59
    .line 60
    invoke-direct {v2, p0, v1, v0}, Lcom/mycompany/app/dialog/DialogEditShort$11;-><init>(Lcom/mycompany/app/dialog/DialogEditShort;Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {p0, v2}, Lcom/mycompany/app/view/MyDialogBottom;->s(Ljava/lang/Runnable;)V

    .line 64
    .line 65
    .line 66
    return-void
.end method


# virtual methods
.method public final E(IILandroid/content/Intent;)Z
    .locals 5

    .line 1
    const/16 v0, 0x9

    .line 2
    .line 3
    const/16 v1, 0xc

    .line 4
    .line 5
    const/4 v2, -0x1

    .line 6
    const/4 v3, 0x0

    .line 7
    const/4 v4, 0x1

    .line 8
    if-ne p1, v0, :cond_6

    .line 9
    .line 10
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogEditShort;->r0:Landroid/net/Uri;

    .line 11
    .line 12
    iput-object v3, p0, Lcom/mycompany/app/dialog/DialogEditShort;->r0:Landroid/net/Uri;

    .line 13
    .line 14
    if-eq p2, v2, :cond_0

    .line 15
    .line 16
    goto :goto_2

    .line 17
    :cond_0
    if-nez p3, :cond_1

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_1
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    :goto_0
    if-nez v3, :cond_2

    .line 25
    .line 26
    goto :goto_1

    .line 27
    :cond_2
    move-object p1, v3

    .line 28
    :goto_1
    iget-object p2, p0, Lcom/mycompany/app/dialog/DialogEditShort;->b0:Landroid/content/Context;

    .line 29
    .line 30
    invoke-static {p2, p1}, Lcom/mycompany/app/main/MainUtil;->z7(Landroid/content/Context;Landroid/net/Uri;)V

    .line 31
    .line 32
    .line 33
    iget-object p2, p0, Lcom/mycompany/app/dialog/DialogEditShort;->a0:Lcom/mycompany/app/main/MainActivity;

    .line 34
    .line 35
    if-nez p2, :cond_3

    .line 36
    .line 37
    goto :goto_2

    .line 38
    :cond_3
    if-nez p1, :cond_4

    .line 39
    .line 40
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogEditShort;->b0:Landroid/content/Context;

    .line 41
    .line 42
    sget p2, Lnet/kaki87/soul2/testing/R$string;->invalid_path:I

    .line 43
    .line 44
    invoke-static {p1, p2}, Lcom/mycompany/app/main/MainUtil;->e8(Landroid/content/Context;I)V

    .line 45
    .line 46
    .line 47
    return v4

    .line 48
    :cond_4
    iget-object p2, p0, Lcom/mycompany/app/dialog/DialogEditShort;->b0:Landroid/content/Context;

    .line 49
    .line 50
    invoke-static {p2}, Lcom/mycompany/app/main/MainUtil;->m0(Landroid/content/Context;)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p2

    .line 54
    iput-object p2, p0, Lcom/mycompany/app/dialog/DialogEditShort;->s0:Ljava/lang/String;

    .line 55
    .line 56
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 57
    .line 58
    .line 59
    move-result p2

    .line 60
    if-eqz p2, :cond_5

    .line 61
    .line 62
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogEditShort;->b0:Landroid/content/Context;

    .line 63
    .line 64
    sget p2, Lnet/kaki87/soul2/testing/R$string;->invalid_path:I

    .line 65
    .line 66
    invoke-static {p1, p2}, Lcom/mycompany/app/main/MainUtil;->e8(Landroid/content/Context;I)V

    .line 67
    .line 68
    .line 69
    return v4

    .line 70
    :cond_5
    new-instance p2, Landroid/content/Intent;

    .line 71
    .line 72
    iget-object p3, p0, Lcom/mycompany/app/dialog/DialogEditShort;->b0:Landroid/content/Context;

    .line 73
    .line 74
    const-class v0, Lcom/mycompany/app/main/image/MainImageCropper;

    .line 75
    .line 76
    invoke-direct {p2, p3, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {p2, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 80
    .line 81
    .line 82
    const-string p1, "EXTRA_DST"

    .line 83
    .line 84
    iget-object p3, p0, Lcom/mycompany/app/dialog/DialogEditShort;->s0:Ljava/lang/String;

    .line 85
    .line 86
    invoke-virtual {p2, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 87
    .line 88
    .line 89
    const-string p1, "EXTRA_ICON"

    .line 90
    .line 91
    invoke-virtual {p2, p1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 92
    .line 93
    .line 94
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogEditShort;->a0:Lcom/mycompany/app/main/MainActivity;

    .line 95
    .line 96
    invoke-virtual {p1, p2, v1}, Lcom/mycompany/app/main/MainActivity;->t0(Landroid/content/Intent;I)V

    .line 97
    .line 98
    .line 99
    return v4

    .line 100
    :cond_6
    const/4 p3, 0x0

    .line 101
    if-ne p1, v1, :cond_a

    .line 102
    .line 103
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogEditShort;->s0:Ljava/lang/String;

    .line 104
    .line 105
    iput-object v3, p0, Lcom/mycompany/app/dialog/DialogEditShort;->s0:Ljava/lang/String;

    .line 106
    .line 107
    if-eq p2, v2, :cond_7

    .line 108
    .line 109
    :goto_2
    return v4

    .line 110
    :cond_7
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 111
    .line 112
    .line 113
    move-result p2

    .line 114
    if-nez p2, :cond_9

    .line 115
    .line 116
    new-instance p2, Ljava/io/File;

    .line 117
    .line 118
    invoke-direct {p2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    .line 122
    .line 123
    .line 124
    move-result p2

    .line 125
    if-nez p2, :cond_8

    .line 126
    .line 127
    goto :goto_3

    .line 128
    :cond_8
    invoke-virtual {p0, p1, p3}, Lcom/mycompany/app/dialog/DialogEditShort;->F(Ljava/lang/String;Z)V

    .line 129
    .line 130
    .line 131
    return v4

    .line 132
    :cond_9
    :goto_3
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogEditShort;->b0:Landroid/content/Context;

    .line 133
    .line 134
    sget p2, Lnet/kaki87/soul2/testing/R$string;->invalid_path:I

    .line 135
    .line 136
    invoke-static {p1, p2}, Lcom/mycompany/app/main/MainUtil;->e8(Landroid/content/Context;I)V

    .line 137
    .line 138
    .line 139
    return v4

    .line 140
    :cond_a
    return p3
.end method

.method public final F(Ljava/lang/String;Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogEditShort;->h0:Lcom/mycompany/app/view/MyRoundImage;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iput-boolean p2, p0, Lcom/mycompany/app/dialog/DialogEditShort;->p0:Z

    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    if-nez p2, :cond_2

    .line 10
    .line 11
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 12
    .line 13
    .line 14
    move-result p2

    .line 15
    if-eqz p2, :cond_1

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_1
    new-instance p2, Lcom/mycompany/app/main/MainItem$ViewItem;

    .line 19
    .line 20
    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    .line 21
    .line 22
    .line 23
    iput v0, p2, Lcom/mycompany/app/main/MainItem$ViewItem;->a:I

    .line 24
    .line 25
    iput-object p1, p2, Lcom/mycompany/app/main/MainItem$ViewItem;->q:Ljava/lang/String;

    .line 26
    .line 27
    const/4 p1, 0x2

    .line 28
    iput p1, p2, Lcom/mycompany/app/main/MainItem$ViewItem;->t:I

    .line 29
    .line 30
    iput-boolean v0, p2, Lcom/mycompany/app/main/MainItem$ViewItem;->u:Z

    .line 31
    .line 32
    new-instance p1, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    .line 33
    .line 34
    invoke-direct {p1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;-><init>()V

    .line 35
    .line 36
    .line 37
    iput-boolean v0, p1, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->a:Z

    .line 38
    .line 39
    iput-boolean v0, p1, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->b:Z

    .line 40
    .line 41
    sget-object v0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    .line 42
    .line 43
    invoke-virtual {p1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->a()V

    .line 44
    .line 45
    .line 46
    new-instance v0, Lcom/nostra13/universalimageloader/core/display/NoneBitmapDisplayer;

    .line 47
    .line 48
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 49
    .line 50
    .line 51
    iput-object v0, p1, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->f:Lcom/nostra13/universalimageloader/core/display/BitmapDisplayer;

    .line 52
    .line 53
    new-instance v0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    .line 54
    .line 55
    invoke-direct {v0, p1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;-><init>(Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;)V

    .line 56
    .line 57
    .line 58
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->f()Lcom/nostra13/universalimageloader/core/ImageLoader;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogEditShort;->h0:Lcom/mycompany/app/view/MyRoundImage;

    .line 63
    .line 64
    new-instance v2, Lcom/mycompany/app/dialog/DialogEditShort$10;

    .line 65
    .line 66
    invoke-direct {v2, p0}, Lcom/mycompany/app/dialog/DialogEditShort$10;-><init>(Lcom/mycompany/app/dialog/DialogEditShort;)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {p1, p2, v1, v0, v2}, Lcom/nostra13/universalimageloader/core/ImageLoader;->c(Lcom/mycompany/app/main/MainItem$ViewItem;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;Lcom/nostra13/universalimageloader/core/listener/SimpleImageLoadingListener;)V

    .line 70
    .line 71
    .line 72
    return-void

    .line 73
    :cond_2
    :goto_0
    iget p1, p0, Lcom/mycompany/app/dialog/DialogEditShort;->f0:I

    .line 74
    .line 75
    const/4 p2, 0x0

    .line 76
    if-nez p1, :cond_6

    .line 77
    .line 78
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogEditShort;->c0:Lcom/mycompany/app/dialog/DialogEditShort$EditShortListener;

    .line 79
    .line 80
    if-eqz p1, :cond_3

    .line 81
    .line 82
    invoke-interface {p1}, Lcom/mycompany/app/dialog/DialogEditShort$EditShortListener;->getIcon()Landroid/graphics/Bitmap;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    goto :goto_1

    .line 87
    :cond_3
    const/4 p1, 0x0

    .line 88
    :goto_1
    invoke-static {p1}, Lcom/mycompany/app/main/MainUtil;->f6(Landroid/graphics/Bitmap;)Z

    .line 89
    .line 90
    .line 91
    move-result v1

    .line 92
    if-nez v1, :cond_4

    .line 93
    .line 94
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogEditShort;->d0:Ljava/lang/String;

    .line 95
    .line 96
    invoke-static {p1}, Lcom/mycompany/app/main/MainUtil;->O1(Ljava/lang/String;)Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object p1

    .line 100
    invoke-static {p1}, Lcom/mycompany/app/main/MainUtil;->n4(Ljava/lang/String;)Landroid/graphics/Bitmap;

    .line 101
    .line 102
    .line 103
    move-result-object p1

    .line 104
    :cond_4
    invoke-static {p1}, Lcom/mycompany/app/main/MainUtil;->f6(Landroid/graphics/Bitmap;)Z

    .line 105
    .line 106
    .line 107
    move-result v1

    .line 108
    if-eqz v1, :cond_5

    .line 109
    .line 110
    iput-boolean p2, p0, Lcom/mycompany/app/dialog/DialogEditShort;->t0:Z

    .line 111
    .line 112
    iget-object p2, p0, Lcom/mycompany/app/dialog/DialogEditShort;->h0:Lcom/mycompany/app/view/MyRoundImage;

    .line 113
    .line 114
    invoke-virtual {p2, p1}, Lcom/mycompany/app/view/MyRoundImage;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 115
    .line 116
    .line 117
    return-void

    .line 118
    :cond_5
    iput-boolean v0, p0, Lcom/mycompany/app/dialog/DialogEditShort;->t0:Z

    .line 119
    .line 120
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogEditShort;->k0:Lcom/mycompany/app/view/MyEditText;

    .line 121
    .line 122
    invoke-static {p1, v0}, Lcom/mycompany/app/main/MainUtil;->Q0(Landroid/widget/EditText;Z)Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object p1

    .line 126
    iget-object p2, p0, Lcom/mycompany/app/dialog/DialogEditShort;->h0:Lcom/mycompany/app/view/MyRoundImage;

    .line 127
    .line 128
    sget v0, Lnet/kaki87/soul2/testing/R$mipmap;->ic_launcher:I

    .line 129
    .line 130
    invoke-virtual {p2, v0, p1}, Lcom/mycompany/app/view/MyRoundImage;->y(ILjava/lang/String;)V

    .line 131
    .line 132
    .line 133
    return-void

    .line 134
    :cond_6
    iput-boolean p2, p0, Lcom/mycompany/app/dialog/DialogEditShort;->t0:Z

    .line 135
    .line 136
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogEditShort;->h0:Lcom/mycompany/app/view/MyRoundImage;

    .line 137
    .line 138
    sget p2, Lnet/kaki87/soul2/testing/R$mipmap;->ic_launcher:I

    .line 139
    .line 140
    invoke-virtual {p1, p2}, Lcom/mycompany/app/view/MyRoundImage;->setImageResource(I)V

    .line 141
    .line 142
    .line 143
    return-void
.end method

.method public final dismiss()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/mycompany/app/view/MyDialogBottom;->c:Z

    .line 3
    .line 4
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogEditShort;->b0:Landroid/content/Context;

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogEditShort;->q0:Lcom/mycompany/app/view/MyPopupMenu;

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    iput-object v1, p0, Lcom/mycompany/app/view/MyDialogBottom;->Y:Lcom/mycompany/app/view/MyPopupWrap;

    .line 15
    .line 16
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyPopupMenu;->a()V

    .line 17
    .line 18
    .line 19
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogEditShort;->q0:Lcom/mycompany/app/view/MyPopupMenu;

    .line 20
    .line 21
    :cond_1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogEditShort;->g0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 22
    .line 23
    if-eqz v0, :cond_2

    .line 24
    .line 25
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyDialogLinear;->b()V

    .line 26
    .line 27
    .line 28
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogEditShort;->g0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 29
    .line 30
    :cond_2
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogEditShort;->h0:Lcom/mycompany/app/view/MyRoundImage;

    .line 31
    .line 32
    if-eqz v0, :cond_3

    .line 33
    .line 34
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyRoundImage;->k()V

    .line 35
    .line 36
    .line 37
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogEditShort;->h0:Lcom/mycompany/app/view/MyRoundImage;

    .line 38
    .line 39
    :cond_3
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogEditShort;->i0:Lcom/mycompany/app/view/MyLineView;

    .line 40
    .line 41
    if-eqz v0, :cond_4

    .line 42
    .line 43
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyLineView;->b()V

    .line 44
    .line 45
    .line 46
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogEditShort;->i0:Lcom/mycompany/app/view/MyLineView;

    .line 47
    .line 48
    :cond_4
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogEditShort;->k0:Lcom/mycompany/app/view/MyEditText;

    .line 49
    .line 50
    if-eqz v0, :cond_5

    .line 51
    .line 52
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyEditText;->c()V

    .line 53
    .line 54
    .line 55
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogEditShort;->k0:Lcom/mycompany/app/view/MyEditText;

    .line 56
    .line 57
    :cond_5
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogEditShort;->m0:Lcom/mycompany/app/view/MyEditText;

    .line 58
    .line 59
    if-eqz v0, :cond_6

    .line 60
    .line 61
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyEditText;->c()V

    .line 62
    .line 63
    .line 64
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogEditShort;->m0:Lcom/mycompany/app/view/MyEditText;

    .line 65
    .line 66
    :cond_6
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogEditShort;->n0:Lcom/mycompany/app/view/MyLineText;

    .line 67
    .line 68
    if-eqz v0, :cond_7

    .line 69
    .line 70
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyLineText;->u()V

    .line 71
    .line 72
    .line 73
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogEditShort;->n0:Lcom/mycompany/app/view/MyLineText;

    .line 74
    .line 75
    :cond_7
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogEditShort;->a0:Lcom/mycompany/app/main/MainActivity;

    .line 76
    .line 77
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogEditShort;->b0:Landroid/content/Context;

    .line 78
    .line 79
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogEditShort;->c0:Lcom/mycompany/app/dialog/DialogEditShort$EditShortListener;

    .line 80
    .line 81
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogEditShort;->d0:Ljava/lang/String;

    .line 82
    .line 83
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogEditShort;->e0:Ljava/lang/String;

    .line 84
    .line 85
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogEditShort;->j0:Landroid/view/View;

    .line 86
    .line 87
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogEditShort;->l0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 88
    .line 89
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogEditShort;->r0:Landroid/net/Uri;

    .line 90
    .line 91
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogEditShort;->s0:Ljava/lang/String;

    .line 92
    .line 93
    invoke-super {p0}, Lcom/mycompany/app/view/MyDialogBottom;->dismiss()V

    .line 94
    .line 95
    .line 96
    return-void
.end method
