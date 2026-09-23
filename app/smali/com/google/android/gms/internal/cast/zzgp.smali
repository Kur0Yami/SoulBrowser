.class public final Lcom/google/android/gms/internal/cast/zzgp;
.super Lcom/google/android/gms/internal/cast/zzgn;
.source "SourceFile"


# instance fields
.field public final b:Landroid/animation/AnimatorSet;

.field public final c:I

.field public d:I

.field public final e:Lcom/google/android/gms/internal/cast/zzgt;


# direct methods
.method public constructor <init>(Landroid/animation/AnimatorSet;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/cast/zzgn;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/google/android/gms/internal/cast/zzgo;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/cast/zzgo;-><init>(Lcom/google/android/gms/internal/cast/zzgp;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/google/android/gms/internal/cast/zzgp;->e:Lcom/google/android/gms/internal/cast/zzgt;

    .line 10
    .line 11
    iput-object p1, p0, Lcom/google/android/gms/internal/cast/zzgp;->b:Landroid/animation/AnimatorSet;

    .line 12
    .line 13
    const/4 p1, -0x1

    .line 14
    iput p1, p0, Lcom/google/android/gms/internal/cast/zzgp;->c:I

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzgn;->a:Landroidx/collection/SimpleArrayMap;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroidx/collection/SimpleArrayMap;->containsKey(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0, p1}, Landroidx/collection/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    check-cast p1, Ljava/lang/Boolean;

    .line 14
    .line 15
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    if-eqz p1, :cond_0

    .line 20
    .line 21
    return-void

    .line 22
    :cond_0
    sget-object p1, Lcom/google/android/gms/internal/cast/zzgw;->a:Ljava/lang/ThreadLocal;

    .line 23
    .line 24
    invoke-virtual {p1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    check-cast p1, Lcom/google/android/gms/internal/cast/zzgw;

    .line 29
    .line 30
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzgp;->e:Lcom/google/android/gms/internal/cast/zzgt;

    .line 31
    .line 32
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/cast/zzgw;->a(Lcom/google/android/gms/internal/cast/zzgt;)V

    .line 33
    .line 34
    .line 35
    return-void
.end method
