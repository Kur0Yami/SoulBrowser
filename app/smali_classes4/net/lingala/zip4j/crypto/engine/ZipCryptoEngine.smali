.class public Lnet/lingala/zip4j/crypto/engine/ZipCryptoEngine;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final b:[I


# instance fields
.field public final a:[I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1
    const/16 v0, 0x100

    .line 2
    .line 3
    new-array v1, v0, [I

    .line 4
    .line 5
    sput-object v1, Lnet/lingala/zip4j/crypto/engine/ZipCryptoEngine;->b:[I

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    move v2, v1

    .line 9
    :goto_0
    if-ge v2, v0, :cond_2

    .line 10
    .line 11
    move v3, v1

    .line 12
    move v4, v2

    .line 13
    :goto_1
    const/16 v5, 0x8

    .line 14
    .line 15
    if-ge v3, v5, :cond_1

    .line 16
    .line 17
    and-int/lit8 v5, v4, 0x1

    .line 18
    .line 19
    const/4 v6, 0x1

    .line 20
    if-ne v5, v6, :cond_0

    .line 21
    .line 22
    ushr-int/lit8 v4, v4, 0x1

    .line 23
    .line 24
    const v5, -0x12477ce0

    .line 25
    .line 26
    .line 27
    xor-int/2addr v4, v5

    .line 28
    goto :goto_2

    .line 29
    :cond_0
    ushr-int/lit8 v4, v4, 0x1

    .line 30
    .line 31
    :goto_2
    add-int/lit8 v3, v3, 0x1

    .line 32
    .line 33
    goto :goto_1

    .line 34
    :cond_1
    sget-object v3, Lnet/lingala/zip4j/crypto/engine/ZipCryptoEngine;->b:[I

    .line 35
    .line 36
    aput v4, v3, v2

    .line 37
    .line 38
    add-int/lit8 v2, v2, 0x1

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_2
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x3

    .line 5
    new-array v0, v0, [I

    .line 6
    .line 7
    iput-object v0, p0, Lnet/lingala/zip4j/crypto/engine/ZipCryptoEngine;->a:[I

    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final a()B
    .locals 2

    .line 1
    iget-object v0, p0, Lnet/lingala/zip4j/crypto/engine/ZipCryptoEngine;->a:[I

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    aget v0, v0, v1

    .line 5
    .line 6
    or-int/2addr v0, v1

    .line 7
    xor-int/lit8 v1, v0, 0x1

    .line 8
    .line 9
    mul-int/2addr v0, v1

    .line 10
    ushr-int/lit8 v0, v0, 0x8

    .line 11
    .line 12
    int-to-byte v0, v0

    .line 13
    return v0
.end method

.method public final b([C)V
    .locals 4

    .line 1
    const v0, 0x12345678

    .line 2
    .line 3
    .line 4
    iget-object v1, p0, Lnet/lingala/zip4j/crypto/engine/ZipCryptoEngine;->a:[I

    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    aput v0, v1, v2

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    const v3, 0x23456789

    .line 11
    .line 12
    .line 13
    aput v3, v1, v0

    .line 14
    .line 15
    const/4 v0, 0x2

    .line 16
    const v3, 0x34567890

    .line 17
    .line 18
    .line 19
    aput v3, v1, v0

    .line 20
    .line 21
    :goto_0
    array-length v0, p1

    .line 22
    if-ge v2, v0, :cond_0

    .line 23
    .line 24
    aget-char v0, p1, v2

    .line 25
    .line 26
    and-int/lit16 v0, v0, 0xff

    .line 27
    .line 28
    int-to-byte v0, v0

    .line 29
    invoke-virtual {p0, v0}, Lnet/lingala/zip4j/crypto/engine/ZipCryptoEngine;->c(B)V

    .line 30
    .line 31
    .line 32
    add-int/lit8 v2, v2, 0x1

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    return-void
.end method

.method public final c(B)V
    .locals 5

    .line 1
    iget-object v0, p0, Lnet/lingala/zip4j/crypto/engine/ZipCryptoEngine;->a:[I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    aget v2, v0, v1

    .line 5
    .line 6
    ushr-int/lit8 v3, v2, 0x8

    .line 7
    .line 8
    xor-int/2addr p1, v2

    .line 9
    and-int/lit16 p1, p1, 0xff

    .line 10
    .line 11
    sget-object v2, Lnet/lingala/zip4j/crypto/engine/ZipCryptoEngine;->b:[I

    .line 12
    .line 13
    aget p1, v2, p1

    .line 14
    .line 15
    xor-int/2addr p1, v3

    .line 16
    aput p1, v0, v1

    .line 17
    .line 18
    const/4 v1, 0x1

    .line 19
    aget v3, v0, v1

    .line 20
    .line 21
    and-int/lit16 p1, p1, 0xff

    .line 22
    .line 23
    add-int/2addr v3, p1

    .line 24
    aput v3, v0, v1

    .line 25
    .line 26
    const p1, 0x8088405

    .line 27
    .line 28
    .line 29
    mul-int/2addr v3, p1

    .line 30
    add-int/2addr v3, v1

    .line 31
    aput v3, v0, v1

    .line 32
    .line 33
    const/4 p1, 0x2

    .line 34
    aget v1, v0, p1

    .line 35
    .line 36
    shr-int/lit8 v3, v3, 0x18

    .line 37
    .line 38
    int-to-byte v3, v3

    .line 39
    ushr-int/lit8 v4, v1, 0x8

    .line 40
    .line 41
    xor-int/2addr v1, v3

    .line 42
    and-int/lit16 v1, v1, 0xff

    .line 43
    .line 44
    aget v1, v2, v1

    .line 45
    .line 46
    xor-int/2addr v1, v4

    .line 47
    aput v1, v0, p1

    .line 48
    .line 49
    return-void
.end method
