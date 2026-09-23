.class public Lcom/mycompany/app/main/list/MainListAlbum;
.super Lcom/mycompany/app/setting/CastActivity;
.source "SourceFile"


# static fields
.field public static final synthetic U1:I


# instance fields
.field public C1:Z

.field public D1:Z

.field public E1:Z

.field public F1:Z

.field public G1:I

.field public H1:Lcom/mycompany/app/view/MyMainRelative;

.field public I1:Lcom/mycompany/app/main/MainListView;

.field public J1:Lcom/mycompany/app/view/MyButtonText;

.field public K1:I

.field public L1:I

.field public M1:Z

.field public N1:Z

.field public O1:Z

.field public P1:Z

.field public Q1:Lcom/mycompany/app/dialog/DialogExtract;

.field public R1:Ljava/util/List;

.field public S1:Z

.field public T1:Lcom/mycompany/app/main/MainListView$ListViewHolder;


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


# virtual methods
.method public final D0(Landroid/content/Intent;)V
    .locals 3

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    goto :goto_1

    .line 4
    :cond_0
    const-string v0, "EXTRA_SHORT"

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    iput-boolean v0, p0, Lcom/mycompany/app/main/list/MainListAlbum;->D1:Z

    .line 12
    .line 13
    const/4 v1, 0x1

    .line 14
    if-eqz v0, :cond_3

    .line 15
    .line 16
    sget p1, Lcom/mycompany/app/pref/PrefList;->j:I

    .line 17
    .line 18
    if-nez p1, :cond_1

    .line 19
    .line 20
    iget-object p1, p0, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    .line 21
    .line 22
    invoke-static {p1, v1}, Lcom/mycompany/app/pref/PrefAlbum;->s(Landroid/content/Context;Z)V

    .line 23
    .line 24
    .line 25
    iget-object p1, p0, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    .line 26
    .line 27
    invoke-static {p1, v1}, Lcom/mycompany/app/pref/PrefImage;->s(Landroid/content/Context;Z)V

    .line 28
    .line 29
    .line 30
    iget-object p1, p0, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    .line 31
    .line 32
    invoke-static {p1, v1}, Lcom/mycompany/app/pref/PrefList;->s(Landroid/content/Context;Z)V

    .line 33
    .line 34
    .line 35
    iget-object p1, p0, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    .line 36
    .line 37
    invoke-static {p1, v1}, Lcom/mycompany/app/pref/PrefPath;->s(Landroid/content/Context;Z)V

    .line 38
    .line 39
    .line 40
    :cond_1
    invoke-static {}, Lcom/mycompany/app/main/MainUtil;->z6()Z

    .line 41
    .line 42
    .line 43
    move-result p1

    .line 44
    if-eqz p1, :cond_2

    .line 45
    .line 46
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    invoke-static {p1}, Lcom/mycompany/app/main/MainApp;->p(Landroid/content/Context;)Lcom/mycompany/app/main/MainApp;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    if-eqz p1, :cond_2

    .line 55
    .line 56
    iput-boolean v1, p1, Lcom/mycompany/app/main/MainApp;->p:Z

    .line 57
    .line 58
    :cond_2
    sget p1, Lcom/mycompany/app/pref/PrefList;->j:I

    .line 59
    .line 60
    iput p1, p0, Lcom/mycompany/app/main/list/MainListAlbum;->G1:I

    .line 61
    .line 62
    if-eq p1, v1, :cond_4

    .line 63
    .line 64
    const/4 v0, 0x2

    .line 65
    if-eq p1, v0, :cond_4

    .line 66
    .line 67
    const/4 v0, 0x3

    .line 68
    if-eq p1, v0, :cond_4

    .line 69
    .line 70
    iput v1, p0, Lcom/mycompany/app/main/list/MainListAlbum;->G1:I

    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_3
    const-string v0, "EXTRA_TYPE"

    .line 74
    .line 75
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 76
    .line 77
    .line 78
    move-result p1

    .line 79
    iput p1, p0, Lcom/mycompany/app/main/list/MainListAlbum;->G1:I

    .line 80
    .line 81
    :cond_4
    :goto_0
    sget p1, Lcom/mycompany/app/pref/PrefList;->j:I

    .line 82
    .line 83
    iget v0, p0, Lcom/mycompany/app/main/list/MainListAlbum;->G1:I

    .line 84
    .line 85
    if-eq p1, v0, :cond_5

    .line 86
    .line 87
    sput v0, Lcom/mycompany/app/pref/PrefList;->j:I

    .line 88
    .line 89
    iget-object p1, p0, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    .line 90
    .line 91
    const/4 v1, 0x4

    .line 92
    const-string v2, "mViewType"

    .line 93
    .line 94
    invoke-static {p1, v1, v0, v2}, Lcom/mycompany/app/pref/PrefSet;->f(Landroid/content/Context;IILjava/lang/String;)V

    .line 95
    .line 96
    .line 97
    :cond_5
    :goto_1
    return-void
.end method

.method public final dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/main/list/MainListAlbum;->I1:Lcom/mycompany/app/main/MainListView;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    return p1

    .line 7
    :cond_0
    invoke-virtual {v0, p1}, Lcom/mycompany/app/main/MainListView;->q(Landroid/view/MotionEvent;)V

    .line 8
    .line 9
    .line 10
    invoke-super {p0, p1}, Lcom/mycompany/app/main/MainActivity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    return p1
.end method

.method public final k0(IILandroid/content/Intent;)V
    .locals 6

    .line 1
    const/4 v0, 0x7

    .line 2
    const/4 v1, 0x1

    .line 3
    const/4 v2, -0x1

    .line 4
    if-eq p1, v0, :cond_e

    .line 5
    .line 6
    const/16 v0, 0x13

    .line 7
    .line 8
    if-eq p1, v0, :cond_1

    .line 9
    .line 10
    :cond_0
    :goto_0
    move-object v0, p0

    .line 11
    goto/16 :goto_8

    .line 12
    .line 13
    :cond_1
    if-ne p2, v2, :cond_0

    .line 14
    .line 15
    if-nez p3, :cond_2

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_2
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    if-nez p1, :cond_3

    .line 23
    .line 24
    sget p1, Lnet/kaki87/soul2/testing/R$string;->invalid_path:I

    .line 25
    .line 26
    invoke-static {p0, p1}, Lcom/mycompany/app/main/MainUtil;->e8(Landroid/content/Context;I)V

    .line 27
    .line 28
    .line 29
    return-void

    .line 30
    :cond_3
    invoke-static {p1}, Lcom/mycompany/app/main/MainUri;->a(Landroid/net/Uri;)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v4

    .line 34
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 35
    .line 36
    .line 37
    move-result p2

    .line 38
    if-eqz p2, :cond_4

    .line 39
    .line 40
    sget p1, Lnet/kaki87/soul2/testing/R$string;->invalid_path:I

    .line 41
    .line 42
    invoke-static {p0, p1}, Lcom/mycompany/app/main/MainUtil;->e8(Landroid/content/Context;I)V

    .line 43
    .line 44
    .line 45
    return-void

    .line 46
    :cond_4
    iget-object v3, p0, Lcom/mycompany/app/main/list/MainListAlbum;->R1:Ljava/util/List;

    .line 47
    .line 48
    if-eqz v3, :cond_9

    .line 49
    .line 50
    iget-object p1, p0, Lcom/mycompany/app/main/list/MainListAlbum;->Q1:Lcom/mycompany/app/dialog/DialogExtract;

    .line 51
    .line 52
    const/4 p2, 0x0

    .line 53
    if-eqz p1, :cond_5

    .line 54
    .line 55
    goto :goto_1

    .line 56
    :cond_5
    if-eqz p1, :cond_6

    .line 57
    .line 58
    invoke-virtual {p1}, Lcom/mycompany/app/dialog/DialogExtract;->dismiss()V

    .line 59
    .line 60
    .line 61
    iput-object p2, p0, Lcom/mycompany/app/main/list/MainListAlbum;->Q1:Lcom/mycompany/app/dialog/DialogExtract;

    .line 62
    .line 63
    :cond_6
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 64
    .line 65
    .line 66
    move-result p1

    .line 67
    if-eqz p1, :cond_7

    .line 68
    .line 69
    goto :goto_1

    .line 70
    :cond_7
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    .line 71
    .line 72
    .line 73
    move-result p1

    .line 74
    if-eqz p1, :cond_8

    .line 75
    .line 76
    :goto_1
    move-object v0, p0

    .line 77
    goto :goto_2

    .line 78
    :cond_8
    new-instance v0, Lcom/mycompany/app/dialog/DialogExtract;

    .line 79
    .line 80
    iget v2, p0, Lcom/mycompany/app/main/list/MainListAlbum;->G1:I

    .line 81
    .line 82
    new-instance v5, Lcom/mycompany/app/main/list/MainListAlbum$5;

    .line 83
    .line 84
    invoke-direct {v5, p0}, Lcom/mycompany/app/main/list/MainListAlbum$5;-><init>(Lcom/mycompany/app/main/list/MainListAlbum;)V

    .line 85
    .line 86
    .line 87
    move-object v1, p0

    .line 88
    invoke-direct/range {v0 .. v5}, Lcom/mycompany/app/dialog/DialogExtract;-><init>(Lcom/mycompany/app/main/list/MainListAlbum;ILjava/util/List;Ljava/lang/String;Lcom/mycompany/app/dialog/DialogSetFull$DialogApplyListener;)V

    .line 89
    .line 90
    .line 91
    move-object p1, v0

    .line 92
    move-object v0, v1

    .line 93
    iput-object p1, v0, Lcom/mycompany/app/main/list/MainListAlbum;->Q1:Lcom/mycompany/app/dialog/DialogExtract;

    .line 94
    .line 95
    new-instance p3, Lcom/mycompany/app/main/list/MainListAlbum$6;

    .line 96
    .line 97
    invoke-direct {p3, p0}, Lcom/mycompany/app/main/list/MainListAlbum$6;-><init>(Lcom/mycompany/app/main/list/MainListAlbum;)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {p1, p3}, Lcom/mycompany/app/view/MyDialogBottom;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 101
    .line 102
    .line 103
    :goto_2
    iput-object p2, v0, Lcom/mycompany/app/main/list/MainListAlbum;->R1:Ljava/util/List;

    .line 104
    .line 105
    return-void

    .line 106
    :cond_9
    move-object v0, p0

    .line 107
    iget p2, v0, Lcom/mycompany/app/main/list/MainListAlbum;->G1:I

    .line 108
    .line 109
    const/4 p3, 0x2

    .line 110
    const/4 v2, 0x6

    .line 111
    if-ne p2, p3, :cond_a

    .line 112
    .line 113
    sget-object p2, Lcom/mycompany/app/pref/PrefPath;->t:Ljava/lang/String;

    .line 114
    .line 115
    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 116
    .line 117
    .line 118
    move-result p2

    .line 119
    if-nez p2, :cond_c

    .line 120
    .line 121
    sput-object v4, Lcom/mycompany/app/pref/PrefPath;->t:Ljava/lang/String;

    .line 122
    .line 123
    iget-object p2, v0, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    .line 124
    .line 125
    const-string p3, "mScanPdf"

    .line 126
    .line 127
    invoke-static {v2, p2, p3, v4}, Lcom/mycompany/app/pref/PrefSet;->c(ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    goto :goto_3

    .line 131
    :cond_a
    const/4 p3, 0x3

    .line 132
    if-ne p2, p3, :cond_b

    .line 133
    .line 134
    sget-object p2, Lcom/mycompany/app/pref/PrefPath;->u:Ljava/lang/String;

    .line 135
    .line 136
    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 137
    .line 138
    .line 139
    move-result p2

    .line 140
    if-nez p2, :cond_c

    .line 141
    .line 142
    sput-object v4, Lcom/mycompany/app/pref/PrefPath;->u:Ljava/lang/String;

    .line 143
    .line 144
    iget-object p2, v0, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    .line 145
    .line 146
    const-string p3, "mScanZip"

    .line 147
    .line 148
    invoke-static {v2, p2, p3, v4}, Lcom/mycompany/app/pref/PrefSet;->c(ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    .line 150
    .line 151
    goto :goto_3

    .line 152
    :cond_b
    sget-object p2, Lcom/mycompany/app/pref/PrefPath;->s:Ljava/lang/String;

    .line 153
    .line 154
    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 155
    .line 156
    .line 157
    move-result p2

    .line 158
    if-nez p2, :cond_c

    .line 159
    .line 160
    sput-object v4, Lcom/mycompany/app/pref/PrefPath;->s:Ljava/lang/String;

    .line 161
    .line 162
    iget-object p2, v0, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    .line 163
    .line 164
    const-string p3, "mScanAlbum"

    .line 165
    .line 166
    invoke-static {v2, p2, p3, v4}, Lcom/mycompany/app/pref/PrefSet;->c(ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    .line 168
    .line 169
    :cond_c
    :goto_3
    iget-object p2, v0, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    .line 170
    .line 171
    invoke-static {p2, p1}, Lcom/mycompany/app/main/MainUtil;->z7(Landroid/content/Context;Landroid/net/Uri;)V

    .line 172
    .line 173
    .line 174
    iput-boolean v1, v0, Lcom/mycompany/app/main/list/MainListAlbum;->F1:Z

    .line 175
    .line 176
    iput-boolean v1, v0, Lcom/mycompany/app/main/list/MainListAlbum;->S1:Z

    .line 177
    .line 178
    iget-object p1, v0, Lcom/mycompany/app/main/list/MainListAlbum;->I1:Lcom/mycompany/app/main/MainListView;

    .line 179
    .line 180
    if-eqz p1, :cond_d

    .line 181
    .line 182
    invoke-virtual {p1}, Lcom/mycompany/app/main/MainListView;->P()V

    .line 183
    .line 184
    .line 185
    :cond_d
    sget p1, Lnet/kaki87/soul2/testing/R$string;->dir_scanning:I

    .line 186
    .line 187
    invoke-static {p0, p1}, Lcom/mycompany/app/main/MainUtil;->e8(Landroid/content/Context;I)V

    .line 188
    .line 189
    .line 190
    return-void

    .line 191
    :cond_e
    move-object v0, p0

    .line 192
    if-ne p2, v2, :cond_15

    .line 193
    .line 194
    if-eqz p3, :cond_15

    .line 195
    .line 196
    iget-object p1, v0, Lcom/mycompany/app/main/list/MainListAlbum;->I1:Lcom/mycompany/app/main/MainListView;

    .line 197
    .line 198
    if-nez p1, :cond_f

    .line 199
    .line 200
    goto/16 :goto_8

    .line 201
    .line 202
    :cond_f
    iget p1, v0, Lcom/mycompany/app/main/list/MainListAlbum;->K1:I

    .line 203
    .line 204
    iget p2, v0, Lcom/mycompany/app/main/list/MainListAlbum;->G1:I

    .line 205
    .line 206
    invoke-static {p2}, Lcom/mycompany/app/pref/PrefUtil;->d(I)I

    .line 207
    .line 208
    .line 209
    move-result p2

    .line 210
    const/4 v3, 0x0

    .line 211
    if-ne p1, p2, :cond_11

    .line 212
    .line 213
    iget p1, v0, Lcom/mycompany/app/main/list/MainListAlbum;->L1:I

    .line 214
    .line 215
    iget p2, v0, Lcom/mycompany/app/main/list/MainListAlbum;->G1:I

    .line 216
    .line 217
    invoke-static {p2}, Lcom/mycompany/app/pref/PrefUtil;->e(I)I

    .line 218
    .line 219
    .line 220
    move-result p2

    .line 221
    if-ne p1, p2, :cond_11

    .line 222
    .line 223
    iget-boolean p1, v0, Lcom/mycompany/app/main/list/MainListAlbum;->M1:Z

    .line 224
    .line 225
    iget p2, v0, Lcom/mycompany/app/main/list/MainListAlbum;->G1:I

    .line 226
    .line 227
    invoke-static {p2}, Lcom/mycompany/app/pref/PrefUtil;->f(I)Z

    .line 228
    .line 229
    .line 230
    move-result p2

    .line 231
    if-ne p1, p2, :cond_11

    .line 232
    .line 233
    iget-boolean p1, v0, Lcom/mycompany/app/main/list/MainListAlbum;->N1:Z

    .line 234
    .line 235
    iget p2, v0, Lcom/mycompany/app/main/list/MainListAlbum;->G1:I

    .line 236
    .line 237
    invoke-static {p2}, Lcom/mycompany/app/pref/PrefUtil;->a(I)Z

    .line 238
    .line 239
    .line 240
    move-result p2

    .line 241
    if-ne p1, p2, :cond_11

    .line 242
    .line 243
    iget-boolean p1, v0, Lcom/mycompany/app/main/list/MainListAlbum;->O1:Z

    .line 244
    .line 245
    iget p2, v0, Lcom/mycompany/app/main/list/MainListAlbum;->G1:I

    .line 246
    .line 247
    invoke-static {p2}, Lcom/mycompany/app/pref/PrefUtil;->c(I)Z

    .line 248
    .line 249
    .line 250
    move-result p2

    .line 251
    if-ne p1, p2, :cond_11

    .line 252
    .line 253
    iget-boolean p1, v0, Lcom/mycompany/app/main/list/MainListAlbum;->P1:Z

    .line 254
    .line 255
    iget p2, v0, Lcom/mycompany/app/main/list/MainListAlbum;->G1:I

    .line 256
    .line 257
    invoke-static {p2}, Lcom/mycompany/app/pref/PrefUtil;->b(I)Z

    .line 258
    .line 259
    .line 260
    move-result p2

    .line 261
    if-eq p1, p2, :cond_10

    .line 262
    .line 263
    goto :goto_4

    .line 264
    :cond_10
    move p1, v3

    .line 265
    goto :goto_5

    .line 266
    :cond_11
    :goto_4
    move p1, v1

    .line 267
    :goto_5
    const-string p2, "EXTRA_INDEX"

    .line 268
    .line 269
    invoke-virtual {p3, p2, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 270
    .line 271
    .line 272
    move-result p2

    .line 273
    if-eqz p1, :cond_14

    .line 274
    .line 275
    iget-object p1, v0, Lcom/mycompany/app/main/list/MainListAlbum;->I1:Lcom/mycompany/app/main/MainListView;

    .line 276
    .line 277
    iget-object p3, p1, Lcom/mycompany/app/main/MainListView;->h0:Lcom/mycompany/app/main/MainListAdapter;

    .line 278
    .line 279
    if-nez p3, :cond_12

    .line 280
    .line 281
    goto :goto_6

    .line 282
    :cond_12
    invoke-virtual {p3, p2}, Lcom/mycompany/app/main/MainListAdapter;->m(I)Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 283
    .line 284
    .line 285
    move-result-object p3

    .line 286
    if-nez p3, :cond_13

    .line 287
    .line 288
    iput v2, p1, Lcom/mycompany/app/main/MainListView;->k0:I

    .line 289
    .line 290
    iput v2, p1, Lcom/mycompany/app/main/MainListView;->l0:I

    .line 291
    .line 292
    iget-object p1, p1, Lcom/mycompany/app/main/MainListView;->h0:Lcom/mycompany/app/main/MainListAdapter;

    .line 293
    .line 294
    invoke-virtual {p1, v2, v3}, Lcom/mycompany/app/main/MainListAdapter;->B(IZ)Z

    .line 295
    .line 296
    .line 297
    goto :goto_6

    .line 298
    :cond_13
    iget p3, p3, Lcom/mycompany/app/main/MainItem$ChildItem;->H:I

    .line 299
    .line 300
    iput p3, p1, Lcom/mycompany/app/main/MainListView;->k0:I

    .line 301
    .line 302
    iput p2, p1, Lcom/mycompany/app/main/MainListView;->l0:I

    .line 303
    .line 304
    iget-object p1, p1, Lcom/mycompany/app/main/MainListView;->h0:Lcom/mycompany/app/main/MainListAdapter;

    .line 305
    .line 306
    invoke-virtual {p1, p2, v3}, Lcom/mycompany/app/main/MainListAdapter;->B(IZ)Z

    .line 307
    .line 308
    .line 309
    :goto_6
    iput-boolean v3, v0, Lcom/mycompany/app/main/list/MainListAlbum;->F1:Z

    .line 310
    .line 311
    goto :goto_7

    .line 312
    :cond_14
    iget-object p1, v0, Lcom/mycompany/app/main/list/MainListAlbum;->I1:Lcom/mycompany/app/main/MainListView;

    .line 313
    .line 314
    invoke-virtual {p1, p2, v3}, Lcom/mycompany/app/main/MainListView;->g0(IZ)Z

    .line 315
    .line 316
    .line 317
    move-result p1

    .line 318
    iput-boolean p1, v0, Lcom/mycompany/app/main/list/MainListAlbum;->F1:Z

    .line 319
    .line 320
    :goto_7
    iget-boolean p1, v0, Lcom/mycompany/app/main/list/MainListAlbum;->F1:Z

    .line 321
    .line 322
    if-nez p1, :cond_15

    .line 323
    .line 324
    iget-object p1, v0, Lcom/mycompany/app/main/list/MainListAlbum;->I1:Lcom/mycompany/app/main/MainListView;

    .line 325
    .line 326
    iput-boolean v1, p1, Lcom/mycompany/app/main/MainListView;->j0:Z

    .line 327
    .line 328
    :cond_15
    :goto_8
    return-void
.end method

.method public final l0()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/main/list/MainListAlbum;->I1:Lcom/mycompany/app/main/MainListView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/mycompany/app/main/MainListView;->V()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 13
    .line 14
    .line 15
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
    invoke-virtual {p0}, Lcom/mycompany/app/main/list/MainListAlbum;->l0()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4

    .line 1
    invoke-super {p0, p1}, Lcom/mycompany/app/main/MainActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/mycompany/app/main/list/MainListAlbum;->I1:Lcom/mycompany/app/main/MainListView;

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    goto :goto_1

    .line 9
    :cond_0
    invoke-virtual {v0, p1}, Lcom/mycompany/app/main/MainListView;->b0(Landroid/content/res/Configuration;)Z

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    if-eqz p1, :cond_4

    .line 14
    .line 15
    iget-object p1, p0, Lcom/mycompany/app/main/list/MainListAlbum;->H1:Lcom/mycompany/app/view/MyMainRelative;

    .line 16
    .line 17
    const v0, -0x70708

    .line 18
    .line 19
    .line 20
    const/high16 v1, -0x1000000

    .line 21
    .line 22
    if-eqz p1, :cond_2

    .line 23
    .line 24
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    sget-boolean v3, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 29
    .line 30
    if-eqz v3, :cond_1

    .line 31
    .line 32
    move v3, v1

    .line 33
    goto :goto_0

    .line 34
    :cond_1
    move v3, v0

    .line 35
    :goto_0
    invoke-virtual {p1, v2, v3}, Lcom/mycompany/app/view/MyMainRelative;->b(Landroid/view/Window;I)V

    .line 36
    .line 37
    .line 38
    :cond_2
    iget-object p1, p0, Lcom/mycompany/app/main/list/MainListAlbum;->J1:Lcom/mycompany/app/view/MyButtonText;

    .line 39
    .line 40
    if-eqz p1, :cond_4

    .line 41
    .line 42
    sget-boolean v2, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 43
    .line 44
    if-eqz v2, :cond_3

    .line 45
    .line 46
    const v0, -0x50506

    .line 47
    .line 48
    .line 49
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 50
    .line 51
    .line 52
    iget-object p1, p0, Lcom/mycompany/app/main/list/MainListAlbum;->J1:Lcom/mycompany/app/view/MyButtonText;

    .line 53
    .line 54
    const v0, -0xd8d8d9

    .line 55
    .line 56
    .line 57
    invoke-virtual {p1, v1, v0}, Lcom/mycompany/app/view/MyButtonText;->u(II)V

    .line 58
    .line 59
    .line 60
    return-void

    .line 61
    :cond_3
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 62
    .line 63
    .line 64
    iget-object p1, p0, Lcom/mycompany/app/main/list/MainListAlbum;->J1:Lcom/mycompany/app/view/MyButtonText;

    .line 65
    .line 66
    const/high16 v1, 0x21000000

    .line 67
    .line 68
    invoke-virtual {p1, v0, v1}, Lcom/mycompany/app/view/MyButtonText;->u(II)V

    .line 69
    .line 70
    .line 71
    :cond_4
    :goto_1
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 26

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-super/range {p0 .. p1}, Lcom/mycompany/app/setting/CastActivity;->onCreate(Landroid/os/Bundle;)V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x1

    .line 7
    iput-boolean v1, v0, Lcom/mycompany/app/main/list/MainListAlbum;->C1:Z

    .line 8
    .line 9
    invoke-static {v0}, Lcom/mycompany/app/main/MainUtil;->u7(Landroid/app/Activity;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    invoke-virtual {v0, v2}, Lcom/mycompany/app/main/list/MainListAlbum;->D0(Landroid/content/Intent;)V

    .line 17
    .line 18
    .line 19
    iget-boolean v2, v0, Lcom/mycompany/app/main/list/MainListAlbum;->D1:Z

    .line 20
    .line 21
    if-eqz v2, :cond_0

    .line 22
    .line 23
    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    invoke-static {v2}, Lcom/mycompany/app/main/MainApp;->x(Landroid/content/res/Resources;)V

    .line 28
    .line 29
    .line 30
    :cond_0
    const/16 v2, 0x13

    .line 31
    .line 32
    const/4 v3, 0x0

    .line 33
    invoke-virtual {v0, v3, v2}, Lcom/mycompany/app/main/MainActivity;->o0(Landroid/content/Intent;I)V

    .line 34
    .line 35
    .line 36
    const/4 v2, 0x7

    .line 37
    invoke-virtual {v0, v3, v2}, Lcom/mycompany/app/main/MainActivity;->o0(Landroid/content/Intent;I)V

    .line 38
    .line 39
    .line 40
    sget v2, Lnet/kaki87/soul2/testing/R$id;->list_title_text:I

    .line 41
    .line 42
    sget v4, Lnet/kaki87/soul2/testing/R$id;->list_icon_frame:I

    .line 43
    .line 44
    sget v5, Lnet/kaki87/soul2/testing/R$id;->list_bottom_view:I

    .line 45
    .line 46
    sget v6, Lnet/kaki87/soul2/testing/R$id;->list_cast_icon:I

    .line 47
    .line 48
    new-instance v7, Lcom/mycompany/app/view/MyMainRelative;

    .line 49
    .line 50
    invoke-direct {v7, v0}, Lcom/mycompany/app/view/MyMainRelative;-><init>(Landroid/content/Context;)V

    .line 51
    .line 52
    .line 53
    new-instance v8, Landroid/view/ViewGroup$LayoutParams;

    .line 54
    .line 55
    const/4 v9, -0x1

    .line 56
    invoke-direct {v8, v9, v9}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v7, v8}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 60
    .line 61
    .line 62
    new-instance v8, Landroid/widget/FrameLayout;

    .line 63
    .line 64
    invoke-direct {v8, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 65
    .line 66
    .line 67
    const/4 v10, 0x2

    .line 68
    invoke-static {v9, v9, v10, v5}, Landroidx/work/impl/workers/a;->h(IIII)Landroid/widget/RelativeLayout$LayoutParams;

    .line 69
    .line 70
    .line 71
    move-result-object v11

    .line 72
    invoke-virtual {v7, v8, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 73
    .line 74
    .line 75
    new-instance v11, Lcom/mycompany/app/fragment/FragmentExpandView;

    .line 76
    .line 77
    invoke-direct {v11, v0}, Lcom/mycompany/app/fragment/FragmentExpandView;-><init>(Landroid/content/Context;)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {v11, v3}, Landroid/widget/ExpandableListView;->setGroupIndicator(Landroid/graphics/drawable/Drawable;)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {v11, v3}, Landroid/widget/ExpandableListView;->setChildDivider(Landroid/graphics/drawable/Drawable;)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {v11, v3}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 87
    .line 88
    .line 89
    const/4 v12, 0x0

    .line 90
    invoke-virtual {v11, v12}, Landroid/view/View;->setVerticalScrollBarEnabled(Z)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {v11, v12}, Landroid/view/View;->setHorizontalScrollBarEnabled(Z)V

    .line 94
    .line 95
    .line 96
    new-instance v13, Landroid/graphics/drawable/ColorDrawable;

    .line 97
    .line 98
    invoke-direct {v13, v12}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {v11, v13}, Landroid/widget/AbsListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 102
    .line 103
    .line 104
    new-instance v13, Landroid/widget/FrameLayout$LayoutParams;

    .line 105
    .line 106
    invoke-direct {v13, v9, v9}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 107
    .line 108
    .line 109
    sget v14, Lcom/mycompany/app/main/MainApp;->b1:I

    .line 110
    .line 111
    iput v14, v13, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 112
    .line 113
    invoke-virtual {v8, v11, v13}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 114
    .line 115
    .line 116
    new-instance v13, Lcom/mycompany/app/view/MyListGroup;

    .line 117
    .line 118
    invoke-direct {v13, v0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 119
    .line 120
    .line 121
    const/4 v14, 0x4

    .line 122
    invoke-virtual {v13, v14}, Landroid/view/View;->setVisibility(I)V

    .line 123
    .line 124
    .line 125
    const/4 v15, -0x2

    .line 126
    invoke-virtual {v8, v13, v9, v15}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 127
    .line 128
    .line 129
    move/from16 p1, v10

    .line 130
    .line 131
    new-instance v10, Lcom/mycompany/app/view/MyScrollBar;

    .line 132
    .line 133
    invoke-direct {v10, v0}, Lcom/mycompany/app/view/MyScrollBar;-><init>(Landroid/content/Context;)V

    .line 134
    .line 135
    .line 136
    sget v3, Lcom/mycompany/app/main/MainApp;->b1:I

    .line 137
    .line 138
    sget v12, Lcom/mycompany/app/main/MainApp;->i1:I

    .line 139
    .line 140
    iput v3, v10, Lcom/mycompany/app/view/MyScrollBar;->O:I

    .line 141
    .line 142
    iput v12, v10, Lcom/mycompany/app/view/MyScrollBar;->P:I

    .line 143
    .line 144
    invoke-virtual {v10, v14}, Lcom/mycompany/app/view/MyScrollBar;->setVisibility(I)V

    .line 145
    .line 146
    .line 147
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    .line 148
    .line 149
    sget v12, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 150
    .line 151
    invoke-direct {v3, v12, v9}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 152
    .line 153
    .line 154
    const v12, 0x800005

    .line 155
    .line 156
    .line 157
    iput v12, v3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 158
    .line 159
    invoke-virtual {v8, v10, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 160
    .line 161
    .line 162
    new-instance v3, Lcom/mycompany/app/view/MyFadeImage;

    .line 163
    .line 164
    invoke-direct {v3, v0}, Lcom/mycompany/app/view/MyFadeImage;-><init>(Landroid/content/Context;)V

    .line 165
    .line 166
    .line 167
    sget-object v14, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    .line 168
    .line 169
    invoke-virtual {v3, v14}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 170
    .line 171
    .line 172
    sget v12, Lnet/kaki87/soul2/testing/R$drawable;->logo_gray:I

    .line 173
    .line 174
    invoke-virtual {v3, v12}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 175
    .line 176
    .line 177
    const/16 v12, 0x8

    .line 178
    .line 179
    invoke-virtual {v3, v12}, Lcom/mycompany/app/view/MyFadeImage;->setVisibility(I)V

    .line 180
    .line 181
    .line 182
    new-instance v15, Landroid/widget/FrameLayout$LayoutParams;

    .line 183
    .line 184
    invoke-direct {v15, v9, v9}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 185
    .line 186
    .line 187
    sget v9, Lcom/mycompany/app/main/MainApp;->b1:I

    .line 188
    .line 189
    iput v9, v15, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 190
    .line 191
    invoke-virtual {v8, v3, v15}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 192
    .line 193
    .line 194
    new-instance v9, Lcom/mycompany/app/view/MyButtonText;

    .line 195
    .line 196
    invoke-direct {v9, v0}, Lcom/mycompany/app/view/MyButtonText;-><init>(Landroid/content/Context;)V

    .line 197
    .line 198
    .line 199
    sget v15, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 200
    .line 201
    sget v12, Lcom/mycompany/app/main/MainApp;->G1:I

    .line 202
    .line 203
    sget v1, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 204
    .line 205
    move-object/from16 v18, v3

    .line 206
    .line 207
    sget v3, Lcom/mycompany/app/main/MainApp;->G1:I

    .line 208
    .line 209
    invoke-virtual {v9, v15, v12, v1, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 210
    .line 211
    .line 212
    const/16 v1, 0x11

    .line 213
    .line 214
    invoke-virtual {v9, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 215
    .line 216
    .line 217
    const/high16 v3, 0x41600000    # 14.0f

    .line 218
    .line 219
    const/4 v12, 0x1

    .line 220
    invoke-virtual {v9, v12, v3}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 221
    .line 222
    .line 223
    sget v15, Lnet/kaki87/soul2/testing/R$string;->scan_dir:I

    .line 224
    .line 225
    invoke-virtual {v9, v15}, Landroid/widget/TextView;->setText(I)V

    .line 226
    .line 227
    .line 228
    sget v15, Lcom/mycompany/app/main/MainApp;->f1:I

    .line 229
    .line 230
    invoke-virtual {v9, v15}, Landroid/widget/TextView;->setMinHeight(I)V

    .line 231
    .line 232
    .line 233
    invoke-virtual {v9, v12}, Lcom/mycompany/app/view/MyButtonText;->setBgNorFixed(Z)V

    .line 234
    .line 235
    .line 236
    invoke-virtual {v9, v12}, Lcom/mycompany/app/view/MyButtonText;->setRoundRect(Z)V

    .line 237
    .line 238
    .line 239
    sget v12, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 240
    .line 241
    invoke-virtual {v9, v12}, Lcom/mycompany/app/view/MyButtonText;->setRoundRadius(I)V

    .line 242
    .line 243
    .line 244
    const/16 v12, 0x8

    .line 245
    .line 246
    invoke-virtual {v9, v12}, Lcom/mycompany/app/view/MyButtonText;->setVisibility(I)V

    .line 247
    .line 248
    .line 249
    new-instance v12, Landroid/widget/FrameLayout$LayoutParams;

    .line 250
    .line 251
    const/4 v3, -0x2

    .line 252
    const/4 v15, -0x1

    .line 253
    invoke-direct {v12, v15, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 254
    .line 255
    .line 256
    const/16 v3, 0x50

    .line 257
    .line 258
    iput v3, v12, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 259
    .line 260
    const/high16 v3, 0x41a00000    # 20.0f

    .line 261
    .line 262
    invoke-static {v0, v3}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 263
    .line 264
    .line 265
    move-result v3

    .line 266
    float-to-int v3, v3

    .line 267
    iput v3, v12, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 268
    .line 269
    invoke-virtual {v12, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 270
    .line 271
    .line 272
    invoke-virtual {v12, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 273
    .line 274
    .line 275
    invoke-virtual {v8, v9, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 276
    .line 277
    .line 278
    new-instance v3, Lcom/mycompany/app/view/MyCoverView;

    .line 279
    .line 280
    invoke-direct {v3, v0}, Lcom/mycompany/app/view/MyCoverView;-><init>(Landroid/content/Context;)V

    .line 281
    .line 282
    .line 283
    const/16 v12, 0x8

    .line 284
    .line 285
    invoke-virtual {v3, v12}, Lcom/mycompany/app/view/MyCoverView;->setVisibility(I)V

    .line 286
    .line 287
    .line 288
    new-instance v12, Landroid/widget/FrameLayout$LayoutParams;

    .line 289
    .line 290
    const/4 v15, -0x1

    .line 291
    invoke-direct {v12, v15, v15}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 292
    .line 293
    .line 294
    sget v1, Lcom/mycompany/app/main/MainApp;->b1:I

    .line 295
    .line 296
    iput v1, v12, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 297
    .line 298
    invoke-virtual {v8, v3, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 299
    .line 300
    .line 301
    new-instance v1, Lcom/mycompany/app/view/MyHeaderView;

    .line 302
    .line 303
    invoke-direct {v1, v0}, Lcom/mycompany/app/view/MyHeaderView;-><init>(Landroid/content/Context;)V

    .line 304
    .line 305
    .line 306
    sget v12, Lcom/mycompany/app/main/MainApp;->b1:I

    .line 307
    .line 308
    invoke-virtual {v8, v1, v15, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 309
    .line 310
    .line 311
    new-instance v12, Lcom/mycompany/app/view/MyButtonImage;

    .line 312
    .line 313
    invoke-direct {v12, v0}, Lcom/mycompany/app/view/MyButtonImage;-><init>(Landroid/content/Context;)V

    .line 314
    .line 315
    .line 316
    invoke-virtual {v12, v14}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 317
    .line 318
    .line 319
    new-instance v15, Landroid/widget/RelativeLayout$LayoutParams;

    .line 320
    .line 321
    move-object/from16 v21, v3

    .line 322
    .line 323
    sget v3, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 324
    .line 325
    move-object/from16 v22, v10

    .line 326
    .line 327
    sget v10, Lcom/mycompany/app/main/MainApp;->b1:I

    .line 328
    .line 329
    invoke-direct {v15, v3, v10}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 330
    .line 331
    .line 332
    sget v3, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 333
    .line 334
    invoke-virtual {v15, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 335
    .line 336
    .line 337
    invoke-virtual {v1, v12, v15}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 338
    .line 339
    .line 340
    new-instance v3, Lcom/mycompany/app/view/MyButtonRelative;

    .line 341
    .line 342
    invoke-direct {v3, v0}, Lcom/mycompany/app/view/MyButtonRelative;-><init>(Landroid/content/Context;)V

    .line 343
    .line 344
    .line 345
    sget v10, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 346
    .line 347
    div-int/lit8 v10, v10, 0x2

    .line 348
    .line 349
    const/4 v15, 0x0

    .line 350
    invoke-virtual {v3, v10, v15}, Lcom/mycompany/app/view/MyButtonRelative;->e(IZ)V

    .line 351
    .line 352
    .line 353
    new-instance v10, Landroid/widget/RelativeLayout$LayoutParams;

    .line 354
    .line 355
    sget v15, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 356
    .line 357
    move-object/from16 v23, v12

    .line 358
    .line 359
    const/4 v12, -0x1

    .line 360
    invoke-direct {v10, v12, v15}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 361
    .line 362
    .line 363
    const/16 v12, 0x10

    .line 364
    .line 365
    invoke-virtual {v10, v12, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 366
    .line 367
    .line 368
    sget v15, Lcom/mycompany/app/main/MainApp;->G1:I

    .line 369
    .line 370
    iput v15, v10, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 371
    .line 372
    sget v15, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 373
    .line 374
    invoke-virtual {v10, v15}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 375
    .line 376
    .line 377
    invoke-virtual {v1, v3, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 378
    .line 379
    .line 380
    new-instance v10, Landroidx/appcompat/widget/AppCompatTextView;

    .line 381
    .line 382
    const/4 v15, 0x0

    .line 383
    invoke-direct {v10, v0, v15}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 384
    .line 385
    .line 386
    invoke-virtual {v10, v2}, Landroid/view/View;->setId(I)V

    .line 387
    .line 388
    .line 389
    const/4 v15, 0x1

    .line 390
    invoke-virtual {v10, v15}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 391
    .line 392
    .line 393
    const/high16 v12, 0x41900000    # 18.0f

    .line 394
    .line 395
    invoke-virtual {v10, v15, v12}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 396
    .line 397
    .line 398
    sget v12, Lnet/kaki87/soul2/testing/R$string;->down_list:I

    .line 399
    .line 400
    invoke-virtual {v10, v12}, Landroid/widget/TextView;->setText(I)V

    .line 401
    .line 402
    .line 403
    new-instance v12, Landroid/widget/RelativeLayout$LayoutParams;

    .line 404
    .line 405
    const/4 v15, -0x2

    .line 406
    invoke-direct {v12, v15, v15}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 407
    .line 408
    .line 409
    const/16 v15, 0xf

    .line 410
    .line 411
    invoke-virtual {v12, v15}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 412
    .line 413
    .line 414
    sget v15, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 415
    .line 416
    invoke-virtual {v12, v15}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 417
    .line 418
    .line 419
    invoke-virtual {v3, v10, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 420
    .line 421
    .line 422
    new-instance v12, Landroid/widget/ImageView;

    .line 423
    .line 424
    invoke-direct {v12, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 425
    .line 426
    .line 427
    invoke-virtual {v12, v14}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 428
    .line 429
    .line 430
    new-instance v15, Landroid/widget/RelativeLayout$LayoutParams;

    .line 431
    .line 432
    move-object/from16 v24, v10

    .line 433
    .line 434
    sget v10, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 435
    .line 436
    invoke-direct {v15, v10, v10}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 437
    .line 438
    .line 439
    const/16 v10, 0x11

    .line 440
    .line 441
    invoke-virtual {v15, v10, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 442
    .line 443
    .line 444
    invoke-virtual {v3, v12, v15}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 445
    .line 446
    .line 447
    new-instance v2, Landroid/widget/FrameLayout;

    .line 448
    .line 449
    invoke-direct {v2, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 450
    .line 451
    .line 452
    invoke-virtual {v2, v4}, Landroid/view/View;->setId(I)V

    .line 453
    .line 454
    .line 455
    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    .line 456
    .line 457
    sget v10, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 458
    .line 459
    const/4 v15, -0x2

    .line 460
    invoke-direct {v4, v15, v10}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 461
    .line 462
    .line 463
    const/16 v10, 0x10

    .line 464
    .line 465
    invoke-virtual {v4, v10, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 466
    .line 467
    .line 468
    sget v10, Lcom/mycompany/app/main/MainApp;->G1:I

    .line 469
    .line 470
    iput v10, v4, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 471
    .line 472
    invoke-virtual {v1, v2, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 473
    .line 474
    .line 475
    const/high16 v4, 0x41600000    # 14.0f

    .line 476
    .line 477
    invoke-static {v0, v4}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 478
    .line 479
    .line 480
    move-result v4

    .line 481
    float-to-int v4, v4

    .line 482
    new-instance v10, Lcom/mycompany/app/view/MyButtonImage;

    .line 483
    .line 484
    invoke-direct {v10, v0}, Lcom/mycompany/app/view/MyButtonImage;-><init>(Landroid/content/Context;)V

    .line 485
    .line 486
    .line 487
    invoke-virtual {v10, v4, v4, v4, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 488
    .line 489
    .line 490
    invoke-virtual {v10, v14}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 491
    .line 492
    .line 493
    new-instance v15, Landroid/widget/FrameLayout$LayoutParams;

    .line 494
    .line 495
    move-object/from16 v19, v12

    .line 496
    .line 497
    sget v12, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 498
    .line 499
    invoke-direct {v15, v12, v12}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 500
    .line 501
    .line 502
    const v12, 0x800005

    .line 503
    .line 504
    .line 505
    iput v12, v15, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 506
    .line 507
    sget v12, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 508
    .line 509
    move/from16 v20, v12

    .line 510
    .line 511
    const/16 v25, 0x3

    .line 512
    .line 513
    mul-int/lit8 v12, v20, 0x3

    .line 514
    .line 515
    invoke-virtual {v15, v12}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 516
    .line 517
    .line 518
    invoke-virtual {v2, v10, v15}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 519
    .line 520
    .line 521
    new-instance v12, Lcom/mycompany/app/view/MyButtonImage;

    .line 522
    .line 523
    invoke-direct {v12, v0}, Lcom/mycompany/app/view/MyButtonImage;-><init>(Landroid/content/Context;)V

    .line 524
    .line 525
    .line 526
    invoke-virtual {v12, v4, v4, v4, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 527
    .line 528
    .line 529
    invoke-virtual {v12, v14}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 530
    .line 531
    .line 532
    new-instance v15, Landroid/widget/FrameLayout$LayoutParams;

    .line 533
    .line 534
    move-object/from16 v20, v10

    .line 535
    .line 536
    sget v10, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 537
    .line 538
    invoke-direct {v15, v10, v10}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 539
    .line 540
    .line 541
    const v10, 0x800005

    .line 542
    .line 543
    .line 544
    iput v10, v15, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 545
    .line 546
    sget v10, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 547
    .line 548
    mul-int/lit8 v10, v10, 0x2

    .line 549
    .line 550
    invoke-virtual {v15, v10}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 551
    .line 552
    .line 553
    invoke-virtual {v2, v12, v15}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 554
    .line 555
    .line 556
    new-instance v10, Lcom/mycompany/app/view/MyButtonImage;

    .line 557
    .line 558
    invoke-direct {v10, v0}, Lcom/mycompany/app/view/MyButtonImage;-><init>(Landroid/content/Context;)V

    .line 559
    .line 560
    .line 561
    invoke-virtual {v10, v4, v4, v4, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 562
    .line 563
    .line 564
    invoke-virtual {v10, v14}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 565
    .line 566
    .line 567
    new-instance v15, Landroid/widget/FrameLayout$LayoutParams;

    .line 568
    .line 569
    move-object/from16 p1, v12

    .line 570
    .line 571
    sget v12, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 572
    .line 573
    invoke-direct {v15, v12, v12}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 574
    .line 575
    .line 576
    const v12, 0x800005

    .line 577
    .line 578
    .line 579
    iput v12, v15, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 580
    .line 581
    sget v12, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 582
    .line 583
    invoke-virtual {v15, v12}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 584
    .line 585
    .line 586
    invoke-virtual {v2, v10, v15}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 587
    .line 588
    .line 589
    new-instance v12, Lcom/mycompany/app/view/MyButtonImage;

    .line 590
    .line 591
    invoke-direct {v12, v0}, Lcom/mycompany/app/view/MyButtonImage;-><init>(Landroid/content/Context;)V

    .line 592
    .line 593
    .line 594
    invoke-virtual {v12, v4, v4, v4, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 595
    .line 596
    .line 597
    invoke-virtual {v12, v14}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 598
    .line 599
    .line 600
    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    .line 601
    .line 602
    sget v14, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 603
    .line 604
    invoke-direct {v4, v14, v14}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 605
    .line 606
    .line 607
    const v14, 0x800005

    .line 608
    .line 609
    .line 610
    iput v14, v4, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 611
    .line 612
    invoke-virtual {v2, v12, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 613
    .line 614
    .line 615
    new-instance v4, Landroidx/appcompat/widget/AppCompatTextView;

    .line 616
    .line 617
    const/4 v15, 0x0

    .line 618
    invoke-direct {v4, v0, v15}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 619
    .line 620
    .line 621
    sget v14, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 622
    .line 623
    const/4 v15, 0x0

    .line 624
    invoke-virtual {v4, v14, v15, v14, v15}, Landroid/view/View;->setPadding(IIII)V

    .line 625
    .line 626
    .line 627
    const/16 v14, 0x10

    .line 628
    .line 629
    invoke-virtual {v4, v14}, Landroid/widget/TextView;->setGravity(I)V

    .line 630
    .line 631
    .line 632
    move/from16 v14, v25

    .line 633
    .line 634
    invoke-virtual {v4, v14}, Landroid/view/View;->setTextDirection(I)V

    .line 635
    .line 636
    .line 637
    const/high16 v14, 0x41800000    # 16.0f

    .line 638
    .line 639
    const/4 v15, 0x1

    .line 640
    invoke-virtual {v4, v15, v14}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 641
    .line 642
    .line 643
    const/16 v14, 0x8

    .line 644
    .line 645
    invoke-virtual {v4, v14}, Landroid/view/View;->setVisibility(I)V

    .line 646
    .line 647
    .line 648
    new-instance v14, Landroid/widget/FrameLayout$LayoutParams;

    .line 649
    .line 650
    sget v15, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 651
    .line 652
    move-object/from16 v16, v12

    .line 653
    .line 654
    const/4 v12, -0x2

    .line 655
    invoke-direct {v14, v12, v15}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 656
    .line 657
    .line 658
    const v12, 0x800005

    .line 659
    .line 660
    .line 661
    iput v12, v14, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 662
    .line 663
    const/high16 v12, 0x42500000    # 52.0f

    .line 664
    .line 665
    invoke-static {v0, v12}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 666
    .line 667
    .line 668
    move-result v12

    .line 669
    float-to-int v12, v12

    .line 670
    invoke-virtual {v14, v12}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 671
    .line 672
    .line 673
    invoke-virtual {v2, v4, v14}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 674
    .line 675
    .line 676
    new-instance v12, Lcom/mycompany/app/view/MyButtonCheck;

    .line 677
    .line 678
    invoke-direct {v12, v0}, Lcom/mycompany/app/view/MyButtonCheck;-><init>(Landroid/content/Context;)V

    .line 679
    .line 680
    .line 681
    const/16 v14, 0x8

    .line 682
    .line 683
    invoke-virtual {v12, v14}, Lcom/mycompany/app/view/MyButtonCheck;->setVisibility(I)V

    .line 684
    .line 685
    .line 686
    new-instance v14, Landroid/widget/FrameLayout$LayoutParams;

    .line 687
    .line 688
    sget v15, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 689
    .line 690
    invoke-direct {v14, v15, v15}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 691
    .line 692
    .line 693
    const v15, 0x800005

    .line 694
    .line 695
    .line 696
    iput v15, v14, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 697
    .line 698
    invoke-virtual {v2, v12, v14}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 699
    .line 700
    .line 701
    new-instance v2, Landroid/widget/FrameLayout;

    .line 702
    .line 703
    invoke-direct {v2, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 704
    .line 705
    .line 706
    invoke-virtual {v2, v6}, Landroid/view/View;->setId(I)V

    .line 707
    .line 708
    .line 709
    const/4 v6, 0x4

    .line 710
    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 711
    .line 712
    .line 713
    new-instance v6, Landroid/widget/RelativeLayout$LayoutParams;

    .line 714
    .line 715
    sget v14, Lcom/mycompany/app/main/MainApp;->b1:I

    .line 716
    .line 717
    const/4 v15, -0x2

    .line 718
    invoke-direct {v6, v15, v14}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 719
    .line 720
    .line 721
    const/16 v14, 0x15

    .line 722
    .line 723
    invoke-virtual {v6, v14}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 724
    .line 725
    .line 726
    invoke-virtual {v1, v2, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 727
    .line 728
    .line 729
    new-instance v6, Lcom/mycompany/app/view/MyProgressBar;

    .line 730
    .line 731
    invoke-direct {v6, v0}, Lcom/mycompany/app/view/MyProgressBar;-><init>(Landroid/content/Context;)V

    .line 732
    .line 733
    .line 734
    const/high16 v14, 0x3fc00000    # 1.5f

    .line 735
    .line 736
    invoke-static {v0, v14}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 737
    .line 738
    .line 739
    move-result v14

    .line 740
    float-to-int v14, v14

    .line 741
    invoke-virtual {v6, v14}, Lcom/mycompany/app/view/MyProgressBar;->d(I)V

    .line 742
    .line 743
    .line 744
    const/high16 v14, 0x40000000    # 2.0f

    .line 745
    .line 746
    invoke-static {v0, v14}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 747
    .line 748
    .line 749
    move-result v14

    .line 750
    float-to-int v14, v14

    .line 751
    new-instance v15, Landroid/widget/FrameLayout$LayoutParams;

    .line 752
    .line 753
    move-object/from16 v17, v2

    .line 754
    .line 755
    const/4 v2, -0x1

    .line 756
    invoke-direct {v15, v2, v14}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 757
    .line 758
    .line 759
    sget v14, Lcom/mycompany/app/main/MainApp;->b1:I

    .line 760
    .line 761
    iput v14, v15, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 762
    .line 763
    invoke-virtual {v8, v6, v15}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 764
    .line 765
    .line 766
    new-instance v14, Landroid/widget/RelativeLayout;

    .line 767
    .line 768
    invoke-direct {v14, v0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 769
    .line 770
    .line 771
    invoke-virtual {v14, v5}, Landroid/view/View;->setId(I)V

    .line 772
    .line 773
    .line 774
    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    .line 775
    .line 776
    const/4 v15, -0x2

    .line 777
    invoke-direct {v5, v2, v15}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 778
    .line 779
    .line 780
    const/16 v2, 0xc

    .line 781
    .line 782
    invoke-virtual {v5, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 783
    .line 784
    .line 785
    invoke-virtual {v7, v14, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 786
    .line 787
    .line 788
    new-instance v2, Landroid/widget/FrameLayout;

    .line 789
    .line 790
    invoke-direct {v2, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 791
    .line 792
    .line 793
    const/16 v5, 0x8

    .line 794
    .line 795
    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 796
    .line 797
    .line 798
    const/4 v5, -0x1

    .line 799
    invoke-virtual {v14, v2, v5, v15}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 800
    .line 801
    .line 802
    iput-object v7, v0, Lcom/mycompany/app/main/list/MainListAlbum;->H1:Lcom/mycompany/app/view/MyMainRelative;

    .line 803
    .line 804
    iput-object v9, v0, Lcom/mycompany/app/main/list/MainListAlbum;->J1:Lcom/mycompany/app/view/MyButtonText;

    .line 805
    .line 806
    new-instance v5, Lcom/mycompany/app/main/MainListView$ListViewHolder;

    .line 807
    .line 808
    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    .line 809
    .line 810
    .line 811
    iput-object v7, v5, Lcom/mycompany/app/main/MainListView$ListViewHolder;->a:Landroid/widget/RelativeLayout;

    .line 812
    .line 813
    iput-object v8, v5, Lcom/mycompany/app/main/MainListView$ListViewHolder;->b:Landroid/widget/FrameLayout;

    .line 814
    .line 815
    iput-object v11, v5, Lcom/mycompany/app/main/MainListView$ListViewHolder;->r:Lcom/mycompany/app/fragment/FragmentExpandView;

    .line 816
    .line 817
    iput-object v13, v5, Lcom/mycompany/app/main/MainListView$ListViewHolder;->c:Lcom/mycompany/app/view/MyListGroup;

    .line 818
    .line 819
    move-object/from16 v8, v22

    .line 820
    .line 821
    iput-object v8, v5, Lcom/mycompany/app/main/MainListView$ListViewHolder;->s:Lcom/mycompany/app/view/MyScrollBar;

    .line 822
    .line 823
    move-object/from16 v8, v18

    .line 824
    .line 825
    iput-object v8, v5, Lcom/mycompany/app/main/MainListView$ListViewHolder;->t:Lcom/mycompany/app/view/MyFadeImage;

    .line 826
    .line 827
    move-object/from16 v8, v21

    .line 828
    .line 829
    iput-object v8, v5, Lcom/mycompany/app/main/MainListView$ListViewHolder;->u:Lcom/mycompany/app/view/MyCoverView;

    .line 830
    .line 831
    iput-object v1, v5, Lcom/mycompany/app/main/MainListView$ListViewHolder;->d:Lcom/mycompany/app/view/MyHeaderView;

    .line 832
    .line 833
    move-object/from16 v1, v23

    .line 834
    .line 835
    iput-object v1, v5, Lcom/mycompany/app/main/MainListView$ListViewHolder;->e:Lcom/mycompany/app/view/MyButtonImage;

    .line 836
    .line 837
    iput-object v3, v5, Lcom/mycompany/app/main/MainListView$ListViewHolder;->g:Lcom/mycompany/app/view/MyButtonRelative;

    .line 838
    .line 839
    move-object/from16 v1, v24

    .line 840
    .line 841
    iput-object v1, v5, Lcom/mycompany/app/main/MainListView$ListViewHolder;->f:Landroidx/appcompat/widget/AppCompatTextView;

    .line 842
    .line 843
    move-object/from16 v1, v19

    .line 844
    .line 845
    iput-object v1, v5, Lcom/mycompany/app/main/MainListView$ListViewHolder;->h:Landroid/widget/ImageView;

    .line 846
    .line 847
    move-object/from16 v1, v20

    .line 848
    .line 849
    iput-object v1, v5, Lcom/mycompany/app/main/MainListView$ListViewHolder;->j:Lcom/mycompany/app/view/MyButtonImage;

    .line 850
    .line 851
    move-object/from16 v1, p1

    .line 852
    .line 853
    iput-object v1, v5, Lcom/mycompany/app/main/MainListView$ListViewHolder;->l:Lcom/mycompany/app/view/MyButtonImage;

    .line 854
    .line 855
    iput-object v10, v5, Lcom/mycompany/app/main/MainListView$ListViewHolder;->m:Lcom/mycompany/app/view/MyButtonImage;

    .line 856
    .line 857
    move-object/from16 v1, v16

    .line 858
    .line 859
    iput-object v1, v5, Lcom/mycompany/app/main/MainListView$ListViewHolder;->n:Lcom/mycompany/app/view/MyButtonImage;

    .line 860
    .line 861
    iput-object v4, v5, Lcom/mycompany/app/main/MainListView$ListViewHolder;->o:Landroidx/appcompat/widget/AppCompatTextView;

    .line 862
    .line 863
    iput-object v12, v5, Lcom/mycompany/app/main/MainListView$ListViewHolder;->p:Lcom/mycompany/app/view/MyButtonCheck;

    .line 864
    .line 865
    iput-object v6, v5, Lcom/mycompany/app/main/MainListView$ListViewHolder;->q:Lcom/mycompany/app/view/MyProgressBar;

    .line 866
    .line 867
    iput-object v5, v0, Lcom/mycompany/app/main/list/MainListAlbum;->T1:Lcom/mycompany/app/main/MainListView$ListViewHolder;

    .line 868
    .line 869
    move-object/from16 v1, v17

    .line 870
    .line 871
    invoke-virtual {v0, v7, v1, v2}, Lcom/mycompany/app/setting/CastActivity;->B0(Landroid/view/View;Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;)V

    .line 872
    .line 873
    .line 874
    iget-object v1, v0, Lcom/mycompany/app/main/list/MainListAlbum;->H1:Lcom/mycompany/app/view/MyMainRelative;

    .line 875
    .line 876
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 877
    .line 878
    .line 879
    move-result-object v2

    .line 880
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyMainRelative;->setWindow(Landroid/view/Window;)V

    .line 881
    .line 882
    .line 883
    iget-object v1, v0, Lcom/mycompany/app/main/list/MainListAlbum;->H1:Lcom/mycompany/app/view/MyMainRelative;

    .line 884
    .line 885
    invoke-virtual {v0, v1}, Lcom/mycompany/app/main/MainActivity;->initMainScreenOn(Landroid/view/View;)V

    .line 886
    .line 887
    .line 888
    iget-object v1, v0, Lcom/mycompany/app/main/MainActivity;->O0:Landroid/os/Handler;

    .line 889
    .line 890
    if-nez v1, :cond_1

    .line 891
    .line 892
    return-void

    .line 893
    :cond_1
    new-instance v2, Lcom/mycompany/app/main/list/MainListAlbum$1;

    .line 894
    .line 895
    invoke-direct {v2, v0}, Lcom/mycompany/app/main/list/MainListAlbum$1;-><init>(Lcom/mycompany/app/main/list/MainListAlbum;)V

    .line 896
    .line 897
    .line 898
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 899
    .line 900
    .line 901
    return-void
.end method

.method public final onDestroy()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/mycompany/app/setting/CastActivity;->onDestroy()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/mycompany/app/main/list/MainListAlbum;->I1:Lcom/mycompany/app/main/MainListView;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/mycompany/app/main/MainListView;->O()V

    .line 10
    .line 11
    .line 12
    iput-object v1, p0, Lcom/mycompany/app/main/list/MainListAlbum;->I1:Lcom/mycompany/app/main/MainListView;

    .line 13
    .line 14
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/main/list/MainListAlbum;->J1:Lcom/mycompany/app/view/MyButtonText;

    .line 15
    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyButtonText;->t()V

    .line 19
    .line 20
    .line 21
    iput-object v1, p0, Lcom/mycompany/app/main/list/MainListAlbum;->J1:Lcom/mycompany/app/view/MyButtonText;

    .line 22
    .line 23
    :cond_1
    iput-object v1, p0, Lcom/mycompany/app/main/list/MainListAlbum;->H1:Lcom/mycompany/app/view/MyMainRelative;

    .line 24
    .line 25
    iput-object v1, p0, Lcom/mycompany/app/main/list/MainListAlbum;->R1:Ljava/util/List;

    .line 26
    .line 27
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-static {v0}, Lcom/mycompany/app/compress/CompressUtil;->a(Landroid/content/Context;)V

    .line 32
    .line 33
    .line 34
    return-void
.end method

.method public final onNewIntent(Landroid/content/Intent;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroidx/activity/ComponentActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, p1}, Lcom/mycompany/app/main/list/MainListAlbum;->D0(Landroid/content/Intent;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public final onPause()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-super {p0}, Lcom/mycompany/app/setting/CastActivity;->onPause()V

    .line 6
    .line 7
    .line 8
    iget-boolean v1, p0, Lcom/mycompany/app/main/list/MainListAlbum;->D1:Z

    .line 9
    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    iget-boolean v1, p0, Lcom/mycompany/app/main/list/MainListAlbum;->E1:Z

    .line 13
    .line 14
    if-nez v1, :cond_0

    .line 15
    .line 16
    invoke-virtual {p0}, Landroid/app/Activity;->finishAffinity()V

    .line 17
    .line 18
    .line 19
    :cond_0
    const/4 v1, 0x0

    .line 20
    iput-boolean v1, p0, Lcom/mycompany/app/main/list/MainListAlbum;->E1:Z

    .line 21
    .line 22
    iget-object v1, p0, Lcom/mycompany/app/main/list/MainListAlbum;->I1:Lcom/mycompany/app/main/MainListView;

    .line 23
    .line 24
    if-eqz v1, :cond_1

    .line 25
    .line 26
    invoke-virtual {v1, v0}, Lcom/mycompany/app/main/MainListView;->Q(Z)V

    .line 27
    .line 28
    .line 29
    :cond_1
    if-eqz v0, :cond_3

    .line 30
    .line 31
    iget-object v0, p0, Lcom/mycompany/app/main/list/MainListAlbum;->Q1:Lcom/mycompany/app/dialog/DialogExtract;

    .line 32
    .line 33
    if-eqz v0, :cond_2

    .line 34
    .line 35
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogExtract;->dismiss()V

    .line 36
    .line 37
    .line 38
    const/4 v0, 0x0

    .line 39
    iput-object v0, p0, Lcom/mycompany/app/main/list/MainListAlbum;->Q1:Lcom/mycompany/app/dialog/DialogExtract;

    .line 40
    .line 41
    :cond_2
    return-void

    .line 42
    :cond_3
    iget v0, p0, Lcom/mycompany/app/main/list/MainListAlbum;->G1:I

    .line 43
    .line 44
    invoke-static {v0}, Lcom/mycompany/app/pref/PrefUtil;->d(I)I

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    iput v0, p0, Lcom/mycompany/app/main/list/MainListAlbum;->K1:I

    .line 49
    .line 50
    iget v0, p0, Lcom/mycompany/app/main/list/MainListAlbum;->G1:I

    .line 51
    .line 52
    invoke-static {v0}, Lcom/mycompany/app/pref/PrefUtil;->e(I)I

    .line 53
    .line 54
    .line 55
    move-result v0

    .line 56
    iput v0, p0, Lcom/mycompany/app/main/list/MainListAlbum;->L1:I

    .line 57
    .line 58
    iget v0, p0, Lcom/mycompany/app/main/list/MainListAlbum;->G1:I

    .line 59
    .line 60
    invoke-static {v0}, Lcom/mycompany/app/pref/PrefUtil;->f(I)Z

    .line 61
    .line 62
    .line 63
    move-result v0

    .line 64
    iput-boolean v0, p0, Lcom/mycompany/app/main/list/MainListAlbum;->M1:Z

    .line 65
    .line 66
    iget v0, p0, Lcom/mycompany/app/main/list/MainListAlbum;->G1:I

    .line 67
    .line 68
    invoke-static {v0}, Lcom/mycompany/app/pref/PrefUtil;->a(I)Z

    .line 69
    .line 70
    .line 71
    move-result v0

    .line 72
    iput-boolean v0, p0, Lcom/mycompany/app/main/list/MainListAlbum;->N1:Z

    .line 73
    .line 74
    iget v0, p0, Lcom/mycompany/app/main/list/MainListAlbum;->G1:I

    .line 75
    .line 76
    invoke-static {v0}, Lcom/mycompany/app/pref/PrefUtil;->c(I)Z

    .line 77
    .line 78
    .line 79
    move-result v0

    .line 80
    iput-boolean v0, p0, Lcom/mycompany/app/main/list/MainListAlbum;->O1:Z

    .line 81
    .line 82
    iget v0, p0, Lcom/mycompany/app/main/list/MainListAlbum;->G1:I

    .line 83
    .line 84
    invoke-static {v0}, Lcom/mycompany/app/pref/PrefUtil;->b(I)Z

    .line 85
    .line 86
    .line 87
    move-result v0

    .line 88
    iput-boolean v0, p0, Lcom/mycompany/app/main/list/MainListAlbum;->P1:Z

    .line 89
    .line 90
    return-void
.end method

.method public final onResume()V
    .locals 5

    .line 1
    invoke-super {p0}, Lcom/mycompany/app/setting/CastActivity;->onResume()V

    .line 2
    .line 3
    .line 4
    iget-boolean v0, p0, Lcom/mycompany/app/main/list/MainListAlbum;->C1:Z

    .line 5
    .line 6
    xor-int/lit8 v1, v0, 0x1

    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    iget-boolean v0, p0, Lcom/mycompany/app/main/list/MainListAlbum;->F1:Z

    .line 12
    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    const/4 v0, 0x1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    move v0, v2

    .line 18
    :goto_0
    iget-object v3, p0, Lcom/mycompany/app/main/list/MainListAlbum;->I1:Lcom/mycompany/app/main/MainListView;

    .line 19
    .line 20
    if-eqz v3, :cond_1

    .line 21
    .line 22
    iget-boolean v4, p0, Lcom/mycompany/app/main/list/MainListAlbum;->F1:Z

    .line 23
    .line 24
    invoke-virtual {v3, v1, v0, v4}, Lcom/mycompany/app/main/MainListView;->R(ZZZ)V

    .line 25
    .line 26
    .line 27
    :cond_1
    iput-boolean v2, p0, Lcom/mycompany/app/main/list/MainListAlbum;->C1:Z

    .line 28
    .line 29
    iput-boolean v2, p0, Lcom/mycompany/app/main/list/MainListAlbum;->F1:Z

    .line 30
    .line 31
    return-void
.end method
