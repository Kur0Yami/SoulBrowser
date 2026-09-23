.class final synthetic Lcom/google/android/gms/internal/cast/zzcd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/google/android/gms/internal/cast/zzce;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/cast/zzce;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/cast/zzcd;->c:Lcom/google/android/gms/internal/cast/zzce;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/cast/zzce;->i:Lcom/google/android/gms/cast/internal/Logger;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/android/gms/internal/cast/zzcd;->c:Lcom/google/android/gms/internal/cast/zzce;

    .line 4
    .line 5
    iget v2, v1, Lcom/google/android/gms/internal/cast/zzce;->e:I

    .line 6
    .line 7
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    const/4 v3, 0x1

    .line 12
    new-array v4, v3, [Ljava/lang/Object;

    .line 13
    .line 14
    const/4 v5, 0x0

    .line 15
    aput-object v2, v4, v5

    .line 16
    .line 17
    iget-object v2, v0, Lcom/google/android/gms/cast/internal/Logger;->a:Ljava/lang/String;

    .line 18
    .line 19
    const-string v6, "transfer with type = %d has timed out"

    .line 20
    .line 21
    invoke-virtual {v0, v6, v4}, Lcom/google/android/gms/cast/internal/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v4

    .line 25
    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    .line 27
    .line 28
    iget v2, v1, Lcom/google/android/gms/internal/cast/zzce;->e:I

    .line 29
    .line 30
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    const/16 v4, 0x65

    .line 35
    .line 36
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 37
    .line 38
    .line 39
    move-result-object v6

    .line 40
    const/4 v7, 0x2

    .line 41
    new-array v7, v7, [Ljava/lang/Object;

    .line 42
    .line 43
    aput-object v2, v7, v5

    .line 44
    .line 45
    aput-object v6, v7, v3

    .line 46
    .line 47
    const-string v2, "notify failed transfer with type = %d, reason = %d"

    .line 48
    .line 49
    invoke-virtual {v0, v2, v7}, Lcom/google/android/gms/cast/internal/Logger;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 50
    .line 51
    .line 52
    iget-object v0, v1, Lcom/google/android/gms/internal/cast/zzce;->b:Ljava/util/Set;

    .line 53
    .line 54
    new-instance v2, Ljava/util/HashSet;

    .line 55
    .line 56
    invoke-direct {v2, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 64
    .line 65
    .line 66
    move-result v2

    .line 67
    if-eqz v2, :cond_0

    .line 68
    .line 69
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object v2

    .line 73
    check-cast v2, Lcom/google/android/gms/cast/framework/SessionTransferCallback;

    .line 74
    .line 75
    iget v3, v1, Lcom/google/android/gms/internal/cast/zzce;->e:I

    .line 76
    .line 77
    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/cast/framework/SessionTransferCallback;->a(II)V

    .line 78
    .line 79
    .line 80
    goto :goto_0

    .line 81
    :cond_0
    invoke-virtual {v1}, Lcom/google/android/gms/internal/cast/zzce;->b()V

    .line 82
    .line 83
    .line 84
    return-void
.end method
