.class public Lcom/frostwire/jlibtorrent/swig/file_storage;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final b:Lcom/frostwire/jlibtorrent/swig/file_flags_t;

.field public static final c:Lcom/frostwire/jlibtorrent/swig/file_flags_t;

.field public static final d:Lcom/frostwire/jlibtorrent/swig/file_flags_t;

.field public static final e:Lcom/frostwire/jlibtorrent/swig/file_flags_t;


# instance fields
.field public transient a:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/frostwire/jlibtorrent/swig/file_flags_t;

    .line 2
    .line 3
    invoke-static {}, Lcom/frostwire/jlibtorrent/swig/libtorrent_jni;->file_storage_flag_pad_file_get()J

    .line 4
    .line 5
    .line 6
    move-result-wide v1

    .line 7
    invoke-direct {v0, v1, v2}, Lcom/frostwire/jlibtorrent/swig/file_flags_t;-><init>(J)V

    .line 8
    .line 9
    .line 10
    sput-object v0, Lcom/frostwire/jlibtorrent/swig/file_storage;->b:Lcom/frostwire/jlibtorrent/swig/file_flags_t;

    .line 11
    .line 12
    new-instance v0, Lcom/frostwire/jlibtorrent/swig/file_flags_t;

    .line 13
    .line 14
    invoke-static {}, Lcom/frostwire/jlibtorrent/swig/libtorrent_jni;->file_storage_flag_hidden_get()J

    .line 15
    .line 16
    .line 17
    move-result-wide v1

    .line 18
    invoke-direct {v0, v1, v2}, Lcom/frostwire/jlibtorrent/swig/file_flags_t;-><init>(J)V

    .line 19
    .line 20
    .line 21
    sput-object v0, Lcom/frostwire/jlibtorrent/swig/file_storage;->c:Lcom/frostwire/jlibtorrent/swig/file_flags_t;

    .line 22
    .line 23
    new-instance v0, Lcom/frostwire/jlibtorrent/swig/file_flags_t;

    .line 24
    .line 25
    invoke-static {}, Lcom/frostwire/jlibtorrent/swig/libtorrent_jni;->file_storage_flag_executable_get()J

    .line 26
    .line 27
    .line 28
    move-result-wide v1

    .line 29
    invoke-direct {v0, v1, v2}, Lcom/frostwire/jlibtorrent/swig/file_flags_t;-><init>(J)V

    .line 30
    .line 31
    .line 32
    sput-object v0, Lcom/frostwire/jlibtorrent/swig/file_storage;->d:Lcom/frostwire/jlibtorrent/swig/file_flags_t;

    .line 33
    .line 34
    new-instance v0, Lcom/frostwire/jlibtorrent/swig/file_flags_t;

    .line 35
    .line 36
    invoke-static {}, Lcom/frostwire/jlibtorrent/swig/libtorrent_jni;->file_storage_flag_symlink_get()J

    .line 37
    .line 38
    .line 39
    move-result-wide v1

    .line 40
    invoke-direct {v0, v1, v2}, Lcom/frostwire/jlibtorrent/swig/file_flags_t;-><init>(J)V

    .line 41
    .line 42
    .line 43
    sput-object v0, Lcom/frostwire/jlibtorrent/swig/file_storage;->e:Lcom/frostwire/jlibtorrent/swig/file_flags_t;

    .line 44
    .line 45
    return-void
.end method


# virtual methods
.method public final finalize()V
    .locals 4

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-wide v0, p0, Lcom/frostwire/jlibtorrent/swig/file_storage;->a:J

    .line 3
    .line 4
    const-wide/16 v2, 0x0

    .line 5
    .line 6
    cmp-long v0, v0, v2

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iput-wide v2, p0, Lcom/frostwire/jlibtorrent/swig/file_storage;->a:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :catchall_0
    move-exception v0

    .line 14
    goto :goto_1

    .line 15
    :cond_0
    :goto_0
    monitor-exit p0

    .line 16
    return-void

    .line 17
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 18
    throw v0
.end method
