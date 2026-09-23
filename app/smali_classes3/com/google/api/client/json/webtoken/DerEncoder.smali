.class public Lcom/google/api/client/json/webtoken/DerEncoder;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a([B)[B
    .locals 6

    .line 1
    array-length v0, p0

    .line 2
    const/4 v1, 0x1

    .line 3
    const/4 v2, 0x0

    .line 4
    const/16 v3, 0x40

    .line 5
    .line 6
    if-ne v0, v3, :cond_0

    .line 7
    .line 8
    move v0, v1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    move v0, v2

    .line 11
    :goto_0
    invoke-static {v0}, Lcom/google/api/client/util/Preconditions;->checkState(Z)V

    .line 12
    .line 13
    .line 14
    new-instance v0, Ljava/math/BigInteger;

    .line 15
    .line 16
    const/16 v4, 0x20

    .line 17
    .line 18
    invoke-static {p0, v2, v4}, Ljava/util/Arrays;->copyOfRange([BII)[B

    .line 19
    .line 20
    .line 21
    move-result-object v5

    .line 22
    invoke-direct {v0, v1, v5}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0}, Ljava/math/BigInteger;->toByteArray()[B

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    new-instance v5, Ljava/math/BigInteger;

    .line 30
    .line 31
    invoke-static {p0, v4, v3}, Ljava/util/Arrays;->copyOfRange([BII)[B

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    invoke-direct {v5, v1, p0}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v5}, Ljava/math/BigInteger;->toByteArray()[B

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    array-length v3, v0

    .line 43
    add-int/lit8 v3, v3, 0x6

    .line 44
    .line 45
    array-length v4, p0

    .line 46
    add-int/2addr v3, v4

    .line 47
    new-array v4, v3, [B

    .line 48
    .line 49
    const/16 v5, 0x30

    .line 50
    .line 51
    aput-byte v5, v4, v2

    .line 52
    .line 53
    const/4 v5, 0x2

    .line 54
    sub-int/2addr v3, v5

    .line 55
    int-to-byte v3, v3

    .line 56
    aput-byte v3, v4, v1

    .line 57
    .line 58
    aput-byte v5, v4, v5

    .line 59
    .line 60
    array-length v1, v0

    .line 61
    int-to-byte v1, v1

    .line 62
    const/4 v3, 0x3

    .line 63
    aput-byte v1, v4, v3

    .line 64
    .line 65
    array-length v1, v0

    .line 66
    const/4 v3, 0x4

    .line 67
    invoke-static {v0, v2, v4, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 68
    .line 69
    .line 70
    array-length v0, v0

    .line 71
    add-int/lit8 v1, v0, 0x4

    .line 72
    .line 73
    aput-byte v5, v4, v1

    .line 74
    .line 75
    add-int/lit8 v1, v0, 0x5

    .line 76
    .line 77
    array-length v3, p0

    .line 78
    int-to-byte v3, v3

    .line 79
    aput-byte v3, v4, v1

    .line 80
    .line 81
    add-int/lit8 v0, v0, 0x6

    .line 82
    .line 83
    array-length v1, p0

    .line 84
    invoke-static {p0, v2, v4, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 85
    .line 86
    .line 87
    return-object v4
.end method
