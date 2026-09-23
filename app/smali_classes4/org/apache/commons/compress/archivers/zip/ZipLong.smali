.class public final Lorg/apache/commons/compress/archivers/zip/ZipLong;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;
.implements Ljava/io/Serializable;


# instance fields
.field public final c:J


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-wide p1, p0, Lorg/apache/commons/compress/archivers/zip/ZipLong;->c:J

    return-void
.end method

.method public constructor <init>([BI)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    invoke-static {p1, p2}, Lorg/apache/commons/compress/archivers/zip/ZipLong;->b([BI)J

    move-result-wide p1

    iput-wide p1, p0, Lorg/apache/commons/compress/archivers/zip/ZipLong;->c:J

    return-void
.end method

.method public static a(J)[B
    .locals 5

    .line 1
    const-wide/16 v0, 0xff

    .line 2
    .line 3
    and-long/2addr v0, p0

    .line 4
    long-to-int v0, v0

    .line 5
    int-to-byte v0, v0

    .line 6
    const-wide/32 v1, 0xff00

    .line 7
    .line 8
    .line 9
    and-long/2addr v1, p0

    .line 10
    const/16 v3, 0x8

    .line 11
    .line 12
    shr-long/2addr v1, v3

    .line 13
    long-to-int v1, v1

    .line 14
    int-to-byte v1, v1

    .line 15
    const-wide/32 v2, 0xff0000

    .line 16
    .line 17
    .line 18
    and-long/2addr v2, p0

    .line 19
    const/16 v4, 0x10

    .line 20
    .line 21
    shr-long/2addr v2, v4

    .line 22
    long-to-int v2, v2

    .line 23
    int-to-byte v2, v2

    .line 24
    const-wide v3, 0xff000000L

    .line 25
    .line 26
    .line 27
    .line 28
    .line 29
    and-long/2addr p0, v3

    .line 30
    const/16 v3, 0x18

    .line 31
    .line 32
    shr-long/2addr p0, v3

    .line 33
    long-to-int p0, p0

    .line 34
    int-to-byte p0, p0

    .line 35
    const/4 p1, 0x4

    .line 36
    new-array p1, p1, [B

    .line 37
    .line 38
    const/4 v3, 0x0

    .line 39
    aput-byte v0, p1, v3

    .line 40
    .line 41
    const/4 v0, 0x1

    .line 42
    aput-byte v1, p1, v0

    .line 43
    .line 44
    const/4 v0, 0x2

    .line 45
    aput-byte v2, p1, v0

    .line 46
    .line 47
    const/4 v0, 0x3

    .line 48
    aput-byte p0, p1, v0

    .line 49
    .line 50
    return-object p1
.end method

.method public static b([BI)J
    .locals 4

    .line 1
    add-int/lit8 v0, p1, 0x3

    .line 2
    .line 3
    aget-byte v0, p0, v0

    .line 4
    .line 5
    shl-int/lit8 v0, v0, 0x18

    .line 6
    .line 7
    int-to-long v0, v0

    .line 8
    const-wide v2, 0xff000000L

    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    and-long/2addr v0, v2

    .line 14
    add-int/lit8 v2, p1, 0x2

    .line 15
    .line 16
    aget-byte v2, p0, v2

    .line 17
    .line 18
    shl-int/lit8 v2, v2, 0x10

    .line 19
    .line 20
    const/high16 v3, 0xff0000

    .line 21
    .line 22
    and-int/2addr v2, v3

    .line 23
    int-to-long v2, v2

    .line 24
    add-long/2addr v0, v2

    .line 25
    add-int/lit8 v2, p1, 0x1

    .line 26
    .line 27
    aget-byte v2, p0, v2

    .line 28
    .line 29
    shl-int/lit8 v2, v2, 0x8

    .line 30
    .line 31
    const v3, 0xff00

    .line 32
    .line 33
    .line 34
    and-int/2addr v2, v3

    .line 35
    int-to-long v2, v2

    .line 36
    add-long/2addr v0, v2

    .line 37
    aget-byte p0, p0, p1

    .line 38
    .line 39
    and-int/lit16 p0, p0, 0xff

    .line 40
    .line 41
    int-to-long p0, p0

    .line 42
    add-long/2addr v0, p0

    .line 43
    return-wide v0
.end method


# virtual methods
.method public final clone()Ljava/lang/Object;
    .locals 2

    .line 1
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    return-object v0

    .line 6
    :catch_0
    move-exception v0

    .line 7
    new-instance v1, Ljava/lang/RuntimeException;

    .line 8
    .line 9
    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 10
    .line 11
    .line 12
    throw v1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_1

    .line 3
    .line 4
    instance-of v1, p1, Lorg/apache/commons/compress/archivers/zip/ZipLong;

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    check-cast p1, Lorg/apache/commons/compress/archivers/zip/ZipLong;

    .line 10
    .line 11
    iget-wide v1, p1, Lorg/apache/commons/compress/archivers/zip/ZipLong;->c:J

    .line 12
    .line 13
    iget-wide v3, p0, Lorg/apache/commons/compress/archivers/zip/ZipLong;->c:J

    .line 14
    .line 15
    cmp-long p1, v3, v1

    .line 16
    .line 17
    if-nez p1, :cond_1

    .line 18
    .line 19
    const/4 p1, 0x1

    .line 20
    return p1

    .line 21
    :cond_1
    :goto_0
    return v0
.end method

.method public final hashCode()I
    .locals 2

    .line 1
    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipLong;->c:J

    .line 2
    .line 3
    long-to-int v0, v0

    .line 4
    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "ZipLong value: "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-wide v1, p0, Lorg/apache/commons/compress/archivers/zip/ZipLong;->c:J

    .line 9
    .line 10
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    return-object v0
.end method
