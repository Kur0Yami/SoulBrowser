.class public final enum Lorg/apache/commons/compress/archivers/zip/PKWareExtraHeader$HashAlgorithm;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/compress/archivers/zip/PKWareExtraHeader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "HashAlgorithm"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/commons/compress/archivers/zip/PKWareExtraHeader$HashAlgorithm;",
        ">;"
    }
.end annotation


# static fields
.field public static final f:Ljava/util/Map;

.field public static final synthetic g:[Lorg/apache/commons/compress/archivers/zip/PKWareExtraHeader$HashAlgorithm;


# instance fields
.field public final c:I


# direct methods
.method static constructor <clinit>()V
    .locals 18

    .line 1
    new-instance v0, Lorg/apache/commons/compress/archivers/zip/PKWareExtraHeader$HashAlgorithm;

    .line 2
    .line 3
    const-string v1, "NONE"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2, v2}, Lorg/apache/commons/compress/archivers/zip/PKWareExtraHeader$HashAlgorithm;-><init>(Ljava/lang/String;II)V

    .line 7
    .line 8
    .line 9
    new-instance v1, Lorg/apache/commons/compress/archivers/zip/PKWareExtraHeader$HashAlgorithm;

    .line 10
    .line 11
    const-string v3, "CRC32"

    .line 12
    .line 13
    const/4 v4, 0x1

    .line 14
    invoke-direct {v1, v3, v4, v4}, Lorg/apache/commons/compress/archivers/zip/PKWareExtraHeader$HashAlgorithm;-><init>(Ljava/lang/String;II)V

    .line 15
    .line 16
    .line 17
    new-instance v3, Lorg/apache/commons/compress/archivers/zip/PKWareExtraHeader$HashAlgorithm;

    .line 18
    .line 19
    const v5, 0x8003

    .line 20
    .line 21
    .line 22
    const-string v6, "MD5"

    .line 23
    .line 24
    const/4 v7, 0x2

    .line 25
    invoke-direct {v3, v6, v7, v5}, Lorg/apache/commons/compress/archivers/zip/PKWareExtraHeader$HashAlgorithm;-><init>(Ljava/lang/String;II)V

    .line 26
    .line 27
    .line 28
    new-instance v5, Lorg/apache/commons/compress/archivers/zip/PKWareExtraHeader$HashAlgorithm;

    .line 29
    .line 30
    const v6, 0x8004

    .line 31
    .line 32
    .line 33
    const-string v8, "SHA1"

    .line 34
    .line 35
    const/4 v9, 0x3

    .line 36
    invoke-direct {v5, v8, v9, v6}, Lorg/apache/commons/compress/archivers/zip/PKWareExtraHeader$HashAlgorithm;-><init>(Ljava/lang/String;II)V

    .line 37
    .line 38
    .line 39
    new-instance v6, Lorg/apache/commons/compress/archivers/zip/PKWareExtraHeader$HashAlgorithm;

    .line 40
    .line 41
    const v8, 0x8007

    .line 42
    .line 43
    .line 44
    const-string v10, "RIPEND160"

    .line 45
    .line 46
    const/4 v11, 0x4

    .line 47
    invoke-direct {v6, v10, v11, v8}, Lorg/apache/commons/compress/archivers/zip/PKWareExtraHeader$HashAlgorithm;-><init>(Ljava/lang/String;II)V

    .line 48
    .line 49
    .line 50
    new-instance v8, Lorg/apache/commons/compress/archivers/zip/PKWareExtraHeader$HashAlgorithm;

    .line 51
    .line 52
    const v10, 0x800c

    .line 53
    .line 54
    .line 55
    const-string v12, "SHA256"

    .line 56
    .line 57
    const/4 v13, 0x5

    .line 58
    invoke-direct {v8, v12, v13, v10}, Lorg/apache/commons/compress/archivers/zip/PKWareExtraHeader$HashAlgorithm;-><init>(Ljava/lang/String;II)V

    .line 59
    .line 60
    .line 61
    new-instance v10, Lorg/apache/commons/compress/archivers/zip/PKWareExtraHeader$HashAlgorithm;

    .line 62
    .line 63
    const v12, 0x800d

    .line 64
    .line 65
    .line 66
    const-string v14, "SHA384"

    .line 67
    .line 68
    const/4 v15, 0x6

    .line 69
    invoke-direct {v10, v14, v15, v12}, Lorg/apache/commons/compress/archivers/zip/PKWareExtraHeader$HashAlgorithm;-><init>(Ljava/lang/String;II)V

    .line 70
    .line 71
    .line 72
    new-instance v12, Lorg/apache/commons/compress/archivers/zip/PKWareExtraHeader$HashAlgorithm;

    .line 73
    .line 74
    const v14, 0x800e

    .line 75
    .line 76
    .line 77
    move/from16 v16, v2

    .line 78
    .line 79
    const-string v2, "SHA512"

    .line 80
    .line 81
    move/from16 v17, v4

    .line 82
    .line 83
    const/4 v4, 0x7

    .line 84
    invoke-direct {v12, v2, v4, v14}, Lorg/apache/commons/compress/archivers/zip/PKWareExtraHeader$HashAlgorithm;-><init>(Ljava/lang/String;II)V

    .line 85
    .line 86
    .line 87
    const/16 v2, 0x8

    .line 88
    .line 89
    new-array v2, v2, [Lorg/apache/commons/compress/archivers/zip/PKWareExtraHeader$HashAlgorithm;

    .line 90
    .line 91
    aput-object v0, v2, v16

    .line 92
    .line 93
    aput-object v1, v2, v17

    .line 94
    .line 95
    aput-object v3, v2, v7

    .line 96
    .line 97
    aput-object v5, v2, v9

    .line 98
    .line 99
    aput-object v6, v2, v11

    .line 100
    .line 101
    aput-object v8, v2, v13

    .line 102
    .line 103
    aput-object v10, v2, v15

    .line 104
    .line 105
    aput-object v12, v2, v4

    .line 106
    .line 107
    sput-object v2, Lorg/apache/commons/compress/archivers/zip/PKWareExtraHeader$HashAlgorithm;->g:[Lorg/apache/commons/compress/archivers/zip/PKWareExtraHeader$HashAlgorithm;

    .line 108
    .line 109
    new-instance v0, Ljava/util/HashMap;

    .line 110
    .line 111
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 112
    .line 113
    .line 114
    invoke-static {}, Lorg/apache/commons/compress/archivers/zip/PKWareExtraHeader$HashAlgorithm;->values()[Lorg/apache/commons/compress/archivers/zip/PKWareExtraHeader$HashAlgorithm;

    .line 115
    .line 116
    .line 117
    move-result-object v1

    .line 118
    array-length v2, v1

    .line 119
    move/from16 v3, v16

    .line 120
    .line 121
    :goto_0
    if-ge v3, v2, :cond_0

    .line 122
    .line 123
    aget-object v4, v1, v3

    .line 124
    .line 125
    iget v5, v4, Lorg/apache/commons/compress/archivers/zip/PKWareExtraHeader$HashAlgorithm;->c:I

    .line 126
    .line 127
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 128
    .line 129
    .line 130
    move-result-object v5

    .line 131
    invoke-virtual {v0, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    .line 133
    .line 134
    add-int/lit8 v3, v3, 0x1

    .line 135
    .line 136
    goto :goto_0

    .line 137
    :cond_0
    invoke-static {v0}, Lj$/util/DesugarCollections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    .line 138
    .line 139
    .line 140
    move-result-object v0

    .line 141
    sput-object v0, Lorg/apache/commons/compress/archivers/zip/PKWareExtraHeader$HashAlgorithm;->f:Ljava/util/Map;

    .line 142
    .line 143
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput p3, p0, Lorg/apache/commons/compress/archivers/zip/PKWareExtraHeader$HashAlgorithm;->c:I

    .line 5
    .line 6
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/commons/compress/archivers/zip/PKWareExtraHeader$HashAlgorithm;
    .locals 1

    .line 1
    const-class v0, Lorg/apache/commons/compress/archivers/zip/PKWareExtraHeader$HashAlgorithm;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lorg/apache/commons/compress/archivers/zip/PKWareExtraHeader$HashAlgorithm;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lorg/apache/commons/compress/archivers/zip/PKWareExtraHeader$HashAlgorithm;
    .locals 1

    .line 1
    sget-object v0, Lorg/apache/commons/compress/archivers/zip/PKWareExtraHeader$HashAlgorithm;->g:[Lorg/apache/commons/compress/archivers/zip/PKWareExtraHeader$HashAlgorithm;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lorg/apache/commons/compress/archivers/zip/PKWareExtraHeader$HashAlgorithm;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lorg/apache/commons/compress/archivers/zip/PKWareExtraHeader$HashAlgorithm;

    .line 8
    .line 9
    return-object v0
.end method
