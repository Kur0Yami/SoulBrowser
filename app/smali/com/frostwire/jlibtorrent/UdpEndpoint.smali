.class public final Lcom/frostwire/jlibtorrent/UdpEndpoint;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field public final c:Lcom/frostwire/jlibtorrent/swig/udp_endpoint;


# direct methods
.method public constructor <init>(Lcom/frostwire/jlibtorrent/swig/udp_endpoint;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/frostwire/jlibtorrent/UdpEndpoint;->c:Lcom/frostwire/jlibtorrent/swig/udp_endpoint;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final clone()Ljava/lang/Object;
    .locals 5

    .line 1
    new-instance v0, Lcom/frostwire/jlibtorrent/UdpEndpoint;

    .line 2
    .line 3
    new-instance v1, Lcom/frostwire/jlibtorrent/swig/udp_endpoint;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/frostwire/jlibtorrent/UdpEndpoint;->c:Lcom/frostwire/jlibtorrent/swig/udp_endpoint;

    .line 6
    .line 7
    iget-wide v3, v2, Lcom/frostwire/jlibtorrent/swig/udp_endpoint;->a:J

    .line 8
    .line 9
    invoke-static {v3, v4, v2}, Lcom/frostwire/jlibtorrent/swig/libtorrent_jni;->new_udp_endpoint__SWIG_2(JLcom/frostwire/jlibtorrent/swig/udp_endpoint;)J

    .line 10
    .line 11
    .line 12
    move-result-wide v2

    .line 13
    const/4 v4, 0x1

    .line 14
    invoke-direct {v1, v2, v3, v4}, Lcom/frostwire/jlibtorrent/swig/udp_endpoint;-><init>(JZ)V

    .line 15
    .line 16
    .line 17
    invoke-direct {v0, v1}, Lcom/frostwire/jlibtorrent/UdpEndpoint;-><init>(Lcom/frostwire/jlibtorrent/swig/udp_endpoint;)V

    .line 18
    .line 19
    .line 20
    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "udp:"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    new-instance v1, Lcom/frostwire/jlibtorrent/swig/address;

    .line 9
    .line 10
    iget-object v2, p0, Lcom/frostwire/jlibtorrent/UdpEndpoint;->c:Lcom/frostwire/jlibtorrent/swig/udp_endpoint;

    .line 11
    .line 12
    iget-wide v3, v2, Lcom/frostwire/jlibtorrent/swig/udp_endpoint;->a:J

    .line 13
    .line 14
    invoke-static {v3, v4, v2}, Lcom/frostwire/jlibtorrent/swig/libtorrent_jni;->udp_endpoint_address(JLcom/frostwire/jlibtorrent/swig/udp_endpoint;)J

    .line 15
    .line 16
    .line 17
    move-result-wide v3

    .line 18
    invoke-direct {v1, v3, v4}, Lcom/frostwire/jlibtorrent/swig/address;-><init>(J)V

    .line 19
    .line 20
    .line 21
    invoke-static {v1}, Lcom/frostwire/jlibtorrent/Address;->a(Lcom/frostwire/jlibtorrent/swig/address;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    const-string v1, ":"

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    iget-wide v3, v2, Lcom/frostwire/jlibtorrent/swig/udp_endpoint;->a:J

    .line 34
    .line 35
    invoke-static {v3, v4, v2}, Lcom/frostwire/jlibtorrent/swig/libtorrent_jni;->udp_endpoint_port(JLcom/frostwire/jlibtorrent/swig/udp_endpoint;)I

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    return-object v0
.end method
