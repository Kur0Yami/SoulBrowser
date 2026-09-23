.class public Lorg/apache/commons/compress/archivers/zip/X0015_CertificateIdForFile;
.super Lorg/apache/commons/compress/archivers/zip/PKWareExtraHeader;
.source "SourceFile"


# virtual methods
.method public final g([BII)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Lorg/apache/commons/compress/archivers/zip/PKWareExtraHeader;->g([BII)V

    .line 2
    .line 3
    .line 4
    invoke-static {p1, p2}, Lorg/apache/commons/compress/archivers/zip/ZipShort;->b([BI)I

    .line 5
    .line 6
    .line 7
    add-int/lit8 p2, p2, 0x2

    .line 8
    .line 9
    invoke-static {p1, p2}, Lorg/apache/commons/compress/archivers/zip/ZipShort;->b([BI)I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    sget-object p2, Lorg/apache/commons/compress/archivers/zip/PKWareExtraHeader$HashAlgorithm;->f:Ljava/util/Map;

    .line 14
    .line 15
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    check-cast p1, Lorg/apache/commons/compress/archivers/zip/PKWareExtraHeader$HashAlgorithm;

    .line 24
    .line 25
    return-void
.end method
