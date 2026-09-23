.class public Landroidx/profileinstaller/ProfileInstaller;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/profileinstaller/ProfileInstaller$DiagnosticsCallback;,
        Landroidx/profileinstaller/ProfileInstaller$ResultCode;,
        Landroidx/profileinstaller/ProfileInstaller$DiagnosticCode;
    }
.end annotation


# static fields
.field public static final a:Landroidx/profileinstaller/ProfileInstaller$DiagnosticsCallback;

.field public static final b:Landroidx/profileinstaller/ProfileInstaller$DiagnosticsCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroidx/profileinstaller/ProfileInstaller$1;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Landroidx/profileinstaller/ProfileInstaller;->a:Landroidx/profileinstaller/ProfileInstaller$DiagnosticsCallback;

    .line 7
    .line 8
    new-instance v0, Landroidx/profileinstaller/ProfileInstaller$2;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Landroidx/profileinstaller/ProfileInstaller;->b:Landroidx/profileinstaller/ProfileInstaller$DiagnosticsCallback;

    .line 14
    .line 15
    return-void
.end method

.method public static a(Landroid/content/pm/PackageInfo;Ljava/io/File;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/io/File;

    .line 2
    .line 3
    const-string v1, "profileinstaller_profileWrittenFor_lastUpdateTime.dat"

    .line 4
    .line 5
    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    :try_start_0
    new-instance p1, Ljava/io/DataOutputStream;

    .line 9
    .line 10
    new-instance v1, Ljava/io/FileOutputStream;

    .line 11
    .line 12
    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 13
    .line 14
    .line 15
    invoke-direct {p1, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 16
    .line 17
    .line 18
    :try_start_1
    iget-wide v0, p0, Landroid/content/pm/PackageInfo;->lastUpdateTime:J

    .line 19
    .line 20
    invoke-virtual {p1, v0, v1}, Ljava/io/DataOutputStream;->writeLong(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 21
    .line 22
    .line 23
    :try_start_2
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 24
    .line 25
    .line 26
    return-void

    .line 27
    :catchall_0
    move-exception p0

    .line 28
    :try_start_3
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :catchall_1
    move-exception p1

    .line 33
    :try_start_4
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 34
    .line 35
    .line 36
    :goto_0
    throw p0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 37
    :catch_0
    return-void
.end method

.method public static b(Landroid/content/Context;Ljava/util/concurrent/Executor;Landroidx/profileinstaller/ProfileInstaller$DiagnosticsCallback;Z)V
    .locals 18

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v5, p2

    .line 4
    .line 5
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    .line 18
    .line 19
    .line 20
    move-result-object v4

    .line 21
    new-instance v0, Ljava/io/File;

    .line 22
    .line 23
    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 24
    .line 25
    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v6

    .line 32
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    const/4 v8, 0x7

    .line 37
    const/4 v9, 0x0

    .line 38
    :try_start_0
    invoke-virtual {v0, v2, v9}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 39
    .line 40
    .line 41
    move-result-object v10
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_12

    .line 42
    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    .line 43
    .line 44
    .line 45
    move-result-object v11

    .line 46
    const-string v3, "ProfileInstaller"

    .line 47
    .line 48
    const/4 v12, 0x0

    .line 49
    if-nez p3, :cond_4

    .line 50
    .line 51
    new-instance v0, Ljava/io/File;

    .line 52
    .line 53
    const-string v7, "profileinstaller_profileWrittenFor_lastUpdateTime.dat"

    .line 54
    .line 55
    invoke-direct {v0, v11, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 59
    .line 60
    .line 61
    move-result v7

    .line 62
    if-nez v7, :cond_0

    .line 63
    .line 64
    :catch_0
    move v0, v9

    .line 65
    goto :goto_2

    .line 66
    :cond_0
    :try_start_1
    new-instance v7, Ljava/io/DataInputStream;

    .line 67
    .line 68
    new-instance v14, Ljava/io/FileInputStream;

    .line 69
    .line 70
    invoke-direct {v14, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 71
    .line 72
    .line 73
    invoke-direct {v7, v14}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 74
    .line 75
    .line 76
    :try_start_2
    invoke-virtual {v7}, Ljava/io/DataInputStream;->readLong()J

    .line 77
    .line 78
    .line 79
    move-result-wide v14
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 80
    :try_start_3
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 81
    .line 82
    .line 83
    move-wide/from16 v16, v14

    .line 84
    .line 85
    iget-wide v13, v10, Landroid/content/pm/PackageInfo;->lastUpdateTime:J

    .line 86
    .line 87
    cmp-long v0, v16, v13

    .line 88
    .line 89
    if-nez v0, :cond_1

    .line 90
    .line 91
    const/4 v0, 0x1

    .line 92
    goto :goto_0

    .line 93
    :cond_1
    move v0, v9

    .line 94
    :goto_0
    if-eqz v0, :cond_2

    .line 95
    .line 96
    const/4 v7, 0x2

    .line 97
    invoke-interface {v5, v7, v12}, Landroidx/profileinstaller/ProfileInstaller$DiagnosticsCallback;->b(ILjava/lang/Object;)V

    .line 98
    .line 99
    .line 100
    goto :goto_2

    .line 101
    :catchall_0
    move-exception v0

    .line 102
    move-object v13, v0

    .line 103
    :try_start_4
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 104
    .line 105
    .line 106
    goto :goto_1

    .line 107
    :catchall_1
    move-exception v0

    .line 108
    :try_start_5
    invoke-virtual {v13, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 109
    .line 110
    .line 111
    :goto_1
    throw v13
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    .line 112
    :cond_2
    :goto_2
    if-nez v0, :cond_3

    .line 113
    .line 114
    goto :goto_3

    .line 115
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    .line 116
    .line 117
    const-string v2, "Skipping profile installation for "

    .line 118
    .line 119
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v2

    .line 126
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    .line 128
    .line 129
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object v0

    .line 133
    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    .line 135
    .line 136
    invoke-static {v1, v9}, Landroidx/profileinstaller/ProfileVerifier;->c(Landroid/content/Context;Z)V

    .line 137
    .line 138
    .line 139
    goto/16 :goto_31

    .line 140
    .line 141
    :cond_4
    :goto_3
    new-instance v0, Ljava/lang/StringBuilder;

    .line 142
    .line 143
    const-string v7, "Installing profile for "

    .line 144
    .line 145
    invoke-direct {v0, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 146
    .line 147
    .line 148
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object v7

    .line 152
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    .line 154
    .line 155
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object v0

    .line 159
    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    .line 161
    .line 162
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 163
    .line 164
    new-instance v7, Ljava/io/File;

    .line 165
    .line 166
    new-instance v3, Ljava/io/File;

    .line 167
    .line 168
    const-string v13, "/data/misc/profiles/cur/0"

    .line 169
    .line 170
    invoke-direct {v3, v13, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    .line 172
    .line 173
    const-string v2, "primary.prof"

    .line 174
    .line 175
    invoke-direct {v7, v3, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 176
    .line 177
    .line 178
    new-instance v2, Landroidx/profileinstaller/DeviceProfileWriter;

    .line 179
    .line 180
    const-string v13, "dexopt/baseline.prof"

    .line 181
    .line 182
    move-object v3, v4

    .line 183
    move-object/from16 v4, p1

    .line 184
    .line 185
    invoke-direct/range {v2 .. v7}, Landroidx/profileinstaller/DeviceProfileWriter;-><init>(Landroid/content/res/AssetManager;Ljava/util/concurrent/Executor;Landroidx/profileinstaller/ProfileInstaller$DiagnosticsCallback;Ljava/lang/String;Ljava/io/File;)V

    .line 186
    .line 187
    .line 188
    iget-object v4, v2, Landroidx/profileinstaller/DeviceProfileWriter;->c:[B

    .line 189
    .line 190
    if-nez v4, :cond_5

    .line 191
    .line 192
    const/4 v3, 0x3

    .line 193
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 194
    .line 195
    .line 196
    move-result-object v0

    .line 197
    invoke-virtual {v2, v3, v0}, Landroidx/profileinstaller/DeviceProfileWriter;->b(ILjava/io/Serializable;)V

    .line 198
    .line 199
    .line 200
    :goto_4
    const/4 v7, 0x1

    .line 201
    goto/16 :goto_2e

    .line 202
    .line 203
    :cond_5
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    .line 204
    .line 205
    .line 206
    move-result v0

    .line 207
    const/4 v6, 0x4

    .line 208
    if-eqz v0, :cond_7

    .line 209
    .line 210
    invoke-virtual {v7}, Ljava/io/File;->canWrite()Z

    .line 211
    .line 212
    .line 213
    move-result v0

    .line 214
    if-nez v0, :cond_6

    .line 215
    .line 216
    invoke-virtual {v2, v6, v12}, Landroidx/profileinstaller/DeviceProfileWriter;->b(ILjava/io/Serializable;)V

    .line 217
    .line 218
    .line 219
    goto :goto_4

    .line 220
    :cond_6
    :goto_5
    const/4 v7, 0x1

    .line 221
    goto :goto_6

    .line 222
    :cond_7
    :try_start_6
    invoke-virtual {v7}, Ljava/io/File;->createNewFile()Z
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_11

    .line 223
    .line 224
    .line 225
    goto :goto_5

    .line 226
    :goto_6
    iput-boolean v7, v2, Landroidx/profileinstaller/DeviceProfileWriter;->f:Z

    .line 227
    .line 228
    const/4 v7, 0x6

    .line 229
    :try_start_7
    invoke-virtual {v2, v3, v13}, Landroidx/profileinstaller/DeviceProfileWriter;->a(Landroid/content/res/AssetManager;Ljava/lang/String;)Ljava/io/FileInputStream;

    .line 230
    .line 231
    .line 232
    move-result-object v0
    :try_end_7
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    .line 233
    move-object v13, v0

    .line 234
    goto :goto_8

    .line 235
    :catch_1
    move-exception v0

    .line 236
    invoke-interface {v5, v8, v0}, Landroidx/profileinstaller/ProfileInstaller$DiagnosticsCallback;->b(ILjava/lang/Object;)V

    .line 237
    .line 238
    .line 239
    goto :goto_7

    .line 240
    :catch_2
    move-exception v0

    .line 241
    invoke-interface {v5, v7, v0}, Landroidx/profileinstaller/ProfileInstaller$DiagnosticsCallback;->b(ILjava/lang/Object;)V

    .line 242
    .line 243
    .line 244
    :goto_7
    move-object v13, v12

    .line 245
    :goto_8
    const-string v14, "Invalid magic"

    .line 246
    .line 247
    sget-object v15, Landroidx/profileinstaller/ProfileTranscoder;->a:[B

    .line 248
    .line 249
    const/16 v7, 0x8

    .line 250
    .line 251
    if-eqz v13, :cond_9

    .line 252
    .line 253
    :try_start_8
    invoke-static {v13, v6}, Landroidx/profileinstaller/Encoding;->b(Ljava/io/InputStream;I)[B

    .line 254
    .line 255
    .line 256
    move-result-object v0

    .line 257
    invoke-static {v15, v0}, Ljava/util/Arrays;->equals([B[B)Z

    .line 258
    .line 259
    .line 260
    move-result v0

    .line 261
    if-eqz v0, :cond_8

    .line 262
    .line 263
    invoke-static {v13, v6}, Landroidx/profileinstaller/Encoding;->b(Ljava/io/InputStream;I)[B

    .line 264
    .line 265
    .line 266
    move-result-object v0

    .line 267
    iget-object v9, v2, Landroidx/profileinstaller/DeviceProfileWriter;->e:Ljava/lang/String;

    .line 268
    .line 269
    invoke-static {v13, v0, v9}, Landroidx/profileinstaller/ProfileTranscoder;->g(Ljava/io/FileInputStream;[BLjava/lang/String;)[Landroidx/profileinstaller/DexProfileData;

    .line 270
    .line 271
    .line 272
    move-result-object v9
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5
    .catch Ljava/lang/IllegalStateException; {:try_start_8 .. :try_end_8} :catch_4
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 273
    :try_start_9
    invoke-virtual {v13}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3

    .line 274
    .line 275
    .line 276
    goto :goto_d

    .line 277
    :catch_3
    move-exception v0

    .line 278
    invoke-interface {v5, v8, v0}, Landroidx/profileinstaller/ProfileInstaller$DiagnosticsCallback;->b(ILjava/lang/Object;)V

    .line 279
    .line 280
    .line 281
    goto :goto_d

    .line 282
    :catchall_2
    move-exception v0

    .line 283
    move-object v1, v0

    .line 284
    goto :goto_e

    .line 285
    :catch_4
    move-exception v0

    .line 286
    goto :goto_9

    .line 287
    :catch_5
    move-exception v0

    .line 288
    goto :goto_b

    .line 289
    :cond_8
    :try_start_a
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 290
    .line 291
    invoke-direct {v0, v14}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 292
    .line 293
    .line 294
    throw v0
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_5
    .catch Ljava/lang/IllegalStateException; {:try_start_a .. :try_end_a} :catch_4
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 295
    :goto_9
    :try_start_b
    invoke-interface {v5, v7, v0}, Landroidx/profileinstaller/ProfileInstaller$DiagnosticsCallback;->b(ILjava/lang/Object;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    .line 296
    .line 297
    .line 298
    :goto_a
    :try_start_c
    invoke-virtual {v13}, Ljava/io/InputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_6

    .line 299
    .line 300
    .line 301
    goto :goto_c

    .line 302
    :catch_6
    move-exception v0

    .line 303
    invoke-interface {v5, v8, v0}, Landroidx/profileinstaller/ProfileInstaller$DiagnosticsCallback;->b(ILjava/lang/Object;)V

    .line 304
    .line 305
    .line 306
    goto :goto_c

    .line 307
    :goto_b
    :try_start_d
    invoke-interface {v5, v8, v0}, Landroidx/profileinstaller/ProfileInstaller$DiagnosticsCallback;->b(ILjava/lang/Object;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    .line 308
    .line 309
    .line 310
    goto :goto_a

    .line 311
    :goto_c
    move-object v9, v12

    .line 312
    :goto_d
    iput-object v9, v2, Landroidx/profileinstaller/DeviceProfileWriter;->g:[Landroidx/profileinstaller/DexProfileData;

    .line 313
    .line 314
    goto :goto_10

    .line 315
    :goto_e
    :try_start_e
    invoke-virtual {v13}, Ljava/io/InputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_7

    .line 316
    .line 317
    .line 318
    goto :goto_f

    .line 319
    :catch_7
    move-exception v0

    .line 320
    invoke-interface {v5, v8, v0}, Landroidx/profileinstaller/ProfileInstaller$DiagnosticsCallback;->b(ILjava/lang/Object;)V

    .line 321
    .line 322
    .line 323
    :goto_f
    throw v1

    .line 324
    :cond_9
    :goto_10
    iget-object v0, v2, Landroidx/profileinstaller/DeviceProfileWriter;->g:[Landroidx/profileinstaller/DexProfileData;

    .line 325
    .line 326
    if-eqz v0, :cond_f

    .line 327
    .line 328
    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 329
    .line 330
    const/16 v13, 0x18

    .line 331
    .line 332
    if-lt v9, v13, :cond_f

    .line 333
    .line 334
    const/16 v8, 0x22

    .line 335
    .line 336
    if-le v9, v8, :cond_a

    .line 337
    .line 338
    goto/16 :goto_18

    .line 339
    .line 340
    :cond_a
    if-eq v9, v13, :cond_b

    .line 341
    .line 342
    const/16 v8, 0x19

    .line 343
    .line 344
    if-eq v9, v8, :cond_b

    .line 345
    .line 346
    packed-switch v9, :pswitch_data_0

    .line 347
    .line 348
    .line 349
    goto :goto_18

    .line 350
    :cond_b
    :pswitch_0
    :try_start_f
    const-string v8, "dexopt/baseline.profm"

    .line 351
    .line 352
    invoke-virtual {v2, v3, v8}, Landroidx/profileinstaller/DeviceProfileWriter;->a(Landroid/content/res/AssetManager;Ljava/lang/String;)Ljava/io/FileInputStream;

    .line 353
    .line 354
    .line 355
    move-result-object v3
    :try_end_f
    .catch Ljava/io/FileNotFoundException; {:try_start_f .. :try_end_f} :catch_a
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_9
    .catch Ljava/lang/IllegalStateException; {:try_start_f .. :try_end_f} :catch_8

    .line 356
    if-eqz v3, :cond_d

    .line 357
    .line 358
    :try_start_10
    sget-object v8, Landroidx/profileinstaller/ProfileTranscoder;->b:[B

    .line 359
    .line 360
    invoke-static {v3, v6}, Landroidx/profileinstaller/Encoding;->b(Ljava/io/InputStream;I)[B

    .line 361
    .line 362
    .line 363
    move-result-object v9

    .line 364
    invoke-static {v8, v9}, Ljava/util/Arrays;->equals([B[B)Z

    .line 365
    .line 366
    .line 367
    move-result v8

    .line 368
    if-eqz v8, :cond_c

    .line 369
    .line 370
    invoke-static {v3, v6}, Landroidx/profileinstaller/Encoding;->b(Ljava/io/InputStream;I)[B

    .line 371
    .line 372
    .line 373
    move-result-object v6

    .line 374
    invoke-static {v3, v6, v4, v0}, Landroidx/profileinstaller/ProfileTranscoder;->d(Ljava/io/FileInputStream;[B[B[Landroidx/profileinstaller/DexProfileData;)[Landroidx/profileinstaller/DexProfileData;

    .line 375
    .line 376
    .line 377
    move-result-object v0

    .line 378
    iput-object v0, v2, Landroidx/profileinstaller/DeviceProfileWriter;->g:[Landroidx/profileinstaller/DexProfileData;
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_3

    .line 379
    .line 380
    :try_start_11
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_11
    .catch Ljava/io/FileNotFoundException; {:try_start_11 .. :try_end_11} :catch_a
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_9
    .catch Ljava/lang/IllegalStateException; {:try_start_11 .. :try_end_11} :catch_8

    .line 381
    .line 382
    .line 383
    move-object v0, v2

    .line 384
    goto :goto_17

    .line 385
    :catch_8
    move-exception v0

    .line 386
    goto :goto_13

    .line 387
    :catch_9
    move-exception v0

    .line 388
    const/4 v3, 0x7

    .line 389
    goto :goto_14

    .line 390
    :catch_a
    move-exception v0

    .line 391
    goto :goto_15

    .line 392
    :catchall_3
    move-exception v0

    .line 393
    move-object v4, v0

    .line 394
    goto :goto_11

    .line 395
    :cond_c
    :try_start_12
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 396
    .line 397
    invoke-direct {v0, v14}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 398
    .line 399
    .line 400
    throw v0
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_3

    .line 401
    :goto_11
    :try_start_13
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_4

    .line 402
    .line 403
    .line 404
    goto :goto_12

    .line 405
    :catchall_4
    move-exception v0

    .line 406
    :try_start_14
    invoke-virtual {v4, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 407
    .line 408
    .line 409
    :goto_12
    throw v4

    .line 410
    :cond_d
    if-eqz v3, :cond_e

    .line 411
    .line 412
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_14
    .catch Ljava/io/FileNotFoundException; {:try_start_14 .. :try_end_14} :catch_a
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_9
    .catch Ljava/lang/IllegalStateException; {:try_start_14 .. :try_end_14} :catch_8

    .line 413
    .line 414
    .line 415
    goto :goto_16

    .line 416
    :goto_13
    iput-object v12, v2, Landroidx/profileinstaller/DeviceProfileWriter;->g:[Landroidx/profileinstaller/DexProfileData;

    .line 417
    .line 418
    invoke-interface {v5, v7, v0}, Landroidx/profileinstaller/ProfileInstaller$DiagnosticsCallback;->b(ILjava/lang/Object;)V

    .line 419
    .line 420
    .line 421
    goto :goto_16

    .line 422
    :goto_14
    invoke-interface {v5, v3, v0}, Landroidx/profileinstaller/ProfileInstaller$DiagnosticsCallback;->b(ILjava/lang/Object;)V

    .line 423
    .line 424
    .line 425
    goto :goto_16

    .line 426
    :goto_15
    const/16 v3, 0x9

    .line 427
    .line 428
    invoke-interface {v5, v3, v0}, Landroidx/profileinstaller/ProfileInstaller$DiagnosticsCallback;->b(ILjava/lang/Object;)V

    .line 429
    .line 430
    .line 431
    :cond_e
    :goto_16
    move-object v0, v12

    .line 432
    :goto_17
    if-eqz v0, :cond_f

    .line 433
    .line 434
    move-object v2, v0

    .line 435
    :cond_f
    :goto_18
    iget-object v3, v2, Landroidx/profileinstaller/DeviceProfileWriter;->b:Landroidx/profileinstaller/ProfileInstaller$DiagnosticsCallback;

    .line 436
    .line 437
    iget-object v0, v2, Landroidx/profileinstaller/DeviceProfileWriter;->g:[Landroidx/profileinstaller/DexProfileData;

    .line 438
    .line 439
    iget-object v4, v2, Landroidx/profileinstaller/DeviceProfileWriter;->c:[B

    .line 440
    .line 441
    const-string v5, "This device doesn\'t support aot. Did you call deviceSupportsAotProfile()?"

    .line 442
    .line 443
    if-eqz v0, :cond_13

    .line 444
    .line 445
    if-nez v4, :cond_10

    .line 446
    .line 447
    goto :goto_1e

    .line 448
    :cond_10
    iget-boolean v6, v2, Landroidx/profileinstaller/DeviceProfileWriter;->f:Z

    .line 449
    .line 450
    if-eqz v6, :cond_12

    .line 451
    .line 452
    :try_start_15
    new-instance v6, Ljava/io/ByteArrayOutputStream;

    .line 453
    .line 454
    invoke-direct {v6}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_c
    .catch Ljava/lang/IllegalStateException; {:try_start_15 .. :try_end_15} :catch_b

    .line 455
    .line 456
    .line 457
    :try_start_16
    invoke-virtual {v6, v15}, Ljava/io/OutputStream;->write([B)V

    .line 458
    .line 459
    .line 460
    invoke-virtual {v6, v4}, Ljava/io/OutputStream;->write([B)V

    .line 461
    .line 462
    .line 463
    invoke-static {v6, v4, v0}, Landroidx/profileinstaller/ProfileTranscoder;->i(Ljava/io/ByteArrayOutputStream;[B[Landroidx/profileinstaller/DexProfileData;)Z

    .line 464
    .line 465
    .line 466
    move-result v0

    .line 467
    if-nez v0, :cond_11

    .line 468
    .line 469
    const/4 v0, 0x5

    .line 470
    invoke-interface {v3, v0, v12}, Landroidx/profileinstaller/ProfileInstaller$DiagnosticsCallback;->b(ILjava/lang/Object;)V

    .line 471
    .line 472
    .line 473
    iput-object v12, v2, Landroidx/profileinstaller/DeviceProfileWriter;->g:[Landroidx/profileinstaller/DexProfileData;
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_5

    .line 474
    .line 475
    :try_start_17
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_17} :catch_c
    .catch Ljava/lang/IllegalStateException; {:try_start_17 .. :try_end_17} :catch_b

    .line 476
    .line 477
    .line 478
    goto :goto_1e

    .line 479
    :catch_b
    move-exception v0

    .line 480
    goto :goto_1b

    .line 481
    :catch_c
    move-exception v0

    .line 482
    const/4 v4, 0x7

    .line 483
    goto :goto_1c

    .line 484
    :catchall_5
    move-exception v0

    .line 485
    move-object v4, v0

    .line 486
    goto :goto_19

    .line 487
    :cond_11
    :try_start_18
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 488
    .line 489
    .line 490
    move-result-object v0

    .line 491
    iput-object v0, v2, Landroidx/profileinstaller/DeviceProfileWriter;->h:[B
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_5

    .line 492
    .line 493
    :try_start_19
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_19} :catch_c
    .catch Ljava/lang/IllegalStateException; {:try_start_19 .. :try_end_19} :catch_b

    .line 494
    .line 495
    .line 496
    goto :goto_1d

    .line 497
    :goto_19
    :try_start_1a
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_6

    .line 498
    .line 499
    .line 500
    goto :goto_1a

    .line 501
    :catchall_6
    move-exception v0

    .line 502
    :try_start_1b
    invoke-virtual {v4, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 503
    .line 504
    .line 505
    :goto_1a
    throw v4
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_1b} :catch_c
    .catch Ljava/lang/IllegalStateException; {:try_start_1b .. :try_end_1b} :catch_b

    .line 506
    :goto_1b
    invoke-interface {v3, v7, v0}, Landroidx/profileinstaller/ProfileInstaller$DiagnosticsCallback;->b(ILjava/lang/Object;)V

    .line 507
    .line 508
    .line 509
    goto :goto_1d

    .line 510
    :goto_1c
    invoke-interface {v3, v4, v0}, Landroidx/profileinstaller/ProfileInstaller$DiagnosticsCallback;->b(ILjava/lang/Object;)V

    .line 511
    .line 512
    .line 513
    :goto_1d
    iput-object v12, v2, Landroidx/profileinstaller/DeviceProfileWriter;->g:[Landroidx/profileinstaller/DexProfileData;

    .line 514
    .line 515
    goto :goto_1e

    .line 516
    :cond_12
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 517
    .line 518
    invoke-direct {v0, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 519
    .line 520
    .line 521
    throw v0

    .line 522
    :cond_13
    :goto_1e
    iget-object v0, v2, Landroidx/profileinstaller/DeviceProfileWriter;->h:[B

    .line 523
    .line 524
    if-nez v0, :cond_14

    .line 525
    .line 526
    const/4 v0, 0x0

    .line 527
    const/4 v7, 0x1

    .line 528
    goto/16 :goto_2c

    .line 529
    .line 530
    :cond_14
    iget-boolean v3, v2, Landroidx/profileinstaller/DeviceProfileWriter;->f:Z

    .line 531
    .line 532
    if-eqz v3, :cond_17

    .line 533
    .line 534
    :try_start_1c
    new-instance v3, Ljava/io/ByteArrayInputStream;

    .line 535
    .line 536
    invoke-direct {v3, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_1c
    .catch Ljava/io/FileNotFoundException; {:try_start_1c .. :try_end_1c} :catch_10
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_1c} :catch_f
    .catchall {:try_start_1c .. :try_end_1c} :catchall_7

    .line 537
    .line 538
    .line 539
    :try_start_1d
    new-instance v4, Ljava/io/FileOutputStream;

    .line 540
    .line 541
    iget-object v0, v2, Landroidx/profileinstaller/DeviceProfileWriter;->d:Ljava/io/File;

    .line 542
    .line 543
    invoke-direct {v4, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_c

    .line 544
    .line 545
    .line 546
    const/16 v0, 0x200

    .line 547
    .line 548
    :try_start_1e
    new-array v0, v0, [B

    .line 549
    .line 550
    :goto_1f
    invoke-virtual {v3, v0}, Ljava/io/InputStream;->read([B)I

    .line 551
    .line 552
    .line 553
    move-result v5

    .line 554
    if-lez v5, :cond_15

    .line 555
    .line 556
    const/4 v6, 0x0

    .line 557
    invoke-virtual {v4, v0, v6, v5}, Ljava/io/OutputStream;->write([BII)V
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_a

    .line 558
    .line 559
    .line 560
    goto :goto_1f

    .line 561
    :cond_15
    const/4 v7, 0x1

    .line 562
    :try_start_1f
    invoke-virtual {v2, v7, v12}, Landroidx/profileinstaller/DeviceProfileWriter;->b(ILjava/io/Serializable;)V
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_9

    .line 563
    .line 564
    .line 565
    :try_start_20
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_8

    .line 566
    .line 567
    .line 568
    :try_start_21
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_21
    .catch Ljava/io/FileNotFoundException; {:try_start_21 .. :try_end_21} :catch_e
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_21} :catch_d
    .catchall {:try_start_21 .. :try_end_21} :catchall_7

    .line 569
    .line 570
    .line 571
    iput-object v12, v2, Landroidx/profileinstaller/DeviceProfileWriter;->h:[B

    .line 572
    .line 573
    iput-object v12, v2, Landroidx/profileinstaller/DeviceProfileWriter;->g:[Landroidx/profileinstaller/DexProfileData;

    .line 574
    .line 575
    move v0, v7

    .line 576
    goto :goto_2c

    .line 577
    :catchall_7
    move-exception v0

    .line 578
    goto :goto_2d

    .line 579
    :catch_d
    move-exception v0

    .line 580
    :goto_20
    const/4 v3, 0x7

    .line 581
    goto :goto_28

    .line 582
    :catch_e
    move-exception v0

    .line 583
    :goto_21
    const/4 v3, 0x6

    .line 584
    goto :goto_2a

    .line 585
    :catchall_8
    move-exception v0

    .line 586
    :goto_22
    move-object v4, v0

    .line 587
    goto :goto_26

    .line 588
    :catchall_9
    move-exception v0

    .line 589
    :goto_23
    move-object v5, v0

    .line 590
    goto :goto_24

    .line 591
    :catchall_a
    move-exception v0

    .line 592
    const/4 v7, 0x1

    .line 593
    goto :goto_23

    .line 594
    :goto_24
    :try_start_22
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_b

    .line 595
    .line 596
    .line 597
    goto :goto_25

    .line 598
    :catchall_b
    move-exception v0

    .line 599
    :try_start_23
    invoke-virtual {v5, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 600
    .line 601
    .line 602
    :goto_25
    throw v5
    :try_end_23
    .catchall {:try_start_23 .. :try_end_23} :catchall_8

    .line 603
    :catchall_c
    move-exception v0

    .line 604
    const/4 v7, 0x1

    .line 605
    goto :goto_22

    .line 606
    :goto_26
    :try_start_24
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_24
    .catchall {:try_start_24 .. :try_end_24} :catchall_d

    .line 607
    .line 608
    .line 609
    goto :goto_27

    .line 610
    :catchall_d
    move-exception v0

    .line 611
    :try_start_25
    invoke-virtual {v4, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 612
    .line 613
    .line 614
    :goto_27
    throw v4
    :try_end_25
    .catch Ljava/io/FileNotFoundException; {:try_start_25 .. :try_end_25} :catch_e
    .catch Ljava/io/IOException; {:try_start_25 .. :try_end_25} :catch_d
    .catchall {:try_start_25 .. :try_end_25} :catchall_7

    .line 615
    :catch_f
    move-exception v0

    .line 616
    const/4 v7, 0x1

    .line 617
    goto :goto_20

    .line 618
    :catch_10
    move-exception v0

    .line 619
    const/4 v7, 0x1

    .line 620
    goto :goto_21

    .line 621
    :goto_28
    :try_start_26
    invoke-virtual {v2, v3, v0}, Landroidx/profileinstaller/DeviceProfileWriter;->b(ILjava/io/Serializable;)V
    :try_end_26
    .catchall {:try_start_26 .. :try_end_26} :catchall_7

    .line 622
    .line 623
    .line 624
    :goto_29
    iput-object v12, v2, Landroidx/profileinstaller/DeviceProfileWriter;->h:[B

    .line 625
    .line 626
    iput-object v12, v2, Landroidx/profileinstaller/DeviceProfileWriter;->g:[Landroidx/profileinstaller/DexProfileData;

    .line 627
    .line 628
    goto :goto_2b

    .line 629
    :goto_2a
    :try_start_27
    invoke-virtual {v2, v3, v0}, Landroidx/profileinstaller/DeviceProfileWriter;->b(ILjava/io/Serializable;)V
    :try_end_27
    .catchall {:try_start_27 .. :try_end_27} :catchall_7

    .line 630
    .line 631
    .line 632
    goto :goto_29

    .line 633
    :goto_2b
    const/4 v0, 0x0

    .line 634
    :goto_2c
    if-eqz v0, :cond_16

    .line 635
    .line 636
    invoke-static {v10, v11}, Landroidx/profileinstaller/ProfileInstaller;->a(Landroid/content/pm/PackageInfo;Ljava/io/File;)V

    .line 637
    .line 638
    .line 639
    :cond_16
    move v6, v0

    .line 640
    goto :goto_2f

    .line 641
    :goto_2d
    iput-object v12, v2, Landroidx/profileinstaller/DeviceProfileWriter;->h:[B

    .line 642
    .line 643
    iput-object v12, v2, Landroidx/profileinstaller/DeviceProfileWriter;->g:[Landroidx/profileinstaller/DexProfileData;

    .line 644
    .line 645
    throw v0

    .line 646
    :cond_17
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 647
    .line 648
    invoke-direct {v0, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 649
    .line 650
    .line 651
    throw v0

    .line 652
    :catch_11
    const/4 v7, 0x1

    .line 653
    invoke-virtual {v2, v6, v12}, Landroidx/profileinstaller/DeviceProfileWriter;->b(ILjava/io/Serializable;)V

    .line 654
    .line 655
    .line 656
    :goto_2e
    const/4 v6, 0x0

    .line 657
    :goto_2f
    if-eqz v6, :cond_18

    .line 658
    .line 659
    if-eqz p3, :cond_18

    .line 660
    .line 661
    move v9, v7

    .line 662
    goto :goto_30

    .line 663
    :cond_18
    const/4 v9, 0x0

    .line 664
    :goto_30
    invoke-static {v1, v9}, Landroidx/profileinstaller/ProfileVerifier;->c(Landroid/content/Context;Z)V

    .line 665
    .line 666
    .line 667
    :goto_31
    return-void

    .line 668
    :catch_12
    move-exception v0

    .line 669
    const/4 v3, 0x7

    .line 670
    invoke-interface {v5, v3, v0}, Landroidx/profileinstaller/ProfileInstaller$DiagnosticsCallback;->b(ILjava/lang/Object;)V

    .line 671
    .line 672
    .line 673
    const/4 v6, 0x0

    .line 674
    invoke-static {v1, v6}, Landroidx/profileinstaller/ProfileVerifier;->c(Landroid/content/Context;Z)V

    .line 675
    .line 676
    .line 677
    return-void

    .line 678
    nop

    .line 679
    :pswitch_data_0
    .packed-switch 0x1f
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
