.class public Lnet/lingala/zip4j/crypto/AESDecrypter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/lingala/zip4j/crypto/IDecrypter;


# instance fields
.field public a:Lnet/lingala/zip4j/crypto/engine/AESEngine;

.field public b:Lnet/lingala/zip4j/crypto/PBKDF2/MacBasedPRF;

.field public c:I

.field public d:I

.field public e:I

.field public f:[B

.field public g:[B

.field public h:[B

.field public i:[B

.field public j:I

.field public k:[B

.field public l:[B

.field public m:I


# virtual methods
.method public final a([BII)I
    .locals 8

    .line 1
    iget-object v0, p0, Lnet/lingala/zip4j/crypto/AESDecrypter;->l:[B

    .line 2
    .line 3
    iget-object v1, p0, Lnet/lingala/zip4j/crypto/AESDecrypter;->k:[B

    .line 4
    .line 5
    iget-object v2, p0, Lnet/lingala/zip4j/crypto/AESDecrypter;->a:Lnet/lingala/zip4j/crypto/engine/AESEngine;

    .line 6
    .line 7
    if-eqz v2, :cond_3

    .line 8
    .line 9
    move v2, p2

    .line 10
    :goto_0
    add-int v3, p2, p3

    .line 11
    .line 12
    if-ge v2, v3, :cond_2

    .line 13
    .line 14
    add-int/lit8 v4, v2, 0x10

    .line 15
    .line 16
    if-gt v4, v3, :cond_0

    .line 17
    .line 18
    const/16 v3, 0x10

    .line 19
    .line 20
    goto :goto_1

    .line 21
    :cond_0
    sub-int/2addr v3, v2

    .line 22
    :goto_1
    :try_start_0
    iput v3, p0, Lnet/lingala/zip4j/crypto/AESDecrypter;->m:I

    .line 23
    .line 24
    iget-object v5, p0, Lnet/lingala/zip4j/crypto/AESDecrypter;->b:Lnet/lingala/zip4j/crypto/PBKDF2/MacBasedPRF;

    .line 25
    .line 26
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_0
    .catch Lnet/lingala/zip4j/exception/ZipException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 27
    .line 28
    .line 29
    :try_start_1
    iget-object v5, v5, Lnet/lingala/zip4j/crypto/PBKDF2/MacBasedPRF;->a:Ljavax/crypto/Mac;

    .line 30
    .line 31
    invoke-virtual {v5, p1, v2, v3}, Ljavax/crypto/Mac;->update([BII)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lnet/lingala/zip4j/exception/ZipException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 32
    .line 33
    .line 34
    :try_start_2
    iget v3, p0, Lnet/lingala/zip4j/crypto/AESDecrypter;->j:I

    .line 35
    .line 36
    invoke-static {v1, v3}, Lnet/lingala/zip4j/util/Raw;->a([BI)V

    .line 37
    .line 38
    .line 39
    iget-object v3, p0, Lnet/lingala/zip4j/crypto/AESDecrypter;->a:Lnet/lingala/zip4j/crypto/engine/AESEngine;

    .line 40
    .line 41
    invoke-virtual {v3, v1, v0}, Lnet/lingala/zip4j/crypto/engine/AESEngine;->a([B[B)V

    .line 42
    .line 43
    .line 44
    const/4 v3, 0x0

    .line 45
    :goto_2
    iget v5, p0, Lnet/lingala/zip4j/crypto/AESDecrypter;->m:I

    .line 46
    .line 47
    if-ge v3, v5, :cond_1

    .line 48
    .line 49
    add-int v5, v2, v3

    .line 50
    .line 51
    aget-byte v6, p1, v5

    .line 52
    .line 53
    aget-byte v7, v0, v3

    .line 54
    .line 55
    xor-int/2addr v6, v7

    .line 56
    int-to-byte v6, v6

    .line 57
    aput-byte v6, p1, v5

    .line 58
    .line 59
    add-int/lit8 v3, v3, 0x1

    .line 60
    .line 61
    goto :goto_2

    .line 62
    :catch_0
    move-exception p1

    .line 63
    goto :goto_3

    .line 64
    :catch_1
    move-exception p1

    .line 65
    goto :goto_4

    .line 66
    :cond_1
    iget v2, p0, Lnet/lingala/zip4j/crypto/AESDecrypter;->j:I

    .line 67
    .line 68
    add-int/lit8 v2, v2, 0x1

    .line 69
    .line 70
    iput v2, p0, Lnet/lingala/zip4j/crypto/AESDecrypter;->j:I

    .line 71
    .line 72
    move v2, v4

    .line 73
    goto :goto_0

    .line 74
    :catch_2
    move-exception p1

    .line 75
    new-instance p2, Ljava/lang/RuntimeException;

    .line 76
    .line 77
    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 78
    .line 79
    .line 80
    throw p2
    :try_end_2
    .catch Lnet/lingala/zip4j/exception/ZipException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 81
    :goto_3
    new-instance p2, Lnet/lingala/zip4j/exception/ZipException;

    .line 82
    .line 83
    invoke-direct {p2, p1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/Exception;)V

    .line 84
    .line 85
    .line 86
    throw p2

    .line 87
    :goto_4
    throw p1

    .line 88
    :cond_2
    return p3

    .line 89
    :cond_3
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    .line 90
    .line 91
    const-string p2, "AES not initialized properly"

    .line 92
    .line 93
    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    throw p1
.end method
