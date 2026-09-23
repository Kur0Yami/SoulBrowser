.class public Lcom/frostwire/jlibtorrent/swig/session_handle;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final c:Lcom/frostwire/jlibtorrent/swig/save_state_flags_t;

.field public static final d:Lcom/frostwire/jlibtorrent/swig/save_state_flags_t;

.field public static final e:Lcom/frostwire/jlibtorrent/swig/save_state_flags_t;

.field public static final f:Lcom/frostwire/jlibtorrent/swig/remove_flags_t;

.field public static final g:Lcom/frostwire/jlibtorrent/swig/remove_flags_t;

.field public static final h:Lcom/frostwire/jlibtorrent/swig/session_flags_t;

.field public static final i:Lcom/frostwire/jlibtorrent/swig/reopen_network_flags_t;


# instance fields
.field public transient a:J

.field public transient b:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/frostwire/jlibtorrent/swig/save_state_flags_t;

    .line 2
    .line 3
    invoke-static {}, Lcom/frostwire/jlibtorrent/swig/libtorrent_jni;->session_handle_save_settings_get()J

    .line 4
    .line 5
    .line 6
    move-result-wide v1

    .line 7
    invoke-direct {v0, v1, v2}, Lcom/frostwire/jlibtorrent/swig/save_state_flags_t;-><init>(J)V

    .line 8
    .line 9
    .line 10
    sput-object v0, Lcom/frostwire/jlibtorrent/swig/session_handle;->c:Lcom/frostwire/jlibtorrent/swig/save_state_flags_t;

    .line 11
    .line 12
    new-instance v0, Lcom/frostwire/jlibtorrent/swig/save_state_flags_t;

    .line 13
    .line 14
    invoke-static {}, Lcom/frostwire/jlibtorrent/swig/libtorrent_jni;->session_handle_save_dht_settings_get()J

    .line 15
    .line 16
    .line 17
    move-result-wide v1

    .line 18
    invoke-direct {v0, v1, v2}, Lcom/frostwire/jlibtorrent/swig/save_state_flags_t;-><init>(J)V

    .line 19
    .line 20
    .line 21
    sput-object v0, Lcom/frostwire/jlibtorrent/swig/session_handle;->d:Lcom/frostwire/jlibtorrent/swig/save_state_flags_t;

    .line 22
    .line 23
    new-instance v0, Lcom/frostwire/jlibtorrent/swig/save_state_flags_t;

    .line 24
    .line 25
    invoke-static {}, Lcom/frostwire/jlibtorrent/swig/libtorrent_jni;->session_handle_save_dht_state_get()J

    .line 26
    .line 27
    .line 28
    move-result-wide v1

    .line 29
    invoke-direct {v0, v1, v2}, Lcom/frostwire/jlibtorrent/swig/save_state_flags_t;-><init>(J)V

    .line 30
    .line 31
    .line 32
    sput-object v0, Lcom/frostwire/jlibtorrent/swig/session_handle;->e:Lcom/frostwire/jlibtorrent/swig/save_state_flags_t;

    .line 33
    .line 34
    invoke-static {}, Lcom/frostwire/jlibtorrent/swig/libtorrent_jni;->session_handle_disk_cache_no_pieces_get()I

    .line 35
    .line 36
    .line 37
    new-instance v0, Lcom/frostwire/jlibtorrent/swig/remove_flags_t;

    .line 38
    .line 39
    invoke-static {}, Lcom/frostwire/jlibtorrent/swig/libtorrent_jni;->session_handle_delete_files_get()J

    .line 40
    .line 41
    .line 42
    move-result-wide v1

    .line 43
    invoke-direct {v0, v1, v2}, Lcom/frostwire/jlibtorrent/swig/remove_flags_t;-><init>(J)V

    .line 44
    .line 45
    .line 46
    sput-object v0, Lcom/frostwire/jlibtorrent/swig/session_handle;->f:Lcom/frostwire/jlibtorrent/swig/remove_flags_t;

    .line 47
    .line 48
    new-instance v0, Lcom/frostwire/jlibtorrent/swig/remove_flags_t;

    .line 49
    .line 50
    invoke-static {}, Lcom/frostwire/jlibtorrent/swig/libtorrent_jni;->session_handle_delete_partfile_get()J

    .line 51
    .line 52
    .line 53
    move-result-wide v1

    .line 54
    invoke-direct {v0, v1, v2}, Lcom/frostwire/jlibtorrent/swig/remove_flags_t;-><init>(J)V

    .line 55
    .line 56
    .line 57
    sput-object v0, Lcom/frostwire/jlibtorrent/swig/session_handle;->g:Lcom/frostwire/jlibtorrent/swig/remove_flags_t;

    .line 58
    .line 59
    new-instance v0, Lcom/frostwire/jlibtorrent/swig/session_flags_t;

    .line 60
    .line 61
    invoke-static {}, Lcom/frostwire/jlibtorrent/swig/libtorrent_jni;->session_handle_paused_get()J

    .line 62
    .line 63
    .line 64
    move-result-wide v1

    .line 65
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 66
    .line 67
    .line 68
    iput-wide v1, v0, Lcom/frostwire/jlibtorrent/swig/session_flags_t;->a:J

    .line 69
    .line 70
    sput-object v0, Lcom/frostwire/jlibtorrent/swig/session_handle;->h:Lcom/frostwire/jlibtorrent/swig/session_flags_t;

    .line 71
    .line 72
    invoke-static {}, Lcom/frostwire/jlibtorrent/swig/libtorrent_jni;->session_handle_udp_get()I

    .line 73
    .line 74
    .line 75
    move-result v0

    .line 76
    invoke-static {v0}, Lcom/frostwire/jlibtorrent/swig/portmap_protocol;->a(I)V

    .line 77
    .line 78
    .line 79
    invoke-static {}, Lcom/frostwire/jlibtorrent/swig/libtorrent_jni;->session_handle_tcp_get()I

    .line 80
    .line 81
    .line 82
    move-result v0

    .line 83
    invoke-static {v0}, Lcom/frostwire/jlibtorrent/swig/portmap_protocol;->a(I)V

    .line 84
    .line 85
    .line 86
    new-instance v0, Lcom/frostwire/jlibtorrent/swig/reopen_network_flags_t;

    .line 87
    .line 88
    invoke-static {}, Lcom/frostwire/jlibtorrent/swig/libtorrent_jni;->session_handle_reopen_map_ports_get()J

    .line 89
    .line 90
    .line 91
    move-result-wide v1

    .line 92
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 93
    .line 94
    .line 95
    iput-wide v1, v0, Lcom/frostwire/jlibtorrent/swig/reopen_network_flags_t;->a:J

    .line 96
    .line 97
    sput-object v0, Lcom/frostwire/jlibtorrent/swig/session_handle;->i:Lcom/frostwire/jlibtorrent/swig/reopen_network_flags_t;

    .line 98
    .line 99
    return-void
.end method


# virtual methods
.method public declared-synchronized a()V
    .locals 5

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-wide v0, p0, Lcom/frostwire/jlibtorrent/swig/session_handle;->a:J

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
    iget-boolean v4, p0, Lcom/frostwire/jlibtorrent/swig/session_handle;->b:Z

    .line 11
    .line 12
    if-eqz v4, :cond_0

    .line 13
    .line 14
    const/4 v4, 0x0

    .line 15
    iput-boolean v4, p0, Lcom/frostwire/jlibtorrent/swig/session_handle;->b:Z

    .line 16
    .line 17
    invoke-static {v0, v1}, Lcom/frostwire/jlibtorrent/swig/libtorrent_jni;->delete_session_handle(J)V

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
    iput-wide v2, p0, Lcom/frostwire/jlibtorrent/swig/session_handle;->a:J
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

.method public finalize()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/frostwire/jlibtorrent/swig/session_handle;->a()V

    .line 2
    .line 3
    .line 4
    return-void
.end method
