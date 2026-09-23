.class final Lcom/google/common/primitives/UnsignedLongs$ParseOverflowDetection;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/primitives/UnsignedLongs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ParseOverflowDetection"
.end annotation


# static fields
.field public static final a:[J

.field public static final b:[I

.field public static final c:[I


# direct methods
.method static constructor <clinit>()V
    .locals 17

    .line 1
    const/16 v0, 0x25

    .line 2
    .line 3
    new-array v1, v0, [J

    .line 4
    .line 5
    sput-object v1, Lcom/google/common/primitives/UnsignedLongs$ParseOverflowDetection;->a:[J

    .line 6
    .line 7
    new-array v1, v0, [I

    .line 8
    .line 9
    sput-object v1, Lcom/google/common/primitives/UnsignedLongs$ParseOverflowDetection;->b:[I

    .line 10
    .line 11
    new-array v0, v0, [I

    .line 12
    .line 13
    sput-object v0, Lcom/google/common/primitives/UnsignedLongs$ParseOverflowDetection;->c:[I

    .line 14
    .line 15
    sget-object v0, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    .line 16
    .line 17
    const/16 v1, 0x40

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    const/4 v1, 0x2

    .line 24
    :goto_0
    const/16 v2, 0x24

    .line 25
    .line 26
    if-gt v1, v2, :cond_6

    .line 27
    .line 28
    sget-object v2, Lcom/google/common/primitives/UnsignedLongs$ParseOverflowDetection;->a:[J

    .line 29
    .line 30
    int-to-long v3, v1

    .line 31
    const-wide/16 v5, 0x0

    .line 32
    .line 33
    cmp-long v7, v3, v5

    .line 34
    .line 35
    const-wide v8, 0x7fffffffffffffffL

    .line 36
    .line 37
    .line 38
    .line 39
    .line 40
    const-wide/16 v10, -0x1

    .line 41
    .line 42
    const/4 v12, 0x1

    .line 43
    if-gez v7, :cond_1

    .line 44
    .line 45
    invoke-static {v10, v11, v3, v4}, Lcom/google/common/primitives/UnsignedLongs;->a(JJ)I

    .line 46
    .line 47
    .line 48
    move-result v13

    .line 49
    if-gez v13, :cond_0

    .line 50
    .line 51
    move-wide v13, v5

    .line 52
    goto :goto_2

    .line 53
    :cond_0
    const-wide/16 v13, 0x1

    .line 54
    .line 55
    goto :goto_2

    .line 56
    :cond_1
    div-long v13, v8, v3

    .line 57
    .line 58
    shl-long/2addr v13, v12

    .line 59
    mul-long v15, v13, v3

    .line 60
    .line 61
    sub-long v5, v10, v15

    .line 62
    .line 63
    invoke-static {v5, v6, v3, v4}, Lcom/google/common/primitives/UnsignedLongs;->a(JJ)I

    .line 64
    .line 65
    .line 66
    move-result v5

    .line 67
    if-ltz v5, :cond_2

    .line 68
    .line 69
    move v5, v12

    .line 70
    goto :goto_1

    .line 71
    :cond_2
    const/4 v5, 0x0

    .line 72
    :goto_1
    int-to-long v5, v5

    .line 73
    add-long/2addr v13, v5

    .line 74
    :goto_2
    aput-wide v13, v2, v1

    .line 75
    .line 76
    sget-object v2, Lcom/google/common/primitives/UnsignedLongs$ParseOverflowDetection;->b:[I

    .line 77
    .line 78
    if-gez v7, :cond_4

    .line 79
    .line 80
    invoke-static {v10, v11, v3, v4}, Lcom/google/common/primitives/UnsignedLongs;->a(JJ)I

    .line 81
    .line 82
    .line 83
    move-result v5

    .line 84
    if-gez v5, :cond_3

    .line 85
    .line 86
    goto :goto_4

    .line 87
    :cond_3
    :goto_3
    sub-long/2addr v10, v3

    .line 88
    goto :goto_4

    .line 89
    :cond_4
    div-long/2addr v8, v3

    .line 90
    shl-long v5, v8, v12

    .line 91
    .line 92
    mul-long/2addr v5, v3

    .line 93
    sub-long/2addr v10, v5

    .line 94
    invoke-static {v10, v11, v3, v4}, Lcom/google/common/primitives/UnsignedLongs;->a(JJ)I

    .line 95
    .line 96
    .line 97
    move-result v5

    .line 98
    if-ltz v5, :cond_5

    .line 99
    .line 100
    goto :goto_3

    .line 101
    :cond_5
    const-wide/16 v3, 0x0

    .line 102
    .line 103
    goto :goto_3

    .line 104
    :goto_4
    long-to-int v3, v10

    .line 105
    aput v3, v2, v1

    .line 106
    .line 107
    sget-object v2, Lcom/google/common/primitives/UnsignedLongs$ParseOverflowDetection;->c:[I

    .line 108
    .line 109
    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v3

    .line 113
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 114
    .line 115
    .line 116
    move-result v3

    .line 117
    sub-int/2addr v3, v12

    .line 118
    aput v3, v2, v1

    .line 119
    .line 120
    add-int/lit8 v1, v1, 0x1

    .line 121
    .line 122
    goto :goto_0

    .line 123
    :cond_6
    return-void
.end method
