.class public final Lorg/apache/commons/compress/archivers/zip/JarMarker;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/commons/compress/archivers/zip/ZipExtraField;


# static fields
.field public static final c:Lorg/apache/commons/compress/archivers/zip/ZipShort;

.field public static final f:Lorg/apache/commons/compress/archivers/zip/ZipShort;

.field public static final g:[B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lorg/apache/commons/compress/archivers/zip/ZipShort;

    .line 2
    .line 3
    const v1, 0xcafe

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, v1}, Lorg/apache/commons/compress/archivers/zip/ZipShort;-><init>(I)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lorg/apache/commons/compress/archivers/zip/JarMarker;->c:Lorg/apache/commons/compress/archivers/zip/ZipShort;

    .line 10
    .line 11
    new-instance v0, Lorg/apache/commons/compress/archivers/zip/ZipShort;

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    invoke-direct {v0, v1}, Lorg/apache/commons/compress/archivers/zip/ZipShort;-><init>(I)V

    .line 15
    .line 16
    .line 17
    sput-object v0, Lorg/apache/commons/compress/archivers/zip/JarMarker;->f:Lorg/apache/commons/compress/archivers/zip/ZipShort;

    .line 18
    .line 19
    new-array v0, v1, [B

    .line 20
    .line 21
    sput-object v0, Lorg/apache/commons/compress/archivers/zip/JarMarker;->g:[B

    .line 22
    .line 23
    return-void
.end method


# virtual methods
.method public final a()Lorg/apache/commons/compress/archivers/zip/ZipShort;
    .locals 1

    .line 1
    sget-object v0, Lorg/apache/commons/compress/archivers/zip/JarMarker;->c:Lorg/apache/commons/compress/archivers/zip/ZipShort;

    .line 2
    .line 3
    return-object v0
.end method

.method public final b()Lorg/apache/commons/compress/archivers/zip/ZipShort;
    .locals 1

    .line 1
    sget-object v0, Lorg/apache/commons/compress/archivers/zip/JarMarker;->f:Lorg/apache/commons/compress/archivers/zip/ZipShort;

    .line 2
    .line 3
    return-object v0
.end method

.method public final c([BII)V
    .locals 0

    .line 1
    if-nez p3, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    new-instance p1, Ljava/util/zip/ZipException;

    .line 5
    .line 6
    const-string p2, "JarMarker doesn\'t expect any data"

    .line 7
    .line 8
    invoke-direct {p1, p2}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    throw p1
.end method

.method public final d()[B
    .locals 1

    .line 1
    sget-object v0, Lorg/apache/commons/compress/archivers/zip/JarMarker;->g:[B

    .line 2
    .line 3
    return-object v0
.end method

.method public final e()[B
    .locals 1

    .line 1
    sget-object v0, Lorg/apache/commons/compress/archivers/zip/JarMarker;->g:[B

    .line 2
    .line 3
    return-object v0
.end method

.method public final f()Lorg/apache/commons/compress/archivers/zip/ZipShort;
    .locals 1

    .line 1
    sget-object v0, Lorg/apache/commons/compress/archivers/zip/JarMarker;->f:Lorg/apache/commons/compress/archivers/zip/ZipShort;

    .line 2
    .line 3
    return-object v0
.end method

.method public final g([BII)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/compress/archivers/zip/JarMarker;->c([BII)V

    .line 2
    .line 3
    .line 4
    return-void
.end method
