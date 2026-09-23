.class public Lcom/frostwire/jlibtorrent/swig/torrent_alert;
.super Lcom/frostwire/jlibtorrent/swig/alert;
.source "SourceFile"


# instance fields
.field public transient A:J


# direct methods
.method public constructor <init>(JZ)V
    .locals 2

    .line 1
    invoke-static {p1, p2}, Lcom/frostwire/jlibtorrent/swig/libtorrent_jni;->torrent_alert_SWIGUpcast(J)J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    invoke-direct {p0, v0, v1, p3}, Lcom/frostwire/jlibtorrent/swig/alert;-><init>(JZ)V

    .line 6
    .line 7
    .line 8
    iput-wide p1, p0, Lcom/frostwire/jlibtorrent/swig/torrent_alert;->A:J

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public declared-synchronized a()V
    .locals 5

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-wide v0, p0, Lcom/frostwire/jlibtorrent/swig/torrent_alert;->A:J

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
    invoke-static {v0, v1}, Lcom/frostwire/jlibtorrent/swig/libtorrent_jni;->delete_torrent_alert(J)V

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
    iput-wide v2, p0, Lcom/frostwire/jlibtorrent/swig/torrent_alert;->A:J

    .line 24
    .line 25
    :cond_1
    invoke-super {p0}, Lcom/frostwire/jlibtorrent/swig/alert;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    .line 27
    .line 28
    monitor-exit p0

    .line 29
    return-void

    .line 30
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 31
    throw v0
.end method

.method public b()Ljava/lang/String;
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/frostwire/jlibtorrent/swig/torrent_alert;->A:J

    .line 2
    .line 3
    invoke-static {v0, v1, p0}, Lcom/frostwire/jlibtorrent/swig/libtorrent_jni;->torrent_alert_message(JLcom/frostwire/jlibtorrent/swig/torrent_alert;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public final e()Lcom/frostwire/jlibtorrent/swig/torrent_handle;
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/frostwire/jlibtorrent/swig/torrent_alert;->A:J

    .line 2
    .line 3
    invoke-static {v0, v1, p0}, Lcom/frostwire/jlibtorrent/swig/libtorrent_jni;->torrent_alert_handle_get(JLcom/frostwire/jlibtorrent/swig/torrent_alert;)J

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
    new-instance v2, Lcom/frostwire/jlibtorrent/swig/torrent_handle;

    .line 16
    .line 17
    const/4 v3, 0x0

    .line 18
    invoke-direct {v2, v0, v1, v3}, Lcom/frostwire/jlibtorrent/swig/torrent_handle;-><init>(JZ)V

    .line 19
    .line 20
    .line 21
    return-object v2
.end method

.method public finalize()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/frostwire/jlibtorrent/swig/torrent_alert;->a()V

    .line 2
    .line 3
    .line 4
    return-void
.end method
