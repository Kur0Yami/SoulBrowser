.class public final Lintra/TCPSocketSummary;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lgo/Seq$Proxy;
.implements Lbackend/DoHQueryToken;


# instance fields
.field private final refnum:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    invoke-static {}, Lintra/Intra;->touch()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lintra/TCPSocketSummary;->__New()I

    move-result v0

    iput v0, p0, Lintra/TCPSocketSummary;->refnum:I

    invoke-static {v0, p0}, Lgo/Seq;->trackGoRef(ILgo/Seq$GoObject;)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lintra/TCPSocketSummary;->refnum:I

    invoke-static {p1, p0}, Lgo/Seq;->trackGoRef(ILgo/Seq$GoObject;)V

    return-void
.end method

.method private static native __New()I
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_8

    .line 3
    .line 4
    instance-of v1, p1, Lintra/TCPSocketSummary;

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    check-cast p1, Lintra/TCPSocketSummary;

    .line 10
    .line 11
    invoke-virtual {p0}, Lintra/TCPSocketSummary;->getDownloadBytes()J

    .line 12
    .line 13
    .line 14
    move-result-wide v1

    .line 15
    invoke-virtual {p1}, Lintra/TCPSocketSummary;->getDownloadBytes()J

    .line 16
    .line 17
    .line 18
    move-result-wide v3

    .line 19
    cmp-long v1, v1, v3

    .line 20
    .line 21
    if-eqz v1, :cond_1

    .line 22
    .line 23
    return v0

    .line 24
    :cond_1
    invoke-virtual {p0}, Lintra/TCPSocketSummary;->getUploadBytes()J

    .line 25
    .line 26
    .line 27
    move-result-wide v1

    .line 28
    invoke-virtual {p1}, Lintra/TCPSocketSummary;->getUploadBytes()J

    .line 29
    .line 30
    .line 31
    move-result-wide v3

    .line 32
    cmp-long v1, v1, v3

    .line 33
    .line 34
    if-eqz v1, :cond_2

    .line 35
    .line 36
    return v0

    .line 37
    :cond_2
    invoke-virtual {p0}, Lintra/TCPSocketSummary;->getDuration()I

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    invoke-virtual {p1}, Lintra/TCPSocketSummary;->getDuration()I

    .line 42
    .line 43
    .line 44
    move-result v2

    .line 45
    if-eq v1, v2, :cond_3

    .line 46
    .line 47
    return v0

    .line 48
    :cond_3
    invoke-virtual {p0}, Lintra/TCPSocketSummary;->getServerPort()S

    .line 49
    .line 50
    .line 51
    move-result v1

    .line 52
    invoke-virtual {p1}, Lintra/TCPSocketSummary;->getServerPort()S

    .line 53
    .line 54
    .line 55
    move-result v2

    .line 56
    if-eq v1, v2, :cond_4

    .line 57
    .line 58
    return v0

    .line 59
    :cond_4
    invoke-virtual {p0}, Lintra/TCPSocketSummary;->getSynack()I

    .line 60
    .line 61
    .line 62
    move-result v1

    .line 63
    invoke-virtual {p1}, Lintra/TCPSocketSummary;->getSynack()I

    .line 64
    .line 65
    .line 66
    move-result v2

    .line 67
    if-eq v1, v2, :cond_5

    .line 68
    .line 69
    return v0

    .line 70
    :cond_5
    invoke-virtual {p0}, Lintra/TCPSocketSummary;->getRetry()Lsplit/RetryStats;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    invoke-virtual {p1}, Lintra/TCPSocketSummary;->getRetry()Lsplit/RetryStats;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    if-nez v1, :cond_6

    .line 79
    .line 80
    if-eqz p1, :cond_7

    .line 81
    .line 82
    return v0

    .line 83
    :cond_6
    invoke-virtual {v1, p1}, Lsplit/RetryStats;->equals(Ljava/lang/Object;)Z

    .line 84
    .line 85
    .line 86
    move-result p1

    .line 87
    if-nez p1, :cond_7

    .line 88
    .line 89
    return v0

    .line 90
    :cond_7
    const/4 p1, 0x1

    .line 91
    return p1

    .line 92
    :cond_8
    :goto_0
    return v0
.end method

.method public final native getDownloadBytes()J
.end method

.method public final native getDuration()I
.end method

.method public final native getRetry()Lsplit/RetryStats;
.end method

.method public final native getServerPort()S
.end method

.method public final native getSynack()I
.end method

.method public final native getUploadBytes()J
.end method

.method public hashCode()I
    .locals 8

    .line 1
    invoke-virtual {p0}, Lintra/TCPSocketSummary;->getDownloadBytes()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {p0}, Lintra/TCPSocketSummary;->getUploadBytes()J

    .line 10
    .line 11
    .line 12
    move-result-wide v1

    .line 13
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {p0}, Lintra/TCPSocketSummary;->getDuration()I

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    invoke-virtual {p0}, Lintra/TCPSocketSummary;->getServerPort()S

    .line 26
    .line 27
    .line 28
    move-result v3

    .line 29
    invoke-static {v3}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    invoke-virtual {p0}, Lintra/TCPSocketSummary;->getSynack()I

    .line 34
    .line 35
    .line 36
    move-result v4

    .line 37
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 38
    .line 39
    .line 40
    move-result-object v4

    .line 41
    invoke-virtual {p0}, Lintra/TCPSocketSummary;->getRetry()Lsplit/RetryStats;

    .line 42
    .line 43
    .line 44
    move-result-object v5

    .line 45
    const/4 v6, 0x6

    .line 46
    new-array v6, v6, [Ljava/lang/Object;

    .line 47
    .line 48
    const/4 v7, 0x0

    .line 49
    aput-object v0, v6, v7

    .line 50
    .line 51
    const/4 v0, 0x1

    .line 52
    aput-object v1, v6, v0

    .line 53
    .line 54
    const/4 v0, 0x2

    .line 55
    aput-object v2, v6, v0

    .line 56
    .line 57
    const/4 v0, 0x3

    .line 58
    aput-object v3, v6, v0

    .line 59
    .line 60
    const/4 v0, 0x4

    .line 61
    aput-object v4, v6, v0

    .line 62
    .line 63
    const/4 v0, 0x5

    .line 64
    aput-object v5, v6, v0

    .line 65
    .line 66
    invoke-static {v6}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    .line 67
    .line 68
    .line 69
    move-result v0

    .line 70
    return v0
.end method

.method public final incRefnum()I
    .locals 1

    .line 1
    iget v0, p0, Lintra/TCPSocketSummary;->refnum:I

    .line 2
    .line 3
    invoke-static {v0, p0}, Lgo/Seq;->incGoRef(ILgo/Seq$GoObject;)V

    .line 4
    .line 5
    .line 6
    iget v0, p0, Lintra/TCPSocketSummary;->refnum:I

    .line 7
    .line 8
    return v0
.end method

.method public final native setDownloadBytes(J)V
.end method

.method public final native setDuration(I)V
.end method

.method public final native setRetry(Lsplit/RetryStats;)V
.end method

.method public final native setServerPort(S)V
.end method

.method public final native setSynack(I)V
.end method

.method public final native setUploadBytes(J)V
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "TCPSocketSummary{DownloadBytes:"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lintra/TCPSocketSummary;->getDownloadBytes()J

    .line 9
    .line 10
    .line 11
    move-result-wide v1

    .line 12
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    const-string v1, ",UploadBytes:"

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Lintra/TCPSocketSummary;->getUploadBytes()J

    .line 21
    .line 22
    .line 23
    move-result-wide v1

    .line 24
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    const-string v1, ",Duration:"

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0}, Lintra/TCPSocketSummary;->getDuration()I

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    const-string v1, ",ServerPort:"

    .line 40
    .line 41
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0}, Lintra/TCPSocketSummary;->getServerPort()S

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    const-string v1, ",Synack:"

    .line 52
    .line 53
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {p0}, Lintra/TCPSocketSummary;->getSynack()I

    .line 57
    .line 58
    .line 59
    move-result v1

    .line 60
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    const-string v1, ",Retry:"

    .line 64
    .line 65
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {p0}, Lintra/TCPSocketSummary;->getRetry()Lsplit/RetryStats;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    const-string v1, ",}"

    .line 76
    .line 77
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    return-object v0
.end method
