.class public final enum Lcom/frostwire/jlibtorrent/PeerInfo$ConnectionType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/frostwire/jlibtorrent/PeerInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ConnectionType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/frostwire/jlibtorrent/PeerInfo$ConnectionType;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic c:[Lcom/frostwire/jlibtorrent/PeerInfo$ConnectionType;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 1
    new-instance v0, Lcom/frostwire/jlibtorrent/PeerInfo$ConnectionType;

    .line 2
    .line 3
    sget-object v1, Lcom/frostwire/jlibtorrent/swig/peer_info$connection_type_t;->c:Lcom/frostwire/jlibtorrent/swig/peer_info$connection_type_t;

    .line 4
    .line 5
    iget v1, v1, Lcom/frostwire/jlibtorrent/swig/peer_info$connection_type_t;->a:I

    .line 6
    .line 7
    const-string v1, "STANDARD_BITTORRENT"

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 11
    .line 12
    .line 13
    new-instance v1, Lcom/frostwire/jlibtorrent/PeerInfo$ConnectionType;

    .line 14
    .line 15
    sget-object v3, Lcom/frostwire/jlibtorrent/swig/peer_info$connection_type_t;->d:Lcom/frostwire/jlibtorrent/swig/peer_info$connection_type_t;

    .line 16
    .line 17
    iget v3, v3, Lcom/frostwire/jlibtorrent/swig/peer_info$connection_type_t;->a:I

    .line 18
    .line 19
    const-string v3, "WEB_SEED"

    .line 20
    .line 21
    const/4 v4, 0x1

    .line 22
    invoke-direct {v1, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 23
    .line 24
    .line 25
    new-instance v3, Lcom/frostwire/jlibtorrent/PeerInfo$ConnectionType;

    .line 26
    .line 27
    sget-object v5, Lcom/frostwire/jlibtorrent/swig/peer_info$connection_type_t;->e:Lcom/frostwire/jlibtorrent/swig/peer_info$connection_type_t;

    .line 28
    .line 29
    iget v5, v5, Lcom/frostwire/jlibtorrent/swig/peer_info$connection_type_t;->a:I

    .line 30
    .line 31
    const-string v5, "HTTP_SEED"

    .line 32
    .line 33
    const/4 v6, 0x2

    .line 34
    invoke-direct {v3, v5, v6}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 35
    .line 36
    .line 37
    new-instance v5, Lcom/frostwire/jlibtorrent/PeerInfo$ConnectionType;

    .line 38
    .line 39
    const-string v7, "UNKNOWN"

    .line 40
    .line 41
    const/4 v8, 0x3

    .line 42
    invoke-direct {v5, v7, v8}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 43
    .line 44
    .line 45
    const/4 v7, 0x4

    .line 46
    new-array v7, v7, [Lcom/frostwire/jlibtorrent/PeerInfo$ConnectionType;

    .line 47
    .line 48
    aput-object v0, v7, v2

    .line 49
    .line 50
    aput-object v1, v7, v4

    .line 51
    .line 52
    aput-object v3, v7, v6

    .line 53
    .line 54
    aput-object v5, v7, v8

    .line 55
    .line 56
    sput-object v7, Lcom/frostwire/jlibtorrent/PeerInfo$ConnectionType;->c:[Lcom/frostwire/jlibtorrent/PeerInfo$ConnectionType;

    .line 57
    .line 58
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/frostwire/jlibtorrent/PeerInfo$ConnectionType;
    .locals 1

    .line 1
    const-class v0, Lcom/frostwire/jlibtorrent/PeerInfo$ConnectionType;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/frostwire/jlibtorrent/PeerInfo$ConnectionType;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/frostwire/jlibtorrent/PeerInfo$ConnectionType;
    .locals 1

    .line 1
    sget-object v0, Lcom/frostwire/jlibtorrent/PeerInfo$ConnectionType;->c:[Lcom/frostwire/jlibtorrent/PeerInfo$ConnectionType;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/frostwire/jlibtorrent/PeerInfo$ConnectionType;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/frostwire/jlibtorrent/PeerInfo$ConnectionType;

    .line 8
    .line 9
    return-object v0
.end method
