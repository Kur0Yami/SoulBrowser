.class public Lcom/google/android/gms/cast/internal/zzq;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/google/android/gms/cast/internal/Logger;

.field public final b:Ljava/lang/String;

.field public c:Lcom/google/android/gms/cast/internal/zzas;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Lcom/google/android/gms/cast/internal/CastUtils;->b(Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lcom/google/android/gms/cast/internal/zzq;->b:Ljava/lang/String;

    .line 8
    .line 9
    new-instance p1, Lcom/google/android/gms/cast/internal/Logger;

    .line 10
    .line 11
    const-string v0, "MediaControlChannel"

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    invoke-direct {p1, v0, v1}, Lcom/google/android/gms/cast/internal/Logger;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    iput-object p1, p0, Lcom/google/android/gms/cast/internal/zzq;->a:Lcom/google/android/gms/cast/internal/Logger;

    .line 18
    .line 19
    return-void
.end method


# virtual methods
.method public final a(JLjava/lang/String;)V
    .locals 7

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v1, v0, [Ljava/lang/Object;

    .line 3
    .line 4
    const/4 v2, 0x0

    .line 5
    aput-object p3, v1, v2

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    const/4 v4, 0x1

    .line 9
    aput-object v3, v1, v4

    .line 10
    .line 11
    iget-object v3, p0, Lcom/google/android/gms/cast/internal/zzq;->a:Lcom/google/android/gms/cast/internal/Logger;

    .line 12
    .line 13
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    iget-object v4, v3, Lcom/google/android/gms/cast/internal/Logger;->a:Ljava/lang/String;

    .line 17
    .line 18
    sget-object v5, Landroid/os/Build;->TYPE:Ljava/lang/String;

    .line 19
    .line 20
    const-string v6, "user"

    .line 21
    .line 22
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    move-result v5

    .line 26
    if-nez v5, :cond_0

    .line 27
    .line 28
    iget-boolean v5, v3, Lcom/google/android/gms/cast/internal/Logger;->b:Z

    .line 29
    .line 30
    if-eqz v5, :cond_0

    .line 31
    .line 32
    invoke-static {v4, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    if-eqz v0, :cond_0

    .line 37
    .line 38
    const-string v0, "Sending text message: %s to: %s"

    .line 39
    .line 40
    invoke-virtual {v3, v0, v1}, Lcom/google/android/gms/cast/internal/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    invoke-static {v4, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    .line 46
    .line 47
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/cast/internal/zzq;->c:Lcom/google/android/gms/cast/internal/zzas;

    .line 48
    .line 49
    if-nez v0, :cond_1

    .line 50
    .line 51
    new-array p1, v2, [Ljava/lang/Object;

    .line 52
    .line 53
    const-string p2, "Attempt to send text message without a sink"

    .line 54
    .line 55
    invoke-virtual {v3, p2, p1}, Lcom/google/android/gms/cast/internal/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    invoke-static {v4, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    .line 61
    .line 62
    return-void

    .line 63
    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/cast/internal/zzq;->b:Ljava/lang/String;

    .line 64
    .line 65
    invoke-interface {v0, p1, p2, v1, p3}, Lcom/google/android/gms/cast/internal/zzas;->a(JLjava/lang/String;Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    return-void
.end method

.method public final b()J
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/cast/internal/zzq;->c:Lcom/google/android/gms/cast/internal/zzas;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    new-array v0, v0, [Ljava/lang/Object;

    .line 7
    .line 8
    iget-object v1, p0, Lcom/google/android/gms/cast/internal/zzq;->a:Lcom/google/android/gms/cast/internal/Logger;

    .line 9
    .line 10
    iget-object v2, v1, Lcom/google/android/gms/cast/internal/Logger;->a:Ljava/lang/String;

    .line 11
    .line 12
    const-string v3, "Attempt to generate requestId without a sink"

    .line 13
    .line 14
    invoke-virtual {v1, v3, v0}, Lcom/google/android/gms/cast/internal/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    .line 20
    .line 21
    const-wide/16 v0, 0x0

    .line 22
    .line 23
    return-wide v0

    .line 24
    :cond_0
    invoke-interface {v0}, Lcom/google/android/gms/cast/internal/zzas;->zzc()J

    .line 25
    .line 26
    .line 27
    move-result-wide v0

    .line 28
    return-wide v0
.end method
