.class public final Lcom/frostwire/jlibtorrent/TcpEndpoint;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field public final c:Lcom/frostwire/jlibtorrent/swig/tcp_endpoint;


# direct methods
.method public constructor <init>(Lcom/frostwire/jlibtorrent/swig/tcp_endpoint;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/frostwire/jlibtorrent/TcpEndpoint;->c:Lcom/frostwire/jlibtorrent/swig/tcp_endpoint;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final clone()Ljava/lang/Object;
    .locals 5

    .line 1
    new-instance v0, Lcom/frostwire/jlibtorrent/TcpEndpoint;

    .line 2
    .line 3
    new-instance v1, Lcom/frostwire/jlibtorrent/swig/tcp_endpoint;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/frostwire/jlibtorrent/TcpEndpoint;->c:Lcom/frostwire/jlibtorrent/swig/tcp_endpoint;

    .line 6
    .line 7
    if-nez v2, :cond_0

    .line 8
    .line 9
    const-wide/16 v3, 0x0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iget-wide v3, v2, Lcom/frostwire/jlibtorrent/swig/tcp_endpoint;->a:J

    .line 13
    .line 14
    :goto_0
    invoke-static {v3, v4, v2}, Lcom/frostwire/jlibtorrent/swig/libtorrent_jni;->new_tcp_endpoint__SWIG_2(JLcom/frostwire/jlibtorrent/swig/tcp_endpoint;)J

    .line 15
    .line 16
    .line 17
    move-result-wide v2

    .line 18
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 19
    .line 20
    .line 21
    const/4 v4, 0x1

    .line 22
    iput-boolean v4, v1, Lcom/frostwire/jlibtorrent/swig/tcp_endpoint;->b:Z

    .line 23
    .line 24
    iput-wide v2, v1, Lcom/frostwire/jlibtorrent/swig/tcp_endpoint;->a:J

    .line 25
    .line 26
    invoke-direct {v0, v1}, Lcom/frostwire/jlibtorrent/TcpEndpoint;-><init>(Lcom/frostwire/jlibtorrent/swig/tcp_endpoint;)V

    .line 27
    .line 28
    .line 29
    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/frostwire/jlibtorrent/TcpEndpoint;->c:Lcom/frostwire/jlibtorrent/swig/tcp_endpoint;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    new-instance v1, Lcom/frostwire/jlibtorrent/swig/address;

    .line 7
    .line 8
    iget-wide v2, v0, Lcom/frostwire/jlibtorrent/swig/tcp_endpoint;->a:J

    .line 9
    .line 10
    invoke-static {v2, v3, v0}, Lcom/frostwire/jlibtorrent/swig/libtorrent_jni;->tcp_endpoint_address(JLcom/frostwire/jlibtorrent/swig/tcp_endpoint;)J

    .line 11
    .line 12
    .line 13
    move-result-wide v2

    .line 14
    invoke-direct {v1, v2, v3}, Lcom/frostwire/jlibtorrent/swig/address;-><init>(J)V

    .line 15
    .line 16
    .line 17
    invoke-static {v1}, Lcom/frostwire/jlibtorrent/Address;->a(Lcom/frostwire/jlibtorrent/swig/address;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    new-instance v3, Ljava/lang/StringBuilder;

    .line 22
    .line 23
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 24
    .line 25
    .line 26
    iget-wide v4, v1, Lcom/frostwire/jlibtorrent/swig/address;->a:J

    .line 27
    .line 28
    invoke-static {v4, v5, v1}, Lcom/frostwire/jlibtorrent/swig/libtorrent_jni;->address_is_v4(JLcom/frostwire/jlibtorrent/swig/address;)Z

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    if-eqz v1, :cond_0

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    const-string v1, "["

    .line 36
    .line 37
    const-string v4, "]"

    .line 38
    .line 39
    invoke-static {v1, v2, v4}, Landroid/support/v4/media/a;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    :goto_0
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    const-string v1, ":"

    .line 47
    .line 48
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    iget-wide v1, v0, Lcom/frostwire/jlibtorrent/swig/tcp_endpoint;->a:J

    .line 52
    .line 53
    invoke-static {v1, v2, v0}, Lcom/frostwire/jlibtorrent/swig/libtorrent_jni;->tcp_endpoint_port(JLcom/frostwire/jlibtorrent/swig/tcp_endpoint;)I

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    return-object v0
.end method
