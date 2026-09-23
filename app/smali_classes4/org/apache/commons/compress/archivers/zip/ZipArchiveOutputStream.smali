.class public Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;
.super Lorg/apache/commons/compress/archivers/ArchiveOutputStream;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$UnicodeExtraFieldPolicy;,
        Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$CurrentEntry;
    }
.end annotation


# static fields
.field public static final c:[B

.field public static final f:[B

.field public static final g:[B

.field public static final h:[B

.field public static final i:[B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-wide/32 v0, 0x4034b50

    .line 2
    .line 3
    .line 4
    invoke-static {v0, v1}, Lorg/apache/commons/compress/archivers/zip/ZipLong;->a(J)[B

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    sput-object v0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->c:[B

    .line 9
    .line 10
    const-wide/32 v0, 0x2014b50    # 1.6619997E-316

    .line 11
    .line 12
    .line 13
    invoke-static {v0, v1}, Lorg/apache/commons/compress/archivers/zip/ZipLong;->a(J)[B

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    sput-object v0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->f:[B

    .line 18
    .line 19
    const-wide/32 v0, 0x6054b50

    .line 20
    .line 21
    .line 22
    invoke-static {v0, v1}, Lorg/apache/commons/compress/archivers/zip/ZipLong;->a(J)[B

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    sput-object v0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->g:[B

    .line 27
    .line 28
    const-wide/32 v0, 0x6064b50

    .line 29
    .line 30
    .line 31
    invoke-static {v0, v1}, Lorg/apache/commons/compress/archivers/zip/ZipLong;->a(J)[B

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    sput-object v0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->h:[B

    .line 36
    .line 37
    const-wide/32 v0, 0x7064b50

    .line 38
    .line 39
    .line 40
    invoke-static {v0, v1}, Lorg/apache/commons/compress/archivers/zip/ZipLong;->a(J)[B

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    sput-object v0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->i:[B

    .line 45
    .line 46
    return-void
.end method


# virtual methods
.method public final close()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    throw v0
.end method

.method public final flush()V
    .locals 0

    return-void
.end method

.method public final write([BII)V
    .locals 0

    .line 1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 2
    .line 3
    const-string p2, "No current entry"

    .line 4
    .line 5
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    throw p1
.end method
