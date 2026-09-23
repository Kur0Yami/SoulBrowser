.class public Lcom/frostwire/jlibtorrent/swig/create_torrent;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final c:Lcom/frostwire/jlibtorrent/swig/create_flags_t;

.field public static final d:Lcom/frostwire/jlibtorrent/swig/create_flags_t;

.field public static final e:Lcom/frostwire/jlibtorrent/swig/create_flags_t;

.field public static final f:Lcom/frostwire/jlibtorrent/swig/create_flags_t;

.field public static final g:Lcom/frostwire/jlibtorrent/swig/create_flags_t;


# instance fields
.field public transient a:J

.field public transient b:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/frostwire/jlibtorrent/swig/create_flags_t;

    .line 2
    .line 3
    invoke-static {}, Lcom/frostwire/jlibtorrent/swig/libtorrent_jni;->create_torrent_optimize_alignment_get()J

    .line 4
    .line 5
    .line 6
    move-result-wide v1

    .line 7
    invoke-direct {v0, v1, v2}, Lcom/frostwire/jlibtorrent/swig/create_flags_t;-><init>(J)V

    .line 8
    .line 9
    .line 10
    sput-object v0, Lcom/frostwire/jlibtorrent/swig/create_torrent;->c:Lcom/frostwire/jlibtorrent/swig/create_flags_t;

    .line 11
    .line 12
    new-instance v0, Lcom/frostwire/jlibtorrent/swig/create_flags_t;

    .line 13
    .line 14
    invoke-static {}, Lcom/frostwire/jlibtorrent/swig/libtorrent_jni;->create_torrent_merkle_get()J

    .line 15
    .line 16
    .line 17
    move-result-wide v1

    .line 18
    invoke-direct {v0, v1, v2}, Lcom/frostwire/jlibtorrent/swig/create_flags_t;-><init>(J)V

    .line 19
    .line 20
    .line 21
    sput-object v0, Lcom/frostwire/jlibtorrent/swig/create_torrent;->d:Lcom/frostwire/jlibtorrent/swig/create_flags_t;

    .line 22
    .line 23
    new-instance v0, Lcom/frostwire/jlibtorrent/swig/create_flags_t;

    .line 24
    .line 25
    invoke-static {}, Lcom/frostwire/jlibtorrent/swig/libtorrent_jni;->create_torrent_modification_time_get()J

    .line 26
    .line 27
    .line 28
    move-result-wide v1

    .line 29
    invoke-direct {v0, v1, v2}, Lcom/frostwire/jlibtorrent/swig/create_flags_t;-><init>(J)V

    .line 30
    .line 31
    .line 32
    sput-object v0, Lcom/frostwire/jlibtorrent/swig/create_torrent;->e:Lcom/frostwire/jlibtorrent/swig/create_flags_t;

    .line 33
    .line 34
    new-instance v0, Lcom/frostwire/jlibtorrent/swig/create_flags_t;

    .line 35
    .line 36
    invoke-static {}, Lcom/frostwire/jlibtorrent/swig/libtorrent_jni;->create_torrent_symlinks_get()J

    .line 37
    .line 38
    .line 39
    move-result-wide v1

    .line 40
    invoke-direct {v0, v1, v2}, Lcom/frostwire/jlibtorrent/swig/create_flags_t;-><init>(J)V

    .line 41
    .line 42
    .line 43
    sput-object v0, Lcom/frostwire/jlibtorrent/swig/create_torrent;->f:Lcom/frostwire/jlibtorrent/swig/create_flags_t;

    .line 44
    .line 45
    new-instance v0, Lcom/frostwire/jlibtorrent/swig/create_flags_t;

    .line 46
    .line 47
    invoke-static {}, Lcom/frostwire/jlibtorrent/swig/libtorrent_jni;->create_torrent_mutable_torrent_support_get()J

    .line 48
    .line 49
    .line 50
    move-result-wide v1

    .line 51
    invoke-direct {v0, v1, v2}, Lcom/frostwire/jlibtorrent/swig/create_flags_t;-><init>(J)V

    .line 52
    .line 53
    .line 54
    sput-object v0, Lcom/frostwire/jlibtorrent/swig/create_torrent;->g:Lcom/frostwire/jlibtorrent/swig/create_flags_t;

    .line 55
    .line 56
    return-void
.end method


# virtual methods
.method public final finalize()V
    .locals 5

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-wide v0, p0, Lcom/frostwire/jlibtorrent/swig/create_torrent;->a:J

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
    iget-boolean v4, p0, Lcom/frostwire/jlibtorrent/swig/create_torrent;->b:Z

    .line 11
    .line 12
    if-eqz v4, :cond_0

    .line 13
    .line 14
    const/4 v4, 0x0

    .line 15
    iput-boolean v4, p0, Lcom/frostwire/jlibtorrent/swig/create_torrent;->b:Z

    .line 16
    .line 17
    invoke-static {v0, v1}, Lcom/frostwire/jlibtorrent/swig/libtorrent_jni;->delete_create_torrent(J)V

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
    iput-wide v2, p0, Lcom/frostwire/jlibtorrent/swig/create_torrent;->a:J
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
