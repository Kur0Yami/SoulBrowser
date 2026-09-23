.class public final Lcom/frostwire/jlibtorrent/swig/libtorrent_errors;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    invoke-static {}, Lcom/frostwire/jlibtorrent/swig/libtorrent_jni;->libtorrent_no_error_get()I

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lcom/frostwire/jlibtorrent/swig/libtorrent_jni;->missing_file_sizes_get()I

    .line 5
    .line 6
    .line 7
    invoke-static {}, Lcom/frostwire/jlibtorrent/swig/libtorrent_jni;->http_parse_error_get()I

    .line 8
    .line 9
    .line 10
    invoke-static {}, Lcom/frostwire/jlibtorrent/swig/libtorrent_jni;->no_i2p_router_get()I

    .line 11
    .line 12
    .line 13
    invoke-static {}, Lcom/frostwire/jlibtorrent/swig/libtorrent_jni;->no_i2p_endpoint_get()I

    .line 14
    .line 15
    .line 16
    invoke-static {}, Lcom/frostwire/jlibtorrent/swig/libtorrent_jni;->scrape_not_available_get()I

    .line 17
    .line 18
    .line 19
    invoke-static {}, Lcom/frostwire/jlibtorrent/swig/libtorrent_jni;->no_entropy_get()I

    .line 20
    .line 21
    .line 22
    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
