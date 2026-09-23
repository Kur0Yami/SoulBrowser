.class public final Lcom/frostwire/jlibtorrent/swig/http_errors;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    invoke-static {}, Lcom/frostwire/jlibtorrent/swig/libtorrent_jni;->cont_get()I

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lcom/frostwire/jlibtorrent/swig/libtorrent_jni;->ok_get()I

    .line 5
    .line 6
    .line 7
    invoke-static {}, Lcom/frostwire/jlibtorrent/swig/libtorrent_jni;->created_get()I

    .line 8
    .line 9
    .line 10
    invoke-static {}, Lcom/frostwire/jlibtorrent/swig/libtorrent_jni;->accepted_get()I

    .line 11
    .line 12
    .line 13
    invoke-static {}, Lcom/frostwire/jlibtorrent/swig/libtorrent_jni;->no_content_get()I

    .line 14
    .line 15
    .line 16
    invoke-static {}, Lcom/frostwire/jlibtorrent/swig/libtorrent_jni;->multiple_choices_get()I

    .line 17
    .line 18
    .line 19
    invoke-static {}, Lcom/frostwire/jlibtorrent/swig/libtorrent_jni;->moved_permanently_get()I

    .line 20
    .line 21
    .line 22
    invoke-static {}, Lcom/frostwire/jlibtorrent/swig/libtorrent_jni;->moved_temporarily_get()I

    .line 23
    .line 24
    .line 25
    invoke-static {}, Lcom/frostwire/jlibtorrent/swig/libtorrent_jni;->not_modified_get()I

    .line 26
    .line 27
    .line 28
    invoke-static {}, Lcom/frostwire/jlibtorrent/swig/libtorrent_jni;->bad_request_get()I

    .line 29
    .line 30
    .line 31
    invoke-static {}, Lcom/frostwire/jlibtorrent/swig/libtorrent_jni;->unauthorized_get()I

    .line 32
    .line 33
    .line 34
    invoke-static {}, Lcom/frostwire/jlibtorrent/swig/libtorrent_jni;->forbidden_get()I

    .line 35
    .line 36
    .line 37
    invoke-static {}, Lcom/frostwire/jlibtorrent/swig/libtorrent_jni;->not_found_get()I

    .line 38
    .line 39
    .line 40
    invoke-static {}, Lcom/frostwire/jlibtorrent/swig/libtorrent_jni;->internal_server_error_get()I

    .line 41
    .line 42
    .line 43
    invoke-static {}, Lcom/frostwire/jlibtorrent/swig/libtorrent_jni;->not_implemented_get()I

    .line 44
    .line 45
    .line 46
    invoke-static {}, Lcom/frostwire/jlibtorrent/swig/libtorrent_jni;->bad_gateway_get()I

    .line 47
    .line 48
    .line 49
    invoke-static {}, Lcom/frostwire/jlibtorrent/swig/libtorrent_jni;->service_unavailable_get()I

    .line 50
    .line 51
    .line 52
    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
