.class Lcom/google/auth/oauth2/Slf4jUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/auth/oauth2/Slf4jUtils$DefaultLoggerFactoryProvider;,
        Lcom/google/auth/oauth2/Slf4jUtils$LoggerFactoryProvider;
    }
.end annotation


# static fields
.field public static final a:Lcom/google/gson/Gson;

.field public static final b:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/gson/Gson;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/google/auth/oauth2/Slf4jUtils;->a:Lcom/google/gson/Gson;

    .line 7
    .line 8
    const-string v0, "org.slf4j.event.KeyValuePair"

    .line 9
    .line 10
    :try_start_0
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    .line 12
    .line 13
    const/4 v0, 0x1

    .line 14
    goto :goto_0

    .line 15
    :catch_0
    const/4 v0, 0x0

    .line 16
    :goto_0
    sput-boolean v0, Lcom/google/auth/oauth2/Slf4jUtils;->b:Z

    .line 17
    .line 18
    return-void
.end method

.method public static a(Lorg/slf4j/Logger;Lorg/slf4j/event/Level;Ljava/util/Map;Ljava/lang/String;)V
    .locals 5

    .line 1
    sget-boolean v0, Lcom/google/auth/oauth2/Slf4jUtils;->b:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-static {p0, p1, p2, p3}, Lcom/google/auth/oauth2/Slf4jUtils;->b(Lorg/slf4j/Logger;Lorg/slf4j/event/Level;Ljava/util/Map;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    invoke-interface {p2}, Ljava/util/Map;->isEmpty()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    const-string v1, "MDCAdapter cannot be null. See also http://www.slf4j.org/codes.html#null_MDCA"

    .line 14
    .line 15
    if-nez v0, :cond_4

    .line 16
    .line 17
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    if-eqz v2, :cond_4

    .line 30
    .line 31
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    check-cast v2, Ljava/util/Map$Entry;

    .line 36
    .line 37
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    check-cast v3, Ljava/lang/String;

    .line 42
    .line 43
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    instance-of v4, v2, Ljava/lang/String;

    .line 48
    .line 49
    if-eqz v4, :cond_1

    .line 50
    .line 51
    goto :goto_1

    .line 52
    :cond_1
    sget-object v4, Lcom/google/auth/oauth2/Slf4jUtils;->a:Lcom/google/gson/Gson;

    .line 53
    .line 54
    invoke-virtual {v4, v2}, Lcom/google/gson/Gson;->e(Ljava/lang/Object;)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    :goto_1
    if-eqz v3, :cond_3

    .line 58
    .line 59
    sget-object v2, Lorg/slf4j/MDC;->a:Lorg/slf4j/spi/MDCAdapter;

    .line 60
    .line 61
    if-eqz v2, :cond_2

    .line 62
    .line 63
    invoke-interface {v2, v3}, Lorg/slf4j/spi/MDCAdapter;->a(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 68
    .line 69
    invoke-direct {p0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    throw p0

    .line 73
    :cond_3
    sget-object p0, Lorg/slf4j/MDC;->a:Lorg/slf4j/spi/MDCAdapter;

    .line 74
    .line 75
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 76
    .line 77
    const-string p1, "key parameter cannot be null"

    .line 78
    .line 79
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    throw p0

    .line 83
    :cond_4
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 84
    .line 85
    .line 86
    move-result p1

    .line 87
    if-eqz p1, :cond_9

    .line 88
    .line 89
    const/4 v0, 0x1

    .line 90
    if-eq p1, v0, :cond_8

    .line 91
    .line 92
    const/4 v0, 0x2

    .line 93
    if-eq p1, v0, :cond_7

    .line 94
    .line 95
    const/4 v0, 0x3

    .line 96
    if-eq p1, v0, :cond_6

    .line 97
    .line 98
    const/4 v0, 0x4

    .line 99
    if-eq p1, v0, :cond_5

    .line 100
    .line 101
    invoke-interface {p0, p3}, Lorg/slf4j/Logger;->e(Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    goto :goto_2

    .line 105
    :cond_5
    invoke-interface {p0, p3}, Lorg/slf4j/Logger;->i(Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    goto :goto_2

    .line 109
    :cond_6
    invoke-interface {p0, p3}, Lorg/slf4j/Logger;->e(Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    goto :goto_2

    .line 113
    :cond_7
    invoke-interface {p0, p3}, Lorg/slf4j/Logger;->g(Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    goto :goto_2

    .line 117
    :cond_8
    invoke-interface {p0, p3}, Lorg/slf4j/Logger;->h(Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    goto :goto_2

    .line 121
    :cond_9
    invoke-interface {p0, p3}, Lorg/slf4j/Logger;->b(Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    :goto_2
    invoke-interface {p2}, Ljava/util/Map;->isEmpty()Z

    .line 125
    .line 126
    .line 127
    move-result p0

    .line 128
    if-nez p0, :cond_b

    .line 129
    .line 130
    sget-object p0, Lorg/slf4j/MDC;->a:Lorg/slf4j/spi/MDCAdapter;

    .line 131
    .line 132
    if-eqz p0, :cond_a

    .line 133
    .line 134
    invoke-interface {p0}, Lorg/slf4j/spi/MDCAdapter;->clear()V

    .line 135
    .line 136
    .line 137
    return-void

    .line 138
    :cond_a
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 139
    .line 140
    invoke-direct {p0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 141
    .line 142
    .line 143
    throw p0

    .line 144
    :cond_b
    return-void
.end method

.method public static b(Lorg/slf4j/Logger;Lorg/slf4j/event/Level;Ljava/util/Map;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    if-eqz p1, :cond_4

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    if-eq p1, v0, :cond_3

    .line 9
    .line 10
    const/4 v0, 0x2

    .line 11
    if-eq p1, v0, :cond_2

    .line 12
    .line 13
    const/4 v0, 0x3

    .line 14
    if-eq p1, v0, :cond_1

    .line 15
    .line 16
    const/4 v0, 0x4

    .line 17
    if-eq p1, v0, :cond_0

    .line 18
    .line 19
    invoke-interface {p0}, Lorg/slf4j/Logger;->atDebug()Lorg/slf4j/spi/LoggingEventBuilder;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    invoke-interface {p0}, Lorg/slf4j/Logger;->atTrace()Lorg/slf4j/spi/LoggingEventBuilder;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    goto :goto_0

    .line 29
    :cond_1
    invoke-interface {p0}, Lorg/slf4j/Logger;->atDebug()Lorg/slf4j/spi/LoggingEventBuilder;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    goto :goto_0

    .line 34
    :cond_2
    invoke-interface {p0}, Lorg/slf4j/Logger;->atInfo()Lorg/slf4j/spi/LoggingEventBuilder;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    goto :goto_0

    .line 39
    :cond_3
    invoke-interface {p0}, Lorg/slf4j/Logger;->atWarn()Lorg/slf4j/spi/LoggingEventBuilder;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    goto :goto_0

    .line 44
    :cond_4
    invoke-interface {p0}, Lorg/slf4j/Logger;->atError()Lorg/slf4j/spi/LoggingEventBuilder;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    :goto_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 49
    .line 50
    .line 51
    new-instance p1, Lcom/google/auth/oauth2/c;

    .line 52
    .line 53
    invoke-direct {p1, p0}, Lcom/google/auth/oauth2/c;-><init>(Lorg/slf4j/spi/LoggingEventBuilder;)V

    .line 54
    .line 55
    .line 56
    invoke-static {p2, p1}, Lj$/util/Map$-EL;->forEach(Ljava/util/Map;Ljava/util/function/BiConsumer;)V

    .line 57
    .line 58
    .line 59
    invoke-interface {p0, p3}, Lorg/slf4j/spi/LoggingEventBuilder;->log(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    return-void
.end method
