.class public Lnet/lingala/zip4j/crypto/StandardEncrypter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/lingala/zip4j/crypto/IEncrypter;


# instance fields
.field public a:Lnet/lingala/zip4j/crypto/engine/ZipCryptoEngine;

.field public b:[B


# virtual methods
.method public final a([BII)I
    .locals 4

    .line 1
    if-ltz p3, :cond_1

    .line 2
    .line 3
    move v0, p2

    .line 4
    :goto_0
    add-int v1, p2, p3

    .line 5
    .line 6
    if-ge v0, v1, :cond_0

    .line 7
    .line 8
    :try_start_0
    aget-byte v1, p1, v0

    .line 9
    .line 10
    iget-object v2, p0, Lnet/lingala/zip4j/crypto/StandardEncrypter;->a:Lnet/lingala/zip4j/crypto/engine/ZipCryptoEngine;

    .line 11
    .line 12
    invoke-virtual {v2}, Lnet/lingala/zip4j/crypto/engine/ZipCryptoEngine;->a()B

    .line 13
    .line 14
    .line 15
    move-result v3

    .line 16
    and-int/lit16 v3, v3, 0xff

    .line 17
    .line 18
    xor-int/2addr v3, v1

    .line 19
    int-to-byte v3, v3

    .line 20
    invoke-virtual {v2, v1}, Lnet/lingala/zip4j/crypto/engine/ZipCryptoEngine;->c(B)V

    .line 21
    .line 22
    .line 23
    aput-byte v3, p1, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 24
    .line 25
    add-int/lit8 v0, v0, 0x1

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :catch_0
    move-exception p1

    .line 29
    new-instance p2, Lnet/lingala/zip4j/exception/ZipException;

    .line 30
    .line 31
    invoke-direct {p2, p1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/Exception;)V

    .line 32
    .line 33
    .line 34
    throw p2

    .line 35
    :cond_0
    return p3

    .line 36
    :cond_1
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    .line 37
    .line 38
    const-string p2, "invalid length specified to decrpyt data"

    .line 39
    .line 40
    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    throw p1
.end method
