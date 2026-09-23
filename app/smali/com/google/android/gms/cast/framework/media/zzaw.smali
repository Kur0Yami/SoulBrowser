.class final synthetic Lcom/google/android/gms/cast/framework/media/zzaw;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/tasks/OnFailureListener;


# instance fields
.field public final synthetic c:Lcom/google/android/gms/cast/framework/media/zzax;

.field public final synthetic f:J


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/cast/framework/media/zzax;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/cast/framework/media/zzaw;->c:Lcom/google/android/gms/cast/framework/media/zzax;

    iput-wide p2, p0, Lcom/google/android/gms/cast/framework/media/zzaw;->f:J

    return-void
.end method


# virtual methods
.method public final c(Ljava/lang/Exception;)V
    .locals 5

    .line 1
    instance-of v0, p1, Lcom/google/android/gms/common/api/ApiException;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast p1, Lcom/google/android/gms/common/api/ApiException;

    .line 6
    .line 7
    invoke-virtual {p1}, Lcom/google/android/gms/common/api/ApiException;->getStatusCode()I

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/16 p1, 0xd

    .line 13
    .line 14
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/zzaw;->c:Lcom/google/android/gms/cast/framework/media/zzax;

    .line 15
    .line 16
    iget-object v0, v0, Lcom/google/android/gms/cast/framework/media/zzax;->c:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    .line 17
    .line 18
    iget-object v0, v0, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->c:Lcom/google/android/gms/cast/internal/zzar;

    .line 19
    .line 20
    iget-object v0, v0, Lcom/google/android/gms/cast/internal/zzd;->d:Ljava/util/List;

    .line 21
    .line 22
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    if-eqz v1, :cond_1

    .line 31
    .line 32
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    check-cast v1, Lcom/google/android/gms/cast/internal/zzav;

    .line 37
    .line 38
    const/4 v2, 0x0

    .line 39
    iget-wide v3, p0, Lcom/google/android/gms/cast/framework/media/zzaw;->f:J

    .line 40
    .line 41
    invoke-virtual {v1, v3, v4, p1, v2}, Lcom/google/android/gms/cast/internal/zzav;->d(JILcom/google/android/gms/cast/internal/zzaq;)V

    .line 42
    .line 43
    .line 44
    goto :goto_1

    .line 45
    :cond_1
    return-void
.end method
