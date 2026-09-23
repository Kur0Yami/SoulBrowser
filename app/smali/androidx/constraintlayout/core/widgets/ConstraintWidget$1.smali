.class synthetic Landroidx/constraintlayout/core/widgets/ConstraintWidget$1;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/constraintlayout/core/widgets/ConstraintWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1009
    name = null
.end annotation


# static fields
.field public static final synthetic a:[I

.field public static final synthetic b:[I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 1
    invoke-static {}, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->values()[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

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
    sput-object v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget$1;->b:[I

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
    sget-object v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget$1;->b:[I

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
    sget-object v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget$1;->b:[I

    .line 21
    .line 22
    aput v3, v4, v3
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    .line 23
    .line 24
    :catch_2
    const/4 v4, 0x4

    .line 25
    :try_start_3
    sget-object v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget$1;->b:[I

    .line 26
    .line 27
    aput v4, v5, v0
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    .line 28
    .line 29
    :catch_3
    invoke-static {}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->values()[Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    .line 30
    .line 31
    .line 32
    move-result-object v5

    .line 33
    array-length v5, v5

    .line 34
    new-array v5, v5, [I

    .line 35
    .line 36
    sput-object v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget$1;->a:[I

    .line 37
    .line 38
    :try_start_4
    aput v1, v5, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    .line 39
    .line 40
    :catch_4
    :try_start_5
    sget-object v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget$1;->a:[I

    .line 41
    .line 42
    aput v0, v1, v0
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    .line 43
    .line 44
    :catch_5
    :try_start_6
    sget-object v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget$1;->a:[I

    .line 45
    .line 46
    aput v3, v0, v3
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    .line 47
    .line 48
    :catch_6
    :try_start_7
    sget-object v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget$1;->a:[I

    .line 49
    .line 50
    aput v4, v0, v4
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_7

    .line 51
    .line 52
    :catch_7
    :try_start_8
    sget-object v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget$1;->a:[I

    .line 53
    .line 54
    const/4 v1, 0x5

    .line 55
    aput v1, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_8

    .line 56
    .line 57
    :catch_8
    :try_start_9
    sget-object v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget$1;->a:[I

    .line 58
    .line 59
    const/4 v1, 0x6

    .line 60
    aput v1, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_9

    .line 61
    .line 62
    :catch_9
    :try_start_a
    sget-object v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget$1;->a:[I

    .line 63
    .line 64
    const/4 v1, 0x7

    .line 65
    aput v1, v0, v1
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_a

    .line 66
    .line 67
    :catch_a
    :try_start_b
    sget-object v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget$1;->a:[I

    .line 68
    .line 69
    const/16 v1, 0x8

    .line 70
    .line 71
    aput v1, v0, v1
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_b

    .line 72
    .line 73
    :catch_b
    :try_start_c
    sget-object v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget$1;->a:[I

    .line 74
    .line 75
    const/16 v1, 0x9

    .line 76
    .line 77
    aput v1, v0, v2
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_c

    .line 78
    .line 79
    :catch_c
    return-void
.end method
