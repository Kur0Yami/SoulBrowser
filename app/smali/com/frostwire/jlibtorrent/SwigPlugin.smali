.class Lcom/frostwire/jlibtorrent/SwigPlugin;
.super Lcom/frostwire/jlibtorrent/swig/swig_plugin;
.source "SourceFile"


# virtual methods
.method public final a(Lcom/frostwire/jlibtorrent/swig/string_view;Lcom/frostwire/jlibtorrent/swig/udp_endpoint;Lcom/frostwire/jlibtorrent/swig/bdecode_node;Lcom/frostwire/jlibtorrent/swig/entry;)Z
    .locals 1

    .line 1
    new-instance p2, Lcom/frostwire/jlibtorrent/swig/byte_vector;

    .line 2
    .line 3
    iget-wide p3, p1, Lcom/frostwire/jlibtorrent/swig/string_view;->a:J

    .line 4
    .line 5
    invoke-static {p3, p4, p1}, Lcom/frostwire/jlibtorrent/swig/libtorrent_jni;->string_view_to_bytes(JLcom/frostwire/jlibtorrent/swig/string_view;)J

    .line 6
    .line 7
    .line 8
    move-result-wide p3

    .line 9
    invoke-direct {p2, p3, p4}, Lcom/frostwire/jlibtorrent/swig/byte_vector;-><init>(J)V

    .line 10
    .line 11
    .line 12
    const-string p1, "US-ASCII"

    .line 13
    .line 14
    invoke-static {p2}, Lcom/frostwire/jlibtorrent/Vectors;->a(Lcom/frostwire/jlibtorrent/swig/byte_vector;)[B

    .line 15
    .line 16
    .line 17
    move-result-object p2

    .line 18
    const/4 p3, 0x0

    .line 19
    move p4, p3

    .line 20
    :goto_0
    array-length v0, p2

    .line 21
    if-ge p4, v0, :cond_0

    .line 22
    .line 23
    aget-byte v0, p2, p4

    .line 24
    .line 25
    if-eqz v0, :cond_0

    .line 26
    .line 27
    add-int/lit8 p4, p4, 0x1

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    if-nez p4, :cond_1

    .line 31
    .line 32
    goto :goto_1

    .line 33
    :cond_1
    :try_start_0
    new-instance v0, Ljava/lang/String;

    .line 34
    .line 35
    invoke-direct {v0, p2, p3, p4, p1}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    .line 37
    .line 38
    :goto_1
    const/4 p1, 0x0

    .line 39
    throw p1

    .line 40
    :catch_0
    move-exception p1

    .line 41
    new-instance p2, Ljava/lang/RuntimeException;

    .line 42
    .line 43
    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 44
    .line 45
    .line 46
    throw p2
.end method
