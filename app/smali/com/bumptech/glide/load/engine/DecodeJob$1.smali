.class synthetic Lcom/bumptech/glide/load/engine/DecodeJob$1;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/engine/DecodeJob;
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
    .locals 7

    .line 1
    invoke-static {}, Lcom/bumptech/glide/load/EncodeStrategy;->values()[Lcom/bumptech/glide/load/EncodeStrategy;

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
    sput-object v0, Lcom/bumptech/glide/load/engine/DecodeJob$1;->c:[I

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
    sget-object v3, Lcom/bumptech/glide/load/engine/DecodeJob$1;->c:[I

    .line 16
    .line 17
    aput v0, v3, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    .line 18
    .line 19
    :catch_1
    invoke-static {}, Lcom/bumptech/glide/load/engine/DecodeJob$Stage;->values()[Lcom/bumptech/glide/load/engine/DecodeJob$Stage;

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
    sput-object v3, Lcom/bumptech/glide/load/engine/DecodeJob$1;->b:[I

    .line 27
    .line 28
    :try_start_2
    aput v1, v3, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    .line 29
    .line 30
    :catch_2
    :try_start_3
    sget-object v3, Lcom/bumptech/glide/load/engine/DecodeJob$1;->b:[I

    .line 31
    .line 32
    aput v0, v3, v0
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    .line 33
    .line 34
    :catch_3
    const/4 v3, 0x3

    .line 35
    :try_start_4
    sget-object v4, Lcom/bumptech/glide/load/engine/DecodeJob$1;->b:[I

    .line 36
    .line 37
    aput v3, v4, v3
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    .line 38
    .line 39
    :catch_4
    const/4 v4, 0x5

    .line 40
    :try_start_5
    sget-object v5, Lcom/bumptech/glide/load/engine/DecodeJob$1;->b:[I

    .line 41
    .line 42
    const/4 v6, 0x4

    .line 43
    aput v6, v5, v4
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    .line 44
    .line 45
    :catch_5
    :try_start_6
    sget-object v5, Lcom/bumptech/glide/load/engine/DecodeJob$1;->b:[I

    .line 46
    .line 47
    aput v4, v5, v2
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    .line 48
    .line 49
    :catch_6
    invoke-static {}, Lcom/bumptech/glide/load/engine/DecodeJob$RunReason;->values()[Lcom/bumptech/glide/load/engine/DecodeJob$RunReason;

    .line 50
    .line 51
    .line 52
    move-result-object v4

    .line 53
    array-length v4, v4

    .line 54
    new-array v4, v4, [I

    .line 55
    .line 56
    sput-object v4, Lcom/bumptech/glide/load/engine/DecodeJob$1;->a:[I

    .line 57
    .line 58
    :try_start_7
    aput v1, v4, v2
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_7

    .line 59
    .line 60
    :catch_7
    :try_start_8
    sget-object v2, Lcom/bumptech/glide/load/engine/DecodeJob$1;->a:[I

    .line 61
    .line 62
    aput v0, v2, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_8

    .line 63
    .line 64
    :catch_8
    :try_start_9
    sget-object v1, Lcom/bumptech/glide/load/engine/DecodeJob$1;->a:[I

    .line 65
    .line 66
    aput v3, v1, v0
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_9

    .line 67
    .line 68
    :catch_9
    return-void
.end method
