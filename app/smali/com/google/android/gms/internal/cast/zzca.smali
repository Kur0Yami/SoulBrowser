.class final synthetic Lcom/google/android/gms/internal/cast/zzca;
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

    iput-object p1, p0, Lcom/google/android/gms/internal/cast/zzca;->c:Lcom/google/android/gms/internal/cast/zzce;

    return-void
.end method


# virtual methods
.method public final synthetic run()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/cast/zzbz;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/android/gms/internal/cast/zzca;->c:Lcom/google/android/gms/internal/cast/zzce;

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/cast/zzbz;-><init>(Lcom/google/android/gms/internal/cast/zzce;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, v1, Lcom/google/android/gms/internal/cast/zzce;->g:Lcom/google/android/gms/cast/framework/SessionManager;

    .line 9
    .line 10
    invoke-static {v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    check-cast v1, Lcom/google/android/gms/cast/framework/SessionManager;

    .line 15
    .line 16
    invoke-virtual {v1, v0}, Lcom/google/android/gms/cast/framework/SessionManager;->a(Lcom/google/android/gms/cast/framework/SessionManagerListener;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method
