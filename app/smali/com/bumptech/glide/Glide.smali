.class public Lcom/bumptech/glide/Glide;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ComponentCallbacks2;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/Glide$RequestOptionsFactory;
    }
.end annotation


# static fields
.field public static volatile n:Lcom/bumptech/glide/Glide;

.field public static volatile o:Z


# instance fields
.field public final c:Lcom/bumptech/glide/load/engine/Engine;

.field public final f:Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

.field public final g:Lcom/bumptech/glide/load/engine/cache/MemoryCache;

.field public final h:Lcom/bumptech/glide/GlideContext;

.field public final i:Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;

.field public final j:Lcom/bumptech/glide/manager/RequestManagerRetriever;

.field public final k:Lcom/bumptech/glide/manager/ConnectivityMonitorFactory;

.field public final l:Ljava/util/ArrayList;

.field public final m:Lcom/bumptech/glide/Glide$RequestOptionsFactory;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/bumptech/glide/load/engine/Engine;Lcom/bumptech/glide/load/engine/cache/MemoryCache;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;Lcom/bumptech/glide/manager/RequestManagerRetriever;Lcom/bumptech/glide/manager/ConnectivityMonitorFactory;ILcom/bumptech/glide/Glide$RequestOptionsFactory;Landroidx/collection/ArrayMap;Ljava/util/List;Ljava/util/List;Lcom/bumptech/glide/module/AppGlideModule;Lcom/bumptech/glide/GlideExperiments;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/bumptech/glide/Glide;->l:Ljava/util/ArrayList;

    .line 10
    .line 11
    iput-object p2, p0, Lcom/bumptech/glide/Glide;->c:Lcom/bumptech/glide/load/engine/Engine;

    .line 12
    .line 13
    iput-object p4, p0, Lcom/bumptech/glide/Glide;->f:Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    .line 14
    .line 15
    iput-object p5, p0, Lcom/bumptech/glide/Glide;->i:Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;

    .line 16
    .line 17
    iput-object p3, p0, Lcom/bumptech/glide/Glide;->g:Lcom/bumptech/glide/load/engine/cache/MemoryCache;

    .line 18
    .line 19
    iput-object p6, p0, Lcom/bumptech/glide/Glide;->j:Lcom/bumptech/glide/manager/RequestManagerRetriever;

    .line 20
    .line 21
    iput-object p7, p0, Lcom/bumptech/glide/Glide;->k:Lcom/bumptech/glide/manager/ConnectivityMonitorFactory;

    .line 22
    .line 23
    iput-object p9, p0, Lcom/bumptech/glide/Glide;->m:Lcom/bumptech/glide/Glide$RequestOptionsFactory;

    .line 24
    .line 25
    new-instance p4, Lcom/bumptech/glide/RegistryFactory$1;

    .line 26
    .line 27
    invoke-direct {p4, p0, p12, p13}, Lcom/bumptech/glide/RegistryFactory$1;-><init>(Lcom/bumptech/glide/Glide;Ljava/util/List;Lcom/bumptech/glide/module/AppGlideModule;)V

    .line 28
    .line 29
    .line 30
    move-object p3, p5

    .line 31
    new-instance p5, Lcom/bumptech/glide/request/target/ImageViewTargetFactory;

    .line 32
    .line 33
    invoke-direct {p5}, Ljava/lang/Object;-><init>()V

    .line 34
    .line 35
    .line 36
    move-object p6, p9

    .line 37
    move-object p9, p2

    .line 38
    move-object p2, p1

    .line 39
    new-instance p1, Lcom/bumptech/glide/GlideContext;

    .line 40
    .line 41
    move-object p7, p11

    .line 42
    move p11, p8

    .line 43
    move-object p8, p7

    .line 44
    move-object p7, p10

    .line 45
    move-object p10, p14

    .line 46
    invoke-direct/range {p1 .. p11}, Lcom/bumptech/glide/GlideContext;-><init>(Landroid/content/Context;Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;Lcom/bumptech/glide/util/GlideSuppliers$GlideSupplier;Lcom/bumptech/glide/request/target/ImageViewTargetFactory;Lcom/bumptech/glide/Glide$RequestOptionsFactory;Landroidx/collection/ArrayMap;Ljava/util/List;Lcom/bumptech/glide/load/engine/Engine;Lcom/bumptech/glide/GlideExperiments;I)V

    .line 47
    .line 48
    .line 49
    iput-object p1, p0, Lcom/bumptech/glide/Glide;->h:Lcom/bumptech/glide/GlideContext;

    .line 50
    .line 51
    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/bumptech/glide/Glide;
    .locals 7

    .line 1
    sget-object v0, Lcom/bumptech/glide/Glide;->n:Lcom/bumptech/glide/Glide;

    .line 2
    .line 3
    if-nez v0, :cond_3

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const-string v1, "Glide"

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    const/4 v3, 0x1

    .line 13
    :try_start_0
    const-class v4, Lcom/bumptech/glide/GeneratedAppGlideModuleImpl;

    .line 14
    .line 15
    new-array v5, v3, [Ljava/lang/Class;

    .line 16
    .line 17
    const-class v6, Landroid/content/Context;

    .line 18
    .line 19
    aput-object v6, v5, v2

    .line 20
    .line 21
    invoke-virtual {v4, v5}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 22
    .line 23
    .line 24
    move-result-object v4

    .line 25
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    new-array v5, v3, [Ljava/lang/Object;

    .line 30
    .line 31
    aput-object v0, v5, v2

    .line 32
    .line 33
    invoke-virtual {v4, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    check-cast v0, Lcom/bumptech/glide/GeneratedAppGlideModule;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :catch_0
    move-exception p0

    .line 41
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 42
    .line 43
    const-string v1, "GeneratedAppGlideModuleImpl is implemented incorrectly. If you\'ve manually implemented this class, remove your implementation. The Annotation processor will generate a correct implementation."

    .line 44
    .line 45
    invoke-direct {v0, v1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 46
    .line 47
    .line 48
    throw v0

    .line 49
    :catch_1
    move-exception p0

    .line 50
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 51
    .line 52
    const-string v1, "GeneratedAppGlideModuleImpl is implemented incorrectly. If you\'ve manually implemented this class, remove your implementation. The Annotation processor will generate a correct implementation."

    .line 53
    .line 54
    invoke-direct {v0, v1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 55
    .line 56
    .line 57
    throw v0

    .line 58
    :catch_2
    move-exception p0

    .line 59
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 60
    .line 61
    const-string v1, "GeneratedAppGlideModuleImpl is implemented incorrectly. If you\'ve manually implemented this class, remove your implementation. The Annotation processor will generate a correct implementation."

    .line 62
    .line 63
    invoke-direct {v0, v1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 64
    .line 65
    .line 66
    throw v0

    .line 67
    :catch_3
    move-exception p0

    .line 68
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 69
    .line 70
    const-string v1, "GeneratedAppGlideModuleImpl is implemented incorrectly. If you\'ve manually implemented this class, remove your implementation. The Annotation processor will generate a correct implementation."

    .line 71
    .line 72
    invoke-direct {v0, v1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 73
    .line 74
    .line 75
    throw v0

    .line 76
    :catch_4
    const/4 v0, 0x5

    .line 77
    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 78
    .line 79
    .line 80
    move-result v0

    .line 81
    if-eqz v0, :cond_0

    .line 82
    .line 83
    const-string v0, "Failed to find GeneratedAppGlideModule. You should include an annotationProcessor compile dependency on com.github.bumptech.glide:compiler in your application and a @GlideModule annotated AppGlideModule implementation or LibraryGlideModules will be silently ignored"

    .line 84
    .line 85
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    .line 87
    .line 88
    :cond_0
    const/4 v0, 0x0

    .line 89
    :goto_0
    const-class v1, Lcom/bumptech/glide/Glide;

    .line 90
    .line 91
    monitor-enter v1

    .line 92
    :try_start_1
    sget-object v4, Lcom/bumptech/glide/Glide;->n:Lcom/bumptech/glide/Glide;

    .line 93
    .line 94
    if-nez v4, :cond_2

    .line 95
    .line 96
    sget-boolean v4, Lcom/bumptech/glide/Glide;->o:Z

    .line 97
    .line 98
    if-nez v4, :cond_1

    .line 99
    .line 100
    sput-boolean v3, Lcom/bumptech/glide/Glide;->o:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 101
    .line 102
    :try_start_2
    invoke-static {p0, v0}, Lcom/bumptech/glide/Glide;->b(Landroid/content/Context;Lcom/bumptech/glide/GeneratedAppGlideModule;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 103
    .line 104
    .line 105
    :try_start_3
    sput-boolean v2, Lcom/bumptech/glide/Glide;->o:Z

    .line 106
    .line 107
    goto :goto_1

    .line 108
    :catchall_0
    move-exception p0

    .line 109
    sput-boolean v2, Lcom/bumptech/glide/Glide;->o:Z

    .line 110
    .line 111
    throw p0

    .line 112
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 113
    .line 114
    const-string v0, "Glide has been called recursively, this is probably an internal library error!"

    .line 115
    .line 116
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    throw p0

    .line 120
    :cond_2
    :goto_1
    monitor-exit v1

    .line 121
    goto :goto_2

    .line 122
    :catchall_1
    move-exception p0

    .line 123
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 124
    throw p0

    .line 125
    :cond_3
    :goto_2
    sget-object p0, Lcom/bumptech/glide/Glide;->n:Lcom/bumptech/glide/Glide;

    .line 126
    .line 127
    return-object p0
.end method

.method public static b(Landroid/content/Context;Lcom/bumptech/glide/GeneratedAppGlideModule;)V
    .locals 17

    .line 1
    new-instance v1, Lcom/bumptech/glide/GlideBuilder;

    .line 2
    .line 3
    invoke-direct {v1}, Lcom/bumptech/glide/GlideBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 7
    .line 8
    .line 9
    move-result-object v3

    .line 10
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 11
    .line 12
    const/4 v2, 0x2

    .line 13
    const/4 v4, 0x3

    .line 14
    if-eqz p1, :cond_1

    .line 15
    .line 16
    invoke-virtual/range {p1 .. p1}, Lcom/bumptech/glide/module/AppGlideModule;->c()Z

    .line 17
    .line 18
    .line 19
    move-result v5

    .line 20
    if-eqz v5, :cond_0

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    move-object v14, v0

    .line 24
    goto/16 :goto_6

    .line 25
    .line 26
    :cond_1
    :goto_0
    const-string v0, "Got app info metadata: "

    .line 27
    .line 28
    const-string v5, "ManifestParser"

    .line 29
    .line 30
    invoke-static {v5, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 31
    .line 32
    .line 33
    move-result v6

    .line 34
    if-eqz v6, :cond_2

    .line 35
    .line 36
    const-string v6, "Loading Glide modules"

    .line 37
    .line 38
    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    .line 40
    .line 41
    :cond_2
    new-instance v6, Ljava/util/ArrayList;

    .line 42
    .line 43
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 44
    .line 45
    .line 46
    :try_start_0
    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 47
    .line 48
    .line 49
    move-result-object v7

    .line 50
    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v8

    .line 54
    const/16 v9, 0x80

    .line 55
    .line 56
    invoke-virtual {v7, v8, v9}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    .line 57
    .line 58
    .line 59
    move-result-object v7

    .line 60
    if-eqz v7, :cond_7

    .line 61
    .line 62
    iget-object v8, v7, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 63
    .line 64
    if-nez v8, :cond_3

    .line 65
    .line 66
    goto :goto_3

    .line 67
    :cond_3
    invoke-static {v5, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 68
    .line 69
    .line 70
    move-result v8

    .line 71
    if-eqz v8, :cond_4

    .line 72
    .line 73
    new-instance v8, Ljava/lang/StringBuilder;

    .line 74
    .line 75
    invoke-direct {v8, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    iget-object v0, v7, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 79
    .line 80
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    invoke-static {v5, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    .line 89
    .line 90
    goto :goto_1

    .line 91
    :catch_0
    move-exception v0

    .line 92
    goto :goto_4

    .line 93
    :cond_4
    :goto_1
    iget-object v0, v7, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 94
    .line 95
    invoke-virtual {v0}, Landroid/os/BaseBundle;->keySet()Ljava/util/Set;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    :cond_5
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 104
    .line 105
    .line 106
    move-result v8

    .line 107
    if-eqz v8, :cond_6

    .line 108
    .line 109
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 110
    .line 111
    .line 112
    move-result-object v8

    .line 113
    check-cast v8, Ljava/lang/String;

    .line 114
    .line 115
    const-string v9, "GlideModule"

    .line 116
    .line 117
    iget-object v10, v7, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 118
    .line 119
    invoke-virtual {v10, v8}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 120
    .line 121
    .line 122
    move-result-object v10

    .line 123
    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 124
    .line 125
    .line 126
    move-result v9

    .line 127
    if-eqz v9, :cond_5

    .line 128
    .line 129
    invoke-static {v8}, Lcom/bumptech/glide/module/ManifestParser;->a(Ljava/lang/String;)Lcom/bumptech/glide/module/GlideModule;

    .line 130
    .line 131
    .line 132
    move-result-object v9

    .line 133
    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 134
    .line 135
    .line 136
    invoke-static {v5, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 137
    .line 138
    .line 139
    move-result v9

    .line 140
    if-eqz v9, :cond_5

    .line 141
    .line 142
    new-instance v9, Ljava/lang/StringBuilder;

    .line 143
    .line 144
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 145
    .line 146
    .line 147
    const-string v10, "Loaded Glide module: "

    .line 148
    .line 149
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    .line 151
    .line 152
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    .line 154
    .line 155
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object v8

    .line 159
    invoke-static {v5, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    .line 161
    .line 162
    goto :goto_2

    .line 163
    :cond_6
    invoke-static {v5, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 164
    .line 165
    .line 166
    move-result v0

    .line 167
    if-eqz v0, :cond_8

    .line 168
    .line 169
    const-string v0, "Finished loading Glide modules"

    .line 170
    .line 171
    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    .line 173
    .line 174
    goto :goto_5

    .line 175
    :cond_7
    :goto_3
    invoke-static {v5, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 176
    .line 177
    .line 178
    move-result v0

    .line 179
    if-eqz v0, :cond_8

    .line 180
    .line 181
    const-string v0, "Got null app info metadata"

    .line 182
    .line 183
    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 184
    .line 185
    .line 186
    goto :goto_5

    .line 187
    :goto_4
    const/4 v7, 0x6

    .line 188
    invoke-static {v5, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 189
    .line 190
    .line 191
    move-result v7

    .line 192
    if-eqz v7, :cond_8

    .line 193
    .line 194
    const-string v7, "Failed to parse glide modules"

    .line 195
    .line 196
    invoke-static {v5, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 197
    .line 198
    .line 199
    :cond_8
    :goto_5
    move-object v14, v6

    .line 200
    :goto_6
    const-string v0, "Glide"

    .line 201
    .line 202
    if-eqz p1, :cond_b

    .line 203
    .line 204
    invoke-virtual/range {p1 .. p1}, Lcom/bumptech/glide/GeneratedAppGlideModule;->d()Ljava/util/Set;

    .line 205
    .line 206
    .line 207
    move-result-object v5

    .line 208
    invoke-interface {v5}, Ljava/util/Set;->isEmpty()Z

    .line 209
    .line 210
    .line 211
    move-result v5

    .line 212
    if-nez v5, :cond_b

    .line 213
    .line 214
    invoke-virtual/range {p1 .. p1}, Lcom/bumptech/glide/GeneratedAppGlideModule;->d()Ljava/util/Set;

    .line 215
    .line 216
    .line 217
    move-result-object v5

    .line 218
    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 219
    .line 220
    .line 221
    move-result-object v6

    .line 222
    :goto_7
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 223
    .line 224
    .line 225
    move-result v7

    .line 226
    if-eqz v7, :cond_b

    .line 227
    .line 228
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 229
    .line 230
    .line 231
    move-result-object v7

    .line 232
    check-cast v7, Lcom/bumptech/glide/module/GlideModule;

    .line 233
    .line 234
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 235
    .line 236
    .line 237
    move-result-object v8

    .line 238
    invoke-interface {v5, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 239
    .line 240
    .line 241
    move-result v8

    .line 242
    if-nez v8, :cond_9

    .line 243
    .line 244
    goto :goto_7

    .line 245
    :cond_9
    invoke-static {v0, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 246
    .line 247
    .line 248
    move-result v8

    .line 249
    if-eqz v8, :cond_a

    .line 250
    .line 251
    new-instance v8, Ljava/lang/StringBuilder;

    .line 252
    .line 253
    const-string v9, "AppGlideModule excludes manifest GlideModule: "

    .line 254
    .line 255
    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 256
    .line 257
    .line 258
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 259
    .line 260
    .line 261
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 262
    .line 263
    .line 264
    move-result-object v7

    .line 265
    invoke-static {v0, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    .line 267
    .line 268
    :cond_a
    invoke-interface {v6}, Ljava/util/Iterator;->remove()V

    .line 269
    .line 270
    .line 271
    goto :goto_7

    .line 272
    :cond_b
    invoke-static {v0, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 273
    .line 274
    .line 275
    move-result v4

    .line 276
    if-eqz v4, :cond_c

    .line 277
    .line 278
    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 279
    .line 280
    .line 281
    move-result-object v4

    .line 282
    :goto_8
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 283
    .line 284
    .line 285
    move-result v5

    .line 286
    if-eqz v5, :cond_c

    .line 287
    .line 288
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 289
    .line 290
    .line 291
    move-result-object v5

    .line 292
    check-cast v5, Lcom/bumptech/glide/module/GlideModule;

    .line 293
    .line 294
    new-instance v6, Ljava/lang/StringBuilder;

    .line 295
    .line 296
    const-string v7, "Discovered GlideModule from manifest: "

    .line 297
    .line 298
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 299
    .line 300
    .line 301
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 302
    .line 303
    .line 304
    move-result-object v5

    .line 305
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 306
    .line 307
    .line 308
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 309
    .line 310
    .line 311
    move-result-object v5

    .line 312
    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    .line 314
    .line 315
    goto :goto_8

    .line 316
    :cond_c
    if-eqz p1, :cond_d

    .line 317
    .line 318
    invoke-virtual/range {p1 .. p1}, Lcom/bumptech/glide/GeneratedAppGlideModule;->e()Lcom/bumptech/glide/manager/RequestManagerRetriever$RequestManagerFactory;

    .line 319
    .line 320
    .line 321
    move-result-object v0

    .line 322
    goto :goto_9

    .line 323
    :cond_d
    const/4 v0, 0x0

    .line 324
    :goto_9
    iput-object v0, v1, Lcom/bumptech/glide/GlideBuilder;->n:Lcom/bumptech/glide/manager/RequestManagerRetriever$RequestManagerFactory;

    .line 325
    .line 326
    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 327
    .line 328
    .line 329
    move-result-object v0

    .line 330
    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 331
    .line 332
    .line 333
    move-result v4

    .line 334
    if-eqz v4, :cond_e

    .line 335
    .line 336
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 337
    .line 338
    .line 339
    move-result-object v4

    .line 340
    check-cast v4, Lcom/bumptech/glide/module/GlideModule;

    .line 341
    .line 342
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 343
    .line 344
    .line 345
    goto :goto_a

    .line 346
    :cond_e
    if-eqz p1, :cond_f

    .line 347
    .line 348
    invoke-virtual/range {p1 .. p1}, Lcom/bumptech/glide/module/AppGlideModule;->b()V

    .line 349
    .line 350
    .line 351
    :cond_f
    iget-object v0, v1, Lcom/bumptech/glide/GlideBuilder;->g:Lcom/bumptech/glide/load/engine/executor/GlideExecutor;

    .line 352
    .line 353
    const/4 v4, 0x4

    .line 354
    if-nez v0, :cond_11

    .line 355
    .line 356
    sget v0, Lcom/bumptech/glide/load/engine/executor/GlideExecutor;->g:I

    .line 357
    .line 358
    new-instance v0, Lcom/bumptech/glide/load/engine/executor/GlideExecutor$Builder;

    .line 359
    .line 360
    const/4 v5, 0x0

    .line 361
    invoke-direct {v0, v5}, Lcom/bumptech/glide/load/engine/executor/GlideExecutor$Builder;-><init>(Z)V

    .line 362
    .line 363
    .line 364
    sget v5, Lcom/bumptech/glide/load/engine/executor/GlideExecutor;->g:I

    .line 365
    .line 366
    if-nez v5, :cond_10

    .line 367
    .line 368
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    .line 369
    .line 370
    .line 371
    move-result-object v5

    .line 372
    invoke-virtual {v5}, Ljava/lang/Runtime;->availableProcessors()I

    .line 373
    .line 374
    .line 375
    move-result v5

    .line 376
    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    .line 377
    .line 378
    .line 379
    move-result v5

    .line 380
    sput v5, Lcom/bumptech/glide/load/engine/executor/GlideExecutor;->g:I

    .line 381
    .line 382
    :cond_10
    sget v5, Lcom/bumptech/glide/load/engine/executor/GlideExecutor;->g:I

    .line 383
    .line 384
    iput v5, v0, Lcom/bumptech/glide/load/engine/executor/GlideExecutor$Builder;->b:I

    .line 385
    .line 386
    iput v5, v0, Lcom/bumptech/glide/load/engine/executor/GlideExecutor$Builder;->c:I

    .line 387
    .line 388
    const-string v5, "source"

    .line 389
    .line 390
    iput-object v5, v0, Lcom/bumptech/glide/load/engine/executor/GlideExecutor$Builder;->f:Ljava/lang/String;

    .line 391
    .line 392
    invoke-virtual {v0}, Lcom/bumptech/glide/load/engine/executor/GlideExecutor$Builder;->a()Lcom/bumptech/glide/load/engine/executor/GlideExecutor;

    .line 393
    .line 394
    .line 395
    move-result-object v0

    .line 396
    iput-object v0, v1, Lcom/bumptech/glide/GlideBuilder;->g:Lcom/bumptech/glide/load/engine/executor/GlideExecutor;

    .line 397
    .line 398
    :cond_11
    iget-object v0, v1, Lcom/bumptech/glide/GlideBuilder;->h:Lcom/bumptech/glide/load/engine/executor/GlideExecutor;

    .line 399
    .line 400
    const/4 v5, 0x1

    .line 401
    if-nez v0, :cond_12

    .line 402
    .line 403
    sget v0, Lcom/bumptech/glide/load/engine/executor/GlideExecutor;->g:I

    .line 404
    .line 405
    new-instance v0, Lcom/bumptech/glide/load/engine/executor/GlideExecutor$Builder;

    .line 406
    .line 407
    invoke-direct {v0, v5}, Lcom/bumptech/glide/load/engine/executor/GlideExecutor$Builder;-><init>(Z)V

    .line 408
    .line 409
    .line 410
    iput v5, v0, Lcom/bumptech/glide/load/engine/executor/GlideExecutor$Builder;->b:I

    .line 411
    .line 412
    iput v5, v0, Lcom/bumptech/glide/load/engine/executor/GlideExecutor$Builder;->c:I

    .line 413
    .line 414
    const-string v6, "disk-cache"

    .line 415
    .line 416
    iput-object v6, v0, Lcom/bumptech/glide/load/engine/executor/GlideExecutor$Builder;->f:Ljava/lang/String;

    .line 417
    .line 418
    invoke-virtual {v0}, Lcom/bumptech/glide/load/engine/executor/GlideExecutor$Builder;->a()Lcom/bumptech/glide/load/engine/executor/GlideExecutor;

    .line 419
    .line 420
    .line 421
    move-result-object v0

    .line 422
    iput-object v0, v1, Lcom/bumptech/glide/GlideBuilder;->h:Lcom/bumptech/glide/load/engine/executor/GlideExecutor;

    .line 423
    .line 424
    :cond_12
    iget-object v0, v1, Lcom/bumptech/glide/GlideBuilder;->o:Lcom/bumptech/glide/load/engine/executor/GlideExecutor;

    .line 425
    .line 426
    if-nez v0, :cond_15

    .line 427
    .line 428
    sget v0, Lcom/bumptech/glide/load/engine/executor/GlideExecutor;->g:I

    .line 429
    .line 430
    if-nez v0, :cond_13

    .line 431
    .line 432
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    .line 433
    .line 434
    .line 435
    move-result-object v0

    .line 436
    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    .line 437
    .line 438
    .line 439
    move-result v0

    .line 440
    invoke-static {v4, v0}, Ljava/lang/Math;->min(II)I

    .line 441
    .line 442
    .line 443
    move-result v0

    .line 444
    sput v0, Lcom/bumptech/glide/load/engine/executor/GlideExecutor;->g:I

    .line 445
    .line 446
    :cond_13
    sget v0, Lcom/bumptech/glide/load/engine/executor/GlideExecutor;->g:I

    .line 447
    .line 448
    if-lt v0, v4, :cond_14

    .line 449
    .line 450
    goto :goto_b

    .line 451
    :cond_14
    move v2, v5

    .line 452
    :goto_b
    new-instance v0, Lcom/bumptech/glide/load/engine/executor/GlideExecutor$Builder;

    .line 453
    .line 454
    invoke-direct {v0, v5}, Lcom/bumptech/glide/load/engine/executor/GlideExecutor$Builder;-><init>(Z)V

    .line 455
    .line 456
    .line 457
    iput v2, v0, Lcom/bumptech/glide/load/engine/executor/GlideExecutor$Builder;->b:I

    .line 458
    .line 459
    iput v2, v0, Lcom/bumptech/glide/load/engine/executor/GlideExecutor$Builder;->c:I

    .line 460
    .line 461
    const-string v2, "animation"

    .line 462
    .line 463
    iput-object v2, v0, Lcom/bumptech/glide/load/engine/executor/GlideExecutor$Builder;->f:Ljava/lang/String;

    .line 464
    .line 465
    invoke-virtual {v0}, Lcom/bumptech/glide/load/engine/executor/GlideExecutor$Builder;->a()Lcom/bumptech/glide/load/engine/executor/GlideExecutor;

    .line 466
    .line 467
    .line 468
    move-result-object v0

    .line 469
    iput-object v0, v1, Lcom/bumptech/glide/GlideBuilder;->o:Lcom/bumptech/glide/load/engine/executor/GlideExecutor;

    .line 470
    .line 471
    :cond_15
    iget-object v0, v1, Lcom/bumptech/glide/GlideBuilder;->j:Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator;

    .line 472
    .line 473
    if-nez v0, :cond_16

    .line 474
    .line 475
    new-instance v0, Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator$Builder;

    .line 476
    .line 477
    invoke-direct {v0, v3}, Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator$Builder;-><init>(Landroid/content/Context;)V

    .line 478
    .line 479
    .line 480
    new-instance v2, Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator;

    .line 481
    .line 482
    invoke-direct {v2, v0}, Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator;-><init>(Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator$Builder;)V

    .line 483
    .line 484
    .line 485
    iput-object v2, v1, Lcom/bumptech/glide/GlideBuilder;->j:Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator;

    .line 486
    .line 487
    :cond_16
    iget-object v0, v1, Lcom/bumptech/glide/GlideBuilder;->k:Lcom/bumptech/glide/manager/DefaultConnectivityMonitorFactory;

    .line 488
    .line 489
    if-nez v0, :cond_17

    .line 490
    .line 491
    new-instance v0, Lcom/bumptech/glide/manager/DefaultConnectivityMonitorFactory;

    .line 492
    .line 493
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 494
    .line 495
    .line 496
    iput-object v0, v1, Lcom/bumptech/glide/GlideBuilder;->k:Lcom/bumptech/glide/manager/DefaultConnectivityMonitorFactory;

    .line 497
    .line 498
    :cond_17
    iget-object v0, v1, Lcom/bumptech/glide/GlideBuilder;->d:Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    .line 499
    .line 500
    if-nez v0, :cond_19

    .line 501
    .line 502
    iget-object v0, v1, Lcom/bumptech/glide/GlideBuilder;->j:Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator;

    .line 503
    .line 504
    iget v0, v0, Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator;->a:I

    .line 505
    .line 506
    if-lez v0, :cond_18

    .line 507
    .line 508
    new-instance v2, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool;

    .line 509
    .line 510
    int-to-long v4, v0

    .line 511
    invoke-direct {v2, v4, v5}, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool;-><init>(J)V

    .line 512
    .line 513
    .line 514
    iput-object v2, v1, Lcom/bumptech/glide/GlideBuilder;->d:Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    .line 515
    .line 516
    goto :goto_c

    .line 517
    :cond_18
    new-instance v0, Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPoolAdapter;

    .line 518
    .line 519
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 520
    .line 521
    .line 522
    iput-object v0, v1, Lcom/bumptech/glide/GlideBuilder;->d:Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    .line 523
    .line 524
    :cond_19
    :goto_c
    iget-object v0, v1, Lcom/bumptech/glide/GlideBuilder;->e:Lcom/bumptech/glide/load/engine/bitmap_recycle/LruArrayPool;

    .line 525
    .line 526
    if-nez v0, :cond_1a

    .line 527
    .line 528
    new-instance v0, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruArrayPool;

    .line 529
    .line 530
    iget-object v2, v1, Lcom/bumptech/glide/GlideBuilder;->j:Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator;

    .line 531
    .line 532
    iget v2, v2, Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator;->c:I

    .line 533
    .line 534
    invoke-direct {v0, v2}, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruArrayPool;-><init>(I)V

    .line 535
    .line 536
    .line 537
    iput-object v0, v1, Lcom/bumptech/glide/GlideBuilder;->e:Lcom/bumptech/glide/load/engine/bitmap_recycle/LruArrayPool;

    .line 538
    .line 539
    :cond_1a
    iget-object v0, v1, Lcom/bumptech/glide/GlideBuilder;->f:Lcom/bumptech/glide/load/engine/cache/LruResourceCache;

    .line 540
    .line 541
    if-nez v0, :cond_1b

    .line 542
    .line 543
    new-instance v0, Lcom/bumptech/glide/load/engine/cache/LruResourceCache;

    .line 544
    .line 545
    iget-object v2, v1, Lcom/bumptech/glide/GlideBuilder;->j:Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator;

    .line 546
    .line 547
    iget v2, v2, Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator;->b:I

    .line 548
    .line 549
    int-to-long v4, v2

    .line 550
    invoke-direct {v0, v4, v5}, Lcom/bumptech/glide/util/LruCache;-><init>(J)V

    .line 551
    .line 552
    .line 553
    iput-object v0, v1, Lcom/bumptech/glide/GlideBuilder;->f:Lcom/bumptech/glide/load/engine/cache/LruResourceCache;

    .line 554
    .line 555
    :cond_1b
    iget-object v0, v1, Lcom/bumptech/glide/GlideBuilder;->i:Lcom/bumptech/glide/load/engine/cache/InternalCacheDiskCacheFactory;

    .line 556
    .line 557
    if-nez v0, :cond_1c

    .line 558
    .line 559
    new-instance v0, Lcom/bumptech/glide/load/engine/cache/InternalCacheDiskCacheFactory;

    .line 560
    .line 561
    invoke-direct {v0, v3}, Lcom/bumptech/glide/load/engine/cache/InternalCacheDiskCacheFactory;-><init>(Landroid/content/Context;)V

    .line 562
    .line 563
    .line 564
    iput-object v0, v1, Lcom/bumptech/glide/GlideBuilder;->i:Lcom/bumptech/glide/load/engine/cache/InternalCacheDiskCacheFactory;

    .line 565
    .line 566
    :cond_1c
    iget-object v0, v1, Lcom/bumptech/glide/GlideBuilder;->c:Lcom/bumptech/glide/load/engine/Engine;

    .line 567
    .line 568
    if-nez v0, :cond_1d

    .line 569
    .line 570
    new-instance v4, Lcom/bumptech/glide/load/engine/Engine;

    .line 571
    .line 572
    iget-object v5, v1, Lcom/bumptech/glide/GlideBuilder;->f:Lcom/bumptech/glide/load/engine/cache/LruResourceCache;

    .line 573
    .line 574
    iget-object v6, v1, Lcom/bumptech/glide/GlideBuilder;->i:Lcom/bumptech/glide/load/engine/cache/InternalCacheDiskCacheFactory;

    .line 575
    .line 576
    iget-object v7, v1, Lcom/bumptech/glide/GlideBuilder;->h:Lcom/bumptech/glide/load/engine/executor/GlideExecutor;

    .line 577
    .line 578
    iget-object v8, v1, Lcom/bumptech/glide/GlideBuilder;->g:Lcom/bumptech/glide/load/engine/executor/GlideExecutor;

    .line 579
    .line 580
    invoke-static {}, Lcom/bumptech/glide/load/engine/executor/GlideExecutor;->a()Lcom/bumptech/glide/load/engine/executor/GlideExecutor;

    .line 581
    .line 582
    .line 583
    move-result-object v9

    .line 584
    iget-object v10, v1, Lcom/bumptech/glide/GlideBuilder;->o:Lcom/bumptech/glide/load/engine/executor/GlideExecutor;

    .line 585
    .line 586
    invoke-direct/range {v4 .. v10}, Lcom/bumptech/glide/load/engine/Engine;-><init>(Lcom/bumptech/glide/load/engine/cache/MemoryCache;Lcom/bumptech/glide/load/engine/cache/DiskCache$Factory;Lcom/bumptech/glide/load/engine/executor/GlideExecutor;Lcom/bumptech/glide/load/engine/executor/GlideExecutor;Lcom/bumptech/glide/load/engine/executor/GlideExecutor;Lcom/bumptech/glide/load/engine/executor/GlideExecutor;)V

    .line 587
    .line 588
    .line 589
    iput-object v4, v1, Lcom/bumptech/glide/GlideBuilder;->c:Lcom/bumptech/glide/load/engine/Engine;

    .line 590
    .line 591
    :cond_1d
    iget-object v0, v1, Lcom/bumptech/glide/GlideBuilder;->p:Ljava/util/List;

    .line 592
    .line 593
    if-nez v0, :cond_1e

    .line 594
    .line 595
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 596
    .line 597
    iput-object v0, v1, Lcom/bumptech/glide/GlideBuilder;->p:Ljava/util/List;

    .line 598
    .line 599
    goto :goto_d

    .line 600
    :cond_1e
    invoke-static {v0}, Lj$/util/DesugarCollections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 601
    .line 602
    .line 603
    move-result-object v0

    .line 604
    iput-object v0, v1, Lcom/bumptech/glide/GlideBuilder;->p:Ljava/util/List;

    .line 605
    .line 606
    :goto_d
    iget-object v0, v1, Lcom/bumptech/glide/GlideBuilder;->b:Lcom/bumptech/glide/GlideExperiments$Builder;

    .line 607
    .line 608
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 609
    .line 610
    .line 611
    new-instance v2, Lcom/bumptech/glide/GlideExperiments;

    .line 612
    .line 613
    invoke-direct {v2, v0}, Lcom/bumptech/glide/GlideExperiments;-><init>(Lcom/bumptech/glide/GlideExperiments$Builder;)V

    .line 614
    .line 615
    .line 616
    new-instance v8, Lcom/bumptech/glide/manager/RequestManagerRetriever;

    .line 617
    .line 618
    iget-object v0, v1, Lcom/bumptech/glide/GlideBuilder;->n:Lcom/bumptech/glide/manager/RequestManagerRetriever$RequestManagerFactory;

    .line 619
    .line 620
    invoke-direct {v8, v0}, Lcom/bumptech/glide/manager/RequestManagerRetriever;-><init>(Lcom/bumptech/glide/manager/RequestManagerRetriever$RequestManagerFactory;)V

    .line 621
    .line 622
    .line 623
    move-object/from16 v16, v2

    .line 624
    .line 625
    new-instance v2, Lcom/bumptech/glide/Glide;

    .line 626
    .line 627
    iget-object v4, v1, Lcom/bumptech/glide/GlideBuilder;->c:Lcom/bumptech/glide/load/engine/Engine;

    .line 628
    .line 629
    iget-object v5, v1, Lcom/bumptech/glide/GlideBuilder;->f:Lcom/bumptech/glide/load/engine/cache/LruResourceCache;

    .line 630
    .line 631
    iget-object v6, v1, Lcom/bumptech/glide/GlideBuilder;->d:Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    .line 632
    .line 633
    iget-object v7, v1, Lcom/bumptech/glide/GlideBuilder;->e:Lcom/bumptech/glide/load/engine/bitmap_recycle/LruArrayPool;

    .line 634
    .line 635
    iget-object v9, v1, Lcom/bumptech/glide/GlideBuilder;->k:Lcom/bumptech/glide/manager/DefaultConnectivityMonitorFactory;

    .line 636
    .line 637
    iget v10, v1, Lcom/bumptech/glide/GlideBuilder;->l:I

    .line 638
    .line 639
    iget-object v11, v1, Lcom/bumptech/glide/GlideBuilder;->m:Lcom/bumptech/glide/Glide$RequestOptionsFactory;

    .line 640
    .line 641
    iget-object v12, v1, Lcom/bumptech/glide/GlideBuilder;->a:Landroidx/collection/ArrayMap;

    .line 642
    .line 643
    iget-object v13, v1, Lcom/bumptech/glide/GlideBuilder;->p:Ljava/util/List;

    .line 644
    .line 645
    move-object/from16 v15, p1

    .line 646
    .line 647
    invoke-direct/range {v2 .. v16}, Lcom/bumptech/glide/Glide;-><init>(Landroid/content/Context;Lcom/bumptech/glide/load/engine/Engine;Lcom/bumptech/glide/load/engine/cache/MemoryCache;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;Lcom/bumptech/glide/manager/RequestManagerRetriever;Lcom/bumptech/glide/manager/ConnectivityMonitorFactory;ILcom/bumptech/glide/Glide$RequestOptionsFactory;Landroidx/collection/ArrayMap;Ljava/util/List;Ljava/util/List;Lcom/bumptech/glide/module/AppGlideModule;Lcom/bumptech/glide/GlideExperiments;)V

    .line 648
    .line 649
    .line 650
    invoke-virtual {v3, v2}, Landroid/content/Context;->registerComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    .line 651
    .line 652
    .line 653
    sput-object v2, Lcom/bumptech/glide/Glide;->n:Lcom/bumptech/glide/Glide;

    .line 654
    .line 655
    return-void
.end method


# virtual methods
.method public final c(Lcom/bumptech/glide/RequestManager;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/Glide;->l:Ljava/util/ArrayList;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/bumptech/glide/Glide;->l:Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    iget-object v1, p0, Lcom/bumptech/glide/Glide;->l:Ljava/util/ArrayList;

    .line 13
    .line 14
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    monitor-exit v0

    .line 18
    return-void

    .line 19
    :catchall_0
    move-exception p1

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 22
    .line 23
    const-string v1, "Cannot unregister not yet registered manager"

    .line 24
    .line 25
    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    throw p1

    .line 29
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    throw p1
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    return-void
.end method

.method public final onLowMemory()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/bumptech/glide/util/Util;->a()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/bumptech/glide/Glide;->g:Lcom/bumptech/glide/load/engine/cache/MemoryCache;

    .line 5
    .line 6
    invoke-interface {v0}, Lcom/bumptech/glide/load/engine/cache/MemoryCache;->b()V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lcom/bumptech/glide/Glide;->f:Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    .line 10
    .line 11
    invoke-interface {v0}, Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;->b()V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lcom/bumptech/glide/Glide;->i:Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;

    .line 15
    .line 16
    invoke-interface {v0}, Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;->b()V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public final onTrimMemory(I)V
    .locals 5

    .line 1
    invoke-static {}, Lcom/bumptech/glide/util/Util;->a()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/bumptech/glide/Glide;->l:Ljava/util/ArrayList;

    .line 5
    .line 6
    monitor-enter v0

    .line 7
    :try_start_0
    iget-object v1, p0, Lcom/bumptech/glide/Glide;->l:Ljava/util/ArrayList;

    .line 8
    .line 9
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    const/4 v3, 0x0

    .line 14
    :goto_0
    if-ge v3, v2, :cond_0

    .line 15
    .line 16
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v4

    .line 20
    add-int/lit8 v3, v3, 0x1

    .line 21
    .line 22
    check-cast v4, Lcom/bumptech/glide/RequestManager;

    .line 23
    .line 24
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :catchall_0
    move-exception p1

    .line 29
    goto :goto_1

    .line 30
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    iget-object v0, p0, Lcom/bumptech/glide/Glide;->g:Lcom/bumptech/glide/load/engine/cache/MemoryCache;

    .line 32
    .line 33
    invoke-interface {v0, p1}, Lcom/bumptech/glide/load/engine/cache/MemoryCache;->a(I)V

    .line 34
    .line 35
    .line 36
    iget-object v0, p0, Lcom/bumptech/glide/Glide;->f:Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    .line 37
    .line 38
    invoke-interface {v0, p1}, Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;->a(I)V

    .line 39
    .line 40
    .line 41
    iget-object v0, p0, Lcom/bumptech/glide/Glide;->i:Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;

    .line 42
    .line 43
    invoke-interface {v0, p1}, Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;->a(I)V

    .line 44
    .line 45
    .line 46
    return-void

    .line 47
    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 48
    throw p1
.end method
