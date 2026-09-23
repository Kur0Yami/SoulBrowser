.class public final Lcom/frostwire/jlibtorrent/Vectors;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lcom/frostwire/jlibtorrent/swig/byte_vector;)[B
    .locals 5

    .line 1
    iget-wide v0, p0, Lcom/frostwire/jlibtorrent/swig/byte_vector;->a:J

    .line 2
    .line 3
    invoke-static {v0, v1, p0}, Lcom/frostwire/jlibtorrent/swig/libtorrent_jni;->byte_vector_size(JLcom/frostwire/jlibtorrent/swig/byte_vector;)J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    long-to-int v0, v0

    .line 8
    new-array v1, v0, [B

    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    :goto_0
    if-ge v2, v0, :cond_0

    .line 12
    .line 13
    iget-wide v3, p0, Lcom/frostwire/jlibtorrent/swig/byte_vector;->a:J

    .line 14
    .line 15
    invoke-static {v3, v4, p0, v2}, Lcom/frostwire/jlibtorrent/swig/libtorrent_jni;->byte_vector_get(JLcom/frostwire/jlibtorrent/swig/byte_vector;I)B

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    aput-byte v3, v1, v2

    .line 20
    .line 21
    add-int/lit8 v2, v2, 0x1

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    return-object v1
.end method
