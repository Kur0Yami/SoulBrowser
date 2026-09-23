.class final synthetic Lcom/google/android/gms/internal/cast/zzz;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/cast/zzhg;


# static fields
.field public static final synthetic a:Lcom/google/android/gms/internal/cast/zzz;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/cast/zzz;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/google/android/gms/internal/cast/zzz;->a:Lcom/google/android/gms/internal/cast/zzz;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final zza()Ljava/lang/Object;
    .locals 2

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/cast/zzaa;->v:Lcom/google/android/gms/cast/internal/Logger;

    .line 2
    .line 3
    sget-object v0, Lcom/google/android/gms/cast/framework/CastContext;->l:Lcom/google/android/gms/cast/internal/Logger;

    .line 4
    .line 5
    const-string v0, "Must be called from the main thread."

    .line 6
    .line 7
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    sget-object v1, Lcom/google/android/gms/cast/framework/CastContext;->n:Lcom/google/android/gms/cast/framework/CastContext;

    .line 11
    .line 12
    invoke-static {v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    check-cast v1, Lcom/google/android/gms/cast/framework/CastContext;

    .line 17
    .line 18
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    .line 20
    .line 21
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    iget-object v0, v1, Lcom/google/android/gms/cast/framework/CastContext;->e:Lcom/google/android/gms/cast/framework/CastOptions;

    .line 25
    .line 26
    iget-object v0, v0, Lcom/google/android/gms/cast/framework/CastOptions;->c:Ljava/lang/String;

    .line 27
    .line 28
    return-object v0
.end method
