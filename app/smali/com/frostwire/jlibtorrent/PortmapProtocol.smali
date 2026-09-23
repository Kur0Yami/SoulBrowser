.class public final enum Lcom/frostwire/jlibtorrent/PortmapProtocol;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/frostwire/jlibtorrent/PortmapProtocol;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic c:[Lcom/frostwire/jlibtorrent/PortmapProtocol;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Lcom/frostwire/jlibtorrent/PortmapProtocol;

    .line 2
    .line 3
    sget-object v1, Lcom/frostwire/jlibtorrent/swig/portmap_protocol;->c:Lcom/frostwire/jlibtorrent/swig/portmap_protocol;

    .line 4
    .line 5
    iget v1, v1, Lcom/frostwire/jlibtorrent/swig/portmap_protocol;->a:I

    .line 6
    .line 7
    const-string v1, "NONE"

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 11
    .line 12
    .line 13
    new-instance v1, Lcom/frostwire/jlibtorrent/PortmapProtocol;

    .line 14
    .line 15
    sget-object v3, Lcom/frostwire/jlibtorrent/swig/portmap_protocol;->d:Lcom/frostwire/jlibtorrent/swig/portmap_protocol;

    .line 16
    .line 17
    iget v3, v3, Lcom/frostwire/jlibtorrent/swig/portmap_protocol;->a:I

    .line 18
    .line 19
    const-string v3, "TCP"

    .line 20
    .line 21
    const/4 v4, 0x1

    .line 22
    invoke-direct {v1, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 23
    .line 24
    .line 25
    new-instance v3, Lcom/frostwire/jlibtorrent/PortmapProtocol;

    .line 26
    .line 27
    sget-object v5, Lcom/frostwire/jlibtorrent/swig/portmap_protocol;->e:Lcom/frostwire/jlibtorrent/swig/portmap_protocol;

    .line 28
    .line 29
    iget v5, v5, Lcom/frostwire/jlibtorrent/swig/portmap_protocol;->a:I

    .line 30
    .line 31
    const-string v5, "UDP"

    .line 32
    .line 33
    const/4 v6, 0x2

    .line 34
    invoke-direct {v3, v5, v6}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 35
    .line 36
    .line 37
    const/4 v5, 0x3

    .line 38
    new-array v5, v5, [Lcom/frostwire/jlibtorrent/PortmapProtocol;

    .line 39
    .line 40
    aput-object v0, v5, v2

    .line 41
    .line 42
    aput-object v1, v5, v4

    .line 43
    .line 44
    aput-object v3, v5, v6

    .line 45
    .line 46
    sput-object v5, Lcom/frostwire/jlibtorrent/PortmapProtocol;->c:[Lcom/frostwire/jlibtorrent/PortmapProtocol;

    .line 47
    .line 48
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/frostwire/jlibtorrent/PortmapProtocol;
    .locals 1

    .line 1
    const-class v0, Lcom/frostwire/jlibtorrent/PortmapProtocol;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/frostwire/jlibtorrent/PortmapProtocol;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/frostwire/jlibtorrent/PortmapProtocol;
    .locals 1

    .line 1
    sget-object v0, Lcom/frostwire/jlibtorrent/PortmapProtocol;->c:[Lcom/frostwire/jlibtorrent/PortmapProtocol;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/frostwire/jlibtorrent/PortmapProtocol;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/frostwire/jlibtorrent/PortmapProtocol;

    .line 8
    .line 9
    return-object v0
.end method
