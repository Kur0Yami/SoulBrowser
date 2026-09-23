.class public Lcom/frostwire/jlibtorrent/swig/set_piece_hashes_listener;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public a(I)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-class v1, Lcom/frostwire/jlibtorrent/swig/set_piece_hashes_listener;

    .line 6
    .line 7
    const-wide/16 v2, 0x0

    .line 8
    .line 9
    if-ne v0, v1, :cond_0

    .line 10
    .line 11
    invoke-static {v2, v3, p0, p1}, Lcom/frostwire/jlibtorrent/swig/libtorrent_jni;->set_piece_hashes_listener_progress(JLcom/frostwire/jlibtorrent/swig/set_piece_hashes_listener;I)V

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    invoke-static {v2, v3, p0, p1}, Lcom/frostwire/jlibtorrent/swig/libtorrent_jni;->set_piece_hashes_listener_progressSwigExplicitset_piece_hashes_listener(JLcom/frostwire/jlibtorrent/swig/set_piece_hashes_listener;I)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public final finalize()V
    .locals 0

    .line 1
    monitor-enter p0

    .line 2
    monitor-exit p0

    .line 3
    return-void
.end method
