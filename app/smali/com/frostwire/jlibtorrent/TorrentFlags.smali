.class public final Lcom/frostwire/jlibtorrent/TorrentFlags;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcom/frostwire/jlibtorrent/swig/torrent_flags_t;

.field public static final b:Lcom/frostwire/jlibtorrent/swig/torrent_flags_t;

.field public static final c:Lcom/frostwire/jlibtorrent/swig/torrent_flags_t;

.field public static final d:Lcom/frostwire/jlibtorrent/swig/torrent_flags_t;

.field public static final e:Lcom/frostwire/jlibtorrent/swig/torrent_flags_t;

.field public static final f:Lcom/frostwire/jlibtorrent/swig/torrent_flags_t;

.field public static final g:Lcom/frostwire/jlibtorrent/swig/torrent_flags_t;

.field public static final h:Lcom/frostwire/jlibtorrent/swig/torrent_flags_t;

.field public static final i:Lcom/frostwire/jlibtorrent/swig/torrent_flags_t;

.field public static final j:Lcom/frostwire/jlibtorrent/swig/torrent_flags_t;

.field public static final k:Lcom/frostwire/jlibtorrent/swig/torrent_flags_t;

.field public static final l:Lcom/frostwire/jlibtorrent/swig/torrent_flags_t;

.field public static final m:Lcom/frostwire/jlibtorrent/swig/torrent_flags_t;

.field public static final n:Lcom/frostwire/jlibtorrent/swig/torrent_flags_t;

.field public static final o:Lcom/frostwire/jlibtorrent/swig/torrent_flags_t;

.field public static final p:Lcom/frostwire/jlibtorrent/swig/torrent_flags_t;

.field public static final q:Lcom/frostwire/jlibtorrent/swig/torrent_flags_t;

.field public static final r:Lcom/frostwire/jlibtorrent/swig/torrent_flags_t;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1
    invoke-static {}, Lcom/frostwire/jlibtorrent/swig/libtorrent_jni;->seed_mode_get()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    const-wide/16 v2, 0x0

    .line 6
    .line 7
    cmp-long v4, v0, v2

    .line 8
    .line 9
    const/4 v5, 0x0

    .line 10
    const/4 v6, 0x0

    .line 11
    if-nez v4, :cond_0

    .line 12
    .line 13
    move-object v4, v6

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    new-instance v4, Lcom/frostwire/jlibtorrent/swig/torrent_flags_t;

    .line 16
    .line 17
    invoke-direct {v4, v0, v1, v5}, Lcom/frostwire/jlibtorrent/swig/torrent_flags_t;-><init>(JZ)V

    .line 18
    .line 19
    .line 20
    :goto_0
    sput-object v4, Lcom/frostwire/jlibtorrent/TorrentFlags;->a:Lcom/frostwire/jlibtorrent/swig/torrent_flags_t;

    .line 21
    .line 22
    invoke-static {}, Lcom/frostwire/jlibtorrent/swig/libtorrent_jni;->upload_mode_get()J

    .line 23
    .line 24
    .line 25
    move-result-wide v0

    .line 26
    cmp-long v4, v0, v2

    .line 27
    .line 28
    if-nez v4, :cond_1

    .line 29
    .line 30
    move-object v4, v6

    .line 31
    goto :goto_1

    .line 32
    :cond_1
    new-instance v4, Lcom/frostwire/jlibtorrent/swig/torrent_flags_t;

    .line 33
    .line 34
    invoke-direct {v4, v0, v1, v5}, Lcom/frostwire/jlibtorrent/swig/torrent_flags_t;-><init>(JZ)V

    .line 35
    .line 36
    .line 37
    :goto_1
    sput-object v4, Lcom/frostwire/jlibtorrent/TorrentFlags;->b:Lcom/frostwire/jlibtorrent/swig/torrent_flags_t;

    .line 38
    .line 39
    invoke-static {}, Lcom/frostwire/jlibtorrent/swig/libtorrent_jni;->share_mode_get()J

    .line 40
    .line 41
    .line 42
    move-result-wide v0

    .line 43
    cmp-long v4, v0, v2

    .line 44
    .line 45
    if-nez v4, :cond_2

    .line 46
    .line 47
    move-object v4, v6

    .line 48
    goto :goto_2

    .line 49
    :cond_2
    new-instance v4, Lcom/frostwire/jlibtorrent/swig/torrent_flags_t;

    .line 50
    .line 51
    invoke-direct {v4, v0, v1, v5}, Lcom/frostwire/jlibtorrent/swig/torrent_flags_t;-><init>(JZ)V

    .line 52
    .line 53
    .line 54
    :goto_2
    sput-object v4, Lcom/frostwire/jlibtorrent/TorrentFlags;->c:Lcom/frostwire/jlibtorrent/swig/torrent_flags_t;

    .line 55
    .line 56
    invoke-static {}, Lcom/frostwire/jlibtorrent/swig/libtorrent_jni;->apply_ip_filter_get()J

    .line 57
    .line 58
    .line 59
    move-result-wide v0

    .line 60
    cmp-long v4, v0, v2

    .line 61
    .line 62
    if-nez v4, :cond_3

    .line 63
    .line 64
    move-object v4, v6

    .line 65
    goto :goto_3

    .line 66
    :cond_3
    new-instance v4, Lcom/frostwire/jlibtorrent/swig/torrent_flags_t;

    .line 67
    .line 68
    invoke-direct {v4, v0, v1, v5}, Lcom/frostwire/jlibtorrent/swig/torrent_flags_t;-><init>(JZ)V

    .line 69
    .line 70
    .line 71
    :goto_3
    sput-object v4, Lcom/frostwire/jlibtorrent/TorrentFlags;->d:Lcom/frostwire/jlibtorrent/swig/torrent_flags_t;

    .line 72
    .line 73
    invoke-static {}, Lcom/frostwire/jlibtorrent/swig/libtorrent_jni;->paused_get()J

    .line 74
    .line 75
    .line 76
    move-result-wide v0

    .line 77
    cmp-long v4, v0, v2

    .line 78
    .line 79
    if-nez v4, :cond_4

    .line 80
    .line 81
    move-object v4, v6

    .line 82
    goto :goto_4

    .line 83
    :cond_4
    new-instance v4, Lcom/frostwire/jlibtorrent/swig/torrent_flags_t;

    .line 84
    .line 85
    invoke-direct {v4, v0, v1, v5}, Lcom/frostwire/jlibtorrent/swig/torrent_flags_t;-><init>(JZ)V

    .line 86
    .line 87
    .line 88
    :goto_4
    sput-object v4, Lcom/frostwire/jlibtorrent/TorrentFlags;->e:Lcom/frostwire/jlibtorrent/swig/torrent_flags_t;

    .line 89
    .line 90
    invoke-static {}, Lcom/frostwire/jlibtorrent/swig/libtorrent_jni;->auto_managed_get()J

    .line 91
    .line 92
    .line 93
    move-result-wide v0

    .line 94
    cmp-long v4, v0, v2

    .line 95
    .line 96
    if-nez v4, :cond_5

    .line 97
    .line 98
    move-object v4, v6

    .line 99
    goto :goto_5

    .line 100
    :cond_5
    new-instance v4, Lcom/frostwire/jlibtorrent/swig/torrent_flags_t;

    .line 101
    .line 102
    invoke-direct {v4, v0, v1, v5}, Lcom/frostwire/jlibtorrent/swig/torrent_flags_t;-><init>(JZ)V

    .line 103
    .line 104
    .line 105
    :goto_5
    sput-object v4, Lcom/frostwire/jlibtorrent/TorrentFlags;->f:Lcom/frostwire/jlibtorrent/swig/torrent_flags_t;

    .line 106
    .line 107
    invoke-static {}, Lcom/frostwire/jlibtorrent/swig/libtorrent_jni;->duplicate_is_error_get()J

    .line 108
    .line 109
    .line 110
    move-result-wide v0

    .line 111
    cmp-long v4, v0, v2

    .line 112
    .line 113
    if-nez v4, :cond_6

    .line 114
    .line 115
    move-object v4, v6

    .line 116
    goto :goto_6

    .line 117
    :cond_6
    new-instance v4, Lcom/frostwire/jlibtorrent/swig/torrent_flags_t;

    .line 118
    .line 119
    invoke-direct {v4, v0, v1, v5}, Lcom/frostwire/jlibtorrent/swig/torrent_flags_t;-><init>(JZ)V

    .line 120
    .line 121
    .line 122
    :goto_6
    sput-object v4, Lcom/frostwire/jlibtorrent/TorrentFlags;->g:Lcom/frostwire/jlibtorrent/swig/torrent_flags_t;

    .line 123
    .line 124
    invoke-static {}, Lcom/frostwire/jlibtorrent/swig/libtorrent_jni;->update_subscribe_get()J

    .line 125
    .line 126
    .line 127
    move-result-wide v0

    .line 128
    cmp-long v4, v0, v2

    .line 129
    .line 130
    if-nez v4, :cond_7

    .line 131
    .line 132
    move-object v4, v6

    .line 133
    goto :goto_7

    .line 134
    :cond_7
    new-instance v4, Lcom/frostwire/jlibtorrent/swig/torrent_flags_t;

    .line 135
    .line 136
    invoke-direct {v4, v0, v1, v5}, Lcom/frostwire/jlibtorrent/swig/torrent_flags_t;-><init>(JZ)V

    .line 137
    .line 138
    .line 139
    :goto_7
    sput-object v4, Lcom/frostwire/jlibtorrent/TorrentFlags;->h:Lcom/frostwire/jlibtorrent/swig/torrent_flags_t;

    .line 140
    .line 141
    invoke-static {}, Lcom/frostwire/jlibtorrent/swig/libtorrent_jni;->super_seeding_get()J

    .line 142
    .line 143
    .line 144
    move-result-wide v0

    .line 145
    cmp-long v4, v0, v2

    .line 146
    .line 147
    if-nez v4, :cond_8

    .line 148
    .line 149
    move-object v4, v6

    .line 150
    goto :goto_8

    .line 151
    :cond_8
    new-instance v4, Lcom/frostwire/jlibtorrent/swig/torrent_flags_t;

    .line 152
    .line 153
    invoke-direct {v4, v0, v1, v5}, Lcom/frostwire/jlibtorrent/swig/torrent_flags_t;-><init>(JZ)V

    .line 154
    .line 155
    .line 156
    :goto_8
    sput-object v4, Lcom/frostwire/jlibtorrent/TorrentFlags;->i:Lcom/frostwire/jlibtorrent/swig/torrent_flags_t;

    .line 157
    .line 158
    invoke-static {}, Lcom/frostwire/jlibtorrent/swig/libtorrent_jni;->sequential_download_get()J

    .line 159
    .line 160
    .line 161
    move-result-wide v0

    .line 162
    cmp-long v4, v0, v2

    .line 163
    .line 164
    if-nez v4, :cond_9

    .line 165
    .line 166
    move-object v4, v6

    .line 167
    goto :goto_9

    .line 168
    :cond_9
    new-instance v4, Lcom/frostwire/jlibtorrent/swig/torrent_flags_t;

    .line 169
    .line 170
    invoke-direct {v4, v0, v1, v5}, Lcom/frostwire/jlibtorrent/swig/torrent_flags_t;-><init>(JZ)V

    .line 171
    .line 172
    .line 173
    :goto_9
    sput-object v4, Lcom/frostwire/jlibtorrent/TorrentFlags;->j:Lcom/frostwire/jlibtorrent/swig/torrent_flags_t;

    .line 174
    .line 175
    invoke-static {}, Lcom/frostwire/jlibtorrent/swig/libtorrent_jni;->stop_when_ready_get()J

    .line 176
    .line 177
    .line 178
    move-result-wide v0

    .line 179
    cmp-long v4, v0, v2

    .line 180
    .line 181
    if-nez v4, :cond_a

    .line 182
    .line 183
    move-object v4, v6

    .line 184
    goto :goto_a

    .line 185
    :cond_a
    new-instance v4, Lcom/frostwire/jlibtorrent/swig/torrent_flags_t;

    .line 186
    .line 187
    invoke-direct {v4, v0, v1, v5}, Lcom/frostwire/jlibtorrent/swig/torrent_flags_t;-><init>(JZ)V

    .line 188
    .line 189
    .line 190
    :goto_a
    sput-object v4, Lcom/frostwire/jlibtorrent/TorrentFlags;->k:Lcom/frostwire/jlibtorrent/swig/torrent_flags_t;

    .line 191
    .line 192
    invoke-static {}, Lcom/frostwire/jlibtorrent/swig/libtorrent_jni;->override_trackers_get()J

    .line 193
    .line 194
    .line 195
    move-result-wide v0

    .line 196
    cmp-long v4, v0, v2

    .line 197
    .line 198
    if-nez v4, :cond_b

    .line 199
    .line 200
    move-object v4, v6

    .line 201
    goto :goto_b

    .line 202
    :cond_b
    new-instance v4, Lcom/frostwire/jlibtorrent/swig/torrent_flags_t;

    .line 203
    .line 204
    invoke-direct {v4, v0, v1, v5}, Lcom/frostwire/jlibtorrent/swig/torrent_flags_t;-><init>(JZ)V

    .line 205
    .line 206
    .line 207
    :goto_b
    sput-object v4, Lcom/frostwire/jlibtorrent/TorrentFlags;->l:Lcom/frostwire/jlibtorrent/swig/torrent_flags_t;

    .line 208
    .line 209
    invoke-static {}, Lcom/frostwire/jlibtorrent/swig/libtorrent_jni;->override_web_seeds_get()J

    .line 210
    .line 211
    .line 212
    move-result-wide v0

    .line 213
    cmp-long v4, v0, v2

    .line 214
    .line 215
    if-nez v4, :cond_c

    .line 216
    .line 217
    move-object v4, v6

    .line 218
    goto :goto_c

    .line 219
    :cond_c
    new-instance v4, Lcom/frostwire/jlibtorrent/swig/torrent_flags_t;

    .line 220
    .line 221
    invoke-direct {v4, v0, v1, v5}, Lcom/frostwire/jlibtorrent/swig/torrent_flags_t;-><init>(JZ)V

    .line 222
    .line 223
    .line 224
    :goto_c
    sput-object v4, Lcom/frostwire/jlibtorrent/TorrentFlags;->m:Lcom/frostwire/jlibtorrent/swig/torrent_flags_t;

    .line 225
    .line 226
    invoke-static {}, Lcom/frostwire/jlibtorrent/swig/libtorrent_jni;->need_save_resume_get()J

    .line 227
    .line 228
    .line 229
    move-result-wide v0

    .line 230
    cmp-long v4, v0, v2

    .line 231
    .line 232
    if-nez v4, :cond_d

    .line 233
    .line 234
    move-object v4, v6

    .line 235
    goto :goto_d

    .line 236
    :cond_d
    new-instance v4, Lcom/frostwire/jlibtorrent/swig/torrent_flags_t;

    .line 237
    .line 238
    invoke-direct {v4, v0, v1, v5}, Lcom/frostwire/jlibtorrent/swig/torrent_flags_t;-><init>(JZ)V

    .line 239
    .line 240
    .line 241
    :goto_d
    sput-object v4, Lcom/frostwire/jlibtorrent/TorrentFlags;->n:Lcom/frostwire/jlibtorrent/swig/torrent_flags_t;

    .line 242
    .line 243
    invoke-static {}, Lcom/frostwire/jlibtorrent/swig/libtorrent_jni;->disable_dht_get()J

    .line 244
    .line 245
    .line 246
    move-result-wide v0

    .line 247
    cmp-long v4, v0, v2

    .line 248
    .line 249
    if-nez v4, :cond_e

    .line 250
    .line 251
    move-object v4, v6

    .line 252
    goto :goto_e

    .line 253
    :cond_e
    new-instance v4, Lcom/frostwire/jlibtorrent/swig/torrent_flags_t;

    .line 254
    .line 255
    invoke-direct {v4, v0, v1, v5}, Lcom/frostwire/jlibtorrent/swig/torrent_flags_t;-><init>(JZ)V

    .line 256
    .line 257
    .line 258
    :goto_e
    sput-object v4, Lcom/frostwire/jlibtorrent/TorrentFlags;->o:Lcom/frostwire/jlibtorrent/swig/torrent_flags_t;

    .line 259
    .line 260
    invoke-static {}, Lcom/frostwire/jlibtorrent/swig/libtorrent_jni;->disable_lsd_get()J

    .line 261
    .line 262
    .line 263
    move-result-wide v0

    .line 264
    cmp-long v4, v0, v2

    .line 265
    .line 266
    if-nez v4, :cond_f

    .line 267
    .line 268
    move-object v4, v6

    .line 269
    goto :goto_f

    .line 270
    :cond_f
    new-instance v4, Lcom/frostwire/jlibtorrent/swig/torrent_flags_t;

    .line 271
    .line 272
    invoke-direct {v4, v0, v1, v5}, Lcom/frostwire/jlibtorrent/swig/torrent_flags_t;-><init>(JZ)V

    .line 273
    .line 274
    .line 275
    :goto_f
    sput-object v4, Lcom/frostwire/jlibtorrent/TorrentFlags;->p:Lcom/frostwire/jlibtorrent/swig/torrent_flags_t;

    .line 276
    .line 277
    invoke-static {}, Lcom/frostwire/jlibtorrent/swig/libtorrent_jni;->disable_pex_get()J

    .line 278
    .line 279
    .line 280
    move-result-wide v0

    .line 281
    cmp-long v4, v0, v2

    .line 282
    .line 283
    if-nez v4, :cond_10

    .line 284
    .line 285
    move-object v4, v6

    .line 286
    goto :goto_10

    .line 287
    :cond_10
    new-instance v4, Lcom/frostwire/jlibtorrent/swig/torrent_flags_t;

    .line 288
    .line 289
    invoke-direct {v4, v0, v1, v5}, Lcom/frostwire/jlibtorrent/swig/torrent_flags_t;-><init>(JZ)V

    .line 290
    .line 291
    .line 292
    :goto_10
    sput-object v4, Lcom/frostwire/jlibtorrent/TorrentFlags;->q:Lcom/frostwire/jlibtorrent/swig/torrent_flags_t;

    .line 293
    .line 294
    invoke-static {}, Lcom/frostwire/jlibtorrent/swig/libtorrent_jni;->all_get()J

    .line 295
    .line 296
    .line 297
    move-result-wide v0

    .line 298
    cmp-long v2, v0, v2

    .line 299
    .line 300
    if-nez v2, :cond_11

    .line 301
    .line 302
    goto :goto_11

    .line 303
    :cond_11
    new-instance v6, Lcom/frostwire/jlibtorrent/swig/torrent_flags_t;

    .line 304
    .line 305
    invoke-direct {v6, v0, v1, v5}, Lcom/frostwire/jlibtorrent/swig/torrent_flags_t;-><init>(JZ)V

    .line 306
    .line 307
    .line 308
    :goto_11
    sput-object v6, Lcom/frostwire/jlibtorrent/TorrentFlags;->r:Lcom/frostwire/jlibtorrent/swig/torrent_flags_t;

    .line 309
    .line 310
    return-void
.end method
