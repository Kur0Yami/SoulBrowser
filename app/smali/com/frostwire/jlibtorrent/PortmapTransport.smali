.class public final enum Lcom/frostwire/jlibtorrent/PortmapTransport;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/frostwire/jlibtorrent/PortmapTransport;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic c:[Lcom/frostwire/jlibtorrent/PortmapTransport;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lcom/frostwire/jlibtorrent/PortmapTransport;

    .line 2
    .line 3
    sget-object v1, Lcom/frostwire/jlibtorrent/swig/portmap_transport;->c:Lcom/frostwire/jlibtorrent/swig/portmap_transport;

    .line 4
    .line 5
    iget v1, v1, Lcom/frostwire/jlibtorrent/swig/portmap_transport;->a:I

    .line 6
    .line 7
    const-string v1, "NAT_PMP"

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 11
    .line 12
    .line 13
    new-instance v1, Lcom/frostwire/jlibtorrent/PortmapTransport;

    .line 14
    .line 15
    sget-object v3, Lcom/frostwire/jlibtorrent/swig/portmap_transport;->d:Lcom/frostwire/jlibtorrent/swig/portmap_transport;

    .line 16
    .line 17
    iget v3, v3, Lcom/frostwire/jlibtorrent/swig/portmap_transport;->a:I

    .line 18
    .line 19
    const-string v3, "UPNP"

    .line 20
    .line 21
    const/4 v4, 0x1

    .line 22
    invoke-direct {v1, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 23
    .line 24
    .line 25
    const/4 v3, 0x2

    .line 26
    new-array v3, v3, [Lcom/frostwire/jlibtorrent/PortmapTransport;

    .line 27
    .line 28
    aput-object v0, v3, v2

    .line 29
    .line 30
    aput-object v1, v3, v4

    .line 31
    .line 32
    sput-object v3, Lcom/frostwire/jlibtorrent/PortmapTransport;->c:[Lcom/frostwire/jlibtorrent/PortmapTransport;

    .line 33
    .line 34
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/frostwire/jlibtorrent/PortmapTransport;
    .locals 1

    .line 1
    const-class v0, Lcom/frostwire/jlibtorrent/PortmapTransport;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/frostwire/jlibtorrent/PortmapTransport;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/frostwire/jlibtorrent/PortmapTransport;
    .locals 1

    .line 1
    sget-object v0, Lcom/frostwire/jlibtorrent/PortmapTransport;->c:[Lcom/frostwire/jlibtorrent/PortmapTransport;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/frostwire/jlibtorrent/PortmapTransport;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/frostwire/jlibtorrent/PortmapTransport;

    .line 8
    .line 9
    return-object v0
.end method
