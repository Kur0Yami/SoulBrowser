.class public final Lcom/frostwire/jlibtorrent/swig/settings_pack$int_types;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/frostwire/jlibtorrent/swig/settings_pack;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "int_types"
.end annotation


# static fields
.field public static final c:Lcom/frostwire/jlibtorrent/swig/settings_pack$int_types;

.field public static final d:Lcom/frostwire/jlibtorrent/swig/settings_pack$int_types;

.field public static final e:Lcom/frostwire/jlibtorrent/swig/settings_pack$int_types;

.field public static final f:Lcom/frostwire/jlibtorrent/swig/settings_pack$int_types;

.field public static final g:Lcom/frostwire/jlibtorrent/swig/settings_pack$int_types;

.field public static h:I


# instance fields
.field public final a:I

.field public final b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/frostwire/jlibtorrent/swig/settings_pack$int_types;

    .line 2
    .line 3
    const-string v1, "tracker_completion_timeout"

    .line 4
    .line 5
    invoke-static {}, Lcom/frostwire/jlibtorrent/swig/libtorrent_jni;->settings_pack_tracker_completion_timeout_get()I

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    invoke-direct {v0, v1, v2}, Lcom/frostwire/jlibtorrent/swig/settings_pack$int_types;-><init>(Ljava/lang/String;I)V

    .line 10
    .line 11
    .line 12
    new-instance v0, Lcom/frostwire/jlibtorrent/swig/settings_pack$int_types;

    .line 13
    .line 14
    const-string v1, "tracker_receive_timeout"

    .line 15
    .line 16
    invoke-direct {v0, v1}, Lcom/frostwire/jlibtorrent/swig/settings_pack$int_types;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    new-instance v0, Lcom/frostwire/jlibtorrent/swig/settings_pack$int_types;

    .line 20
    .line 21
    const-string v1, "stop_tracker_timeout"

    .line 22
    .line 23
    invoke-direct {v0, v1}, Lcom/frostwire/jlibtorrent/swig/settings_pack$int_types;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    new-instance v0, Lcom/frostwire/jlibtorrent/swig/settings_pack$int_types;

    .line 27
    .line 28
    const-string v1, "tracker_maximum_response_length"

    .line 29
    .line 30
    invoke-direct {v0, v1}, Lcom/frostwire/jlibtorrent/swig/settings_pack$int_types;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    new-instance v0, Lcom/frostwire/jlibtorrent/swig/settings_pack$int_types;

    .line 34
    .line 35
    const-string v1, "piece_timeout"

    .line 36
    .line 37
    invoke-direct {v0, v1}, Lcom/frostwire/jlibtorrent/swig/settings_pack$int_types;-><init>(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    new-instance v0, Lcom/frostwire/jlibtorrent/swig/settings_pack$int_types;

    .line 41
    .line 42
    const-string v1, "request_timeout"

    .line 43
    .line 44
    invoke-direct {v0, v1}, Lcom/frostwire/jlibtorrent/swig/settings_pack$int_types;-><init>(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    new-instance v0, Lcom/frostwire/jlibtorrent/swig/settings_pack$int_types;

    .line 48
    .line 49
    const-string v1, "request_queue_time"

    .line 50
    .line 51
    invoke-direct {v0, v1}, Lcom/frostwire/jlibtorrent/swig/settings_pack$int_types;-><init>(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    new-instance v0, Lcom/frostwire/jlibtorrent/swig/settings_pack$int_types;

    .line 55
    .line 56
    const-string v1, "max_allowed_in_request_queue"

    .line 57
    .line 58
    invoke-direct {v0, v1}, Lcom/frostwire/jlibtorrent/swig/settings_pack$int_types;-><init>(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    new-instance v0, Lcom/frostwire/jlibtorrent/swig/settings_pack$int_types;

    .line 62
    .line 63
    const-string v1, "max_out_request_queue"

    .line 64
    .line 65
    invoke-direct {v0, v1}, Lcom/frostwire/jlibtorrent/swig/settings_pack$int_types;-><init>(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    new-instance v0, Lcom/frostwire/jlibtorrent/swig/settings_pack$int_types;

    .line 69
    .line 70
    const-string v1, "whole_pieces_threshold"

    .line 71
    .line 72
    invoke-direct {v0, v1}, Lcom/frostwire/jlibtorrent/swig/settings_pack$int_types;-><init>(Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    new-instance v0, Lcom/frostwire/jlibtorrent/swig/settings_pack$int_types;

    .line 76
    .line 77
    const-string v1, "peer_timeout"

    .line 78
    .line 79
    invoke-direct {v0, v1}, Lcom/frostwire/jlibtorrent/swig/settings_pack$int_types;-><init>(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    new-instance v0, Lcom/frostwire/jlibtorrent/swig/settings_pack$int_types;

    .line 83
    .line 84
    const-string v1, "urlseed_timeout"

    .line 85
    .line 86
    invoke-direct {v0, v1}, Lcom/frostwire/jlibtorrent/swig/settings_pack$int_types;-><init>(Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    new-instance v0, Lcom/frostwire/jlibtorrent/swig/settings_pack$int_types;

    .line 90
    .line 91
    const-string v1, "urlseed_pipeline_size"

    .line 92
    .line 93
    invoke-direct {v0, v1}, Lcom/frostwire/jlibtorrent/swig/settings_pack$int_types;-><init>(Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    new-instance v0, Lcom/frostwire/jlibtorrent/swig/settings_pack$int_types;

    .line 97
    .line 98
    const-string v1, "urlseed_wait_retry"

    .line 99
    .line 100
    invoke-direct {v0, v1}, Lcom/frostwire/jlibtorrent/swig/settings_pack$int_types;-><init>(Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    new-instance v0, Lcom/frostwire/jlibtorrent/swig/settings_pack$int_types;

    .line 104
    .line 105
    const-string v1, "file_pool_size"

    .line 106
    .line 107
    invoke-direct {v0, v1}, Lcom/frostwire/jlibtorrent/swig/settings_pack$int_types;-><init>(Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    new-instance v0, Lcom/frostwire/jlibtorrent/swig/settings_pack$int_types;

    .line 111
    .line 112
    const-string v1, "max_failcount"

    .line 113
    .line 114
    invoke-direct {v0, v1}, Lcom/frostwire/jlibtorrent/swig/settings_pack$int_types;-><init>(Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    new-instance v0, Lcom/frostwire/jlibtorrent/swig/settings_pack$int_types;

    .line 118
    .line 119
    const-string v1, "min_reconnect_time"

    .line 120
    .line 121
    invoke-direct {v0, v1}, Lcom/frostwire/jlibtorrent/swig/settings_pack$int_types;-><init>(Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    new-instance v0, Lcom/frostwire/jlibtorrent/swig/settings_pack$int_types;

    .line 125
    .line 126
    const-string v1, "peer_connect_timeout"

    .line 127
    .line 128
    invoke-direct {v0, v1}, Lcom/frostwire/jlibtorrent/swig/settings_pack$int_types;-><init>(Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    new-instance v0, Lcom/frostwire/jlibtorrent/swig/settings_pack$int_types;

    .line 132
    .line 133
    const-string v1, "connection_speed"

    .line 134
    .line 135
    invoke-direct {v0, v1}, Lcom/frostwire/jlibtorrent/swig/settings_pack$int_types;-><init>(Ljava/lang/String;)V

    .line 136
    .line 137
    .line 138
    new-instance v0, Lcom/frostwire/jlibtorrent/swig/settings_pack$int_types;

    .line 139
    .line 140
    const-string v1, "inactivity_timeout"

    .line 141
    .line 142
    invoke-direct {v0, v1}, Lcom/frostwire/jlibtorrent/swig/settings_pack$int_types;-><init>(Ljava/lang/String;)V

    .line 143
    .line 144
    .line 145
    new-instance v0, Lcom/frostwire/jlibtorrent/swig/settings_pack$int_types;

    .line 146
    .line 147
    const-string v1, "unchoke_interval"

    .line 148
    .line 149
    invoke-direct {v0, v1}, Lcom/frostwire/jlibtorrent/swig/settings_pack$int_types;-><init>(Ljava/lang/String;)V

    .line 150
    .line 151
    .line 152
    new-instance v0, Lcom/frostwire/jlibtorrent/swig/settings_pack$int_types;

    .line 153
    .line 154
    const-string v1, "optimistic_unchoke_interval"

    .line 155
    .line 156
    invoke-direct {v0, v1}, Lcom/frostwire/jlibtorrent/swig/settings_pack$int_types;-><init>(Ljava/lang/String;)V

    .line 157
    .line 158
    .line 159
    new-instance v0, Lcom/frostwire/jlibtorrent/swig/settings_pack$int_types;

    .line 160
    .line 161
    const-string v1, "num_want"

    .line 162
    .line 163
    invoke-direct {v0, v1}, Lcom/frostwire/jlibtorrent/swig/settings_pack$int_types;-><init>(Ljava/lang/String;)V

    .line 164
    .line 165
    .line 166
    new-instance v0, Lcom/frostwire/jlibtorrent/swig/settings_pack$int_types;

    .line 167
    .line 168
    const-string v1, "initial_picker_threshold"

    .line 169
    .line 170
    invoke-direct {v0, v1}, Lcom/frostwire/jlibtorrent/swig/settings_pack$int_types;-><init>(Ljava/lang/String;)V

    .line 171
    .line 172
    .line 173
    new-instance v0, Lcom/frostwire/jlibtorrent/swig/settings_pack$int_types;

    .line 174
    .line 175
    const-string v1, "allowed_fast_set_size"

    .line 176
    .line 177
    invoke-direct {v0, v1}, Lcom/frostwire/jlibtorrent/swig/settings_pack$int_types;-><init>(Ljava/lang/String;)V

    .line 178
    .line 179
    .line 180
    new-instance v0, Lcom/frostwire/jlibtorrent/swig/settings_pack$int_types;

    .line 181
    .line 182
    const-string v1, "suggest_mode"

    .line 183
    .line 184
    invoke-direct {v0, v1}, Lcom/frostwire/jlibtorrent/swig/settings_pack$int_types;-><init>(Ljava/lang/String;)V

    .line 185
    .line 186
    .line 187
    new-instance v0, Lcom/frostwire/jlibtorrent/swig/settings_pack$int_types;

    .line 188
    .line 189
    const-string v1, "max_queued_disk_bytes"

    .line 190
    .line 191
    invoke-direct {v0, v1}, Lcom/frostwire/jlibtorrent/swig/settings_pack$int_types;-><init>(Ljava/lang/String;)V

    .line 192
    .line 193
    .line 194
    new-instance v0, Lcom/frostwire/jlibtorrent/swig/settings_pack$int_types;

    .line 195
    .line 196
    const-string v1, "handshake_timeout"

    .line 197
    .line 198
    invoke-direct {v0, v1}, Lcom/frostwire/jlibtorrent/swig/settings_pack$int_types;-><init>(Ljava/lang/String;)V

    .line 199
    .line 200
    .line 201
    new-instance v0, Lcom/frostwire/jlibtorrent/swig/settings_pack$int_types;

    .line 202
    .line 203
    const-string v1, "send_buffer_low_watermark"

    .line 204
    .line 205
    invoke-direct {v0, v1}, Lcom/frostwire/jlibtorrent/swig/settings_pack$int_types;-><init>(Ljava/lang/String;)V

    .line 206
    .line 207
    .line 208
    new-instance v0, Lcom/frostwire/jlibtorrent/swig/settings_pack$int_types;

    .line 209
    .line 210
    const-string v1, "send_buffer_watermark"

    .line 211
    .line 212
    invoke-direct {v0, v1}, Lcom/frostwire/jlibtorrent/swig/settings_pack$int_types;-><init>(Ljava/lang/String;)V

    .line 213
    .line 214
    .line 215
    new-instance v0, Lcom/frostwire/jlibtorrent/swig/settings_pack$int_types;

    .line 216
    .line 217
    const-string v1, "send_buffer_watermark_factor"

    .line 218
    .line 219
    invoke-direct {v0, v1}, Lcom/frostwire/jlibtorrent/swig/settings_pack$int_types;-><init>(Ljava/lang/String;)V

    .line 220
    .line 221
    .line 222
    new-instance v0, Lcom/frostwire/jlibtorrent/swig/settings_pack$int_types;

    .line 223
    .line 224
    const-string v1, "choking_algorithm"

    .line 225
    .line 226
    invoke-direct {v0, v1}, Lcom/frostwire/jlibtorrent/swig/settings_pack$int_types;-><init>(Ljava/lang/String;)V

    .line 227
    .line 228
    .line 229
    new-instance v0, Lcom/frostwire/jlibtorrent/swig/settings_pack$int_types;

    .line 230
    .line 231
    const-string v1, "seed_choking_algorithm"

    .line 232
    .line 233
    invoke-direct {v0, v1}, Lcom/frostwire/jlibtorrent/swig/settings_pack$int_types;-><init>(Ljava/lang/String;)V

    .line 234
    .line 235
    .line 236
    new-instance v0, Lcom/frostwire/jlibtorrent/swig/settings_pack$int_types;

    .line 237
    .line 238
    const-string v1, "cache_size"

    .line 239
    .line 240
    invoke-direct {v0, v1}, Lcom/frostwire/jlibtorrent/swig/settings_pack$int_types;-><init>(Ljava/lang/String;)V

    .line 241
    .line 242
    .line 243
    new-instance v0, Lcom/frostwire/jlibtorrent/swig/settings_pack$int_types;

    .line 244
    .line 245
    const-string v1, "cache_expiry"

    .line 246
    .line 247
    invoke-static {}, Lcom/frostwire/jlibtorrent/swig/libtorrent_jni;->settings_pack_cache_expiry_get()I

    .line 248
    .line 249
    .line 250
    move-result v2

    .line 251
    invoke-direct {v0, v1, v2}, Lcom/frostwire/jlibtorrent/swig/settings_pack$int_types;-><init>(Ljava/lang/String;I)V

    .line 252
    .line 253
    .line 254
    new-instance v0, Lcom/frostwire/jlibtorrent/swig/settings_pack$int_types;

    .line 255
    .line 256
    const-string v1, "disk_io_write_mode"

    .line 257
    .line 258
    invoke-direct {v0, v1}, Lcom/frostwire/jlibtorrent/swig/settings_pack$int_types;-><init>(Ljava/lang/String;)V

    .line 259
    .line 260
    .line 261
    new-instance v0, Lcom/frostwire/jlibtorrent/swig/settings_pack$int_types;

    .line 262
    .line 263
    const-string v1, "disk_io_read_mode"

    .line 264
    .line 265
    invoke-direct {v0, v1}, Lcom/frostwire/jlibtorrent/swig/settings_pack$int_types;-><init>(Ljava/lang/String;)V

    .line 266
    .line 267
    .line 268
    new-instance v0, Lcom/frostwire/jlibtorrent/swig/settings_pack$int_types;

    .line 269
    .line 270
    const-string v1, "outgoing_port"

    .line 271
    .line 272
    invoke-direct {v0, v1}, Lcom/frostwire/jlibtorrent/swig/settings_pack$int_types;-><init>(Ljava/lang/String;)V

    .line 273
    .line 274
    .line 275
    new-instance v0, Lcom/frostwire/jlibtorrent/swig/settings_pack$int_types;

    .line 276
    .line 277
    const-string v1, "num_outgoing_ports"

    .line 278
    .line 279
    invoke-direct {v0, v1}, Lcom/frostwire/jlibtorrent/swig/settings_pack$int_types;-><init>(Ljava/lang/String;)V

    .line 280
    .line 281
    .line 282
    new-instance v0, Lcom/frostwire/jlibtorrent/swig/settings_pack$int_types;

    .line 283
    .line 284
    const-string v1, "peer_dscp"

    .line 285
    .line 286
    invoke-direct {v0, v1}, Lcom/frostwire/jlibtorrent/swig/settings_pack$int_types;-><init>(Ljava/lang/String;)V

    .line 287
    .line 288
    .line 289
    new-instance v0, Lcom/frostwire/jlibtorrent/swig/settings_pack$int_types;

    .line 290
    .line 291
    const-string v1, "peer_tos"

    .line 292
    .line 293
    invoke-static {}, Lcom/frostwire/jlibtorrent/swig/libtorrent_jni;->settings_pack_peer_tos_get()I

    .line 294
    .line 295
    .line 296
    move-result v2

    .line 297
    invoke-direct {v0, v1, v2}, Lcom/frostwire/jlibtorrent/swig/settings_pack$int_types;-><init>(Ljava/lang/String;I)V

    .line 298
    .line 299
    .line 300
    new-instance v0, Lcom/frostwire/jlibtorrent/swig/settings_pack$int_types;

    .line 301
    .line 302
    const-string v1, "active_downloads"

    .line 303
    .line 304
    invoke-direct {v0, v1}, Lcom/frostwire/jlibtorrent/swig/settings_pack$int_types;-><init>(Ljava/lang/String;)V

    .line 305
    .line 306
    .line 307
    new-instance v0, Lcom/frostwire/jlibtorrent/swig/settings_pack$int_types;

    .line 308
    .line 309
    const-string v1, "active_seeds"

    .line 310
    .line 311
    invoke-direct {v0, v1}, Lcom/frostwire/jlibtorrent/swig/settings_pack$int_types;-><init>(Ljava/lang/String;)V

    .line 312
    .line 313
    .line 314
    new-instance v0, Lcom/frostwire/jlibtorrent/swig/settings_pack$int_types;

    .line 315
    .line 316
    const-string v1, "active_checking"

    .line 317
    .line 318
    invoke-direct {v0, v1}, Lcom/frostwire/jlibtorrent/swig/settings_pack$int_types;-><init>(Ljava/lang/String;)V

    .line 319
    .line 320
    .line 321
    new-instance v0, Lcom/frostwire/jlibtorrent/swig/settings_pack$int_types;

    .line 322
    .line 323
    const-string v1, "active_dht_limit"

    .line 324
    .line 325
    invoke-direct {v0, v1}, Lcom/frostwire/jlibtorrent/swig/settings_pack$int_types;-><init>(Ljava/lang/String;)V

    .line 326
    .line 327
    .line 328
    sput-object v0, Lcom/frostwire/jlibtorrent/swig/settings_pack$int_types;->c:Lcom/frostwire/jlibtorrent/swig/settings_pack$int_types;

    .line 329
    .line 330
    new-instance v0, Lcom/frostwire/jlibtorrent/swig/settings_pack$int_types;

    .line 331
    .line 332
    const-string v1, "active_tracker_limit"

    .line 333
    .line 334
    invoke-direct {v0, v1}, Lcom/frostwire/jlibtorrent/swig/settings_pack$int_types;-><init>(Ljava/lang/String;)V

    .line 335
    .line 336
    .line 337
    new-instance v0, Lcom/frostwire/jlibtorrent/swig/settings_pack$int_types;

    .line 338
    .line 339
    const-string v1, "active_lsd_limit"

    .line 340
    .line 341
    invoke-direct {v0, v1}, Lcom/frostwire/jlibtorrent/swig/settings_pack$int_types;-><init>(Ljava/lang/String;)V

    .line 342
    .line 343
    .line 344
    new-instance v0, Lcom/frostwire/jlibtorrent/swig/settings_pack$int_types;

    .line 345
    .line 346
    const-string v1, "active_limit"

    .line 347
    .line 348
    invoke-direct {v0, v1}, Lcom/frostwire/jlibtorrent/swig/settings_pack$int_types;-><init>(Ljava/lang/String;)V

    .line 349
    .line 350
    .line 351
    new-instance v0, Lcom/frostwire/jlibtorrent/swig/settings_pack$int_types;

    .line 352
    .line 353
    const-string v1, "auto_manage_interval"

    .line 354
    .line 355
    invoke-static {}, Lcom/frostwire/jlibtorrent/swig/libtorrent_jni;->settings_pack_auto_manage_interval_get()I

    .line 356
    .line 357
    .line 358
    move-result v2

    .line 359
    invoke-direct {v0, v1, v2}, Lcom/frostwire/jlibtorrent/swig/settings_pack$int_types;-><init>(Ljava/lang/String;I)V

    .line 360
    .line 361
    .line 362
    new-instance v0, Lcom/frostwire/jlibtorrent/swig/settings_pack$int_types;

    .line 363
    .line 364
    const-string v1, "seed_time_limit"

    .line 365
    .line 366
    invoke-direct {v0, v1}, Lcom/frostwire/jlibtorrent/swig/settings_pack$int_types;-><init>(Ljava/lang/String;)V

    .line 367
    .line 368
    .line 369
    new-instance v0, Lcom/frostwire/jlibtorrent/swig/settings_pack$int_types;

    .line 370
    .line 371
    const-string v1, "auto_scrape_interval"

    .line 372
    .line 373
    invoke-direct {v0, v1}, Lcom/frostwire/jlibtorrent/swig/settings_pack$int_types;-><init>(Ljava/lang/String;)V

    .line 374
    .line 375
    .line 376
    new-instance v0, Lcom/frostwire/jlibtorrent/swig/settings_pack$int_types;

    .line 377
    .line 378
    const-string v1, "auto_scrape_min_interval"

    .line 379
    .line 380
    invoke-direct {v0, v1}, Lcom/frostwire/jlibtorrent/swig/settings_pack$int_types;-><init>(Ljava/lang/String;)V

    .line 381
    .line 382
    .line 383
    new-instance v0, Lcom/frostwire/jlibtorrent/swig/settings_pack$int_types;

    .line 384
    .line 385
    const-string v1, "max_peerlist_size"

    .line 386
    .line 387
    invoke-direct {v0, v1}, Lcom/frostwire/jlibtorrent/swig/settings_pack$int_types;-><init>(Ljava/lang/String;)V

    .line 388
    .line 389
    .line 390
    new-instance v0, Lcom/frostwire/jlibtorrent/swig/settings_pack$int_types;

    .line 391
    .line 392
    const-string v1, "max_paused_peerlist_size"

    .line 393
    .line 394
    invoke-direct {v0, v1}, Lcom/frostwire/jlibtorrent/swig/settings_pack$int_types;-><init>(Ljava/lang/String;)V

    .line 395
    .line 396
    .line 397
    new-instance v0, Lcom/frostwire/jlibtorrent/swig/settings_pack$int_types;

    .line 398
    .line 399
    const-string v1, "min_announce_interval"

    .line 400
    .line 401
    invoke-direct {v0, v1}, Lcom/frostwire/jlibtorrent/swig/settings_pack$int_types;-><init>(Ljava/lang/String;)V

    .line 402
    .line 403
    .line 404
    new-instance v0, Lcom/frostwire/jlibtorrent/swig/settings_pack$int_types;

    .line 405
    .line 406
    const-string v1, "auto_manage_startup"

    .line 407
    .line 408
    invoke-direct {v0, v1}, Lcom/frostwire/jlibtorrent/swig/settings_pack$int_types;-><init>(Ljava/lang/String;)V

    .line 409
    .line 410
    .line 411
    new-instance v0, Lcom/frostwire/jlibtorrent/swig/settings_pack$int_types;

    .line 412
    .line 413
    const-string v1, "seeding_piece_quota"

    .line 414
    .line 415
    invoke-direct {v0, v1}, Lcom/frostwire/jlibtorrent/swig/settings_pack$int_types;-><init>(Ljava/lang/String;)V

    .line 416
    .line 417
    .line 418
    new-instance v0, Lcom/frostwire/jlibtorrent/swig/settings_pack$int_types;

    .line 419
    .line 420
    const-string v1, "max_rejects"

    .line 421
    .line 422
    invoke-direct {v0, v1}, Lcom/frostwire/jlibtorrent/swig/settings_pack$int_types;-><init>(Ljava/lang/String;)V

    .line 423
    .line 424
    .line 425
    new-instance v0, Lcom/frostwire/jlibtorrent/swig/settings_pack$int_types;

    .line 426
    .line 427
    const-string v1, "recv_socket_buffer_size"

    .line 428
    .line 429
    invoke-direct {v0, v1}, Lcom/frostwire/jlibtorrent/swig/settings_pack$int_types;-><init>(Ljava/lang/String;)V

    .line 430
    .line 431
    .line 432
    new-instance v0, Lcom/frostwire/jlibtorrent/swig/settings_pack$int_types;

    .line 433
    .line 434
    const-string v1, "send_socket_buffer_size"

    .line 435
    .line 436
    invoke-direct {v0, v1}, Lcom/frostwire/jlibtorrent/swig/settings_pack$int_types;-><init>(Ljava/lang/String;)V

    .line 437
    .line 438
    .line 439
    new-instance v0, Lcom/frostwire/jlibtorrent/swig/settings_pack$int_types;

    .line 440
    .line 441
    const-string v1, "max_peer_recv_buffer_size"

    .line 442
    .line 443
    invoke-direct {v0, v1}, Lcom/frostwire/jlibtorrent/swig/settings_pack$int_types;-><init>(Ljava/lang/String;)V

    .line 444
    .line 445
    .line 446
    new-instance v0, Lcom/frostwire/jlibtorrent/swig/settings_pack$int_types;

    .line 447
    .line 448
    const-string v1, "read_cache_line_size"

    .line 449
    .line 450
    invoke-static {}, Lcom/frostwire/jlibtorrent/swig/libtorrent_jni;->settings_pack_read_cache_line_size_get()I

    .line 451
    .line 452
    .line 453
    move-result v2

    .line 454
    invoke-direct {v0, v1, v2}, Lcom/frostwire/jlibtorrent/swig/settings_pack$int_types;-><init>(Ljava/lang/String;I)V

    .line 455
    .line 456
    .line 457
    new-instance v0, Lcom/frostwire/jlibtorrent/swig/settings_pack$int_types;

    .line 458
    .line 459
    const-string v1, "write_cache_line_size"

    .line 460
    .line 461
    invoke-direct {v0, v1}, Lcom/frostwire/jlibtorrent/swig/settings_pack$int_types;-><init>(Ljava/lang/String;)V

    .line 462
    .line 463
    .line 464
    new-instance v0, Lcom/frostwire/jlibtorrent/swig/settings_pack$int_types;

    .line 465
    .line 466
    const-string v1, "optimistic_disk_retry"

    .line 467
    .line 468
    invoke-direct {v0, v1}, Lcom/frostwire/jlibtorrent/swig/settings_pack$int_types;-><init>(Ljava/lang/String;)V

    .line 469
    .line 470
    .line 471
    new-instance v0, Lcom/frostwire/jlibtorrent/swig/settings_pack$int_types;

    .line 472
    .line 473
    const-string v1, "max_suggest_pieces"

    .line 474
    .line 475
    invoke-direct {v0, v1}, Lcom/frostwire/jlibtorrent/swig/settings_pack$int_types;-><init>(Ljava/lang/String;)V

    .line 476
    .line 477
    .line 478
    new-instance v0, Lcom/frostwire/jlibtorrent/swig/settings_pack$int_types;

    .line 479
    .line 480
    const-string v1, "local_service_announce_interval"

    .line 481
    .line 482
    invoke-direct {v0, v1}, Lcom/frostwire/jlibtorrent/swig/settings_pack$int_types;-><init>(Ljava/lang/String;)V

    .line 483
    .line 484
    .line 485
    new-instance v0, Lcom/frostwire/jlibtorrent/swig/settings_pack$int_types;

    .line 486
    .line 487
    const-string v1, "dht_announce_interval"

    .line 488
    .line 489
    invoke-direct {v0, v1}, Lcom/frostwire/jlibtorrent/swig/settings_pack$int_types;-><init>(Ljava/lang/String;)V

    .line 490
    .line 491
    .line 492
    new-instance v0, Lcom/frostwire/jlibtorrent/swig/settings_pack$int_types;

    .line 493
    .line 494
    const-string v1, "udp_tracker_token_expiry"

    .line 495
    .line 496
    invoke-direct {v0, v1}, Lcom/frostwire/jlibtorrent/swig/settings_pack$int_types;-><init>(Ljava/lang/String;)V

    .line 497
    .line 498
    .line 499
    new-instance v0, Lcom/frostwire/jlibtorrent/swig/settings_pack$int_types;

    .line 500
    .line 501
    const-string v1, "num_optimistic_unchoke_slots"

    .line 502
    .line 503
    invoke-static {}, Lcom/frostwire/jlibtorrent/swig/libtorrent_jni;->settings_pack_num_optimistic_unchoke_slots_get()I

    .line 504
    .line 505
    .line 506
    move-result v2

    .line 507
    invoke-direct {v0, v1, v2}, Lcom/frostwire/jlibtorrent/swig/settings_pack$int_types;-><init>(Ljava/lang/String;I)V

    .line 508
    .line 509
    .line 510
    new-instance v0, Lcom/frostwire/jlibtorrent/swig/settings_pack$int_types;

    .line 511
    .line 512
    const-string v1, "deprecated_default_est_reciprocation_rate"

    .line 513
    .line 514
    invoke-direct {v0, v1}, Lcom/frostwire/jlibtorrent/swig/settings_pack$int_types;-><init>(Ljava/lang/String;)V

    .line 515
    .line 516
    .line 517
    new-instance v0, Lcom/frostwire/jlibtorrent/swig/settings_pack$int_types;

    .line 518
    .line 519
    const-string v1, "deprecated_increase_est_reciprocation_rate"

    .line 520
    .line 521
    invoke-direct {v0, v1}, Lcom/frostwire/jlibtorrent/swig/settings_pack$int_types;-><init>(Ljava/lang/String;)V

    .line 522
    .line 523
    .line 524
    new-instance v0, Lcom/frostwire/jlibtorrent/swig/settings_pack$int_types;

    .line 525
    .line 526
    const-string v1, "deprecated_decrease_est_reciprocation_rate"

    .line 527
    .line 528
    invoke-direct {v0, v1}, Lcom/frostwire/jlibtorrent/swig/settings_pack$int_types;-><init>(Ljava/lang/String;)V

    .line 529
    .line 530
    .line 531
    new-instance v0, Lcom/frostwire/jlibtorrent/swig/settings_pack$int_types;

    .line 532
    .line 533
    const-string v1, "max_pex_peers"

    .line 534
    .line 535
    invoke-direct {v0, v1}, Lcom/frostwire/jlibtorrent/swig/settings_pack$int_types;-><init>(Ljava/lang/String;)V

    .line 536
    .line 537
    .line 538
    new-instance v0, Lcom/frostwire/jlibtorrent/swig/settings_pack$int_types;

    .line 539
    .line 540
    const-string v1, "tick_interval"

    .line 541
    .line 542
    invoke-direct {v0, v1}, Lcom/frostwire/jlibtorrent/swig/settings_pack$int_types;-><init>(Ljava/lang/String;)V

    .line 543
    .line 544
    .line 545
    new-instance v0, Lcom/frostwire/jlibtorrent/swig/settings_pack$int_types;

    .line 546
    .line 547
    const-string v1, "share_mode_target"

    .line 548
    .line 549
    invoke-direct {v0, v1}, Lcom/frostwire/jlibtorrent/swig/settings_pack$int_types;-><init>(Ljava/lang/String;)V

    .line 550
    .line 551
    .line 552
    new-instance v0, Lcom/frostwire/jlibtorrent/swig/settings_pack$int_types;

    .line 553
    .line 554
    const-string v1, "upload_rate_limit"

    .line 555
    .line 556
    invoke-direct {v0, v1}, Lcom/frostwire/jlibtorrent/swig/settings_pack$int_types;-><init>(Ljava/lang/String;)V

    .line 557
    .line 558
    .line 559
    sput-object v0, Lcom/frostwire/jlibtorrent/swig/settings_pack$int_types;->d:Lcom/frostwire/jlibtorrent/swig/settings_pack$int_types;

    .line 560
    .line 561
    new-instance v0, Lcom/frostwire/jlibtorrent/swig/settings_pack$int_types;

    .line 562
    .line 563
    const-string v1, "download_rate_limit"

    .line 564
    .line 565
    invoke-direct {v0, v1}, Lcom/frostwire/jlibtorrent/swig/settings_pack$int_types;-><init>(Ljava/lang/String;)V

    .line 566
    .line 567
    .line 568
    sput-object v0, Lcom/frostwire/jlibtorrent/swig/settings_pack$int_types;->e:Lcom/frostwire/jlibtorrent/swig/settings_pack$int_types;

    .line 569
    .line 570
    new-instance v0, Lcom/frostwire/jlibtorrent/swig/settings_pack$int_types;

    .line 571
    .line 572
    const-string v1, "dht_upload_rate_limit"

    .line 573
    .line 574
    invoke-static {}, Lcom/frostwire/jlibtorrent/swig/libtorrent_jni;->settings_pack_dht_upload_rate_limit_get()I

    .line 575
    .line 576
    .line 577
    move-result v2

    .line 578
    invoke-direct {v0, v1, v2}, Lcom/frostwire/jlibtorrent/swig/settings_pack$int_types;-><init>(Ljava/lang/String;I)V

    .line 579
    .line 580
    .line 581
    new-instance v0, Lcom/frostwire/jlibtorrent/swig/settings_pack$int_types;

    .line 582
    .line 583
    const-string v1, "unchoke_slots_limit"

    .line 584
    .line 585
    invoke-direct {v0, v1}, Lcom/frostwire/jlibtorrent/swig/settings_pack$int_types;-><init>(Ljava/lang/String;)V

    .line 586
    .line 587
    .line 588
    new-instance v0, Lcom/frostwire/jlibtorrent/swig/settings_pack$int_types;

    .line 589
    .line 590
    const-string v1, "connections_limit"

    .line 591
    .line 592
    invoke-static {}, Lcom/frostwire/jlibtorrent/swig/libtorrent_jni;->settings_pack_connections_limit_get()I

    .line 593
    .line 594
    .line 595
    move-result v2

    .line 596
    invoke-direct {v0, v1, v2}, Lcom/frostwire/jlibtorrent/swig/settings_pack$int_types;-><init>(Ljava/lang/String;I)V

    .line 597
    .line 598
    .line 599
    sput-object v0, Lcom/frostwire/jlibtorrent/swig/settings_pack$int_types;->f:Lcom/frostwire/jlibtorrent/swig/settings_pack$int_types;

    .line 600
    .line 601
    new-instance v0, Lcom/frostwire/jlibtorrent/swig/settings_pack$int_types;

    .line 602
    .line 603
    const-string v1, "connections_slack"

    .line 604
    .line 605
    invoke-direct {v0, v1}, Lcom/frostwire/jlibtorrent/swig/settings_pack$int_types;-><init>(Ljava/lang/String;)V

    .line 606
    .line 607
    .line 608
    new-instance v0, Lcom/frostwire/jlibtorrent/swig/settings_pack$int_types;

    .line 609
    .line 610
    const-string v1, "utp_target_delay"

    .line 611
    .line 612
    invoke-direct {v0, v1}, Lcom/frostwire/jlibtorrent/swig/settings_pack$int_types;-><init>(Ljava/lang/String;)V

    .line 613
    .line 614
    .line 615
    new-instance v0, Lcom/frostwire/jlibtorrent/swig/settings_pack$int_types;

    .line 616
    .line 617
    const-string v1, "utp_gain_factor"

    .line 618
    .line 619
    invoke-direct {v0, v1}, Lcom/frostwire/jlibtorrent/swig/settings_pack$int_types;-><init>(Ljava/lang/String;)V

    .line 620
    .line 621
    .line 622
    new-instance v0, Lcom/frostwire/jlibtorrent/swig/settings_pack$int_types;

    .line 623
    .line 624
    const-string v1, "utp_min_timeout"

    .line 625
    .line 626
    invoke-direct {v0, v1}, Lcom/frostwire/jlibtorrent/swig/settings_pack$int_types;-><init>(Ljava/lang/String;)V

    .line 627
    .line 628
    .line 629
    new-instance v0, Lcom/frostwire/jlibtorrent/swig/settings_pack$int_types;

    .line 630
    .line 631
    const-string v1, "utp_syn_resends"

    .line 632
    .line 633
    invoke-direct {v0, v1}, Lcom/frostwire/jlibtorrent/swig/settings_pack$int_types;-><init>(Ljava/lang/String;)V

    .line 634
    .line 635
    .line 636
    new-instance v0, Lcom/frostwire/jlibtorrent/swig/settings_pack$int_types;

    .line 637
    .line 638
    const-string v1, "utp_fin_resends"

    .line 639
    .line 640
    invoke-direct {v0, v1}, Lcom/frostwire/jlibtorrent/swig/settings_pack$int_types;-><init>(Ljava/lang/String;)V

    .line 641
    .line 642
    .line 643
    new-instance v0, Lcom/frostwire/jlibtorrent/swig/settings_pack$int_types;

    .line 644
    .line 645
    const-string v1, "utp_num_resends"

    .line 646
    .line 647
    invoke-direct {v0, v1}, Lcom/frostwire/jlibtorrent/swig/settings_pack$int_types;-><init>(Ljava/lang/String;)V

    .line 648
    .line 649
    .line 650
    new-instance v0, Lcom/frostwire/jlibtorrent/swig/settings_pack$int_types;

    .line 651
    .line 652
    const-string v1, "utp_connect_timeout"

    .line 653
    .line 654
    invoke-direct {v0, v1}, Lcom/frostwire/jlibtorrent/swig/settings_pack$int_types;-><init>(Ljava/lang/String;)V

    .line 655
    .line 656
    .line 657
    new-instance v0, Lcom/frostwire/jlibtorrent/swig/settings_pack$int_types;

    .line 658
    .line 659
    const-string v1, "utp_loss_multiplier"

    .line 660
    .line 661
    invoke-static {}, Lcom/frostwire/jlibtorrent/swig/libtorrent_jni;->settings_pack_utp_loss_multiplier_get()I

    .line 662
    .line 663
    .line 664
    move-result v2

    .line 665
    invoke-direct {v0, v1, v2}, Lcom/frostwire/jlibtorrent/swig/settings_pack$int_types;-><init>(Ljava/lang/String;I)V

    .line 666
    .line 667
    .line 668
    new-instance v0, Lcom/frostwire/jlibtorrent/swig/settings_pack$int_types;

    .line 669
    .line 670
    const-string v1, "mixed_mode_algorithm"

    .line 671
    .line 672
    invoke-direct {v0, v1}, Lcom/frostwire/jlibtorrent/swig/settings_pack$int_types;-><init>(Ljava/lang/String;)V

    .line 673
    .line 674
    .line 675
    new-instance v0, Lcom/frostwire/jlibtorrent/swig/settings_pack$int_types;

    .line 676
    .line 677
    const-string v1, "listen_queue_size"

    .line 678
    .line 679
    invoke-direct {v0, v1}, Lcom/frostwire/jlibtorrent/swig/settings_pack$int_types;-><init>(Ljava/lang/String;)V

    .line 680
    .line 681
    .line 682
    new-instance v0, Lcom/frostwire/jlibtorrent/swig/settings_pack$int_types;

    .line 683
    .line 684
    const-string v1, "torrent_connect_boost"

    .line 685
    .line 686
    invoke-direct {v0, v1}, Lcom/frostwire/jlibtorrent/swig/settings_pack$int_types;-><init>(Ljava/lang/String;)V

    .line 687
    .line 688
    .line 689
    new-instance v0, Lcom/frostwire/jlibtorrent/swig/settings_pack$int_types;

    .line 690
    .line 691
    const-string v1, "alert_queue_size"

    .line 692
    .line 693
    invoke-direct {v0, v1}, Lcom/frostwire/jlibtorrent/swig/settings_pack$int_types;-><init>(Ljava/lang/String;)V

    .line 694
    .line 695
    .line 696
    new-instance v0, Lcom/frostwire/jlibtorrent/swig/settings_pack$int_types;

    .line 697
    .line 698
    const-string v1, "max_metadata_size"

    .line 699
    .line 700
    invoke-direct {v0, v1}, Lcom/frostwire/jlibtorrent/swig/settings_pack$int_types;-><init>(Ljava/lang/String;)V

    .line 701
    .line 702
    .line 703
    new-instance v0, Lcom/frostwire/jlibtorrent/swig/settings_pack$int_types;

    .line 704
    .line 705
    const-string v1, "checking_mem_usage"

    .line 706
    .line 707
    invoke-static {}, Lcom/frostwire/jlibtorrent/swig/libtorrent_jni;->settings_pack_checking_mem_usage_get()I

    .line 708
    .line 709
    .line 710
    move-result v2

    .line 711
    invoke-direct {v0, v1, v2}, Lcom/frostwire/jlibtorrent/swig/settings_pack$int_types;-><init>(Ljava/lang/String;I)V

    .line 712
    .line 713
    .line 714
    new-instance v0, Lcom/frostwire/jlibtorrent/swig/settings_pack$int_types;

    .line 715
    .line 716
    const-string v1, "predictive_piece_announce"

    .line 717
    .line 718
    invoke-direct {v0, v1}, Lcom/frostwire/jlibtorrent/swig/settings_pack$int_types;-><init>(Ljava/lang/String;)V

    .line 719
    .line 720
    .line 721
    new-instance v0, Lcom/frostwire/jlibtorrent/swig/settings_pack$int_types;

    .line 722
    .line 723
    const-string v1, "aio_threads"

    .line 724
    .line 725
    invoke-direct {v0, v1}, Lcom/frostwire/jlibtorrent/swig/settings_pack$int_types;-><init>(Ljava/lang/String;)V

    .line 726
    .line 727
    .line 728
    new-instance v0, Lcom/frostwire/jlibtorrent/swig/settings_pack$int_types;

    .line 729
    .line 730
    const-string v1, "deprecated_aio_max"

    .line 731
    .line 732
    invoke-direct {v0, v1}, Lcom/frostwire/jlibtorrent/swig/settings_pack$int_types;-><init>(Ljava/lang/String;)V

    .line 733
    .line 734
    .line 735
    new-instance v0, Lcom/frostwire/jlibtorrent/swig/settings_pack$int_types;

    .line 736
    .line 737
    const-string v1, "tracker_backoff"

    .line 738
    .line 739
    invoke-static {}, Lcom/frostwire/jlibtorrent/swig/libtorrent_jni;->settings_pack_tracker_backoff_get()I

    .line 740
    .line 741
    .line 742
    move-result v2

    .line 743
    invoke-direct {v0, v1, v2}, Lcom/frostwire/jlibtorrent/swig/settings_pack$int_types;-><init>(Ljava/lang/String;I)V

    .line 744
    .line 745
    .line 746
    new-instance v0, Lcom/frostwire/jlibtorrent/swig/settings_pack$int_types;

    .line 747
    .line 748
    const-string v1, "share_ratio_limit"

    .line 749
    .line 750
    invoke-direct {v0, v1}, Lcom/frostwire/jlibtorrent/swig/settings_pack$int_types;-><init>(Ljava/lang/String;)V

    .line 751
    .line 752
    .line 753
    new-instance v0, Lcom/frostwire/jlibtorrent/swig/settings_pack$int_types;

    .line 754
    .line 755
    const-string v1, "seed_time_ratio_limit"

    .line 756
    .line 757
    invoke-direct {v0, v1}, Lcom/frostwire/jlibtorrent/swig/settings_pack$int_types;-><init>(Ljava/lang/String;)V

    .line 758
    .line 759
    .line 760
    new-instance v0, Lcom/frostwire/jlibtorrent/swig/settings_pack$int_types;

    .line 761
    .line 762
    const-string v1, "peer_turnover"

    .line 763
    .line 764
    invoke-direct {v0, v1}, Lcom/frostwire/jlibtorrent/swig/settings_pack$int_types;-><init>(Ljava/lang/String;)V

    .line 765
    .line 766
    .line 767
    new-instance v0, Lcom/frostwire/jlibtorrent/swig/settings_pack$int_types;

    .line 768
    .line 769
    const-string v1, "peer_turnover_cutoff"

    .line 770
    .line 771
    invoke-direct {v0, v1}, Lcom/frostwire/jlibtorrent/swig/settings_pack$int_types;-><init>(Ljava/lang/String;)V

    .line 772
    .line 773
    .line 774
    new-instance v0, Lcom/frostwire/jlibtorrent/swig/settings_pack$int_types;

    .line 775
    .line 776
    const-string v1, "peer_turnover_interval"

    .line 777
    .line 778
    invoke-direct {v0, v1}, Lcom/frostwire/jlibtorrent/swig/settings_pack$int_types;-><init>(Ljava/lang/String;)V

    .line 779
    .line 780
    .line 781
    new-instance v0, Lcom/frostwire/jlibtorrent/swig/settings_pack$int_types;

    .line 782
    .line 783
    const-string v1, "connect_seed_every_n_download"

    .line 784
    .line 785
    invoke-direct {v0, v1}, Lcom/frostwire/jlibtorrent/swig/settings_pack$int_types;-><init>(Ljava/lang/String;)V

    .line 786
    .line 787
    .line 788
    new-instance v0, Lcom/frostwire/jlibtorrent/swig/settings_pack$int_types;

    .line 789
    .line 790
    const-string v1, "max_http_recv_buffer_size"

    .line 791
    .line 792
    invoke-direct {v0, v1}, Lcom/frostwire/jlibtorrent/swig/settings_pack$int_types;-><init>(Ljava/lang/String;)V

    .line 793
    .line 794
    .line 795
    new-instance v0, Lcom/frostwire/jlibtorrent/swig/settings_pack$int_types;

    .line 796
    .line 797
    const-string v1, "max_retry_port_bind"

    .line 798
    .line 799
    invoke-direct {v0, v1}, Lcom/frostwire/jlibtorrent/swig/settings_pack$int_types;-><init>(Ljava/lang/String;)V

    .line 800
    .line 801
    .line 802
    new-instance v0, Lcom/frostwire/jlibtorrent/swig/settings_pack$int_types;

    .line 803
    .line 804
    const-string v1, "alert_mask"

    .line 805
    .line 806
    invoke-direct {v0, v1}, Lcom/frostwire/jlibtorrent/swig/settings_pack$int_types;-><init>(Ljava/lang/String;)V

    .line 807
    .line 808
    .line 809
    sput-object v0, Lcom/frostwire/jlibtorrent/swig/settings_pack$int_types;->g:Lcom/frostwire/jlibtorrent/swig/settings_pack$int_types;

    .line 810
    .line 811
    new-instance v0, Lcom/frostwire/jlibtorrent/swig/settings_pack$int_types;

    .line 812
    .line 813
    const-string v1, "out_enc_policy"

    .line 814
    .line 815
    invoke-direct {v0, v1}, Lcom/frostwire/jlibtorrent/swig/settings_pack$int_types;-><init>(Ljava/lang/String;)V

    .line 816
    .line 817
    .line 818
    new-instance v0, Lcom/frostwire/jlibtorrent/swig/settings_pack$int_types;

    .line 819
    .line 820
    const-string v1, "in_enc_policy"

    .line 821
    .line 822
    invoke-direct {v0, v1}, Lcom/frostwire/jlibtorrent/swig/settings_pack$int_types;-><init>(Ljava/lang/String;)V

    .line 823
    .line 824
    .line 825
    new-instance v0, Lcom/frostwire/jlibtorrent/swig/settings_pack$int_types;

    .line 826
    .line 827
    const-string v1, "allowed_enc_level"

    .line 828
    .line 829
    invoke-direct {v0, v1}, Lcom/frostwire/jlibtorrent/swig/settings_pack$int_types;-><init>(Ljava/lang/String;)V

    .line 830
    .line 831
    .line 832
    new-instance v0, Lcom/frostwire/jlibtorrent/swig/settings_pack$int_types;

    .line 833
    .line 834
    const-string v1, "inactive_down_rate"

    .line 835
    .line 836
    invoke-direct {v0, v1}, Lcom/frostwire/jlibtorrent/swig/settings_pack$int_types;-><init>(Ljava/lang/String;)V

    .line 837
    .line 838
    .line 839
    new-instance v0, Lcom/frostwire/jlibtorrent/swig/settings_pack$int_types;

    .line 840
    .line 841
    const-string v1, "inactive_up_rate"

    .line 842
    .line 843
    invoke-direct {v0, v1}, Lcom/frostwire/jlibtorrent/swig/settings_pack$int_types;-><init>(Ljava/lang/String;)V

    .line 844
    .line 845
    .line 846
    new-instance v0, Lcom/frostwire/jlibtorrent/swig/settings_pack$int_types;

    .line 847
    .line 848
    const-string v1, "proxy_type"

    .line 849
    .line 850
    invoke-direct {v0, v1}, Lcom/frostwire/jlibtorrent/swig/settings_pack$int_types;-><init>(Ljava/lang/String;)V

    .line 851
    .line 852
    .line 853
    new-instance v0, Lcom/frostwire/jlibtorrent/swig/settings_pack$int_types;

    .line 854
    .line 855
    const-string v1, "proxy_port"

    .line 856
    .line 857
    invoke-direct {v0, v1}, Lcom/frostwire/jlibtorrent/swig/settings_pack$int_types;-><init>(Ljava/lang/String;)V

    .line 858
    .line 859
    .line 860
    new-instance v0, Lcom/frostwire/jlibtorrent/swig/settings_pack$int_types;

    .line 861
    .line 862
    const-string v1, "i2p_port"

    .line 863
    .line 864
    invoke-direct {v0, v1}, Lcom/frostwire/jlibtorrent/swig/settings_pack$int_types;-><init>(Ljava/lang/String;)V

    .line 865
    .line 866
    .line 867
    new-instance v0, Lcom/frostwire/jlibtorrent/swig/settings_pack$int_types;

    .line 868
    .line 869
    const-string v1, "cache_size_volatile"

    .line 870
    .line 871
    invoke-direct {v0, v1}, Lcom/frostwire/jlibtorrent/swig/settings_pack$int_types;-><init>(Ljava/lang/String;)V

    .line 872
    .line 873
    .line 874
    new-instance v0, Lcom/frostwire/jlibtorrent/swig/settings_pack$int_types;

    .line 875
    .line 876
    const-string v1, "urlseed_max_request_bytes"

    .line 877
    .line 878
    invoke-direct {v0, v1}, Lcom/frostwire/jlibtorrent/swig/settings_pack$int_types;-><init>(Ljava/lang/String;)V

    .line 879
    .line 880
    .line 881
    new-instance v0, Lcom/frostwire/jlibtorrent/swig/settings_pack$int_types;

    .line 882
    .line 883
    const-string v1, "web_seed_name_lookup_retry"

    .line 884
    .line 885
    invoke-direct {v0, v1}, Lcom/frostwire/jlibtorrent/swig/settings_pack$int_types;-><init>(Ljava/lang/String;)V

    .line 886
    .line 887
    .line 888
    new-instance v0, Lcom/frostwire/jlibtorrent/swig/settings_pack$int_types;

    .line 889
    .line 890
    const-string v1, "close_file_interval"

    .line 891
    .line 892
    invoke-direct {v0, v1}, Lcom/frostwire/jlibtorrent/swig/settings_pack$int_types;-><init>(Ljava/lang/String;)V

    .line 893
    .line 894
    .line 895
    new-instance v0, Lcom/frostwire/jlibtorrent/swig/settings_pack$int_types;

    .line 896
    .line 897
    const-string v1, "utp_cwnd_reduce_timer"

    .line 898
    .line 899
    invoke-direct {v0, v1}, Lcom/frostwire/jlibtorrent/swig/settings_pack$int_types;-><init>(Ljava/lang/String;)V

    .line 900
    .line 901
    .line 902
    new-instance v0, Lcom/frostwire/jlibtorrent/swig/settings_pack$int_types;

    .line 903
    .line 904
    const-string v1, "max_web_seed_connections"

    .line 905
    .line 906
    invoke-direct {v0, v1}, Lcom/frostwire/jlibtorrent/swig/settings_pack$int_types;-><init>(Ljava/lang/String;)V

    .line 907
    .line 908
    .line 909
    new-instance v0, Lcom/frostwire/jlibtorrent/swig/settings_pack$int_types;

    .line 910
    .line 911
    const-string v1, "resolver_cache_timeout"

    .line 912
    .line 913
    invoke-direct {v0, v1}, Lcom/frostwire/jlibtorrent/swig/settings_pack$int_types;-><init>(Ljava/lang/String;)V

    .line 914
    .line 915
    .line 916
    new-instance v0, Lcom/frostwire/jlibtorrent/swig/settings_pack$int_types;

    .line 917
    .line 918
    const-string v1, "send_not_sent_low_watermark"

    .line 919
    .line 920
    invoke-direct {v0, v1}, Lcom/frostwire/jlibtorrent/swig/settings_pack$int_types;-><init>(Ljava/lang/String;)V

    .line 921
    .line 922
    .line 923
    new-instance v0, Lcom/frostwire/jlibtorrent/swig/settings_pack$int_types;

    .line 924
    .line 925
    const-string v1, "rate_choker_initial_threshold"

    .line 926
    .line 927
    invoke-direct {v0, v1}, Lcom/frostwire/jlibtorrent/swig/settings_pack$int_types;-><init>(Ljava/lang/String;)V

    .line 928
    .line 929
    .line 930
    new-instance v0, Lcom/frostwire/jlibtorrent/swig/settings_pack$int_types;

    .line 931
    .line 932
    const-string v1, "upnp_lease_duration"

    .line 933
    .line 934
    invoke-direct {v0, v1}, Lcom/frostwire/jlibtorrent/swig/settings_pack$int_types;-><init>(Ljava/lang/String;)V

    .line 935
    .line 936
    .line 937
    new-instance v0, Lcom/frostwire/jlibtorrent/swig/settings_pack$int_types;

    .line 938
    .line 939
    const-string v1, "max_concurrent_http_announces"

    .line 940
    .line 941
    invoke-direct {v0, v1}, Lcom/frostwire/jlibtorrent/swig/settings_pack$int_types;-><init>(Ljava/lang/String;)V

    .line 942
    .line 943
    .line 944
    new-instance v0, Lcom/frostwire/jlibtorrent/swig/settings_pack$int_types;

    .line 945
    .line 946
    const-string v1, "max_int_setting_internal"

    .line 947
    .line 948
    invoke-direct {v0, v1}, Lcom/frostwire/jlibtorrent/swig/settings_pack$int_types;-><init>(Ljava/lang/String;)V

    .line 949
    .line 950
    .line 951
    const/4 v0, 0x0

    .line 952
    sput v0, Lcom/frostwire/jlibtorrent/swig/settings_pack$int_types;->h:I

    .line 953
    .line 954
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/frostwire/jlibtorrent/swig/settings_pack$int_types;->b:Ljava/lang/String;

    .line 3
    sget p1, Lcom/frostwire/jlibtorrent/swig/settings_pack$int_types;->h:I

    add-int/lit8 v0, p1, 0x1

    sput v0, Lcom/frostwire/jlibtorrent/swig/settings_pack$int_types;->h:I

    iput p1, p0, Lcom/frostwire/jlibtorrent/swig/settings_pack$int_types;->a:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-object p1, p0, Lcom/frostwire/jlibtorrent/swig/settings_pack$int_types;->b:Ljava/lang/String;

    .line 6
    iput p2, p0, Lcom/frostwire/jlibtorrent/swig/settings_pack$int_types;->a:I

    add-int/lit8 p2, p2, 0x1

    .line 7
    sput p2, Lcom/frostwire/jlibtorrent/swig/settings_pack$int_types;->h:I

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/frostwire/jlibtorrent/swig/settings_pack$int_types;->b:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method
