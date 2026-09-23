.class public Lnet/lingala/zip4j/crypto/AESEncrpyter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/lingala/zip4j/crypto/IEncrypter;


# instance fields
.field public a:Z

.field public b:I

.field public c:I


# virtual methods
.method public final a([BII)I
    .locals 0

    .line 1
    iget-boolean p1, p0, Lnet/lingala/zip4j/crypto/AESEncrpyter;->a:Z

    .line 2
    .line 3
    if-nez p1, :cond_3

    .line 4
    .line 5
    rem-int/lit8 p1, p3, 0x10

    .line 6
    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    const/4 p1, 0x1

    .line 10
    iput-boolean p1, p0, Lnet/lingala/zip4j/crypto/AESEncrpyter;->a:Z

    .line 11
    .line 12
    :cond_0
    add-int p1, p2, p3

    .line 13
    .line 14
    if-ge p2, p1, :cond_2

    .line 15
    .line 16
    add-int/lit8 p3, p2, 0x10

    .line 17
    .line 18
    if-gt p3, p1, :cond_1

    .line 19
    .line 20
    const/16 p1, 0x10

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_1
    sub-int/2addr p1, p2

    .line 24
    :goto_0
    iput p1, p0, Lnet/lingala/zip4j/crypto/AESEncrpyter;->c:I

    .line 25
    .line 26
    iget p1, p0, Lnet/lingala/zip4j/crypto/AESEncrpyter;->b:I

    .line 27
    .line 28
    const/4 p2, 0x0

    .line 29
    invoke-static {p2, p1}, Lnet/lingala/zip4j/util/Raw;->a([BI)V

    .line 30
    .line 31
    .line 32
    const/4 p1, 0x0

    .line 33
    throw p1

    .line 34
    :cond_2
    return p3

    .line 35
    :cond_3
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    .line 36
    .line 37
    const-string p2, "AES Encrypter is in finished state (A non 16 byte block has already been passed to encrypter)"

    .line 38
    .line 39
    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    throw p1
.end method
