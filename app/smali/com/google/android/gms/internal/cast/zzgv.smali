.class final Lcom/google/android/gms/internal/cast/zzgv;
.super Lcom/google/android/gms/internal/cast/zzgw;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x10
.end annotation


# instance fields
.field public final b:Landroid/view/Choreographer;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iput-object v0, p0, Lcom/google/android/gms/internal/cast/zzgv;->b:Landroid/view/Choreographer;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/cast/zzgt;)V
    .locals 1

    .line 1
    iget-object v0, p1, Lcom/google/android/gms/internal/cast/zzgt;->b:Landroid/view/Choreographer$FrameCallback;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/google/android/gms/internal/cast/zzgs;

    .line 6
    .line 7
    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/cast/zzgs;-><init>(Lcom/google/android/gms/internal/cast/zzgt;)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p1, Lcom/google/android/gms/internal/cast/zzgt;->b:Landroid/view/Choreographer$FrameCallback;

    .line 11
    .line 12
    :cond_0
    iget-object p1, p1, Lcom/google/android/gms/internal/cast/zzgt;->b:Landroid/view/Choreographer$FrameCallback;

    .line 13
    .line 14
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzgv;->b:Landroid/view/Choreographer;

    .line 15
    .line 16
    invoke-virtual {v0, p1}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method
