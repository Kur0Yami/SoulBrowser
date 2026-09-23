.class public Lcom/frostwire/jlibtorrent/swig/bt_peer_connection_handle;
.super Lcom/frostwire/jlibtorrent/swig/peer_connection_handle;
.source "SourceFile"


# virtual methods
.method public final declared-synchronized a()V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-super {p0}, Lcom/frostwire/jlibtorrent/swig/peer_connection_handle;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    .line 4
    .line 5
    monitor-exit p0

    .line 6
    return-void

    .line 7
    :catchall_0
    move-exception v0

    .line 8
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 9
    throw v0
.end method

.method public final finalize()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/frostwire/jlibtorrent/swig/bt_peer_connection_handle;->a()V

    .line 2
    .line 3
    .line 4
    return-void
.end method
