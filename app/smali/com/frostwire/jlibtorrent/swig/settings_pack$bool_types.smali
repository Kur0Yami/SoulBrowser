.class public final Lcom/frostwire/jlibtorrent/swig/settings_pack$bool_types;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/frostwire/jlibtorrent/swig/settings_pack;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "bool_types"
.end annotation


# static fields
.field public static final c:Lcom/frostwire/jlibtorrent/swig/settings_pack$bool_types;

.field public static final d:Lcom/frostwire/jlibtorrent/swig/settings_pack$bool_types;

.field public static e:I


# instance fields
.field public final a:I

.field public final b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/frostwire/jlibtorrent/swig/settings_pack$bool_types;

    .line 2
    .line 3
    const-string v1, "allow_multiple_connections_per_ip"

    .line 4
    .line 5
    invoke-static {}, Lcom/frostwire/jlibtorrent/swig/libtorrent_jni;->settings_pack_allow_multiple_connections_per_ip_get()I

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    invoke-direct {v0, v1, v2}, Lcom/frostwire/jlibtorrent/swig/settings_pack$bool_types;-><init>(Ljava/lang/String;I)V

    .line 10
    .line 11
    .line 12
    new-instance v0, Lcom/frostwire/jlibtorrent/swig/settings_pack$bool_types;

    .line 13
    .line 14
    const-string v1, "send_redundant_have"

    .line 15
    .line 16
    invoke-static {}, Lcom/frostwire/jlibtorrent/swig/libtorrent_jni;->settings_pack_send_redundant_have_get()I

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    invoke-direct {v0, v1, v2}, Lcom/frostwire/jlibtorrent/swig/settings_pack$bool_types;-><init>(Ljava/lang/String;I)V

    .line 21
    .line 22
    .line 23
    new-instance v0, Lcom/frostwire/jlibtorrent/swig/settings_pack$bool_types;

    .line 24
    .line 25
    const-string v1, "use_dht_as_fallback"

    .line 26
    .line 27
    invoke-static {}, Lcom/frostwire/jlibtorrent/swig/libtorrent_jni;->settings_pack_use_dht_as_fallback_get()I

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    invoke-direct {v0, v1, v2}, Lcom/frostwire/jlibtorrent/swig/settings_pack$bool_types;-><init>(Ljava/lang/String;I)V

    .line 32
    .line 33
    .line 34
    new-instance v0, Lcom/frostwire/jlibtorrent/swig/settings_pack$bool_types;

    .line 35
    .line 36
    const-string v1, "upnp_ignore_nonrouters"

    .line 37
    .line 38
    invoke-direct {v0, v1}, Lcom/frostwire/jlibtorrent/swig/settings_pack$bool_types;-><init>(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    new-instance v0, Lcom/frostwire/jlibtorrent/swig/settings_pack$bool_types;

    .line 42
    .line 43
    const-string v1, "use_parole_mode"

    .line 44
    .line 45
    invoke-direct {v0, v1}, Lcom/frostwire/jlibtorrent/swig/settings_pack$bool_types;-><init>(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    new-instance v0, Lcom/frostwire/jlibtorrent/swig/settings_pack$bool_types;

    .line 49
    .line 50
    const-string v1, "use_read_cache"

    .line 51
    .line 52
    invoke-direct {v0, v1}, Lcom/frostwire/jlibtorrent/swig/settings_pack$bool_types;-><init>(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    new-instance v0, Lcom/frostwire/jlibtorrent/swig/settings_pack$bool_types;

    .line 56
    .line 57
    const-string v1, "coalesce_reads"

    .line 58
    .line 59
    invoke-static {}, Lcom/frostwire/jlibtorrent/swig/libtorrent_jni;->settings_pack_coalesce_reads_get()I

    .line 60
    .line 61
    .line 62
    move-result v2

    .line 63
    invoke-direct {v0, v1, v2}, Lcom/frostwire/jlibtorrent/swig/settings_pack$bool_types;-><init>(Ljava/lang/String;I)V

    .line 64
    .line 65
    .line 66
    new-instance v0, Lcom/frostwire/jlibtorrent/swig/settings_pack$bool_types;

    .line 67
    .line 68
    const-string v1, "coalesce_writes"

    .line 69
    .line 70
    invoke-direct {v0, v1}, Lcom/frostwire/jlibtorrent/swig/settings_pack$bool_types;-><init>(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    new-instance v0, Lcom/frostwire/jlibtorrent/swig/settings_pack$bool_types;

    .line 74
    .line 75
    const-string v1, "auto_manage_prefer_seeds"

    .line 76
    .line 77
    invoke-direct {v0, v1}, Lcom/frostwire/jlibtorrent/swig/settings_pack$bool_types;-><init>(Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    new-instance v0, Lcom/frostwire/jlibtorrent/swig/settings_pack$bool_types;

    .line 81
    .line 82
    const-string v1, "dont_count_slow_torrents"

    .line 83
    .line 84
    invoke-direct {v0, v1}, Lcom/frostwire/jlibtorrent/swig/settings_pack$bool_types;-><init>(Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    new-instance v0, Lcom/frostwire/jlibtorrent/swig/settings_pack$bool_types;

    .line 88
    .line 89
    const-string v1, "close_redundant_connections"

    .line 90
    .line 91
    invoke-direct {v0, v1}, Lcom/frostwire/jlibtorrent/swig/settings_pack$bool_types;-><init>(Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    new-instance v0, Lcom/frostwire/jlibtorrent/swig/settings_pack$bool_types;

    .line 95
    .line 96
    const-string v1, "prioritize_partial_pieces"

    .line 97
    .line 98
    invoke-direct {v0, v1}, Lcom/frostwire/jlibtorrent/swig/settings_pack$bool_types;-><init>(Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    new-instance v0, Lcom/frostwire/jlibtorrent/swig/settings_pack$bool_types;

    .line 102
    .line 103
    const-string v1, "rate_limit_ip_overhead"

    .line 104
    .line 105
    invoke-direct {v0, v1}, Lcom/frostwire/jlibtorrent/swig/settings_pack$bool_types;-><init>(Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    new-instance v0, Lcom/frostwire/jlibtorrent/swig/settings_pack$bool_types;

    .line 109
    .line 110
    const-string v1, "announce_to_all_tiers"

    .line 111
    .line 112
    invoke-direct {v0, v1}, Lcom/frostwire/jlibtorrent/swig/settings_pack$bool_types;-><init>(Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    new-instance v0, Lcom/frostwire/jlibtorrent/swig/settings_pack$bool_types;

    .line 116
    .line 117
    const-string v1, "announce_to_all_trackers"

    .line 118
    .line 119
    invoke-direct {v0, v1}, Lcom/frostwire/jlibtorrent/swig/settings_pack$bool_types;-><init>(Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    new-instance v0, Lcom/frostwire/jlibtorrent/swig/settings_pack$bool_types;

    .line 123
    .line 124
    const-string v1, "prefer_udp_trackers"

    .line 125
    .line 126
    invoke-direct {v0, v1}, Lcom/frostwire/jlibtorrent/swig/settings_pack$bool_types;-><init>(Ljava/lang/String;)V

    .line 127
    .line 128
    .line 129
    new-instance v0, Lcom/frostwire/jlibtorrent/swig/settings_pack$bool_types;

    .line 130
    .line 131
    const-string v1, "deprecated_strict_super_seeding"

    .line 132
    .line 133
    invoke-direct {v0, v1}, Lcom/frostwire/jlibtorrent/swig/settings_pack$bool_types;-><init>(Ljava/lang/String;)V

    .line 134
    .line 135
    .line 136
    new-instance v0, Lcom/frostwire/jlibtorrent/swig/settings_pack$bool_types;

    .line 137
    .line 138
    const-string v1, "disable_hash_checks"

    .line 139
    .line 140
    invoke-static {}, Lcom/frostwire/jlibtorrent/swig/libtorrent_jni;->settings_pack_disable_hash_checks_get()I

    .line 141
    .line 142
    .line 143
    move-result v2

    .line 144
    invoke-direct {v0, v1, v2}, Lcom/frostwire/jlibtorrent/swig/settings_pack$bool_types;-><init>(Ljava/lang/String;I)V

    .line 145
    .line 146
    .line 147
    new-instance v0, Lcom/frostwire/jlibtorrent/swig/settings_pack$bool_types;

    .line 148
    .line 149
    const-string v1, "allow_i2p_mixed"

    .line 150
    .line 151
    invoke-direct {v0, v1}, Lcom/frostwire/jlibtorrent/swig/settings_pack$bool_types;-><init>(Ljava/lang/String;)V

    .line 152
    .line 153
    .line 154
    new-instance v0, Lcom/frostwire/jlibtorrent/swig/settings_pack$bool_types;

    .line 155
    .line 156
    const-string v1, "volatile_read_cache"

    .line 157
    .line 158
    invoke-static {}, Lcom/frostwire/jlibtorrent/swig/libtorrent_jni;->settings_pack_volatile_read_cache_get()I

    .line 159
    .line 160
    .line 161
    move-result v2

    .line 162
    invoke-direct {v0, v1, v2}, Lcom/frostwire/jlibtorrent/swig/settings_pack$bool_types;-><init>(Ljava/lang/String;I)V

    .line 163
    .line 164
    .line 165
    new-instance v0, Lcom/frostwire/jlibtorrent/swig/settings_pack$bool_types;

    .line 166
    .line 167
    const-string v1, "no_atime_storage"

    .line 168
    .line 169
    invoke-static {}, Lcom/frostwire/jlibtorrent/swig/libtorrent_jni;->settings_pack_no_atime_storage_get()I

    .line 170
    .line 171
    .line 172
    move-result v2

    .line 173
    invoke-direct {v0, v1, v2}, Lcom/frostwire/jlibtorrent/swig/settings_pack$bool_types;-><init>(Ljava/lang/String;I)V

    .line 174
    .line 175
    .line 176
    new-instance v0, Lcom/frostwire/jlibtorrent/swig/settings_pack$bool_types;

    .line 177
    .line 178
    const-string v1, "incoming_starts_queued_torrents"

    .line 179
    .line 180
    invoke-direct {v0, v1}, Lcom/frostwire/jlibtorrent/swig/settings_pack$bool_types;-><init>(Ljava/lang/String;)V

    .line 181
    .line 182
    .line 183
    new-instance v0, Lcom/frostwire/jlibtorrent/swig/settings_pack$bool_types;

    .line 184
    .line 185
    const-string v1, "report_true_downloaded"

    .line 186
    .line 187
    invoke-direct {v0, v1}, Lcom/frostwire/jlibtorrent/swig/settings_pack$bool_types;-><init>(Ljava/lang/String;)V

    .line 188
    .line 189
    .line 190
    new-instance v0, Lcom/frostwire/jlibtorrent/swig/settings_pack$bool_types;

    .line 191
    .line 192
    const-string v1, "strict_end_game_mode"

    .line 193
    .line 194
    invoke-direct {v0, v1}, Lcom/frostwire/jlibtorrent/swig/settings_pack$bool_types;-><init>(Ljava/lang/String;)V

    .line 195
    .line 196
    .line 197
    new-instance v0, Lcom/frostwire/jlibtorrent/swig/settings_pack$bool_types;

    .line 198
    .line 199
    const-string v1, "enable_outgoing_utp"

    .line 200
    .line 201
    invoke-static {}, Lcom/frostwire/jlibtorrent/swig/libtorrent_jni;->settings_pack_enable_outgoing_utp_get()I

    .line 202
    .line 203
    .line 204
    move-result v2

    .line 205
    invoke-direct {v0, v1, v2}, Lcom/frostwire/jlibtorrent/swig/settings_pack$bool_types;-><init>(Ljava/lang/String;I)V

    .line 206
    .line 207
    .line 208
    new-instance v0, Lcom/frostwire/jlibtorrent/swig/settings_pack$bool_types;

    .line 209
    .line 210
    const-string v1, "enable_incoming_utp"

    .line 211
    .line 212
    invoke-direct {v0, v1}, Lcom/frostwire/jlibtorrent/swig/settings_pack$bool_types;-><init>(Ljava/lang/String;)V

    .line 213
    .line 214
    .line 215
    new-instance v0, Lcom/frostwire/jlibtorrent/swig/settings_pack$bool_types;

    .line 216
    .line 217
    const-string v1, "enable_outgoing_tcp"

    .line 218
    .line 219
    invoke-direct {v0, v1}, Lcom/frostwire/jlibtorrent/swig/settings_pack$bool_types;-><init>(Ljava/lang/String;)V

    .line 220
    .line 221
    .line 222
    new-instance v0, Lcom/frostwire/jlibtorrent/swig/settings_pack$bool_types;

    .line 223
    .line 224
    const-string v1, "enable_incoming_tcp"

    .line 225
    .line 226
    invoke-direct {v0, v1}, Lcom/frostwire/jlibtorrent/swig/settings_pack$bool_types;-><init>(Ljava/lang/String;)V

    .line 227
    .line 228
    .line 229
    new-instance v0, Lcom/frostwire/jlibtorrent/swig/settings_pack$bool_types;

    .line 230
    .line 231
    const-string v1, "no_recheck_incomplete_resume"

    .line 232
    .line 233
    invoke-static {}, Lcom/frostwire/jlibtorrent/swig/libtorrent_jni;->settings_pack_no_recheck_incomplete_resume_get()I

    .line 234
    .line 235
    .line 236
    move-result v2

    .line 237
    invoke-direct {v0, v1, v2}, Lcom/frostwire/jlibtorrent/swig/settings_pack$bool_types;-><init>(Ljava/lang/String;I)V

    .line 238
    .line 239
    .line 240
    new-instance v0, Lcom/frostwire/jlibtorrent/swig/settings_pack$bool_types;

    .line 241
    .line 242
    const-string v1, "anonymous_mode"

    .line 243
    .line 244
    invoke-direct {v0, v1}, Lcom/frostwire/jlibtorrent/swig/settings_pack$bool_types;-><init>(Ljava/lang/String;)V

    .line 245
    .line 246
    .line 247
    sput-object v0, Lcom/frostwire/jlibtorrent/swig/settings_pack$bool_types;->c:Lcom/frostwire/jlibtorrent/swig/settings_pack$bool_types;

    .line 248
    .line 249
    new-instance v0, Lcom/frostwire/jlibtorrent/swig/settings_pack$bool_types;

    .line 250
    .line 251
    const-string v1, "report_web_seed_downloads"

    .line 252
    .line 253
    invoke-direct {v0, v1}, Lcom/frostwire/jlibtorrent/swig/settings_pack$bool_types;-><init>(Ljava/lang/String;)V

    .line 254
    .line 255
    .line 256
    new-instance v0, Lcom/frostwire/jlibtorrent/swig/settings_pack$bool_types;

    .line 257
    .line 258
    const-string v1, "seeding_outgoing_connections"

    .line 259
    .line 260
    invoke-static {}, Lcom/frostwire/jlibtorrent/swig/libtorrent_jni;->settings_pack_seeding_outgoing_connections_get()I

    .line 261
    .line 262
    .line 263
    move-result v2

    .line 264
    invoke-direct {v0, v1, v2}, Lcom/frostwire/jlibtorrent/swig/settings_pack$bool_types;-><init>(Ljava/lang/String;I)V

    .line 265
    .line 266
    .line 267
    new-instance v0, Lcom/frostwire/jlibtorrent/swig/settings_pack$bool_types;

    .line 268
    .line 269
    const-string v1, "no_connect_privileged_ports"

    .line 270
    .line 271
    invoke-direct {v0, v1}, Lcom/frostwire/jlibtorrent/swig/settings_pack$bool_types;-><init>(Ljava/lang/String;)V

    .line 272
    .line 273
    .line 274
    new-instance v0, Lcom/frostwire/jlibtorrent/swig/settings_pack$bool_types;

    .line 275
    .line 276
    const-string v1, "smooth_connects"

    .line 277
    .line 278
    invoke-direct {v0, v1}, Lcom/frostwire/jlibtorrent/swig/settings_pack$bool_types;-><init>(Ljava/lang/String;)V

    .line 279
    .line 280
    .line 281
    new-instance v0, Lcom/frostwire/jlibtorrent/swig/settings_pack$bool_types;

    .line 282
    .line 283
    const-string v1, "always_send_user_agent"

    .line 284
    .line 285
    invoke-direct {v0, v1}, Lcom/frostwire/jlibtorrent/swig/settings_pack$bool_types;-><init>(Ljava/lang/String;)V

    .line 286
    .line 287
    .line 288
    new-instance v0, Lcom/frostwire/jlibtorrent/swig/settings_pack$bool_types;

    .line 289
    .line 290
    const-string v1, "apply_ip_filter_to_trackers"

    .line 291
    .line 292
    invoke-direct {v0, v1}, Lcom/frostwire/jlibtorrent/swig/settings_pack$bool_types;-><init>(Ljava/lang/String;)V

    .line 293
    .line 294
    .line 295
    new-instance v0, Lcom/frostwire/jlibtorrent/swig/settings_pack$bool_types;

    .line 296
    .line 297
    const-string v1, "ban_web_seeds"

    .line 298
    .line 299
    invoke-static {}, Lcom/frostwire/jlibtorrent/swig/libtorrent_jni;->settings_pack_ban_web_seeds_get()I

    .line 300
    .line 301
    .line 302
    move-result v2

    .line 303
    invoke-direct {v0, v1, v2}, Lcom/frostwire/jlibtorrent/swig/settings_pack$bool_types;-><init>(Ljava/lang/String;I)V

    .line 304
    .line 305
    .line 306
    new-instance v0, Lcom/frostwire/jlibtorrent/swig/settings_pack$bool_types;

    .line 307
    .line 308
    const-string v1, "allow_partial_disk_writes"

    .line 309
    .line 310
    invoke-direct {v0, v1}, Lcom/frostwire/jlibtorrent/swig/settings_pack$bool_types;-><init>(Ljava/lang/String;)V

    .line 311
    .line 312
    .line 313
    new-instance v0, Lcom/frostwire/jlibtorrent/swig/settings_pack$bool_types;

    .line 314
    .line 315
    const-string v1, "support_share_mode"

    .line 316
    .line 317
    invoke-static {}, Lcom/frostwire/jlibtorrent/swig/libtorrent_jni;->settings_pack_support_share_mode_get()I

    .line 318
    .line 319
    .line 320
    move-result v2

    .line 321
    invoke-direct {v0, v1, v2}, Lcom/frostwire/jlibtorrent/swig/settings_pack$bool_types;-><init>(Ljava/lang/String;I)V

    .line 322
    .line 323
    .line 324
    new-instance v0, Lcom/frostwire/jlibtorrent/swig/settings_pack$bool_types;

    .line 325
    .line 326
    const-string v1, "support_merkle_torrents"

    .line 327
    .line 328
    invoke-direct {v0, v1}, Lcom/frostwire/jlibtorrent/swig/settings_pack$bool_types;-><init>(Ljava/lang/String;)V

    .line 329
    .line 330
    .line 331
    new-instance v0, Lcom/frostwire/jlibtorrent/swig/settings_pack$bool_types;

    .line 332
    .line 333
    const-string v1, "report_redundant_bytes"

    .line 334
    .line 335
    invoke-direct {v0, v1}, Lcom/frostwire/jlibtorrent/swig/settings_pack$bool_types;-><init>(Ljava/lang/String;)V

    .line 336
    .line 337
    .line 338
    new-instance v0, Lcom/frostwire/jlibtorrent/swig/settings_pack$bool_types;

    .line 339
    .line 340
    const-string v1, "listen_system_port_fallback"

    .line 341
    .line 342
    invoke-direct {v0, v1}, Lcom/frostwire/jlibtorrent/swig/settings_pack$bool_types;-><init>(Ljava/lang/String;)V

    .line 343
    .line 344
    .line 345
    new-instance v0, Lcom/frostwire/jlibtorrent/swig/settings_pack$bool_types;

    .line 346
    .line 347
    const-string v1, "announce_crypto_support"

    .line 348
    .line 349
    invoke-static {}, Lcom/frostwire/jlibtorrent/swig/libtorrent_jni;->settings_pack_announce_crypto_support_get()I

    .line 350
    .line 351
    .line 352
    move-result v2

    .line 353
    invoke-direct {v0, v1, v2}, Lcom/frostwire/jlibtorrent/swig/settings_pack$bool_types;-><init>(Ljava/lang/String;I)V

    .line 354
    .line 355
    .line 356
    new-instance v0, Lcom/frostwire/jlibtorrent/swig/settings_pack$bool_types;

    .line 357
    .line 358
    const-string v1, "enable_upnp"

    .line 359
    .line 360
    invoke-direct {v0, v1}, Lcom/frostwire/jlibtorrent/swig/settings_pack$bool_types;-><init>(Ljava/lang/String;)V

    .line 361
    .line 362
    .line 363
    new-instance v0, Lcom/frostwire/jlibtorrent/swig/settings_pack$bool_types;

    .line 364
    .line 365
    const-string v1, "enable_natpmp"

    .line 366
    .line 367
    invoke-direct {v0, v1}, Lcom/frostwire/jlibtorrent/swig/settings_pack$bool_types;-><init>(Ljava/lang/String;)V

    .line 368
    .line 369
    .line 370
    new-instance v0, Lcom/frostwire/jlibtorrent/swig/settings_pack$bool_types;

    .line 371
    .line 372
    const-string v1, "enable_lsd"

    .line 373
    .line 374
    invoke-direct {v0, v1}, Lcom/frostwire/jlibtorrent/swig/settings_pack$bool_types;-><init>(Ljava/lang/String;)V

    .line 375
    .line 376
    .line 377
    new-instance v0, Lcom/frostwire/jlibtorrent/swig/settings_pack$bool_types;

    .line 378
    .line 379
    const-string v1, "enable_dht"

    .line 380
    .line 381
    invoke-direct {v0, v1}, Lcom/frostwire/jlibtorrent/swig/settings_pack$bool_types;-><init>(Ljava/lang/String;)V

    .line 382
    .line 383
    .line 384
    sput-object v0, Lcom/frostwire/jlibtorrent/swig/settings_pack$bool_types;->d:Lcom/frostwire/jlibtorrent/swig/settings_pack$bool_types;

    .line 385
    .line 386
    new-instance v0, Lcom/frostwire/jlibtorrent/swig/settings_pack$bool_types;

    .line 387
    .line 388
    const-string v1, "prefer_rc4"

    .line 389
    .line 390
    invoke-direct {v0, v1}, Lcom/frostwire/jlibtorrent/swig/settings_pack$bool_types;-><init>(Ljava/lang/String;)V

    .line 391
    .line 392
    .line 393
    new-instance v0, Lcom/frostwire/jlibtorrent/swig/settings_pack$bool_types;

    .line 394
    .line 395
    const-string v1, "proxy_hostnames"

    .line 396
    .line 397
    invoke-direct {v0, v1}, Lcom/frostwire/jlibtorrent/swig/settings_pack$bool_types;-><init>(Ljava/lang/String;)V

    .line 398
    .line 399
    .line 400
    new-instance v0, Lcom/frostwire/jlibtorrent/swig/settings_pack$bool_types;

    .line 401
    .line 402
    const-string v1, "proxy_peer_connections"

    .line 403
    .line 404
    invoke-direct {v0, v1}, Lcom/frostwire/jlibtorrent/swig/settings_pack$bool_types;-><init>(Ljava/lang/String;)V

    .line 405
    .line 406
    .line 407
    new-instance v0, Lcom/frostwire/jlibtorrent/swig/settings_pack$bool_types;

    .line 408
    .line 409
    const-string v1, "auto_sequential"

    .line 410
    .line 411
    invoke-direct {v0, v1}, Lcom/frostwire/jlibtorrent/swig/settings_pack$bool_types;-><init>(Ljava/lang/String;)V

    .line 412
    .line 413
    .line 414
    new-instance v0, Lcom/frostwire/jlibtorrent/swig/settings_pack$bool_types;

    .line 415
    .line 416
    const-string v1, "proxy_tracker_connections"

    .line 417
    .line 418
    invoke-direct {v0, v1}, Lcom/frostwire/jlibtorrent/swig/settings_pack$bool_types;-><init>(Ljava/lang/String;)V

    .line 419
    .line 420
    .line 421
    new-instance v0, Lcom/frostwire/jlibtorrent/swig/settings_pack$bool_types;

    .line 422
    .line 423
    const-string v1, "enable_ip_notifier"

    .line 424
    .line 425
    invoke-direct {v0, v1}, Lcom/frostwire/jlibtorrent/swig/settings_pack$bool_types;-><init>(Ljava/lang/String;)V

    .line 426
    .line 427
    .line 428
    new-instance v0, Lcom/frostwire/jlibtorrent/swig/settings_pack$bool_types;

    .line 429
    .line 430
    const-string v1, "dht_prefer_verified_node_ids"

    .line 431
    .line 432
    invoke-direct {v0, v1}, Lcom/frostwire/jlibtorrent/swig/settings_pack$bool_types;-><init>(Ljava/lang/String;)V

    .line 433
    .line 434
    .line 435
    new-instance v0, Lcom/frostwire/jlibtorrent/swig/settings_pack$bool_types;

    .line 436
    .line 437
    const-string v1, "piece_extent_affinity"

    .line 438
    .line 439
    invoke-direct {v0, v1}, Lcom/frostwire/jlibtorrent/swig/settings_pack$bool_types;-><init>(Ljava/lang/String;)V

    .line 440
    .line 441
    .line 442
    new-instance v0, Lcom/frostwire/jlibtorrent/swig/settings_pack$bool_types;

    .line 443
    .line 444
    const-string v1, "validate_https_trackers"

    .line 445
    .line 446
    invoke-direct {v0, v1}, Lcom/frostwire/jlibtorrent/swig/settings_pack$bool_types;-><init>(Ljava/lang/String;)V

    .line 447
    .line 448
    .line 449
    new-instance v0, Lcom/frostwire/jlibtorrent/swig/settings_pack$bool_types;

    .line 450
    .line 451
    const-string v1, "ssrf_mitigation"

    .line 452
    .line 453
    invoke-direct {v0, v1}, Lcom/frostwire/jlibtorrent/swig/settings_pack$bool_types;-><init>(Ljava/lang/String;)V

    .line 454
    .line 455
    .line 456
    new-instance v0, Lcom/frostwire/jlibtorrent/swig/settings_pack$bool_types;

    .line 457
    .line 458
    const-string v1, "allow_idna"

    .line 459
    .line 460
    invoke-direct {v0, v1}, Lcom/frostwire/jlibtorrent/swig/settings_pack$bool_types;-><init>(Ljava/lang/String;)V

    .line 461
    .line 462
    .line 463
    new-instance v0, Lcom/frostwire/jlibtorrent/swig/settings_pack$bool_types;

    .line 464
    .line 465
    const-string v1, "max_bool_setting_internal"

    .line 466
    .line 467
    invoke-direct {v0, v1}, Lcom/frostwire/jlibtorrent/swig/settings_pack$bool_types;-><init>(Ljava/lang/String;)V

    .line 468
    .line 469
    .line 470
    const/4 v0, 0x0

    .line 471
    sput v0, Lcom/frostwire/jlibtorrent/swig/settings_pack$bool_types;->e:I

    .line 472
    .line 473
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/frostwire/jlibtorrent/swig/settings_pack$bool_types;->b:Ljava/lang/String;

    .line 3
    sget p1, Lcom/frostwire/jlibtorrent/swig/settings_pack$bool_types;->e:I

    add-int/lit8 v0, p1, 0x1

    sput v0, Lcom/frostwire/jlibtorrent/swig/settings_pack$bool_types;->e:I

    iput p1, p0, Lcom/frostwire/jlibtorrent/swig/settings_pack$bool_types;->a:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-object p1, p0, Lcom/frostwire/jlibtorrent/swig/settings_pack$bool_types;->b:Ljava/lang/String;

    .line 6
    iput p2, p0, Lcom/frostwire/jlibtorrent/swig/settings_pack$bool_types;->a:I

    add-int/lit8 p2, p2, 0x1

    .line 7
    sput p2, Lcom/frostwire/jlibtorrent/swig/settings_pack$bool_types;->e:I

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/frostwire/jlibtorrent/swig/settings_pack$bool_types;->b:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method
