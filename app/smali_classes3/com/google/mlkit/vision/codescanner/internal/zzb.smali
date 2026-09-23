.class public final synthetic Lcom/google/mlkit/vision/codescanner/internal/zzb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/tasks/OnCompleteListener;


# instance fields
.field public final synthetic a:Lcom/google/mlkit/vision/codescanner/internal/zze;

.field public final synthetic b:J

.field public final synthetic c:J


# direct methods
.method public synthetic constructor <init>(Lcom/google/mlkit/vision/codescanner/internal/zze;JJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/mlkit/vision/codescanner/internal/zzb;->a:Lcom/google/mlkit/vision/codescanner/internal/zze;

    iput-wide p2, p0, Lcom/google/mlkit/vision/codescanner/internal/zzb;->b:J

    iput-wide p4, p0, Lcom/google/mlkit/vision/codescanner/internal/zzb;->c:J

    return-void
.end method


# virtual methods
.method public final onComplete(Lcom/google/android/gms/tasks/Task;)V
    .locals 6

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->n()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const/16 p1, 0xc9

    .line 8
    .line 9
    :goto_0
    move v5, p1

    .line 10
    goto :goto_1

    .line 11
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->p()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_1

    .line 16
    .line 17
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->l()Ljava/lang/Exception;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    check-cast p1, Lcom/google/mlkit/common/MlKitException;

    .line 22
    .line 23
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    check-cast p1, Lcom/google/mlkit/common/MlKitException;

    .line 28
    .line 29
    iget p1, p1, Lcom/google/mlkit/common/MlKitException;->c:I

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_1
    const/4 p1, 0x0

    .line 33
    goto :goto_0

    .line 34
    :goto_1
    iget-object v0, p0, Lcom/google/mlkit/vision/codescanner/internal/zzb;->a:Lcom/google/mlkit/vision/codescanner/internal/zze;

    .line 35
    .line 36
    iget-wide v1, p0, Lcom/google/mlkit/vision/codescanner/internal/zzb;->b:J

    .line 37
    .line 38
    iget-wide v3, p0, Lcom/google/mlkit/vision/codescanner/internal/zzb;->c:J

    .line 39
    .line 40
    invoke-virtual/range {v0 .. v5}, Lcom/google/mlkit/vision/codescanner/internal/zze;->b(JJI)V

    .line 41
    .line 42
    .line 43
    return-void
.end method
