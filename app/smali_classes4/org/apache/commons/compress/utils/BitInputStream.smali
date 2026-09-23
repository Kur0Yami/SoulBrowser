.class public Lorg/apache/commons/compress/utils/BitInputStream;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# static fields
.field public static final h:[J


# instance fields
.field public final c:Ljava/io/InputStream;

.field public f:J

.field public g:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1
    const/16 v0, 0x40

    .line 2
    .line 3
    new-array v0, v0, [J

    .line 4
    .line 5
    sput-object v0, Lorg/apache/commons/compress/utils/BitInputStream;->h:[J

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    move v1, v0

    .line 9
    :goto_0
    const/16 v2, 0x3f

    .line 10
    .line 11
    if-gt v1, v2, :cond_0

    .line 12
    .line 13
    sget-object v2, Lorg/apache/commons/compress/utils/BitInputStream;->h:[J

    .line 14
    .line 15
    add-int/lit8 v3, v1, -0x1

    .line 16
    .line 17
    aget-wide v3, v2, v3

    .line 18
    .line 19
    shl-long/2addr v3, v0

    .line 20
    const-wide/16 v5, 0x1

    .line 21
    .line 22
    add-long/2addr v3, v5

    .line 23
    aput-wide v3, v2, v1

    .line 24
    .line 25
    add-int/lit8 v1, v1, 0x1

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 2

    .line 1
    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    const-wide/16 v0, 0x0

    .line 7
    .line 8
    iput-wide v0, p0, Lorg/apache/commons/compress/utils/BitInputStream;->f:J

    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    iput v0, p0, Lorg/apache/commons/compress/utils/BitInputStream;->g:I

    .line 12
    .line 13
    iput-object p1, p0, Lorg/apache/commons/compress/utils/BitInputStream;->c:Ljava/io/InputStream;

    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public final a(I)J
    .locals 6

    .line 1
    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    .line 2
    .line 3
    if-ltz p1, :cond_2

    .line 4
    .line 5
    const/16 v0, 0x3f

    .line 6
    .line 7
    if-gt p1, v0, :cond_2

    .line 8
    .line 9
    :goto_0
    iget v0, p0, Lorg/apache/commons/compress/utils/BitInputStream;->g:I

    .line 10
    .line 11
    if-ge v0, p1, :cond_1

    .line 12
    .line 13
    iget-object v0, p0, Lorg/apache/commons/compress/utils/BitInputStream;->c:Ljava/io/InputStream;

    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    int-to-long v0, v0

    .line 20
    const-wide/16 v2, 0x0

    .line 21
    .line 22
    cmp-long v2, v0, v2

    .line 23
    .line 24
    if-gez v2, :cond_0

    .line 25
    .line 26
    return-wide v0

    .line 27
    :cond_0
    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    .line 28
    .line 29
    iget-wide v2, p0, Lorg/apache/commons/compress/utils/BitInputStream;->f:J

    .line 30
    .line 31
    iget v4, p0, Lorg/apache/commons/compress/utils/BitInputStream;->g:I

    .line 32
    .line 33
    shl-long/2addr v0, v4

    .line 34
    or-long/2addr v0, v2

    .line 35
    iput-wide v0, p0, Lorg/apache/commons/compress/utils/BitInputStream;->f:J

    .line 36
    .line 37
    add-int/lit8 v4, v4, 0x8

    .line 38
    .line 39
    iput v4, p0, Lorg/apache/commons/compress/utils/BitInputStream;->g:I

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_1
    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    .line 43
    .line 44
    iget-wide v1, p0, Lorg/apache/commons/compress/utils/BitInputStream;->f:J

    .line 45
    .line 46
    sget-object v3, Lorg/apache/commons/compress/utils/BitInputStream;->h:[J

    .line 47
    .line 48
    aget-wide v4, v3, p1

    .line 49
    .line 50
    and-long/2addr v4, v1

    .line 51
    ushr-long/2addr v1, p1

    .line 52
    iput-wide v1, p0, Lorg/apache/commons/compress/utils/BitInputStream;->f:J

    .line 53
    .line 54
    sub-int/2addr v0, p1

    .line 55
    iput v0, p0, Lorg/apache/commons/compress/utils/BitInputStream;->g:I

    .line 56
    .line 57
    return-wide v4

    .line 58
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 59
    .line 60
    const-string v0, "count must not be negative or greater than 63"

    .line 61
    .line 62
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    throw p1
.end method

.method public final close()V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/commons/compress/utils/BitInputStream;->c:Ljava/io/InputStream;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 4
    .line 5
    .line 6
    return-void
.end method
