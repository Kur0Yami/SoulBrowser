.class public final Lorg/slf4j/LoggerFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static volatile a:I

.field public static final b:Lorg/slf4j/helpers/SubstituteLoggerFactory;

.field public static final c:Lorg/slf4j/helpers/NOPLoggerFactory;

.field public static final d:Z

.field public static final e:[Ljava/lang/String;

.field public static final f:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lorg/slf4j/helpers/SubstituteLoggerFactory;

    .line 2
    .line 3
    invoke-direct {v0}, Lorg/slf4j/helpers/SubstituteLoggerFactory;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lorg/slf4j/LoggerFactory;->b:Lorg/slf4j/helpers/SubstituteLoggerFactory;

    .line 7
    .line 8
    new-instance v0, Lorg/slf4j/helpers/NOPLoggerFactory;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lorg/slf4j/LoggerFactory;->c:Lorg/slf4j/helpers/NOPLoggerFactory;

    .line 14
    .line 15
    const-string v0, "slf4j.detectLoggerNameMismatch"

    .line 16
    .line 17
    :try_start_0
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 21
    goto :goto_0

    .line 22
    :catch_0
    const/4 v0, 0x0

    .line 23
    :goto_0
    if-nez v0, :cond_0

    .line 24
    .line 25
    const/4 v0, 0x0

    .line 26
    goto :goto_1

    .line 27
    :cond_0
    const-string v1, "true"

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    :goto_1
    sput-boolean v0, Lorg/slf4j/LoggerFactory;->d:Z

    .line 34
    .line 35
    const-string v0, "1.6"

    .line 36
    .line 37
    const-string v1, "1.7"

    .line 38
    .line 39
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    sput-object v0, Lorg/slf4j/LoggerFactory;->e:[Ljava/lang/String;

    .line 44
    .line 45
    const-string v0, "org/slf4j/impl/StaticLoggerBinder.class"

    .line 46
    .line 47
    sput-object v0, Lorg/slf4j/LoggerFactory;->f:Ljava/lang/String;

    .line 48
    .line 49
    return-void
.end method

.method public static final a()V
    .locals 5

    .line 1
    const-string v0, "Failed to instantiate SLF4J LoggerFactory"

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    :try_start_0
    invoke-static {}, Lorg/slf4j/LoggerFactory;->f()Z

    .line 5
    .line 6
    .line 7
    move-result v2

    .line 8
    if-nez v2, :cond_0

    .line 9
    .line 10
    invoke-static {}, Lorg/slf4j/LoggerFactory;->b()Ljava/util/LinkedHashSet;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    invoke-static {v2}, Lorg/slf4j/LoggerFactory;->i(Ljava/util/LinkedHashSet;)V

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :catch_0
    move-exception v2

    .line 19
    goto :goto_1

    .line 20
    :catch_1
    move-exception v0

    .line 21
    goto :goto_2

    .line 22
    :catch_2
    move-exception v2

    .line 23
    goto :goto_3

    .line 24
    :cond_0
    const/4 v2, 0x0

    .line 25
    :goto_0
    invoke-static {}, Lorg/slf4j/impl/StaticLoggerBinder;->getSingleton()Lorg/slf4j/impl/StaticLoggerBinder;

    .line 26
    .line 27
    .line 28
    const/4 v3, 0x3

    .line 29
    sput v3, Lorg/slf4j/LoggerFactory;->a:I

    .line 30
    .line 31
    invoke-static {v2}, Lorg/slf4j/LoggerFactory;->h(Ljava/util/LinkedHashSet;)V

    .line 32
    .line 33
    .line 34
    invoke-static {}, Lorg/slf4j/LoggerFactory;->c()V

    .line 35
    .line 36
    .line 37
    invoke-static {}, Lorg/slf4j/LoggerFactory;->g()V

    .line 38
    .line 39
    .line 40
    sget-object v2, Lorg/slf4j/LoggerFactory;->b:Lorg/slf4j/helpers/SubstituteLoggerFactory;

    .line 41
    .line 42
    iget-object v3, v2, Lorg/slf4j/helpers/SubstituteLoggerFactory;->b:Ljava/util/HashMap;

    .line 43
    .line 44
    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    .line 45
    .line 46
    .line 47
    iget-object v2, v2, Lorg/slf4j/helpers/SubstituteLoggerFactory;->c:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 48
    .line 49
    invoke-virtual {v2}, Ljava/util/concurrent/LinkedBlockingQueue;->clear()V
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    .line 51
    .line 52
    return-void

    .line 53
    :goto_1
    sput v1, Lorg/slf4j/LoggerFactory;->a:I

    .line 54
    .line 55
    invoke-static {v0, v2}, Lorg/slf4j/helpers/Util;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 56
    .line 57
    .line 58
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 59
    .line 60
    const-string v1, "Unexpected initialization failure"

    .line 61
    .line 62
    invoke-direct {v0, v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 63
    .line 64
    .line 65
    throw v0

    .line 66
    :goto_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v2

    .line 70
    if-eqz v2, :cond_1

    .line 71
    .line 72
    const-string v3, "org.slf4j.impl.StaticLoggerBinder.getSingleton()"

    .line 73
    .line 74
    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 75
    .line 76
    .line 77
    move-result v2

    .line 78
    if-eqz v2, :cond_1

    .line 79
    .line 80
    sput v1, Lorg/slf4j/LoggerFactory;->a:I

    .line 81
    .line 82
    const-string v1, "slf4j-api 1.6.x (or later) is incompatible with this binding."

    .line 83
    .line 84
    invoke-static {v1}, Lorg/slf4j/helpers/Util;->b(Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    const-string v1, "Your binding is version 1.5.5 or earlier."

    .line 88
    .line 89
    invoke-static {v1}, Lorg/slf4j/helpers/Util;->b(Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    const-string v1, "Upgrade your binding to version 1.6.x."

    .line 93
    .line 94
    invoke-static {v1}, Lorg/slf4j/helpers/Util;->b(Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    :cond_1
    throw v0

    .line 98
    :goto_3
    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v3

    .line 102
    if-eqz v3, :cond_3

    .line 103
    .line 104
    const-string v4, "org/slf4j/impl/StaticLoggerBinder"

    .line 105
    .line 106
    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 107
    .line 108
    .line 109
    move-result v4

    .line 110
    if-eqz v4, :cond_2

    .line 111
    .line 112
    goto :goto_4

    .line 113
    :cond_2
    const-string v4, "org.slf4j.impl.StaticLoggerBinder"

    .line 114
    .line 115
    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 116
    .line 117
    .line 118
    move-result v3

    .line 119
    if-eqz v3, :cond_3

    .line 120
    .line 121
    :goto_4
    const/4 v0, 0x4

    .line 122
    sput v0, Lorg/slf4j/LoggerFactory;->a:I

    .line 123
    .line 124
    const-string v0, "Failed to load class \"org.slf4j.impl.StaticLoggerBinder\"."

    .line 125
    .line 126
    invoke-static {v0}, Lorg/slf4j/helpers/Util;->b(Ljava/lang/String;)V

    .line 127
    .line 128
    .line 129
    const-string v0, "Defaulting to no-operation (NOP) logger implementation"

    .line 130
    .line 131
    invoke-static {v0}, Lorg/slf4j/helpers/Util;->b(Ljava/lang/String;)V

    .line 132
    .line 133
    .line 134
    const-string v0, "See http://www.slf4j.org/codes.html#StaticLoggerBinder for further details."

    .line 135
    .line 136
    invoke-static {v0}, Lorg/slf4j/helpers/Util;->b(Ljava/lang/String;)V

    .line 137
    .line 138
    .line 139
    return-void

    .line 140
    :cond_3
    sput v1, Lorg/slf4j/LoggerFactory;->a:I

    .line 141
    .line 142
    invoke-static {v0, v2}, Lorg/slf4j/helpers/Util;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 143
    .line 144
    .line 145
    throw v2
.end method

.method public static b()Ljava/util/LinkedHashSet;
    .locals 3

    .line 1
    new-instance v0, Ljava/util/LinkedHashSet;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 4
    .line 5
    .line 6
    :try_start_0
    const-class v1, Lorg/slf4j/LoggerFactory;

    .line 7
    .line 8
    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 9
    .line 10
    .line 11
    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 12
    sget-object v2, Lorg/slf4j/LoggerFactory;->f:Ljava/lang/String;

    .line 13
    .line 14
    if-nez v1, :cond_0

    .line 15
    .line 16
    :try_start_1
    invoke-static {v2}, Ljava/lang/ClassLoader;->getSystemResources(Ljava/lang/String;)Ljava/util/Enumeration;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    goto :goto_0

    .line 21
    :catch_0
    move-exception v1

    .line 22
    goto :goto_1

    .line 23
    :cond_0
    invoke-virtual {v1, v2}, Ljava/lang/ClassLoader;->getResources(Ljava/lang/String;)Ljava/util/Enumeration;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    if-eqz v2, :cond_1

    .line 32
    .line 33
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    check-cast v2, Ljava/net/URL;

    .line 38
    .line 39
    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_1
    return-object v0

    .line 44
    :goto_1
    const-string v2, "Error getting resources from path"

    .line 45
    .line 46
    invoke-static {v2, v1}, Lorg/slf4j/helpers/Util;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 47
    .line 48
    .line 49
    return-object v0
.end method

.method public static c()V
    .locals 7

    .line 1
    sget-object v0, Lorg/slf4j/LoggerFactory;->b:Lorg/slf4j/helpers/SubstituteLoggerFactory;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    const/4 v1, 0x1

    .line 5
    :try_start_0
    iput-boolean v1, v0, Lorg/slf4j/helpers/SubstituteLoggerFactory;->a:Z

    .line 6
    .line 7
    new-instance v1, Ljava/util/ArrayList;

    .line 8
    .line 9
    iget-object v2, v0, Lorg/slf4j/helpers/SubstituteLoggerFactory;->b:Ljava/util/HashMap;

    .line 10
    .line 11
    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    const/4 v3, 0x0

    .line 23
    :goto_0
    if-ge v3, v2, :cond_0

    .line 24
    .line 25
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v4

    .line 29
    add-int/lit8 v3, v3, 0x1

    .line 30
    .line 31
    check-cast v4, Lorg/slf4j/helpers/SubstituteLogger;

    .line 32
    .line 33
    iget-object v5, v4, Lorg/slf4j/helpers/SubstituteLogger;->c:Ljava/lang/String;

    .line 34
    .line 35
    invoke-static {}, Lorg/slf4j/LoggerFactory;->d()Lorg/slf4j/ILoggerFactory;

    .line 36
    .line 37
    .line 38
    move-result-object v6

    .line 39
    invoke-interface {v6, v5}, Lorg/slf4j/ILoggerFactory;->a(Ljava/lang/String;)Lorg/slf4j/Logger;

    .line 40
    .line 41
    .line 42
    move-result-object v5

    .line 43
    iput-object v5, v4, Lorg/slf4j/helpers/SubstituteLogger;->f:Lorg/slf4j/Logger;

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :catchall_0
    move-exception v1

    .line 47
    goto :goto_1

    .line 48
    :cond_0
    monitor-exit v0

    .line 49
    return-void

    .line 50
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    throw v1
.end method

.method public static d()Lorg/slf4j/ILoggerFactory;
    .locals 4

    .line 1
    sget v0, Lorg/slf4j/LoggerFactory;->a:I

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    const/4 v2, 0x1

    .line 5
    if-nez v0, :cond_1

    .line 6
    .line 7
    const-class v0, Lorg/slf4j/LoggerFactory;

    .line 8
    .line 9
    monitor-enter v0

    .line 10
    :try_start_0
    sget v3, Lorg/slf4j/LoggerFactory;->a:I

    .line 11
    .line 12
    if-nez v3, :cond_0

    .line 13
    .line 14
    sput v2, Lorg/slf4j/LoggerFactory;->a:I

    .line 15
    .line 16
    invoke-static {}, Lorg/slf4j/LoggerFactory;->a()V

    .line 17
    .line 18
    .line 19
    sget v3, Lorg/slf4j/LoggerFactory;->a:I

    .line 20
    .line 21
    if-ne v3, v1, :cond_0

    .line 22
    .line 23
    invoke-static {}, Lorg/slf4j/LoggerFactory;->j()V

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :catchall_0
    move-exception v1

    .line 28
    goto :goto_1

    .line 29
    :cond_0
    :goto_0
    monitor-exit v0

    .line 30
    goto :goto_2

    .line 31
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    throw v1

    .line 33
    :cond_1
    :goto_2
    sget v0, Lorg/slf4j/LoggerFactory;->a:I

    .line 34
    .line 35
    if-eq v0, v2, :cond_5

    .line 36
    .line 37
    const/4 v2, 0x2

    .line 38
    if-eq v0, v2, :cond_4

    .line 39
    .line 40
    if-eq v0, v1, :cond_3

    .line 41
    .line 42
    const/4 v1, 0x4

    .line 43
    if-ne v0, v1, :cond_2

    .line 44
    .line 45
    sget-object v0, Lorg/slf4j/LoggerFactory;->c:Lorg/slf4j/helpers/NOPLoggerFactory;

    .line 46
    .line 47
    return-object v0

    .line 48
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 49
    .line 50
    const-string v1, "Unreachable code"

    .line 51
    .line 52
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    throw v0

    .line 56
    :cond_3
    invoke-static {}, Lorg/slf4j/impl/StaticLoggerBinder;->getSingleton()Lorg/slf4j/impl/StaticLoggerBinder;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    invoke-virtual {v0}, Lorg/slf4j/impl/StaticLoggerBinder;->getLoggerFactory()Lorg/slf4j/ILoggerFactory;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    return-object v0

    .line 65
    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 66
    .line 67
    const-string v1, "org.slf4j.LoggerFactory in failed state. Original exception was thrown EARLIER. See also http://www.slf4j.org/codes.html#unsuccessfulInit"

    .line 68
    .line 69
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    throw v0

    .line 73
    :cond_5
    sget-object v0, Lorg/slf4j/LoggerFactory;->b:Lorg/slf4j/helpers/SubstituteLoggerFactory;

    .line 74
    .line 75
    return-object v0
.end method

.method public static e(Ljava/lang/Class;)Lorg/slf4j/Logger;
    .locals 4

    .line 1
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {}, Lorg/slf4j/LoggerFactory;->d()Lorg/slf4j/ILoggerFactory;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-interface {v1, v0}, Lorg/slf4j/ILoggerFactory;->a(Ljava/lang/String;)Lorg/slf4j/Logger;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    sget-boolean v1, Lorg/slf4j/LoggerFactory;->d:Z

    .line 14
    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    invoke-static {}, Lorg/slf4j/helpers/Util;->a()Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    if-eqz v1, :cond_0

    .line 22
    .line 23
    invoke-virtual {v1, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 24
    .line 25
    .line 26
    move-result p0

    .line 27
    if-nez p0, :cond_0

    .line 28
    .line 29
    invoke-interface {v0}, Lorg/slf4j/Logger;->getName()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    new-instance v2, Ljava/lang/StringBuilder;

    .line 38
    .line 39
    const-string v3, "Detected logger name mismatch. Given name: \""

    .line 40
    .line 41
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    const-string p0, "\"; computed name: \""

    .line 48
    .line 49
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    const-string p0, "\"."

    .line 56
    .line 57
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object p0

    .line 64
    invoke-static {p0}, Lorg/slf4j/helpers/Util;->b(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    const-string p0, "See http://www.slf4j.org/codes.html#loggerNameMismatch for an explanation"

    .line 68
    .line 69
    invoke-static {p0}, Lorg/slf4j/helpers/Util;->b(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    :cond_0
    return-object v0
.end method

.method public static f()Z
    .locals 2

    .line 1
    const-string v0, "java.vendor.url"

    .line 2
    .line 3
    :try_start_0
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    goto :goto_0

    .line 8
    :catch_0
    const/4 v0, 0x0

    .line 9
    :goto_0
    if-nez v0, :cond_0

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    return v0

    .line 13
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    const-string v1, "android"

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    return v0
.end method

.method public static g()V
    .locals 12

    .line 1
    sget-object v0, Lorg/slf4j/LoggerFactory;->b:Lorg/slf4j/helpers/SubstituteLoggerFactory;

    .line 2
    .line 3
    iget-object v0, v0, Lorg/slf4j/helpers/SubstituteLoggerFactory;->c:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->size()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    new-instance v2, Ljava/util/ArrayList;

    .line 10
    .line 11
    const/16 v3, 0x80

    .line 12
    .line 13
    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 14
    .line 15
    .line 16
    const/4 v4, 0x0

    .line 17
    move v5, v4

    .line 18
    :goto_0
    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/LinkedBlockingQueue;->drainTo(Ljava/util/Collection;I)I

    .line 19
    .line 20
    .line 21
    move-result v6

    .line 22
    if-nez v6, :cond_0

    .line 23
    .line 24
    return-void

    .line 25
    :cond_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 26
    .line 27
    .line 28
    move-result v6

    .line 29
    move v7, v4

    .line 30
    :goto_1
    if-ge v7, v6, :cond_9

    .line 31
    .line 32
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v8

    .line 36
    add-int/lit8 v7, v7, 0x1

    .line 37
    .line 38
    check-cast v8, Lorg/slf4j/event/SubstituteLoggingEvent;

    .line 39
    .line 40
    if-nez v8, :cond_1

    .line 41
    .line 42
    goto :goto_2

    .line 43
    :cond_1
    iget-object v9, v8, Lorg/slf4j/event/SubstituteLoggingEvent;->a:Lorg/slf4j/helpers/SubstituteLogger;

    .line 44
    .line 45
    iget-object v10, v9, Lorg/slf4j/helpers/SubstituteLogger;->c:Ljava/lang/String;

    .line 46
    .line 47
    iget-object v11, v9, Lorg/slf4j/helpers/SubstituteLogger;->f:Lorg/slf4j/Logger;

    .line 48
    .line 49
    if-eqz v11, :cond_8

    .line 50
    .line 51
    iget-object v11, v9, Lorg/slf4j/helpers/SubstituteLogger;->f:Lorg/slf4j/Logger;

    .line 52
    .line 53
    instance-of v11, v11, Lorg/slf4j/helpers/NOPLogger;

    .line 54
    .line 55
    if-eqz v11, :cond_2

    .line 56
    .line 57
    goto :goto_2

    .line 58
    :cond_2
    invoke-virtual {v9}, Lorg/slf4j/helpers/SubstituteLogger;->l()Z

    .line 59
    .line 60
    .line 61
    move-result v11

    .line 62
    if-eqz v11, :cond_3

    .line 63
    .line 64
    invoke-virtual {v9}, Lorg/slf4j/helpers/SubstituteLogger;->l()Z

    .line 65
    .line 66
    .line 67
    move-result v10

    .line 68
    if-eqz v10, :cond_4

    .line 69
    .line 70
    :try_start_0
    iget-object v10, v9, Lorg/slf4j/helpers/SubstituteLogger;->h:Ljava/lang/reflect/Method;

    .line 71
    .line 72
    iget-object v9, v9, Lorg/slf4j/helpers/SubstituteLogger;->f:Lorg/slf4j/Logger;

    .line 73
    .line 74
    const/4 v11, 0x1

    .line 75
    new-array v11, v11, [Ljava/lang/Object;

    .line 76
    .line 77
    aput-object v8, v11, v4

    .line 78
    .line 79
    invoke-virtual {v10, v9, v11}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    .line 80
    .line 81
    .line 82
    goto :goto_2

    .line 83
    :cond_3
    invoke-static {v10}, Lorg/slf4j/helpers/Util;->b(Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    :catch_0
    :cond_4
    :goto_2
    add-int/lit8 v9, v5, 0x1

    .line 87
    .line 88
    if-nez v5, :cond_7

    .line 89
    .line 90
    iget-object v5, v8, Lorg/slf4j/event/SubstituteLoggingEvent;->a:Lorg/slf4j/helpers/SubstituteLogger;

    .line 91
    .line 92
    invoke-virtual {v5}, Lorg/slf4j/helpers/SubstituteLogger;->l()Z

    .line 93
    .line 94
    .line 95
    move-result v5

    .line 96
    if-eqz v5, :cond_5

    .line 97
    .line 98
    new-instance v5, Ljava/lang/StringBuilder;

    .line 99
    .line 100
    const-string v8, "A number ("

    .line 101
    .line 102
    invoke-direct {v5, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    const-string v8, ") of logging calls during the initialization phase have been intercepted and are"

    .line 109
    .line 110
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v5

    .line 117
    invoke-static {v5}, Lorg/slf4j/helpers/Util;->b(Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    const-string v5, "now being replayed. These are subject to the filtering rules of the underlying logging system."

    .line 121
    .line 122
    invoke-static {v5}, Lorg/slf4j/helpers/Util;->b(Ljava/lang/String;)V

    .line 123
    .line 124
    .line 125
    const-string v5, "See also http://www.slf4j.org/codes.html#replay"

    .line 126
    .line 127
    invoke-static {v5}, Lorg/slf4j/helpers/Util;->b(Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    goto :goto_3

    .line 131
    :cond_5
    iget-object v5, v8, Lorg/slf4j/event/SubstituteLoggingEvent;->a:Lorg/slf4j/helpers/SubstituteLogger;

    .line 132
    .line 133
    iget-object v5, v5, Lorg/slf4j/helpers/SubstituteLogger;->f:Lorg/slf4j/Logger;

    .line 134
    .line 135
    instance-of v5, v5, Lorg/slf4j/helpers/NOPLogger;

    .line 136
    .line 137
    if-eqz v5, :cond_6

    .line 138
    .line 139
    goto :goto_3

    .line 140
    :cond_6
    const-string v5, "The following set of substitute loggers may have been accessed"

    .line 141
    .line 142
    invoke-static {v5}, Lorg/slf4j/helpers/Util;->b(Ljava/lang/String;)V

    .line 143
    .line 144
    .line 145
    const-string v5, "during the initialization phase. Logging calls during this"

    .line 146
    .line 147
    invoke-static {v5}, Lorg/slf4j/helpers/Util;->b(Ljava/lang/String;)V

    .line 148
    .line 149
    .line 150
    const-string v5, "phase were not honored. However, subsequent logging calls to these"

    .line 151
    .line 152
    invoke-static {v5}, Lorg/slf4j/helpers/Util;->b(Ljava/lang/String;)V

    .line 153
    .line 154
    .line 155
    const-string v5, "loggers will work as normally expected."

    .line 156
    .line 157
    invoke-static {v5}, Lorg/slf4j/helpers/Util;->b(Ljava/lang/String;)V

    .line 158
    .line 159
    .line 160
    const-string v5, "See also http://www.slf4j.org/codes.html#substituteLogger"

    .line 161
    .line 162
    invoke-static {v5}, Lorg/slf4j/helpers/Util;->b(Ljava/lang/String;)V

    .line 163
    .line 164
    .line 165
    :cond_7
    :goto_3
    move v5, v9

    .line 166
    goto/16 :goto_1

    .line 167
    .line 168
    :cond_8
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 169
    .line 170
    const-string v1, "Delegate logger cannot be null at this state."

    .line 171
    .line 172
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 173
    .line 174
    .line 175
    throw v0

    .line 176
    :cond_9
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 177
    .line 178
    .line 179
    goto/16 :goto_0
.end method

.method public static h(Ljava/util/LinkedHashSet;)V
    .locals 1

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    invoke-interface {p0}, Ljava/util/Set;->size()I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    const/4 v0, 0x1

    .line 8
    if-le p0, v0, :cond_0

    .line 9
    .line 10
    new-instance p0, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    const-string v0, "Actual binding is of type ["

    .line 13
    .line 14
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-static {}, Lorg/slf4j/impl/StaticLoggerBinder;->getSingleton()Lorg/slf4j/impl/StaticLoggerBinder;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-virtual {v0}, Lorg/slf4j/impl/StaticLoggerBinder;->getLoggerFactoryClassStr()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    const-string v0, "]"

    .line 29
    .line 30
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    invoke-static {p0}, Lorg/slf4j/helpers/Util;->b(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    :cond_0
    return-void
.end method

.method public static i(Ljava/util/LinkedHashSet;)V
    .locals 3

    .line 1
    invoke-interface {p0}, Ljava/util/Set;->size()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-le v0, v1, :cond_1

    .line 7
    .line 8
    const-string v0, "Class path contains multiple SLF4J bindings."

    .line 9
    .line 10
    invoke-static {v0}, Lorg/slf4j/helpers/Util;->b(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    check-cast v0, Ljava/net/URL;

    .line 28
    .line 29
    new-instance v1, Ljava/lang/StringBuilder;

    .line 30
    .line 31
    const-string v2, "Found binding in ["

    .line 32
    .line 33
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    const-string v0, "]"

    .line 40
    .line 41
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    invoke-static {v0}, Lorg/slf4j/helpers/Util;->b(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_0
    const-string p0, "See http://www.slf4j.org/codes.html#multiple_bindings for an explanation."

    .line 53
    .line 54
    invoke-static {p0}, Lorg/slf4j/helpers/Util;->b(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    :cond_1
    return-void
.end method

.method public static final j()V
    .locals 6

    .line 1
    :try_start_0
    sget-object v0, Lorg/slf4j/impl/StaticLoggerBinder;->REQUESTED_API_VERSION:Ljava/lang/String;

    .line 2
    .line 3
    sget-object v1, Lorg/slf4j/LoggerFactory;->e:[Ljava/lang/String;

    .line 4
    .line 5
    array-length v2, v1

    .line 6
    const/4 v3, 0x0

    .line 7
    move v4, v3

    .line 8
    :goto_0
    if-ge v3, v2, :cond_1

    .line 9
    .line 10
    aget-object v5, v1, v3

    .line 11
    .line 12
    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 13
    .line 14
    .line 15
    move-result v5

    .line 16
    if-eqz v5, :cond_0

    .line 17
    .line 18
    const/4 v4, 0x1

    .line 19
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_1
    if-nez v4, :cond_2

    .line 23
    .line 24
    new-instance v1, Ljava/lang/StringBuilder;

    .line 25
    .line 26
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 27
    .line 28
    .line 29
    const-string v2, "The requested version "

    .line 30
    .line 31
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    const-string v0, " by your slf4j binding is not compatible with "

    .line 38
    .line 39
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    sget-object v0, Lorg/slf4j/LoggerFactory;->e:[Ljava/lang/String;

    .line 43
    .line 44
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    invoke-static {v0}, Lorg/slf4j/helpers/Util;->b(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    const-string v0, "See http://www.slf4j.org/codes.html#version_mismatch for further details."

    .line 63
    .line 64
    invoke-static {v0}, Lorg/slf4j/helpers/Util;->b(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 65
    .line 66
    .line 67
    return-void

    .line 68
    :catchall_0
    move-exception v0

    .line 69
    const-string v1, "Unexpected problem occured during version sanity check"

    .line 70
    .line 71
    invoke-static {v1, v0}, Lorg/slf4j/helpers/Util;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 72
    .line 73
    .line 74
    :catch_0
    :cond_2
    return-void
.end method
