.class synthetic Landroidx/work/impl/model/WorkTypeConverters$1;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/work/impl/model/WorkTypeConverters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1009
    name = null
.end annotation


# static fields
.field public static final synthetic a:[I

.field public static final synthetic b:[I

.field public static final synthetic c:[I

.field public static final synthetic d:[I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1
    invoke-static {}, Landroidx/work/OutOfQuotaPolicy;->values()[Landroidx/work/OutOfQuotaPolicy;

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
    sput-object v0, Landroidx/work/impl/model/WorkTypeConverters$1;->d:[I

    .line 9
    .line 10
    const/4 v1, 0x1

    .line 11
    const/4 v2, 0x0

    .line 12
    :try_start_0
    aput v1, v0, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    .line 14
    :catch_0
    const/4 v0, 0x2

    .line 15
    :try_start_1
    sget-object v3, Landroidx/work/impl/model/WorkTypeConverters$1;->d:[I

    .line 16
    .line 17
    aput v0, v3, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    .line 18
    .line 19
    :catch_1
    invoke-static {}, Landroidx/work/NetworkType;->values()[Landroidx/work/NetworkType;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    array-length v3, v3

    .line 24
    new-array v3, v3, [I

    .line 25
    .line 26
    sput-object v3, Landroidx/work/impl/model/WorkTypeConverters$1;->c:[I

    .line 27
    .line 28
    :try_start_2
    aput v1, v3, v2
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    .line 29
    .line 30
    :catch_2
    :try_start_3
    sget-object v3, Landroidx/work/impl/model/WorkTypeConverters$1;->c:[I

    .line 31
    .line 32
    aput v0, v3, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    .line 33
    .line 34
    :catch_3
    const/4 v3, 0x3

    .line 35
    :try_start_4
    sget-object v4, Landroidx/work/impl/model/WorkTypeConverters$1;->c:[I

    .line 36
    .line 37
    aput v3, v4, v0
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    .line 38
    .line 39
    :catch_4
    const/4 v4, 0x4

    .line 40
    :try_start_5
    sget-object v5, Landroidx/work/impl/model/WorkTypeConverters$1;->c:[I

    .line 41
    .line 42
    aput v4, v5, v3
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    .line 43
    .line 44
    :catch_5
    const/4 v5, 0x5

    .line 45
    :try_start_6
    sget-object v6, Landroidx/work/impl/model/WorkTypeConverters$1;->c:[I

    .line 46
    .line 47
    aput v5, v6, v4
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    .line 48
    .line 49
    :catch_6
    invoke-static {}, Landroidx/work/BackoffPolicy;->values()[Landroidx/work/BackoffPolicy;

    .line 50
    .line 51
    .line 52
    move-result-object v6

    .line 53
    array-length v6, v6

    .line 54
    new-array v6, v6, [I

    .line 55
    .line 56
    sput-object v6, Landroidx/work/impl/model/WorkTypeConverters$1;->b:[I

    .line 57
    .line 58
    :try_start_7
    aput v1, v6, v2
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_7

    .line 59
    .line 60
    :catch_7
    :try_start_8
    sget-object v6, Landroidx/work/impl/model/WorkTypeConverters$1;->b:[I

    .line 61
    .line 62
    aput v0, v6, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_8

    .line 63
    .line 64
    :catch_8
    invoke-static {}, Landroidx/work/WorkInfo$State;->values()[Landroidx/work/WorkInfo$State;

    .line 65
    .line 66
    .line 67
    move-result-object v6

    .line 68
    array-length v6, v6

    .line 69
    new-array v6, v6, [I

    .line 70
    .line 71
    sput-object v6, Landroidx/work/impl/model/WorkTypeConverters$1;->a:[I

    .line 72
    .line 73
    :try_start_9
    aput v1, v6, v2
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_9

    .line 74
    .line 75
    :catch_9
    :try_start_a
    sget-object v2, Landroidx/work/impl/model/WorkTypeConverters$1;->a:[I

    .line 76
    .line 77
    aput v0, v2, v1
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_a

    .line 78
    .line 79
    :catch_a
    :try_start_b
    sget-object v1, Landroidx/work/impl/model/WorkTypeConverters$1;->a:[I

    .line 80
    .line 81
    aput v3, v1, v0
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_b

    .line 82
    .line 83
    :catch_b
    :try_start_c
    sget-object v0, Landroidx/work/impl/model/WorkTypeConverters$1;->a:[I

    .line 84
    .line 85
    aput v4, v0, v3
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_c

    .line 86
    .line 87
    :catch_c
    :try_start_d
    sget-object v0, Landroidx/work/impl/model/WorkTypeConverters$1;->a:[I

    .line 88
    .line 89
    aput v5, v0, v4
    :try_end_d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d .. :try_end_d} :catch_d

    .line 90
    .line 91
    :catch_d
    :try_start_e
    sget-object v0, Landroidx/work/impl/model/WorkTypeConverters$1;->a:[I

    .line 92
    .line 93
    const/4 v1, 0x6

    .line 94
    aput v1, v0, v5
    :try_end_e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_e} :catch_e

    .line 95
    .line 96
    :catch_e
    return-void
.end method
