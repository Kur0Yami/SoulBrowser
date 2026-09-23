.class public Lcom/bumptech/glide/RequestBuilder;
.super Lcom/bumptech/glide/request/BaseRequestOptions;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;
.implements Lcom/bumptech/glide/ModelTypes;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TranscodeType:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/bumptech/glide/request/BaseRequestOptions<",
        "Lcom/bumptech/glide/RequestBuilder<",
        "TTranscodeType;>;>;",
        "Ljava/lang/Cloneable;",
        "Lcom/bumptech/glide/ModelTypes<",
        "Lcom/bumptech/glide/RequestBuilder<",
        "TTranscodeType;>;>;"
    }
.end annotation


# instance fields
.field public A:Ljava/util/ArrayList;

.field public B:Lcom/bumptech/glide/RequestBuilder;

.field public C:Lcom/bumptech/glide/RequestBuilder;

.field public final D:Z

.field public E:Z

.field public F:Z

.field public final u:Landroid/content/Context;

.field public final v:Lcom/bumptech/glide/RequestManager;

.field public final w:Ljava/lang/Class;

.field public final x:Lcom/bumptech/glide/GlideContext;

.field public y:Lcom/bumptech/glide/TransitionOptions;

.field public z:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/bumptech/glide/request/RequestOptions;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/bumptech/glide/request/BaseRequestOptions;-><init>()V

    .line 4
    .line 5
    .line 6
    sget-object v1, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->b:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/request/BaseRequestOptions;->e(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/request/BaseRequestOptions;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Lcom/bumptech/glide/request/RequestOptions;

    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/bumptech/glide/request/BaseRequestOptions;->o()Lcom/bumptech/glide/request/BaseRequestOptions;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    check-cast v0, Lcom/bumptech/glide/request/RequestOptions;

    .line 19
    .line 20
    const/4 v1, 0x1

    .line 21
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/request/BaseRequestOptions;->t(Z)Lcom/bumptech/glide/request/BaseRequestOptions;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    check-cast v0, Lcom/bumptech/glide/request/RequestOptions;

    .line 26
    .line 27
    return-void
.end method

.method public constructor <init>(Lcom/bumptech/glide/Glide;Lcom/bumptech/glide/RequestManager;Ljava/lang/Class;Landroid/content/Context;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/bumptech/glide/request/BaseRequestOptions;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/bumptech/glide/RequestBuilder;->D:Z

    .line 6
    .line 7
    iput-object p2, p0, Lcom/bumptech/glide/RequestBuilder;->v:Lcom/bumptech/glide/RequestManager;

    .line 8
    .line 9
    iput-object p3, p0, Lcom/bumptech/glide/RequestBuilder;->w:Ljava/lang/Class;

    .line 10
    .line 11
    iput-object p4, p0, Lcom/bumptech/glide/RequestBuilder;->u:Landroid/content/Context;

    .line 12
    .line 13
    iget-object p4, p2, Lcom/bumptech/glide/RequestManager;->c:Lcom/bumptech/glide/Glide;

    .line 14
    .line 15
    iget-object p4, p4, Lcom/bumptech/glide/Glide;->h:Lcom/bumptech/glide/GlideContext;

    .line 16
    .line 17
    iget-object p4, p4, Lcom/bumptech/glide/GlideContext;->f:Landroidx/collection/ArrayMap;

    .line 18
    .line 19
    invoke-virtual {p4, p3}, Landroidx/collection/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    check-cast v0, Lcom/bumptech/glide/TransitionOptions;

    .line 24
    .line 25
    if-nez v0, :cond_1

    .line 26
    .line 27
    invoke-virtual {p4}, Landroidx/collection/ArrayMap;->entrySet()Ljava/util/Set;

    .line 28
    .line 29
    .line 30
    move-result-object p4

    .line 31
    invoke-interface {p4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 32
    .line 33
    .line 34
    move-result-object p4

    .line 35
    :cond_0
    :goto_0
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    if-eqz v1, :cond_1

    .line 40
    .line 41
    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    check-cast v1, Ljava/util/Map$Entry;

    .line 46
    .line 47
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    check-cast v2, Ljava/lang/Class;

    .line 52
    .line 53
    invoke-virtual {v2, p3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 54
    .line 55
    .line 56
    move-result v2

    .line 57
    if-eqz v2, :cond_0

    .line 58
    .line 59
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    check-cast v0, Lcom/bumptech/glide/TransitionOptions;

    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_1
    if-nez v0, :cond_2

    .line 67
    .line 68
    sget-object v0, Lcom/bumptech/glide/GlideContext;->k:Lcom/bumptech/glide/GenericTransitionOptions;

    .line 69
    .line 70
    :cond_2
    iput-object v0, p0, Lcom/bumptech/glide/RequestBuilder;->y:Lcom/bumptech/glide/TransitionOptions;

    .line 71
    .line 72
    iget-object p1, p1, Lcom/bumptech/glide/Glide;->h:Lcom/bumptech/glide/GlideContext;

    .line 73
    .line 74
    iput-object p1, p0, Lcom/bumptech/glide/RequestBuilder;->x:Lcom/bumptech/glide/GlideContext;

    .line 75
    .line 76
    iget-object p1, p2, Lcom/bumptech/glide/RequestManager;->m:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 77
    .line 78
    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 83
    .line 84
    .line 85
    move-result p3

    .line 86
    if-eqz p3, :cond_3

    .line 87
    .line 88
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object p3

    .line 92
    check-cast p3, Lcom/bumptech/glide/request/RequestListener;

    .line 93
    .line 94
    invoke-virtual {p0, p3}, Lcom/bumptech/glide/RequestBuilder;->y(Lcom/bumptech/glide/request/RequestListener;)Lcom/bumptech/glide/RequestBuilder;

    .line 95
    .line 96
    .line 97
    goto :goto_1

    .line 98
    :cond_3
    monitor-enter p2

    .line 99
    :try_start_0
    iget-object p1, p2, Lcom/bumptech/glide/RequestManager;->n:Lcom/bumptech/glide/request/RequestOptions;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 100
    .line 101
    monitor-exit p2

    .line 102
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/RequestBuilder;->z(Lcom/bumptech/glide/request/BaseRequestOptions;)Lcom/bumptech/glide/RequestBuilder;

    .line 103
    .line 104
    .line 105
    return-void

    .line 106
    :catchall_0
    move-exception p1

    .line 107
    :try_start_1
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 108
    throw p1
.end method


# virtual methods
.method public final A(Lcom/bumptech/glide/RequestBuilder;)Lcom/bumptech/glide/RequestBuilder;
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/RequestBuilder;->u:Landroid/content/Context;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {p1, v1}, Lcom/bumptech/glide/request/BaseRequestOptions;->u(Landroid/content/res/Resources$Theme;)Lcom/bumptech/glide/request/BaseRequestOptions;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    check-cast p1, Lcom/bumptech/glide/RequestBuilder;

    .line 12
    .line 13
    sget-object v1, Lcom/bumptech/glide/signature/ApplicationVersionSignature;->a:Lj$/util/concurrent/ConcurrentHashMap;

    .line 14
    .line 15
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    sget-object v2, Lcom/bumptech/glide/signature/ApplicationVersionSignature;->a:Lj$/util/concurrent/ConcurrentHashMap;

    .line 20
    .line 21
    invoke-virtual {v2, v1}, Lj$/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    check-cast v3, Lcom/bumptech/glide/load/Key;

    .line 26
    .line 27
    if-nez v3, :cond_2

    .line 28
    .line 29
    :try_start_0
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v4

    .line 37
    const/4 v5, 0x0

    .line 38
    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 39
    .line 40
    .line 41
    move-result-object v3
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    goto :goto_0

    .line 43
    :catch_0
    move-exception v3

    .line 44
    new-instance v4, Ljava/lang/StringBuilder;

    .line 45
    .line 46
    const-string v5, "Cannot resolve info for"

    .line 47
    .line 48
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v5

    .line 55
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v4

    .line 62
    const-string v5, "AppVersionSignature"

    .line 63
    .line 64
    invoke-static {v5, v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 65
    .line 66
    .line 67
    const/4 v3, 0x0

    .line 68
    :goto_0
    if-eqz v3, :cond_0

    .line 69
    .line 70
    iget v3, v3, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 71
    .line 72
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v3

    .line 76
    goto :goto_1

    .line 77
    :cond_0
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    .line 78
    .line 79
    .line 80
    move-result-object v3

    .line 81
    invoke-virtual {v3}, Ljava/util/UUID;->toString()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v3

    .line 85
    :goto_1
    new-instance v4, Lcom/bumptech/glide/signature/ObjectKey;

    .line 86
    .line 87
    invoke-direct {v4, v3}, Lcom/bumptech/glide/signature/ObjectKey;-><init>(Ljava/lang/Object;)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {v2, v1, v4}, Lj$/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    move-result-object v1

    .line 94
    check-cast v1, Lcom/bumptech/glide/load/Key;

    .line 95
    .line 96
    if-nez v1, :cond_1

    .line 97
    .line 98
    move-object v3, v4

    .line 99
    goto :goto_2

    .line 100
    :cond_1
    move-object v3, v1

    .line 101
    :cond_2
    :goto_2
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    iget v0, v0, Landroid/content/res/Configuration;->uiMode:I

    .line 110
    .line 111
    and-int/lit8 v0, v0, 0x30

    .line 112
    .line 113
    new-instance v1, Lcom/bumptech/glide/signature/AndroidResourceSignature;

    .line 114
    .line 115
    invoke-direct {v1, v0, v3}, Lcom/bumptech/glide/signature/AndroidResourceSignature;-><init>(ILcom/bumptech/glide/load/Key;)V

    .line 116
    .line 117
    .line 118
    invoke-virtual {p1, v1}, Lcom/bumptech/glide/request/BaseRequestOptions;->s(Lcom/bumptech/glide/load/Key;)Lcom/bumptech/glide/request/BaseRequestOptions;

    .line 119
    .line 120
    .line 121
    move-result-object p1

    .line 122
    check-cast p1, Lcom/bumptech/glide/RequestBuilder;

    .line 123
    .line 124
    return-object p1
.end method

.method public final C(Ljava/lang/Object;Lcom/bumptech/glide/request/target/Target;Lcom/bumptech/glide/request/RequestListener;Lcom/bumptech/glide/request/RequestCoordinator;Lcom/bumptech/glide/TransitionOptions;Lcom/bumptech/glide/Priority;IILcom/bumptech/glide/request/BaseRequestOptions;Ljava/util/concurrent/Executor;)Lcom/bumptech/glide/request/Request;
    .locals 22

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v2, p1

    .line 4
    .line 5
    move-object/from16 v7, p9

    .line 6
    .line 7
    iget-object v1, v0, Lcom/bumptech/glide/RequestBuilder;->C:Lcom/bumptech/glide/RequestBuilder;

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    new-instance v1, Lcom/bumptech/glide/request/ErrorRequestCoordinator;

    .line 12
    .line 13
    move-object/from16 v3, p4

    .line 14
    .line 15
    invoke-direct {v1, v2, v3}, Lcom/bumptech/glide/request/ErrorRequestCoordinator;-><init>(Ljava/lang/Object;Lcom/bumptech/glide/request/RequestCoordinator;)V

    .line 16
    .line 17
    .line 18
    move-object v14, v1

    .line 19
    move-object/from16 v17, v14

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    move-object/from16 v3, p4

    .line 23
    .line 24
    const/4 v1, 0x0

    .line 25
    move-object/from16 v17, v1

    .line 26
    .line 27
    move-object v14, v3

    .line 28
    :goto_0
    iget-object v1, v0, Lcom/bumptech/glide/RequestBuilder;->B:Lcom/bumptech/glide/RequestBuilder;

    .line 29
    .line 30
    if-eqz v1, :cond_8

    .line 31
    .line 32
    iget-boolean v3, v0, Lcom/bumptech/glide/RequestBuilder;->F:Z

    .line 33
    .line 34
    if-nez v3, :cond_7

    .line 35
    .line 36
    iget-object v3, v1, Lcom/bumptech/glide/RequestBuilder;->y:Lcom/bumptech/glide/TransitionOptions;

    .line 37
    .line 38
    iget-boolean v4, v1, Lcom/bumptech/glide/RequestBuilder;->D:Z

    .line 39
    .line 40
    if-eqz v4, :cond_1

    .line 41
    .line 42
    move-object/from16 v18, p5

    .line 43
    .line 44
    goto :goto_1

    .line 45
    :cond_1
    move-object/from16 v18, v3

    .line 46
    .line 47
    :goto_1
    const/16 v3, 0x8

    .line 48
    .line 49
    iget v1, v1, Lcom/bumptech/glide/request/BaseRequestOptions;->c:I

    .line 50
    .line 51
    invoke-static {v1, v3}, Lcom/bumptech/glide/request/BaseRequestOptions;->h(II)Z

    .line 52
    .line 53
    .line 54
    move-result v1

    .line 55
    const/4 v3, 0x1

    .line 56
    if-eqz v1, :cond_2

    .line 57
    .line 58
    iget-object v1, v0, Lcom/bumptech/glide/RequestBuilder;->B:Lcom/bumptech/glide/RequestBuilder;

    .line 59
    .line 60
    iget-object v1, v1, Lcom/bumptech/glide/request/BaseRequestOptions;->g:Lcom/bumptech/glide/Priority;

    .line 61
    .line 62
    :goto_2
    move-object/from16 v19, v1

    .line 63
    .line 64
    goto :goto_3

    .line 65
    :cond_2
    invoke-virtual/range {p6 .. p6}, Ljava/lang/Enum;->ordinal()I

    .line 66
    .line 67
    .line 68
    move-result v1

    .line 69
    if-eqz v1, :cond_5

    .line 70
    .line 71
    if-eq v1, v3, :cond_5

    .line 72
    .line 73
    const/4 v4, 0x2

    .line 74
    if-eq v1, v4, :cond_4

    .line 75
    .line 76
    const/4 v4, 0x3

    .line 77
    if-ne v1, v4, :cond_3

    .line 78
    .line 79
    sget-object v1, Lcom/bumptech/glide/Priority;->g:Lcom/bumptech/glide/Priority;

    .line 80
    .line 81
    goto :goto_2

    .line 82
    :cond_3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 83
    .line 84
    new-instance v2, Ljava/lang/StringBuilder;

    .line 85
    .line 86
    const-string v3, "unknown priority: "

    .line 87
    .line 88
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    iget-object v3, v0, Lcom/bumptech/glide/request/BaseRequestOptions;->g:Lcom/bumptech/glide/Priority;

    .line 92
    .line 93
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v2

    .line 100
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    throw v1

    .line 104
    :cond_4
    sget-object v1, Lcom/bumptech/glide/Priority;->f:Lcom/bumptech/glide/Priority;

    .line 105
    .line 106
    goto :goto_2

    .line 107
    :cond_5
    sget-object v1, Lcom/bumptech/glide/Priority;->c:Lcom/bumptech/glide/Priority;

    .line 108
    .line 109
    goto :goto_2

    .line 110
    :goto_3
    iget-object v1, v0, Lcom/bumptech/glide/RequestBuilder;->B:Lcom/bumptech/glide/RequestBuilder;

    .line 111
    .line 112
    iget v4, v1, Lcom/bumptech/glide/request/BaseRequestOptions;->j:I

    .line 113
    .line 114
    iget v1, v1, Lcom/bumptech/glide/request/BaseRequestOptions;->i:I

    .line 115
    .line 116
    invoke-static/range {p7 .. p8}, Lcom/bumptech/glide/util/Util;->j(II)Z

    .line 117
    .line 118
    .line 119
    move-result v5

    .line 120
    if-eqz v5, :cond_6

    .line 121
    .line 122
    iget-object v5, v0, Lcom/bumptech/glide/RequestBuilder;->B:Lcom/bumptech/glide/RequestBuilder;

    .line 123
    .line 124
    iget v6, v5, Lcom/bumptech/glide/request/BaseRequestOptions;->j:I

    .line 125
    .line 126
    iget v5, v5, Lcom/bumptech/glide/request/BaseRequestOptions;->i:I

    .line 127
    .line 128
    invoke-static {v6, v5}, Lcom/bumptech/glide/util/Util;->j(II)Z

    .line 129
    .line 130
    .line 131
    move-result v5

    .line 132
    if-nez v5, :cond_6

    .line 133
    .line 134
    iget v4, v7, Lcom/bumptech/glide/request/BaseRequestOptions;->j:I

    .line 135
    .line 136
    iget v1, v7, Lcom/bumptech/glide/request/BaseRequestOptions;->i:I

    .line 137
    .line 138
    :cond_6
    move/from16 v20, v1

    .line 139
    .line 140
    move/from16 v21, v4

    .line 141
    .line 142
    new-instance v5, Lcom/bumptech/glide/request/ThumbnailRequestCoordinator;

    .line 143
    .line 144
    invoke-direct {v5, v2, v14}, Lcom/bumptech/glide/request/ThumbnailRequestCoordinator;-><init>(Ljava/lang/Object;Lcom/bumptech/glide/request/RequestCoordinator;)V

    .line 145
    .line 146
    .line 147
    iget-object v2, v0, Lcom/bumptech/glide/RequestBuilder;->u:Landroid/content/Context;

    .line 148
    .line 149
    move v1, v3

    .line 150
    iget-object v3, v0, Lcom/bumptech/glide/RequestBuilder;->x:Lcom/bumptech/glide/GlideContext;

    .line 151
    .line 152
    move-object v14, v5

    .line 153
    iget-object v5, v0, Lcom/bumptech/glide/RequestBuilder;->z:Ljava/lang/Object;

    .line 154
    .line 155
    iget-object v6, v0, Lcom/bumptech/glide/RequestBuilder;->w:Ljava/lang/Class;

    .line 156
    .line 157
    iget-object v13, v0, Lcom/bumptech/glide/RequestBuilder;->A:Ljava/util/ArrayList;

    .line 158
    .line 159
    iget-object v15, v3, Lcom/bumptech/glide/GlideContext;->g:Lcom/bumptech/glide/load/engine/Engine;

    .line 160
    .line 161
    invoke-virtual/range {p5 .. p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 162
    .line 163
    .line 164
    move v4, v1

    .line 165
    new-instance v1, Lcom/bumptech/glide/request/SingleRequest;

    .line 166
    .line 167
    move-object/from16 v4, p1

    .line 168
    .line 169
    move-object/from16 v11, p2

    .line 170
    .line 171
    move-object/from16 v12, p3

    .line 172
    .line 173
    move-object/from16 v10, p6

    .line 174
    .line 175
    move/from16 v8, p7

    .line 176
    .line 177
    move/from16 v9, p8

    .line 178
    .line 179
    move-object/from16 v16, p10

    .line 180
    .line 181
    invoke-direct/range {v1 .. v16}, Lcom/bumptech/glide/request/SingleRequest;-><init>(Landroid/content/Context;Lcom/bumptech/glide/GlideContext;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Class;Lcom/bumptech/glide/request/BaseRequestOptions;IILcom/bumptech/glide/Priority;Lcom/bumptech/glide/request/target/Target;Lcom/bumptech/glide/request/RequestListener;Ljava/util/ArrayList;Lcom/bumptech/glide/request/RequestCoordinator;Lcom/bumptech/glide/load/engine/Engine;Ljava/util/concurrent/Executor;)V

    .line 182
    .line 183
    .line 184
    move-object v12, v1

    .line 185
    const/4 v1, 0x1

    .line 186
    iput-boolean v1, v0, Lcom/bumptech/glide/RequestBuilder;->F:Z

    .line 187
    .line 188
    iget-object v1, v0, Lcom/bumptech/glide/RequestBuilder;->B:Lcom/bumptech/glide/RequestBuilder;

    .line 189
    .line 190
    move-object v10, v1

    .line 191
    move-object/from16 v2, p1

    .line 192
    .line 193
    move-object/from16 v3, p2

    .line 194
    .line 195
    move-object/from16 v4, p3

    .line 196
    .line 197
    move-object/from16 v11, p10

    .line 198
    .line 199
    move-object v5, v14

    .line 200
    move-object/from16 v6, v18

    .line 201
    .line 202
    move-object/from16 v7, v19

    .line 203
    .line 204
    move/from16 v9, v20

    .line 205
    .line 206
    move/from16 v8, v21

    .line 207
    .line 208
    invoke-virtual/range {v1 .. v11}, Lcom/bumptech/glide/RequestBuilder;->C(Ljava/lang/Object;Lcom/bumptech/glide/request/target/Target;Lcom/bumptech/glide/request/RequestListener;Lcom/bumptech/glide/request/RequestCoordinator;Lcom/bumptech/glide/TransitionOptions;Lcom/bumptech/glide/Priority;IILcom/bumptech/glide/request/BaseRequestOptions;Ljava/util/concurrent/Executor;)Lcom/bumptech/glide/request/Request;

    .line 209
    .line 210
    .line 211
    move-result-object v1

    .line 212
    const/4 v2, 0x0

    .line 213
    iput-boolean v2, v0, Lcom/bumptech/glide/RequestBuilder;->F:Z

    .line 214
    .line 215
    iput-object v12, v14, Lcom/bumptech/glide/request/ThumbnailRequestCoordinator;->c:Lcom/bumptech/glide/request/SingleRequest;

    .line 216
    .line 217
    iput-object v1, v14, Lcom/bumptech/glide/request/ThumbnailRequestCoordinator;->d:Lcom/bumptech/glide/request/Request;

    .line 218
    .line 219
    move-object/from16 v7, p9

    .line 220
    .line 221
    goto :goto_4

    .line 222
    :cond_7
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 223
    .line 224
    const-string v2, "You cannot use a request as both the main request and a thumbnail, consider using clone() on the request(s) passed to thumbnail()"

    .line 225
    .line 226
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 227
    .line 228
    .line 229
    throw v1

    .line 230
    :cond_8
    iget-object v2, v0, Lcom/bumptech/glide/RequestBuilder;->u:Landroid/content/Context;

    .line 231
    .line 232
    iget-object v3, v0, Lcom/bumptech/glide/RequestBuilder;->x:Lcom/bumptech/glide/GlideContext;

    .line 233
    .line 234
    iget-object v5, v0, Lcom/bumptech/glide/RequestBuilder;->z:Ljava/lang/Object;

    .line 235
    .line 236
    iget-object v6, v0, Lcom/bumptech/glide/RequestBuilder;->w:Ljava/lang/Class;

    .line 237
    .line 238
    iget-object v13, v0, Lcom/bumptech/glide/RequestBuilder;->A:Ljava/util/ArrayList;

    .line 239
    .line 240
    iget-object v15, v3, Lcom/bumptech/glide/GlideContext;->g:Lcom/bumptech/glide/load/engine/Engine;

    .line 241
    .line 242
    invoke-virtual/range {p5 .. p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 243
    .line 244
    .line 245
    new-instance v1, Lcom/bumptech/glide/request/SingleRequest;

    .line 246
    .line 247
    move-object/from16 v4, p1

    .line 248
    .line 249
    move-object/from16 v11, p2

    .line 250
    .line 251
    move-object/from16 v12, p3

    .line 252
    .line 253
    move-object/from16 v10, p6

    .line 254
    .line 255
    move/from16 v8, p7

    .line 256
    .line 257
    move/from16 v9, p8

    .line 258
    .line 259
    move-object/from16 v7, p9

    .line 260
    .line 261
    move-object/from16 v16, p10

    .line 262
    .line 263
    invoke-direct/range {v1 .. v16}, Lcom/bumptech/glide/request/SingleRequest;-><init>(Landroid/content/Context;Lcom/bumptech/glide/GlideContext;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Class;Lcom/bumptech/glide/request/BaseRequestOptions;IILcom/bumptech/glide/Priority;Lcom/bumptech/glide/request/target/Target;Lcom/bumptech/glide/request/RequestListener;Ljava/util/ArrayList;Lcom/bumptech/glide/request/RequestCoordinator;Lcom/bumptech/glide/load/engine/Engine;Ljava/util/concurrent/Executor;)V

    .line 264
    .line 265
    .line 266
    move-object v14, v1

    .line 267
    :goto_4
    if-nez v17, :cond_9

    .line 268
    .line 269
    return-object v14

    .line 270
    :cond_9
    iget-object v1, v0, Lcom/bumptech/glide/RequestBuilder;->C:Lcom/bumptech/glide/RequestBuilder;

    .line 271
    .line 272
    iget v2, v1, Lcom/bumptech/glide/request/BaseRequestOptions;->j:I

    .line 273
    .line 274
    iget v1, v1, Lcom/bumptech/glide/request/BaseRequestOptions;->i:I

    .line 275
    .line 276
    invoke-static/range {p7 .. p8}, Lcom/bumptech/glide/util/Util;->j(II)Z

    .line 277
    .line 278
    .line 279
    move-result v3

    .line 280
    if-eqz v3, :cond_a

    .line 281
    .line 282
    iget-object v3, v0, Lcom/bumptech/glide/RequestBuilder;->C:Lcom/bumptech/glide/RequestBuilder;

    .line 283
    .line 284
    iget v4, v3, Lcom/bumptech/glide/request/BaseRequestOptions;->j:I

    .line 285
    .line 286
    iget v3, v3, Lcom/bumptech/glide/request/BaseRequestOptions;->i:I

    .line 287
    .line 288
    invoke-static {v4, v3}, Lcom/bumptech/glide/util/Util;->j(II)Z

    .line 289
    .line 290
    .line 291
    move-result v3

    .line 292
    if-nez v3, :cond_a

    .line 293
    .line 294
    iget v2, v7, Lcom/bumptech/glide/request/BaseRequestOptions;->j:I

    .line 295
    .line 296
    iget v1, v7, Lcom/bumptech/glide/request/BaseRequestOptions;->i:I

    .line 297
    .line 298
    :cond_a
    move v9, v1

    .line 299
    move v8, v2

    .line 300
    iget-object v1, v0, Lcom/bumptech/glide/RequestBuilder;->C:Lcom/bumptech/glide/RequestBuilder;

    .line 301
    .line 302
    iget-object v6, v1, Lcom/bumptech/glide/RequestBuilder;->y:Lcom/bumptech/glide/TransitionOptions;

    .line 303
    .line 304
    iget-object v7, v1, Lcom/bumptech/glide/request/BaseRequestOptions;->g:Lcom/bumptech/glide/Priority;

    .line 305
    .line 306
    move-object v10, v1

    .line 307
    move-object/from16 v2, p1

    .line 308
    .line 309
    move-object/from16 v3, p2

    .line 310
    .line 311
    move-object/from16 v4, p3

    .line 312
    .line 313
    move-object/from16 v11, p10

    .line 314
    .line 315
    move-object/from16 v5, v17

    .line 316
    .line 317
    invoke-virtual/range {v1 .. v11}, Lcom/bumptech/glide/RequestBuilder;->C(Ljava/lang/Object;Lcom/bumptech/glide/request/target/Target;Lcom/bumptech/glide/request/RequestListener;Lcom/bumptech/glide/request/RequestCoordinator;Lcom/bumptech/glide/TransitionOptions;Lcom/bumptech/glide/Priority;IILcom/bumptech/glide/request/BaseRequestOptions;Ljava/util/concurrent/Executor;)Lcom/bumptech/glide/request/Request;

    .line 318
    .line 319
    .line 320
    move-result-object v1

    .line 321
    iput-object v14, v5, Lcom/bumptech/glide/request/ErrorRequestCoordinator;->c:Lcom/bumptech/glide/request/Request;

    .line 322
    .line 323
    iput-object v1, v5, Lcom/bumptech/glide/request/ErrorRequestCoordinator;->d:Lcom/bumptech/glide/request/Request;

    .line 324
    .line 325
    return-object v5
.end method

.method public D()Lcom/bumptech/glide/RequestBuilder;
    .locals 3

    .line 1
    invoke-super {p0}, Lcom/bumptech/glide/request/BaseRequestOptions;->c()Lcom/bumptech/glide/request/BaseRequestOptions;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lcom/bumptech/glide/RequestBuilder;

    .line 6
    .line 7
    iget-object v1, v0, Lcom/bumptech/glide/RequestBuilder;->y:Lcom/bumptech/glide/TransitionOptions;

    .line 8
    .line 9
    invoke-virtual {v1}, Lcom/bumptech/glide/TransitionOptions;->a()Lcom/bumptech/glide/TransitionOptions;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    iput-object v1, v0, Lcom/bumptech/glide/RequestBuilder;->y:Lcom/bumptech/glide/TransitionOptions;

    .line 14
    .line 15
    iget-object v1, v0, Lcom/bumptech/glide/RequestBuilder;->A:Ljava/util/ArrayList;

    .line 16
    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    new-instance v1, Ljava/util/ArrayList;

    .line 20
    .line 21
    iget-object v2, v0, Lcom/bumptech/glide/RequestBuilder;->A:Ljava/util/ArrayList;

    .line 22
    .line 23
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 24
    .line 25
    .line 26
    iput-object v1, v0, Lcom/bumptech/glide/RequestBuilder;->A:Ljava/util/ArrayList;

    .line 27
    .line 28
    :cond_0
    iget-object v1, v0, Lcom/bumptech/glide/RequestBuilder;->B:Lcom/bumptech/glide/RequestBuilder;

    .line 29
    .line 30
    if-eqz v1, :cond_1

    .line 31
    .line 32
    invoke-virtual {v1}, Lcom/bumptech/glide/RequestBuilder;->D()Lcom/bumptech/glide/RequestBuilder;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    iput-object v1, v0, Lcom/bumptech/glide/RequestBuilder;->B:Lcom/bumptech/glide/RequestBuilder;

    .line 37
    .line 38
    :cond_1
    iget-object v1, v0, Lcom/bumptech/glide/RequestBuilder;->C:Lcom/bumptech/glide/RequestBuilder;

    .line 39
    .line 40
    if-eqz v1, :cond_2

    .line 41
    .line 42
    invoke-virtual {v1}, Lcom/bumptech/glide/RequestBuilder;->D()Lcom/bumptech/glide/RequestBuilder;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    iput-object v1, v0, Lcom/bumptech/glide/RequestBuilder;->C:Lcom/bumptech/glide/RequestBuilder;

    .line 47
    .line 48
    :cond_2
    return-object v0
.end method

.method public final E(Landroid/widget/ImageView;)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/bumptech/glide/util/Util;->a()V

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Lcom/bumptech/glide/util/Preconditions;->b(Ljava/lang/Object;)V

    .line 5
    .line 6
    .line 7
    const/16 v0, 0x800

    .line 8
    .line 9
    iget v1, p0, Lcom/bumptech/glide/request/BaseRequestOptions;->c:I

    .line 10
    .line 11
    invoke-static {v1, v0}, Lcom/bumptech/glide/request/BaseRequestOptions;->h(II)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    invoke-virtual {p1}, Landroid/widget/ImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    sget-object v0, Lcom/bumptech/glide/RequestBuilder$1;->a:[I

    .line 24
    .line 25
    invoke-virtual {p1}, Landroid/widget/ImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    aget v0, v0, v1

    .line 34
    .line 35
    packed-switch v0, :pswitch_data_0

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :pswitch_0
    invoke-virtual {p0}, Lcom/bumptech/glide/RequestBuilder;->c()Lcom/bumptech/glide/request/BaseRequestOptions;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    invoke-virtual {v0}, Lcom/bumptech/glide/request/BaseRequestOptions;->k()Lcom/bumptech/glide/request/BaseRequestOptions;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    goto :goto_1

    .line 48
    :pswitch_1
    invoke-virtual {p0}, Lcom/bumptech/glide/RequestBuilder;->c()Lcom/bumptech/glide/request/BaseRequestOptions;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    invoke-virtual {v0}, Lcom/bumptech/glide/request/BaseRequestOptions;->l()Lcom/bumptech/glide/request/BaseRequestOptions;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    goto :goto_1

    .line 57
    :pswitch_2
    invoke-virtual {p0}, Lcom/bumptech/glide/RequestBuilder;->c()Lcom/bumptech/glide/request/BaseRequestOptions;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    invoke-virtual {v0}, Lcom/bumptech/glide/request/BaseRequestOptions;->k()Lcom/bumptech/glide/request/BaseRequestOptions;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    goto :goto_1

    .line 66
    :pswitch_3
    invoke-virtual {p0}, Lcom/bumptech/glide/RequestBuilder;->c()Lcom/bumptech/glide/request/BaseRequestOptions;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    invoke-virtual {v0}, Lcom/bumptech/glide/request/BaseRequestOptions;->j()Lcom/bumptech/glide/request/BaseRequestOptions;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    goto :goto_1

    .line 75
    :cond_0
    :goto_0
    move-object v0, p0

    .line 76
    :goto_1
    iget-object v1, p0, Lcom/bumptech/glide/RequestBuilder;->x:Lcom/bumptech/glide/GlideContext;

    .line 77
    .line 78
    iget-object v1, v1, Lcom/bumptech/glide/GlideContext;->c:Lcom/bumptech/glide/request/target/ImageViewTargetFactory;

    .line 79
    .line 80
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 81
    .line 82
    .line 83
    const-class v1, Landroid/graphics/Bitmap;

    .line 84
    .line 85
    iget-object v2, p0, Lcom/bumptech/glide/RequestBuilder;->w:Ljava/lang/Class;

    .line 86
    .line 87
    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 88
    .line 89
    .line 90
    move-result v1

    .line 91
    if-eqz v1, :cond_1

    .line 92
    .line 93
    new-instance v1, Lcom/bumptech/glide/request/target/BitmapImageViewTarget;

    .line 94
    .line 95
    invoke-direct {v1, p1}, Lcom/bumptech/glide/request/target/ViewTarget;-><init>(Landroid/widget/ImageView;)V

    .line 96
    .line 97
    .line 98
    goto :goto_2

    .line 99
    :cond_1
    const-class v1, Landroid/graphics/drawable/Drawable;

    .line 100
    .line 101
    invoke-virtual {v1, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 102
    .line 103
    .line 104
    move-result v1

    .line 105
    if-eqz v1, :cond_2

    .line 106
    .line 107
    new-instance v1, Lcom/bumptech/glide/request/target/DrawableImageViewTarget;

    .line 108
    .line 109
    invoke-direct {v1, p1}, Lcom/bumptech/glide/request/target/ViewTarget;-><init>(Landroid/widget/ImageView;)V

    .line 110
    .line 111
    .line 112
    :goto_2
    const/4 p1, 0x0

    .line 113
    sget-object v2, Lcom/bumptech/glide/util/Executors;->a:Ljava/util/concurrent/Executor;

    .line 114
    .line 115
    invoke-virtual {p0, v1, p1, v0, v2}, Lcom/bumptech/glide/RequestBuilder;->H(Lcom/bumptech/glide/request/target/Target;Lcom/bumptech/glide/request/RequestFutureTarget;Lcom/bumptech/glide/request/BaseRequestOptions;Ljava/util/concurrent/Executor;)V

    .line 116
    .line 117
    .line 118
    return-void

    .line 119
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 120
    .line 121
    new-instance v0, Ljava/lang/StringBuilder;

    .line 122
    .line 123
    const-string v1, "Unhandled class: "

    .line 124
    .line 125
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 126
    .line 127
    .line 128
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    const-string v1, ", try .as*(Class).transcode(ResourceTranscoder)"

    .line 132
    .line 133
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    .line 135
    .line 136
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object v0

    .line 140
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 141
    .line 142
    .line 143
    throw p1

    .line 144
    nop

    .line 145
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final F(Lcom/bumptech/glide/request/target/Target;)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    sget-object v1, Lcom/bumptech/glide/util/Executors;->a:Ljava/util/concurrent/Executor;

    .line 3
    .line 4
    invoke-virtual {p0, p1, v0, p0, v1}, Lcom/bumptech/glide/RequestBuilder;->H(Lcom/bumptech/glide/request/target/Target;Lcom/bumptech/glide/request/RequestFutureTarget;Lcom/bumptech/glide/request/BaseRequestOptions;Ljava/util/concurrent/Executor;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public final H(Lcom/bumptech/glide/request/target/Target;Lcom/bumptech/glide/request/RequestFutureTarget;Lcom/bumptech/glide/request/BaseRequestOptions;Ljava/util/concurrent/Executor;)V
    .locals 12

    .line 1
    invoke-static {p1}, Lcom/bumptech/glide/util/Preconditions;->b(Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    iget-boolean v0, p0, Lcom/bumptech/glide/RequestBuilder;->E:Z

    .line 5
    .line 6
    if-eqz v0, :cond_5

    .line 7
    .line 8
    new-instance v2, Ljava/lang/Object;

    .line 9
    .line 10
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 11
    .line 12
    .line 13
    iget-object v6, p0, Lcom/bumptech/glide/RequestBuilder;->y:Lcom/bumptech/glide/TransitionOptions;

    .line 14
    .line 15
    iget-object v7, p3, Lcom/bumptech/glide/request/BaseRequestOptions;->g:Lcom/bumptech/glide/Priority;

    .line 16
    .line 17
    iget v8, p3, Lcom/bumptech/glide/request/BaseRequestOptions;->j:I

    .line 18
    .line 19
    iget v9, p3, Lcom/bumptech/glide/request/BaseRequestOptions;->i:I

    .line 20
    .line 21
    const/4 v5, 0x0

    .line 22
    move-object v1, p0

    .line 23
    move-object v3, p1

    .line 24
    move-object v4, p2

    .line 25
    move-object v10, p3

    .line 26
    move-object/from16 v11, p4

    .line 27
    .line 28
    invoke-virtual/range {v1 .. v11}, Lcom/bumptech/glide/RequestBuilder;->C(Ljava/lang/Object;Lcom/bumptech/glide/request/target/Target;Lcom/bumptech/glide/request/RequestListener;Lcom/bumptech/glide/request/RequestCoordinator;Lcom/bumptech/glide/TransitionOptions;Lcom/bumptech/glide/Priority;IILcom/bumptech/glide/request/BaseRequestOptions;Ljava/util/concurrent/Executor;)Lcom/bumptech/glide/request/Request;

    .line 29
    .line 30
    .line 31
    move-result-object p2

    .line 32
    invoke-interface {p1}, Lcom/bumptech/glide/request/target/Target;->j()Lcom/bumptech/glide/request/Request;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-interface {p2, v0}, Lcom/bumptech/glide/request/Request;->c(Lcom/bumptech/glide/request/Request;)Z

    .line 37
    .line 38
    .line 39
    move-result v2

    .line 40
    if-eqz v2, :cond_2

    .line 41
    .line 42
    iget-boolean p3, p3, Lcom/bumptech/glide/request/BaseRequestOptions;->h:Z

    .line 43
    .line 44
    if-nez p3, :cond_0

    .line 45
    .line 46
    invoke-interface {v0}, Lcom/bumptech/glide/request/Request;->isComplete()Z

    .line 47
    .line 48
    .line 49
    move-result p3

    .line 50
    if-eqz p3, :cond_0

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_0
    const-string p1, "Argument must not be null"

    .line 54
    .line 55
    invoke-static {v0, p1}, Lcom/bumptech/glide/util/Preconditions;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    invoke-interface {v0}, Lcom/bumptech/glide/request/Request;->isRunning()Z

    .line 59
    .line 60
    .line 61
    move-result p1

    .line 62
    if-nez p1, :cond_1

    .line 63
    .line 64
    invoke-interface {v0}, Lcom/bumptech/glide/request/Request;->g()V

    .line 65
    .line 66
    .line 67
    :cond_1
    return-void

    .line 68
    :cond_2
    :goto_0
    iget-object p3, p0, Lcom/bumptech/glide/RequestBuilder;->v:Lcom/bumptech/glide/RequestManager;

    .line 69
    .line 70
    invoke-virtual {p3, p1}, Lcom/bumptech/glide/RequestManager;->p(Lcom/bumptech/glide/request/target/Target;)V

    .line 71
    .line 72
    .line 73
    invoke-interface {p1, p2}, Lcom/bumptech/glide/request/target/Target;->e(Lcom/bumptech/glide/request/Request;)V

    .line 74
    .line 75
    .line 76
    iget-object p3, p0, Lcom/bumptech/glide/RequestBuilder;->v:Lcom/bumptech/glide/RequestManager;

    .line 77
    .line 78
    monitor-enter p3

    .line 79
    :try_start_0
    iget-object v0, p3, Lcom/bumptech/glide/RequestManager;->j:Lcom/bumptech/glide/manager/TargetTracker;

    .line 80
    .line 81
    iget-object v0, v0, Lcom/bumptech/glide/manager/TargetTracker;->c:Ljava/util/Set;

    .line 82
    .line 83
    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 84
    .line 85
    .line 86
    iget-object p1, p3, Lcom/bumptech/glide/RequestManager;->h:Lcom/bumptech/glide/manager/RequestTracker;

    .line 87
    .line 88
    const-string v0, "RequestTracker"

    .line 89
    .line 90
    iget-object v2, p1, Lcom/bumptech/glide/manager/RequestTracker;->a:Ljava/util/Set;

    .line 91
    .line 92
    invoke-interface {v2, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 93
    .line 94
    .line 95
    iget-boolean v2, p1, Lcom/bumptech/glide/manager/RequestTracker;->c:Z

    .line 96
    .line 97
    if-nez v2, :cond_3

    .line 98
    .line 99
    invoke-interface {p2}, Lcom/bumptech/glide/request/Request;->g()V

    .line 100
    .line 101
    .line 102
    goto :goto_1

    .line 103
    :cond_3
    invoke-interface {p2}, Lcom/bumptech/glide/request/Request;->clear()V

    .line 104
    .line 105
    .line 106
    const/4 v2, 0x2

    .line 107
    invoke-static {v0, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 108
    .line 109
    .line 110
    move-result v2

    .line 111
    if-eqz v2, :cond_4

    .line 112
    .line 113
    const-string v2, "Paused, delaying request"

    .line 114
    .line 115
    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    .line 117
    .line 118
    :cond_4
    iget-object p1, p1, Lcom/bumptech/glide/manager/RequestTracker;->b:Ljava/util/HashSet;

    .line 119
    .line 120
    invoke-virtual {p1, p2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 121
    .line 122
    .line 123
    :goto_1
    monitor-exit p3

    .line 124
    return-void

    .line 125
    :catchall_0
    move-exception v0

    .line 126
    move-object p1, v0

    .line 127
    :try_start_1
    monitor-exit p3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 128
    throw p1

    .line 129
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 130
    .line 131
    const-string p2, "You must call #load() before calling #into()"

    .line 132
    .line 133
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 134
    .line 135
    .line 136
    throw p1
.end method

.method public I(Lcom/bumptech/glide/request/RequestListener;)Lcom/bumptech/glide/RequestBuilder;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/bumptech/glide/request/BaseRequestOptions;->r:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/bumptech/glide/RequestBuilder;->D()Lcom/bumptech/glide/RequestBuilder;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0, p1}, Lcom/bumptech/glide/RequestBuilder;->I(Lcom/bumptech/glide/request/RequestListener;)Lcom/bumptech/glide/RequestBuilder;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    return-object p1

    .line 14
    :cond_0
    const/4 v0, 0x0

    .line 15
    iput-object v0, p0, Lcom/bumptech/glide/RequestBuilder;->A:Ljava/util/ArrayList;

    .line 16
    .line 17
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/RequestBuilder;->y(Lcom/bumptech/glide/request/RequestListener;)Lcom/bumptech/glide/RequestBuilder;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    return-object p1
.end method

.method public J(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/RequestBuilder;
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/RequestBuilder;->O(Ljava/lang/Object;)Lcom/bumptech/glide/RequestBuilder;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    new-instance v0, Lcom/bumptech/glide/request/RequestOptions;

    .line 6
    .line 7
    invoke-direct {v0}, Lcom/bumptech/glide/request/BaseRequestOptions;-><init>()V

    .line 8
    .line 9
    .line 10
    sget-object v1, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->a:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/request/BaseRequestOptions;->e(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/request/BaseRequestOptions;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    check-cast v0, Lcom/bumptech/glide/request/RequestOptions;

    .line 17
    .line 18
    invoke-virtual {p1, v0}, Lcom/bumptech/glide/RequestBuilder;->z(Lcom/bumptech/glide/request/BaseRequestOptions;)Lcom/bumptech/glide/RequestBuilder;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    return-object p1
.end method

.method public K(Landroid/net/Uri;)Lcom/bumptech/glide/RequestBuilder;
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/RequestBuilder;->O(Ljava/lang/Object;)Lcom/bumptech/glide/RequestBuilder;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz p1, :cond_1

    .line 6
    .line 7
    const-string v1, "android.resource"

    .line 8
    .line 9
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    if-nez p1, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    invoke-virtual {p0, v0}, Lcom/bumptech/glide/RequestBuilder;->A(Lcom/bumptech/glide/RequestBuilder;)Lcom/bumptech/glide/RequestBuilder;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    return-object p1

    .line 25
    :cond_1
    :goto_0
    return-object v0
.end method

.method public L(Ljava/lang/Integer;)Lcom/bumptech/glide/RequestBuilder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/RequestBuilder;->O(Ljava/lang/Object;)Lcom/bumptech/glide/RequestBuilder;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/RequestBuilder;->A(Lcom/bumptech/glide/RequestBuilder;)Lcom/bumptech/glide/RequestBuilder;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public M(Ljava/lang/Object;)Lcom/bumptech/glide/RequestBuilder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/RequestBuilder;->O(Ljava/lang/Object;)Lcom/bumptech/glide/RequestBuilder;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public N(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/RequestBuilder;->O(Ljava/lang/Object;)Lcom/bumptech/glide/RequestBuilder;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public final O(Ljava/lang/Object;)Lcom/bumptech/glide/RequestBuilder;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/bumptech/glide/request/BaseRequestOptions;->r:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/bumptech/glide/RequestBuilder;->D()Lcom/bumptech/glide/RequestBuilder;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0, p1}, Lcom/bumptech/glide/RequestBuilder;->O(Ljava/lang/Object;)Lcom/bumptech/glide/RequestBuilder;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    return-object p1

    .line 14
    :cond_0
    iput-object p1, p0, Lcom/bumptech/glide/RequestBuilder;->z:Ljava/lang/Object;

    .line 15
    .line 16
    const/4 p1, 0x1

    .line 17
    iput-boolean p1, p0, Lcom/bumptech/glide/RequestBuilder;->E:Z

    .line 18
    .line 19
    invoke-virtual {p0}, Lcom/bumptech/glide/request/BaseRequestOptions;->q()V

    .line 20
    .line 21
    .line 22
    return-object p0
.end method

.method public bridge synthetic a(Lcom/bumptech/glide/request/BaseRequestOptions;)Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/RequestBuilder;->z(Lcom/bumptech/glide/request/BaseRequestOptions;)Lcom/bumptech/glide/RequestBuilder;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public bridge synthetic c()Lcom/bumptech/glide/request/BaseRequestOptions;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/bumptech/glide/RequestBuilder;->D()Lcom/bumptech/glide/RequestBuilder;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/bumptech/glide/RequestBuilder;->D()Lcom/bumptech/glide/RequestBuilder;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    .line 1
    instance-of v0, p1, Lcom/bumptech/glide/RequestBuilder;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast p1, Lcom/bumptech/glide/RequestBuilder;

    .line 6
    .line 7
    invoke-super {p0, p1}, Lcom/bumptech/glide/request/BaseRequestOptions;->equals(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Lcom/bumptech/glide/RequestBuilder;->w:Ljava/lang/Class;

    .line 14
    .line 15
    iget-object v1, p1, Lcom/bumptech/glide/RequestBuilder;->w:Ljava/lang/Class;

    .line 16
    .line 17
    invoke-static {v0, v1}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    iget-object v0, p0, Lcom/bumptech/glide/RequestBuilder;->y:Lcom/bumptech/glide/TransitionOptions;

    .line 24
    .line 25
    iget-object v1, p1, Lcom/bumptech/glide/RequestBuilder;->y:Lcom/bumptech/glide/TransitionOptions;

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/TransitionOptions;->equals(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-eqz v0, :cond_0

    .line 32
    .line 33
    iget-object v0, p0, Lcom/bumptech/glide/RequestBuilder;->z:Ljava/lang/Object;

    .line 34
    .line 35
    iget-object v1, p1, Lcom/bumptech/glide/RequestBuilder;->z:Ljava/lang/Object;

    .line 36
    .line 37
    invoke-static {v0, v1}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    if-eqz v0, :cond_0

    .line 42
    .line 43
    iget-object v0, p0, Lcom/bumptech/glide/RequestBuilder;->A:Ljava/util/ArrayList;

    .line 44
    .line 45
    iget-object v1, p1, Lcom/bumptech/glide/RequestBuilder;->A:Ljava/util/ArrayList;

    .line 46
    .line 47
    invoke-static {v0, v1}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    if-eqz v0, :cond_0

    .line 52
    .line 53
    iget-object v0, p0, Lcom/bumptech/glide/RequestBuilder;->B:Lcom/bumptech/glide/RequestBuilder;

    .line 54
    .line 55
    iget-object v1, p1, Lcom/bumptech/glide/RequestBuilder;->B:Lcom/bumptech/glide/RequestBuilder;

    .line 56
    .line 57
    invoke-static {v0, v1}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    move-result v0

    .line 61
    if-eqz v0, :cond_0

    .line 62
    .line 63
    iget-object v0, p0, Lcom/bumptech/glide/RequestBuilder;->C:Lcom/bumptech/glide/RequestBuilder;

    .line 64
    .line 65
    iget-object v1, p1, Lcom/bumptech/glide/RequestBuilder;->C:Lcom/bumptech/glide/RequestBuilder;

    .line 66
    .line 67
    invoke-static {v0, v1}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    move-result v0

    .line 71
    if-eqz v0, :cond_0

    .line 72
    .line 73
    iget-boolean v0, p0, Lcom/bumptech/glide/RequestBuilder;->D:Z

    .line 74
    .line 75
    iget-boolean v1, p1, Lcom/bumptech/glide/RequestBuilder;->D:Z

    .line 76
    .line 77
    if-ne v0, v1, :cond_0

    .line 78
    .line 79
    iget-boolean v0, p0, Lcom/bumptech/glide/RequestBuilder;->E:Z

    .line 80
    .line 81
    iget-boolean p1, p1, Lcom/bumptech/glide/RequestBuilder;->E:Z

    .line 82
    .line 83
    if-ne v0, p1, :cond_0

    .line 84
    .line 85
    const/4 p1, 0x1

    .line 86
    return p1

    .line 87
    :cond_0
    const/4 p1, 0x0

    .line 88
    return p1
.end method

.method public final hashCode()I
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/bumptech/glide/request/BaseRequestOptions;->hashCode()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget-object v1, p0, Lcom/bumptech/glide/RequestBuilder;->w:Ljava/lang/Class;

    .line 6
    .line 7
    invoke-static {v0, v1}, Lcom/bumptech/glide/util/Util;->i(ILjava/lang/Object;)I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    iget-object v1, p0, Lcom/bumptech/glide/RequestBuilder;->y:Lcom/bumptech/glide/TransitionOptions;

    .line 12
    .line 13
    invoke-static {v0, v1}, Lcom/bumptech/glide/util/Util;->i(ILjava/lang/Object;)I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    iget-object v1, p0, Lcom/bumptech/glide/RequestBuilder;->z:Ljava/lang/Object;

    .line 18
    .line 19
    invoke-static {v0, v1}, Lcom/bumptech/glide/util/Util;->i(ILjava/lang/Object;)I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    iget-object v1, p0, Lcom/bumptech/glide/RequestBuilder;->A:Ljava/util/ArrayList;

    .line 24
    .line 25
    invoke-static {v0, v1}, Lcom/bumptech/glide/util/Util;->i(ILjava/lang/Object;)I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    iget-object v1, p0, Lcom/bumptech/glide/RequestBuilder;->B:Lcom/bumptech/glide/RequestBuilder;

    .line 30
    .line 31
    invoke-static {v0, v1}, Lcom/bumptech/glide/util/Util;->i(ILjava/lang/Object;)I

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    iget-object v1, p0, Lcom/bumptech/glide/RequestBuilder;->C:Lcom/bumptech/glide/RequestBuilder;

    .line 36
    .line 37
    invoke-static {v0, v1}, Lcom/bumptech/glide/util/Util;->i(ILjava/lang/Object;)I

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    const/4 v1, 0x0

    .line 42
    invoke-static {v0, v1}, Lcom/bumptech/glide/util/Util;->i(ILjava/lang/Object;)I

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    iget-boolean v1, p0, Lcom/bumptech/glide/RequestBuilder;->D:Z

    .line 47
    .line 48
    invoke-static {v1, v0}, Lcom/bumptech/glide/util/Util;->h(II)I

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    iget-boolean v1, p0, Lcom/bumptech/glide/RequestBuilder;->E:Z

    .line 53
    .line 54
    invoke-static {v1, v0}, Lcom/bumptech/glide/util/Util;->h(II)I

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    return v0
.end method

.method public y(Lcom/bumptech/glide/request/RequestListener;)Lcom/bumptech/glide/RequestBuilder;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/bumptech/glide/request/BaseRequestOptions;->r:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/bumptech/glide/RequestBuilder;->D()Lcom/bumptech/glide/RequestBuilder;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0, p1}, Lcom/bumptech/glide/RequestBuilder;->y(Lcom/bumptech/glide/request/RequestListener;)Lcom/bumptech/glide/RequestBuilder;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    return-object p1

    .line 14
    :cond_0
    if-eqz p1, :cond_2

    .line 15
    .line 16
    iget-object v0, p0, Lcom/bumptech/glide/RequestBuilder;->A:Ljava/util/ArrayList;

    .line 17
    .line 18
    if-nez v0, :cond_1

    .line 19
    .line 20
    new-instance v0, Ljava/util/ArrayList;

    .line 21
    .line 22
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 23
    .line 24
    .line 25
    iput-object v0, p0, Lcom/bumptech/glide/RequestBuilder;->A:Ljava/util/ArrayList;

    .line 26
    .line 27
    :cond_1
    iget-object v0, p0, Lcom/bumptech/glide/RequestBuilder;->A:Ljava/util/ArrayList;

    .line 28
    .line 29
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    :cond_2
    invoke-virtual {p0}, Lcom/bumptech/glide/request/BaseRequestOptions;->q()V

    .line 33
    .line 34
    .line 35
    return-object p0
.end method

.method public z(Lcom/bumptech/glide/request/BaseRequestOptions;)Lcom/bumptech/glide/RequestBuilder;
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/bumptech/glide/util/Preconditions;->b(Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    invoke-super {p0, p1}, Lcom/bumptech/glide/request/BaseRequestOptions;->a(Lcom/bumptech/glide/request/BaseRequestOptions;)Lcom/bumptech/glide/request/BaseRequestOptions;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    check-cast p1, Lcom/bumptech/glide/RequestBuilder;

    .line 9
    .line 10
    return-object p1
.end method
