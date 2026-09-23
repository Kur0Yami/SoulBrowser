.class synthetic Lorg/apache/commons/compress/archivers/zip/ZipFile$3;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/compress/archivers/zip/ZipFile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1009
    name = null
.end annotation


# static fields
.field public static final synthetic a:[I


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 1
    invoke-static {}, Lorg/apache/commons/compress/archivers/zip/ZipMethod;->values()[Lorg/apache/commons/compress/archivers/zip/ZipMethod;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    array-length v0, v0

    .line 6
    new-array v0, v0, [I

    .line 7
    .line 8
    sput-object v0, Lorg/apache/commons/compress/archivers/zip/ZipFile$3;->a:[I

    .line 9
    .line 10
    const/4 v1, 0x1

    .line 11
    :try_start_0
    sget-object v2, Lorg/apache/commons/compress/archivers/zip/ZipMethod;->f:Ljava/util/Map;

    .line 12
    .line 13
    const/4 v2, 0x0

    .line 14
    aput v1, v0, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    .line 16
    :catch_0
    const/4 v0, 0x2

    .line 17
    :try_start_1
    sget-object v2, Lorg/apache/commons/compress/archivers/zip/ZipFile$3;->a:[I

    .line 18
    .line 19
    sget-object v3, Lorg/apache/commons/compress/archivers/zip/ZipMethod;->f:Ljava/util/Map;

    .line 20
    .line 21
    aput v0, v2, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    .line 22
    .line 23
    :catch_1
    const/4 v1, 0x3

    .line 24
    const/4 v2, 0x6

    .line 25
    :try_start_2
    sget-object v3, Lorg/apache/commons/compress/archivers/zip/ZipFile$3;->a:[I

    .line 26
    .line 27
    sget-object v4, Lorg/apache/commons/compress/archivers/zip/ZipMethod;->f:Ljava/util/Map;

    .line 28
    .line 29
    aput v1, v3, v2
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    .line 30
    .line 31
    :catch_2
    const/4 v3, 0x4

    .line 32
    const/16 v4, 0x8

    .line 33
    .line 34
    :try_start_3
    sget-object v5, Lorg/apache/commons/compress/archivers/zip/ZipFile$3;->a:[I

    .line 35
    .line 36
    sget-object v6, Lorg/apache/commons/compress/archivers/zip/ZipMethod;->f:Ljava/util/Map;

    .line 37
    .line 38
    aput v3, v5, v4
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    .line 39
    .line 40
    :catch_3
    const/4 v5, 0x5

    .line 41
    const/16 v6, 0xb

    .line 42
    .line 43
    :try_start_4
    sget-object v7, Lorg/apache/commons/compress/archivers/zip/ZipFile$3;->a:[I

    .line 44
    .line 45
    sget-object v8, Lorg/apache/commons/compress/archivers/zip/ZipMethod;->f:Ljava/util/Map;

    .line 46
    .line 47
    aput v5, v7, v6
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    .line 48
    .line 49
    :catch_4
    const/16 v7, 0x10

    .line 50
    .line 51
    :try_start_5
    sget-object v8, Lorg/apache/commons/compress/archivers/zip/ZipFile$3;->a:[I

    .line 52
    .line 53
    sget-object v9, Lorg/apache/commons/compress/archivers/zip/ZipMethod;->f:Ljava/util/Map;

    .line 54
    .line 55
    aput v2, v8, v7
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    .line 56
    .line 57
    :catch_5
    const/4 v2, 0x7

    .line 58
    const/16 v8, 0x9

    .line 59
    .line 60
    :try_start_6
    sget-object v9, Lorg/apache/commons/compress/archivers/zip/ZipFile$3;->a:[I

    .line 61
    .line 62
    sget-object v10, Lorg/apache/commons/compress/archivers/zip/ZipMethod;->f:Ljava/util/Map;

    .line 63
    .line 64
    aput v2, v9, v8
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    .line 65
    .line 66
    :catch_6
    :try_start_7
    sget-object v9, Lorg/apache/commons/compress/archivers/zip/ZipFile$3;->a:[I

    .line 67
    .line 68
    sget-object v10, Lorg/apache/commons/compress/archivers/zip/ZipMethod;->f:Ljava/util/Map;

    .line 69
    .line 70
    aput v4, v9, v0
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_7

    .line 71
    .line 72
    :catch_7
    :try_start_8
    sget-object v0, Lorg/apache/commons/compress/archivers/zip/ZipFile$3;->a:[I

    .line 73
    .line 74
    sget-object v4, Lorg/apache/commons/compress/archivers/zip/ZipMethod;->f:Ljava/util/Map;

    .line 75
    .line 76
    aput v8, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_8

    .line 77
    .line 78
    :catch_8
    const/16 v0, 0xa

    .line 79
    .line 80
    :try_start_9
    sget-object v1, Lorg/apache/commons/compress/archivers/zip/ZipFile$3;->a:[I

    .line 81
    .line 82
    sget-object v4, Lorg/apache/commons/compress/archivers/zip/ZipMethod;->f:Ljava/util/Map;

    .line 83
    .line 84
    aput v0, v1, v3
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_9

    .line 85
    .line 86
    :catch_9
    :try_start_a
    sget-object v1, Lorg/apache/commons/compress/archivers/zip/ZipFile$3;->a:[I

    .line 87
    .line 88
    sget-object v3, Lorg/apache/commons/compress/archivers/zip/ZipMethod;->f:Ljava/util/Map;

    .line 89
    .line 90
    aput v6, v1, v5
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_a

    .line 91
    .line 92
    :catch_a
    const/16 v1, 0xc

    .line 93
    .line 94
    const/16 v3, 0xd

    .line 95
    .line 96
    :try_start_b
    sget-object v4, Lorg/apache/commons/compress/archivers/zip/ZipFile$3;->a:[I

    .line 97
    .line 98
    sget-object v5, Lorg/apache/commons/compress/archivers/zip/ZipMethod;->f:Ljava/util/Map;

    .line 99
    .line 100
    aput v1, v4, v3
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_b

    .line 101
    .line 102
    :catch_b
    :try_start_c
    sget-object v4, Lorg/apache/commons/compress/archivers/zip/ZipFile$3;->a:[I

    .line 103
    .line 104
    sget-object v5, Lorg/apache/commons/compress/archivers/zip/ZipMethod;->f:Ljava/util/Map;

    .line 105
    .line 106
    aput v3, v4, v1
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_c

    .line 107
    .line 108
    :catch_c
    const/16 v1, 0xe

    .line 109
    .line 110
    :try_start_d
    sget-object v3, Lorg/apache/commons/compress/archivers/zip/ZipFile$3;->a:[I

    .line 111
    .line 112
    sget-object v4, Lorg/apache/commons/compress/archivers/zip/ZipMethod;->f:Ljava/util/Map;

    .line 113
    .line 114
    aput v1, v3, v0
    :try_end_d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d .. :try_end_d} :catch_d

    .line 115
    .line 116
    :catch_d
    :try_start_e
    sget-object v0, Lorg/apache/commons/compress/archivers/zip/ZipFile$3;->a:[I

    .line 117
    .line 118
    sget-object v3, Lorg/apache/commons/compress/archivers/zip/ZipMethod;->f:Ljava/util/Map;

    .line 119
    .line 120
    const/16 v3, 0xf

    .line 121
    .line 122
    aput v3, v0, v3
    :try_end_e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_e} :catch_e

    .line 123
    .line 124
    :catch_e
    :try_start_f
    sget-object v0, Lorg/apache/commons/compress/archivers/zip/ZipFile$3;->a:[I

    .line 125
    .line 126
    sget-object v3, Lorg/apache/commons/compress/archivers/zip/ZipMethod;->f:Ljava/util/Map;

    .line 127
    .line 128
    aput v7, v0, v2
    :try_end_f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f .. :try_end_f} :catch_f

    .line 129
    .line 130
    :catch_f
    :try_start_10
    sget-object v0, Lorg/apache/commons/compress/archivers/zip/ZipFile$3;->a:[I

    .line 131
    .line 132
    sget-object v2, Lorg/apache/commons/compress/archivers/zip/ZipMethod;->f:Ljava/util/Map;

    .line 133
    .line 134
    const/16 v2, 0x11

    .line 135
    .line 136
    aput v2, v0, v2
    :try_end_10
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10 .. :try_end_10} :catch_10

    .line 137
    .line 138
    :catch_10
    :try_start_11
    sget-object v0, Lorg/apache/commons/compress/archivers/zip/ZipFile$3;->a:[I

    .line 139
    .line 140
    sget-object v2, Lorg/apache/commons/compress/archivers/zip/ZipMethod;->f:Ljava/util/Map;

    .line 141
    .line 142
    const/16 v2, 0x12

    .line 143
    .line 144
    aput v2, v0, v1
    :try_end_11
    .catch Ljava/lang/NoSuchFieldError; {:try_start_11 .. :try_end_11} :catch_11

    .line 145
    .line 146
    :catch_11
    return-void
.end method
