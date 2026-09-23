.class final synthetic Lcom/google/android/gms/cast/framework/zzi;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic a:Landroid/content/Context;

.field public final synthetic b:Lcom/google/android/gms/cast/framework/CastOptions;

.field public final synthetic c:Lcom/google/android/gms/cast/framework/OptionsProvider;

.field public final synthetic d:Lcom/google/android/gms/internal/cast/zzbx;

.field public final synthetic e:Lcom/google/android/gms/cast/internal/zzn;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Lcom/google/android/gms/cast/framework/CastOptions;Lcom/google/android/gms/cast/framework/OptionsProvider;Lcom/google/android/gms/internal/cast/zzbx;Lcom/google/android/gms/cast/internal/zzn;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/cast/framework/zzi;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/cast/framework/zzi;->b:Lcom/google/android/gms/cast/framework/CastOptions;

    iput-object p3, p0, Lcom/google/android/gms/cast/framework/zzi;->c:Lcom/google/android/gms/cast/framework/OptionsProvider;

    iput-object p4, p0, Lcom/google/android/gms/cast/framework/zzi;->d:Lcom/google/android/gms/internal/cast/zzbx;

    iput-object p5, p0, Lcom/google/android/gms/cast/framework/zzi;->e:Lcom/google/android/gms/cast/internal/zzn;

    return-void
.end method


# virtual methods
.method public final synthetic call()Ljava/lang/Object;
    .locals 7

    .line 1
    iget-object v1, p0, Lcom/google/android/gms/cast/framework/zzi;->a:Landroid/content/Context;

    .line 2
    .line 3
    iget-object v2, p0, Lcom/google/android/gms/cast/framework/zzi;->b:Lcom/google/android/gms/cast/framework/CastOptions;

    .line 4
    .line 5
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/zzi;->c:Lcom/google/android/gms/cast/framework/OptionsProvider;

    .line 6
    .line 7
    iget-object v4, p0, Lcom/google/android/gms/cast/framework/zzi;->d:Lcom/google/android/gms/internal/cast/zzbx;

    .line 8
    .line 9
    iget-object v5, p0, Lcom/google/android/gms/cast/framework/zzi;->e:Lcom/google/android/gms/cast/internal/zzn;

    .line 10
    .line 11
    sget-object v6, Lcom/google/android/gms/cast/framework/CastContext;->m:Ljava/lang/Object;

    .line 12
    .line 13
    monitor-enter v6

    .line 14
    :try_start_0
    sget-object v3, Lcom/google/android/gms/cast/framework/CastContext;->n:Lcom/google/android/gms/cast/framework/CastContext;

    .line 15
    .line 16
    if-nez v3, :cond_0

    .line 17
    .line 18
    move-object v3, v0

    .line 19
    new-instance v0, Lcom/google/android/gms/cast/framework/CastContext;

    .line 20
    .line 21
    invoke-interface {v3, v1}, Lcom/google/android/gms/cast/framework/OptionsProvider;->getAdditionalSessionProviders(Landroid/content/Context;)Ljava/util/List;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/cast/framework/CastContext;-><init>(Landroid/content/Context;Lcom/google/android/gms/cast/framework/CastOptions;Ljava/util/List;Lcom/google/android/gms/internal/cast/zzbx;Lcom/google/android/gms/cast/internal/zzn;)V

    .line 26
    .line 27
    .line 28
    sput-object v0, Lcom/google/android/gms/cast/framework/CastContext;->n:Lcom/google/android/gms/cast/framework/CastContext;

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :catchall_0
    move-exception v0

    .line 32
    goto :goto_1

    .line 33
    :cond_0
    :goto_0
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    sget-object v0, Lcom/google/android/gms/cast/framework/CastContext;->n:Lcom/google/android/gms/cast/framework/CastContext;

    .line 35
    .line 36
    return-object v0

    .line 37
    :goto_1
    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 38
    throw v0
.end method
