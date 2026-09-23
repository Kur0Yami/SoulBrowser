.class public Lcom/frostwire/jlibtorrent/swig/swig_plugin;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public a(Lcom/frostwire/jlibtorrent/swig/string_view;Lcom/frostwire/jlibtorrent/swig/udp_endpoint;Lcom/frostwire/jlibtorrent/swig/bdecode_node;Lcom/frostwire/jlibtorrent/swig/entry;)Z
    .locals 15

    .line 1
    move-object/from16 v5, p1

    .line 2
    .line 3
    move-object/from16 v8, p2

    .line 4
    .line 5
    move-object/from16 v11, p3

    .line 6
    .line 7
    move-object/from16 v14, p4

    .line 8
    .line 9
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    const-class v1, Lcom/frostwire/jlibtorrent/swig/swig_plugin;

    .line 14
    .line 15
    if-ne v0, v1, :cond_0

    .line 16
    .line 17
    iget-wide v3, v5, Lcom/frostwire/jlibtorrent/swig/string_view;->a:J

    .line 18
    .line 19
    iget-wide v6, v8, Lcom/frostwire/jlibtorrent/swig/udp_endpoint;->a:J

    .line 20
    .line 21
    iget-wide v9, v11, Lcom/frostwire/jlibtorrent/swig/bdecode_node;->a:J

    .line 22
    .line 23
    iget-wide v12, v14, Lcom/frostwire/jlibtorrent/swig/entry;->a:J

    .line 24
    .line 25
    const-wide/16 v0, 0x0

    .line 26
    .line 27
    move-object v2, p0

    .line 28
    invoke-static/range {v0 .. v14}, Lcom/frostwire/jlibtorrent/swig/libtorrent_jni;->swig_plugin_on_dht_request(JLcom/frostwire/jlibtorrent/swig/swig_plugin;JLcom/frostwire/jlibtorrent/swig/string_view;JLcom/frostwire/jlibtorrent/swig/udp_endpoint;JLcom/frostwire/jlibtorrent/swig/bdecode_node;JLcom/frostwire/jlibtorrent/swig/entry;)Z

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    return v0

    .line 33
    :cond_0
    iget-wide v3, v5, Lcom/frostwire/jlibtorrent/swig/string_view;->a:J

    .line 34
    .line 35
    iget-wide v6, v8, Lcom/frostwire/jlibtorrent/swig/udp_endpoint;->a:J

    .line 36
    .line 37
    iget-wide v9, v11, Lcom/frostwire/jlibtorrent/swig/bdecode_node;->a:J

    .line 38
    .line 39
    iget-wide v12, v14, Lcom/frostwire/jlibtorrent/swig/entry;->a:J

    .line 40
    .line 41
    const-wide/16 v0, 0x0

    .line 42
    .line 43
    move-object v2, p0

    .line 44
    invoke-static/range {v0 .. v14}, Lcom/frostwire/jlibtorrent/swig/libtorrent_jni;->swig_plugin_on_dht_requestSwigExplicitswig_plugin(JLcom/frostwire/jlibtorrent/swig/swig_plugin;JLcom/frostwire/jlibtorrent/swig/string_view;JLcom/frostwire/jlibtorrent/swig/udp_endpoint;JLcom/frostwire/jlibtorrent/swig/bdecode_node;JLcom/frostwire/jlibtorrent/swig/entry;)Z

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    return v0
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
