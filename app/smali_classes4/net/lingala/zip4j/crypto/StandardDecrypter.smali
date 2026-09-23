.class public Lnet/lingala/zip4j/crypto/StandardDecrypter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/lingala/zip4j/crypto/IDecrypter;


# instance fields
.field public a:Lnet/lingala/zip4j/crypto/engine/ZipCryptoEngine;


# virtual methods
.method public final a([BII)I
    .locals 4

    .line 1
    iget-object v0, p0, Lnet/lingala/zip4j/crypto/StandardDecrypter;->a:Lnet/lingala/zip4j/crypto/engine/ZipCryptoEngine;

    .line 2
    .line 3
    if-ltz p2, :cond_1

    .line 4
    .line 5
    if-ltz p3, :cond_1

    .line 6
    .line 7
    move v1, p2

    .line 8
    :goto_0
    add-int v2, p2, p3

    .line 9
    .line 10
    if-ge v1, v2, :cond_0

    .line 11
    .line 12
    :try_start_0
    aget-byte v2, p1, v1

    .line 13
    .line 14
    and-int/lit16 v2, v2, 0xff

    .line 15
    .line 16
    invoke-virtual {v0}, Lnet/lingala/zip4j/crypto/engine/ZipCryptoEngine;->a()B

    .line 17
    .line 18
    .line 19
    move-result v3

    .line 20
    xor-int/2addr v2, v3

    .line 21
    and-int/lit16 v2, v2, 0xff

    .line 22
    .line 23
    int-to-byte v2, v2

    .line 24
    invoke-virtual {v0, v2}, Lnet/lingala/zip4j/crypto/engine/ZipCryptoEngine;->c(B)V

    .line 25
    .line 26
    .line 27
    aput-byte v2, p1, v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    .line 29
    add-int/lit8 v1, v1, 0x1

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :catch_0
    move-exception p1

    .line 33
    new-instance p2, Lnet/lingala/zip4j/exception/ZipException;

    .line 34
    .line 35
    invoke-direct {p2, p1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/Exception;)V

    .line 36
    .line 37
    .line 38
    throw p2

    .line 39
    :cond_0
    return p3

    .line 40
    :cond_1
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    .line 41
    .line 42
    const-string p2, "one of the input parameters were null in standard decrpyt data"

    .line 43
    .line 44
    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    throw p1
.end method
