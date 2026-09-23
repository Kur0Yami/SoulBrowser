.class final Lcom/google/android/gms/internal/cast/zzaa;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final v:Lcom/google/android/gms/cast/internal/Logger;

.field public static final w:Ljava/lang/String;

.field public static x:J


# instance fields
.field public final a:Lcom/google/android/gms/internal/cast/zzhg;

.field public final b:Ljava/util/List;

.field public final c:Ljava/util/List;

.field public final d:Ljava/util/List;

.field public final e:Ljava/util/Map;

.field public final f:Lcom/google/android/gms/internal/cast/zzj;

.field public final g:Ljava/lang/String;

.field public final h:J

.field public final i:J

.field public j:Lcom/google/android/gms/cast/framework/CastSession;

.field public k:Ljava/lang/String;

.field public l:Ljava/lang/String;

.field public m:Lcom/google/android/gms/internal/cast/zzt;

.field public n:Ljava/lang/String;

.field public o:Ljava/lang/String;

.field public p:Ljava/lang/String;

.field public q:Ljava/lang/String;

.field public r:Ljava/lang/String;

.field public s:Ljava/lang/String;

.field public t:I

.field public u:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/google/android/gms/cast/internal/Logger;

    .line 2
    .line 3
    const-string v1, "SessionFlowSummary"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/cast/internal/Logger;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lcom/google/android/gms/internal/cast/zzaa;->v:Lcom/google/android/gms/cast/internal/Logger;

    .line 10
    .line 11
    const-string v0, "22.2.0"

    .line 12
    .line 13
    sput-object v0, Lcom/google/android/gms/internal/cast/zzaa;->w:Ljava/lang/String;

    .line 14
    .line 15
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 16
    .line 17
    .line 18
    move-result-wide v0

    .line 19
    sput-wide v0, Lcom/google/android/gms/internal/cast/zzaa;->x:J

    .line 20
    .line 21
    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/cast/zzj;Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/google/android/gms/internal/cast/zzhi;

    .line 5
    .line 6
    invoke-direct {v0}, Lcom/google/android/gms/internal/cast/zzhi;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/google/android/gms/internal/cast/zzaa;->a:Lcom/google/android/gms/internal/cast/zzhg;

    .line 10
    .line 11
    new-instance v0, Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 14
    .line 15
    .line 16
    invoke-static {v0}, Lj$/util/DesugarCollections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    iput-object v0, p0, Lcom/google/android/gms/internal/cast/zzaa;->b:Ljava/util/List;

    .line 21
    .line 22
    new-instance v0, Ljava/util/ArrayList;

    .line 23
    .line 24
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 25
    .line 26
    .line 27
    invoke-static {v0}, Lj$/util/DesugarCollections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    iput-object v0, p0, Lcom/google/android/gms/internal/cast/zzaa;->c:Ljava/util/List;

    .line 32
    .line 33
    new-instance v0, Ljava/util/ArrayList;

    .line 34
    .line 35
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 36
    .line 37
    .line 38
    invoke-static {v0}, Lj$/util/DesugarCollections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    iput-object v0, p0, Lcom/google/android/gms/internal/cast/zzaa;->d:Ljava/util/List;

    .line 43
    .line 44
    new-instance v0, Ljava/util/HashMap;

    .line 45
    .line 46
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 47
    .line 48
    .line 49
    invoke-static {v0}, Lj$/util/DesugarCollections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    iput-object v0, p0, Lcom/google/android/gms/internal/cast/zzaa;->e:Ljava/util/Map;

    .line 54
    .line 55
    const/4 v0, 0x0

    .line 56
    iput v0, p0, Lcom/google/android/gms/internal/cast/zzaa;->t:I

    .line 57
    .line 58
    iput-object p1, p0, Lcom/google/android/gms/internal/cast/zzaa;->f:Lcom/google/android/gms/internal/cast/zzj;

    .line 59
    .line 60
    iput-object p2, p0, Lcom/google/android/gms/internal/cast/zzaa;->g:Ljava/lang/String;

    .line 61
    .line 62
    invoke-static {}, Lcom/google/android/gms/common/util/DefaultClock;->getInstance()Lcom/google/android/gms/common/util/Clock;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    invoke-interface {p1}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    .line 67
    .line 68
    .line 69
    move-result-wide p1

    .line 70
    iput-wide p1, p0, Lcom/google/android/gms/internal/cast/zzaa;->h:J

    .line 71
    .line 72
    sget-wide p1, Lcom/google/android/gms/internal/cast/zzaa;->x:J

    .line 73
    .line 74
    const-wide/16 v0, 0x1

    .line 75
    .line 76
    add-long/2addr v0, p1

    .line 77
    sput-wide v0, Lcom/google/android/gms/internal/cast/zzaa;->x:J

    .line 78
    .line 79
    iput-wide p1, p0, Lcom/google/android/gms/internal/cast/zzaa;->i:J

    .line 80
    .line 81
    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/cast/framework/CastSession;)V
    .locals 3

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    const/4 p1, 0x2

    .line 4
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/cast/zzaa;->b(I)V

    .line 5
    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    const-string v0, "Must be called from the main thread."

    .line 9
    .line 10
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    iget-object v0, p1, Lcom/google/android/gms/cast/framework/CastSession;->k:Lcom/google/android/gms/cast/CastDevice;

    .line 14
    .line 15
    if-nez v0, :cond_1

    .line 16
    .line 17
    const/4 p1, 0x3

    .line 18
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/cast/zzaa;->b(I)V

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    :cond_1
    iget-object v1, v0, Lcom/google/android/gms/cast/CastDevice;->p:Ljava/lang/String;

    .line 23
    .line 24
    iput-object p1, p0, Lcom/google/android/gms/internal/cast/zzaa;->j:Lcom/google/android/gms/cast/framework/CastSession;

    .line 25
    .line 26
    iget-object v2, p0, Lcom/google/android/gms/internal/cast/zzaa;->l:Ljava/lang/String;

    .line 27
    .line 28
    if-nez v2, :cond_3

    .line 29
    .line 30
    iput-object v1, p0, Lcom/google/android/gms/internal/cast/zzaa;->l:Ljava/lang/String;

    .line 31
    .line 32
    iget-object v1, v0, Lcom/google/android/gms/cast/CastDevice;->i:Ljava/lang/String;

    .line 33
    .line 34
    iput-object v1, p0, Lcom/google/android/gms/internal/cast/zzaa;->n:Ljava/lang/String;

    .line 35
    .line 36
    invoke-virtual {v0}, Lcom/google/android/gms/cast/CastDevice;->zzd()I

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    iput v1, p0, Lcom/google/android/gms/internal/cast/zzaa;->t:I

    .line 41
    .line 42
    invoke-virtual {v0}, Lcom/google/android/gms/cast/CastDevice;->G()Lcom/google/android/gms/cast/internal/zzaa;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    if-eqz v0, :cond_2

    .line 47
    .line 48
    iget-object v1, v0, Lcom/google/android/gms/cast/internal/zzaa;->h:Ljava/lang/String;

    .line 49
    .line 50
    iput-object v1, p0, Lcom/google/android/gms/internal/cast/zzaa;->o:Ljava/lang/String;

    .line 51
    .line 52
    iget-object v1, v0, Lcom/google/android/gms/cast/internal/zzaa;->i:Ljava/lang/String;

    .line 53
    .line 54
    iput-object v1, p0, Lcom/google/android/gms/internal/cast/zzaa;->p:Ljava/lang/String;

    .line 55
    .line 56
    iget-object v1, v0, Lcom/google/android/gms/cast/internal/zzaa;->j:Ljava/lang/String;

    .line 57
    .line 58
    iput-object v1, p0, Lcom/google/android/gms/internal/cast/zzaa;->q:Ljava/lang/String;

    .line 59
    .line 60
    iget-object v1, v0, Lcom/google/android/gms/cast/internal/zzaa;->k:Ljava/lang/String;

    .line 61
    .line 62
    iput-object v1, p0, Lcom/google/android/gms/internal/cast/zzaa;->r:Ljava/lang/String;

    .line 63
    .line 64
    iget-object v0, v0, Lcom/google/android/gms/cast/internal/zzaa;->l:Ljava/lang/String;

    .line 65
    .line 66
    iput-object v0, p0, Lcom/google/android/gms/internal/cast/zzaa;->s:Ljava/lang/String;

    .line 67
    .line 68
    :cond_2
    invoke-virtual {p1}, Lcom/google/android/gms/cast/framework/Session;->i()I

    .line 69
    .line 70
    .line 71
    return-void

    .line 72
    :cond_3
    invoke-static {v2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 73
    .line 74
    .line 75
    move-result p1

    .line 76
    if-nez p1, :cond_4

    .line 77
    .line 78
    const/4 p1, 0x5

    .line 79
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/cast/zzaa;->b(I)V

    .line 80
    .line 81
    .line 82
    :cond_4
    return-void
.end method

.method public final b(I)V
    .locals 4

    .line 1
    add-int/lit8 v0, p1, -0x1

    .line 2
    .line 3
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/google/android/gms/internal/cast/zzaa;->e:Ljava/util/Map;

    .line 8
    .line 9
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    check-cast v2, Lcom/google/android/gms/internal/cast/zzae;

    .line 14
    .line 15
    if-nez v2, :cond_0

    .line 16
    .line 17
    new-instance v2, Lcom/google/android/gms/internal/cast/zzad;

    .line 18
    .line 19
    invoke-direct {v2, p1}, Lcom/google/android/gms/internal/cast/zzad;-><init>(I)V

    .line 20
    .line 21
    .line 22
    new-instance p1, Lcom/google/android/gms/internal/cast/zzae;

    .line 23
    .line 24
    invoke-direct {p1, v2}, Lcom/google/android/gms/internal/cast/zzae;-><init>(Lcom/google/android/gms/internal/cast/zzad;)V

    .line 25
    .line 26
    .line 27
    iget-wide v2, p0, Lcom/google/android/gms/internal/cast/zzaa;->h:J

    .line 28
    .line 29
    iput-wide v2, p1, Lcom/google/android/gms/internal/cast/zzae;->c:J

    .line 30
    .line 31
    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    return-void

    .line 35
    :cond_0
    iget-object p1, v2, Lcom/google/android/gms/internal/cast/zzae;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 36
    .line 37
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 38
    .line 39
    .line 40
    invoke-static {}, Lcom/google/android/gms/common/util/DefaultClock;->getInstance()Lcom/google/android/gms/common/util/Clock;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    invoke-interface {p1}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    .line 45
    .line 46
    .line 47
    move-result-wide v0

    .line 48
    iput-wide v0, v2, Lcom/google/android/gms/internal/cast/zzae;->b:J

    .line 49
    .line 50
    return-void
.end method
