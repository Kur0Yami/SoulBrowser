.class public Lcom/frostwire/jlibtorrent/swig/add_files_listener;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public a(Ljava/lang/String;)Z
    .locals 4

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-class v1, Lcom/frostwire/jlibtorrent/swig/add_files_listener;

    .line 6
    .line 7
    const-wide/16 v2, 0x0

    .line 8
    .line 9
    if-ne v0, v1, :cond_0

    .line 10
    .line 11
    invoke-static {v2, v3, p0, p1}, Lcom/frostwire/jlibtorrent/swig/libtorrent_jni;->add_files_listener_pred(JLcom/frostwire/jlibtorrent/swig/add_files_listener;Ljava/lang/String;)Z

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    return p1

    .line 16
    :cond_0
    invoke-static {v2, v3, p0, p1}, Lcom/frostwire/jlibtorrent/swig/libtorrent_jni;->add_files_listener_predSwigExplicitadd_files_listener(JLcom/frostwire/jlibtorrent/swig/add_files_listener;Ljava/lang/String;)Z

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    return p1
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
