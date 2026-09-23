.class final Lcom/google/android/gms/internal/cast/zzxw;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/google/android/gms/internal/cast/zzzv;

.field public b:Z

.field public c:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/cast/zzxw;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/cast/zzxw;-><init>(I)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/cast/zzzv;

    .line 2
    invoke-direct {v0}, Lcom/google/android/gms/internal/cast/zzzz;-><init>()V

    .line 3
    iput-object v0, p0, Lcom/google/android/gms/internal/cast/zzxw;->a:Lcom/google/android/gms/internal/cast/zzzv;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 4
    new-instance p1, Lcom/google/android/gms/internal/cast/zzzv;

    .line 5
    invoke-direct {p1}, Lcom/google/android/gms/internal/cast/zzzz;-><init>()V

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/cast/zzxw;->a:Lcom/google/android/gms/internal/cast/zzzv;

    .line 7
    invoke-virtual {p0}, Lcom/google/android/gms/internal/cast/zzxw;->a()V

    .line 8
    invoke-virtual {p0}, Lcom/google/android/gms/internal/cast/zzxw;->a()V

    return-void
.end method

.method public static d(Ljava/util/Map$Entry;)Z
    .locals 0

    .line 1
    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    check-cast p0, Lcom/google/android/gms/internal/cast/zzxv;

    .line 6
    .line 7
    invoke-interface {p0}, Lcom/google/android/gms/internal/cast/zzxv;->zzc()Lcom/google/android/gms/internal/cast/zzaao;

    .line 8
    .line 9
    .line 10
    const/4 p0, 0x0

    .line 11
    throw p0
.end method

.method public static final e(Ljava/util/Map$Entry;)I
    .locals 1

    .line 1
    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lcom/google/android/gms/internal/cast/zzxv;

    .line 6
    .line 7
    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    invoke-interface {v0}, Lcom/google/android/gms/internal/cast/zzxv;->zzc()Lcom/google/android/gms/internal/cast/zzaao;

    .line 11
    .line 12
    .line 13
    const/4 p0, 0x0

    .line 14
    throw p0
.end method


# virtual methods
.method public final a()V
    .locals 6

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/cast/zzxw;->b:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzxw;->a:Lcom/google/android/gms/internal/cast/zzzv;

    .line 7
    .line 8
    iget v1, v0, Lcom/google/android/gms/internal/cast/zzzz;->f:I

    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    :goto_0
    if-ge v2, v1, :cond_2

    .line 12
    .line 13
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/cast/zzzz;->b(I)Ljava/util/Map$Entry;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    check-cast v3, Lcom/google/android/gms/internal/cast/zzzw;

    .line 18
    .line 19
    iget-object v3, v3, Lcom/google/android/gms/internal/cast/zzzw;->f:Ljava/lang/Object;

    .line 20
    .line 21
    instance-of v4, v3, Lcom/google/android/gms/internal/cast/zzyd;

    .line 22
    .line 23
    if-eqz v4, :cond_1

    .line 24
    .line 25
    check-cast v3, Lcom/google/android/gms/internal/cast/zzyd;

    .line 26
    .line 27
    sget-object v4, Lcom/google/android/gms/internal/cast/zzzp;->c:Lcom/google/android/gms/internal/cast/zzzp;

    .line 28
    .line 29
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 30
    .line 31
    .line 32
    move-result-object v5

    .line 33
    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/cast/zzzp;->a(Ljava/lang/Class;)Lcom/google/android/gms/internal/cast/zzzs;

    .line 34
    .line 35
    .line 36
    move-result-object v4

    .line 37
    invoke-interface {v4, v3}, Lcom/google/android/gms/internal/cast/zzzs;->h(Ljava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v3}, Lcom/google/android/gms/internal/cast/zzyd;->m()V

    .line 41
    .line 42
    .line 43
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/cast/zzzz;->c()Ljava/util/Set;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    :cond_3
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 55
    .line 56
    .line 57
    move-result v2

    .line 58
    if-eqz v2, :cond_4

    .line 59
    .line 60
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object v2

    .line 64
    check-cast v2, Ljava/util/Map$Entry;

    .line 65
    .line 66
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object v2

    .line 70
    instance-of v3, v2, Lcom/google/android/gms/internal/cast/zzyd;

    .line 71
    .line 72
    if-eqz v3, :cond_3

    .line 73
    .line 74
    check-cast v2, Lcom/google/android/gms/internal/cast/zzyd;

    .line 75
    .line 76
    sget-object v3, Lcom/google/android/gms/internal/cast/zzzp;->c:Lcom/google/android/gms/internal/cast/zzzp;

    .line 77
    .line 78
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 79
    .line 80
    .line 81
    move-result-object v4

    .line 82
    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/cast/zzzp;->a(Ljava/lang/Class;)Lcom/google/android/gms/internal/cast/zzzs;

    .line 83
    .line 84
    .line 85
    move-result-object v3

    .line 86
    invoke-interface {v3, v2}, Lcom/google/android/gms/internal/cast/zzzs;->h(Ljava/lang/Object;)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {v2}, Lcom/google/android/gms/internal/cast/zzyd;->m()V

    .line 90
    .line 91
    .line 92
    goto :goto_1

    .line 93
    :cond_4
    invoke-virtual {v0}, Lcom/google/android/gms/internal/cast/zzzv;->a()V

    .line 94
    .line 95
    .line 96
    const/4 v0, 0x1

    .line 97
    iput-boolean v0, p0, Lcom/google/android/gms/internal/cast/zzxw;->b:Z

    .line 98
    .line 99
    return-void
.end method

.method public final b()Ljava/util/Iterator;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzxw;->a:Lcom/google/android/gms/internal/cast/zzzv;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/AbstractMap;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    invoke-static {}, Ljava/util/Collections;->emptyIterator()Ljava/util/Iterator;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    return-object v0

    .line 14
    :cond_0
    iget-boolean v1, p0, Lcom/google/android/gms/internal/cast/zzxw;->c:Z

    .line 15
    .line 16
    if-eqz v1, :cond_1

    .line 17
    .line 18
    new-instance v1, Lcom/google/android/gms/internal/cast/zzyr;

    .line 19
    .line 20
    invoke-virtual {v0}, Lcom/google/android/gms/internal/cast/zzzz;->entrySet()Ljava/util/Set;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    check-cast v0, Lcom/google/android/gms/internal/cast/zzzy;

    .line 25
    .line 26
    invoke-virtual {v0}, Lcom/google/android/gms/internal/cast/zzzy;->iterator()Ljava/util/Iterator;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/cast/zzyr;-><init>(Ljava/util/Iterator;)V

    .line 31
    .line 32
    .line 33
    return-object v1

    .line 34
    :cond_1
    invoke-virtual {v0}, Lcom/google/android/gms/internal/cast/zzzz;->entrySet()Ljava/util/Set;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    check-cast v0, Lcom/google/android/gms/internal/cast/zzzy;

    .line 39
    .line 40
    invoke-virtual {v0}, Lcom/google/android/gms/internal/cast/zzzy;->iterator()Ljava/util/Iterator;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    return-object v0
.end method

.method public final c()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzxw;->a:Lcom/google/android/gms/internal/cast/zzzv;

    .line 2
    .line 3
    iget v1, v0, Lcom/google/android/gms/internal/cast/zzzz;->f:I

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-gtz v1, :cond_1

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/google/android/gms/internal/cast/zzzz;->c()Ljava/util/Set;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-nez v1, :cond_0

    .line 21
    .line 22
    const/4 v0, 0x1

    .line 23
    return v0

    .line 24
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    check-cast v0, Ljava/util/Map$Entry;

    .line 29
    .line 30
    invoke-static {v0}, Lcom/google/android/gms/internal/cast/zzxw;->d(Ljava/util/Map$Entry;)Z

    .line 31
    .line 32
    .line 33
    throw v2

    .line 34
    :cond_1
    const/4 v1, 0x0

    .line 35
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/cast/zzzz;->b(I)Ljava/util/Map$Entry;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-static {v0}, Lcom/google/android/gms/internal/cast/zzxw;->d(Ljava/util/Map$Entry;)Z

    .line 40
    .line 41
    .line 42
    throw v2
.end method

.method public final clone()Ljava/lang/Object;
    .locals 4

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/cast/zzxw;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/android/gms/internal/cast/zzxw;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/google/android/gms/internal/cast/zzxw;->a:Lcom/google/android/gms/internal/cast/zzzv;

    .line 7
    .line 8
    iget v2, v1, Lcom/google/android/gms/internal/cast/zzzz;->f:I

    .line 9
    .line 10
    const/4 v3, 0x0

    .line 11
    if-gtz v2, :cond_1

    .line 12
    .line 13
    invoke-virtual {v1}, Lcom/google/android/gms/internal/cast/zzzz;->c()Ljava/util/Set;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    if-nez v2, :cond_0

    .line 26
    .line 27
    iget-boolean v1, p0, Lcom/google/android/gms/internal/cast/zzxw;->c:Z

    .line 28
    .line 29
    iput-boolean v1, v0, Lcom/google/android/gms/internal/cast/zzxw;->c:Z

    .line 30
    .line 31
    return-object v0

    .line 32
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    check-cast v0, Ljava/util/Map$Entry;

    .line 37
    .line 38
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    check-cast v1, Lcom/google/android/gms/internal/cast/zzxv;

    .line 43
    .line 44
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    invoke-interface {v1}, Lcom/google/android/gms/internal/cast/zzxv;->zzd()Z

    .line 48
    .line 49
    .line 50
    throw v3

    .line 51
    :cond_1
    const/4 v0, 0x0

    .line 52
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/cast/zzzz;->b(I)Ljava/util/Map$Entry;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    check-cast v0, Lcom/google/android/gms/internal/cast/zzzw;

    .line 57
    .line 58
    iget-object v0, v0, Lcom/google/android/gms/internal/cast/zzzw;->c:Ljava/lang/Comparable;

    .line 59
    .line 60
    check-cast v0, Lcom/google/android/gms/internal/cast/zzxv;

    .line 61
    .line 62
    invoke-interface {v0}, Lcom/google/android/gms/internal/cast/zzxv;->zzd()Z

    .line 63
    .line 64
    .line 65
    throw v3
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    if-ne p0, p1, :cond_0

    .line 2
    .line 3
    const/4 p1, 0x1

    .line 4
    return p1

    .line 5
    :cond_0
    instance-of v0, p1, Lcom/google/android/gms/internal/cast/zzxw;

    .line 6
    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    const/4 p1, 0x0

    .line 10
    return p1

    .line 11
    :cond_1
    check-cast p1, Lcom/google/android/gms/internal/cast/zzxw;

    .line 12
    .line 13
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzxw;->a:Lcom/google/android/gms/internal/cast/zzzv;

    .line 14
    .line 15
    iget-object p1, p1, Lcom/google/android/gms/internal/cast/zzxw;->a:Lcom/google/android/gms/internal/cast/zzzv;

    .line 16
    .line 17
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/cast/zzzz;->equals(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    return p1
.end method

.method public final hashCode()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzxw;->a:Lcom/google/android/gms/internal/cast/zzzv;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/cast/zzzz;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method
