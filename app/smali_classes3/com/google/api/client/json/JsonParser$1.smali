.class synthetic Lcom/google/api/client/json/JsonParser$1;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/client/json/JsonParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1009
    name = null
.end annotation


# static fields
.field public static final synthetic a:[I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 1
    invoke-static {}, Lcom/google/api/client/json/JsonToken;->values()[Lcom/google/api/client/json/JsonToken;

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
    sput-object v0, Lcom/google/api/client/json/JsonParser$1;->a:[I

    .line 9
    .line 10
    const/4 v1, 0x1

    .line 11
    const/4 v2, 0x2

    .line 12
    :try_start_0
    aput v1, v0, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    .line 14
    :catch_0
    :try_start_1
    sget-object v0, Lcom/google/api/client/json/JsonParser$1;->a:[I

    .line 15
    .line 16
    const/4 v3, 0x0

    .line 17
    aput v2, v0, v3
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    .line 18
    .line 19
    :catch_1
    const/4 v0, 0x3

    .line 20
    :try_start_2
    sget-object v2, Lcom/google/api/client/json/JsonParser$1;->a:[I

    .line 21
    .line 22
    aput v0, v2, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    .line 23
    .line 24
    :catch_2
    :try_start_3
    sget-object v1, Lcom/google/api/client/json/JsonParser$1;->a:[I

    .line 25
    .line 26
    const/4 v2, 0x4

    .line 27
    aput v2, v1, v2
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    .line 28
    .line 29
    :catch_3
    const/4 v1, 0x5

    .line 30
    :try_start_4
    sget-object v2, Lcom/google/api/client/json/JsonParser$1;->a:[I

    .line 31
    .line 32
    aput v1, v2, v0
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    .line 33
    .line 34
    :catch_4
    const/4 v0, 0x6

    .line 35
    const/16 v2, 0x8

    .line 36
    .line 37
    :try_start_5
    sget-object v3, Lcom/google/api/client/json/JsonParser$1;->a:[I

    .line 38
    .line 39
    aput v0, v3, v2
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    .line 40
    .line 41
    :catch_5
    const/4 v3, 0x7

    .line 42
    const/16 v4, 0x9

    .line 43
    .line 44
    :try_start_6
    sget-object v5, Lcom/google/api/client/json/JsonParser$1;->a:[I

    .line 45
    .line 46
    aput v3, v5, v4
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    .line 47
    .line 48
    :catch_6
    :try_start_7
    sget-object v5, Lcom/google/api/client/json/JsonParser$1;->a:[I

    .line 49
    .line 50
    aput v2, v5, v3
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_7

    .line 51
    .line 52
    :catch_7
    :try_start_8
    sget-object v2, Lcom/google/api/client/json/JsonParser$1;->a:[I

    .line 53
    .line 54
    aput v4, v2, v0
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_8

    .line 55
    .line 56
    :catch_8
    const/16 v0, 0xa

    .line 57
    .line 58
    :try_start_9
    sget-object v2, Lcom/google/api/client/json/JsonParser$1;->a:[I

    .line 59
    .line 60
    aput v0, v2, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_9

    .line 61
    .line 62
    :catch_9
    :try_start_a
    sget-object v1, Lcom/google/api/client/json/JsonParser$1;->a:[I

    .line 63
    .line 64
    const/16 v2, 0xb

    .line 65
    .line 66
    aput v2, v1, v0
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_a

    .line 67
    .line 68
    :catch_a
    return-void
.end method
