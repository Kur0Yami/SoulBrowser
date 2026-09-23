.class public Lcom/frostwire/jlibtorrent/swig/peer_info;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/frostwire/jlibtorrent/swig/peer_info$connection_type_t;
    }
.end annotation


# static fields
.field public static final A:Lcom/frostwire/jlibtorrent/swig/bandwidth_state_flags_t;

.field public static final B:Lcom/frostwire/jlibtorrent/swig/bandwidth_state_flags_t;

.field public static final C:Lcom/frostwire/jlibtorrent/swig/bandwidth_state_flags_t;

.field public static final D:Lcom/frostwire/jlibtorrent/swig/bandwidth_state_flags_t;

.field public static final a:Lcom/frostwire/jlibtorrent/swig/peer_flags_t;

.field public static final b:Lcom/frostwire/jlibtorrent/swig/peer_flags_t;

.field public static final c:Lcom/frostwire/jlibtorrent/swig/peer_flags_t;

.field public static final d:Lcom/frostwire/jlibtorrent/swig/peer_flags_t;

.field public static final e:Lcom/frostwire/jlibtorrent/swig/peer_flags_t;

.field public static final f:Lcom/frostwire/jlibtorrent/swig/peer_flags_t;

.field public static final g:Lcom/frostwire/jlibtorrent/swig/peer_flags_t;

.field public static final h:Lcom/frostwire/jlibtorrent/swig/peer_flags_t;

.field public static final i:Lcom/frostwire/jlibtorrent/swig/peer_flags_t;

.field public static final j:Lcom/frostwire/jlibtorrent/swig/peer_flags_t;

.field public static final k:Lcom/frostwire/jlibtorrent/swig/peer_flags_t;

.field public static final l:Lcom/frostwire/jlibtorrent/swig/peer_flags_t;

.field public static final m:Lcom/frostwire/jlibtorrent/swig/peer_flags_t;

.field public static final n:Lcom/frostwire/jlibtorrent/swig/peer_flags_t;

.field public static final o:Lcom/frostwire/jlibtorrent/swig/peer_flags_t;

.field public static final p:Lcom/frostwire/jlibtorrent/swig/peer_flags_t;

.field public static final q:Lcom/frostwire/jlibtorrent/swig/peer_flags_t;

.field public static final r:Lcom/frostwire/jlibtorrent/swig/peer_flags_t;

.field public static final s:Lcom/frostwire/jlibtorrent/swig/peer_flags_t;

.field public static final t:Lcom/frostwire/jlibtorrent/swig/peer_flags_t;

.field public static final u:Lcom/frostwire/jlibtorrent/swig/peer_source_flags_t;

.field public static final v:Lcom/frostwire/jlibtorrent/swig/peer_source_flags_t;

.field public static final w:Lcom/frostwire/jlibtorrent/swig/peer_source_flags_t;

.field public static final x:Lcom/frostwire/jlibtorrent/swig/peer_source_flags_t;

.field public static final y:Lcom/frostwire/jlibtorrent/swig/peer_source_flags_t;

.field public static final z:Lcom/frostwire/jlibtorrent/swig/peer_source_flags_t;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/frostwire/jlibtorrent/swig/peer_flags_t;

    .line 2
    .line 3
    invoke-static {}, Lcom/frostwire/jlibtorrent/swig/libtorrent_jni;->peer_info_interesting_get()J

    .line 4
    .line 5
    .line 6
    move-result-wide v1

    .line 7
    invoke-direct {v0, v1, v2}, Lcom/frostwire/jlibtorrent/swig/peer_flags_t;-><init>(J)V

    .line 8
    .line 9
    .line 10
    sput-object v0, Lcom/frostwire/jlibtorrent/swig/peer_info;->a:Lcom/frostwire/jlibtorrent/swig/peer_flags_t;

    .line 11
    .line 12
    new-instance v0, Lcom/frostwire/jlibtorrent/swig/peer_flags_t;

    .line 13
    .line 14
    invoke-static {}, Lcom/frostwire/jlibtorrent/swig/libtorrent_jni;->peer_info_choked_get()J

    .line 15
    .line 16
    .line 17
    move-result-wide v1

    .line 18
    invoke-direct {v0, v1, v2}, Lcom/frostwire/jlibtorrent/swig/peer_flags_t;-><init>(J)V

    .line 19
    .line 20
    .line 21
    sput-object v0, Lcom/frostwire/jlibtorrent/swig/peer_info;->b:Lcom/frostwire/jlibtorrent/swig/peer_flags_t;

    .line 22
    .line 23
    new-instance v0, Lcom/frostwire/jlibtorrent/swig/peer_flags_t;

    .line 24
    .line 25
    invoke-static {}, Lcom/frostwire/jlibtorrent/swig/libtorrent_jni;->peer_info_remote_interested_get()J

    .line 26
    .line 27
    .line 28
    move-result-wide v1

    .line 29
    invoke-direct {v0, v1, v2}, Lcom/frostwire/jlibtorrent/swig/peer_flags_t;-><init>(J)V

    .line 30
    .line 31
    .line 32
    sput-object v0, Lcom/frostwire/jlibtorrent/swig/peer_info;->c:Lcom/frostwire/jlibtorrent/swig/peer_flags_t;

    .line 33
    .line 34
    new-instance v0, Lcom/frostwire/jlibtorrent/swig/peer_flags_t;

    .line 35
    .line 36
    invoke-static {}, Lcom/frostwire/jlibtorrent/swig/libtorrent_jni;->peer_info_remote_choked_get()J

    .line 37
    .line 38
    .line 39
    move-result-wide v1

    .line 40
    invoke-direct {v0, v1, v2}, Lcom/frostwire/jlibtorrent/swig/peer_flags_t;-><init>(J)V

    .line 41
    .line 42
    .line 43
    sput-object v0, Lcom/frostwire/jlibtorrent/swig/peer_info;->d:Lcom/frostwire/jlibtorrent/swig/peer_flags_t;

    .line 44
    .line 45
    new-instance v0, Lcom/frostwire/jlibtorrent/swig/peer_flags_t;

    .line 46
    .line 47
    invoke-static {}, Lcom/frostwire/jlibtorrent/swig/libtorrent_jni;->peer_info_supports_extensions_get()J

    .line 48
    .line 49
    .line 50
    move-result-wide v1

    .line 51
    invoke-direct {v0, v1, v2}, Lcom/frostwire/jlibtorrent/swig/peer_flags_t;-><init>(J)V

    .line 52
    .line 53
    .line 54
    sput-object v0, Lcom/frostwire/jlibtorrent/swig/peer_info;->e:Lcom/frostwire/jlibtorrent/swig/peer_flags_t;

    .line 55
    .line 56
    new-instance v0, Lcom/frostwire/jlibtorrent/swig/peer_flags_t;

    .line 57
    .line 58
    invoke-static {}, Lcom/frostwire/jlibtorrent/swig/libtorrent_jni;->peer_info_local_connection_get()J

    .line 59
    .line 60
    .line 61
    move-result-wide v1

    .line 62
    invoke-direct {v0, v1, v2}, Lcom/frostwire/jlibtorrent/swig/peer_flags_t;-><init>(J)V

    .line 63
    .line 64
    .line 65
    sput-object v0, Lcom/frostwire/jlibtorrent/swig/peer_info;->f:Lcom/frostwire/jlibtorrent/swig/peer_flags_t;

    .line 66
    .line 67
    new-instance v0, Lcom/frostwire/jlibtorrent/swig/peer_flags_t;

    .line 68
    .line 69
    invoke-static {}, Lcom/frostwire/jlibtorrent/swig/libtorrent_jni;->peer_info_handshake_get()J

    .line 70
    .line 71
    .line 72
    move-result-wide v1

    .line 73
    invoke-direct {v0, v1, v2}, Lcom/frostwire/jlibtorrent/swig/peer_flags_t;-><init>(J)V

    .line 74
    .line 75
    .line 76
    sput-object v0, Lcom/frostwire/jlibtorrent/swig/peer_info;->g:Lcom/frostwire/jlibtorrent/swig/peer_flags_t;

    .line 77
    .line 78
    new-instance v0, Lcom/frostwire/jlibtorrent/swig/peer_flags_t;

    .line 79
    .line 80
    invoke-static {}, Lcom/frostwire/jlibtorrent/swig/libtorrent_jni;->peer_info_connecting_get()J

    .line 81
    .line 82
    .line 83
    move-result-wide v1

    .line 84
    invoke-direct {v0, v1, v2}, Lcom/frostwire/jlibtorrent/swig/peer_flags_t;-><init>(J)V

    .line 85
    .line 86
    .line 87
    sput-object v0, Lcom/frostwire/jlibtorrent/swig/peer_info;->h:Lcom/frostwire/jlibtorrent/swig/peer_flags_t;

    .line 88
    .line 89
    new-instance v0, Lcom/frostwire/jlibtorrent/swig/peer_flags_t;

    .line 90
    .line 91
    invoke-static {}, Lcom/frostwire/jlibtorrent/swig/libtorrent_jni;->peer_info_on_parole_get()J

    .line 92
    .line 93
    .line 94
    move-result-wide v1

    .line 95
    invoke-direct {v0, v1, v2}, Lcom/frostwire/jlibtorrent/swig/peer_flags_t;-><init>(J)V

    .line 96
    .line 97
    .line 98
    sput-object v0, Lcom/frostwire/jlibtorrent/swig/peer_info;->i:Lcom/frostwire/jlibtorrent/swig/peer_flags_t;

    .line 99
    .line 100
    new-instance v0, Lcom/frostwire/jlibtorrent/swig/peer_flags_t;

    .line 101
    .line 102
    invoke-static {}, Lcom/frostwire/jlibtorrent/swig/libtorrent_jni;->peer_info_seed_get()J

    .line 103
    .line 104
    .line 105
    move-result-wide v1

    .line 106
    invoke-direct {v0, v1, v2}, Lcom/frostwire/jlibtorrent/swig/peer_flags_t;-><init>(J)V

    .line 107
    .line 108
    .line 109
    sput-object v0, Lcom/frostwire/jlibtorrent/swig/peer_info;->j:Lcom/frostwire/jlibtorrent/swig/peer_flags_t;

    .line 110
    .line 111
    new-instance v0, Lcom/frostwire/jlibtorrent/swig/peer_flags_t;

    .line 112
    .line 113
    invoke-static {}, Lcom/frostwire/jlibtorrent/swig/libtorrent_jni;->peer_info_optimistic_unchoke_get()J

    .line 114
    .line 115
    .line 116
    move-result-wide v1

    .line 117
    invoke-direct {v0, v1, v2}, Lcom/frostwire/jlibtorrent/swig/peer_flags_t;-><init>(J)V

    .line 118
    .line 119
    .line 120
    sput-object v0, Lcom/frostwire/jlibtorrent/swig/peer_info;->k:Lcom/frostwire/jlibtorrent/swig/peer_flags_t;

    .line 121
    .line 122
    new-instance v0, Lcom/frostwire/jlibtorrent/swig/peer_flags_t;

    .line 123
    .line 124
    invoke-static {}, Lcom/frostwire/jlibtorrent/swig/libtorrent_jni;->peer_info_snubbed_get()J

    .line 125
    .line 126
    .line 127
    move-result-wide v1

    .line 128
    invoke-direct {v0, v1, v2}, Lcom/frostwire/jlibtorrent/swig/peer_flags_t;-><init>(J)V

    .line 129
    .line 130
    .line 131
    sput-object v0, Lcom/frostwire/jlibtorrent/swig/peer_info;->l:Lcom/frostwire/jlibtorrent/swig/peer_flags_t;

    .line 132
    .line 133
    new-instance v0, Lcom/frostwire/jlibtorrent/swig/peer_flags_t;

    .line 134
    .line 135
    invoke-static {}, Lcom/frostwire/jlibtorrent/swig/libtorrent_jni;->peer_info_upload_only_get()J

    .line 136
    .line 137
    .line 138
    move-result-wide v1

    .line 139
    invoke-direct {v0, v1, v2}, Lcom/frostwire/jlibtorrent/swig/peer_flags_t;-><init>(J)V

    .line 140
    .line 141
    .line 142
    sput-object v0, Lcom/frostwire/jlibtorrent/swig/peer_info;->m:Lcom/frostwire/jlibtorrent/swig/peer_flags_t;

    .line 143
    .line 144
    new-instance v0, Lcom/frostwire/jlibtorrent/swig/peer_flags_t;

    .line 145
    .line 146
    invoke-static {}, Lcom/frostwire/jlibtorrent/swig/libtorrent_jni;->peer_info_endgame_mode_get()J

    .line 147
    .line 148
    .line 149
    move-result-wide v1

    .line 150
    invoke-direct {v0, v1, v2}, Lcom/frostwire/jlibtorrent/swig/peer_flags_t;-><init>(J)V

    .line 151
    .line 152
    .line 153
    sput-object v0, Lcom/frostwire/jlibtorrent/swig/peer_info;->n:Lcom/frostwire/jlibtorrent/swig/peer_flags_t;

    .line 154
    .line 155
    new-instance v0, Lcom/frostwire/jlibtorrent/swig/peer_flags_t;

    .line 156
    .line 157
    invoke-static {}, Lcom/frostwire/jlibtorrent/swig/libtorrent_jni;->peer_info_holepunched_get()J

    .line 158
    .line 159
    .line 160
    move-result-wide v1

    .line 161
    invoke-direct {v0, v1, v2}, Lcom/frostwire/jlibtorrent/swig/peer_flags_t;-><init>(J)V

    .line 162
    .line 163
    .line 164
    sput-object v0, Lcom/frostwire/jlibtorrent/swig/peer_info;->o:Lcom/frostwire/jlibtorrent/swig/peer_flags_t;

    .line 165
    .line 166
    new-instance v0, Lcom/frostwire/jlibtorrent/swig/peer_flags_t;

    .line 167
    .line 168
    invoke-static {}, Lcom/frostwire/jlibtorrent/swig/libtorrent_jni;->peer_info_i2p_socket_get()J

    .line 169
    .line 170
    .line 171
    move-result-wide v1

    .line 172
    invoke-direct {v0, v1, v2}, Lcom/frostwire/jlibtorrent/swig/peer_flags_t;-><init>(J)V

    .line 173
    .line 174
    .line 175
    sput-object v0, Lcom/frostwire/jlibtorrent/swig/peer_info;->p:Lcom/frostwire/jlibtorrent/swig/peer_flags_t;

    .line 176
    .line 177
    new-instance v0, Lcom/frostwire/jlibtorrent/swig/peer_flags_t;

    .line 178
    .line 179
    invoke-static {}, Lcom/frostwire/jlibtorrent/swig/libtorrent_jni;->peer_info_utp_socket_get()J

    .line 180
    .line 181
    .line 182
    move-result-wide v1

    .line 183
    invoke-direct {v0, v1, v2}, Lcom/frostwire/jlibtorrent/swig/peer_flags_t;-><init>(J)V

    .line 184
    .line 185
    .line 186
    sput-object v0, Lcom/frostwire/jlibtorrent/swig/peer_info;->q:Lcom/frostwire/jlibtorrent/swig/peer_flags_t;

    .line 187
    .line 188
    new-instance v0, Lcom/frostwire/jlibtorrent/swig/peer_flags_t;

    .line 189
    .line 190
    invoke-static {}, Lcom/frostwire/jlibtorrent/swig/libtorrent_jni;->peer_info_ssl_socket_get()J

    .line 191
    .line 192
    .line 193
    move-result-wide v1

    .line 194
    invoke-direct {v0, v1, v2}, Lcom/frostwire/jlibtorrent/swig/peer_flags_t;-><init>(J)V

    .line 195
    .line 196
    .line 197
    sput-object v0, Lcom/frostwire/jlibtorrent/swig/peer_info;->r:Lcom/frostwire/jlibtorrent/swig/peer_flags_t;

    .line 198
    .line 199
    new-instance v0, Lcom/frostwire/jlibtorrent/swig/peer_flags_t;

    .line 200
    .line 201
    invoke-static {}, Lcom/frostwire/jlibtorrent/swig/libtorrent_jni;->peer_info_rc4_encrypted_get()J

    .line 202
    .line 203
    .line 204
    move-result-wide v1

    .line 205
    invoke-direct {v0, v1, v2}, Lcom/frostwire/jlibtorrent/swig/peer_flags_t;-><init>(J)V

    .line 206
    .line 207
    .line 208
    sput-object v0, Lcom/frostwire/jlibtorrent/swig/peer_info;->s:Lcom/frostwire/jlibtorrent/swig/peer_flags_t;

    .line 209
    .line 210
    new-instance v0, Lcom/frostwire/jlibtorrent/swig/peer_flags_t;

    .line 211
    .line 212
    invoke-static {}, Lcom/frostwire/jlibtorrent/swig/libtorrent_jni;->peer_info_plaintext_encrypted_get()J

    .line 213
    .line 214
    .line 215
    move-result-wide v1

    .line 216
    invoke-direct {v0, v1, v2}, Lcom/frostwire/jlibtorrent/swig/peer_flags_t;-><init>(J)V

    .line 217
    .line 218
    .line 219
    sput-object v0, Lcom/frostwire/jlibtorrent/swig/peer_info;->t:Lcom/frostwire/jlibtorrent/swig/peer_flags_t;

    .line 220
    .line 221
    new-instance v0, Lcom/frostwire/jlibtorrent/swig/peer_source_flags_t;

    .line 222
    .line 223
    invoke-static {}, Lcom/frostwire/jlibtorrent/swig/libtorrent_jni;->peer_info_tracker_get()J

    .line 224
    .line 225
    .line 226
    move-result-wide v1

    .line 227
    invoke-direct {v0, v1, v2}, Lcom/frostwire/jlibtorrent/swig/peer_source_flags_t;-><init>(J)V

    .line 228
    .line 229
    .line 230
    sput-object v0, Lcom/frostwire/jlibtorrent/swig/peer_info;->u:Lcom/frostwire/jlibtorrent/swig/peer_source_flags_t;

    .line 231
    .line 232
    new-instance v0, Lcom/frostwire/jlibtorrent/swig/peer_source_flags_t;

    .line 233
    .line 234
    invoke-static {}, Lcom/frostwire/jlibtorrent/swig/libtorrent_jni;->peer_info_dht_get()J

    .line 235
    .line 236
    .line 237
    move-result-wide v1

    .line 238
    invoke-direct {v0, v1, v2}, Lcom/frostwire/jlibtorrent/swig/peer_source_flags_t;-><init>(J)V

    .line 239
    .line 240
    .line 241
    sput-object v0, Lcom/frostwire/jlibtorrent/swig/peer_info;->v:Lcom/frostwire/jlibtorrent/swig/peer_source_flags_t;

    .line 242
    .line 243
    new-instance v0, Lcom/frostwire/jlibtorrent/swig/peer_source_flags_t;

    .line 244
    .line 245
    invoke-static {}, Lcom/frostwire/jlibtorrent/swig/libtorrent_jni;->peer_info_pex_get()J

    .line 246
    .line 247
    .line 248
    move-result-wide v1

    .line 249
    invoke-direct {v0, v1, v2}, Lcom/frostwire/jlibtorrent/swig/peer_source_flags_t;-><init>(J)V

    .line 250
    .line 251
    .line 252
    sput-object v0, Lcom/frostwire/jlibtorrent/swig/peer_info;->w:Lcom/frostwire/jlibtorrent/swig/peer_source_flags_t;

    .line 253
    .line 254
    new-instance v0, Lcom/frostwire/jlibtorrent/swig/peer_source_flags_t;

    .line 255
    .line 256
    invoke-static {}, Lcom/frostwire/jlibtorrent/swig/libtorrent_jni;->peer_info_lsd_get()J

    .line 257
    .line 258
    .line 259
    move-result-wide v1

    .line 260
    invoke-direct {v0, v1, v2}, Lcom/frostwire/jlibtorrent/swig/peer_source_flags_t;-><init>(J)V

    .line 261
    .line 262
    .line 263
    sput-object v0, Lcom/frostwire/jlibtorrent/swig/peer_info;->x:Lcom/frostwire/jlibtorrent/swig/peer_source_flags_t;

    .line 264
    .line 265
    new-instance v0, Lcom/frostwire/jlibtorrent/swig/peer_source_flags_t;

    .line 266
    .line 267
    invoke-static {}, Lcom/frostwire/jlibtorrent/swig/libtorrent_jni;->peer_info_resume_data_get()J

    .line 268
    .line 269
    .line 270
    move-result-wide v1

    .line 271
    invoke-direct {v0, v1, v2}, Lcom/frostwire/jlibtorrent/swig/peer_source_flags_t;-><init>(J)V

    .line 272
    .line 273
    .line 274
    sput-object v0, Lcom/frostwire/jlibtorrent/swig/peer_info;->y:Lcom/frostwire/jlibtorrent/swig/peer_source_flags_t;

    .line 275
    .line 276
    new-instance v0, Lcom/frostwire/jlibtorrent/swig/peer_source_flags_t;

    .line 277
    .line 278
    invoke-static {}, Lcom/frostwire/jlibtorrent/swig/libtorrent_jni;->peer_info_incoming_get()J

    .line 279
    .line 280
    .line 281
    move-result-wide v1

    .line 282
    invoke-direct {v0, v1, v2}, Lcom/frostwire/jlibtorrent/swig/peer_source_flags_t;-><init>(J)V

    .line 283
    .line 284
    .line 285
    sput-object v0, Lcom/frostwire/jlibtorrent/swig/peer_info;->z:Lcom/frostwire/jlibtorrent/swig/peer_source_flags_t;

    .line 286
    .line 287
    new-instance v0, Lcom/frostwire/jlibtorrent/swig/bandwidth_state_flags_t;

    .line 288
    .line 289
    invoke-static {}, Lcom/frostwire/jlibtorrent/swig/libtorrent_jni;->peer_info_bw_idle_get()J

    .line 290
    .line 291
    .line 292
    move-result-wide v1

    .line 293
    invoke-direct {v0, v1, v2}, Lcom/frostwire/jlibtorrent/swig/bandwidth_state_flags_t;-><init>(J)V

    .line 294
    .line 295
    .line 296
    sput-object v0, Lcom/frostwire/jlibtorrent/swig/peer_info;->A:Lcom/frostwire/jlibtorrent/swig/bandwidth_state_flags_t;

    .line 297
    .line 298
    new-instance v0, Lcom/frostwire/jlibtorrent/swig/bandwidth_state_flags_t;

    .line 299
    .line 300
    invoke-static {}, Lcom/frostwire/jlibtorrent/swig/libtorrent_jni;->peer_info_bw_limit_get()J

    .line 301
    .line 302
    .line 303
    move-result-wide v1

    .line 304
    invoke-direct {v0, v1, v2}, Lcom/frostwire/jlibtorrent/swig/bandwidth_state_flags_t;-><init>(J)V

    .line 305
    .line 306
    .line 307
    sput-object v0, Lcom/frostwire/jlibtorrent/swig/peer_info;->B:Lcom/frostwire/jlibtorrent/swig/bandwidth_state_flags_t;

    .line 308
    .line 309
    new-instance v0, Lcom/frostwire/jlibtorrent/swig/bandwidth_state_flags_t;

    .line 310
    .line 311
    invoke-static {}, Lcom/frostwire/jlibtorrent/swig/libtorrent_jni;->peer_info_bw_network_get()J

    .line 312
    .line 313
    .line 314
    move-result-wide v1

    .line 315
    invoke-direct {v0, v1, v2}, Lcom/frostwire/jlibtorrent/swig/bandwidth_state_flags_t;-><init>(J)V

    .line 316
    .line 317
    .line 318
    sput-object v0, Lcom/frostwire/jlibtorrent/swig/peer_info;->C:Lcom/frostwire/jlibtorrent/swig/bandwidth_state_flags_t;

    .line 319
    .line 320
    new-instance v0, Lcom/frostwire/jlibtorrent/swig/bandwidth_state_flags_t;

    .line 321
    .line 322
    invoke-static {}, Lcom/frostwire/jlibtorrent/swig/libtorrent_jni;->peer_info_bw_disk_get()J

    .line 323
    .line 324
    .line 325
    move-result-wide v1

    .line 326
    invoke-direct {v0, v1, v2}, Lcom/frostwire/jlibtorrent/swig/bandwidth_state_flags_t;-><init>(J)V

    .line 327
    .line 328
    .line 329
    sput-object v0, Lcom/frostwire/jlibtorrent/swig/peer_info;->D:Lcom/frostwire/jlibtorrent/swig/bandwidth_state_flags_t;

    .line 330
    .line 331
    return-void
.end method


# virtual methods
.method public final finalize()V
    .locals 0

    .line 1
    monitor-enter p0

    .line 2
    monitor-exit p0

    .line 3
    return-void
.end method
