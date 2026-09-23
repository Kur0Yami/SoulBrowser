.class public Lcom/frostwire/jlibtorrent/swig/torrent_handle;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/frostwire/jlibtorrent/swig/torrent_handle$file_progress_flags_t;
    }
.end annotation


# static fields
.field public static final c:Lcom/frostwire/jlibtorrent/swig/add_piece_flags_t;

.field public static final d:Lcom/frostwire/jlibtorrent/swig/status_flags_t;

.field public static final e:Lcom/frostwire/jlibtorrent/swig/status_flags_t;

.field public static final f:Lcom/frostwire/jlibtorrent/swig/status_flags_t;

.field public static final g:Lcom/frostwire/jlibtorrent/swig/status_flags_t;

.field public static final h:Lcom/frostwire/jlibtorrent/swig/status_flags_t;

.field public static final i:Lcom/frostwire/jlibtorrent/swig/status_flags_t;

.field public static final j:Lcom/frostwire/jlibtorrent/swig/status_flags_t;

.field public static final k:Lcom/frostwire/jlibtorrent/swig/status_flags_t;

.field public static final l:Lcom/frostwire/jlibtorrent/swig/deadline_flags_t;

.field public static final m:Lcom/frostwire/jlibtorrent/swig/pause_flags_t;

.field public static final n:Lcom/frostwire/jlibtorrent/swig/pause_flags_t;

.field public static final o:Lcom/frostwire/jlibtorrent/swig/resume_data_flags_t;

.field public static final p:Lcom/frostwire/jlibtorrent/swig/resume_data_flags_t;

.field public static final q:Lcom/frostwire/jlibtorrent/swig/resume_data_flags_t;

.field public static final r:Lcom/frostwire/jlibtorrent/swig/reannounce_flags_t;


# instance fields
.field public transient a:J

.field public transient b:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lcom/frostwire/jlibtorrent/swig/add_piece_flags_t;

    .line 2
    .line 3
    invoke-static {}, Lcom/frostwire/jlibtorrent/swig/libtorrent_jni;->torrent_handle_overwrite_existing_get()J

    .line 4
    .line 5
    .line 6
    move-result-wide v1

    .line 7
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-wide v1, v0, Lcom/frostwire/jlibtorrent/swig/add_piece_flags_t;->a:J

    .line 11
    .line 12
    sput-object v0, Lcom/frostwire/jlibtorrent/swig/torrent_handle;->c:Lcom/frostwire/jlibtorrent/swig/add_piece_flags_t;

    .line 13
    .line 14
    new-instance v0, Lcom/frostwire/jlibtorrent/swig/status_flags_t;

    .line 15
    .line 16
    invoke-static {}, Lcom/frostwire/jlibtorrent/swig/libtorrent_jni;->torrent_handle_query_distributed_copies_get()J

    .line 17
    .line 18
    .line 19
    move-result-wide v1

    .line 20
    const/4 v3, 0x0

    .line 21
    invoke-direct {v0, v1, v2, v3}, Lcom/frostwire/jlibtorrent/swig/status_flags_t;-><init>(JZ)V

    .line 22
    .line 23
    .line 24
    sput-object v0, Lcom/frostwire/jlibtorrent/swig/torrent_handle;->d:Lcom/frostwire/jlibtorrent/swig/status_flags_t;

    .line 25
    .line 26
    new-instance v0, Lcom/frostwire/jlibtorrent/swig/status_flags_t;

    .line 27
    .line 28
    invoke-static {}, Lcom/frostwire/jlibtorrent/swig/libtorrent_jni;->torrent_handle_query_accurate_download_counters_get()J

    .line 29
    .line 30
    .line 31
    move-result-wide v1

    .line 32
    invoke-direct {v0, v1, v2, v3}, Lcom/frostwire/jlibtorrent/swig/status_flags_t;-><init>(JZ)V

    .line 33
    .line 34
    .line 35
    sput-object v0, Lcom/frostwire/jlibtorrent/swig/torrent_handle;->e:Lcom/frostwire/jlibtorrent/swig/status_flags_t;

    .line 36
    .line 37
    new-instance v0, Lcom/frostwire/jlibtorrent/swig/status_flags_t;

    .line 38
    .line 39
    invoke-static {}, Lcom/frostwire/jlibtorrent/swig/libtorrent_jni;->torrent_handle_query_last_seen_complete_get()J

    .line 40
    .line 41
    .line 42
    move-result-wide v1

    .line 43
    invoke-direct {v0, v1, v2, v3}, Lcom/frostwire/jlibtorrent/swig/status_flags_t;-><init>(JZ)V

    .line 44
    .line 45
    .line 46
    sput-object v0, Lcom/frostwire/jlibtorrent/swig/torrent_handle;->f:Lcom/frostwire/jlibtorrent/swig/status_flags_t;

    .line 47
    .line 48
    new-instance v0, Lcom/frostwire/jlibtorrent/swig/status_flags_t;

    .line 49
    .line 50
    invoke-static {}, Lcom/frostwire/jlibtorrent/swig/libtorrent_jni;->torrent_handle_query_pieces_get()J

    .line 51
    .line 52
    .line 53
    move-result-wide v1

    .line 54
    invoke-direct {v0, v1, v2, v3}, Lcom/frostwire/jlibtorrent/swig/status_flags_t;-><init>(JZ)V

    .line 55
    .line 56
    .line 57
    sput-object v0, Lcom/frostwire/jlibtorrent/swig/torrent_handle;->g:Lcom/frostwire/jlibtorrent/swig/status_flags_t;

    .line 58
    .line 59
    new-instance v0, Lcom/frostwire/jlibtorrent/swig/status_flags_t;

    .line 60
    .line 61
    invoke-static {}, Lcom/frostwire/jlibtorrent/swig/libtorrent_jni;->torrent_handle_query_verified_pieces_get()J

    .line 62
    .line 63
    .line 64
    move-result-wide v1

    .line 65
    invoke-direct {v0, v1, v2, v3}, Lcom/frostwire/jlibtorrent/swig/status_flags_t;-><init>(JZ)V

    .line 66
    .line 67
    .line 68
    sput-object v0, Lcom/frostwire/jlibtorrent/swig/torrent_handle;->h:Lcom/frostwire/jlibtorrent/swig/status_flags_t;

    .line 69
    .line 70
    new-instance v0, Lcom/frostwire/jlibtorrent/swig/status_flags_t;

    .line 71
    .line 72
    invoke-static {}, Lcom/frostwire/jlibtorrent/swig/libtorrent_jni;->torrent_handle_query_torrent_file_get()J

    .line 73
    .line 74
    .line 75
    move-result-wide v1

    .line 76
    invoke-direct {v0, v1, v2, v3}, Lcom/frostwire/jlibtorrent/swig/status_flags_t;-><init>(JZ)V

    .line 77
    .line 78
    .line 79
    sput-object v0, Lcom/frostwire/jlibtorrent/swig/torrent_handle;->i:Lcom/frostwire/jlibtorrent/swig/status_flags_t;

    .line 80
    .line 81
    new-instance v0, Lcom/frostwire/jlibtorrent/swig/status_flags_t;

    .line 82
    .line 83
    invoke-static {}, Lcom/frostwire/jlibtorrent/swig/libtorrent_jni;->torrent_handle_query_name_get()J

    .line 84
    .line 85
    .line 86
    move-result-wide v1

    .line 87
    invoke-direct {v0, v1, v2, v3}, Lcom/frostwire/jlibtorrent/swig/status_flags_t;-><init>(JZ)V

    .line 88
    .line 89
    .line 90
    sput-object v0, Lcom/frostwire/jlibtorrent/swig/torrent_handle;->j:Lcom/frostwire/jlibtorrent/swig/status_flags_t;

    .line 91
    .line 92
    new-instance v0, Lcom/frostwire/jlibtorrent/swig/status_flags_t;

    .line 93
    .line 94
    invoke-static {}, Lcom/frostwire/jlibtorrent/swig/libtorrent_jni;->torrent_handle_query_save_path_get()J

    .line 95
    .line 96
    .line 97
    move-result-wide v1

    .line 98
    invoke-direct {v0, v1, v2, v3}, Lcom/frostwire/jlibtorrent/swig/status_flags_t;-><init>(JZ)V

    .line 99
    .line 100
    .line 101
    sput-object v0, Lcom/frostwire/jlibtorrent/swig/torrent_handle;->k:Lcom/frostwire/jlibtorrent/swig/status_flags_t;

    .line 102
    .line 103
    new-instance v0, Lcom/frostwire/jlibtorrent/swig/deadline_flags_t;

    .line 104
    .line 105
    invoke-static {}, Lcom/frostwire/jlibtorrent/swig/libtorrent_jni;->torrent_handle_alert_when_available_get()J

    .line 106
    .line 107
    .line 108
    move-result-wide v1

    .line 109
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 110
    .line 111
    .line 112
    iput-wide v1, v0, Lcom/frostwire/jlibtorrent/swig/deadline_flags_t;->a:J

    .line 113
    .line 114
    sput-object v0, Lcom/frostwire/jlibtorrent/swig/torrent_handle;->l:Lcom/frostwire/jlibtorrent/swig/deadline_flags_t;

    .line 115
    .line 116
    new-instance v0, Lcom/frostwire/jlibtorrent/swig/pause_flags_t;

    .line 117
    .line 118
    invoke-static {}, Lcom/frostwire/jlibtorrent/swig/libtorrent_jni;->torrent_handle_graceful_pause_get()J

    .line 119
    .line 120
    .line 121
    move-result-wide v1

    .line 122
    invoke-direct {v0, v1, v2}, Lcom/frostwire/jlibtorrent/swig/pause_flags_t;-><init>(J)V

    .line 123
    .line 124
    .line 125
    sput-object v0, Lcom/frostwire/jlibtorrent/swig/torrent_handle;->m:Lcom/frostwire/jlibtorrent/swig/pause_flags_t;

    .line 126
    .line 127
    new-instance v0, Lcom/frostwire/jlibtorrent/swig/pause_flags_t;

    .line 128
    .line 129
    invoke-static {}, Lcom/frostwire/jlibtorrent/swig/libtorrent_jni;->torrent_handle_clear_disk_cache_get()J

    .line 130
    .line 131
    .line 132
    move-result-wide v1

    .line 133
    invoke-direct {v0, v1, v2}, Lcom/frostwire/jlibtorrent/swig/pause_flags_t;-><init>(J)V

    .line 134
    .line 135
    .line 136
    sput-object v0, Lcom/frostwire/jlibtorrent/swig/torrent_handle;->n:Lcom/frostwire/jlibtorrent/swig/pause_flags_t;

    .line 137
    .line 138
    new-instance v0, Lcom/frostwire/jlibtorrent/swig/resume_data_flags_t;

    .line 139
    .line 140
    invoke-static {}, Lcom/frostwire/jlibtorrent/swig/libtorrent_jni;->torrent_handle_flush_disk_cache_get()J

    .line 141
    .line 142
    .line 143
    move-result-wide v1

    .line 144
    invoke-direct {v0, v1, v2}, Lcom/frostwire/jlibtorrent/swig/resume_data_flags_t;-><init>(J)V

    .line 145
    .line 146
    .line 147
    sput-object v0, Lcom/frostwire/jlibtorrent/swig/torrent_handle;->o:Lcom/frostwire/jlibtorrent/swig/resume_data_flags_t;

    .line 148
    .line 149
    new-instance v0, Lcom/frostwire/jlibtorrent/swig/resume_data_flags_t;

    .line 150
    .line 151
    invoke-static {}, Lcom/frostwire/jlibtorrent/swig/libtorrent_jni;->torrent_handle_save_info_dict_get()J

    .line 152
    .line 153
    .line 154
    move-result-wide v1

    .line 155
    invoke-direct {v0, v1, v2}, Lcom/frostwire/jlibtorrent/swig/resume_data_flags_t;-><init>(J)V

    .line 156
    .line 157
    .line 158
    sput-object v0, Lcom/frostwire/jlibtorrent/swig/torrent_handle;->p:Lcom/frostwire/jlibtorrent/swig/resume_data_flags_t;

    .line 159
    .line 160
    new-instance v0, Lcom/frostwire/jlibtorrent/swig/resume_data_flags_t;

    .line 161
    .line 162
    invoke-static {}, Lcom/frostwire/jlibtorrent/swig/libtorrent_jni;->torrent_handle_only_if_modified_get()J

    .line 163
    .line 164
    .line 165
    move-result-wide v1

    .line 166
    invoke-direct {v0, v1, v2}, Lcom/frostwire/jlibtorrent/swig/resume_data_flags_t;-><init>(J)V

    .line 167
    .line 168
    .line 169
    sput-object v0, Lcom/frostwire/jlibtorrent/swig/torrent_handle;->q:Lcom/frostwire/jlibtorrent/swig/resume_data_flags_t;

    .line 170
    .line 171
    new-instance v0, Lcom/frostwire/jlibtorrent/swig/reannounce_flags_t;

    .line 172
    .line 173
    invoke-static {}, Lcom/frostwire/jlibtorrent/swig/libtorrent_jni;->torrent_handle_ignore_min_interval_get()J

    .line 174
    .line 175
    .line 176
    move-result-wide v1

    .line 177
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 178
    .line 179
    .line 180
    iput-wide v1, v0, Lcom/frostwire/jlibtorrent/swig/reannounce_flags_t;->a:J

    .line 181
    .line 182
    sput-object v0, Lcom/frostwire/jlibtorrent/swig/torrent_handle;->r:Lcom/frostwire/jlibtorrent/swig/reannounce_flags_t;

    .line 183
    .line 184
    return-void
.end method

.method public constructor <init>(JZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-boolean p3, p0, Lcom/frostwire/jlibtorrent/swig/torrent_handle;->b:Z

    .line 5
    .line 6
    iput-wide p1, p0, Lcom/frostwire/jlibtorrent/swig/torrent_handle;->a:J

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a()Lcom/frostwire/jlibtorrent/swig/torrent_info;
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/frostwire/jlibtorrent/swig/torrent_handle;->a:J

    .line 2
    .line 3
    invoke-static {v0, v1, p0}, Lcom/frostwire/jlibtorrent/swig/libtorrent_jni;->torrent_handle_torrent_file_ptr(JLcom/frostwire/jlibtorrent/swig/torrent_handle;)J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    const-wide/16 v2, 0x0

    .line 8
    .line 9
    cmp-long v2, v0, v2

    .line 10
    .line 11
    if-nez v2, :cond_0

    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    return-object v0

    .line 15
    :cond_0
    new-instance v2, Lcom/frostwire/jlibtorrent/swig/torrent_info;

    .line 16
    .line 17
    const/4 v3, 0x0

    .line 18
    invoke-direct {v2, v0, v1, v3}, Lcom/frostwire/jlibtorrent/swig/torrent_info;-><init>(JZ)V

    .line 19
    .line 20
    .line 21
    return-object v2
.end method

.method public final finalize()V
    .locals 5

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-wide v0, p0, Lcom/frostwire/jlibtorrent/swig/torrent_handle;->a:J

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
    iget-boolean v4, p0, Lcom/frostwire/jlibtorrent/swig/torrent_handle;->b:Z

    .line 11
    .line 12
    if-eqz v4, :cond_0

    .line 13
    .line 14
    const/4 v4, 0x0

    .line 15
    iput-boolean v4, p0, Lcom/frostwire/jlibtorrent/swig/torrent_handle;->b:Z

    .line 16
    .line 17
    invoke-static {v0, v1}, Lcom/frostwire/jlibtorrent/swig/libtorrent_jni;->delete_torrent_handle(J)V

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
    iput-wide v2, p0, Lcom/frostwire/jlibtorrent/swig/torrent_handle;->a:J
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
