.class public final synthetic Lcom/google/android/gms/internal/mlkit_vision_text_common/zzud;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/tasks/OnFailureListener;


# instance fields
.field public final synthetic c:Lcom/google/android/gms/internal/mlkit_vision_text_common/zzue;

.field public final synthetic f:J


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/mlkit_vision_text_common/zzue;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzud;->c:Lcom/google/android/gms/internal/mlkit_vision_text_common/zzue;

    iput-wide p2, p0, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzud;->f:J

    return-void
.end method


# virtual methods
.method public final c(Ljava/lang/Exception;)V
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzud;->f:J

    .line 2
    .line 3
    iget-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzud;->c:Lcom/google/android/gms/internal/mlkit_vision_text_common/zzue;

    .line 4
    .line 5
    iget-object p1, p1, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzue;->b:Ljava/util/concurrent/atomic/AtomicLong;

    .line 6
    .line 7
    invoke-virtual {p1, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
