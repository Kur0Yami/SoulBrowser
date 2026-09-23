.class synthetic Landroidx/constraintlayout/core/parser/CLParser$1;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/constraintlayout/core/parser/CLParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1009
    name = null
.end annotation


# static fields
.field public static final synthetic a:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    invoke-static {}, Landroidx/constraintlayout/core/parser/CLParser$TYPE;->values()[Landroidx/constraintlayout/core/parser/CLParser$TYPE;

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
    sput-object v0, Landroidx/constraintlayout/core/parser/CLParser$1;->a:[I

    .line 9
    .line 10
    const/4 v1, 0x1

    .line 11
    :try_start_0
    aput v1, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    .line 12
    .line 13
    :catch_0
    :try_start_1
    sget-object v0, Landroidx/constraintlayout/core/parser/CLParser$1;->a:[I

    .line 14
    .line 15
    const/4 v1, 0x2

    .line 16
    aput v1, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    .line 17
    .line 18
    :catch_1
    const/4 v0, 0x3

    .line 19
    const/4 v1, 0x4

    .line 20
    :try_start_2
    sget-object v2, Landroidx/constraintlayout/core/parser/CLParser$1;->a:[I

    .line 21
    .line 22
    aput v0, v2, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    .line 23
    .line 24
    :catch_2
    :try_start_3
    sget-object v2, Landroidx/constraintlayout/core/parser/CLParser$1;->a:[I

    .line 25
    .line 26
    aput v1, v2, v0
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    .line 27
    .line 28
    :catch_3
    :try_start_4
    sget-object v0, Landroidx/constraintlayout/core/parser/CLParser$1;->a:[I

    .line 29
    .line 30
    const/4 v1, 0x5

    .line 31
    aput v1, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    .line 32
    .line 33
    :catch_4
    :try_start_5
    sget-object v0, Landroidx/constraintlayout/core/parser/CLParser$1;->a:[I

    .line 34
    .line 35
    const/4 v1, 0x6

    .line 36
    aput v1, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    .line 37
    .line 38
    :catch_5
    return-void
.end method
