.class Lcom/frostwire/jlibtorrent/SessionManager$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/frostwire/jlibtorrent/SessionManager;


# direct methods
.method public constructor <init>(Lcom/frostwire/jlibtorrent/SessionManager;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/frostwire/jlibtorrent/SessionManager$5;->c:Lcom/frostwire/jlibtorrent/SessionManager;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 29

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    new-instance v7, Lcom/frostwire/jlibtorrent/swig/alert_ptr_vector;

    .line 4
    .line 5
    invoke-static {}, Lcom/frostwire/jlibtorrent/swig/libtorrent_jni;->new_alert_ptr_vector()J

    .line 6
    .line 7
    .line 8
    move-result-wide v2

    .line 9
    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    const/4 v8, 0x1

    .line 13
    iput-boolean v8, v7, Lcom/frostwire/jlibtorrent/swig/alert_ptr_vector;->b:Z

    .line 14
    .line 15
    iput-wide v2, v7, Lcom/frostwire/jlibtorrent/swig/alert_ptr_vector;->a:J

    .line 16
    .line 17
    :goto_0
    iget-object v0, v1, Lcom/frostwire/jlibtorrent/SessionManager$5;->c:Lcom/frostwire/jlibtorrent/SessionManager;

    .line 18
    .line 19
    iget-object v0, v0, Lcom/frostwire/jlibtorrent/SessionManager;->c:Lcom/frostwire/jlibtorrent/swig/session;

    .line 20
    .line 21
    if-eqz v0, :cond_23

    .line 22
    .line 23
    iget-object v0, v1, Lcom/frostwire/jlibtorrent/SessionManager$5;->c:Lcom/frostwire/jlibtorrent/SessionManager;

    .line 24
    .line 25
    iget-object v0, v0, Lcom/frostwire/jlibtorrent/SessionManager;->c:Lcom/frostwire/jlibtorrent/swig/session;

    .line 26
    .line 27
    const-wide/16 v2, 0x1f4

    .line 28
    .line 29
    iget-wide v4, v0, Lcom/frostwire/jlibtorrent/swig/session_handle;->a:J

    .line 30
    .line 31
    invoke-static {v4, v5, v0, v2, v3}, Lcom/frostwire/jlibtorrent/swig/libtorrent_jni;->session_handle_wait_for_alert_ms(JLcom/frostwire/jlibtorrent/swig/session_handle;J)J

    .line 32
    .line 33
    .line 34
    move-result-wide v2

    .line 35
    const-wide/16 v9, 0x0

    .line 36
    .line 37
    cmp-long v0, v2, v9

    .line 38
    .line 39
    const/4 v12, 0x0

    .line 40
    if-nez v0, :cond_0

    .line 41
    .line 42
    const/4 v0, 0x0

    .line 43
    goto :goto_1

    .line 44
    :cond_0
    new-instance v0, Lcom/frostwire/jlibtorrent/swig/alert;

    .line 45
    .line 46
    invoke-direct {v0, v2, v3, v12}, Lcom/frostwire/jlibtorrent/swig/alert;-><init>(JZ)V

    .line 47
    .line 48
    .line 49
    :goto_1
    iget-object v2, v1, Lcom/frostwire/jlibtorrent/SessionManager$5;->c:Lcom/frostwire/jlibtorrent/SessionManager;

    .line 50
    .line 51
    iget-object v2, v2, Lcom/frostwire/jlibtorrent/SessionManager;->c:Lcom/frostwire/jlibtorrent/swig/session;

    .line 52
    .line 53
    if-nez v2, :cond_1

    .line 54
    .line 55
    goto/16 :goto_15

    .line 56
    .line 57
    :cond_1
    if-eqz v0, :cond_20

    .line 58
    .line 59
    iget-object v0, v1, Lcom/frostwire/jlibtorrent/SessionManager$5;->c:Lcom/frostwire/jlibtorrent/SessionManager;

    .line 60
    .line 61
    iget-object v4, v0, Lcom/frostwire/jlibtorrent/SessionManager;->c:Lcom/frostwire/jlibtorrent/swig/session;

    .line 62
    .line 63
    iget-wide v2, v4, Lcom/frostwire/jlibtorrent/swig/session_handle;->a:J

    .line 64
    .line 65
    iget-wide v5, v7, Lcom/frostwire/jlibtorrent/swig/alert_ptr_vector;->a:J

    .line 66
    .line 67
    invoke-static/range {v2 .. v7}, Lcom/frostwire/jlibtorrent/swig/libtorrent_jni;->session_handle_pop_alerts(JLcom/frostwire/jlibtorrent/swig/session_handle;JLcom/frostwire/jlibtorrent/swig/alert_ptr_vector;)V

    .line 68
    .line 69
    .line 70
    iget-wide v2, v7, Lcom/frostwire/jlibtorrent/swig/alert_ptr_vector;->a:J

    .line 71
    .line 72
    invoke-static {v2, v3, v7}, Lcom/frostwire/jlibtorrent/swig/libtorrent_jni;->alert_ptr_vector_size(JLcom/frostwire/jlibtorrent/swig/alert_ptr_vector;)J

    .line 73
    .line 74
    .line 75
    move-result-wide v2

    .line 76
    move v4, v12

    .line 77
    :goto_2
    int-to-long v5, v4

    .line 78
    cmp-long v0, v5, v2

    .line 79
    .line 80
    if-gez v0, :cond_1f

    .line 81
    .line 82
    iget-wide v5, v7, Lcom/frostwire/jlibtorrent/swig/alert_ptr_vector;->a:J

    .line 83
    .line 84
    invoke-static {v5, v6, v7, v4}, Lcom/frostwire/jlibtorrent/swig/libtorrent_jni;->alert_ptr_vector_get(JLcom/frostwire/jlibtorrent/swig/alert_ptr_vector;I)J

    .line 85
    .line 86
    .line 87
    move-result-wide v5

    .line 88
    cmp-long v0, v5, v9

    .line 89
    .line 90
    if-nez v0, :cond_2

    .line 91
    .line 92
    const/4 v5, 0x0

    .line 93
    goto :goto_3

    .line 94
    :cond_2
    new-instance v0, Lcom/frostwire/jlibtorrent/swig/alert;

    .line 95
    .line 96
    invoke-direct {v0, v5, v6, v12}, Lcom/frostwire/jlibtorrent/swig/alert;-><init>(JZ)V

    .line 97
    .line 98
    .line 99
    move-object v5, v0

    .line 100
    :goto_3
    invoke-virtual {v5}, Lcom/frostwire/jlibtorrent/swig/alert;->c()I

    .line 101
    .line 102
    .line 103
    move-result v6

    .line 104
    sget-object v0, Lcom/frostwire/jlibtorrent/alerts/AlertType;->w:[Lcom/frostwire/jlibtorrent/alerts/AlertType;

    .line 105
    .line 106
    aget-object v0, v0, v6

    .line 107
    .line 108
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 109
    .line 110
    .line 111
    move-result v0

    .line 112
    const/16 v15, 0x9

    .line 113
    .line 114
    if-eq v0, v15, :cond_18

    .line 115
    .line 116
    const/16 v15, 0x23

    .line 117
    .line 118
    if-eq v0, v15, :cond_15

    .line 119
    .line 120
    const/16 v15, 0x30

    .line 121
    .line 122
    const-class v16, Lcom/frostwire/jlibtorrent/alerts/SocketType;

    .line 123
    .line 124
    if-eq v0, v15, :cond_11

    .line 125
    .line 126
    const/16 v15, 0x14

    .line 127
    .line 128
    if-eq v0, v15, :cond_10

    .line 129
    .line 130
    const/16 v15, 0x15

    .line 131
    .line 132
    if-eq v0, v15, :cond_f

    .line 133
    .line 134
    const/16 v15, 0x20

    .line 135
    .line 136
    move/from16 v17, v8

    .line 137
    .line 138
    const-string v8, "invalid"

    .line 139
    .line 140
    if-eq v0, v15, :cond_d

    .line 141
    .line 142
    const/16 v15, 0x21

    .line 143
    .line 144
    if-eq v0, v15, :cond_3

    .line 145
    .line 146
    move-wide/from16 v23, v2

    .line 147
    .line 148
    move-wide/from16 v20, v9

    .line 149
    .line 150
    const-wide/16 v18, 0x3e8

    .line 151
    .line 152
    goto/16 :goto_c

    .line 153
    .line 154
    :cond_3
    invoke-static {v5}, Lcom/frostwire/jlibtorrent/alerts/Alerts;->b(Lcom/frostwire/jlibtorrent/swig/alert;)Lcom/frostwire/jlibtorrent/alerts/Alert;

    .line 155
    .line 156
    .line 157
    move-result-object v15

    .line 158
    iget-object v0, v1, Lcom/frostwire/jlibtorrent/SessionManager$5;->c:Lcom/frostwire/jlibtorrent/SessionManager;

    .line 159
    .line 160
    move-object v11, v15

    .line 161
    check-cast v11, Lcom/frostwire/jlibtorrent/alerts/ListenSucceededAlert;

    .line 162
    .line 163
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 164
    .line 165
    .line 166
    const-wide/16 v18, 0x3e8

    .line 167
    .line 168
    const-string v13, "["

    .line 169
    .line 170
    :try_start_0
    iget-object v14, v11, Lcom/frostwire/jlibtorrent/alerts/AbstractAlert;->a:Lcom/frostwire/jlibtorrent/swig/alert;

    .line 171
    .line 172
    check-cast v14, Lcom/frostwire/jlibtorrent/swig/listen_succeeded_alert;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 173
    .line 174
    move-wide/from16 v20, v9

    .line 175
    .line 176
    :try_start_1
    iget-wide v9, v14, Lcom/frostwire/jlibtorrent/swig/listen_succeeded_alert;->A:J

    .line 177
    .line 178
    invoke-static {v9, v10, v14}, Lcom/frostwire/jlibtorrent/swig/libtorrent_jni;->listen_succeeded_alert_socket_type_get(JLcom/frostwire/jlibtorrent/swig/listen_succeeded_alert;)I

    .line 179
    .line 180
    .line 181
    move-result v9

    .line 182
    invoke-static {v9}, Lcom/frostwire/jlibtorrent/swig/socket_type_t;->a(I)Lcom/frostwire/jlibtorrent/swig/socket_type_t;

    .line 183
    .line 184
    .line 185
    move-result-object v9

    .line 186
    iget v9, v9, Lcom/frostwire/jlibtorrent/swig/socket_type_t;->a:I

    .line 187
    .line 188
    sget-object v10, Lcom/frostwire/jlibtorrent/alerts/SocketType;->f:Lcom/frostwire/jlibtorrent/alerts/SocketType;

    .line 189
    .line 190
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    .line 191
    .line 192
    .line 193
    move-result-object v10

    .line 194
    check-cast v10, [Lcom/frostwire/jlibtorrent/alerts/SocketType;

    .line 195
    .line 196
    array-length v14, v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 197
    :goto_4
    if-ge v12, v14, :cond_5

    .line 198
    .line 199
    move-wide/from16 v23, v2

    .line 200
    .line 201
    :try_start_2
    aget-object v2, v10, v12

    .line 202
    .line 203
    iget v3, v2, Lcom/frostwire/jlibtorrent/alerts/SocketType;->c:I

    .line 204
    .line 205
    if-ne v3, v9, :cond_4

    .line 206
    .line 207
    goto :goto_5

    .line 208
    :cond_4
    add-int/lit8 v12, v12, 0x1

    .line 209
    .line 210
    move-wide/from16 v2, v23

    .line 211
    .line 212
    goto :goto_4

    .line 213
    :cond_5
    move-wide/from16 v23, v2

    .line 214
    .line 215
    sget-object v2, Lcom/frostwire/jlibtorrent/alerts/SocketType;->g:Lcom/frostwire/jlibtorrent/alerts/SocketType;

    .line 216
    .line 217
    :goto_5
    sget-object v3, Lcom/frostwire/jlibtorrent/alerts/SocketType;->f:Lcom/frostwire/jlibtorrent/alerts/SocketType;

    .line 218
    .line 219
    if-ne v2, v3, :cond_6

    .line 220
    .line 221
    goto/16 :goto_a

    .line 222
    .line 223
    :cond_6
    iget-object v2, v11, Lcom/frostwire/jlibtorrent/alerts/AbstractAlert;->a:Lcom/frostwire/jlibtorrent/swig/alert;

    .line 224
    .line 225
    check-cast v2, Lcom/frostwire/jlibtorrent/swig/listen_succeeded_alert;

    .line 226
    .line 227
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 228
    .line 229
    .line 230
    new-instance v3, Lcom/frostwire/jlibtorrent/swig/address;

    .line 231
    .line 232
    iget-wide v9, v2, Lcom/frostwire/jlibtorrent/swig/listen_succeeded_alert;->A:J

    .line 233
    .line 234
    invoke-static {v9, v10, v2}, Lcom/frostwire/jlibtorrent/swig/libtorrent_jni;->listen_succeeded_alert_get_address(JLcom/frostwire/jlibtorrent/swig/listen_succeeded_alert;)J

    .line 235
    .line 236
    .line 237
    move-result-wide v9

    .line 238
    invoke-direct {v3, v9, v10}, Lcom/frostwire/jlibtorrent/swig/address;-><init>(J)V

    .line 239
    .line 240
    .line 241
    iget-wide v9, v3, Lcom/frostwire/jlibtorrent/swig/address;->a:J

    .line 242
    .line 243
    invoke-static {v9, v10, v3}, Lcom/frostwire/jlibtorrent/swig/libtorrent_jni;->address_is_v4(JLcom/frostwire/jlibtorrent/swig/address;)Z

    .line 244
    .line 245
    .line 246
    move-result v2

    .line 247
    if-eqz v2, :cond_7

    .line 248
    .line 249
    iget-object v2, v11, Lcom/frostwire/jlibtorrent/alerts/AbstractAlert;->a:Lcom/frostwire/jlibtorrent/swig/alert;

    .line 250
    .line 251
    check-cast v2, Lcom/frostwire/jlibtorrent/swig/listen_succeeded_alert;

    .line 252
    .line 253
    iget-wide v9, v2, Lcom/frostwire/jlibtorrent/swig/listen_succeeded_alert;->A:J

    .line 254
    .line 255
    invoke-static {v9, v10, v2}, Lcom/frostwire/jlibtorrent/swig/libtorrent_jni;->listen_succeeded_alert_port_get(JLcom/frostwire/jlibtorrent/swig/listen_succeeded_alert;)I

    .line 256
    .line 257
    .line 258
    goto :goto_7

    .line 259
    :goto_6
    move-object v13, v0

    .line 260
    goto/16 :goto_9

    .line 261
    .line 262
    :cond_7
    :goto_7
    iget-wide v9, v3, Lcom/frostwire/jlibtorrent/swig/address;->a:J

    .line 263
    .line 264
    invoke-static {v9, v10, v3}, Lcom/frostwire/jlibtorrent/swig/libtorrent_jni;->address_is_loopback(JLcom/frostwire/jlibtorrent/swig/address;)Z

    .line 265
    .line 266
    .line 267
    move-result v2

    .line 268
    if-nez v2, :cond_c

    .line 269
    .line 270
    iget-wide v9, v3, Lcom/frostwire/jlibtorrent/swig/address;->a:J

    .line 271
    .line 272
    invoke-static {v9, v10, v3}, Lcom/frostwire/jlibtorrent/swig/libtorrent_jni;->address_is_multicast(JLcom/frostwire/jlibtorrent/swig/address;)Z

    .line 273
    .line 274
    .line 275
    move-result v2

    .line 276
    if-nez v2, :cond_c

    .line 277
    .line 278
    iget-wide v9, v3, Lcom/frostwire/jlibtorrent/swig/address;->a:J

    .line 279
    .line 280
    invoke-static {v9, v10, v3}, Lcom/frostwire/jlibtorrent/swig/libtorrent_jni;->address_is_unspecified(JLcom/frostwire/jlibtorrent/swig/address;)Z

    .line 281
    .line 282
    .line 283
    move-result v2

    .line 284
    if-eqz v2, :cond_8

    .line 285
    .line 286
    goto/16 :goto_a

    .line 287
    .line 288
    :cond_8
    invoke-static {v3}, Lcom/frostwire/jlibtorrent/Address;->a(Lcom/frostwire/jlibtorrent/swig/address;)Ljava/lang/String;

    .line 289
    .line 290
    .line 291
    move-result-object v2

    .line 292
    iget-object v9, v11, Lcom/frostwire/jlibtorrent/alerts/AbstractAlert;->a:Lcom/frostwire/jlibtorrent/swig/alert;

    .line 293
    .line 294
    check-cast v9, Lcom/frostwire/jlibtorrent/swig/listen_succeeded_alert;

    .line 295
    .line 296
    iget-wide v10, v9, Lcom/frostwire/jlibtorrent/swig/listen_succeeded_alert;->A:J

    .line 297
    .line 298
    invoke-static {v10, v11, v9}, Lcom/frostwire/jlibtorrent/swig/libtorrent_jni;->listen_succeeded_alert_port_get(JLcom/frostwire/jlibtorrent/swig/listen_succeeded_alert;)I

    .line 299
    .line 300
    .line 301
    move-result v9

    .line 302
    invoke-virtual {v2, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 303
    .line 304
    .line 305
    move-result v8

    .line 306
    if-eqz v8, :cond_9

    .line 307
    .line 308
    goto :goto_a

    .line 309
    :cond_9
    const-string v8, "127."

    .line 310
    .line 311
    invoke-virtual {v2, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 312
    .line 313
    .line 314
    move-result v8

    .line 315
    if-nez v8, :cond_c

    .line 316
    .line 317
    const-string v8, "fe80::"

    .line 318
    .line 319
    invoke-virtual {v2, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 320
    .line 321
    .line 322
    move-result v8

    .line 323
    if-eqz v8, :cond_a

    .line 324
    .line 325
    goto :goto_a

    .line 326
    :cond_a
    new-instance v8, Ljava/lang/StringBuilder;

    .line 327
    .line 328
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 329
    .line 330
    .line 331
    iget-wide v10, v3, Lcom/frostwire/jlibtorrent/swig/address;->a:J

    .line 332
    .line 333
    invoke-static {v10, v11, v3}, Lcom/frostwire/jlibtorrent/swig/libtorrent_jni;->address_is_v6(JLcom/frostwire/jlibtorrent/swig/address;)Z

    .line 334
    .line 335
    .line 336
    move-result v3

    .line 337
    if-eqz v3, :cond_b

    .line 338
    .line 339
    new-instance v3, Ljava/lang/StringBuilder;

    .line 340
    .line 341
    invoke-direct {v3, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 342
    .line 343
    .line 344
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 345
    .line 346
    .line 347
    const-string v10, "]"

    .line 348
    .line 349
    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 350
    .line 351
    .line 352
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 353
    .line 354
    .line 355
    move-result-object v3

    .line 356
    goto :goto_8

    .line 357
    :catchall_0
    move-exception v0

    .line 358
    goto :goto_6

    .line 359
    :cond_b
    move-object v3, v2

    .line 360
    :goto_8
    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 361
    .line 362
    .line 363
    const-string v3, ":"

    .line 364
    .line 365
    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 366
    .line 367
    .line 368
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 369
    .line 370
    .line 371
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 372
    .line 373
    .line 374
    move-result-object v3

    .line 375
    iget-object v0, v0, Lcom/frostwire/jlibtorrent/SessionManager;->f:Ljava/util/HashMap;

    .line 376
    .line 377
    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 378
    .line 379
    .line 380
    goto :goto_a

    .line 381
    :catchall_1
    move-exception v0

    .line 382
    move-wide/from16 v23, v2

    .line 383
    .line 384
    goto :goto_6

    .line 385
    :catchall_2
    move-exception v0

    .line 386
    move-wide/from16 v23, v2

    .line 387
    .line 388
    move-wide/from16 v20, v9

    .line 389
    .line 390
    goto/16 :goto_6

    .line 391
    .line 392
    :goto_9
    sget-object v0, Lcom/frostwire/jlibtorrent/SessionManager;->h:Lcom/frostwire/jlibtorrent/Logger;

    .line 393
    .line 394
    iget-object v8, v0, Lcom/frostwire/jlibtorrent/Logger;->a:Ljava/util/logging/Logger;

    .line 395
    .line 396
    sget-object v9, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    .line 397
    .line 398
    iget-object v10, v0, Lcom/frostwire/jlibtorrent/Logger;->b:Ljava/lang/String;

    .line 399
    .line 400
    const-string v11, ""

    .line 401
    .line 402
    const-string v12, "Error adding listen endpoint to internal list"

    .line 403
    .line 404
    invoke-virtual/range {v8 .. v13}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 405
    .line 406
    .line 407
    :cond_c
    :goto_a
    move v14, v4

    .line 408
    move-object/from16 v16, v5

    .line 409
    .line 410
    move-wide/from16 v3, v20

    .line 411
    .line 412
    :goto_b
    const/16 v22, 0x0

    .line 413
    .line 414
    goto/16 :goto_12

    .line 415
    .line 416
    :cond_d
    move-wide/from16 v23, v2

    .line 417
    .line 418
    move-wide/from16 v20, v9

    .line 419
    .line 420
    const-wide/16 v18, 0x3e8

    .line 421
    .line 422
    invoke-static {v5}, Lcom/frostwire/jlibtorrent/alerts/Alerts;->b(Lcom/frostwire/jlibtorrent/swig/alert;)Lcom/frostwire/jlibtorrent/alerts/Alert;

    .line 423
    .line 424
    .line 425
    move-result-object v15

    .line 426
    iget-object v0, v1, Lcom/frostwire/jlibtorrent/SessionManager$5;->c:Lcom/frostwire/jlibtorrent/SessionManager;

    .line 427
    .line 428
    move-object v2, v15

    .line 429
    check-cast v2, Lcom/frostwire/jlibtorrent/alerts/ExternalIpAlert;

    .line 430
    .line 431
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 432
    .line 433
    .line 434
    :try_start_3
    iget-object v0, v2, Lcom/frostwire/jlibtorrent/alerts/AbstractAlert;->a:Lcom/frostwire/jlibtorrent/swig/alert;

    .line 435
    .line 436
    check-cast v0, Lcom/frostwire/jlibtorrent/swig/external_ip_alert;

    .line 437
    .line 438
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 439
    .line 440
    .line 441
    new-instance v3, Lcom/frostwire/jlibtorrent/swig/address;

    .line 442
    .line 443
    iget-wide v9, v0, Lcom/frostwire/jlibtorrent/swig/external_ip_alert;->A:J

    .line 444
    .line 445
    invoke-static {v9, v10, v0}, Lcom/frostwire/jlibtorrent/swig/libtorrent_jni;->external_ip_alert_get_external_address(JLcom/frostwire/jlibtorrent/swig/external_ip_alert;)J

    .line 446
    .line 447
    .line 448
    move-result-wide v9

    .line 449
    invoke-direct {v3, v9, v10}, Lcom/frostwire/jlibtorrent/swig/address;-><init>(J)V

    .line 450
    .line 451
    .line 452
    iget-wide v9, v3, Lcom/frostwire/jlibtorrent/swig/address;->a:J

    .line 453
    .line 454
    invoke-static {v9, v10, v3}, Lcom/frostwire/jlibtorrent/swig/libtorrent_jni;->address_is_v4(JLcom/frostwire/jlibtorrent/swig/address;)Z

    .line 455
    .line 456
    .line 457
    move-result v0

    .line 458
    if-nez v0, :cond_e

    .line 459
    .line 460
    goto :goto_a

    .line 461
    :cond_e
    iget-object v0, v2, Lcom/frostwire/jlibtorrent/alerts/AbstractAlert;->a:Lcom/frostwire/jlibtorrent/swig/alert;

    .line 462
    .line 463
    check-cast v0, Lcom/frostwire/jlibtorrent/swig/external_ip_alert;

    .line 464
    .line 465
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 466
    .line 467
    .line 468
    new-instance v2, Lcom/frostwire/jlibtorrent/swig/address;

    .line 469
    .line 470
    iget-wide v9, v0, Lcom/frostwire/jlibtorrent/swig/external_ip_alert;->A:J

    .line 471
    .line 472
    invoke-static {v9, v10, v0}, Lcom/frostwire/jlibtorrent/swig/libtorrent_jni;->external_ip_alert_get_external_address(JLcom/frostwire/jlibtorrent/swig/external_ip_alert;)J

    .line 473
    .line 474
    .line 475
    move-result-wide v9

    .line 476
    invoke-direct {v2, v9, v10}, Lcom/frostwire/jlibtorrent/swig/address;-><init>(J)V

    .line 477
    .line 478
    .line 479
    invoke-static {v2}, Lcom/frostwire/jlibtorrent/Address;->a(Lcom/frostwire/jlibtorrent/swig/address;)Ljava/lang/String;

    .line 480
    .line 481
    .line 482
    move-result-object v0

    .line 483
    invoke-virtual {v0, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 484
    .line 485
    .line 486
    goto :goto_a

    .line 487
    :catchall_3
    move-exception v0

    .line 488
    move-object v13, v0

    .line 489
    sget-object v0, Lcom/frostwire/jlibtorrent/SessionManager;->h:Lcom/frostwire/jlibtorrent/Logger;

    .line 490
    .line 491
    iget-object v8, v0, Lcom/frostwire/jlibtorrent/Logger;->a:Ljava/util/logging/Logger;

    .line 492
    .line 493
    sget-object v9, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    .line 494
    .line 495
    iget-object v10, v0, Lcom/frostwire/jlibtorrent/Logger;->b:Ljava/lang/String;

    .line 496
    .line 497
    const-string v11, ""

    .line 498
    .line 499
    const-string v12, "Error saving reported external ip"

    .line 500
    .line 501
    invoke-virtual/range {v8 .. v13}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 502
    .line 503
    .line 504
    goto :goto_a

    .line 505
    :cond_f
    move-wide/from16 v23, v2

    .line 506
    .line 507
    move/from16 v17, v8

    .line 508
    .line 509
    move-wide/from16 v20, v9

    .line 510
    .line 511
    const-wide/16 v18, 0x3e8

    .line 512
    .line 513
    iget-object v0, v1, Lcom/frostwire/jlibtorrent/SessionManager$5;->c:Lcom/frostwire/jlibtorrent/SessionManager;

    .line 514
    .line 515
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 516
    .line 517
    .line 518
    goto :goto_c

    .line 519
    :cond_10
    move-wide/from16 v23, v2

    .line 520
    .line 521
    move/from16 v17, v8

    .line 522
    .line 523
    move-wide/from16 v20, v9

    .line 524
    .line 525
    const-wide/16 v18, 0x3e8

    .line 526
    .line 527
    iget-object v0, v1, Lcom/frostwire/jlibtorrent/SessionManager$5;->c:Lcom/frostwire/jlibtorrent/SessionManager;

    .line 528
    .line 529
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 530
    .line 531
    .line 532
    :goto_c
    move v14, v4

    .line 533
    move-object/from16 v16, v5

    .line 534
    .line 535
    move-wide/from16 v3, v20

    .line 536
    .line 537
    const/4 v15, 0x0

    .line 538
    goto :goto_b

    .line 539
    :cond_11
    move-wide/from16 v23, v2

    .line 540
    .line 541
    move/from16 v17, v8

    .line 542
    .line 543
    move-wide/from16 v20, v9

    .line 544
    .line 545
    const-wide/16 v18, 0x3e8

    .line 546
    .line 547
    invoke-static {v5}, Lcom/frostwire/jlibtorrent/alerts/Alerts;->b(Lcom/frostwire/jlibtorrent/swig/alert;)Lcom/frostwire/jlibtorrent/alerts/Alert;

    .line 548
    .line 549
    .line 550
    move-result-object v15

    .line 551
    iget-object v0, v1, Lcom/frostwire/jlibtorrent/SessionManager$5;->c:Lcom/frostwire/jlibtorrent/SessionManager;

    .line 552
    .line 553
    move-object v2, v15

    .line 554
    check-cast v2, Lcom/frostwire/jlibtorrent/alerts/ListenFailedAlert;

    .line 555
    .line 556
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 557
    .line 558
    .line 559
    sget-object v0, Lcom/frostwire/jlibtorrent/SessionManager;->h:Lcom/frostwire/jlibtorrent/Logger;

    .line 560
    .line 561
    new-instance v3, Ljava/lang/StringBuilder;

    .line 562
    .line 563
    const-string v8, "onListenFailed(): iface= "

    .line 564
    .line 565
    invoke-direct {v3, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 566
    .line 567
    .line 568
    iget-object v8, v2, Lcom/frostwire/jlibtorrent/alerts/AbstractAlert;->a:Lcom/frostwire/jlibtorrent/swig/alert;

    .line 569
    .line 570
    check-cast v8, Lcom/frostwire/jlibtorrent/swig/listen_failed_alert;

    .line 571
    .line 572
    iget-wide v9, v8, Lcom/frostwire/jlibtorrent/swig/listen_failed_alert;->A:J

    .line 573
    .line 574
    invoke-static {v9, v10, v8}, Lcom/frostwire/jlibtorrent/swig/libtorrent_jni;->listen_failed_alert_listen_interface(JLcom/frostwire/jlibtorrent/swig/listen_failed_alert;)Ljava/lang/String;

    .line 575
    .line 576
    .line 577
    move-result-object v8

    .line 578
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 579
    .line 580
    .line 581
    const-string v8, ", address= "

    .line 582
    .line 583
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 584
    .line 585
    .line 586
    new-instance v8, Lcom/frostwire/jlibtorrent/Address;

    .line 587
    .line 588
    iget-object v2, v2, Lcom/frostwire/jlibtorrent/alerts/AbstractAlert;->a:Lcom/frostwire/jlibtorrent/swig/alert;

    .line 589
    .line 590
    move-object v9, v2

    .line 591
    check-cast v9, Lcom/frostwire/jlibtorrent/swig/listen_failed_alert;

    .line 592
    .line 593
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 594
    .line 595
    .line 596
    new-instance v10, Lcom/frostwire/jlibtorrent/swig/address;

    .line 597
    .line 598
    iget-wide v11, v9, Lcom/frostwire/jlibtorrent/swig/listen_failed_alert;->A:J

    .line 599
    .line 600
    invoke-static {v11, v12, v9}, Lcom/frostwire/jlibtorrent/swig/libtorrent_jni;->listen_failed_alert_get_address(JLcom/frostwire/jlibtorrent/swig/listen_failed_alert;)J

    .line 601
    .line 602
    .line 603
    move-result-wide v11

    .line 604
    invoke-direct {v10, v11, v12}, Lcom/frostwire/jlibtorrent/swig/address;-><init>(J)V

    .line 605
    .line 606
    .line 607
    invoke-direct {v8, v10}, Lcom/frostwire/jlibtorrent/Address;-><init>(Lcom/frostwire/jlibtorrent/swig/address;)V

    .line 608
    .line 609
    .line 610
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 611
    .line 612
    .line 613
    const-string v8, ", port= "

    .line 614
    .line 615
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 616
    .line 617
    .line 618
    iget-wide v10, v9, Lcom/frostwire/jlibtorrent/swig/listen_failed_alert;->A:J

    .line 619
    .line 620
    invoke-static {v10, v11, v9}, Lcom/frostwire/jlibtorrent/swig/libtorrent_jni;->listen_failed_alert_port_get(JLcom/frostwire/jlibtorrent/swig/listen_failed_alert;)I

    .line 621
    .line 622
    .line 623
    move-result v8

    .line 624
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 625
    .line 626
    .line 627
    const-string v8, ", socketType= "

    .line 628
    .line 629
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 630
    .line 631
    .line 632
    iget-wide v10, v9, Lcom/frostwire/jlibtorrent/swig/listen_failed_alert;->A:J

    .line 633
    .line 634
    invoke-static {v10, v11, v9}, Lcom/frostwire/jlibtorrent/swig/libtorrent_jni;->listen_failed_alert_socket_type_get(JLcom/frostwire/jlibtorrent/swig/listen_failed_alert;)I

    .line 635
    .line 636
    .line 637
    move-result v8

    .line 638
    invoke-static {v8}, Lcom/frostwire/jlibtorrent/swig/socket_type_t;->a(I)Lcom/frostwire/jlibtorrent/swig/socket_type_t;

    .line 639
    .line 640
    .line 641
    move-result-object v8

    .line 642
    iget v8, v8, Lcom/frostwire/jlibtorrent/swig/socket_type_t;->a:I

    .line 643
    .line 644
    sget-object v10, Lcom/frostwire/jlibtorrent/alerts/SocketType;->f:Lcom/frostwire/jlibtorrent/alerts/SocketType;

    .line 645
    .line 646
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    .line 647
    .line 648
    .line 649
    move-result-object v10

    .line 650
    check-cast v10, [Lcom/frostwire/jlibtorrent/alerts/SocketType;

    .line 651
    .line 652
    array-length v11, v10

    .line 653
    const/4 v12, 0x0

    .line 654
    :goto_d
    if-ge v12, v11, :cond_13

    .line 655
    .line 656
    aget-object v13, v10, v12

    .line 657
    .line 658
    iget v14, v13, Lcom/frostwire/jlibtorrent/alerts/SocketType;->c:I

    .line 659
    .line 660
    if-ne v14, v8, :cond_12

    .line 661
    .line 662
    goto :goto_e

    .line 663
    :cond_12
    add-int/lit8 v12, v12, 0x1

    .line 664
    .line 665
    goto :goto_d

    .line 666
    :cond_13
    sget-object v13, Lcom/frostwire/jlibtorrent/alerts/SocketType;->g:Lcom/frostwire/jlibtorrent/alerts/SocketType;

    .line 667
    .line 668
    :goto_e
    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 669
    .line 670
    .line 671
    const-string v8, ", errorCode= "

    .line 672
    .line 673
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 674
    .line 675
    .line 676
    new-instance v8, Lcom/frostwire/jlibtorrent/ErrorCode;

    .line 677
    .line 678
    iget-wide v10, v9, Lcom/frostwire/jlibtorrent/swig/listen_failed_alert;->A:J

    .line 679
    .line 680
    invoke-static {v10, v11, v9}, Lcom/frostwire/jlibtorrent/swig/libtorrent_jni;->listen_failed_alert_error_get(JLcom/frostwire/jlibtorrent/swig/listen_failed_alert;)J

    .line 681
    .line 682
    .line 683
    move-result-wide v9

    .line 684
    cmp-long v11, v9, v20

    .line 685
    .line 686
    if-nez v11, :cond_14

    .line 687
    .line 688
    const/4 v11, 0x0

    .line 689
    goto :goto_f

    .line 690
    :cond_14
    new-instance v11, Lcom/frostwire/jlibtorrent/swig/error_code;

    .line 691
    .line 692
    const/4 v12, 0x0

    .line 693
    invoke-direct {v11, v9, v10, v12}, Lcom/frostwire/jlibtorrent/swig/error_code;-><init>(JZ)V

    .line 694
    .line 695
    .line 696
    :goto_f
    invoke-direct {v8}, Ljava/lang/Object;-><init>()V

    .line 697
    .line 698
    .line 699
    iget-wide v9, v11, Lcom/frostwire/jlibtorrent/swig/error_code;->a:J

    .line 700
    .line 701
    invoke-static {v9, v10, v11}, Lcom/frostwire/jlibtorrent/swig/libtorrent_jni;->error_code_value(JLcom/frostwire/jlibtorrent/swig/error_code;)I

    .line 702
    .line 703
    .line 704
    iget-wide v9, v11, Lcom/frostwire/jlibtorrent/swig/error_code;->a:J

    .line 705
    .line 706
    invoke-static {v9, v10, v11}, Lcom/frostwire/jlibtorrent/swig/libtorrent_jni;->error_code_message(JLcom/frostwire/jlibtorrent/swig/error_code;)Ljava/lang/String;

    .line 707
    .line 708
    .line 709
    iget-wide v9, v11, Lcom/frostwire/jlibtorrent/swig/error_code;->a:J

    .line 710
    .line 711
    invoke-static {v9, v10, v11}, Lcom/frostwire/jlibtorrent/swig/libtorrent_jni;->error_code_op_bool(JLcom/frostwire/jlibtorrent/swig/error_code;)Z

    .line 712
    .line 713
    .line 714
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 715
    .line 716
    .line 717
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 718
    .line 719
    .line 720
    move-result-object v3

    .line 721
    iget-object v8, v0, Lcom/frostwire/jlibtorrent/Logger;->a:Ljava/util/logging/Logger;

    .line 722
    .line 723
    sget-object v9, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    .line 724
    .line 725
    iget-object v10, v0, Lcom/frostwire/jlibtorrent/Logger;->b:Ljava/lang/String;

    .line 726
    .line 727
    const-string v11, ""

    .line 728
    .line 729
    invoke-virtual {v8, v9, v10, v11, v3}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 730
    .line 731
    .line 732
    new-instance v3, Ljava/lang/StringBuilder;

    .line 733
    .line 734
    const-string v8, "onListenFailed(): error_message="

    .line 735
    .line 736
    invoke-direct {v3, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 737
    .line 738
    .line 739
    invoke-virtual {v2}, Lcom/frostwire/jlibtorrent/swig/alert;->b()Ljava/lang/String;

    .line 740
    .line 741
    .line 742
    move-result-object v2

    .line 743
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 744
    .line 745
    .line 746
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 747
    .line 748
    .line 749
    move-result-object v2

    .line 750
    iget-object v3, v0, Lcom/frostwire/jlibtorrent/Logger;->a:Ljava/util/logging/Logger;

    .line 751
    .line 752
    iget-object v0, v0, Lcom/frostwire/jlibtorrent/Logger;->b:Ljava/lang/String;

    .line 753
    .line 754
    invoke-virtual {v3, v9, v0, v11, v2}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 755
    .line 756
    .line 757
    goto/16 :goto_a

    .line 758
    .line 759
    :cond_15
    move-wide/from16 v23, v2

    .line 760
    .line 761
    move/from16 v17, v8

    .line 762
    .line 763
    move-wide/from16 v20, v9

    .line 764
    .line 765
    const-wide/16 v18, 0x3e8

    .line 766
    .line 767
    invoke-static {v5}, Lcom/frostwire/jlibtorrent/alerts/Alerts;->b(Lcom/frostwire/jlibtorrent/swig/alert;)Lcom/frostwire/jlibtorrent/alerts/Alert;

    .line 768
    .line 769
    .line 770
    move-result-object v15

    .line 771
    iget-object v0, v1, Lcom/frostwire/jlibtorrent/SessionManager$5;->c:Lcom/frostwire/jlibtorrent/SessionManager;

    .line 772
    .line 773
    iget-object v0, v0, Lcom/frostwire/jlibtorrent/SessionManager;->d:Lcom/frostwire/jlibtorrent/SessionStats;

    .line 774
    .line 775
    move-object v2, v15

    .line 776
    check-cast v2, Lcom/frostwire/jlibtorrent/alerts/SessionStatsAlert;

    .line 777
    .line 778
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 779
    .line 780
    .line 781
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 782
    .line 783
    .line 784
    move-result-wide v8

    .line 785
    iget-wide v10, v0, Lcom/frostwire/jlibtorrent/SessionStats;->b:J

    .line 786
    .line 787
    sub-long v10, v8, v10

    .line 788
    .line 789
    iput-wide v8, v0, Lcom/frostwire/jlibtorrent/SessionStats;->b:J

    .line 790
    .line 791
    sget v3, Lcom/frostwire/jlibtorrent/StatsMetric;->e:I

    .line 792
    .line 793
    invoke-virtual {v2, v3}, Lcom/frostwire/jlibtorrent/alerts/SessionStatsAlert;->a(I)J

    .line 794
    .line 795
    .line 796
    move-result-wide v8

    .line 797
    sget v3, Lcom/frostwire/jlibtorrent/StatsMetric;->d:I

    .line 798
    .line 799
    invoke-virtual {v2, v3}, Lcom/frostwire/jlibtorrent/alerts/SessionStatsAlert;->a(I)J

    .line 800
    .line 801
    .line 802
    move-result-wide v12

    .line 803
    sub-long/2addr v8, v12

    .line 804
    sget v3, Lcom/frostwire/jlibtorrent/StatsMetric;->f:I

    .line 805
    .line 806
    invoke-virtual {v2, v3}, Lcom/frostwire/jlibtorrent/alerts/SessionStatsAlert;->a(I)J

    .line 807
    .line 808
    .line 809
    move-result-wide v25

    .line 810
    iget-object v0, v0, Lcom/frostwire/jlibtorrent/SessionStats;->a:[Lcom/frostwire/jlibtorrent/SessionStats$Average;

    .line 811
    .line 812
    const/4 v3, 0x3

    .line 813
    aget-object v3, v0, v3

    .line 814
    .line 815
    move v14, v4

    .line 816
    move-object/from16 v16, v5

    .line 817
    .line 818
    iget-wide v4, v3, Lcom/frostwire/jlibtorrent/SessionStats$Average;->a:J

    .line 819
    .line 820
    sub-long/2addr v12, v4

    .line 821
    const/4 v4, 0x4

    .line 822
    aget-object v5, v0, v4

    .line 823
    .line 824
    move/from16 v27, v4

    .line 825
    .line 826
    iget-wide v4, v5, Lcom/frostwire/jlibtorrent/SessionStats$Average;->a:J

    .line 827
    .line 828
    sub-long/2addr v8, v4

    .line 829
    const/4 v4, 0x5

    .line 830
    aget-object v5, v0, v4

    .line 831
    .line 832
    move/from16 v28, v4

    .line 833
    .line 834
    iget-wide v4, v5, Lcom/frostwire/jlibtorrent/SessionStats$Average;->a:J

    .line 835
    .line 836
    sub-long v4, v25, v4

    .line 837
    .line 838
    invoke-virtual {v3, v12, v13}, Lcom/frostwire/jlibtorrent/SessionStats$Average;->a(J)V

    .line 839
    .line 840
    .line 841
    aget-object v3, v0, v27

    .line 842
    .line 843
    invoke-virtual {v3, v8, v9}, Lcom/frostwire/jlibtorrent/SessionStats$Average;->a(J)V

    .line 844
    .line 845
    .line 846
    aget-object v3, v0, v28

    .line 847
    .line 848
    invoke-virtual {v3, v4, v5}, Lcom/frostwire/jlibtorrent/SessionStats$Average;->a(J)V

    .line 849
    .line 850
    .line 851
    sget v3, Lcom/frostwire/jlibtorrent/StatsMetric;->b:I

    .line 852
    .line 853
    invoke-virtual {v2, v3}, Lcom/frostwire/jlibtorrent/alerts/SessionStatsAlert;->a(I)J

    .line 854
    .line 855
    .line 856
    move-result-wide v3

    .line 857
    sget v5, Lcom/frostwire/jlibtorrent/StatsMetric;->a:I

    .line 858
    .line 859
    invoke-virtual {v2, v5}, Lcom/frostwire/jlibtorrent/alerts/SessionStatsAlert;->a(I)J

    .line 860
    .line 861
    .line 862
    move-result-wide v8

    .line 863
    sub-long/2addr v3, v8

    .line 864
    sget v5, Lcom/frostwire/jlibtorrent/StatsMetric;->c:I

    .line 865
    .line 866
    invoke-virtual {v2, v5}, Lcom/frostwire/jlibtorrent/alerts/SessionStatsAlert;->a(I)J

    .line 867
    .line 868
    .line 869
    move-result-wide v12

    .line 870
    const/16 v22, 0x0

    .line 871
    .line 872
    aget-object v5, v0, v22

    .line 873
    .line 874
    move-wide/from16 v25, v3

    .line 875
    .line 876
    iget-wide v3, v5, Lcom/frostwire/jlibtorrent/SessionStats$Average;->a:J

    .line 877
    .line 878
    sub-long/2addr v8, v3

    .line 879
    aget-object v3, v0, v17

    .line 880
    .line 881
    iget-wide v3, v3, Lcom/frostwire/jlibtorrent/SessionStats$Average;->a:J

    .line 882
    .line 883
    sub-long v3, v25, v3

    .line 884
    .line 885
    const/16 v25, 0x2

    .line 886
    .line 887
    move-object/from16 v26, v0

    .line 888
    .line 889
    aget-object v0, v26, v25

    .line 890
    .line 891
    move-wide/from16 v27, v10

    .line 892
    .line 893
    iget-wide v10, v0, Lcom/frostwire/jlibtorrent/SessionStats$Average;->a:J

    .line 894
    .line 895
    sub-long/2addr v12, v10

    .line 896
    invoke-virtual {v5, v8, v9}, Lcom/frostwire/jlibtorrent/SessionStats$Average;->a(J)V

    .line 897
    .line 898
    .line 899
    aget-object v0, v26, v17

    .line 900
    .line 901
    invoke-virtual {v0, v3, v4}, Lcom/frostwire/jlibtorrent/SessionStats$Average;->a(J)V

    .line 902
    .line 903
    .line 904
    aget-object v0, v26, v25

    .line 905
    .line 906
    invoke-virtual {v0, v12, v13}, Lcom/frostwire/jlibtorrent/SessionStats$Average;->a(J)V

    .line 907
    .line 908
    .line 909
    move/from16 v12, v22

    .line 910
    .line 911
    :goto_10
    const/4 v0, 0x6

    .line 912
    if-ge v12, v0, :cond_17

    .line 913
    .line 914
    aget-object v0, v26, v12

    .line 915
    .line 916
    const-wide/16 v3, 0x1

    .line 917
    .line 918
    cmp-long v3, v27, v3

    .line 919
    .line 920
    if-ltz v3, :cond_16

    .line 921
    .line 922
    iget-wide v3, v0, Lcom/frostwire/jlibtorrent/SessionStats$Average;->b:J

    .line 923
    .line 924
    mul-long v3, v3, v18

    .line 925
    .line 926
    div-long v3, v3, v27

    .line 927
    .line 928
    move-wide/from16 v3, v20

    .line 929
    .line 930
    iput-wide v3, v0, Lcom/frostwire/jlibtorrent/SessionStats$Average;->b:J

    .line 931
    .line 932
    goto :goto_11

    .line 933
    :cond_16
    move-wide/from16 v3, v20

    .line 934
    .line 935
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 936
    .line 937
    .line 938
    :goto_11
    add-int/lit8 v12, v12, 0x1

    .line 939
    .line 940
    move-wide/from16 v20, v3

    .line 941
    .line 942
    goto :goto_10

    .line 943
    :cond_17
    move-wide/from16 v3, v20

    .line 944
    .line 945
    sget v0, Lcom/frostwire/jlibtorrent/StatsMetric;->g:I

    .line 946
    .line 947
    invoke-virtual {v2, v0}, Lcom/frostwire/jlibtorrent/alerts/SessionStatsAlert;->a(I)J

    .line 948
    .line 949
    .line 950
    goto :goto_12

    .line 951
    :cond_18
    move-wide/from16 v23, v2

    .line 952
    .line 953
    move v14, v4

    .line 954
    move-object/from16 v16, v5

    .line 955
    .line 956
    move/from16 v17, v8

    .line 957
    .line 958
    move-wide v3, v9

    .line 959
    move/from16 v22, v12

    .line 960
    .line 961
    const-wide/16 v18, 0x3e8

    .line 962
    .line 963
    invoke-static/range {v16 .. v16}, Lcom/frostwire/jlibtorrent/alerts/Alerts;->b(Lcom/frostwire/jlibtorrent/swig/alert;)Lcom/frostwire/jlibtorrent/alerts/Alert;

    .line 964
    .line 965
    .line 966
    move-result-object v15

    .line 967
    iget-object v0, v1, Lcom/frostwire/jlibtorrent/SessionManager$5;->c:Lcom/frostwire/jlibtorrent/SessionManager;

    .line 968
    .line 969
    move-object v2, v15

    .line 970
    check-cast v2, Lcom/frostwire/jlibtorrent/alerts/AddTorrentAlert;

    .line 971
    .line 972
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 973
    .line 974
    .line 975
    iget-object v0, v2, Lcom/frostwire/jlibtorrent/alerts/AbstractAlert;->a:Lcom/frostwire/jlibtorrent/swig/alert;

    .line 976
    .line 977
    check-cast v0, Lcom/frostwire/jlibtorrent/swig/torrent_alert;

    .line 978
    .line 979
    iget-wide v8, v0, Lcom/frostwire/jlibtorrent/swig/torrent_alert;->A:J

    .line 980
    .line 981
    invoke-static {v8, v9, v0}, Lcom/frostwire/jlibtorrent/swig/libtorrent_jni;->torrent_alert_torrent_name(JLcom/frostwire/jlibtorrent/swig/torrent_alert;)Ljava/lang/String;

    .line 982
    .line 983
    .line 984
    move-result-object v0

    .line 985
    if-eqz v0, :cond_19

    .line 986
    .line 987
    const-string v2, "fetch_magnet___"

    .line 988
    .line 989
    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 990
    .line 991
    .line 992
    move-result v0

    .line 993
    if-eqz v0, :cond_19

    .line 994
    .line 995
    goto :goto_13

    .line 996
    :cond_19
    :goto_12
    iget-object v0, v1, Lcom/frostwire/jlibtorrent/SessionManager$5;->c:Lcom/frostwire/jlibtorrent/SessionManager;

    .line 997
    .line 998
    iget-object v0, v0, Lcom/frostwire/jlibtorrent/SessionManager;->a:[Lcom/frostwire/jlibtorrent/AlertListener;

    .line 999
    .line 1000
    aget-object v0, v0, v6

    .line 1001
    .line 1002
    if-eqz v0, :cond_1b

    .line 1003
    .line 1004
    if-nez v15, :cond_1a

    .line 1005
    .line 1006
    invoke-static/range {v16 .. v16}, Lcom/frostwire/jlibtorrent/alerts/Alerts;->b(Lcom/frostwire/jlibtorrent/swig/alert;)Lcom/frostwire/jlibtorrent/alerts/Alert;

    .line 1007
    .line 1008
    .line 1009
    move-result-object v15

    .line 1010
    :cond_1a
    iget-object v0, v1, Lcom/frostwire/jlibtorrent/SessionManager$5;->c:Lcom/frostwire/jlibtorrent/SessionManager;

    .line 1011
    .line 1012
    invoke-static {v0, v15, v6}, Lcom/frostwire/jlibtorrent/SessionManager;->a(Lcom/frostwire/jlibtorrent/SessionManager;Lcom/frostwire/jlibtorrent/alerts/Alert;I)V

    .line 1013
    .line 1014
    .line 1015
    :cond_1b
    sget-object v0, Lcom/frostwire/jlibtorrent/alerts/AlertType;->p:Lcom/frostwire/jlibtorrent/alerts/AlertType;

    .line 1016
    .line 1017
    iget v0, v0, Lcom/frostwire/jlibtorrent/alerts/AlertType;->c:I

    .line 1018
    .line 1019
    if-eq v6, v0, :cond_1e

    .line 1020
    .line 1021
    sget-object v0, Lcom/frostwire/jlibtorrent/alerts/AlertType;->o:Lcom/frostwire/jlibtorrent/alerts/AlertType;

    .line 1022
    .line 1023
    iget v0, v0, Lcom/frostwire/jlibtorrent/alerts/AlertType;->c:I

    .line 1024
    .line 1025
    if-eq v6, v0, :cond_1e

    .line 1026
    .line 1027
    sget-object v0, Lcom/frostwire/jlibtorrent/alerts/AlertType;->v:Lcom/frostwire/jlibtorrent/alerts/AlertType;

    .line 1028
    .line 1029
    iget v0, v0, Lcom/frostwire/jlibtorrent/alerts/AlertType;->c:I

    .line 1030
    .line 1031
    if-ne v6, v0, :cond_1c

    .line 1032
    .line 1033
    goto :goto_13

    .line 1034
    :cond_1c
    iget-object v0, v1, Lcom/frostwire/jlibtorrent/SessionManager$5;->c:Lcom/frostwire/jlibtorrent/SessionManager;

    .line 1035
    .line 1036
    iget-object v0, v0, Lcom/frostwire/jlibtorrent/SessionManager;->a:[Lcom/frostwire/jlibtorrent/AlertListener;

    .line 1037
    .line 1038
    sget v2, Lcom/frostwire/jlibtorrent/alerts/Alerts;->a:I

    .line 1039
    .line 1040
    aget-object v0, v0, v2

    .line 1041
    .line 1042
    if-eqz v0, :cond_1e

    .line 1043
    .line 1044
    if-nez v15, :cond_1d

    .line 1045
    .line 1046
    invoke-static/range {v16 .. v16}, Lcom/frostwire/jlibtorrent/alerts/Alerts;->b(Lcom/frostwire/jlibtorrent/swig/alert;)Lcom/frostwire/jlibtorrent/alerts/Alert;

    .line 1047
    .line 1048
    .line 1049
    move-result-object v15

    .line 1050
    :cond_1d
    iget-object v0, v1, Lcom/frostwire/jlibtorrent/SessionManager$5;->c:Lcom/frostwire/jlibtorrent/SessionManager;

    .line 1051
    .line 1052
    invoke-static {v0, v15, v2}, Lcom/frostwire/jlibtorrent/SessionManager;->a(Lcom/frostwire/jlibtorrent/SessionManager;Lcom/frostwire/jlibtorrent/alerts/Alert;I)V

    .line 1053
    .line 1054
    .line 1055
    :cond_1e
    :goto_13
    add-int/lit8 v0, v14, 0x1

    .line 1056
    .line 1057
    move-wide v9, v3

    .line 1058
    move/from16 v8, v17

    .line 1059
    .line 1060
    move/from16 v12, v22

    .line 1061
    .line 1062
    move-wide/from16 v2, v23

    .line 1063
    .line 1064
    move v4, v0

    .line 1065
    goto/16 :goto_2

    .line 1066
    .line 1067
    :cond_1f
    move/from16 v17, v8

    .line 1068
    .line 1069
    const-wide/16 v18, 0x3e8

    .line 1070
    .line 1071
    iget-wide v2, v7, Lcom/frostwire/jlibtorrent/swig/alert_ptr_vector;->a:J

    .line 1072
    .line 1073
    invoke-static {v2, v3, v7}, Lcom/frostwire/jlibtorrent/swig/libtorrent_jni;->alert_ptr_vector_clear(JLcom/frostwire/jlibtorrent/swig/alert_ptr_vector;)V

    .line 1074
    .line 1075
    .line 1076
    goto :goto_14

    .line 1077
    :cond_20
    move/from16 v17, v8

    .line 1078
    .line 1079
    const-wide/16 v18, 0x3e8

    .line 1080
    .line 1081
    :goto_14
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 1082
    .line 1083
    .line 1084
    move-result-wide v2

    .line 1085
    iget-object v0, v1, Lcom/frostwire/jlibtorrent/SessionManager$5;->c:Lcom/frostwire/jlibtorrent/SessionManager;

    .line 1086
    .line 1087
    iget-wide v4, v0, Lcom/frostwire/jlibtorrent/SessionManager;->e:J

    .line 1088
    .line 1089
    sub-long v4, v2, v4

    .line 1090
    .line 1091
    cmp-long v4, v4, v18

    .line 1092
    .line 1093
    if-ltz v4, :cond_22

    .line 1094
    .line 1095
    iput-wide v2, v0, Lcom/frostwire/jlibtorrent/SessionManager;->e:J

    .line 1096
    .line 1097
    iget-object v2, v0, Lcom/frostwire/jlibtorrent/SessionManager;->c:Lcom/frostwire/jlibtorrent/swig/session;

    .line 1098
    .line 1099
    if-eqz v2, :cond_21

    .line 1100
    .line 1101
    iget-object v0, v0, Lcom/frostwire/jlibtorrent/SessionManager;->c:Lcom/frostwire/jlibtorrent/swig/session;

    .line 1102
    .line 1103
    iget-wide v2, v0, Lcom/frostwire/jlibtorrent/swig/session_handle;->a:J

    .line 1104
    .line 1105
    invoke-static {v2, v3, v0}, Lcom/frostwire/jlibtorrent/swig/libtorrent_jni;->session_handle_post_session_stats(JLcom/frostwire/jlibtorrent/swig/session_handle;)V

    .line 1106
    .line 1107
    .line 1108
    :cond_21
    iget-object v0, v1, Lcom/frostwire/jlibtorrent/SessionManager$5;->c:Lcom/frostwire/jlibtorrent/SessionManager;

    .line 1109
    .line 1110
    iget-object v2, v0, Lcom/frostwire/jlibtorrent/SessionManager;->c:Lcom/frostwire/jlibtorrent/swig/session;

    .line 1111
    .line 1112
    if-eqz v2, :cond_22

    .line 1113
    .line 1114
    iget-object v0, v0, Lcom/frostwire/jlibtorrent/SessionManager;->c:Lcom/frostwire/jlibtorrent/swig/session;

    .line 1115
    .line 1116
    iget-wide v2, v0, Lcom/frostwire/jlibtorrent/swig/session_handle;->a:J

    .line 1117
    .line 1118
    invoke-static {v2, v3, v0}, Lcom/frostwire/jlibtorrent/swig/libtorrent_jni;->session_handle_post_torrent_updates__SWIG_1(JLcom/frostwire/jlibtorrent/swig/session_handle;)V

    .line 1119
    .line 1120
    .line 1121
    :cond_22
    move/from16 v8, v17

    .line 1122
    .line 1123
    goto/16 :goto_0

    .line 1124
    .line 1125
    :cond_23
    :goto_15
    return-void
.end method
