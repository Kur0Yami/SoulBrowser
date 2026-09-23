.class public final Lcom/google/android/gms/internal/consent_sdk/zzco;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/app/Application;

.field public b:Lcom/google/android/gms/internal/consent_sdk/zzha;

.field public c:Lcom/google/android/gms/internal/consent_sdk/zzgt;

.field public d:Lcom/google/android/gms/internal/consent_sdk/zzgw;

.field public e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/app/Application;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/consent_sdk/zzco;->c:Lcom/google/android/gms/internal/consent_sdk/zzgt;

    iput-object v0, p0, Lcom/google/android/gms/internal/consent_sdk/zzco;->e:Ljava/lang/String;

    iput-object p1, p0, Lcom/google/android/gms/internal/consent_sdk/zzco;->a:Landroid/app/Application;

    return-void
.end method


# virtual methods
.method public final a(ILjava/lang/String;J)Lcom/google/android/gms/internal/consent_sdk/zzif;
    .locals 4

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/consent_sdk/zzif;->m()Lcom/google/android/gms/internal/consent_sdk/zzid;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {}, Lcom/google/android/gms/internal/consent_sdk/zzhc;->m()Lcom/google/android/gms/internal/consent_sdk/zzgu;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-static {}, Lcom/google/android/gms/internal/consent_sdk/zzgy;->m()Lcom/google/android/gms/internal/consent_sdk/zzgx;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    invoke-virtual {v2}, Lcom/google/android/gms/internal/consent_sdk/zzqj;->e()V

    .line 14
    .line 15
    .line 16
    iget-object v3, v2, Lcom/google/android/gms/internal/consent_sdk/zzqj;->f:Lcom/google/android/gms/internal/consent_sdk/zzqm;

    .line 17
    .line 18
    check-cast v3, Lcom/google/android/gms/internal/consent_sdk/zzgy;

    .line 19
    .line 20
    invoke-static {v3, p1}, Lcom/google/android/gms/internal/consent_sdk/zzgy;->p(Lcom/google/android/gms/internal/consent_sdk/zzgy;I)V

    .line 21
    .line 22
    .line 23
    if-eqz p2, :cond_0

    .line 24
    .line 25
    invoke-virtual {v2}, Lcom/google/android/gms/internal/consent_sdk/zzqj;->e()V

    .line 26
    .line 27
    .line 28
    iget-object p1, v2, Lcom/google/android/gms/internal/consent_sdk/zzqj;->f:Lcom/google/android/gms/internal/consent_sdk/zzqm;

    .line 29
    .line 30
    check-cast p1, Lcom/google/android/gms/internal/consent_sdk/zzgy;

    .line 31
    .line 32
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/consent_sdk/zzgy;->n(Lcom/google/android/gms/internal/consent_sdk/zzgy;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    :cond_0
    const-wide/16 p1, 0x0

    .line 36
    .line 37
    cmp-long p1, p3, p1

    .line 38
    .line 39
    if-lez p1, :cond_1

    .line 40
    .line 41
    invoke-virtual {v2}, Lcom/google/android/gms/internal/consent_sdk/zzqj;->e()V

    .line 42
    .line 43
    .line 44
    iget-object p1, v2, Lcom/google/android/gms/internal/consent_sdk/zzqj;->f:Lcom/google/android/gms/internal/consent_sdk/zzqm;

    .line 45
    .line 46
    check-cast p1, Lcom/google/android/gms/internal/consent_sdk/zzgy;

    .line 47
    .line 48
    invoke-static {p1, p3, p4}, Lcom/google/android/gms/internal/consent_sdk/zzgy;->o(Lcom/google/android/gms/internal/consent_sdk/zzgy;J)V

    .line 49
    .line 50
    .line 51
    :cond_1
    invoke-virtual {v2}, Lcom/google/android/gms/internal/consent_sdk/zzqj;->c()Lcom/google/android/gms/internal/consent_sdk/zzqm;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    check-cast p1, Lcom/google/android/gms/internal/consent_sdk/zzgy;

    .line 56
    .line 57
    invoke-virtual {v1}, Lcom/google/android/gms/internal/consent_sdk/zzqj;->e()V

    .line 58
    .line 59
    .line 60
    iget-object p2, v1, Lcom/google/android/gms/internal/consent_sdk/zzqj;->f:Lcom/google/android/gms/internal/consent_sdk/zzqm;

    .line 61
    .line 62
    check-cast p2, Lcom/google/android/gms/internal/consent_sdk/zzhc;

    .line 63
    .line 64
    invoke-static {p2, p1}, Lcom/google/android/gms/internal/consent_sdk/zzhc;->r(Lcom/google/android/gms/internal/consent_sdk/zzhc;Lcom/google/android/gms/internal/consent_sdk/zzgy;)V

    .line 65
    .line 66
    .line 67
    iget-object p1, p0, Lcom/google/android/gms/internal/consent_sdk/zzco;->e:Ljava/lang/String;

    .line 68
    .line 69
    const/4 p2, 0x0

    .line 70
    iget-object p3, p0, Lcom/google/android/gms/internal/consent_sdk/zzco;->a:Landroid/app/Application;

    .line 71
    .line 72
    if-nez p1, :cond_4

    .line 73
    .line 74
    :try_start_0
    invoke-virtual {p3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    invoke-virtual {p3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object p4

    .line 82
    const/16 v2, 0x80

    .line 83
    .line 84
    invoke-virtual {p1, p4, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 89
    .line 90
    goto :goto_0

    .line 91
    :catch_0
    move-object p1, p2

    .line 92
    :goto_0
    if-eqz p1, :cond_2

    .line 93
    .line 94
    const-string p4, "com.google.android.gms.ads.APPLICATION_ID"

    .line 95
    .line 96
    invoke-virtual {p1, p4}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object p1

    .line 100
    iput-object p1, p0, Lcom/google/android/gms/internal/consent_sdk/zzco;->e:Ljava/lang/String;

    .line 101
    .line 102
    :cond_2
    iget-object p1, p0, Lcom/google/android/gms/internal/consent_sdk/zzco;->e:Ljava/lang/String;

    .line 103
    .line 104
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 105
    .line 106
    .line 107
    move-result p1

    .line 108
    if-eqz p1, :cond_3

    .line 109
    .line 110
    const-string p1, "UserMessagingPlatform"

    .line 111
    .line 112
    const-string p4, "The UMP SDK requires a valid application ID in your AndroidManifest.xml through a com.google.android.gms.ads.APPLICATION_ID meta-data tag.\nExample AndroidManifest:\n    <meta-data\n        android:name=\"com.google.android.gms.ads.APPLICATION_ID\"\n        android:value=\"ca-app-pub-0000000000000000~0000000000\">"

    .line 113
    .line 114
    invoke-static {p1, p4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    .line 116
    .line 117
    :cond_3
    iget-object p1, p0, Lcom/google/android/gms/internal/consent_sdk/zzco;->e:Ljava/lang/String;

    .line 118
    .line 119
    :cond_4
    if-eqz p1, :cond_5

    .line 120
    .line 121
    invoke-virtual {v1}, Lcom/google/android/gms/internal/consent_sdk/zzqj;->e()V

    .line 122
    .line 123
    .line 124
    iget-object p4, v1, Lcom/google/android/gms/internal/consent_sdk/zzqj;->f:Lcom/google/android/gms/internal/consent_sdk/zzqm;

    .line 125
    .line 126
    check-cast p4, Lcom/google/android/gms/internal/consent_sdk/zzhc;

    .line 127
    .line 128
    invoke-static {p4, p1}, Lcom/google/android/gms/internal/consent_sdk/zzhc;->o(Lcom/google/android/gms/internal/consent_sdk/zzhc;Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    :cond_5
    iget-object p1, p0, Lcom/google/android/gms/internal/consent_sdk/zzco;->b:Lcom/google/android/gms/internal/consent_sdk/zzha;

    .line 132
    .line 133
    if-nez p1, :cond_6

    .line 134
    .line 135
    invoke-static {}, Lcom/google/android/gms/internal/consent_sdk/zzha;->m()Lcom/google/android/gms/internal/consent_sdk/zzgz;

    .line 136
    .line 137
    .line 138
    move-result-object p1

    .line 139
    invoke-virtual {p1}, Lcom/google/android/gms/internal/consent_sdk/zzqj;->e()V

    .line 140
    .line 141
    .line 142
    iget-object p4, p1, Lcom/google/android/gms/internal/consent_sdk/zzqj;->f:Lcom/google/android/gms/internal/consent_sdk/zzqm;

    .line 143
    .line 144
    check-cast p4, Lcom/google/android/gms/internal/consent_sdk/zzha;

    .line 145
    .line 146
    invoke-static {p4}, Lcom/google/android/gms/internal/consent_sdk/zzha;->n(Lcom/google/android/gms/internal/consent_sdk/zzha;)V

    .line 147
    .line 148
    .line 149
    invoke-virtual {p1}, Lcom/google/android/gms/internal/consent_sdk/zzqj;->c()Lcom/google/android/gms/internal/consent_sdk/zzqm;

    .line 150
    .line 151
    .line 152
    move-result-object p1

    .line 153
    check-cast p1, Lcom/google/android/gms/internal/consent_sdk/zzha;

    .line 154
    .line 155
    iput-object p1, p0, Lcom/google/android/gms/internal/consent_sdk/zzco;->b:Lcom/google/android/gms/internal/consent_sdk/zzha;

    .line 156
    .line 157
    :cond_6
    invoke-virtual {v1}, Lcom/google/android/gms/internal/consent_sdk/zzqj;->e()V

    .line 158
    .line 159
    .line 160
    iget-object p4, v1, Lcom/google/android/gms/internal/consent_sdk/zzqj;->f:Lcom/google/android/gms/internal/consent_sdk/zzqm;

    .line 161
    .line 162
    check-cast p4, Lcom/google/android/gms/internal/consent_sdk/zzhc;

    .line 163
    .line 164
    invoke-static {p4, p1}, Lcom/google/android/gms/internal/consent_sdk/zzhc;->s(Lcom/google/android/gms/internal/consent_sdk/zzhc;Lcom/google/android/gms/internal/consent_sdk/zzha;)V

    .line 165
    .line 166
    .line 167
    iget-object p1, p0, Lcom/google/android/gms/internal/consent_sdk/zzco;->d:Lcom/google/android/gms/internal/consent_sdk/zzgw;

    .line 168
    .line 169
    if-nez p1, :cond_7

    .line 170
    .line 171
    invoke-static {}, Lcom/google/android/gms/internal/consent_sdk/zzgw;->m()Lcom/google/android/gms/internal/consent_sdk/zzgv;

    .line 172
    .line 173
    .line 174
    move-result-object p1

    .line 175
    sget p4, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 176
    .line 177
    invoke-virtual {p1}, Lcom/google/android/gms/internal/consent_sdk/zzqj;->e()V

    .line 178
    .line 179
    .line 180
    iget-object v2, p1, Lcom/google/android/gms/internal/consent_sdk/zzqj;->f:Lcom/google/android/gms/internal/consent_sdk/zzqm;

    .line 181
    .line 182
    check-cast v2, Lcom/google/android/gms/internal/consent_sdk/zzgw;

    .line 183
    .line 184
    invoke-static {v2, p4}, Lcom/google/android/gms/internal/consent_sdk/zzgw;->n(Lcom/google/android/gms/internal/consent_sdk/zzgw;I)V

    .line 185
    .line 186
    .line 187
    sget-object p4, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 188
    .line 189
    invoke-virtual {p1}, Lcom/google/android/gms/internal/consent_sdk/zzqj;->e()V

    .line 190
    .line 191
    .line 192
    iget-object p4, p1, Lcom/google/android/gms/internal/consent_sdk/zzqj;->f:Lcom/google/android/gms/internal/consent_sdk/zzqm;

    .line 193
    .line 194
    check-cast p4, Lcom/google/android/gms/internal/consent_sdk/zzgw;

    .line 195
    .line 196
    invoke-static {p4}, Lcom/google/android/gms/internal/consent_sdk/zzgw;->o(Lcom/google/android/gms/internal/consent_sdk/zzgw;)V

    .line 197
    .line 198
    .line 199
    invoke-virtual {p1}, Lcom/google/android/gms/internal/consent_sdk/zzqj;->e()V

    .line 200
    .line 201
    .line 202
    iget-object p4, p1, Lcom/google/android/gms/internal/consent_sdk/zzqj;->f:Lcom/google/android/gms/internal/consent_sdk/zzqm;

    .line 203
    .line 204
    check-cast p4, Lcom/google/android/gms/internal/consent_sdk/zzgw;

    .line 205
    .line 206
    invoke-static {p4}, Lcom/google/android/gms/internal/consent_sdk/zzgw;->q(Lcom/google/android/gms/internal/consent_sdk/zzgw;)V

    .line 207
    .line 208
    .line 209
    sget-object p4, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 210
    .line 211
    invoke-virtual {p1}, Lcom/google/android/gms/internal/consent_sdk/zzqj;->e()V

    .line 212
    .line 213
    .line 214
    iget-object p4, p1, Lcom/google/android/gms/internal/consent_sdk/zzqj;->f:Lcom/google/android/gms/internal/consent_sdk/zzqm;

    .line 215
    .line 216
    check-cast p4, Lcom/google/android/gms/internal/consent_sdk/zzgw;

    .line 217
    .line 218
    invoke-static {p4}, Lcom/google/android/gms/internal/consent_sdk/zzgw;->p(Lcom/google/android/gms/internal/consent_sdk/zzgw;)V

    .line 219
    .line 220
    .line 221
    invoke-virtual {p1}, Lcom/google/android/gms/internal/consent_sdk/zzqj;->c()Lcom/google/android/gms/internal/consent_sdk/zzqm;

    .line 222
    .line 223
    .line 224
    move-result-object p1

    .line 225
    check-cast p1, Lcom/google/android/gms/internal/consent_sdk/zzgw;

    .line 226
    .line 227
    iput-object p1, p0, Lcom/google/android/gms/internal/consent_sdk/zzco;->d:Lcom/google/android/gms/internal/consent_sdk/zzgw;

    .line 228
    .line 229
    :cond_7
    invoke-virtual {v1}, Lcom/google/android/gms/internal/consent_sdk/zzqj;->e()V

    .line 230
    .line 231
    .line 232
    iget-object p4, v1, Lcom/google/android/gms/internal/consent_sdk/zzqj;->f:Lcom/google/android/gms/internal/consent_sdk/zzqm;

    .line 233
    .line 234
    check-cast p4, Lcom/google/android/gms/internal/consent_sdk/zzhc;

    .line 235
    .line 236
    invoke-static {p4, p1}, Lcom/google/android/gms/internal/consent_sdk/zzhc;->q(Lcom/google/android/gms/internal/consent_sdk/zzhc;Lcom/google/android/gms/internal/consent_sdk/zzgw;)V

    .line 237
    .line 238
    .line 239
    iget-object p1, p0, Lcom/google/android/gms/internal/consent_sdk/zzco;->c:Lcom/google/android/gms/internal/consent_sdk/zzgt;

    .line 240
    .line 241
    if-nez p1, :cond_a

    .line 242
    .line 243
    invoke-virtual {p3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 244
    .line 245
    .line 246
    move-result-object p1

    .line 247
    :try_start_1
    invoke-virtual {p3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 248
    .line 249
    .line 250
    move-result-object p4

    .line 251
    const/4 v2, 0x0

    .line 252
    invoke-virtual {p4, p1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 253
    .line 254
    .line 255
    move-result-object p2
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 256
    :catch_1
    if-eqz p2, :cond_9

    .line 257
    .line 258
    invoke-static {}, Lcom/google/android/gms/internal/consent_sdk/zzgt;->m()Lcom/google/android/gms/internal/consent_sdk/zzgs;

    .line 259
    .line 260
    .line 261
    move-result-object p4

    .line 262
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 263
    .line 264
    const/16 v3, 0x1c

    .line 265
    .line 266
    if-lt v2, v3, :cond_8

    .line 267
    .line 268
    invoke-virtual {p2}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    .line 269
    .line 270
    .line 271
    move-result-wide v2

    .line 272
    goto :goto_1

    .line 273
    :cond_8
    iget p2, p2, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 274
    .line 275
    int-to-long v2, p2

    .line 276
    :goto_1
    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    .line 277
    .line 278
    .line 279
    move-result-object p2

    .line 280
    invoke-virtual {p4}, Lcom/google/android/gms/internal/consent_sdk/zzqj;->e()V

    .line 281
    .line 282
    .line 283
    iget-object v2, p4, Lcom/google/android/gms/internal/consent_sdk/zzqj;->f:Lcom/google/android/gms/internal/consent_sdk/zzqm;

    .line 284
    .line 285
    check-cast v2, Lcom/google/android/gms/internal/consent_sdk/zzgt;

    .line 286
    .line 287
    invoke-static {v2, p2}, Lcom/google/android/gms/internal/consent_sdk/zzgt;->o(Lcom/google/android/gms/internal/consent_sdk/zzgt;Ljava/lang/String;)V

    .line 288
    .line 289
    .line 290
    invoke-virtual {p4}, Lcom/google/android/gms/internal/consent_sdk/zzqj;->e()V

    .line 291
    .line 292
    .line 293
    iget-object p2, p4, Lcom/google/android/gms/internal/consent_sdk/zzqj;->f:Lcom/google/android/gms/internal/consent_sdk/zzqm;

    .line 294
    .line 295
    check-cast p2, Lcom/google/android/gms/internal/consent_sdk/zzgt;

    .line 296
    .line 297
    invoke-static {p2, p1}, Lcom/google/android/gms/internal/consent_sdk/zzgt;->n(Lcom/google/android/gms/internal/consent_sdk/zzgt;Ljava/lang/String;)V

    .line 298
    .line 299
    .line 300
    invoke-virtual {p4}, Lcom/google/android/gms/internal/consent_sdk/zzqj;->c()Lcom/google/android/gms/internal/consent_sdk/zzqm;

    .line 301
    .line 302
    .line 303
    move-result-object p1

    .line 304
    check-cast p1, Lcom/google/android/gms/internal/consent_sdk/zzgt;

    .line 305
    .line 306
    iput-object p1, p0, Lcom/google/android/gms/internal/consent_sdk/zzco;->c:Lcom/google/android/gms/internal/consent_sdk/zzgt;

    .line 307
    .line 308
    :cond_9
    iget-object p1, p0, Lcom/google/android/gms/internal/consent_sdk/zzco;->c:Lcom/google/android/gms/internal/consent_sdk/zzgt;

    .line 309
    .line 310
    :cond_a
    if-eqz p1, :cond_b

    .line 311
    .line 312
    invoke-virtual {v1}, Lcom/google/android/gms/internal/consent_sdk/zzqj;->e()V

    .line 313
    .line 314
    .line 315
    iget-object p2, v1, Lcom/google/android/gms/internal/consent_sdk/zzqj;->f:Lcom/google/android/gms/internal/consent_sdk/zzqm;

    .line 316
    .line 317
    check-cast p2, Lcom/google/android/gms/internal/consent_sdk/zzhc;

    .line 318
    .line 319
    invoke-static {p2, p1}, Lcom/google/android/gms/internal/consent_sdk/zzhc;->p(Lcom/google/android/gms/internal/consent_sdk/zzhc;Lcom/google/android/gms/internal/consent_sdk/zzgt;)V

    .line 320
    .line 321
    .line 322
    :cond_b
    invoke-static {p3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    .line 323
    .line 324
    .line 325
    move-result-object p1

    .line 326
    const-string p2, "UMP_eids"

    .line 327
    .line 328
    const-string p3, ""

    .line 329
    .line 330
    invoke-interface {p1, p2, p3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 331
    .line 332
    .line 333
    move-result-object p1

    .line 334
    if-eqz p1, :cond_d

    .line 335
    .line 336
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 337
    .line 338
    .line 339
    move-result p2

    .line 340
    if-eqz p2, :cond_c

    .line 341
    .line 342
    goto :goto_3

    .line 343
    :cond_c
    new-instance p2, Lcom/google/android/gms/internal/consent_sdk/zzdo;

    .line 344
    .line 345
    new-instance p3, Lcom/google/android/gms/internal/consent_sdk/zzdk;

    .line 346
    .line 347
    invoke-direct {p3}, Ljava/lang/Object;-><init>()V

    .line 348
    .line 349
    .line 350
    invoke-direct {p2, p3}, Lcom/google/android/gms/internal/consent_sdk/zzdo;-><init>(Lcom/google/android/gms/internal/consent_sdk/zzdk;)V

    .line 351
    .line 352
    .line 353
    new-instance p3, Lcom/google/android/gms/internal/consent_sdk/zzdm;

    .line 354
    .line 355
    invoke-direct {p3, p2, p1}, Lcom/google/android/gms/internal/consent_sdk/zzdm;-><init>(Lcom/google/android/gms/internal/consent_sdk/zzdo;Ljava/lang/String;)V

    .line 356
    .line 357
    .line 358
    invoke-virtual {p3}, Lcom/google/android/gms/internal/consent_sdk/zzdm;->iterator()Ljava/util/Iterator;

    .line 359
    .line 360
    .line 361
    move-result-object p1

    .line 362
    :goto_2
    move-object p2, p1

    .line 363
    check-cast p2, Lcom/google/android/gms/internal/consent_sdk/zzdc;

    .line 364
    .line 365
    invoke-virtual {p2}, Lcom/google/android/gms/internal/consent_sdk/zzdc;->hasNext()Z

    .line 366
    .line 367
    .line 368
    move-result p3

    .line 369
    if-eqz p3, :cond_d

    .line 370
    .line 371
    invoke-virtual {p2}, Lcom/google/android/gms/internal/consent_sdk/zzdc;->next()Ljava/lang/Object;

    .line 372
    .line 373
    .line 374
    move-result-object p2

    .line 375
    check-cast p2, Ljava/lang/String;

    .line 376
    .line 377
    invoke-virtual {v1}, Lcom/google/android/gms/internal/consent_sdk/zzqj;->e()V

    .line 378
    .line 379
    .line 380
    iget-object p3, v1, Lcom/google/android/gms/internal/consent_sdk/zzqj;->f:Lcom/google/android/gms/internal/consent_sdk/zzqm;

    .line 381
    .line 382
    check-cast p3, Lcom/google/android/gms/internal/consent_sdk/zzhc;

    .line 383
    .line 384
    invoke-static {p3, p2}, Lcom/google/android/gms/internal/consent_sdk/zzhc;->n(Lcom/google/android/gms/internal/consent_sdk/zzhc;Ljava/lang/String;)V

    .line 385
    .line 386
    .line 387
    goto :goto_2

    .line 388
    :cond_d
    :goto_3
    invoke-virtual {v1}, Lcom/google/android/gms/internal/consent_sdk/zzqj;->c()Lcom/google/android/gms/internal/consent_sdk/zzqm;

    .line 389
    .line 390
    .line 391
    move-result-object p1

    .line 392
    check-cast p1, Lcom/google/android/gms/internal/consent_sdk/zzhc;

    .line 393
    .line 394
    invoke-virtual {v0}, Lcom/google/android/gms/internal/consent_sdk/zzqj;->e()V

    .line 395
    .line 396
    .line 397
    iget-object p2, v0, Lcom/google/android/gms/internal/consent_sdk/zzqj;->f:Lcom/google/android/gms/internal/consent_sdk/zzqm;

    .line 398
    .line 399
    check-cast p2, Lcom/google/android/gms/internal/consent_sdk/zzif;

    .line 400
    .line 401
    invoke-static {p2, p1}, Lcom/google/android/gms/internal/consent_sdk/zzif;->n(Lcom/google/android/gms/internal/consent_sdk/zzif;Lcom/google/android/gms/internal/consent_sdk/zzhc;)V

    .line 402
    .line 403
    .line 404
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 405
    .line 406
    .line 407
    move-result-wide p1

    .line 408
    invoke-virtual {v0}, Lcom/google/android/gms/internal/consent_sdk/zzqj;->e()V

    .line 409
    .line 410
    .line 411
    iget-object p3, v0, Lcom/google/android/gms/internal/consent_sdk/zzqj;->f:Lcom/google/android/gms/internal/consent_sdk/zzqm;

    .line 412
    .line 413
    check-cast p3, Lcom/google/android/gms/internal/consent_sdk/zzif;

    .line 414
    .line 415
    invoke-static {p3, p1, p2}, Lcom/google/android/gms/internal/consent_sdk/zzif;->o(Lcom/google/android/gms/internal/consent_sdk/zzif;J)V

    .line 416
    .line 417
    .line 418
    invoke-virtual {v0}, Lcom/google/android/gms/internal/consent_sdk/zzqj;->c()Lcom/google/android/gms/internal/consent_sdk/zzqm;

    .line 419
    .line 420
    .line 421
    move-result-object p1

    .line 422
    check-cast p1, Lcom/google/android/gms/internal/consent_sdk/zzif;

    .line 423
    .line 424
    return-object p1
.end method
