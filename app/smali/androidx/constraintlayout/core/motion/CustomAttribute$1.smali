.class synthetic Landroidx/constraintlayout/core/motion/CustomAttribute$1;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/constraintlayout/core/motion/CustomAttribute;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1009
    name = null
.end annotation


# static fields
.field public static final synthetic a:[I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1
    invoke-static {}, Landroidx/constraintlayout/core/motion/CustomAttribute$AttributeType;->values()[Landroidx/constraintlayout/core/motion/CustomAttribute$AttributeType;

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
    sput-object v0, Landroidx/constraintlayout/core/motion/CustomAttribute$1;->a:[I

    .line 9
    .line 10
    const/4 v1, 0x1

    .line 11
    const/4 v2, 0x7

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
    const/4 v3, 0x5

    .line 16
    :try_start_1
    sget-object v4, Landroidx/constraintlayout/core/motion/CustomAttribute$1;->a:[I

    .line 17
    .line 18
    aput v0, v4, v3
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    .line 19
    .line 20
    :catch_1
    const/4 v4, 0x3

    .line 21
    const/4 v5, 0x4

    .line 22
    :try_start_2
    sget-object v6, Landroidx/constraintlayout/core/motion/CustomAttribute$1;->a:[I

    .line 23
    .line 24
    aput v4, v6, v5
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    .line 25
    .line 26
    :catch_2
    :try_start_3
    sget-object v6, Landroidx/constraintlayout/core/motion/CustomAttribute$1;->a:[I

    .line 27
    .line 28
    aput v5, v6, v0
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    .line 29
    .line 30
    :catch_3
    :try_start_4
    sget-object v0, Landroidx/constraintlayout/core/motion/CustomAttribute$1;->a:[I

    .line 31
    .line 32
    aput v3, v0, v4
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    .line 33
    .line 34
    :catch_4
    const/4 v0, 0x6

    .line 35
    :try_start_5
    sget-object v3, Landroidx/constraintlayout/core/motion/CustomAttribute$1;->a:[I

    .line 36
    .line 37
    const/4 v4, 0x0

    .line 38
    aput v0, v3, v4
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    .line 39
    .line 40
    :catch_5
    :try_start_6
    sget-object v3, Landroidx/constraintlayout/core/motion/CustomAttribute$1;->a:[I

    .line 41
    .line 42
    aput v2, v3, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    .line 43
    .line 44
    :catch_6
    :try_start_7
    sget-object v1, Landroidx/constraintlayout/core/motion/CustomAttribute$1;->a:[I

    .line 45
    .line 46
    const/16 v2, 0x8

    .line 47
    .line 48
    aput v2, v1, v0
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_7

    .line 49
    .line 50
    :catch_7
    return-void
.end method
