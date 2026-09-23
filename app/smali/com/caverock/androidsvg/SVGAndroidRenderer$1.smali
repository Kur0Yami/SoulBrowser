.class synthetic Lcom/caverock/androidsvg/SVGAndroidRenderer$1;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/caverock/androidsvg/SVGAndroidRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1009
    name = null
.end annotation


# static fields
.field public static final synthetic a:[I

.field public static final synthetic b:[I

.field public static final synthetic c:[I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    invoke-static {}, Lcom/caverock/androidsvg/SVG$Style$LineJoin;->values()[Lcom/caverock/androidsvg/SVG$Style$LineJoin;

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
    sput-object v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$1;->c:[I

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
    sget-object v3, Lcom/caverock/androidsvg/SVGAndroidRenderer$1;->c:[I

    .line 16
    .line 17
    aput v0, v3, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    .line 18
    .line 19
    :catch_1
    const/4 v3, 0x3

    .line 20
    :try_start_2
    sget-object v4, Lcom/caverock/androidsvg/SVGAndroidRenderer$1;->c:[I

    .line 21
    .line 22
    aput v3, v4, v0
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    .line 23
    .line 24
    :catch_2
    invoke-static {}, Lcom/caverock/androidsvg/SVG$Style$LineCap;->values()[Lcom/caverock/androidsvg/SVG$Style$LineCap;

    .line 25
    .line 26
    .line 27
    move-result-object v4

    .line 28
    array-length v4, v4

    .line 29
    new-array v4, v4, [I

    .line 30
    .line 31
    sput-object v4, Lcom/caverock/androidsvg/SVGAndroidRenderer$1;->b:[I

    .line 32
    .line 33
    :try_start_3
    aput v1, v4, v2
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    .line 34
    .line 35
    :catch_3
    :try_start_4
    sget-object v2, Lcom/caverock/androidsvg/SVGAndroidRenderer$1;->b:[I

    .line 36
    .line 37
    aput v0, v2, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    .line 38
    .line 39
    :catch_4
    :try_start_5
    sget-object v2, Lcom/caverock/androidsvg/SVGAndroidRenderer$1;->b:[I

    .line 40
    .line 41
    aput v3, v2, v0
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    .line 42
    .line 43
    :catch_5
    invoke-static {}, Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;->values()[Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    array-length v2, v2

    .line 48
    new-array v2, v2, [I

    .line 49
    .line 50
    sput-object v2, Lcom/caverock/androidsvg/SVGAndroidRenderer$1;->a:[I

    .line 51
    .line 52
    :try_start_6
    aput v1, v2, v0
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    .line 53
    .line 54
    :catch_6
    const/4 v1, 0x5

    .line 55
    :try_start_7
    sget-object v2, Lcom/caverock/androidsvg/SVGAndroidRenderer$1;->a:[I

    .line 56
    .line 57
    aput v0, v2, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_7

    .line 58
    .line 59
    :catch_7
    const/16 v0, 0x8

    .line 60
    .line 61
    :try_start_8
    sget-object v2, Lcom/caverock/androidsvg/SVGAndroidRenderer$1;->a:[I

    .line 62
    .line 63
    aput v3, v2, v0
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_8

    .line 64
    .line 65
    :catch_8
    const/4 v2, 0x4

    .line 66
    :try_start_9
    sget-object v4, Lcom/caverock/androidsvg/SVGAndroidRenderer$1;->a:[I

    .line 67
    .line 68
    aput v2, v4, v3
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_9

    .line 69
    .line 70
    :catch_9
    const/4 v3, 0x6

    .line 71
    :try_start_a
    sget-object v4, Lcom/caverock/androidsvg/SVGAndroidRenderer$1;->a:[I

    .line 72
    .line 73
    aput v1, v4, v3
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_a

    .line 74
    .line 75
    :catch_a
    :try_start_b
    sget-object v1, Lcom/caverock/androidsvg/SVGAndroidRenderer$1;->a:[I

    .line 76
    .line 77
    const/16 v4, 0x9

    .line 78
    .line 79
    aput v3, v1, v4
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_b

    .line 80
    .line 81
    :catch_b
    const/4 v1, 0x7

    .line 82
    :try_start_c
    sget-object v3, Lcom/caverock/androidsvg/SVGAndroidRenderer$1;->a:[I

    .line 83
    .line 84
    aput v1, v3, v2
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_c

    .line 85
    .line 86
    :catch_c
    :try_start_d
    sget-object v2, Lcom/caverock/androidsvg/SVGAndroidRenderer$1;->a:[I

    .line 87
    .line 88
    aput v0, v2, v1
    :try_end_d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d .. :try_end_d} :catch_d

    .line 89
    .line 90
    :catch_d
    return-void
.end method
