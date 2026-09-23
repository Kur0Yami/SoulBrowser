.class Lcom/mycompany/app/torrent/TorrentStream$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Landroid/content/Context;

.field public final synthetic f:Ljava/lang/String;

.field public final synthetic g:Ljava/lang/String;

.field public final synthetic h:Lcom/mycompany/app/torrent/TorrentStream;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/torrent/TorrentStream;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/torrent/TorrentStream$2;->h:Lcom/mycompany/app/torrent/TorrentStream;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/mycompany/app/torrent/TorrentStream$2;->c:Landroid/content/Context;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/mycompany/app/torrent/TorrentStream$2;->f:Ljava/lang/String;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/mycompany/app/torrent/TorrentStream$2;->g:Ljava/lang/String;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 22

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/torrent/TorrentStream$2;->h:Lcom/mycompany/app/torrent/TorrentStream;

    .line 4
    .line 5
    iget-object v4, v0, Lcom/mycompany/app/torrent/TorrentStream$2;->c:Landroid/content/Context;

    .line 6
    .line 7
    iget-object v5, v0, Lcom/mycompany/app/torrent/TorrentStream$2;->f:Ljava/lang/String;

    .line 8
    .line 9
    iget-object v6, v0, Lcom/mycompany/app/torrent/TorrentStream$2;->g:Ljava/lang/String;

    .line 10
    .line 11
    iget-object v8, v1, Lcom/mycompany/app/torrent/TorrentStream;->o:Lcom/mycompany/app/torrent/TorAlertAddListener;

    .line 12
    .line 13
    iget-object v2, v1, Lcom/mycompany/app/torrent/TorrentStream;->a:Ljava/lang/String;

    .line 14
    .line 15
    iget-object v3, v1, Lcom/mycompany/app/torrent/TorrentStream;->g:Ljava/util/concurrent/CountDownLatch;

    .line 16
    .line 17
    const/4 v9, 0x0

    .line 18
    const/4 v10, 0x0

    .line 19
    if-eqz v3, :cond_0

    .line 20
    .line 21
    :try_start_0
    invoke-virtual {v3}, Ljava/util/concurrent/CountDownLatch;->await()V

    .line 22
    .line 23
    .line 24
    iput-object v9, v1, Lcom/mycompany/app/torrent/TorrentStream;->g:Ljava/util/concurrent/CountDownLatch;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_7

    .line 25
    .line 26
    :cond_0
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 27
    .line 28
    .line 29
    move-result v3

    .line 30
    if-eqz v3, :cond_1

    .line 31
    .line 32
    goto/16 :goto_6

    .line 33
    .line 34
    :cond_1
    new-instance v11, Ljava/io/File;

    .line 35
    .line 36
    invoke-direct {v11, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v11}, Ljava/io/File;->isDirectory()Z

    .line 40
    .line 41
    .line 42
    move-result v2

    .line 43
    if-nez v2, :cond_2

    .line 44
    .line 45
    invoke-virtual {v11}, Ljava/io/File;->mkdir()Z

    .line 46
    .line 47
    .line 48
    move-result v2

    .line 49
    if-nez v2, :cond_2

    .line 50
    .line 51
    goto/16 :goto_6

    .line 52
    .line 53
    :cond_2
    const/4 v12, 0x1

    .line 54
    :try_start_1
    invoke-static {v5}, Landroid/webkit/URLUtil;->isNetworkUrl(Ljava/lang/String;)Z

    .line 55
    .line 56
    .line 57
    move-result v2

    .line 58
    if-eqz v2, :cond_4

    .line 59
    .line 60
    invoke-static {}, Lcom/mycompany/app/torrent/TorrentUtil;->b()Lcom/mycompany/app/torrent/TorrentUtil;

    .line 61
    .line 62
    .line 63
    move-result-object v2

    .line 64
    invoke-virtual {v2, v5}, Lcom/mycompany/app/torrent/TorrentUtil;->a(Ljava/lang/String;)Lcom/frostwire/jlibtorrent/TorrentInfo;

    .line 65
    .line 66
    .line 67
    move-result-object v13
    :try_end_1
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 68
    if-eqz v13, :cond_3

    .line 69
    .line 70
    goto :goto_4

    .line 71
    :cond_3
    const/4 v3, -0x1

    .line 72
    const/4 v7, 0x0

    .line 73
    const/4 v2, -0x1

    .line 74
    :try_start_2
    invoke-static/range {v2 .. v7}, Lcom/mycompany/app/main/MainUtil;->S3(IILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Ljava/net/HttpURLConnection;

    .line 75
    .line 76
    .line 77
    move-result-object v2
    :try_end_2
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 78
    :try_start_3
    invoke-virtual {v2, v12}, Ljava/net/URLConnection;->setDoInput(Z)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {v2}, Ljava/net/URLConnection;->connect()V

    .line 82
    .line 83
    .line 84
    invoke-virtual {v2}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    .line 85
    .line 86
    .line 87
    move-result-object v3
    :try_end_3
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 88
    goto :goto_1

    .line 89
    :catch_0
    move-object v3, v9

    .line 90
    :goto_0
    move-object v4, v3

    .line 91
    goto :goto_3

    .line 92
    :catch_1
    move-object v2, v9

    .line 93
    move-object v3, v2

    .line 94
    goto :goto_0

    .line 95
    :catch_2
    move-object v2, v9

    .line 96
    move-object v3, v2

    .line 97
    move-object v4, v3

    .line 98
    move-object v13, v4

    .line 99
    goto :goto_3

    .line 100
    :cond_4
    :try_start_4
    invoke-static {v4, v5}, Lcom/mycompany/app/main/MainUtil;->Y1(Landroid/content/Context;Ljava/lang/String;)Ljava/io/InputStream;

    .line 101
    .line 102
    .line 103
    move-result-object v3
    :try_end_4
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 104
    move-object v2, v9

    .line 105
    move-object v13, v2

    .line 106
    :goto_1
    :try_start_5
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    .line 107
    .line 108
    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_5
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/lang/OutOfMemoryError; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 109
    .line 110
    .line 111
    const/16 v5, 0x400

    .line 112
    .line 113
    :try_start_6
    new-array v6, v5, [B

    .line 114
    .line 115
    :goto_2
    invoke-virtual {v3, v6, v10, v5}, Ljava/io/InputStream;->read([BII)I

    .line 116
    .line 117
    .line 118
    move-result v7

    .line 119
    const/4 v14, -0x1

    .line 120
    if-eq v7, v14, :cond_5

    .line 121
    .line 122
    invoke-virtual {v4, v6, v10, v7}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 123
    .line 124
    .line 125
    goto :goto_2

    .line 126
    :cond_5
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 127
    .line 128
    .line 129
    move-result-object v5

    .line 130
    array-length v6, v5

    .line 131
    if-lez v6, :cond_6

    .line 132
    .line 133
    invoke-static {v5}, Lcom/frostwire/jlibtorrent/TorrentInfo;->a([B)Lcom/frostwire/jlibtorrent/TorrentInfo;

    .line 134
    .line 135
    .line 136
    move-result-object v13
    :try_end_6
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_6 .. :try_end_6} :catch_4
    .catch Ljava/lang/OutOfMemoryError; {:try_start_6 .. :try_end_6} :catch_4
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    .line 137
    goto :goto_3

    .line 138
    :catch_3
    move-object v4, v9

    .line 139
    :catch_4
    :cond_6
    :goto_3
    if-eqz v4, :cond_7

    .line 140
    .line 141
    :try_start_7
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5

    .line 142
    .line 143
    .line 144
    :catch_5
    :cond_7
    if-eqz v3, :cond_8

    .line 145
    .line 146
    :try_start_8
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_6

    .line 147
    .line 148
    .line 149
    :catch_6
    :cond_8
    if-eqz v2, :cond_9

    .line 150
    .line 151
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 152
    .line 153
    .line 154
    :cond_9
    :goto_4
    if-nez v13, :cond_a

    .line 155
    .line 156
    goto :goto_6

    .line 157
    :cond_a
    iget-object v2, v13, Lcom/frostwire/jlibtorrent/TorrentInfo;->a:Lcom/frostwire/jlibtorrent/swig/torrent_info;

    .line 158
    .line 159
    iget-wide v3, v2, Lcom/frostwire/jlibtorrent/swig/torrent_info;->a:J

    .line 160
    .line 161
    invoke-static {v3, v4, v2}, Lcom/frostwire/jlibtorrent/swig/libtorrent_jni;->torrent_info_num_files(JLcom/frostwire/jlibtorrent/swig/torrent_info;)I

    .line 162
    .line 163
    .line 164
    move-result v2

    .line 165
    if-nez v2, :cond_b

    .line 166
    .line 167
    goto :goto_6

    .line 168
    :cond_b
    new-array v3, v2, [Lcom/frostwire/jlibtorrent/Priority;

    .line 169
    .line 170
    move v4, v10

    .line 171
    :goto_5
    if-ge v4, v2, :cond_c

    .line 172
    .line 173
    sget-object v5, Lcom/frostwire/jlibtorrent/Priority;->f:Lcom/frostwire/jlibtorrent/Priority;

    .line 174
    .line 175
    aput-object v5, v3, v4

    .line 176
    .line 177
    add-int/lit8 v4, v4, 0x1

    .line 178
    .line 179
    goto :goto_5

    .line 180
    :cond_c
    iget-boolean v4, v1, Lcom/mycompany/app/torrent/TorrentStream;->f:Z

    .line 181
    .line 182
    if-eqz v4, :cond_d

    .line 183
    .line 184
    goto :goto_6

    .line 185
    :cond_d
    iget-object v4, v1, Lcom/mycompany/app/torrent/TorrentStream;->h:Lcom/frostwire/jlibtorrent/SessionManager;

    .line 186
    .line 187
    if-nez v4, :cond_e

    .line 188
    .line 189
    :catch_7
    :goto_6
    iput-boolean v10, v1, Lcom/mycompany/app/torrent/TorrentStream;->e:Z

    .line 190
    .line 191
    iget-object v1, v1, Lcom/mycompany/app/torrent/TorrentStream;->b:Lcom/mycompany/app/torrent/TorrentStream$TorrentListener;

    .line 192
    .line 193
    invoke-interface {v1}, Lcom/mycompany/app/torrent/TorrentStream$TorrentListener;->c()V

    .line 194
    .line 195
    .line 196
    goto/16 :goto_a

    .line 197
    .line 198
    :cond_e
    invoke-virtual {v4, v10, v8}, Lcom/frostwire/jlibtorrent/SessionManager;->e(ZLcom/frostwire/jlibtorrent/AlertListener;)V

    .line 199
    .line 200
    .line 201
    iget-object v4, v1, Lcom/mycompany/app/torrent/TorrentStream;->h:Lcom/frostwire/jlibtorrent/SessionManager;

    .line 202
    .line 203
    invoke-virtual {v4, v12, v8}, Lcom/frostwire/jlibtorrent/SessionManager;->e(ZLcom/frostwire/jlibtorrent/AlertListener;)V

    .line 204
    .line 205
    .line 206
    iget-object v1, v1, Lcom/mycompany/app/torrent/TorrentStream;->h:Lcom/frostwire/jlibtorrent/SessionManager;

    .line 207
    .line 208
    iget-object v4, v1, Lcom/frostwire/jlibtorrent/SessionManager;->c:Lcom/frostwire/jlibtorrent/swig/session;

    .line 209
    .line 210
    if-nez v4, :cond_f

    .line 211
    .line 212
    goto/16 :goto_a

    .line 213
    .line 214
    :cond_f
    iget-object v4, v13, Lcom/frostwire/jlibtorrent/TorrentInfo;->a:Lcom/frostwire/jlibtorrent/swig/torrent_info;

    .line 215
    .line 216
    iget-wide v5, v4, Lcom/frostwire/jlibtorrent/swig/torrent_info;->a:J

    .line 217
    .line 218
    invoke-static {v5, v6, v4}, Lcom/frostwire/jlibtorrent/swig/libtorrent_jni;->torrent_info_is_valid(JLcom/frostwire/jlibtorrent/swig/torrent_info;)Z

    .line 219
    .line 220
    .line 221
    move-result v4

    .line 222
    if-eqz v4, :cond_16

    .line 223
    .line 224
    iget-object v4, v1, Lcom/frostwire/jlibtorrent/SessionManager;->c:Lcom/frostwire/jlibtorrent/swig/session;

    .line 225
    .line 226
    iget-object v5, v13, Lcom/frostwire/jlibtorrent/TorrentInfo;->a:Lcom/frostwire/jlibtorrent/swig/torrent_info;

    .line 227
    .line 228
    new-instance v6, Lcom/frostwire/jlibtorrent/swig/sha1_hash;

    .line 229
    .line 230
    iget-wide v7, v5, Lcom/frostwire/jlibtorrent/swig/torrent_info;->a:J

    .line 231
    .line 232
    invoke-static {v7, v8, v5}, Lcom/frostwire/jlibtorrent/swig/libtorrent_jni;->torrent_info_info_hash(JLcom/frostwire/jlibtorrent/swig/torrent_info;)J

    .line 233
    .line 234
    .line 235
    move-result-wide v7

    .line 236
    invoke-direct {v6, v7, v8, v10}, Lcom/frostwire/jlibtorrent/swig/sha1_hash;-><init>(JZ)V

    .line 237
    .line 238
    .line 239
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 240
    .line 241
    .line 242
    new-instance v5, Lcom/frostwire/jlibtorrent/swig/torrent_handle;

    .line 243
    .line 244
    iget-wide v14, v4, Lcom/frostwire/jlibtorrent/swig/session_handle;->a:J

    .line 245
    .line 246
    iget-wide v7, v6, Lcom/frostwire/jlibtorrent/swig/sha1_hash;->a:J

    .line 247
    .line 248
    move-object/from16 v16, v4

    .line 249
    .line 250
    move-object/from16 v19, v6

    .line 251
    .line 252
    move-wide/from16 v17, v7

    .line 253
    .line 254
    invoke-static/range {v14 .. v19}, Lcom/frostwire/jlibtorrent/swig/libtorrent_jni;->session_handle_find_torrent(JLcom/frostwire/jlibtorrent/swig/session_handle;JLcom/frostwire/jlibtorrent/swig/sha1_hash;)J

    .line 255
    .line 256
    .line 257
    move-result-wide v6

    .line 258
    invoke-direct {v5, v6, v7, v12}, Lcom/frostwire/jlibtorrent/swig/torrent_handle;-><init>(JZ)V

    .line 259
    .line 260
    .line 261
    iget-wide v6, v5, Lcom/frostwire/jlibtorrent/swig/torrent_handle;->a:J

    .line 262
    .line 263
    invoke-static {v6, v7, v5}, Lcom/frostwire/jlibtorrent/swig/libtorrent_jni;->torrent_handle_is_valid(JLcom/frostwire/jlibtorrent/swig/torrent_handle;)Z

    .line 264
    .line 265
    .line 266
    move-result v4

    .line 267
    const-string v6, "priorities count should be equals to the number of files"

    .line 268
    .line 269
    if-eqz v4, :cond_12

    .line 270
    .line 271
    iget-object v1, v13, Lcom/frostwire/jlibtorrent/TorrentInfo;->a:Lcom/frostwire/jlibtorrent/swig/torrent_info;

    .line 272
    .line 273
    iget-wide v7, v1, Lcom/frostwire/jlibtorrent/swig/torrent_info;->a:J

    .line 274
    .line 275
    invoke-static {v7, v8, v1}, Lcom/frostwire/jlibtorrent/swig/libtorrent_jni;->torrent_info_num_files(JLcom/frostwire/jlibtorrent/swig/torrent_info;)I

    .line 276
    .line 277
    .line 278
    move-result v1

    .line 279
    if-ne v1, v2, :cond_11

    .line 280
    .line 281
    new-instance v1, Lcom/frostwire/jlibtorrent/swig/int_vector;

    .line 282
    .line 283
    invoke-static {}, Lcom/frostwire/jlibtorrent/swig/libtorrent_jni;->new_int_vector()J

    .line 284
    .line 285
    .line 286
    move-result-wide v6

    .line 287
    invoke-direct {v1, v6, v7}, Lcom/frostwire/jlibtorrent/swig/int_vector;-><init>(J)V

    .line 288
    .line 289
    .line 290
    :goto_7
    if-ge v10, v2, :cond_10

    .line 291
    .line 292
    aget-object v4, v3, v10

    .line 293
    .line 294
    iget v4, v4, Lcom/frostwire/jlibtorrent/Priority;->c:I

    .line 295
    .line 296
    iget-wide v6, v1, Lcom/frostwire/jlibtorrent/swig/int_vector;->a:J

    .line 297
    .line 298
    invoke-static {v6, v7, v1, v4}, Lcom/frostwire/jlibtorrent/swig/libtorrent_jni;->int_vector_push_back(JLcom/frostwire/jlibtorrent/swig/int_vector;I)V

    .line 299
    .line 300
    .line 301
    add-int/lit8 v10, v10, 0x1

    .line 302
    .line 303
    goto :goto_7

    .line 304
    :cond_10
    iget-wide v14, v5, Lcom/frostwire/jlibtorrent/swig/torrent_handle;->a:J

    .line 305
    .line 306
    iget-wide v2, v1, Lcom/frostwire/jlibtorrent/swig/int_vector;->a:J

    .line 307
    .line 308
    move-object/from16 v19, v1

    .line 309
    .line 310
    move-wide/from16 v17, v2

    .line 311
    .line 312
    move-object/from16 v16, v5

    .line 313
    .line 314
    invoke-static/range {v14 .. v19}, Lcom/frostwire/jlibtorrent/swig/libtorrent_jni;->torrent_handle_prioritize_files2(JLcom/frostwire/jlibtorrent/swig/torrent_handle;JLcom/frostwire/jlibtorrent/swig/int_vector;)V

    .line 315
    .line 316
    .line 317
    goto/16 :goto_a

    .line 318
    .line 319
    :cond_11
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 320
    .line 321
    invoke-direct {v1, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 322
    .line 323
    .line 324
    throw v1

    .line 325
    :cond_12
    new-instance v15, Lcom/frostwire/jlibtorrent/swig/add_torrent_params;

    .line 326
    .line 327
    invoke-static {}, Lcom/frostwire/jlibtorrent/swig/libtorrent_jni;->add_torrent_params_create_instance()J

    .line 328
    .line 329
    .line 330
    move-result-wide v4

    .line 331
    invoke-direct {v15}, Ljava/lang/Object;-><init>()V

    .line 332
    .line 333
    .line 334
    const/4 v7, 0x1

    .line 335
    iput-boolean v7, v15, Lcom/frostwire/jlibtorrent/swig/add_torrent_params;->b:Z

    .line 336
    .line 337
    iput-wide v4, v15, Lcom/frostwire/jlibtorrent/swig/add_torrent_params;->a:J

    .line 338
    .line 339
    iget-object v4, v13, Lcom/frostwire/jlibtorrent/TorrentInfo;->a:Lcom/frostwire/jlibtorrent/swig/torrent_info;

    .line 340
    .line 341
    move-object v5, v15

    .line 342
    iget-wide v14, v5, Lcom/frostwire/jlibtorrent/swig/add_torrent_params;->a:J

    .line 343
    .line 344
    iget-wide v7, v4, Lcom/frostwire/jlibtorrent/swig/torrent_info;->a:J

    .line 345
    .line 346
    move-object/from16 v19, v4

    .line 347
    .line 348
    move-object/from16 v16, v5

    .line 349
    .line 350
    move-wide/from16 v17, v7

    .line 351
    .line 352
    invoke-static/range {v14 .. v19}, Lcom/frostwire/jlibtorrent/swig/libtorrent_jni;->add_torrent_params_set_ti(JLcom/frostwire/jlibtorrent/swig/add_torrent_params;JLcom/frostwire/jlibtorrent/swig/torrent_info;)V

    .line 353
    .line 354
    .line 355
    move-object/from16 v15, v16

    .line 356
    .line 357
    invoke-virtual {v11}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 358
    .line 359
    .line 360
    move-result-object v4

    .line 361
    iget-wide v7, v15, Lcom/frostwire/jlibtorrent/swig/add_torrent_params;->a:J

    .line 362
    .line 363
    invoke-static {v7, v8, v15, v4}, Lcom/frostwire/jlibtorrent/swig/libtorrent_jni;->add_torrent_params_save_path_set(JLcom/frostwire/jlibtorrent/swig/add_torrent_params;Ljava/lang/String;)V

    .line 364
    .line 365
    .line 366
    invoke-virtual {v13}, Lcom/frostwire/jlibtorrent/TorrentInfo;->b()Lcom/frostwire/jlibtorrent/FileStorage;

    .line 367
    .line 368
    .line 369
    move-result-object v4

    .line 370
    iget-object v4, v4, Lcom/frostwire/jlibtorrent/FileStorage;->a:Lcom/frostwire/jlibtorrent/swig/file_storage;

    .line 371
    .line 372
    iget-wide v7, v4, Lcom/frostwire/jlibtorrent/swig/file_storage;->a:J

    .line 373
    .line 374
    invoke-static {v7, v8, v4}, Lcom/frostwire/jlibtorrent/swig/libtorrent_jni;->file_storage_num_files(JLcom/frostwire/jlibtorrent/swig/file_storage;)I

    .line 375
    .line 376
    .line 377
    move-result v4

    .line 378
    if-ne v4, v2, :cond_15

    .line 379
    .line 380
    new-instance v4, Lcom/frostwire/jlibtorrent/swig/byte_vector;

    .line 381
    .line 382
    invoke-direct {v4}, Lcom/frostwire/jlibtorrent/swig/byte_vector;-><init>()V

    .line 383
    .line 384
    .line 385
    move v5, v10

    .line 386
    :goto_8
    if-ge v5, v2, :cond_13

    .line 387
    .line 388
    aget-object v6, v3, v5

    .line 389
    .line 390
    iget v6, v6, Lcom/frostwire/jlibtorrent/Priority;->c:I

    .line 391
    .line 392
    int-to-byte v6, v6

    .line 393
    iget-wide v7, v4, Lcom/frostwire/jlibtorrent/swig/byte_vector;->a:J

    .line 394
    .line 395
    invoke-static {v7, v8, v4, v6}, Lcom/frostwire/jlibtorrent/swig/libtorrent_jni;->byte_vector_push_back(JLcom/frostwire/jlibtorrent/swig/byte_vector;B)V

    .line 396
    .line 397
    .line 398
    add-int/lit8 v5, v5, 0x1

    .line 399
    .line 400
    goto :goto_8

    .line 401
    :cond_13
    iget-wide v13, v15, Lcom/frostwire/jlibtorrent/swig/add_torrent_params;->a:J

    .line 402
    .line 403
    iget-wide v2, v4, Lcom/frostwire/jlibtorrent/swig/byte_vector;->a:J

    .line 404
    .line 405
    move-wide/from16 v16, v2

    .line 406
    .line 407
    move-object/from16 v18, v4

    .line 408
    .line 409
    invoke-static/range {v13 .. v18}, Lcom/frostwire/jlibtorrent/swig/libtorrent_jni;->add_torrent_params_set_file_priorities2(JLcom/frostwire/jlibtorrent/swig/add_torrent_params;JLcom/frostwire/jlibtorrent/swig/byte_vector;)V

    .line 410
    .line 411
    .line 412
    iget-wide v2, v15, Lcom/frostwire/jlibtorrent/swig/add_torrent_params;->a:J

    .line 413
    .line 414
    invoke-static {v2, v3, v15}, Lcom/frostwire/jlibtorrent/swig/libtorrent_jni;->add_torrent_params_flags_get(JLcom/frostwire/jlibtorrent/swig/add_torrent_params;)J

    .line 415
    .line 416
    .line 417
    move-result-wide v2

    .line 418
    const-wide/16 v4, 0x0

    .line 419
    .line 420
    cmp-long v4, v2, v4

    .line 421
    .line 422
    if-nez v4, :cond_14

    .line 423
    .line 424
    goto :goto_9

    .line 425
    :cond_14
    new-instance v9, Lcom/frostwire/jlibtorrent/swig/torrent_flags_t;

    .line 426
    .line 427
    invoke-direct {v9, v2, v3, v10}, Lcom/frostwire/jlibtorrent/swig/torrent_flags_t;-><init>(JZ)V

    .line 428
    .line 429
    .line 430
    :goto_9
    sget-object v2, Lcom/frostwire/jlibtorrent/TorrentFlags;->f:Lcom/frostwire/jlibtorrent/swig/torrent_flags_t;

    .line 431
    .line 432
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 433
    .line 434
    .line 435
    new-instance v3, Lcom/frostwire/jlibtorrent/swig/torrent_flags_t;

    .line 436
    .line 437
    iget-wide v4, v2, Lcom/frostwire/jlibtorrent/swig/torrent_flags_t;->a:J

    .line 438
    .line 439
    invoke-static {v4, v5, v2}, Lcom/frostwire/jlibtorrent/swig/libtorrent_jni;->torrent_flags_t_inv(JLcom/frostwire/jlibtorrent/swig/torrent_flags_t;)J

    .line 440
    .line 441
    .line 442
    move-result-wide v4

    .line 443
    invoke-direct {v3, v4, v5, v12}, Lcom/frostwire/jlibtorrent/swig/torrent_flags_t;-><init>(JZ)V

    .line 444
    .line 445
    .line 446
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 447
    .line 448
    .line 449
    new-instance v2, Lcom/frostwire/jlibtorrent/swig/torrent_flags_t;

    .line 450
    .line 451
    iget-wide v4, v9, Lcom/frostwire/jlibtorrent/swig/torrent_flags_t;->a:J

    .line 452
    .line 453
    iget-wide v6, v3, Lcom/frostwire/jlibtorrent/swig/torrent_flags_t;->a:J

    .line 454
    .line 455
    move-object/from16 v21, v3

    .line 456
    .line 457
    move-wide/from16 v16, v4

    .line 458
    .line 459
    move-wide/from16 v19, v6

    .line 460
    .line 461
    move-object/from16 v18, v9

    .line 462
    .line 463
    invoke-static/range {v16 .. v21}, Lcom/frostwire/jlibtorrent/swig/libtorrent_jni;->torrent_flags_t_and_(JLcom/frostwire/jlibtorrent/swig/torrent_flags_t;JLcom/frostwire/jlibtorrent/swig/torrent_flags_t;)J

    .line 464
    .line 465
    .line 466
    move-result-wide v3

    .line 467
    invoke-direct {v2, v3, v4, v12}, Lcom/frostwire/jlibtorrent/swig/torrent_flags_t;-><init>(JZ)V

    .line 468
    .line 469
    .line 470
    iget-wide v7, v15, Lcom/frostwire/jlibtorrent/swig/add_torrent_params;->a:J

    .line 471
    .line 472
    iget-wide v10, v2, Lcom/frostwire/jlibtorrent/swig/torrent_flags_t;->a:J

    .line 473
    .line 474
    move-object v12, v2

    .line 475
    move-object v9, v15

    .line 476
    invoke-static/range {v7 .. v12}, Lcom/frostwire/jlibtorrent/swig/libtorrent_jni;->add_torrent_params_flags_set(JLcom/frostwire/jlibtorrent/swig/add_torrent_params;JLcom/frostwire/jlibtorrent/swig/torrent_flags_t;)V

    .line 477
    .line 478
    .line 479
    iget-object v9, v1, Lcom/frostwire/jlibtorrent/SessionManager;->c:Lcom/frostwire/jlibtorrent/swig/session;

    .line 480
    .line 481
    iget-wide v7, v9, Lcom/frostwire/jlibtorrent/swig/session_handle;->a:J

    .line 482
    .line 483
    iget-wide v10, v15, Lcom/frostwire/jlibtorrent/swig/add_torrent_params;->a:J

    .line 484
    .line 485
    move-object v12, v15

    .line 486
    invoke-static/range {v7 .. v12}, Lcom/frostwire/jlibtorrent/swig/libtorrent_jni;->session_handle_async_add_torrent(JLcom/frostwire/jlibtorrent/swig/session_handle;JLcom/frostwire/jlibtorrent/swig/add_torrent_params;)V

    .line 487
    .line 488
    .line 489
    :goto_a
    return-void

    .line 490
    :cond_15
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 491
    .line 492
    invoke-direct {v1, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 493
    .line 494
    .line 495
    throw v1

    .line 496
    :cond_16
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 497
    .line 498
    const-string v2, "torrent info not valid"

    .line 499
    .line 500
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 501
    .line 502
    .line 503
    throw v1
.end method
