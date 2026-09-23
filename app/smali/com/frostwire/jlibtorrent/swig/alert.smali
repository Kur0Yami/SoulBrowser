.class public Lcom/frostwire/jlibtorrent/swig/alert;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final c:Lcom/frostwire/jlibtorrent/swig/alert_category_t;

.field public static final d:Lcom/frostwire/jlibtorrent/swig/alert_category_t;

.field public static final e:Lcom/frostwire/jlibtorrent/swig/alert_category_t;

.field public static final f:Lcom/frostwire/jlibtorrent/swig/alert_category_t;

.field public static final g:Lcom/frostwire/jlibtorrent/swig/alert_category_t;

.field public static final h:Lcom/frostwire/jlibtorrent/swig/alert_category_t;

.field public static final i:Lcom/frostwire/jlibtorrent/swig/alert_category_t;

.field public static final j:Lcom/frostwire/jlibtorrent/swig/alert_category_t;

.field public static final k:Lcom/frostwire/jlibtorrent/swig/alert_category_t;

.field public static final l:Lcom/frostwire/jlibtorrent/swig/alert_category_t;

.field public static final m:Lcom/frostwire/jlibtorrent/swig/alert_category_t;

.field public static final n:Lcom/frostwire/jlibtorrent/swig/alert_category_t;

.field public static final o:Lcom/frostwire/jlibtorrent/swig/alert_category_t;

.field public static final p:Lcom/frostwire/jlibtorrent/swig/alert_category_t;

.field public static final q:Lcom/frostwire/jlibtorrent/swig/alert_category_t;

.field public static final r:Lcom/frostwire/jlibtorrent/swig/alert_category_t;

.field public static final s:Lcom/frostwire/jlibtorrent/swig/alert_category_t;

.field public static final t:Lcom/frostwire/jlibtorrent/swig/alert_category_t;

.field public static final u:Lcom/frostwire/jlibtorrent/swig/alert_category_t;

.field public static final v:Lcom/frostwire/jlibtorrent/swig/alert_category_t;

.field public static final w:Lcom/frostwire/jlibtorrent/swig/alert_category_t;

.field public static final x:Lcom/frostwire/jlibtorrent/swig/alert_category_t;

.field public static final y:Lcom/frostwire/jlibtorrent/swig/alert_category_t;

.field public static final z:Lcom/frostwire/jlibtorrent/swig/alert_category_t;


# instance fields
.field public transient a:J

.field public transient b:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lcom/frostwire/jlibtorrent/swig/alert_category_t;

    .line 2
    .line 3
    invoke-static {}, Lcom/frostwire/jlibtorrent/swig/libtorrent_jni;->alert_error_notification_get()J

    .line 4
    .line 5
    .line 6
    move-result-wide v1

    .line 7
    const/4 v3, 0x0

    .line 8
    invoke-direct {v0, v1, v2, v3}, Lcom/frostwire/jlibtorrent/swig/alert_category_t;-><init>(JZ)V

    .line 9
    .line 10
    .line 11
    sput-object v0, Lcom/frostwire/jlibtorrent/swig/alert;->c:Lcom/frostwire/jlibtorrent/swig/alert_category_t;

    .line 12
    .line 13
    new-instance v0, Lcom/frostwire/jlibtorrent/swig/alert_category_t;

    .line 14
    .line 15
    invoke-static {}, Lcom/frostwire/jlibtorrent/swig/libtorrent_jni;->alert_peer_notification_get()J

    .line 16
    .line 17
    .line 18
    move-result-wide v1

    .line 19
    invoke-direct {v0, v1, v2, v3}, Lcom/frostwire/jlibtorrent/swig/alert_category_t;-><init>(JZ)V

    .line 20
    .line 21
    .line 22
    sput-object v0, Lcom/frostwire/jlibtorrent/swig/alert;->d:Lcom/frostwire/jlibtorrent/swig/alert_category_t;

    .line 23
    .line 24
    new-instance v0, Lcom/frostwire/jlibtorrent/swig/alert_category_t;

    .line 25
    .line 26
    invoke-static {}, Lcom/frostwire/jlibtorrent/swig/libtorrent_jni;->alert_port_mapping_notification_get()J

    .line 27
    .line 28
    .line 29
    move-result-wide v1

    .line 30
    invoke-direct {v0, v1, v2, v3}, Lcom/frostwire/jlibtorrent/swig/alert_category_t;-><init>(JZ)V

    .line 31
    .line 32
    .line 33
    sput-object v0, Lcom/frostwire/jlibtorrent/swig/alert;->e:Lcom/frostwire/jlibtorrent/swig/alert_category_t;

    .line 34
    .line 35
    new-instance v0, Lcom/frostwire/jlibtorrent/swig/alert_category_t;

    .line 36
    .line 37
    invoke-static {}, Lcom/frostwire/jlibtorrent/swig/libtorrent_jni;->alert_storage_notification_get()J

    .line 38
    .line 39
    .line 40
    move-result-wide v1

    .line 41
    invoke-direct {v0, v1, v2, v3}, Lcom/frostwire/jlibtorrent/swig/alert_category_t;-><init>(JZ)V

    .line 42
    .line 43
    .line 44
    sput-object v0, Lcom/frostwire/jlibtorrent/swig/alert;->f:Lcom/frostwire/jlibtorrent/swig/alert_category_t;

    .line 45
    .line 46
    new-instance v0, Lcom/frostwire/jlibtorrent/swig/alert_category_t;

    .line 47
    .line 48
    invoke-static {}, Lcom/frostwire/jlibtorrent/swig/libtorrent_jni;->alert_tracker_notification_get()J

    .line 49
    .line 50
    .line 51
    move-result-wide v1

    .line 52
    invoke-direct {v0, v1, v2, v3}, Lcom/frostwire/jlibtorrent/swig/alert_category_t;-><init>(JZ)V

    .line 53
    .line 54
    .line 55
    sput-object v0, Lcom/frostwire/jlibtorrent/swig/alert;->g:Lcom/frostwire/jlibtorrent/swig/alert_category_t;

    .line 56
    .line 57
    new-instance v0, Lcom/frostwire/jlibtorrent/swig/alert_category_t;

    .line 58
    .line 59
    invoke-static {}, Lcom/frostwire/jlibtorrent/swig/libtorrent_jni;->alert_connect_notification_get()J

    .line 60
    .line 61
    .line 62
    move-result-wide v1

    .line 63
    invoke-direct {v0, v1, v2, v3}, Lcom/frostwire/jlibtorrent/swig/alert_category_t;-><init>(JZ)V

    .line 64
    .line 65
    .line 66
    sput-object v0, Lcom/frostwire/jlibtorrent/swig/alert;->h:Lcom/frostwire/jlibtorrent/swig/alert_category_t;

    .line 67
    .line 68
    new-instance v0, Lcom/frostwire/jlibtorrent/swig/alert_category_t;

    .line 69
    .line 70
    invoke-static {}, Lcom/frostwire/jlibtorrent/swig/libtorrent_jni;->alert_status_notification_get()J

    .line 71
    .line 72
    .line 73
    move-result-wide v1

    .line 74
    invoke-direct {v0, v1, v2, v3}, Lcom/frostwire/jlibtorrent/swig/alert_category_t;-><init>(JZ)V

    .line 75
    .line 76
    .line 77
    sput-object v0, Lcom/frostwire/jlibtorrent/swig/alert;->i:Lcom/frostwire/jlibtorrent/swig/alert_category_t;

    .line 78
    .line 79
    new-instance v0, Lcom/frostwire/jlibtorrent/swig/alert_category_t;

    .line 80
    .line 81
    invoke-static {}, Lcom/frostwire/jlibtorrent/swig/libtorrent_jni;->alert_ip_block_notification_get()J

    .line 82
    .line 83
    .line 84
    move-result-wide v1

    .line 85
    invoke-direct {v0, v1, v2, v3}, Lcom/frostwire/jlibtorrent/swig/alert_category_t;-><init>(JZ)V

    .line 86
    .line 87
    .line 88
    sput-object v0, Lcom/frostwire/jlibtorrent/swig/alert;->j:Lcom/frostwire/jlibtorrent/swig/alert_category_t;

    .line 89
    .line 90
    new-instance v0, Lcom/frostwire/jlibtorrent/swig/alert_category_t;

    .line 91
    .line 92
    invoke-static {}, Lcom/frostwire/jlibtorrent/swig/libtorrent_jni;->alert_performance_warning_get()J

    .line 93
    .line 94
    .line 95
    move-result-wide v1

    .line 96
    invoke-direct {v0, v1, v2, v3}, Lcom/frostwire/jlibtorrent/swig/alert_category_t;-><init>(JZ)V

    .line 97
    .line 98
    .line 99
    sput-object v0, Lcom/frostwire/jlibtorrent/swig/alert;->k:Lcom/frostwire/jlibtorrent/swig/alert_category_t;

    .line 100
    .line 101
    new-instance v0, Lcom/frostwire/jlibtorrent/swig/alert_category_t;

    .line 102
    .line 103
    invoke-static {}, Lcom/frostwire/jlibtorrent/swig/libtorrent_jni;->alert_dht_notification_get()J

    .line 104
    .line 105
    .line 106
    move-result-wide v1

    .line 107
    invoke-direct {v0, v1, v2, v3}, Lcom/frostwire/jlibtorrent/swig/alert_category_t;-><init>(JZ)V

    .line 108
    .line 109
    .line 110
    sput-object v0, Lcom/frostwire/jlibtorrent/swig/alert;->l:Lcom/frostwire/jlibtorrent/swig/alert_category_t;

    .line 111
    .line 112
    new-instance v0, Lcom/frostwire/jlibtorrent/swig/alert_category_t;

    .line 113
    .line 114
    invoke-static {}, Lcom/frostwire/jlibtorrent/swig/libtorrent_jni;->alert_stats_notification_get()J

    .line 115
    .line 116
    .line 117
    move-result-wide v1

    .line 118
    invoke-direct {v0, v1, v2, v3}, Lcom/frostwire/jlibtorrent/swig/alert_category_t;-><init>(JZ)V

    .line 119
    .line 120
    .line 121
    sput-object v0, Lcom/frostwire/jlibtorrent/swig/alert;->m:Lcom/frostwire/jlibtorrent/swig/alert_category_t;

    .line 122
    .line 123
    new-instance v0, Lcom/frostwire/jlibtorrent/swig/alert_category_t;

    .line 124
    .line 125
    invoke-static {}, Lcom/frostwire/jlibtorrent/swig/libtorrent_jni;->alert_session_log_notification_get()J

    .line 126
    .line 127
    .line 128
    move-result-wide v1

    .line 129
    invoke-direct {v0, v1, v2, v3}, Lcom/frostwire/jlibtorrent/swig/alert_category_t;-><init>(JZ)V

    .line 130
    .line 131
    .line 132
    sput-object v0, Lcom/frostwire/jlibtorrent/swig/alert;->n:Lcom/frostwire/jlibtorrent/swig/alert_category_t;

    .line 133
    .line 134
    new-instance v0, Lcom/frostwire/jlibtorrent/swig/alert_category_t;

    .line 135
    .line 136
    invoke-static {}, Lcom/frostwire/jlibtorrent/swig/libtorrent_jni;->alert_torrent_log_notification_get()J

    .line 137
    .line 138
    .line 139
    move-result-wide v1

    .line 140
    invoke-direct {v0, v1, v2, v3}, Lcom/frostwire/jlibtorrent/swig/alert_category_t;-><init>(JZ)V

    .line 141
    .line 142
    .line 143
    sput-object v0, Lcom/frostwire/jlibtorrent/swig/alert;->o:Lcom/frostwire/jlibtorrent/swig/alert_category_t;

    .line 144
    .line 145
    new-instance v0, Lcom/frostwire/jlibtorrent/swig/alert_category_t;

    .line 146
    .line 147
    invoke-static {}, Lcom/frostwire/jlibtorrent/swig/libtorrent_jni;->alert_peer_log_notification_get()J

    .line 148
    .line 149
    .line 150
    move-result-wide v1

    .line 151
    invoke-direct {v0, v1, v2, v3}, Lcom/frostwire/jlibtorrent/swig/alert_category_t;-><init>(JZ)V

    .line 152
    .line 153
    .line 154
    sput-object v0, Lcom/frostwire/jlibtorrent/swig/alert;->p:Lcom/frostwire/jlibtorrent/swig/alert_category_t;

    .line 155
    .line 156
    new-instance v0, Lcom/frostwire/jlibtorrent/swig/alert_category_t;

    .line 157
    .line 158
    invoke-static {}, Lcom/frostwire/jlibtorrent/swig/libtorrent_jni;->alert_incoming_request_notification_get()J

    .line 159
    .line 160
    .line 161
    move-result-wide v1

    .line 162
    invoke-direct {v0, v1, v2, v3}, Lcom/frostwire/jlibtorrent/swig/alert_category_t;-><init>(JZ)V

    .line 163
    .line 164
    .line 165
    sput-object v0, Lcom/frostwire/jlibtorrent/swig/alert;->q:Lcom/frostwire/jlibtorrent/swig/alert_category_t;

    .line 166
    .line 167
    new-instance v0, Lcom/frostwire/jlibtorrent/swig/alert_category_t;

    .line 168
    .line 169
    invoke-static {}, Lcom/frostwire/jlibtorrent/swig/libtorrent_jni;->alert_dht_log_notification_get()J

    .line 170
    .line 171
    .line 172
    move-result-wide v1

    .line 173
    invoke-direct {v0, v1, v2, v3}, Lcom/frostwire/jlibtorrent/swig/alert_category_t;-><init>(JZ)V

    .line 174
    .line 175
    .line 176
    sput-object v0, Lcom/frostwire/jlibtorrent/swig/alert;->r:Lcom/frostwire/jlibtorrent/swig/alert_category_t;

    .line 177
    .line 178
    new-instance v0, Lcom/frostwire/jlibtorrent/swig/alert_category_t;

    .line 179
    .line 180
    invoke-static {}, Lcom/frostwire/jlibtorrent/swig/libtorrent_jni;->alert_dht_operation_notification_get()J

    .line 181
    .line 182
    .line 183
    move-result-wide v1

    .line 184
    invoke-direct {v0, v1, v2, v3}, Lcom/frostwire/jlibtorrent/swig/alert_category_t;-><init>(JZ)V

    .line 185
    .line 186
    .line 187
    sput-object v0, Lcom/frostwire/jlibtorrent/swig/alert;->s:Lcom/frostwire/jlibtorrent/swig/alert_category_t;

    .line 188
    .line 189
    new-instance v0, Lcom/frostwire/jlibtorrent/swig/alert_category_t;

    .line 190
    .line 191
    invoke-static {}, Lcom/frostwire/jlibtorrent/swig/libtorrent_jni;->alert_port_mapping_log_notification_get()J

    .line 192
    .line 193
    .line 194
    move-result-wide v1

    .line 195
    invoke-direct {v0, v1, v2, v3}, Lcom/frostwire/jlibtorrent/swig/alert_category_t;-><init>(JZ)V

    .line 196
    .line 197
    .line 198
    sput-object v0, Lcom/frostwire/jlibtorrent/swig/alert;->t:Lcom/frostwire/jlibtorrent/swig/alert_category_t;

    .line 199
    .line 200
    new-instance v0, Lcom/frostwire/jlibtorrent/swig/alert_category_t;

    .line 201
    .line 202
    invoke-static {}, Lcom/frostwire/jlibtorrent/swig/libtorrent_jni;->alert_picker_log_notification_get()J

    .line 203
    .line 204
    .line 205
    move-result-wide v1

    .line 206
    invoke-direct {v0, v1, v2, v3}, Lcom/frostwire/jlibtorrent/swig/alert_category_t;-><init>(JZ)V

    .line 207
    .line 208
    .line 209
    sput-object v0, Lcom/frostwire/jlibtorrent/swig/alert;->u:Lcom/frostwire/jlibtorrent/swig/alert_category_t;

    .line 210
    .line 211
    new-instance v0, Lcom/frostwire/jlibtorrent/swig/alert_category_t;

    .line 212
    .line 213
    invoke-static {}, Lcom/frostwire/jlibtorrent/swig/libtorrent_jni;->alert_file_progress_notification_get()J

    .line 214
    .line 215
    .line 216
    move-result-wide v1

    .line 217
    invoke-direct {v0, v1, v2, v3}, Lcom/frostwire/jlibtorrent/swig/alert_category_t;-><init>(JZ)V

    .line 218
    .line 219
    .line 220
    sput-object v0, Lcom/frostwire/jlibtorrent/swig/alert;->v:Lcom/frostwire/jlibtorrent/swig/alert_category_t;

    .line 221
    .line 222
    new-instance v0, Lcom/frostwire/jlibtorrent/swig/alert_category_t;

    .line 223
    .line 224
    invoke-static {}, Lcom/frostwire/jlibtorrent/swig/libtorrent_jni;->alert_piece_progress_notification_get()J

    .line 225
    .line 226
    .line 227
    move-result-wide v1

    .line 228
    invoke-direct {v0, v1, v2, v3}, Lcom/frostwire/jlibtorrent/swig/alert_category_t;-><init>(JZ)V

    .line 229
    .line 230
    .line 231
    sput-object v0, Lcom/frostwire/jlibtorrent/swig/alert;->w:Lcom/frostwire/jlibtorrent/swig/alert_category_t;

    .line 232
    .line 233
    new-instance v0, Lcom/frostwire/jlibtorrent/swig/alert_category_t;

    .line 234
    .line 235
    invoke-static {}, Lcom/frostwire/jlibtorrent/swig/libtorrent_jni;->alert_upload_notification_get()J

    .line 236
    .line 237
    .line 238
    move-result-wide v1

    .line 239
    invoke-direct {v0, v1, v2, v3}, Lcom/frostwire/jlibtorrent/swig/alert_category_t;-><init>(JZ)V

    .line 240
    .line 241
    .line 242
    sput-object v0, Lcom/frostwire/jlibtorrent/swig/alert;->x:Lcom/frostwire/jlibtorrent/swig/alert_category_t;

    .line 243
    .line 244
    new-instance v0, Lcom/frostwire/jlibtorrent/swig/alert_category_t;

    .line 245
    .line 246
    invoke-static {}, Lcom/frostwire/jlibtorrent/swig/libtorrent_jni;->alert_block_progress_notification_get()J

    .line 247
    .line 248
    .line 249
    move-result-wide v1

    .line 250
    invoke-direct {v0, v1, v2, v3}, Lcom/frostwire/jlibtorrent/swig/alert_category_t;-><init>(JZ)V

    .line 251
    .line 252
    .line 253
    sput-object v0, Lcom/frostwire/jlibtorrent/swig/alert;->y:Lcom/frostwire/jlibtorrent/swig/alert_category_t;

    .line 254
    .line 255
    new-instance v0, Lcom/frostwire/jlibtorrent/swig/alert_category_t;

    .line 256
    .line 257
    invoke-static {}, Lcom/frostwire/jlibtorrent/swig/libtorrent_jni;->alert_all_categories_get()J

    .line 258
    .line 259
    .line 260
    move-result-wide v1

    .line 261
    invoke-direct {v0, v1, v2, v3}, Lcom/frostwire/jlibtorrent/swig/alert_category_t;-><init>(JZ)V

    .line 262
    .line 263
    .line 264
    sput-object v0, Lcom/frostwire/jlibtorrent/swig/alert;->z:Lcom/frostwire/jlibtorrent/swig/alert_category_t;

    .line 265
    .line 266
    return-void
.end method

.method public constructor <init>(JZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-boolean p3, p0, Lcom/frostwire/jlibtorrent/swig/alert;->b:Z

    .line 5
    .line 6
    iput-wide p1, p0, Lcom/frostwire/jlibtorrent/swig/alert;->a:J

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public declared-synchronized a()V
    .locals 5

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-wide v0, p0, Lcom/frostwire/jlibtorrent/swig/alert;->a:J

    .line 3
    .line 4
    const-wide/16 v2, 0x0

    .line 5
    .line 6
    cmp-long v4, v0, v2

    .line 7
    .line 8
    if-eqz v4, :cond_1

    .line 9
    .line 10
    iget-boolean v4, p0, Lcom/frostwire/jlibtorrent/swig/alert;->b:Z

    .line 11
    .line 12
    if-eqz v4, :cond_0

    .line 13
    .line 14
    const/4 v4, 0x0

    .line 15
    iput-boolean v4, p0, Lcom/frostwire/jlibtorrent/swig/alert;->b:Z

    .line 16
    .line 17
    invoke-static {v0, v1}, Lcom/frostwire/jlibtorrent/swig/libtorrent_jni;->delete_alert(J)V

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :catchall_0
    move-exception v0

    .line 22
    goto :goto_1

    .line 23
    :cond_0
    :goto_0
    iput-wide v2, p0, Lcom/frostwire/jlibtorrent/swig/alert;->a:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    .line 25
    :cond_1
    monitor-exit p0

    .line 26
    return-void

    .line 27
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 28
    throw v0
.end method

.method public b()Ljava/lang/String;
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/frostwire/jlibtorrent/swig/alert;->a:J

    .line 2
    .line 3
    invoke-static {v0, v1, p0}, Lcom/frostwire/jlibtorrent/swig/libtorrent_jni;->alert_message(JLcom/frostwire/jlibtorrent/swig/alert;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public c()I
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/frostwire/jlibtorrent/swig/alert;->a:J

    .line 2
    .line 3
    invoke-static {v0, v1, p0}, Lcom/frostwire/jlibtorrent/swig/libtorrent_jni;->alert_type(JLcom/frostwire/jlibtorrent/swig/alert;)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public d()Ljava/lang/String;
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/frostwire/jlibtorrent/swig/alert;->a:J

    .line 2
    .line 3
    invoke-static {v0, v1, p0}, Lcom/frostwire/jlibtorrent/swig/libtorrent_jni;->alert_what(JLcom/frostwire/jlibtorrent/swig/alert;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public finalize()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/frostwire/jlibtorrent/swig/alert;->a()V

    .line 2
    .line 3
    .line 4
    return-void
.end method
