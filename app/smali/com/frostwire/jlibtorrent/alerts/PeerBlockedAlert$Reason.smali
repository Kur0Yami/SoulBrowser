.class public final enum Lcom/frostwire/jlibtorrent/alerts/PeerBlockedAlert$Reason;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/frostwire/jlibtorrent/alerts/PeerBlockedAlert;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Reason"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/frostwire/jlibtorrent/alerts/PeerBlockedAlert$Reason;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic c:[Lcom/frostwire/jlibtorrent/alerts/PeerBlockedAlert$Reason;


# direct methods
.method static constructor <clinit>()V
    .locals 17

    .line 1
    new-instance v0, Lcom/frostwire/jlibtorrent/alerts/PeerBlockedAlert$Reason;

    .line 2
    .line 3
    sget-object v1, Lcom/frostwire/jlibtorrent/swig/peer_blocked_alert$reason_t;->c:Lcom/frostwire/jlibtorrent/swig/peer_blocked_alert$reason_t;

    .line 4
    .line 5
    iget v1, v1, Lcom/frostwire/jlibtorrent/swig/peer_blocked_alert$reason_t;->a:I

    .line 6
    .line 7
    const-string v1, "IP_FILTER"

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 11
    .line 12
    .line 13
    new-instance v1, Lcom/frostwire/jlibtorrent/alerts/PeerBlockedAlert$Reason;

    .line 14
    .line 15
    sget-object v3, Lcom/frostwire/jlibtorrent/swig/peer_blocked_alert$reason_t;->d:Lcom/frostwire/jlibtorrent/swig/peer_blocked_alert$reason_t;

    .line 16
    .line 17
    iget v3, v3, Lcom/frostwire/jlibtorrent/swig/peer_blocked_alert$reason_t;->a:I

    .line 18
    .line 19
    const-string v3, "PORT_FILTER"

    .line 20
    .line 21
    const/4 v4, 0x1

    .line 22
    invoke-direct {v1, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 23
    .line 24
    .line 25
    new-instance v3, Lcom/frostwire/jlibtorrent/alerts/PeerBlockedAlert$Reason;

    .line 26
    .line 27
    sget-object v5, Lcom/frostwire/jlibtorrent/swig/peer_blocked_alert$reason_t;->e:Lcom/frostwire/jlibtorrent/swig/peer_blocked_alert$reason_t;

    .line 28
    .line 29
    iget v5, v5, Lcom/frostwire/jlibtorrent/swig/peer_blocked_alert$reason_t;->a:I

    .line 30
    .line 31
    const-string v5, "I2P_MIXED"

    .line 32
    .line 33
    const/4 v6, 0x2

    .line 34
    invoke-direct {v3, v5, v6}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 35
    .line 36
    .line 37
    new-instance v5, Lcom/frostwire/jlibtorrent/alerts/PeerBlockedAlert$Reason;

    .line 38
    .line 39
    sget-object v7, Lcom/frostwire/jlibtorrent/swig/peer_blocked_alert$reason_t;->f:Lcom/frostwire/jlibtorrent/swig/peer_blocked_alert$reason_t;

    .line 40
    .line 41
    iget v7, v7, Lcom/frostwire/jlibtorrent/swig/peer_blocked_alert$reason_t;->a:I

    .line 42
    .line 43
    const-string v7, "PRIVILEGED_PORTS"

    .line 44
    .line 45
    const/4 v8, 0x3

    .line 46
    invoke-direct {v5, v7, v8}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 47
    .line 48
    .line 49
    new-instance v7, Lcom/frostwire/jlibtorrent/alerts/PeerBlockedAlert$Reason;

    .line 50
    .line 51
    sget-object v9, Lcom/frostwire/jlibtorrent/swig/peer_blocked_alert$reason_t;->g:Lcom/frostwire/jlibtorrent/swig/peer_blocked_alert$reason_t;

    .line 52
    .line 53
    iget v9, v9, Lcom/frostwire/jlibtorrent/swig/peer_blocked_alert$reason_t;->a:I

    .line 54
    .line 55
    const-string v9, "UTP_DISABLED"

    .line 56
    .line 57
    const/4 v10, 0x4

    .line 58
    invoke-direct {v7, v9, v10}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 59
    .line 60
    .line 61
    new-instance v9, Lcom/frostwire/jlibtorrent/alerts/PeerBlockedAlert$Reason;

    .line 62
    .line 63
    sget-object v11, Lcom/frostwire/jlibtorrent/swig/peer_blocked_alert$reason_t;->h:Lcom/frostwire/jlibtorrent/swig/peer_blocked_alert$reason_t;

    .line 64
    .line 65
    iget v11, v11, Lcom/frostwire/jlibtorrent/swig/peer_blocked_alert$reason_t;->a:I

    .line 66
    .line 67
    const-string v11, "TCP_DISABLED"

    .line 68
    .line 69
    const/4 v12, 0x5

    .line 70
    invoke-direct {v9, v11, v12}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 71
    .line 72
    .line 73
    new-instance v11, Lcom/frostwire/jlibtorrent/alerts/PeerBlockedAlert$Reason;

    .line 74
    .line 75
    sget-object v13, Lcom/frostwire/jlibtorrent/swig/peer_blocked_alert$reason_t;->i:Lcom/frostwire/jlibtorrent/swig/peer_blocked_alert$reason_t;

    .line 76
    .line 77
    iget v13, v13, Lcom/frostwire/jlibtorrent/swig/peer_blocked_alert$reason_t;->a:I

    .line 78
    .line 79
    const-string v13, "INVALID_LOCAL_INTERFACE"

    .line 80
    .line 81
    const/4 v14, 0x6

    .line 82
    invoke-direct {v11, v13, v14}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 83
    .line 84
    .line 85
    new-instance v13, Lcom/frostwire/jlibtorrent/alerts/PeerBlockedAlert$Reason;

    .line 86
    .line 87
    const-string v15, "UNKNOWN"

    .line 88
    .line 89
    move/from16 v16, v2

    .line 90
    .line 91
    const/4 v2, 0x7

    .line 92
    invoke-direct {v13, v15, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 93
    .line 94
    .line 95
    const/16 v15, 0x8

    .line 96
    .line 97
    new-array v15, v15, [Lcom/frostwire/jlibtorrent/alerts/PeerBlockedAlert$Reason;

    .line 98
    .line 99
    aput-object v0, v15, v16

    .line 100
    .line 101
    aput-object v1, v15, v4

    .line 102
    .line 103
    aput-object v3, v15, v6

    .line 104
    .line 105
    aput-object v5, v15, v8

    .line 106
    .line 107
    aput-object v7, v15, v10

    .line 108
    .line 109
    aput-object v9, v15, v12

    .line 110
    .line 111
    aput-object v11, v15, v14

    .line 112
    .line 113
    aput-object v13, v15, v2

    .line 114
    .line 115
    sput-object v15, Lcom/frostwire/jlibtorrent/alerts/PeerBlockedAlert$Reason;->c:[Lcom/frostwire/jlibtorrent/alerts/PeerBlockedAlert$Reason;

    .line 116
    .line 117
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/frostwire/jlibtorrent/alerts/PeerBlockedAlert$Reason;
    .locals 1

    .line 1
    const-class v0, Lcom/frostwire/jlibtorrent/alerts/PeerBlockedAlert$Reason;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/frostwire/jlibtorrent/alerts/PeerBlockedAlert$Reason;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/frostwire/jlibtorrent/alerts/PeerBlockedAlert$Reason;
    .locals 1

    .line 1
    sget-object v0, Lcom/frostwire/jlibtorrent/alerts/PeerBlockedAlert$Reason;->c:[Lcom/frostwire/jlibtorrent/alerts/PeerBlockedAlert$Reason;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/frostwire/jlibtorrent/alerts/PeerBlockedAlert$Reason;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/frostwire/jlibtorrent/alerts/PeerBlockedAlert$Reason;

    .line 8
    .line 9
    return-object v0
.end method
