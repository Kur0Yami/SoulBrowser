.class public final enum Lcom/frostwire/jlibtorrent/alerts/SocketType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/frostwire/jlibtorrent/alerts/SocketType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum f:Lcom/frostwire/jlibtorrent/alerts/SocketType;

.field public static final enum g:Lcom/frostwire/jlibtorrent/alerts/SocketType;

.field public static final synthetic h:[Lcom/frostwire/jlibtorrent/alerts/SocketType;


# instance fields
.field public final c:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 1
    new-instance v0, Lcom/frostwire/jlibtorrent/alerts/SocketType;

    .line 2
    .line 3
    sget-object v1, Lcom/frostwire/jlibtorrent/swig/socket_type_t;->c:Lcom/frostwire/jlibtorrent/swig/socket_type_t;

    .line 4
    .line 5
    iget v1, v1, Lcom/frostwire/jlibtorrent/swig/socket_type_t;->a:I

    .line 6
    .line 7
    const-string v2, "TCP"

    .line 8
    .line 9
    const/4 v3, 0x0

    .line 10
    invoke-direct {v0, v2, v3, v1}, Lcom/frostwire/jlibtorrent/alerts/SocketType;-><init>(Ljava/lang/String;II)V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lcom/frostwire/jlibtorrent/alerts/SocketType;->f:Lcom/frostwire/jlibtorrent/alerts/SocketType;

    .line 14
    .line 15
    new-instance v1, Lcom/frostwire/jlibtorrent/alerts/SocketType;

    .line 16
    .line 17
    sget-object v2, Lcom/frostwire/jlibtorrent/swig/socket_type_t;->d:Lcom/frostwire/jlibtorrent/swig/socket_type_t;

    .line 18
    .line 19
    iget v2, v2, Lcom/frostwire/jlibtorrent/swig/socket_type_t;->a:I

    .line 20
    .line 21
    const-string v4, "TCP_SSL"

    .line 22
    .line 23
    const/4 v5, 0x1

    .line 24
    invoke-direct {v1, v4, v5, v2}, Lcom/frostwire/jlibtorrent/alerts/SocketType;-><init>(Ljava/lang/String;II)V

    .line 25
    .line 26
    .line 27
    new-instance v2, Lcom/frostwire/jlibtorrent/alerts/SocketType;

    .line 28
    .line 29
    sget-object v4, Lcom/frostwire/jlibtorrent/swig/socket_type_t;->e:Lcom/frostwire/jlibtorrent/swig/socket_type_t;

    .line 30
    .line 31
    iget v4, v4, Lcom/frostwire/jlibtorrent/swig/socket_type_t;->a:I

    .line 32
    .line 33
    const-string v6, "UDP"

    .line 34
    .line 35
    const/4 v7, 0x2

    .line 36
    invoke-direct {v2, v6, v7, v4}, Lcom/frostwire/jlibtorrent/alerts/SocketType;-><init>(Ljava/lang/String;II)V

    .line 37
    .line 38
    .line 39
    new-instance v4, Lcom/frostwire/jlibtorrent/alerts/SocketType;

    .line 40
    .line 41
    sget-object v6, Lcom/frostwire/jlibtorrent/swig/socket_type_t;->f:Lcom/frostwire/jlibtorrent/swig/socket_type_t;

    .line 42
    .line 43
    iget v6, v6, Lcom/frostwire/jlibtorrent/swig/socket_type_t;->a:I

    .line 44
    .line 45
    const-string v8, "I2P"

    .line 46
    .line 47
    const/4 v9, 0x3

    .line 48
    invoke-direct {v4, v8, v9, v6}, Lcom/frostwire/jlibtorrent/alerts/SocketType;-><init>(Ljava/lang/String;II)V

    .line 49
    .line 50
    .line 51
    new-instance v6, Lcom/frostwire/jlibtorrent/alerts/SocketType;

    .line 52
    .line 53
    sget-object v8, Lcom/frostwire/jlibtorrent/swig/socket_type_t;->g:Lcom/frostwire/jlibtorrent/swig/socket_type_t;

    .line 54
    .line 55
    iget v8, v8, Lcom/frostwire/jlibtorrent/swig/socket_type_t;->a:I

    .line 56
    .line 57
    const-string v10, "SOCKS5"

    .line 58
    .line 59
    const/4 v11, 0x4

    .line 60
    invoke-direct {v6, v10, v11, v8}, Lcom/frostwire/jlibtorrent/alerts/SocketType;-><init>(Ljava/lang/String;II)V

    .line 61
    .line 62
    .line 63
    new-instance v8, Lcom/frostwire/jlibtorrent/alerts/SocketType;

    .line 64
    .line 65
    sget-object v10, Lcom/frostwire/jlibtorrent/swig/socket_type_t;->h:Lcom/frostwire/jlibtorrent/swig/socket_type_t;

    .line 66
    .line 67
    iget v10, v10, Lcom/frostwire/jlibtorrent/swig/socket_type_t;->a:I

    .line 68
    .line 69
    const-string v12, "UTP_SSL"

    .line 70
    .line 71
    const/4 v13, 0x5

    .line 72
    invoke-direct {v8, v12, v13, v10}, Lcom/frostwire/jlibtorrent/alerts/SocketType;-><init>(Ljava/lang/String;II)V

    .line 73
    .line 74
    .line 75
    new-instance v10, Lcom/frostwire/jlibtorrent/alerts/SocketType;

    .line 76
    .line 77
    const/4 v12, -0x1

    .line 78
    const-string v14, "UNKNOWN"

    .line 79
    .line 80
    const/4 v15, 0x6

    .line 81
    invoke-direct {v10, v14, v15, v12}, Lcom/frostwire/jlibtorrent/alerts/SocketType;-><init>(Ljava/lang/String;II)V

    .line 82
    .line 83
    .line 84
    sput-object v10, Lcom/frostwire/jlibtorrent/alerts/SocketType;->g:Lcom/frostwire/jlibtorrent/alerts/SocketType;

    .line 85
    .line 86
    const/4 v12, 0x7

    .line 87
    new-array v12, v12, [Lcom/frostwire/jlibtorrent/alerts/SocketType;

    .line 88
    .line 89
    aput-object v0, v12, v3

    .line 90
    .line 91
    aput-object v1, v12, v5

    .line 92
    .line 93
    aput-object v2, v12, v7

    .line 94
    .line 95
    aput-object v4, v12, v9

    .line 96
    .line 97
    aput-object v6, v12, v11

    .line 98
    .line 99
    aput-object v8, v12, v13

    .line 100
    .line 101
    aput-object v10, v12, v15

    .line 102
    .line 103
    sput-object v12, Lcom/frostwire/jlibtorrent/alerts/SocketType;->h:[Lcom/frostwire/jlibtorrent/alerts/SocketType;

    .line 104
    .line 105
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput p3, p0, Lcom/frostwire/jlibtorrent/alerts/SocketType;->c:I

    .line 5
    .line 6
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/frostwire/jlibtorrent/alerts/SocketType;
    .locals 1

    .line 1
    const-class v0, Lcom/frostwire/jlibtorrent/alerts/SocketType;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/frostwire/jlibtorrent/alerts/SocketType;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/frostwire/jlibtorrent/alerts/SocketType;
    .locals 1

    .line 1
    sget-object v0, Lcom/frostwire/jlibtorrent/alerts/SocketType;->h:[Lcom/frostwire/jlibtorrent/alerts/SocketType;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/frostwire/jlibtorrent/alerts/SocketType;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/frostwire/jlibtorrent/alerts/SocketType;

    .line 8
    .line 9
    return-object v0
.end method
