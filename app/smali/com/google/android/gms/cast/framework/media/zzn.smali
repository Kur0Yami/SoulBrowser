.class public final Lcom/google/android/gms/cast/framework/media/zzn;
.super Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$Callback;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/VisibleForTesting;
.end annotation


# instance fields
.field public final synthetic a:Lcom/google/android/gms/cast/framework/media/MediaQueue;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/cast/framework/media/MediaQueue;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/cast/framework/media/zzn;->a:Lcom/google/android/gms/cast/framework/media/MediaQueue;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final e()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/zzn;->a:Lcom/google/android/gms/cast/framework/media/MediaQueue;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/media/MediaQueue;->e()J

    .line 4
    .line 5
    .line 6
    move-result-wide v1

    .line 7
    iget-wide v3, v0, Lcom/google/android/gms/cast/framework/media/MediaQueue;->b:J

    .line 8
    .line 9
    cmp-long v3, v1, v3

    .line 10
    .line 11
    if-eqz v3, :cond_0

    .line 12
    .line 13
    iput-wide v1, v0, Lcom/google/android/gms/cast/framework/media/MediaQueue;->b:J

    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/media/MediaQueue;->a()V

    .line 16
    .line 17
    .line 18
    iget-wide v1, v0, Lcom/google/android/gms/cast/framework/media/MediaQueue;->b:J

    .line 19
    .line 20
    const-wide/16 v3, 0x0

    .line 21
    .line 22
    cmp-long v1, v1, v3

    .line 23
    .line 24
    if-eqz v1, :cond_0

    .line 25
    .line 26
    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/media/MediaQueue;->b()V

    .line 27
    .line 28
    .line 29
    :cond_0
    return-void
.end method

.method public final g([I)V
    .locals 2

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/cast/internal/CastUtils;->e([I)Ljava/util/ArrayList;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/zzn;->a:Lcom/google/android/gms/cast/framework/media/MediaQueue;

    .line 6
    .line 7
    iget-object v1, v0, Lcom/google/android/gms/cast/framework/media/MediaQueue;->d:Ljava/util/ArrayList;

    .line 8
    .line 9
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/media/MediaQueue;->f()V

    .line 17
    .line 18
    .line 19
    iget-object v1, v0, Lcom/google/android/gms/cast/framework/media/MediaQueue;->f:Landroid/util/LruCache;

    .line 20
    .line 21
    invoke-virtual {v1}, Landroid/util/LruCache;->evictAll()V

    .line 22
    .line 23
    .line 24
    iget-object v1, v0, Lcom/google/android/gms/cast/framework/media/MediaQueue;->g:Ljava/util/ArrayList;

    .line 25
    .line 26
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 27
    .line 28
    .line 29
    iput-object p1, v0, Lcom/google/android/gms/cast/framework/media/MediaQueue;->d:Ljava/util/ArrayList;

    .line 30
    .line 31
    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/media/MediaQueue;->c()V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/media/MediaQueue;->h()V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/media/MediaQueue;->g()V

    .line 38
    .line 39
    .line 40
    return-void
.end method

.method public final h(I[I)V
    .locals 3

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    iget-object p1, p0, Lcom/google/android/gms/cast/framework/media/zzn;->a:Lcom/google/android/gms/cast/framework/media/MediaQueue;

    .line 4
    .line 5
    iget-object p1, p1, Lcom/google/android/gms/cast/framework/media/MediaQueue;->d:Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/zzn;->a:Lcom/google/android/gms/cast/framework/media/MediaQueue;

    .line 13
    .line 14
    iget-object v1, v0, Lcom/google/android/gms/cast/framework/media/MediaQueue;->e:Landroid/util/SparseIntArray;

    .line 15
    .line 16
    const/4 v2, -0x1

    .line 17
    invoke-virtual {v1, p1, v2}, Landroid/util/SparseIntArray;->get(II)I

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    if-ne p1, v2, :cond_1

    .line 22
    .line 23
    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/media/MediaQueue;->b()V

    .line 24
    .line 25
    .line 26
    return-void

    .line 27
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/zzn;->a:Lcom/google/android/gms/cast/framework/media/MediaQueue;

    .line 28
    .line 29
    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/media/MediaQueue;->f()V

    .line 30
    .line 31
    .line 32
    iget-object v1, v0, Lcom/google/android/gms/cast/framework/media/MediaQueue;->d:Ljava/util/ArrayList;

    .line 33
    .line 34
    invoke-static {p2}, Lcom/google/android/gms/cast/internal/CastUtils;->e([I)Ljava/util/ArrayList;

    .line 35
    .line 36
    .line 37
    move-result-object p2

    .line 38
    invoke-virtual {v1, p1, p2}, Ljava/util/ArrayList;->addAll(ILjava/util/Collection;)Z

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/media/MediaQueue;->c()V

    .line 42
    .line 43
    .line 44
    iget-object p1, v0, Lcom/google/android/gms/cast/framework/media/MediaQueue;->m:Ljava/util/Set;

    .line 45
    .line 46
    monitor-enter p1

    .line 47
    :try_start_0
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 48
    .line 49
    .line 50
    move-result-object p2

    .line 51
    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 52
    .line 53
    .line 54
    move-result v1

    .line 55
    if-eqz v1, :cond_2

    .line 56
    .line 57
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    check-cast v1, Lcom/google/android/gms/cast/framework/media/MediaQueue$Callback;

    .line 62
    .line 63
    invoke-virtual {v1}, Lcom/google/android/gms/cast/framework/media/MediaQueue$Callback;->a()V

    .line 64
    .line 65
    .line 66
    goto :goto_1

    .line 67
    :catchall_0
    move-exception p2

    .line 68
    goto :goto_2

    .line 69
    :cond_2
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 70
    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/media/MediaQueue;->g()V

    .line 71
    .line 72
    .line 73
    return-void

    .line 74
    :goto_2
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 75
    throw p2
.end method

.method public final i([I)V
    .locals 6

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    :goto_0
    array-length v2, p1

    .line 8
    iget-object v3, p0, Lcom/google/android/gms/cast/framework/media/zzn;->a:Lcom/google/android/gms/cast/framework/media/MediaQueue;

    .line 9
    .line 10
    if-ge v1, v2, :cond_1

    .line 11
    .line 12
    aget v2, p1, v1

    .line 13
    .line 14
    iget-object v4, v3, Lcom/google/android/gms/cast/framework/media/MediaQueue;->f:Landroid/util/LruCache;

    .line 15
    .line 16
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 17
    .line 18
    .line 19
    move-result-object v5

    .line 20
    invoke-virtual {v4, v5}, Landroid/util/LruCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    iget-object v4, v3, Lcom/google/android/gms/cast/framework/media/MediaQueue;->e:Landroid/util/SparseIntArray;

    .line 24
    .line 25
    const/4 v5, -0x1

    .line 26
    invoke-virtual {v4, v2, v5}, Landroid/util/SparseIntArray;->get(II)I

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    if-ne v2, v5, :cond_0

    .line 31
    .line 32
    invoke-virtual {v3}, Lcom/google/android/gms/cast/framework/media/MediaQueue;->b()V

    .line 33
    .line 34
    .line 35
    return-void

    .line 36
    :cond_0
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    add-int/lit8 v1, v1, 0x1

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_1
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v3}, Lcom/google/android/gms/cast/framework/media/MediaQueue;->f()V

    .line 50
    .line 51
    .line 52
    invoke-static {v0}, Lcom/google/android/gms/cast/internal/CastUtils;->d(Ljava/util/AbstractCollection;)[I

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    invoke-virtual {v3, p1}, Lcom/google/android/gms/cast/framework/media/MediaQueue;->d([I)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v3}, Lcom/google/android/gms/cast/framework/media/MediaQueue;->g()V

    .line 60
    .line 61
    .line 62
    return-void
.end method

.method public final j([I)V
    .locals 7

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    :goto_0
    array-length v2, p1

    .line 8
    if-ge v1, v2, :cond_1

    .line 9
    .line 10
    aget v2, p1, v1

    .line 11
    .line 12
    iget-object v3, p0, Lcom/google/android/gms/cast/framework/media/zzn;->a:Lcom/google/android/gms/cast/framework/media/MediaQueue;

    .line 13
    .line 14
    iget-object v4, v3, Lcom/google/android/gms/cast/framework/media/MediaQueue;->f:Landroid/util/LruCache;

    .line 15
    .line 16
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 17
    .line 18
    .line 19
    move-result-object v5

    .line 20
    invoke-virtual {v4, v5}, Landroid/util/LruCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    iget-object v4, v3, Lcom/google/android/gms/cast/framework/media/MediaQueue;->e:Landroid/util/SparseIntArray;

    .line 24
    .line 25
    const/4 v5, -0x1

    .line 26
    invoke-virtual {v4, v2, v5}, Landroid/util/SparseIntArray;->get(II)I

    .line 27
    .line 28
    .line 29
    move-result v6

    .line 30
    if-ne v6, v5, :cond_0

    .line 31
    .line 32
    invoke-virtual {v3}, Lcom/google/android/gms/cast/framework/media/MediaQueue;->b()V

    .line 33
    .line 34
    .line 35
    return-void

    .line 36
    :cond_0
    invoke-virtual {v4, v2}, Landroid/util/SparseIntArray;->delete(I)V

    .line 37
    .line 38
    .line 39
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    add-int/lit8 v1, v1, 0x1

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 50
    .line 51
    .line 52
    move-result v1

    .line 53
    if-eqz v1, :cond_2

    .line 54
    .line 55
    return-void

    .line 56
    :cond_2
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 57
    .line 58
    .line 59
    iget-object v1, p0, Lcom/google/android/gms/cast/framework/media/zzn;->a:Lcom/google/android/gms/cast/framework/media/MediaQueue;

    .line 60
    .line 61
    invoke-virtual {v1}, Lcom/google/android/gms/cast/framework/media/MediaQueue;->f()V

    .line 62
    .line 63
    .line 64
    iget-object v2, v1, Lcom/google/android/gms/cast/framework/media/MediaQueue;->d:Ljava/util/ArrayList;

    .line 65
    .line 66
    invoke-static {p1}, Lcom/google/android/gms/cast/internal/CastUtils;->e([I)Ljava/util/ArrayList;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 71
    .line 72
    .line 73
    invoke-virtual {v1}, Lcom/google/android/gms/cast/framework/media/MediaQueue;->c()V

    .line 74
    .line 75
    .line 76
    invoke-static {v0}, Lcom/google/android/gms/cast/internal/CastUtils;->d(Ljava/util/AbstractCollection;)[I

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    iget-object v0, v1, Lcom/google/android/gms/cast/framework/media/MediaQueue;->m:Ljava/util/Set;

    .line 81
    .line 82
    monitor-enter v0

    .line 83
    :try_start_0
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 84
    .line 85
    .line 86
    move-result-object v2

    .line 87
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 88
    .line 89
    .line 90
    move-result v3

    .line 91
    if-eqz v3, :cond_3

    .line 92
    .line 93
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    move-result-object v3

    .line 97
    check-cast v3, Lcom/google/android/gms/cast/framework/media/MediaQueue$Callback;

    .line 98
    .line 99
    invoke-virtual {v3, p1}, Lcom/google/android/gms/cast/framework/media/MediaQueue$Callback;->c([I)V

    .line 100
    .line 101
    .line 102
    goto :goto_1

    .line 103
    :catchall_0
    move-exception p1

    .line 104
    goto :goto_2

    .line 105
    :cond_3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 106
    invoke-virtual {v1}, Lcom/google/android/gms/cast/framework/media/MediaQueue;->g()V

    .line 107
    .line 108
    .line 109
    return-void

    .line 110
    :goto_2
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 111
    throw p1
.end method

.method public final k([Lcom/google/android/gms/cast/MediaQueueItem;)V
    .locals 11

    .line 1
    new-instance v0, Ljava/util/HashSet;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/google/android/gms/cast/framework/media/zzn;->a:Lcom/google/android/gms/cast/framework/media/MediaQueue;

    .line 7
    .line 8
    iget-object v2, v1, Lcom/google/android/gms/cast/framework/media/MediaQueue;->g:Ljava/util/ArrayList;

    .line 9
    .line 10
    iget-object v3, v1, Lcom/google/android/gms/cast/framework/media/MediaQueue;->e:Landroid/util/SparseIntArray;

    .line 11
    .line 12
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 13
    .line 14
    .line 15
    const/4 v4, 0x0

    .line 16
    move v5, v4

    .line 17
    :goto_0
    array-length v6, p1

    .line 18
    const/4 v7, -0x1

    .line 19
    if-ge v5, v6, :cond_1

    .line 20
    .line 21
    aget-object v6, p1, v5

    .line 22
    .line 23
    iget v8, v6, Lcom/google/android/gms/cast/MediaQueueItem;->f:I

    .line 24
    .line 25
    iget-object v9, v1, Lcom/google/android/gms/cast/framework/media/MediaQueue;->f:Landroid/util/LruCache;

    .line 26
    .line 27
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 28
    .line 29
    .line 30
    move-result-object v10

    .line 31
    invoke-virtual {v9, v10, v6}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v3, v8, v7}, Landroid/util/SparseIntArray;->get(II)I

    .line 35
    .line 36
    .line 37
    move-result v6

    .line 38
    if-ne v6, v7, :cond_0

    .line 39
    .line 40
    invoke-virtual {v1}, Lcom/google/android/gms/cast/framework/media/MediaQueue;->b()V

    .line 41
    .line 42
    .line 43
    return-void

    .line 44
    :cond_0
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 45
    .line 46
    .line 47
    move-result-object v6

    .line 48
    invoke-virtual {v0, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    add-int/lit8 v5, v5, 0x1

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 55
    .line 56
    .line 57
    move-result p1

    .line 58
    :cond_2
    :goto_1
    if-ge v4, p1, :cond_3

    .line 59
    .line 60
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object v5

    .line 64
    add-int/lit8 v4, v4, 0x1

    .line 65
    .line 66
    check-cast v5, Ljava/lang/Integer;

    .line 67
    .line 68
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 69
    .line 70
    .line 71
    move-result v5

    .line 72
    invoke-virtual {v3, v5, v7}, Landroid/util/SparseIntArray;->get(II)I

    .line 73
    .line 74
    .line 75
    move-result v5

    .line 76
    if-eq v5, v7, :cond_2

    .line 77
    .line 78
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 79
    .line 80
    .line 81
    move-result-object v5

    .line 82
    invoke-virtual {v0, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 83
    .line 84
    .line 85
    goto :goto_1

    .line 86
    :cond_3
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 87
    .line 88
    .line 89
    new-instance p1, Ljava/util/ArrayList;

    .line 90
    .line 91
    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 92
    .line 93
    .line 94
    invoke-static {p1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {v1}, Lcom/google/android/gms/cast/framework/media/MediaQueue;->f()V

    .line 98
    .line 99
    .line 100
    invoke-static {p1}, Lcom/google/android/gms/cast/internal/CastUtils;->d(Ljava/util/AbstractCollection;)[I

    .line 101
    .line 102
    .line 103
    move-result-object p1

    .line 104
    invoke-virtual {v1, p1}, Lcom/google/android/gms/cast/framework/media/MediaQueue;->d([I)V

    .line 105
    .line 106
    .line 107
    invoke-virtual {v1}, Lcom/google/android/gms/cast/framework/media/MediaQueue;->g()V

    .line 108
    .line 109
    .line 110
    return-void
.end method

.method public final l(Ljava/util/ArrayList;Ljava/util/ArrayList;I)V
    .locals 6

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    const/4 v2, -0x1

    .line 8
    if-nez p3, :cond_0

    .line 9
    .line 10
    iget-object p3, p0, Lcom/google/android/gms/cast/framework/media/zzn;->a:Lcom/google/android/gms/cast/framework/media/MediaQueue;

    .line 11
    .line 12
    iget-object p3, p3, Lcom/google/android/gms/cast/framework/media/MediaQueue;->d:Ljava/util/ArrayList;

    .line 13
    .line 14
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 19
    .line 20
    .line 21
    move-result v3

    .line 22
    if-eqz v3, :cond_1

    .line 23
    .line 24
    iget-object p3, p0, Lcom/google/android/gms/cast/framework/media/zzn;->a:Lcom/google/android/gms/cast/framework/media/MediaQueue;

    .line 25
    .line 26
    new-array v3, v1, [Ljava/lang/Object;

    .line 27
    .line 28
    iget-object p3, p3, Lcom/google/android/gms/cast/framework/media/MediaQueue;->a:Lcom/google/android/gms/cast/internal/Logger;

    .line 29
    .line 30
    const-string v4, "Received a Queue Reordered message with an empty reordered items IDs list."

    .line 31
    .line 32
    iget-object v5, p3, Lcom/google/android/gms/cast/internal/Logger;->a:Ljava/lang/String;

    .line 33
    .line 34
    invoke-virtual {p3, v4, v3}, Lcom/google/android/gms/cast/internal/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p3

    .line 38
    invoke-static {v5, p3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_1
    iget-object v3, p0, Lcom/google/android/gms/cast/framework/media/zzn;->a:Lcom/google/android/gms/cast/framework/media/MediaQueue;

    .line 43
    .line 44
    iget-object v3, v3, Lcom/google/android/gms/cast/framework/media/MediaQueue;->e:Landroid/util/SparseIntArray;

    .line 45
    .line 46
    invoke-virtual {v3, p3, v2}, Landroid/util/SparseIntArray;->get(II)I

    .line 47
    .line 48
    .line 49
    move-result p3

    .line 50
    if-ne p3, v2, :cond_2

    .line 51
    .line 52
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object p3

    .line 56
    check-cast p3, Ljava/lang/Integer;

    .line 57
    .line 58
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    .line 59
    .line 60
    .line 61
    move-result p3

    .line 62
    invoke-virtual {v3, p3, v2}, Landroid/util/SparseIntArray;->get(II)I

    .line 63
    .line 64
    .line 65
    :cond_2
    :goto_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    .line 66
    .line 67
    .line 68
    move-result p3

    .line 69
    :goto_1
    if-ge v1, p3, :cond_4

    .line 70
    .line 71
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object v3

    .line 75
    add-int/lit8 v1, v1, 0x1

    .line 76
    .line 77
    check-cast v3, Ljava/lang/Integer;

    .line 78
    .line 79
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 80
    .line 81
    .line 82
    move-result v3

    .line 83
    iget-object v4, p0, Lcom/google/android/gms/cast/framework/media/zzn;->a:Lcom/google/android/gms/cast/framework/media/MediaQueue;

    .line 84
    .line 85
    iget-object v5, v4, Lcom/google/android/gms/cast/framework/media/MediaQueue;->e:Landroid/util/SparseIntArray;

    .line 86
    .line 87
    invoke-virtual {v5, v3, v2}, Landroid/util/SparseIntArray;->get(II)I

    .line 88
    .line 89
    .line 90
    move-result v3

    .line 91
    if-ne v3, v2, :cond_3

    .line 92
    .line 93
    invoke-virtual {v4}, Lcom/google/android/gms/cast/framework/media/MediaQueue;->b()V

    .line 94
    .line 95
    .line 96
    return-void

    .line 97
    :cond_3
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 98
    .line 99
    .line 100
    move-result-object v3

    .line 101
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 102
    .line 103
    .line 104
    goto :goto_1

    .line 105
    :cond_4
    iget-object p2, p0, Lcom/google/android/gms/cast/framework/media/zzn;->a:Lcom/google/android/gms/cast/framework/media/MediaQueue;

    .line 106
    .line 107
    invoke-virtual {p2}, Lcom/google/android/gms/cast/framework/media/MediaQueue;->f()V

    .line 108
    .line 109
    .line 110
    iput-object p1, p2, Lcom/google/android/gms/cast/framework/media/MediaQueue;->d:Ljava/util/ArrayList;

    .line 111
    .line 112
    invoke-virtual {p2}, Lcom/google/android/gms/cast/framework/media/MediaQueue;->c()V

    .line 113
    .line 114
    .line 115
    iget-object p1, p2, Lcom/google/android/gms/cast/framework/media/MediaQueue;->m:Ljava/util/Set;

    .line 116
    .line 117
    monitor-enter p1

    .line 118
    :try_start_0
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 119
    .line 120
    .line 121
    move-result-object p3

    .line 122
    :goto_2
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    .line 123
    .line 124
    .line 125
    move-result v0

    .line 126
    if-eqz v0, :cond_5

    .line 127
    .line 128
    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 129
    .line 130
    .line 131
    move-result-object v0

    .line 132
    check-cast v0, Lcom/google/android/gms/cast/framework/media/MediaQueue$Callback;

    .line 133
    .line 134
    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/media/MediaQueue$Callback;->d()V

    .line 135
    .line 136
    .line 137
    goto :goto_2

    .line 138
    :catchall_0
    move-exception p2

    .line 139
    goto :goto_3

    .line 140
    :cond_5
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 141
    invoke-virtual {p2}, Lcom/google/android/gms/cast/framework/media/MediaQueue;->g()V

    .line 142
    .line 143
    .line 144
    return-void

    .line 145
    :goto_3
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 146
    throw p2
.end method

.method public final m()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/zzn;->a:Lcom/google/android/gms/cast/framework/media/MediaQueue;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/media/MediaQueue;->b()V

    .line 4
    .line 5
    .line 6
    return-void
.end method
