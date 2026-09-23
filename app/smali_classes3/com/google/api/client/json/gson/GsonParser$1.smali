.class synthetic Lcom/google/api/client/json/gson/GsonParser$1;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/client/json/gson/GsonParser;
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
    .locals 9

    .line 1
    invoke-static {}, Lcom/google/gson/stream/JsonToken;->values()[Lcom/google/gson/stream/JsonToken;

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
    sput-object v0, Lcom/google/api/client/json/gson/GsonParser$1;->b:[I

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
    sget-object v3, Lcom/google/api/client/json/gson/GsonParser$1;->b:[I

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
    sget-object v4, Lcom/google/api/client/json/gson/GsonParser$1;->b:[I

    .line 21
    .line 22
    aput v3, v4, v0
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    .line 23
    .line 24
    :catch_2
    const/4 v4, 0x4

    .line 25
    :try_start_3
    sget-object v5, Lcom/google/api/client/json/gson/GsonParser$1;->b:[I

    .line 26
    .line 27
    aput v4, v5, v3
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    .line 28
    .line 29
    :catch_3
    const/4 v3, 0x5

    .line 30
    const/4 v5, 0x7

    .line 31
    :try_start_4
    sget-object v6, Lcom/google/api/client/json/gson/GsonParser$1;->b:[I

    .line 32
    .line 33
    aput v3, v6, v5
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    .line 34
    .line 35
    :catch_4
    const/4 v6, 0x6

    .line 36
    const/16 v7, 0x8

    .line 37
    .line 38
    :try_start_5
    sget-object v8, Lcom/google/api/client/json/gson/GsonParser$1;->b:[I

    .line 39
    .line 40
    aput v6, v8, v7
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    .line 41
    .line 42
    :catch_5
    :try_start_6
    sget-object v8, Lcom/google/api/client/json/gson/GsonParser$1;->b:[I

    .line 43
    .line 44
    aput v5, v8, v3
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    .line 45
    .line 46
    :catch_6
    :try_start_7
    sget-object v3, Lcom/google/api/client/json/gson/GsonParser$1;->b:[I

    .line 47
    .line 48
    aput v7, v3, v6
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_7

    .line 49
    .line 50
    :catch_7
    :try_start_8
    sget-object v3, Lcom/google/api/client/json/gson/GsonParser$1;->b:[I

    .line 51
    .line 52
    const/16 v5, 0x9

    .line 53
    .line 54
    aput v5, v3, v4
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_8

    .line 55
    .line 56
    :catch_8
    invoke-static {}, Lcom/google/api/client/json/JsonToken;->values()[Lcom/google/api/client/json/JsonToken;

    .line 57
    .line 58
    .line 59
    move-result-object v3

    .line 60
    array-length v3, v3

    .line 61
    new-array v3, v3, [I

    .line 62
    .line 63
    sput-object v3, Lcom/google/api/client/json/gson/GsonParser$1;->a:[I

    .line 64
    .line 65
    :try_start_9
    aput v1, v3, v2
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_9

    .line 66
    .line 67
    :catch_9
    :try_start_a
    sget-object v1, Lcom/google/api/client/json/gson/GsonParser$1;->a:[I

    .line 68
    .line 69
    aput v0, v1, v0
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_a

    .line 70
    .line 71
    :catch_a
    return-void
.end method
