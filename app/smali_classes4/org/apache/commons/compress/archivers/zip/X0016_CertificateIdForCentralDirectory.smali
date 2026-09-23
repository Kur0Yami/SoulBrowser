.class public Lorg/apache/commons/compress/archivers/zip/X0016_CertificateIdForCentralDirectory;
.super Lorg/apache/commons/compress/archivers/zip/PKWareExtraHeader;
.source "SourceFile"


# virtual methods
.method public final g([BII)V
    .locals 0

    .line 1
    invoke-static {p1, p2}, Lorg/apache/commons/compress/archivers/zip/ZipShort;->b([BI)I

    .line 2
    .line 3
    .line 4
    add-int/lit8 p2, p2, 0x2

    .line 5
    .line 6
    invoke-static {p1, p2}, Lorg/apache/commons/compress/archivers/zip/ZipShort;->b([BI)I

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    sget-object p2, Lorg/apache/commons/compress/archivers/zip/PKWareExtraHeader$HashAlgorithm;->f:Ljava/util/Map;

    .line 11
    .line 12
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    check-cast p1, Lorg/apache/commons/compress/archivers/zip/PKWareExtraHeader$HashAlgorithm;

    .line 21
    .line 22
    return-void
.end method
