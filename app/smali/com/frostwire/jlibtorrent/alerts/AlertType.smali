.class public final enum Lcom/frostwire/jlibtorrent/alerts/AlertType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/frostwire/jlibtorrent/alerts/AlertType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum f:Lcom/frostwire/jlibtorrent/alerts/AlertType;

.field public static final enum g:Lcom/frostwire/jlibtorrent/alerts/AlertType;

.field public static final enum h:Lcom/frostwire/jlibtorrent/alerts/AlertType;

.field public static final enum i:Lcom/frostwire/jlibtorrent/alerts/AlertType;

.field public static final enum j:Lcom/frostwire/jlibtorrent/alerts/AlertType;

.field public static final enum k:Lcom/frostwire/jlibtorrent/alerts/AlertType;

.field public static final enum l:Lcom/frostwire/jlibtorrent/alerts/AlertType;

.field public static final enum m:Lcom/frostwire/jlibtorrent/alerts/AlertType;

.field public static final enum n:Lcom/frostwire/jlibtorrent/alerts/AlertType;

.field public static final enum o:Lcom/frostwire/jlibtorrent/alerts/AlertType;

.field public static final enum p:Lcom/frostwire/jlibtorrent/alerts/AlertType;

.field public static final enum q:Lcom/frostwire/jlibtorrent/alerts/AlertType;

.field public static final enum r:Lcom/frostwire/jlibtorrent/alerts/AlertType;

.field public static final enum s:Lcom/frostwire/jlibtorrent/alerts/AlertType;

.field public static final enum t:Lcom/frostwire/jlibtorrent/alerts/AlertType;

.field public static final enum u:Lcom/frostwire/jlibtorrent/alerts/AlertType;

.field public static final enum v:Lcom/frostwire/jlibtorrent/alerts/AlertType;

.field public static final w:[Lcom/frostwire/jlibtorrent/alerts/AlertType;

.field public static final synthetic x:[Lcom/frostwire/jlibtorrent/alerts/AlertType;


# instance fields
.field public final c:I


# direct methods
.method static constructor <clinit>()V
    .locals 158

    .line 1
    new-instance v0, Lcom/frostwire/jlibtorrent/alerts/AlertType;

    .line 2
    .line 3
    sget v1, Lcom/frostwire/jlibtorrent/swig/torrent_finished_alert;->C:I

    .line 4
    .line 5
    const-string v2, "TORRENT_FINISHED"

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    invoke-direct {v0, v2, v3, v1}, Lcom/frostwire/jlibtorrent/alerts/AlertType;-><init>(Ljava/lang/String;II)V

    .line 9
    .line 10
    .line 11
    sput-object v0, Lcom/frostwire/jlibtorrent/alerts/AlertType;->f:Lcom/frostwire/jlibtorrent/alerts/AlertType;

    .line 12
    .line 13
    new-instance v1, Lcom/frostwire/jlibtorrent/alerts/AlertType;

    .line 14
    .line 15
    sget v2, Lcom/frostwire/jlibtorrent/swig/torrent_removed_alert;->C:I

    .line 16
    .line 17
    const-string v4, "TORRENT_REMOVED"

    .line 18
    .line 19
    const/4 v5, 0x1

    .line 20
    invoke-direct {v1, v4, v5, v2}, Lcom/frostwire/jlibtorrent/alerts/AlertType;-><init>(Ljava/lang/String;II)V

    .line 21
    .line 22
    .line 23
    new-instance v2, Lcom/frostwire/jlibtorrent/alerts/AlertType;

    .line 24
    .line 25
    sget v4, Lcom/frostwire/jlibtorrent/swig/torrent_deleted_alert;->C:I

    .line 26
    .line 27
    const-string v6, "TORRENT_DELETED"

    .line 28
    .line 29
    const/4 v7, 0x2

    .line 30
    invoke-direct {v2, v6, v7, v4}, Lcom/frostwire/jlibtorrent/alerts/AlertType;-><init>(Ljava/lang/String;II)V

    .line 31
    .line 32
    .line 33
    new-instance v4, Lcom/frostwire/jlibtorrent/alerts/AlertType;

    .line 34
    .line 35
    sget v6, Lcom/frostwire/jlibtorrent/swig/torrent_paused_alert;->C:I

    .line 36
    .line 37
    const-string v8, "TORRENT_PAUSED"

    .line 38
    .line 39
    const/4 v9, 0x3

    .line 40
    invoke-direct {v4, v8, v9, v6}, Lcom/frostwire/jlibtorrent/alerts/AlertType;-><init>(Ljava/lang/String;II)V

    .line 41
    .line 42
    .line 43
    new-instance v6, Lcom/frostwire/jlibtorrent/alerts/AlertType;

    .line 44
    .line 45
    sget v8, Lcom/frostwire/jlibtorrent/swig/torrent_resumed_alert;->C:I

    .line 46
    .line 47
    const-string v10, "TORRENT_RESUMED"

    .line 48
    .line 49
    const/4 v11, 0x4

    .line 50
    invoke-direct {v6, v10, v11, v8}, Lcom/frostwire/jlibtorrent/alerts/AlertType;-><init>(Ljava/lang/String;II)V

    .line 51
    .line 52
    .line 53
    new-instance v8, Lcom/frostwire/jlibtorrent/alerts/AlertType;

    .line 54
    .line 55
    sget v10, Lcom/frostwire/jlibtorrent/swig/torrent_checked_alert;->C:I

    .line 56
    .line 57
    const-string v12, "TORRENT_CHECKED"

    .line 58
    .line 59
    const/4 v13, 0x5

    .line 60
    invoke-direct {v8, v12, v13, v10}, Lcom/frostwire/jlibtorrent/alerts/AlertType;-><init>(Ljava/lang/String;II)V

    .line 61
    .line 62
    .line 63
    new-instance v10, Lcom/frostwire/jlibtorrent/alerts/AlertType;

    .line 64
    .line 65
    sget v12, Lcom/frostwire/jlibtorrent/swig/torrent_error_alert;->C:I

    .line 66
    .line 67
    const-string v14, "TORRENT_ERROR"

    .line 68
    .line 69
    const/4 v15, 0x6

    .line 70
    invoke-direct {v10, v14, v15, v12}, Lcom/frostwire/jlibtorrent/alerts/AlertType;-><init>(Ljava/lang/String;II)V

    .line 71
    .line 72
    .line 73
    new-instance v12, Lcom/frostwire/jlibtorrent/alerts/AlertType;

    .line 74
    .line 75
    sget v14, Lcom/frostwire/jlibtorrent/swig/torrent_need_cert_alert;->C:I

    .line 76
    .line 77
    move/from16 v16, v3

    .line 78
    .line 79
    const-string v3, "TORRENT_NEED_CERT"

    .line 80
    .line 81
    move/from16 v17, v5

    .line 82
    .line 83
    const/4 v5, 0x7

    .line 84
    invoke-direct {v12, v3, v5, v14}, Lcom/frostwire/jlibtorrent/alerts/AlertType;-><init>(Ljava/lang/String;II)V

    .line 85
    .line 86
    .line 87
    new-instance v3, Lcom/frostwire/jlibtorrent/alerts/AlertType;

    .line 88
    .line 89
    sget v14, Lcom/frostwire/jlibtorrent/swig/incoming_connection_alert;->B:I

    .line 90
    .line 91
    move/from16 v18, v5

    .line 92
    .line 93
    const-string v5, "INCOMING_CONNECTION"

    .line 94
    .line 95
    move/from16 v19, v7

    .line 96
    .line 97
    const/16 v7, 0x8

    .line 98
    .line 99
    invoke-direct {v3, v5, v7, v14}, Lcom/frostwire/jlibtorrent/alerts/AlertType;-><init>(Ljava/lang/String;II)V

    .line 100
    .line 101
    .line 102
    new-instance v5, Lcom/frostwire/jlibtorrent/alerts/AlertType;

    .line 103
    .line 104
    sget v14, Lcom/frostwire/jlibtorrent/swig/add_torrent_alert;->C:I

    .line 105
    .line 106
    move/from16 v20, v7

    .line 107
    .line 108
    const-string v7, "ADD_TORRENT"

    .line 109
    .line 110
    move/from16 v21, v9

    .line 111
    .line 112
    const/16 v9, 0x9

    .line 113
    .line 114
    invoke-direct {v5, v7, v9, v14}, Lcom/frostwire/jlibtorrent/alerts/AlertType;-><init>(Ljava/lang/String;II)V

    .line 115
    .line 116
    .line 117
    sput-object v5, Lcom/frostwire/jlibtorrent/alerts/AlertType;->g:Lcom/frostwire/jlibtorrent/alerts/AlertType;

    .line 118
    .line 119
    new-instance v7, Lcom/frostwire/jlibtorrent/alerts/AlertType;

    .line 120
    .line 121
    sget v14, Lcom/frostwire/jlibtorrent/swig/save_resume_data_alert;->C:I

    .line 122
    .line 123
    move/from16 v22, v9

    .line 124
    .line 125
    const-string v9, "SAVE_RESUME_DATA"

    .line 126
    .line 127
    move/from16 v23, v11

    .line 128
    .line 129
    const/16 v11, 0xa

    .line 130
    .line 131
    invoke-direct {v7, v9, v11, v14}, Lcom/frostwire/jlibtorrent/alerts/AlertType;-><init>(Ljava/lang/String;II)V

    .line 132
    .line 133
    .line 134
    new-instance v9, Lcom/frostwire/jlibtorrent/alerts/AlertType;

    .line 135
    .line 136
    sget v14, Lcom/frostwire/jlibtorrent/swig/fastresume_rejected_alert;->C:I

    .line 137
    .line 138
    move/from16 v24, v11

    .line 139
    .line 140
    const-string v11, "FASTRESUME_REJECTED"

    .line 141
    .line 142
    move/from16 v25, v13

    .line 143
    .line 144
    const/16 v13, 0xb

    .line 145
    .line 146
    invoke-direct {v9, v11, v13, v14}, Lcom/frostwire/jlibtorrent/alerts/AlertType;-><init>(Ljava/lang/String;II)V

    .line 147
    .line 148
    .line 149
    new-instance v11, Lcom/frostwire/jlibtorrent/alerts/AlertType;

    .line 150
    .line 151
    sget v14, Lcom/frostwire/jlibtorrent/swig/block_finished_alert;->D:I

    .line 152
    .line 153
    move/from16 v26, v13

    .line 154
    .line 155
    const-string v13, "BLOCK_FINISHED"

    .line 156
    .line 157
    move/from16 v27, v15

    .line 158
    .line 159
    const/16 v15, 0xc

    .line 160
    .line 161
    invoke-direct {v11, v13, v15, v14}, Lcom/frostwire/jlibtorrent/alerts/AlertType;-><init>(Ljava/lang/String;II)V

    .line 162
    .line 163
    .line 164
    sput-object v11, Lcom/frostwire/jlibtorrent/alerts/AlertType;->h:Lcom/frostwire/jlibtorrent/alerts/AlertType;

    .line 165
    .line 166
    new-instance v13, Lcom/frostwire/jlibtorrent/alerts/AlertType;

    .line 167
    .line 168
    sget v14, Lcom/frostwire/jlibtorrent/swig/metadata_received_alert;->C:I

    .line 169
    .line 170
    move/from16 v28, v15

    .line 171
    .line 172
    const-string v15, "METADATA_RECEIVED"

    .line 173
    .line 174
    move-object/from16 v29, v0

    .line 175
    .line 176
    const/16 v0, 0xd

    .line 177
    .line 178
    invoke-direct {v13, v15, v0, v14}, Lcom/frostwire/jlibtorrent/alerts/AlertType;-><init>(Ljava/lang/String;II)V

    .line 179
    .line 180
    .line 181
    sput-object v13, Lcom/frostwire/jlibtorrent/alerts/AlertType;->i:Lcom/frostwire/jlibtorrent/alerts/AlertType;

    .line 182
    .line 183
    new-instance v14, Lcom/frostwire/jlibtorrent/alerts/AlertType;

    .line 184
    .line 185
    sget v15, Lcom/frostwire/jlibtorrent/swig/metadata_failed_alert;->C:I

    .line 186
    .line 187
    move/from16 v30, v0

    .line 188
    .line 189
    const-string v0, "METADATA_FAILED"

    .line 190
    .line 191
    move-object/from16 v31, v1

    .line 192
    .line 193
    const/16 v1, 0xe

    .line 194
    .line 195
    invoke-direct {v14, v0, v1, v15}, Lcom/frostwire/jlibtorrent/alerts/AlertType;-><init>(Ljava/lang/String;II)V

    .line 196
    .line 197
    .line 198
    sput-object v14, Lcom/frostwire/jlibtorrent/alerts/AlertType;->j:Lcom/frostwire/jlibtorrent/alerts/AlertType;

    .line 199
    .line 200
    new-instance v0, Lcom/frostwire/jlibtorrent/alerts/AlertType;

    .line 201
    .line 202
    sget v15, Lcom/frostwire/jlibtorrent/swig/file_completed_alert;->C:I

    .line 203
    .line 204
    move/from16 v32, v1

    .line 205
    .line 206
    const-string v1, "FILE_COMPLETED"

    .line 207
    .line 208
    move-object/from16 v33, v2

    .line 209
    .line 210
    const/16 v2, 0xf

    .line 211
    .line 212
    invoke-direct {v0, v1, v2, v15}, Lcom/frostwire/jlibtorrent/alerts/AlertType;-><init>(Ljava/lang/String;II)V

    .line 213
    .line 214
    .line 215
    new-instance v1, Lcom/frostwire/jlibtorrent/alerts/AlertType;

    .line 216
    .line 217
    sget v15, Lcom/frostwire/jlibtorrent/swig/file_renamed_alert;->C:I

    .line 218
    .line 219
    move/from16 v34, v2

    .line 220
    .line 221
    const-string v2, "FILE_RENAMED"

    .line 222
    .line 223
    move-object/from16 v35, v0

    .line 224
    .line 225
    const/16 v0, 0x10

    .line 226
    .line 227
    invoke-direct {v1, v2, v0, v15}, Lcom/frostwire/jlibtorrent/alerts/AlertType;-><init>(Ljava/lang/String;II)V

    .line 228
    .line 229
    .line 230
    new-instance v2, Lcom/frostwire/jlibtorrent/alerts/AlertType;

    .line 231
    .line 232
    sget v15, Lcom/frostwire/jlibtorrent/swig/file_rename_failed_alert;->C:I

    .line 233
    .line 234
    move/from16 v36, v0

    .line 235
    .line 236
    const-string v0, "FILE_RENAME_FAILED"

    .line 237
    .line 238
    move-object/from16 v37, v1

    .line 239
    .line 240
    const/16 v1, 0x11

    .line 241
    .line 242
    invoke-direct {v2, v0, v1, v15}, Lcom/frostwire/jlibtorrent/alerts/AlertType;-><init>(Ljava/lang/String;II)V

    .line 243
    .line 244
    .line 245
    new-instance v0, Lcom/frostwire/jlibtorrent/alerts/AlertType;

    .line 246
    .line 247
    sget v15, Lcom/frostwire/jlibtorrent/swig/file_error_alert;->C:I

    .line 248
    .line 249
    move/from16 v38, v1

    .line 250
    .line 251
    const-string v1, "FILE_ERROR"

    .line 252
    .line 253
    move-object/from16 v39, v2

    .line 254
    .line 255
    const/16 v2, 0x12

    .line 256
    .line 257
    invoke-direct {v0, v1, v2, v15}, Lcom/frostwire/jlibtorrent/alerts/AlertType;-><init>(Ljava/lang/String;II)V

    .line 258
    .line 259
    .line 260
    new-instance v1, Lcom/frostwire/jlibtorrent/alerts/AlertType;

    .line 261
    .line 262
    sget v15, Lcom/frostwire/jlibtorrent/swig/hash_failed_alert;->C:I

    .line 263
    .line 264
    move/from16 v40, v2

    .line 265
    .line 266
    const-string v2, "HASH_FAILED"

    .line 267
    .line 268
    move-object/from16 v41, v0

    .line 269
    .line 270
    const/16 v0, 0x13

    .line 271
    .line 272
    invoke-direct {v1, v2, v0, v15}, Lcom/frostwire/jlibtorrent/alerts/AlertType;-><init>(Ljava/lang/String;II)V

    .line 273
    .line 274
    .line 275
    new-instance v2, Lcom/frostwire/jlibtorrent/alerts/AlertType;

    .line 276
    .line 277
    sget v15, Lcom/frostwire/jlibtorrent/swig/portmap_alert;->B:I

    .line 278
    .line 279
    move/from16 v42, v0

    .line 280
    .line 281
    const-string v0, "PORTMAP"

    .line 282
    .line 283
    move-object/from16 v43, v1

    .line 284
    .line 285
    const/16 v1, 0x14

    .line 286
    .line 287
    invoke-direct {v2, v0, v1, v15}, Lcom/frostwire/jlibtorrent/alerts/AlertType;-><init>(Ljava/lang/String;II)V

    .line 288
    .line 289
    .line 290
    sput-object v2, Lcom/frostwire/jlibtorrent/alerts/AlertType;->k:Lcom/frostwire/jlibtorrent/alerts/AlertType;

    .line 291
    .line 292
    new-instance v0, Lcom/frostwire/jlibtorrent/alerts/AlertType;

    .line 293
    .line 294
    sget v15, Lcom/frostwire/jlibtorrent/swig/portmap_error_alert;->B:I

    .line 295
    .line 296
    move/from16 v44, v1

    .line 297
    .line 298
    const-string v1, "PORTMAP_ERROR"

    .line 299
    .line 300
    move-object/from16 v45, v2

    .line 301
    .line 302
    const/16 v2, 0x15

    .line 303
    .line 304
    invoke-direct {v0, v1, v2, v15}, Lcom/frostwire/jlibtorrent/alerts/AlertType;-><init>(Ljava/lang/String;II)V

    .line 305
    .line 306
    .line 307
    sput-object v0, Lcom/frostwire/jlibtorrent/alerts/AlertType;->l:Lcom/frostwire/jlibtorrent/alerts/AlertType;

    .line 308
    .line 309
    new-instance v1, Lcom/frostwire/jlibtorrent/alerts/AlertType;

    .line 310
    .line 311
    sget v15, Lcom/frostwire/jlibtorrent/swig/portmap_log_alert;->B:I

    .line 312
    .line 313
    move/from16 v46, v2

    .line 314
    .line 315
    const-string v2, "PORTMAP_LOG"

    .line 316
    .line 317
    move-object/from16 v47, v0

    .line 318
    .line 319
    const/16 v0, 0x16

    .line 320
    .line 321
    invoke-direct {v1, v2, v0, v15}, Lcom/frostwire/jlibtorrent/alerts/AlertType;-><init>(Ljava/lang/String;II)V

    .line 322
    .line 323
    .line 324
    new-instance v2, Lcom/frostwire/jlibtorrent/alerts/AlertType;

    .line 325
    .line 326
    sget v15, Lcom/frostwire/jlibtorrent/swig/tracker_announce_alert;->D:I

    .line 327
    .line 328
    move/from16 v48, v0

    .line 329
    .line 330
    const-string v0, "TRACKER_ANNOUNCE"

    .line 331
    .line 332
    move-object/from16 v49, v1

    .line 333
    .line 334
    const/16 v1, 0x17

    .line 335
    .line 336
    invoke-direct {v2, v0, v1, v15}, Lcom/frostwire/jlibtorrent/alerts/AlertType;-><init>(Ljava/lang/String;II)V

    .line 337
    .line 338
    .line 339
    new-instance v0, Lcom/frostwire/jlibtorrent/alerts/AlertType;

    .line 340
    .line 341
    sget v15, Lcom/frostwire/jlibtorrent/swig/tracker_reply_alert;->D:I

    .line 342
    .line 343
    move/from16 v50, v1

    .line 344
    .line 345
    const-string v1, "TRACKER_REPLY"

    .line 346
    .line 347
    move-object/from16 v51, v2

    .line 348
    .line 349
    const/16 v2, 0x18

    .line 350
    .line 351
    invoke-direct {v0, v1, v2, v15}, Lcom/frostwire/jlibtorrent/alerts/AlertType;-><init>(Ljava/lang/String;II)V

    .line 352
    .line 353
    .line 354
    new-instance v1, Lcom/frostwire/jlibtorrent/alerts/AlertType;

    .line 355
    .line 356
    sget v15, Lcom/frostwire/jlibtorrent/swig/tracker_warning_alert;->D:I

    .line 357
    .line 358
    move/from16 v52, v2

    .line 359
    .line 360
    const-string v2, "TRACKER_WARNING"

    .line 361
    .line 362
    move-object/from16 v53, v0

    .line 363
    .line 364
    const/16 v0, 0x19

    .line 365
    .line 366
    invoke-direct {v1, v2, v0, v15}, Lcom/frostwire/jlibtorrent/alerts/AlertType;-><init>(Ljava/lang/String;II)V

    .line 367
    .line 368
    .line 369
    new-instance v2, Lcom/frostwire/jlibtorrent/alerts/AlertType;

    .line 370
    .line 371
    sget v15, Lcom/frostwire/jlibtorrent/swig/tracker_error_alert;->D:I

    .line 372
    .line 373
    move/from16 v54, v0

    .line 374
    .line 375
    const-string v0, "TRACKER_ERROR"

    .line 376
    .line 377
    move-object/from16 v55, v1

    .line 378
    .line 379
    const/16 v1, 0x1a

    .line 380
    .line 381
    invoke-direct {v2, v0, v1, v15}, Lcom/frostwire/jlibtorrent/alerts/AlertType;-><init>(Ljava/lang/String;II)V

    .line 382
    .line 383
    .line 384
    new-instance v0, Lcom/frostwire/jlibtorrent/alerts/AlertType;

    .line 385
    .line 386
    sget v15, Lcom/frostwire/jlibtorrent/swig/read_piece_alert;->C:I

    .line 387
    .line 388
    move/from16 v56, v1

    .line 389
    .line 390
    const-string v1, "READ_PIECE"

    .line 391
    .line 392
    move-object/from16 v57, v2

    .line 393
    .line 394
    const/16 v2, 0x1b

    .line 395
    .line 396
    invoke-direct {v0, v1, v2, v15}, Lcom/frostwire/jlibtorrent/alerts/AlertType;-><init>(Ljava/lang/String;II)V

    .line 397
    .line 398
    .line 399
    new-instance v1, Lcom/frostwire/jlibtorrent/alerts/AlertType;

    .line 400
    .line 401
    sget v15, Lcom/frostwire/jlibtorrent/swig/state_changed_alert;->C:I

    .line 402
    .line 403
    move/from16 v58, v2

    .line 404
    .line 405
    const-string v2, "STATE_CHANGED"

    .line 406
    .line 407
    move-object/from16 v59, v0

    .line 408
    .line 409
    const/16 v0, 0x1c

    .line 410
    .line 411
    invoke-direct {v1, v2, v0, v15}, Lcom/frostwire/jlibtorrent/alerts/AlertType;-><init>(Ljava/lang/String;II)V

    .line 412
    .line 413
    .line 414
    new-instance v2, Lcom/frostwire/jlibtorrent/alerts/AlertType;

    .line 415
    .line 416
    sget v15, Lcom/frostwire/jlibtorrent/swig/dht_reply_alert;->D:I

    .line 417
    .line 418
    move/from16 v60, v0

    .line 419
    .line 420
    const-string v0, "DHT_REPLY"

    .line 421
    .line 422
    move-object/from16 v61, v1

    .line 423
    .line 424
    const/16 v1, 0x1d

    .line 425
    .line 426
    invoke-direct {v2, v0, v1, v15}, Lcom/frostwire/jlibtorrent/alerts/AlertType;-><init>(Ljava/lang/String;II)V

    .line 427
    .line 428
    .line 429
    new-instance v0, Lcom/frostwire/jlibtorrent/alerts/AlertType;

    .line 430
    .line 431
    sget v15, Lcom/frostwire/jlibtorrent/swig/dht_bootstrap_alert;->B:I

    .line 432
    .line 433
    move/from16 v62, v1

    .line 434
    .line 435
    const-string v1, "DHT_BOOTSTRAP"

    .line 436
    .line 437
    move-object/from16 v63, v2

    .line 438
    .line 439
    const/16 v2, 0x1e

    .line 440
    .line 441
    invoke-direct {v0, v1, v2, v15}, Lcom/frostwire/jlibtorrent/alerts/AlertType;-><init>(Ljava/lang/String;II)V

    .line 442
    .line 443
    .line 444
    new-instance v1, Lcom/frostwire/jlibtorrent/alerts/AlertType;

    .line 445
    .line 446
    sget v15, Lcom/frostwire/jlibtorrent/swig/dht_get_peers_alert;->B:I

    .line 447
    .line 448
    move/from16 v64, v2

    .line 449
    .line 450
    const-string v2, "DHT_GET_PEERS"

    .line 451
    .line 452
    move-object/from16 v65, v0

    .line 453
    .line 454
    const/16 v0, 0x1f

    .line 455
    .line 456
    invoke-direct {v1, v2, v0, v15}, Lcom/frostwire/jlibtorrent/alerts/AlertType;-><init>(Ljava/lang/String;II)V

    .line 457
    .line 458
    .line 459
    new-instance v2, Lcom/frostwire/jlibtorrent/alerts/AlertType;

    .line 460
    .line 461
    sget v15, Lcom/frostwire/jlibtorrent/swig/external_ip_alert;->B:I

    .line 462
    .line 463
    move/from16 v66, v0

    .line 464
    .line 465
    const-string v0, "EXTERNAL_IP"

    .line 466
    .line 467
    move-object/from16 v67, v1

    .line 468
    .line 469
    const/16 v1, 0x20

    .line 470
    .line 471
    invoke-direct {v2, v0, v1, v15}, Lcom/frostwire/jlibtorrent/alerts/AlertType;-><init>(Ljava/lang/String;II)V

    .line 472
    .line 473
    .line 474
    sput-object v2, Lcom/frostwire/jlibtorrent/alerts/AlertType;->m:Lcom/frostwire/jlibtorrent/alerts/AlertType;

    .line 475
    .line 476
    new-instance v0, Lcom/frostwire/jlibtorrent/alerts/AlertType;

    .line 477
    .line 478
    sget v15, Lcom/frostwire/jlibtorrent/swig/listen_succeeded_alert;->B:I

    .line 479
    .line 480
    move/from16 v68, v1

    .line 481
    .line 482
    const-string v1, "LISTEN_SUCCEEDED"

    .line 483
    .line 484
    move-object/from16 v69, v2

    .line 485
    .line 486
    const/16 v2, 0x21

    .line 487
    .line 488
    invoke-direct {v0, v1, v2, v15}, Lcom/frostwire/jlibtorrent/alerts/AlertType;-><init>(Ljava/lang/String;II)V

    .line 489
    .line 490
    .line 491
    sput-object v0, Lcom/frostwire/jlibtorrent/alerts/AlertType;->n:Lcom/frostwire/jlibtorrent/alerts/AlertType;

    .line 492
    .line 493
    new-instance v1, Lcom/frostwire/jlibtorrent/alerts/AlertType;

    .line 494
    .line 495
    sget v15, Lcom/frostwire/jlibtorrent/swig/state_update_alert;->B:I

    .line 496
    .line 497
    move/from16 v70, v2

    .line 498
    .line 499
    const-string v2, "STATE_UPDATE"

    .line 500
    .line 501
    move-object/from16 v71, v0

    .line 502
    .line 503
    const/16 v0, 0x22

    .line 504
    .line 505
    invoke-direct {v1, v2, v0, v15}, Lcom/frostwire/jlibtorrent/alerts/AlertType;-><init>(Ljava/lang/String;II)V

    .line 506
    .line 507
    .line 508
    sput-object v1, Lcom/frostwire/jlibtorrent/alerts/AlertType;->o:Lcom/frostwire/jlibtorrent/alerts/AlertType;

    .line 509
    .line 510
    new-instance v2, Lcom/frostwire/jlibtorrent/alerts/AlertType;

    .line 511
    .line 512
    sget v15, Lcom/frostwire/jlibtorrent/swig/session_stats_alert;->B:I

    .line 513
    .line 514
    move/from16 v72, v0

    .line 515
    .line 516
    const-string v0, "SESSION_STATS"

    .line 517
    .line 518
    move-object/from16 v73, v1

    .line 519
    .line 520
    const/16 v1, 0x23

    .line 521
    .line 522
    invoke-direct {v2, v0, v1, v15}, Lcom/frostwire/jlibtorrent/alerts/AlertType;-><init>(Ljava/lang/String;II)V

    .line 523
    .line 524
    .line 525
    sput-object v2, Lcom/frostwire/jlibtorrent/alerts/AlertType;->p:Lcom/frostwire/jlibtorrent/alerts/AlertType;

    .line 526
    .line 527
    new-instance v0, Lcom/frostwire/jlibtorrent/alerts/AlertType;

    .line 528
    .line 529
    sget v15, Lcom/frostwire/jlibtorrent/swig/scrape_reply_alert;->D:I

    .line 530
    .line 531
    move/from16 v74, v1

    .line 532
    .line 533
    const-string v1, "SCRAPE_REPLY"

    .line 534
    .line 535
    move-object/from16 v75, v2

    .line 536
    .line 537
    const/16 v2, 0x24

    .line 538
    .line 539
    invoke-direct {v0, v1, v2, v15}, Lcom/frostwire/jlibtorrent/alerts/AlertType;-><init>(Ljava/lang/String;II)V

    .line 540
    .line 541
    .line 542
    new-instance v1, Lcom/frostwire/jlibtorrent/alerts/AlertType;

    .line 543
    .line 544
    sget v15, Lcom/frostwire/jlibtorrent/swig/scrape_failed_alert;->D:I

    .line 545
    .line 546
    move/from16 v76, v2

    .line 547
    .line 548
    const-string v2, "SCRAPE_FAILED"

    .line 549
    .line 550
    move-object/from16 v77, v0

    .line 551
    .line 552
    const/16 v0, 0x25

    .line 553
    .line 554
    invoke-direct {v1, v2, v0, v15}, Lcom/frostwire/jlibtorrent/alerts/AlertType;-><init>(Ljava/lang/String;II)V

    .line 555
    .line 556
    .line 557
    new-instance v2, Lcom/frostwire/jlibtorrent/alerts/AlertType;

    .line 558
    .line 559
    sget v15, Lcom/frostwire/jlibtorrent/swig/lsd_peer_alert;->D:I

    .line 560
    .line 561
    move/from16 v78, v0

    .line 562
    .line 563
    const-string v0, "LSD_PEER"

    .line 564
    .line 565
    move-object/from16 v79, v1

    .line 566
    .line 567
    const/16 v1, 0x26

    .line 568
    .line 569
    invoke-direct {v2, v0, v1, v15}, Lcom/frostwire/jlibtorrent/alerts/AlertType;-><init>(Ljava/lang/String;II)V

    .line 570
    .line 571
    .line 572
    new-instance v0, Lcom/frostwire/jlibtorrent/alerts/AlertType;

    .line 573
    .line 574
    sget v15, Lcom/frostwire/jlibtorrent/swig/peer_blocked_alert;->D:I

    .line 575
    .line 576
    move/from16 v80, v1

    .line 577
    .line 578
    const-string v1, "PEER_BLOCKED"

    .line 579
    .line 580
    move-object/from16 v81, v2

    .line 581
    .line 582
    const/16 v2, 0x27

    .line 583
    .line 584
    invoke-direct {v0, v1, v2, v15}, Lcom/frostwire/jlibtorrent/alerts/AlertType;-><init>(Ljava/lang/String;II)V

    .line 585
    .line 586
    .line 587
    new-instance v1, Lcom/frostwire/jlibtorrent/alerts/AlertType;

    .line 588
    .line 589
    sget v15, Lcom/frostwire/jlibtorrent/swig/performance_alert;->C:I

    .line 590
    .line 591
    move/from16 v82, v2

    .line 592
    .line 593
    const-string v2, "PERFORMANCE"

    .line 594
    .line 595
    move-object/from16 v83, v0

    .line 596
    .line 597
    const/16 v0, 0x28

    .line 598
    .line 599
    invoke-direct {v1, v2, v0, v15}, Lcom/frostwire/jlibtorrent/alerts/AlertType;-><init>(Ljava/lang/String;II)V

    .line 600
    .line 601
    .line 602
    new-instance v2, Lcom/frostwire/jlibtorrent/alerts/AlertType;

    .line 603
    .line 604
    sget v15, Lcom/frostwire/jlibtorrent/swig/piece_finished_alert;->C:I

    .line 605
    .line 606
    move/from16 v84, v0

    .line 607
    .line 608
    const-string v0, "PIECE_FINISHED"

    .line 609
    .line 610
    move-object/from16 v85, v1

    .line 611
    .line 612
    const/16 v1, 0x29

    .line 613
    .line 614
    invoke-direct {v2, v0, v1, v15}, Lcom/frostwire/jlibtorrent/alerts/AlertType;-><init>(Ljava/lang/String;II)V

    .line 615
    .line 616
    .line 617
    new-instance v0, Lcom/frostwire/jlibtorrent/alerts/AlertType;

    .line 618
    .line 619
    sget v15, Lcom/frostwire/jlibtorrent/swig/save_resume_data_failed_alert;->C:I

    .line 620
    .line 621
    move/from16 v86, v1

    .line 622
    .line 623
    const-string v1, "SAVE_RESUME_DATA_FAILED"

    .line 624
    .line 625
    move-object/from16 v87, v2

    .line 626
    .line 627
    const/16 v2, 0x2a

    .line 628
    .line 629
    invoke-direct {v0, v1, v2, v15}, Lcom/frostwire/jlibtorrent/alerts/AlertType;-><init>(Ljava/lang/String;II)V

    .line 630
    .line 631
    .line 632
    new-instance v1, Lcom/frostwire/jlibtorrent/alerts/AlertType;

    .line 633
    .line 634
    sget v15, Lcom/frostwire/jlibtorrent/swig/stats_alert;->C:I

    .line 635
    .line 636
    move/from16 v88, v2

    .line 637
    .line 638
    const-string v2, "STATS"

    .line 639
    .line 640
    move-object/from16 v89, v0

    .line 641
    .line 642
    const/16 v0, 0x2b

    .line 643
    .line 644
    invoke-direct {v1, v2, v0, v15}, Lcom/frostwire/jlibtorrent/alerts/AlertType;-><init>(Ljava/lang/String;II)V

    .line 645
    .line 646
    .line 647
    new-instance v2, Lcom/frostwire/jlibtorrent/alerts/AlertType;

    .line 648
    .line 649
    sget v15, Lcom/frostwire/jlibtorrent/swig/storage_moved_alert;->C:I

    .line 650
    .line 651
    move/from16 v90, v0

    .line 652
    .line 653
    const-string v0, "STORAGE_MOVED"

    .line 654
    .line 655
    move-object/from16 v91, v1

    .line 656
    .line 657
    const/16 v1, 0x2c

    .line 658
    .line 659
    invoke-direct {v2, v0, v1, v15}, Lcom/frostwire/jlibtorrent/alerts/AlertType;-><init>(Ljava/lang/String;II)V

    .line 660
    .line 661
    .line 662
    new-instance v0, Lcom/frostwire/jlibtorrent/alerts/AlertType;

    .line 663
    .line 664
    sget v15, Lcom/frostwire/jlibtorrent/swig/torrent_delete_failed_alert;->C:I

    .line 665
    .line 666
    move/from16 v92, v1

    .line 667
    .line 668
    const-string v1, "TORRENT_DELETE_FAILED"

    .line 669
    .line 670
    move-object/from16 v93, v2

    .line 671
    .line 672
    const/16 v2, 0x2d

    .line 673
    .line 674
    invoke-direct {v0, v1, v2, v15}, Lcom/frostwire/jlibtorrent/alerts/AlertType;-><init>(Ljava/lang/String;II)V

    .line 675
    .line 676
    .line 677
    new-instance v1, Lcom/frostwire/jlibtorrent/alerts/AlertType;

    .line 678
    .line 679
    sget v15, Lcom/frostwire/jlibtorrent/swig/url_seed_alert;->C:I

    .line 680
    .line 681
    move/from16 v94, v2

    .line 682
    .line 683
    const-string v2, "URL_SEED"

    .line 684
    .line 685
    move-object/from16 v95, v0

    .line 686
    .line 687
    const/16 v0, 0x2e

    .line 688
    .line 689
    invoke-direct {v1, v2, v0, v15}, Lcom/frostwire/jlibtorrent/alerts/AlertType;-><init>(Ljava/lang/String;II)V

    .line 690
    .line 691
    .line 692
    new-instance v2, Lcom/frostwire/jlibtorrent/alerts/AlertType;

    .line 693
    .line 694
    sget v15, Lcom/frostwire/jlibtorrent/swig/invalid_request_alert;->D:I

    .line 695
    .line 696
    move/from16 v96, v0

    .line 697
    .line 698
    const-string v0, "INVALID_REQUEST"

    .line 699
    .line 700
    move-object/from16 v97, v1

    .line 701
    .line 702
    const/16 v1, 0x2f

    .line 703
    .line 704
    invoke-direct {v2, v0, v1, v15}, Lcom/frostwire/jlibtorrent/alerts/AlertType;-><init>(Ljava/lang/String;II)V

    .line 705
    .line 706
    .line 707
    new-instance v0, Lcom/frostwire/jlibtorrent/alerts/AlertType;

    .line 708
    .line 709
    sget v15, Lcom/frostwire/jlibtorrent/swig/listen_failed_alert;->B:I

    .line 710
    .line 711
    move/from16 v98, v1

    .line 712
    .line 713
    const-string v1, "LISTEN_FAILED"

    .line 714
    .line 715
    move-object/from16 v99, v2

    .line 716
    .line 717
    const/16 v2, 0x30

    .line 718
    .line 719
    invoke-direct {v0, v1, v2, v15}, Lcom/frostwire/jlibtorrent/alerts/AlertType;-><init>(Ljava/lang/String;II)V

    .line 720
    .line 721
    .line 722
    sput-object v0, Lcom/frostwire/jlibtorrent/alerts/AlertType;->q:Lcom/frostwire/jlibtorrent/alerts/AlertType;

    .line 723
    .line 724
    new-instance v1, Lcom/frostwire/jlibtorrent/alerts/AlertType;

    .line 725
    .line 726
    sget v15, Lcom/frostwire/jlibtorrent/swig/peer_ban_alert;->D:I

    .line 727
    .line 728
    move/from16 v100, v2

    .line 729
    .line 730
    const-string v2, "PEER_BAN"

    .line 731
    .line 732
    move-object/from16 v101, v0

    .line 733
    .line 734
    const/16 v0, 0x31

    .line 735
    .line 736
    invoke-direct {v1, v2, v0, v15}, Lcom/frostwire/jlibtorrent/alerts/AlertType;-><init>(Ljava/lang/String;II)V

    .line 737
    .line 738
    .line 739
    new-instance v2, Lcom/frostwire/jlibtorrent/alerts/AlertType;

    .line 740
    .line 741
    sget v15, Lcom/frostwire/jlibtorrent/swig/peer_connect_alert;->D:I

    .line 742
    .line 743
    move/from16 v102, v0

    .line 744
    .line 745
    const-string v0, "PEER_CONNECT"

    .line 746
    .line 747
    move-object/from16 v103, v1

    .line 748
    .line 749
    const/16 v1, 0x32

    .line 750
    .line 751
    invoke-direct {v2, v0, v1, v15}, Lcom/frostwire/jlibtorrent/alerts/AlertType;-><init>(Ljava/lang/String;II)V

    .line 752
    .line 753
    .line 754
    new-instance v0, Lcom/frostwire/jlibtorrent/alerts/AlertType;

    .line 755
    .line 756
    sget v15, Lcom/frostwire/jlibtorrent/swig/peer_disconnected_alert;->D:I

    .line 757
    .line 758
    move/from16 v104, v1

    .line 759
    .line 760
    const-string v1, "PEER_DISCONNECTED"

    .line 761
    .line 762
    move-object/from16 v105, v2

    .line 763
    .line 764
    const/16 v2, 0x33

    .line 765
    .line 766
    invoke-direct {v0, v1, v2, v15}, Lcom/frostwire/jlibtorrent/alerts/AlertType;-><init>(Ljava/lang/String;II)V

    .line 767
    .line 768
    .line 769
    new-instance v1, Lcom/frostwire/jlibtorrent/alerts/AlertType;

    .line 770
    .line 771
    sget v15, Lcom/frostwire/jlibtorrent/swig/peer_error_alert;->D:I

    .line 772
    .line 773
    move/from16 v106, v2

    .line 774
    .line 775
    const-string v2, "PEER_ERROR"

    .line 776
    .line 777
    move-object/from16 v107, v0

    .line 778
    .line 779
    const/16 v0, 0x34

    .line 780
    .line 781
    invoke-direct {v1, v2, v0, v15}, Lcom/frostwire/jlibtorrent/alerts/AlertType;-><init>(Ljava/lang/String;II)V

    .line 782
    .line 783
    .line 784
    new-instance v2, Lcom/frostwire/jlibtorrent/alerts/AlertType;

    .line 785
    .line 786
    sget v15, Lcom/frostwire/jlibtorrent/swig/peer_snubbed_alert;->D:I

    .line 787
    .line 788
    move/from16 v108, v0

    .line 789
    .line 790
    const-string v0, "PEER_SNUBBED"

    .line 791
    .line 792
    move-object/from16 v109, v1

    .line 793
    .line 794
    const/16 v1, 0x35

    .line 795
    .line 796
    invoke-direct {v2, v0, v1, v15}, Lcom/frostwire/jlibtorrent/alerts/AlertType;-><init>(Ljava/lang/String;II)V

    .line 797
    .line 798
    .line 799
    new-instance v0, Lcom/frostwire/jlibtorrent/alerts/AlertType;

    .line 800
    .line 801
    sget v15, Lcom/frostwire/jlibtorrent/swig/peer_unsnubbed_alert;->D:I

    .line 802
    .line 803
    move/from16 v110, v1

    .line 804
    .line 805
    const-string v1, "PEER_UNSNUBBED"

    .line 806
    .line 807
    move-object/from16 v111, v2

    .line 808
    .line 809
    const/16 v2, 0x36

    .line 810
    .line 811
    invoke-direct {v0, v1, v2, v15}, Lcom/frostwire/jlibtorrent/alerts/AlertType;-><init>(Ljava/lang/String;II)V

    .line 812
    .line 813
    .line 814
    new-instance v1, Lcom/frostwire/jlibtorrent/alerts/AlertType;

    .line 815
    .line 816
    sget v15, Lcom/frostwire/jlibtorrent/swig/request_dropped_alert;->D:I

    .line 817
    .line 818
    move/from16 v112, v2

    .line 819
    .line 820
    const-string v2, "REQUEST_DROPPED"

    .line 821
    .line 822
    move-object/from16 v113, v0

    .line 823
    .line 824
    const/16 v0, 0x37

    .line 825
    .line 826
    invoke-direct {v1, v2, v0, v15}, Lcom/frostwire/jlibtorrent/alerts/AlertType;-><init>(Ljava/lang/String;II)V

    .line 827
    .line 828
    .line 829
    new-instance v2, Lcom/frostwire/jlibtorrent/alerts/AlertType;

    .line 830
    .line 831
    sget v15, Lcom/frostwire/jlibtorrent/swig/udp_error_alert;->B:I

    .line 832
    .line 833
    move/from16 v114, v0

    .line 834
    .line 835
    const-string v0, "UDP_ERROR"

    .line 836
    .line 837
    move-object/from16 v115, v1

    .line 838
    .line 839
    const/16 v1, 0x38

    .line 840
    .line 841
    invoke-direct {v2, v0, v1, v15}, Lcom/frostwire/jlibtorrent/alerts/AlertType;-><init>(Ljava/lang/String;II)V

    .line 842
    .line 843
    .line 844
    new-instance v0, Lcom/frostwire/jlibtorrent/alerts/AlertType;

    .line 845
    .line 846
    sget v15, Lcom/frostwire/jlibtorrent/swig/block_downloading_alert;->D:I

    .line 847
    .line 848
    move/from16 v116, v1

    .line 849
    .line 850
    const-string v1, "BLOCK_DOWNLOADING"

    .line 851
    .line 852
    move-object/from16 v117, v2

    .line 853
    .line 854
    const/16 v2, 0x39

    .line 855
    .line 856
    invoke-direct {v0, v1, v2, v15}, Lcom/frostwire/jlibtorrent/alerts/AlertType;-><init>(Ljava/lang/String;II)V

    .line 857
    .line 858
    .line 859
    new-instance v1, Lcom/frostwire/jlibtorrent/alerts/AlertType;

    .line 860
    .line 861
    sget v15, Lcom/frostwire/jlibtorrent/swig/block_timeout_alert;->D:I

    .line 862
    .line 863
    move/from16 v118, v2

    .line 864
    .line 865
    const-string v2, "BLOCK_TIMEOUT"

    .line 866
    .line 867
    move-object/from16 v119, v0

    .line 868
    .line 869
    const/16 v0, 0x3a

    .line 870
    .line 871
    invoke-direct {v1, v2, v0, v15}, Lcom/frostwire/jlibtorrent/alerts/AlertType;-><init>(Ljava/lang/String;II)V

    .line 872
    .line 873
    .line 874
    new-instance v2, Lcom/frostwire/jlibtorrent/alerts/AlertType;

    .line 875
    .line 876
    sget v15, Lcom/frostwire/jlibtorrent/swig/cache_flushed_alert;->C:I

    .line 877
    .line 878
    move/from16 v120, v0

    .line 879
    .line 880
    const-string v0, "CACHE_FLUSHED"

    .line 881
    .line 882
    move-object/from16 v121, v1

    .line 883
    .line 884
    const/16 v1, 0x3b

    .line 885
    .line 886
    invoke-direct {v2, v0, v1, v15}, Lcom/frostwire/jlibtorrent/alerts/AlertType;-><init>(Ljava/lang/String;II)V

    .line 887
    .line 888
    .line 889
    new-instance v0, Lcom/frostwire/jlibtorrent/alerts/AlertType;

    .line 890
    .line 891
    sget v15, Lcom/frostwire/jlibtorrent/swig/dht_announce_alert;->B:I

    .line 892
    .line 893
    move/from16 v122, v1

    .line 894
    .line 895
    const-string v1, "DHT_ANNOUNCE"

    .line 896
    .line 897
    move-object/from16 v123, v2

    .line 898
    .line 899
    const/16 v2, 0x3c

    .line 900
    .line 901
    invoke-direct {v0, v1, v2, v15}, Lcom/frostwire/jlibtorrent/alerts/AlertType;-><init>(Ljava/lang/String;II)V

    .line 902
    .line 903
    .line 904
    new-instance v1, Lcom/frostwire/jlibtorrent/alerts/AlertType;

    .line 905
    .line 906
    sget v15, Lcom/frostwire/jlibtorrent/swig/storage_moved_failed_alert;->C:I

    .line 907
    .line 908
    move/from16 v124, v2

    .line 909
    .line 910
    const-string v2, "STORAGE_MOVED_FAILED"

    .line 911
    .line 912
    move-object/from16 v125, v0

    .line 913
    .line 914
    const/16 v0, 0x3d

    .line 915
    .line 916
    invoke-direct {v1, v2, v0, v15}, Lcom/frostwire/jlibtorrent/alerts/AlertType;-><init>(Ljava/lang/String;II)V

    .line 917
    .line 918
    .line 919
    new-instance v2, Lcom/frostwire/jlibtorrent/alerts/AlertType;

    .line 920
    .line 921
    sget v15, Lcom/frostwire/jlibtorrent/swig/trackerid_alert;->D:I

    .line 922
    .line 923
    move/from16 v126, v0

    .line 924
    .line 925
    const-string v0, "TRACKERID"

    .line 926
    .line 927
    move-object/from16 v127, v1

    .line 928
    .line 929
    const/16 v1, 0x3e

    .line 930
    .line 931
    invoke-direct {v2, v0, v1, v15}, Lcom/frostwire/jlibtorrent/alerts/AlertType;-><init>(Ljava/lang/String;II)V

    .line 932
    .line 933
    .line 934
    new-instance v0, Lcom/frostwire/jlibtorrent/alerts/AlertType;

    .line 935
    .line 936
    sget v15, Lcom/frostwire/jlibtorrent/swig/unwanted_block_alert;->D:I

    .line 937
    .line 938
    move/from16 v128, v1

    .line 939
    .line 940
    const-string v1, "UNWANTED_BLOCK"

    .line 941
    .line 942
    move-object/from16 v129, v2

    .line 943
    .line 944
    const/16 v2, 0x3f

    .line 945
    .line 946
    invoke-direct {v0, v1, v2, v15}, Lcom/frostwire/jlibtorrent/alerts/AlertType;-><init>(Ljava/lang/String;II)V

    .line 947
    .line 948
    .line 949
    new-instance v1, Lcom/frostwire/jlibtorrent/alerts/AlertType;

    .line 950
    .line 951
    sget v15, Lcom/frostwire/jlibtorrent/swig/dht_error_alert;->B:I

    .line 952
    .line 953
    move/from16 v130, v2

    .line 954
    .line 955
    const-string v2, "DHT_ERROR"

    .line 956
    .line 957
    move-object/from16 v131, v0

    .line 958
    .line 959
    const/16 v0, 0x40

    .line 960
    .line 961
    invoke-direct {v1, v2, v0, v15}, Lcom/frostwire/jlibtorrent/alerts/AlertType;-><init>(Ljava/lang/String;II)V

    .line 962
    .line 963
    .line 964
    new-instance v2, Lcom/frostwire/jlibtorrent/alerts/AlertType;

    .line 965
    .line 966
    sget v15, Lcom/frostwire/jlibtorrent/swig/dht_put_alert;->B:I

    .line 967
    .line 968
    move/from16 v132, v0

    .line 969
    .line 970
    const-string v0, "DHT_PUT"

    .line 971
    .line 972
    move-object/from16 v133, v1

    .line 973
    .line 974
    const/16 v1, 0x41

    .line 975
    .line 976
    invoke-direct {v2, v0, v1, v15}, Lcom/frostwire/jlibtorrent/alerts/AlertType;-><init>(Ljava/lang/String;II)V

    .line 977
    .line 978
    .line 979
    new-instance v0, Lcom/frostwire/jlibtorrent/alerts/AlertType;

    .line 980
    .line 981
    const/16 v15, 0x42

    .line 982
    .line 983
    move/from16 v134, v1

    .line 984
    .line 985
    sget v1, Lcom/frostwire/jlibtorrent/swig/dht_mutable_item_alert;->B:I

    .line 986
    .line 987
    move-object/from16 v135, v2

    .line 988
    .line 989
    const-string v2, "DHT_MUTABLE_ITEM"

    .line 990
    .line 991
    invoke-direct {v0, v2, v15, v1}, Lcom/frostwire/jlibtorrent/alerts/AlertType;-><init>(Ljava/lang/String;II)V

    .line 992
    .line 993
    .line 994
    sput-object v0, Lcom/frostwire/jlibtorrent/alerts/AlertType;->r:Lcom/frostwire/jlibtorrent/alerts/AlertType;

    .line 995
    .line 996
    new-instance v1, Lcom/frostwire/jlibtorrent/alerts/AlertType;

    .line 997
    .line 998
    const/16 v2, 0x43

    .line 999
    .line 1000
    sget v15, Lcom/frostwire/jlibtorrent/swig/dht_immutable_item_alert;->B:I

    .line 1001
    .line 1002
    move-object/from16 v136, v0

    .line 1003
    .line 1004
    const-string v0, "DHT_IMMUTABLE_ITEM"

    .line 1005
    .line 1006
    invoke-direct {v1, v0, v2, v15}, Lcom/frostwire/jlibtorrent/alerts/AlertType;-><init>(Ljava/lang/String;II)V

    .line 1007
    .line 1008
    .line 1009
    sput-object v1, Lcom/frostwire/jlibtorrent/alerts/AlertType;->s:Lcom/frostwire/jlibtorrent/alerts/AlertType;

    .line 1010
    .line 1011
    new-instance v0, Lcom/frostwire/jlibtorrent/alerts/AlertType;

    .line 1012
    .line 1013
    const/16 v2, 0x44

    .line 1014
    .line 1015
    sget v15, Lcom/frostwire/jlibtorrent/swig/i2p_alert;->B:I

    .line 1016
    .line 1017
    move-object/from16 v137, v1

    .line 1018
    .line 1019
    const-string v1, "I2P"

    .line 1020
    .line 1021
    invoke-direct {v0, v1, v2, v15}, Lcom/frostwire/jlibtorrent/alerts/AlertType;-><init>(Ljava/lang/String;II)V

    .line 1022
    .line 1023
    .line 1024
    new-instance v1, Lcom/frostwire/jlibtorrent/alerts/AlertType;

    .line 1025
    .line 1026
    const/16 v2, 0x45

    .line 1027
    .line 1028
    sget v15, Lcom/frostwire/jlibtorrent/swig/dht_outgoing_get_peers_alert;->B:I

    .line 1029
    .line 1030
    move-object/from16 v138, v0

    .line 1031
    .line 1032
    const-string v0, "DHT_OUTGOING_GET_PEERS"

    .line 1033
    .line 1034
    invoke-direct {v1, v0, v2, v15}, Lcom/frostwire/jlibtorrent/alerts/AlertType;-><init>(Ljava/lang/String;II)V

    .line 1035
    .line 1036
    .line 1037
    new-instance v0, Lcom/frostwire/jlibtorrent/alerts/AlertType;

    .line 1038
    .line 1039
    const/16 v2, 0x46

    .line 1040
    .line 1041
    sget v15, Lcom/frostwire/jlibtorrent/swig/log_alert;->B:I

    .line 1042
    .line 1043
    move-object/from16 v139, v1

    .line 1044
    .line 1045
    const-string v1, "LOG"

    .line 1046
    .line 1047
    invoke-direct {v0, v1, v2, v15}, Lcom/frostwire/jlibtorrent/alerts/AlertType;-><init>(Ljava/lang/String;II)V

    .line 1048
    .line 1049
    .line 1050
    new-instance v1, Lcom/frostwire/jlibtorrent/alerts/AlertType;

    .line 1051
    .line 1052
    const/16 v2, 0x47

    .line 1053
    .line 1054
    sget v15, Lcom/frostwire/jlibtorrent/swig/torrent_log_alert;->C:I

    .line 1055
    .line 1056
    move-object/from16 v140, v0

    .line 1057
    .line 1058
    const-string v0, "TORRENT_LOG"

    .line 1059
    .line 1060
    invoke-direct {v1, v0, v2, v15}, Lcom/frostwire/jlibtorrent/alerts/AlertType;-><init>(Ljava/lang/String;II)V

    .line 1061
    .line 1062
    .line 1063
    new-instance v0, Lcom/frostwire/jlibtorrent/alerts/AlertType;

    .line 1064
    .line 1065
    const/16 v2, 0x48

    .line 1066
    .line 1067
    sget v15, Lcom/frostwire/jlibtorrent/swig/peer_log_alert;->D:I

    .line 1068
    .line 1069
    move-object/from16 v141, v1

    .line 1070
    .line 1071
    const-string v1, "PEER_LOG"

    .line 1072
    .line 1073
    invoke-direct {v0, v1, v2, v15}, Lcom/frostwire/jlibtorrent/alerts/AlertType;-><init>(Ljava/lang/String;II)V

    .line 1074
    .line 1075
    .line 1076
    new-instance v1, Lcom/frostwire/jlibtorrent/alerts/AlertType;

    .line 1077
    .line 1078
    const/16 v2, 0x49

    .line 1079
    .line 1080
    sget v15, Lcom/frostwire/jlibtorrent/swig/lsd_error_alert;->B:I

    .line 1081
    .line 1082
    move-object/from16 v142, v0

    .line 1083
    .line 1084
    const-string v0, "LSD_ERROR"

    .line 1085
    .line 1086
    invoke-direct {v1, v0, v2, v15}, Lcom/frostwire/jlibtorrent/alerts/AlertType;-><init>(Ljava/lang/String;II)V

    .line 1087
    .line 1088
    .line 1089
    new-instance v0, Lcom/frostwire/jlibtorrent/alerts/AlertType;

    .line 1090
    .line 1091
    const/16 v2, 0x4a

    .line 1092
    .line 1093
    sget v15, Lcom/frostwire/jlibtorrent/swig/dht_stats_alert;->B:I

    .line 1094
    .line 1095
    move-object/from16 v143, v1

    .line 1096
    .line 1097
    const-string v1, "DHT_STATS"

    .line 1098
    .line 1099
    invoke-direct {v0, v1, v2, v15}, Lcom/frostwire/jlibtorrent/alerts/AlertType;-><init>(Ljava/lang/String;II)V

    .line 1100
    .line 1101
    .line 1102
    sput-object v0, Lcom/frostwire/jlibtorrent/alerts/AlertType;->t:Lcom/frostwire/jlibtorrent/alerts/AlertType;

    .line 1103
    .line 1104
    new-instance v1, Lcom/frostwire/jlibtorrent/alerts/AlertType;

    .line 1105
    .line 1106
    const/16 v2, 0x4b

    .line 1107
    .line 1108
    sget v15, Lcom/frostwire/jlibtorrent/swig/incoming_request_alert;->E:I

    .line 1109
    .line 1110
    move-object/from16 v144, v0

    .line 1111
    .line 1112
    const-string v0, "INCOMING_REQUEST"

    .line 1113
    .line 1114
    invoke-direct {v1, v0, v2, v15}, Lcom/frostwire/jlibtorrent/alerts/AlertType;-><init>(Ljava/lang/String;II)V

    .line 1115
    .line 1116
    .line 1117
    new-instance v0, Lcom/frostwire/jlibtorrent/alerts/AlertType;

    .line 1118
    .line 1119
    const/16 v2, 0x4c

    .line 1120
    .line 1121
    sget v15, Lcom/frostwire/jlibtorrent/swig/dht_log_alert;->C:I

    .line 1122
    .line 1123
    move-object/from16 v145, v1

    .line 1124
    .line 1125
    const-string v1, "DHT_LOG"

    .line 1126
    .line 1127
    invoke-direct {v0, v1, v2, v15}, Lcom/frostwire/jlibtorrent/alerts/AlertType;-><init>(Ljava/lang/String;II)V

    .line 1128
    .line 1129
    .line 1130
    new-instance v1, Lcom/frostwire/jlibtorrent/alerts/AlertType;

    .line 1131
    .line 1132
    const/16 v2, 0x4d

    .line 1133
    .line 1134
    sget v15, Lcom/frostwire/jlibtorrent/swig/dht_pkt_alert;->C:I

    .line 1135
    .line 1136
    move-object/from16 v146, v0

    .line 1137
    .line 1138
    const-string v0, "DHT_PKT"

    .line 1139
    .line 1140
    invoke-direct {v1, v0, v2, v15}, Lcom/frostwire/jlibtorrent/alerts/AlertType;-><init>(Ljava/lang/String;II)V

    .line 1141
    .line 1142
    .line 1143
    new-instance v0, Lcom/frostwire/jlibtorrent/alerts/AlertType;

    .line 1144
    .line 1145
    const/16 v2, 0x4e

    .line 1146
    .line 1147
    sget v15, Lcom/frostwire/jlibtorrent/swig/dht_get_peers_reply_alert;->C:I

    .line 1148
    .line 1149
    move-object/from16 v147, v1

    .line 1150
    .line 1151
    const-string v1, "DHT_GET_PEERS_REPLY"

    .line 1152
    .line 1153
    invoke-direct {v0, v1, v2, v15}, Lcom/frostwire/jlibtorrent/alerts/AlertType;-><init>(Ljava/lang/String;II)V

    .line 1154
    .line 1155
    .line 1156
    sput-object v0, Lcom/frostwire/jlibtorrent/alerts/AlertType;->u:Lcom/frostwire/jlibtorrent/alerts/AlertType;

    .line 1157
    .line 1158
    new-instance v1, Lcom/frostwire/jlibtorrent/alerts/AlertType;

    .line 1159
    .line 1160
    const/16 v2, 0x4f

    .line 1161
    .line 1162
    sget v15, Lcom/frostwire/jlibtorrent/swig/dht_direct_response_alert;->B:I

    .line 1163
    .line 1164
    move-object/from16 v148, v0

    .line 1165
    .line 1166
    const-string v0, "DHT_DIRECT_RESPONSE"

    .line 1167
    .line 1168
    invoke-direct {v1, v0, v2, v15}, Lcom/frostwire/jlibtorrent/alerts/AlertType;-><init>(Ljava/lang/String;II)V

    .line 1169
    .line 1170
    .line 1171
    new-instance v0, Lcom/frostwire/jlibtorrent/alerts/AlertType;

    .line 1172
    .line 1173
    const/16 v2, 0x50

    .line 1174
    .line 1175
    sget v15, Lcom/frostwire/jlibtorrent/swig/picker_log_alert;->D:I

    .line 1176
    .line 1177
    move-object/from16 v149, v1

    .line 1178
    .line 1179
    const-string v1, "PICKER_LOG"

    .line 1180
    .line 1181
    invoke-direct {v0, v1, v2, v15}, Lcom/frostwire/jlibtorrent/alerts/AlertType;-><init>(Ljava/lang/String;II)V

    .line 1182
    .line 1183
    .line 1184
    new-instance v1, Lcom/frostwire/jlibtorrent/alerts/AlertType;

    .line 1185
    .line 1186
    const/16 v2, 0x51

    .line 1187
    .line 1188
    sget v15, Lcom/frostwire/jlibtorrent/swig/session_error_alert;->B:I

    .line 1189
    .line 1190
    move-object/from16 v150, v0

    .line 1191
    .line 1192
    const-string v0, "SESSION_ERROR"

    .line 1193
    .line 1194
    invoke-direct {v1, v0, v2, v15}, Lcom/frostwire/jlibtorrent/alerts/AlertType;-><init>(Ljava/lang/String;II)V

    .line 1195
    .line 1196
    .line 1197
    new-instance v0, Lcom/frostwire/jlibtorrent/alerts/AlertType;

    .line 1198
    .line 1199
    const/16 v2, 0x52

    .line 1200
    .line 1201
    sget v15, Lcom/frostwire/jlibtorrent/swig/dht_live_nodes_alert;->B:I

    .line 1202
    .line 1203
    move-object/from16 v151, v1

    .line 1204
    .line 1205
    const-string v1, "DHT_LIVE_NODES"

    .line 1206
    .line 1207
    invoke-direct {v0, v1, v2, v15}, Lcom/frostwire/jlibtorrent/alerts/AlertType;-><init>(Ljava/lang/String;II)V

    .line 1208
    .line 1209
    .line 1210
    new-instance v1, Lcom/frostwire/jlibtorrent/alerts/AlertType;

    .line 1211
    .line 1212
    const/16 v2, 0x53

    .line 1213
    .line 1214
    sget v15, Lcom/frostwire/jlibtorrent/swig/session_stats_header_alert;->B:I

    .line 1215
    .line 1216
    move-object/from16 v152, v0

    .line 1217
    .line 1218
    const-string v0, "SESSION_STATS_HEADER"

    .line 1219
    .line 1220
    invoke-direct {v1, v0, v2, v15}, Lcom/frostwire/jlibtorrent/alerts/AlertType;-><init>(Ljava/lang/String;II)V

    .line 1221
    .line 1222
    .line 1223
    sput-object v1, Lcom/frostwire/jlibtorrent/alerts/AlertType;->v:Lcom/frostwire/jlibtorrent/alerts/AlertType;

    .line 1224
    .line 1225
    new-instance v0, Lcom/frostwire/jlibtorrent/alerts/AlertType;

    .line 1226
    .line 1227
    const/16 v2, 0x54

    .line 1228
    .line 1229
    sget v15, Lcom/frostwire/jlibtorrent/swig/dht_sample_infohashes_alert;->C:I

    .line 1230
    .line 1231
    move-object/from16 v153, v1

    .line 1232
    .line 1233
    const-string v1, "DHT_SAMPLE_INFOHASHES"

    .line 1234
    .line 1235
    invoke-direct {v0, v1, v2, v15}, Lcom/frostwire/jlibtorrent/alerts/AlertType;-><init>(Ljava/lang/String;II)V

    .line 1236
    .line 1237
    .line 1238
    new-instance v1, Lcom/frostwire/jlibtorrent/alerts/AlertType;

    .line 1239
    .line 1240
    const/16 v2, 0x55

    .line 1241
    .line 1242
    sget v15, Lcom/frostwire/jlibtorrent/swig/block_uploaded_alert;->D:I

    .line 1243
    .line 1244
    move-object/from16 v154, v0

    .line 1245
    .line 1246
    const-string v0, "BLOCK_UPLOADED"

    .line 1247
    .line 1248
    invoke-direct {v1, v0, v2, v15}, Lcom/frostwire/jlibtorrent/alerts/AlertType;-><init>(Ljava/lang/String;II)V

    .line 1249
    .line 1250
    .line 1251
    new-instance v0, Lcom/frostwire/jlibtorrent/alerts/AlertType;

    .line 1252
    .line 1253
    const/16 v2, 0x56

    .line 1254
    .line 1255
    sget v15, Lcom/frostwire/jlibtorrent/swig/alerts_dropped_alert;->B:I

    .line 1256
    .line 1257
    move-object/from16 v155, v1

    .line 1258
    .line 1259
    const-string v1, "ALERTS_DROPPED"

    .line 1260
    .line 1261
    invoke-direct {v0, v1, v2, v15}, Lcom/frostwire/jlibtorrent/alerts/AlertType;-><init>(Ljava/lang/String;II)V

    .line 1262
    .line 1263
    .line 1264
    new-instance v1, Lcom/frostwire/jlibtorrent/alerts/AlertType;

    .line 1265
    .line 1266
    const/16 v2, 0x57

    .line 1267
    .line 1268
    sget v15, Lcom/frostwire/jlibtorrent/swig/socks5_alert;->A:I

    .line 1269
    .line 1270
    move-object/from16 v156, v0

    .line 1271
    .line 1272
    const-string v0, "SOCKS5_ALERT"

    .line 1273
    .line 1274
    invoke-direct {v1, v0, v2, v15}, Lcom/frostwire/jlibtorrent/alerts/AlertType;-><init>(Ljava/lang/String;II)V

    .line 1275
    .line 1276
    .line 1277
    new-instance v0, Lcom/frostwire/jlibtorrent/alerts/AlertType;

    .line 1278
    .line 1279
    const/16 v2, 0x58

    .line 1280
    .line 1281
    const/4 v15, -0x1

    .line 1282
    move-object/from16 v157, v1

    .line 1283
    .line 1284
    const-string v1, "UNKNOWN"

    .line 1285
    .line 1286
    invoke-direct {v0, v1, v2, v15}, Lcom/frostwire/jlibtorrent/alerts/AlertType;-><init>(Ljava/lang/String;II)V

    .line 1287
    .line 1288
    .line 1289
    const/16 v1, 0x59

    .line 1290
    .line 1291
    new-array v1, v1, [Lcom/frostwire/jlibtorrent/alerts/AlertType;

    .line 1292
    .line 1293
    const/4 v2, 0x0

    .line 1294
    aput-object v29, v1, v2

    .line 1295
    .line 1296
    const/4 v2, 0x1

    .line 1297
    aput-object v31, v1, v2

    .line 1298
    .line 1299
    const/4 v2, 0x2

    .line 1300
    aput-object v33, v1, v2

    .line 1301
    .line 1302
    const/4 v2, 0x3

    .line 1303
    aput-object v4, v1, v2

    .line 1304
    .line 1305
    const/4 v2, 0x4

    .line 1306
    aput-object v6, v1, v2

    .line 1307
    .line 1308
    const/4 v2, 0x5

    .line 1309
    aput-object v8, v1, v2

    .line 1310
    .line 1311
    const/4 v2, 0x6

    .line 1312
    aput-object v10, v1, v2

    .line 1313
    .line 1314
    const/4 v2, 0x7

    .line 1315
    aput-object v12, v1, v2

    .line 1316
    .line 1317
    const/16 v2, 0x8

    .line 1318
    .line 1319
    aput-object v3, v1, v2

    .line 1320
    .line 1321
    const/16 v2, 0x9

    .line 1322
    .line 1323
    aput-object v5, v1, v2

    .line 1324
    .line 1325
    const/16 v2, 0xa

    .line 1326
    .line 1327
    aput-object v7, v1, v2

    .line 1328
    .line 1329
    const/16 v2, 0xb

    .line 1330
    .line 1331
    aput-object v9, v1, v2

    .line 1332
    .line 1333
    const/16 v2, 0xc

    .line 1334
    .line 1335
    aput-object v11, v1, v2

    .line 1336
    .line 1337
    const/16 v2, 0xd

    .line 1338
    .line 1339
    aput-object v13, v1, v2

    .line 1340
    .line 1341
    const/16 v2, 0xe

    .line 1342
    .line 1343
    aput-object v14, v1, v2

    .line 1344
    .line 1345
    const/16 v2, 0xf

    .line 1346
    .line 1347
    aput-object v35, v1, v2

    .line 1348
    .line 1349
    const/16 v2, 0x10

    .line 1350
    .line 1351
    aput-object v37, v1, v2

    .line 1352
    .line 1353
    const/16 v2, 0x11

    .line 1354
    .line 1355
    aput-object v39, v1, v2

    .line 1356
    .line 1357
    const/16 v2, 0x12

    .line 1358
    .line 1359
    aput-object v41, v1, v2

    .line 1360
    .line 1361
    const/16 v2, 0x13

    .line 1362
    .line 1363
    aput-object v43, v1, v2

    .line 1364
    .line 1365
    const/16 v2, 0x14

    .line 1366
    .line 1367
    aput-object v45, v1, v2

    .line 1368
    .line 1369
    const/16 v2, 0x15

    .line 1370
    .line 1371
    aput-object v47, v1, v2

    .line 1372
    .line 1373
    const/16 v2, 0x16

    .line 1374
    .line 1375
    aput-object v49, v1, v2

    .line 1376
    .line 1377
    const/16 v2, 0x17

    .line 1378
    .line 1379
    aput-object v51, v1, v2

    .line 1380
    .line 1381
    const/16 v2, 0x18

    .line 1382
    .line 1383
    aput-object v53, v1, v2

    .line 1384
    .line 1385
    const/16 v2, 0x19

    .line 1386
    .line 1387
    aput-object v55, v1, v2

    .line 1388
    .line 1389
    const/16 v2, 0x1a

    .line 1390
    .line 1391
    aput-object v57, v1, v2

    .line 1392
    .line 1393
    const/16 v2, 0x1b

    .line 1394
    .line 1395
    aput-object v59, v1, v2

    .line 1396
    .line 1397
    const/16 v2, 0x1c

    .line 1398
    .line 1399
    aput-object v61, v1, v2

    .line 1400
    .line 1401
    const/16 v2, 0x1d

    .line 1402
    .line 1403
    aput-object v63, v1, v2

    .line 1404
    .line 1405
    const/16 v2, 0x1e

    .line 1406
    .line 1407
    aput-object v65, v1, v2

    .line 1408
    .line 1409
    const/16 v2, 0x1f

    .line 1410
    .line 1411
    aput-object v67, v1, v2

    .line 1412
    .line 1413
    const/16 v2, 0x20

    .line 1414
    .line 1415
    aput-object v69, v1, v2

    .line 1416
    .line 1417
    const/16 v2, 0x21

    .line 1418
    .line 1419
    aput-object v71, v1, v2

    .line 1420
    .line 1421
    const/16 v2, 0x22

    .line 1422
    .line 1423
    aput-object v73, v1, v2

    .line 1424
    .line 1425
    const/16 v2, 0x23

    .line 1426
    .line 1427
    aput-object v75, v1, v2

    .line 1428
    .line 1429
    const/16 v2, 0x24

    .line 1430
    .line 1431
    aput-object v77, v1, v2

    .line 1432
    .line 1433
    const/16 v2, 0x25

    .line 1434
    .line 1435
    aput-object v79, v1, v2

    .line 1436
    .line 1437
    const/16 v2, 0x26

    .line 1438
    .line 1439
    aput-object v81, v1, v2

    .line 1440
    .line 1441
    const/16 v2, 0x27

    .line 1442
    .line 1443
    aput-object v83, v1, v2

    .line 1444
    .line 1445
    const/16 v2, 0x28

    .line 1446
    .line 1447
    aput-object v85, v1, v2

    .line 1448
    .line 1449
    const/16 v2, 0x29

    .line 1450
    .line 1451
    aput-object v87, v1, v2

    .line 1452
    .line 1453
    const/16 v2, 0x2a

    .line 1454
    .line 1455
    aput-object v89, v1, v2

    .line 1456
    .line 1457
    const/16 v2, 0x2b

    .line 1458
    .line 1459
    aput-object v91, v1, v2

    .line 1460
    .line 1461
    aput-object v93, v1, v92

    .line 1462
    .line 1463
    aput-object v95, v1, v94

    .line 1464
    .line 1465
    aput-object v97, v1, v96

    .line 1466
    .line 1467
    aput-object v99, v1, v98

    .line 1468
    .line 1469
    aput-object v101, v1, v100

    .line 1470
    .line 1471
    aput-object v103, v1, v102

    .line 1472
    .line 1473
    aput-object v105, v1, v104

    .line 1474
    .line 1475
    aput-object v107, v1, v106

    .line 1476
    .line 1477
    aput-object v109, v1, v108

    .line 1478
    .line 1479
    aput-object v111, v1, v110

    .line 1480
    .line 1481
    aput-object v113, v1, v112

    .line 1482
    .line 1483
    aput-object v115, v1, v114

    .line 1484
    .line 1485
    aput-object v117, v1, v116

    .line 1486
    .line 1487
    aput-object v119, v1, v118

    .line 1488
    .line 1489
    aput-object v121, v1, v120

    .line 1490
    .line 1491
    aput-object v123, v1, v122

    .line 1492
    .line 1493
    aput-object v125, v1, v124

    .line 1494
    .line 1495
    aput-object v127, v1, v126

    .line 1496
    .line 1497
    aput-object v129, v1, v128

    .line 1498
    .line 1499
    aput-object v131, v1, v130

    .line 1500
    .line 1501
    aput-object v133, v1, v132

    .line 1502
    .line 1503
    aput-object v135, v1, v134

    .line 1504
    .line 1505
    const/16 v2, 0x42

    .line 1506
    .line 1507
    aput-object v136, v1, v2

    .line 1508
    .line 1509
    const/16 v2, 0x43

    .line 1510
    .line 1511
    aput-object v137, v1, v2

    .line 1512
    .line 1513
    const/16 v2, 0x44

    .line 1514
    .line 1515
    aput-object v138, v1, v2

    .line 1516
    .line 1517
    const/16 v2, 0x45

    .line 1518
    .line 1519
    aput-object v139, v1, v2

    .line 1520
    .line 1521
    const/16 v2, 0x46

    .line 1522
    .line 1523
    aput-object v140, v1, v2

    .line 1524
    .line 1525
    const/16 v2, 0x47

    .line 1526
    .line 1527
    aput-object v141, v1, v2

    .line 1528
    .line 1529
    const/16 v2, 0x48

    .line 1530
    .line 1531
    aput-object v142, v1, v2

    .line 1532
    .line 1533
    const/16 v2, 0x49

    .line 1534
    .line 1535
    aput-object v143, v1, v2

    .line 1536
    .line 1537
    const/16 v2, 0x4a

    .line 1538
    .line 1539
    aput-object v144, v1, v2

    .line 1540
    .line 1541
    const/16 v2, 0x4b

    .line 1542
    .line 1543
    aput-object v145, v1, v2

    .line 1544
    .line 1545
    const/16 v2, 0x4c

    .line 1546
    .line 1547
    aput-object v146, v1, v2

    .line 1548
    .line 1549
    const/16 v2, 0x4d

    .line 1550
    .line 1551
    aput-object v147, v1, v2

    .line 1552
    .line 1553
    const/16 v2, 0x4e

    .line 1554
    .line 1555
    aput-object v148, v1, v2

    .line 1556
    .line 1557
    const/16 v2, 0x4f

    .line 1558
    .line 1559
    aput-object v149, v1, v2

    .line 1560
    .line 1561
    const/16 v2, 0x50

    .line 1562
    .line 1563
    aput-object v150, v1, v2

    .line 1564
    .line 1565
    const/16 v2, 0x51

    .line 1566
    .line 1567
    aput-object v151, v1, v2

    .line 1568
    .line 1569
    const/16 v2, 0x52

    .line 1570
    .line 1571
    aput-object v152, v1, v2

    .line 1572
    .line 1573
    const/16 v2, 0x53

    .line 1574
    .line 1575
    aput-object v153, v1, v2

    .line 1576
    .line 1577
    const/16 v2, 0x54

    .line 1578
    .line 1579
    aput-object v154, v1, v2

    .line 1580
    .line 1581
    const/16 v2, 0x55

    .line 1582
    .line 1583
    aput-object v155, v1, v2

    .line 1584
    .line 1585
    const/16 v2, 0x56

    .line 1586
    .line 1587
    aput-object v156, v1, v2

    .line 1588
    .line 1589
    const/16 v2, 0x57

    .line 1590
    .line 1591
    aput-object v157, v1, v2

    .line 1592
    .line 1593
    const/16 v2, 0x58

    .line 1594
    .line 1595
    aput-object v0, v1, v2

    .line 1596
    .line 1597
    sput-object v1, Lcom/frostwire/jlibtorrent/alerts/AlertType;->x:[Lcom/frostwire/jlibtorrent/alerts/AlertType;

    .line 1598
    .line 1599
    sget v1, Lcom/frostwire/jlibtorrent/alerts/Alerts;->a:I

    .line 1600
    .line 1601
    new-array v1, v1, [Lcom/frostwire/jlibtorrent/alerts/AlertType;

    .line 1602
    .line 1603
    aput-object v0, v1, v16

    .line 1604
    .line 1605
    aput-object v0, v1, v17

    .line 1606
    .line 1607
    aput-object v0, v1, v19

    .line 1608
    .line 1609
    aput-object v0, v1, v21

    .line 1610
    .line 1611
    aput-object v31, v1, v23

    .line 1612
    .line 1613
    aput-object v59, v1, v25

    .line 1614
    .line 1615
    aput-object v35, v1, v27

    .line 1616
    .line 1617
    aput-object v37, v1, v18

    .line 1618
    .line 1619
    aput-object v39, v1, v20

    .line 1620
    .line 1621
    aput-object v85, v1, v22

    .line 1622
    .line 1623
    aput-object v61, v1, v24

    .line 1624
    .line 1625
    aput-object v57, v1, v26

    .line 1626
    .line 1627
    aput-object v55, v1, v28

    .line 1628
    .line 1629
    aput-object v77, v1, v30

    .line 1630
    .line 1631
    aput-object v79, v1, v32

    .line 1632
    .line 1633
    aput-object v53, v1, v34

    .line 1634
    .line 1635
    aput-object v63, v1, v36

    .line 1636
    .line 1637
    aput-object v51, v1, v38

    .line 1638
    .line 1639
    aput-object v43, v1, v40

    .line 1640
    .line 1641
    aput-object v103, v1, v42

    .line 1642
    .line 1643
    aput-object v113, v1, v44

    .line 1644
    .line 1645
    aput-object v111, v1, v46

    .line 1646
    .line 1647
    aput-object v109, v1, v48

    .line 1648
    .line 1649
    aput-object v105, v1, v50

    .line 1650
    .line 1651
    aput-object v107, v1, v52

    .line 1652
    .line 1653
    aput-object v99, v1, v54

    .line 1654
    .line 1655
    aput-object v29, v1, v56

    .line 1656
    .line 1657
    aput-object v87, v1, v58

    .line 1658
    .line 1659
    aput-object v115, v1, v60

    .line 1660
    .line 1661
    aput-object v121, v1, v62

    .line 1662
    .line 1663
    aput-object v11, v1, v64

    .line 1664
    .line 1665
    aput-object v119, v1, v66

    .line 1666
    .line 1667
    aput-object v131, v1, v68

    .line 1668
    .line 1669
    aput-object v93, v1, v70

    .line 1670
    .line 1671
    aput-object v127, v1, v72

    .line 1672
    .line 1673
    aput-object v33, v1, v74

    .line 1674
    .line 1675
    aput-object v95, v1, v76

    .line 1676
    .line 1677
    aput-object v7, v1, v78

    .line 1678
    .line 1679
    aput-object v89, v1, v80

    .line 1680
    .line 1681
    aput-object v4, v1, v82

    .line 1682
    .line 1683
    aput-object v6, v1, v84

    .line 1684
    .line 1685
    aput-object v8, v1, v86

    .line 1686
    .line 1687
    aput-object v97, v1, v88

    .line 1688
    .line 1689
    aput-object v41, v1, v90

    .line 1690
    .line 1691
    aput-object v14, v1, v92

    .line 1692
    .line 1693
    aput-object v13, v1, v94

    .line 1694
    .line 1695
    aput-object v117, v1, v96

    .line 1696
    .line 1697
    aput-object v69, v1, v98

    .line 1698
    .line 1699
    aput-object v101, v1, v100

    .line 1700
    .line 1701
    aput-object v71, v1, v102

    .line 1702
    .line 1703
    aput-object v47, v1, v104

    .line 1704
    .line 1705
    aput-object v45, v1, v106

    .line 1706
    .line 1707
    aput-object v49, v1, v108

    .line 1708
    .line 1709
    aput-object v9, v1, v110

    .line 1710
    .line 1711
    aput-object v83, v1, v112

    .line 1712
    .line 1713
    aput-object v125, v1, v114

    .line 1714
    .line 1715
    aput-object v67, v1, v116

    .line 1716
    .line 1717
    aput-object v91, v1, v118

    .line 1718
    .line 1719
    aput-object v123, v1, v120

    .line 1720
    .line 1721
    aput-object v0, v1, v122

    .line 1722
    .line 1723
    aput-object v81, v1, v124

    .line 1724
    .line 1725
    aput-object v129, v1, v126

    .line 1726
    .line 1727
    aput-object v65, v1, v128

    .line 1728
    .line 1729
    aput-object v0, v1, v130

    .line 1730
    .line 1731
    aput-object v10, v1, v132

    .line 1732
    .line 1733
    aput-object v12, v1, v134

    .line 1734
    .line 1735
    const/16 v2, 0x42

    .line 1736
    .line 1737
    aput-object v3, v1, v2

    .line 1738
    .line 1739
    const/16 v2, 0x43

    .line 1740
    .line 1741
    aput-object v5, v1, v2

    .line 1742
    .line 1743
    const/16 v2, 0x44

    .line 1744
    .line 1745
    aput-object v73, v1, v2

    .line 1746
    .line 1747
    const/16 v2, 0x45

    .line 1748
    .line 1749
    aput-object v0, v1, v2

    .line 1750
    .line 1751
    const/16 v2, 0x46

    .line 1752
    .line 1753
    aput-object v75, v1, v2

    .line 1754
    .line 1755
    const/16 v2, 0x47

    .line 1756
    .line 1757
    aput-object v0, v1, v2

    .line 1758
    .line 1759
    const/16 v2, 0x48

    .line 1760
    .line 1761
    aput-object v0, v1, v2

    .line 1762
    .line 1763
    const/16 v0, 0x49

    .line 1764
    .line 1765
    aput-object v133, v1, v0

    .line 1766
    .line 1767
    const/16 v0, 0x4a

    .line 1768
    .line 1769
    aput-object v137, v1, v0

    .line 1770
    .line 1771
    const/16 v0, 0x4b

    .line 1772
    .line 1773
    aput-object v136, v1, v0

    .line 1774
    .line 1775
    const/16 v0, 0x4c

    .line 1776
    .line 1777
    aput-object v135, v1, v0

    .line 1778
    .line 1779
    const/16 v0, 0x4d

    .line 1780
    .line 1781
    aput-object v138, v1, v0

    .line 1782
    .line 1783
    const/16 v0, 0x4e

    .line 1784
    .line 1785
    aput-object v139, v1, v0

    .line 1786
    .line 1787
    const/16 v0, 0x4f

    .line 1788
    .line 1789
    aput-object v140, v1, v0

    .line 1790
    .line 1791
    const/16 v0, 0x50

    .line 1792
    .line 1793
    aput-object v141, v1, v0

    .line 1794
    .line 1795
    const/16 v0, 0x51

    .line 1796
    .line 1797
    aput-object v142, v1, v0

    .line 1798
    .line 1799
    const/16 v0, 0x52

    .line 1800
    .line 1801
    aput-object v143, v1, v0

    .line 1802
    .line 1803
    const/16 v0, 0x53

    .line 1804
    .line 1805
    aput-object v144, v1, v0

    .line 1806
    .line 1807
    const/16 v0, 0x54

    .line 1808
    .line 1809
    aput-object v145, v1, v0

    .line 1810
    .line 1811
    const/16 v0, 0x55

    .line 1812
    .line 1813
    aput-object v146, v1, v0

    .line 1814
    .line 1815
    const/16 v0, 0x56

    .line 1816
    .line 1817
    aput-object v147, v1, v0

    .line 1818
    .line 1819
    const/16 v0, 0x57

    .line 1820
    .line 1821
    aput-object v148, v1, v0

    .line 1822
    .line 1823
    const/16 v0, 0x58

    .line 1824
    .line 1825
    aput-object v149, v1, v0

    .line 1826
    .line 1827
    const/16 v0, 0x59

    .line 1828
    .line 1829
    aput-object v150, v1, v0

    .line 1830
    .line 1831
    const/16 v0, 0x5a

    .line 1832
    .line 1833
    aput-object v151, v1, v0

    .line 1834
    .line 1835
    const/16 v0, 0x5b

    .line 1836
    .line 1837
    aput-object v152, v1, v0

    .line 1838
    .line 1839
    const/16 v0, 0x5c

    .line 1840
    .line 1841
    aput-object v153, v1, v0

    .line 1842
    .line 1843
    const/16 v0, 0x5d

    .line 1844
    .line 1845
    aput-object v154, v1, v0

    .line 1846
    .line 1847
    const/16 v0, 0x5e

    .line 1848
    .line 1849
    aput-object v155, v1, v0

    .line 1850
    .line 1851
    const/16 v0, 0x5f

    .line 1852
    .line 1853
    aput-object v156, v1, v0

    .line 1854
    .line 1855
    const/16 v0, 0x60

    .line 1856
    .line 1857
    aput-object v157, v1, v0

    .line 1858
    .line 1859
    sput-object v1, Lcom/frostwire/jlibtorrent/alerts/AlertType;->w:[Lcom/frostwire/jlibtorrent/alerts/AlertType;

    .line 1860
    .line 1861
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput p3, p0, Lcom/frostwire/jlibtorrent/alerts/AlertType;->c:I

    .line 5
    .line 6
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/frostwire/jlibtorrent/alerts/AlertType;
    .locals 1

    .line 1
    const-class v0, Lcom/frostwire/jlibtorrent/alerts/AlertType;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/frostwire/jlibtorrent/alerts/AlertType;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/frostwire/jlibtorrent/alerts/AlertType;
    .locals 1

    .line 1
    sget-object v0, Lcom/frostwire/jlibtorrent/alerts/AlertType;->x:[Lcom/frostwire/jlibtorrent/alerts/AlertType;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/frostwire/jlibtorrent/alerts/AlertType;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/frostwire/jlibtorrent/alerts/AlertType;

    .line 8
    .line 9
    return-object v0
.end method
