.class final Lcom/google/android/gms/internal/cast/zzgo;
.super Lcom/google/android/gms/internal/cast/zzgt;
.source "SourceFile"


# instance fields
.field public final synthetic c:Lcom/google/android/gms/internal/cast/zzgp;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/cast/zzgp;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/cast/zzgo;->c:Lcom/google/android/gms/internal/cast/zzgp;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzgo;->c:Lcom/google/android/gms/internal/cast/zzgp;

    .line 2
    .line 3
    iget v1, v0, Lcom/google/android/gms/internal/cast/zzgp;->d:I

    .line 4
    .line 5
    add-int/lit8 v1, v1, 0x1

    .line 6
    .line 7
    iput v1, v0, Lcom/google/android/gms/internal/cast/zzgp;->d:I

    .line 8
    .line 9
    iget-object v1, v0, Lcom/google/android/gms/internal/cast/zzgp;->b:Landroid/animation/AnimatorSet;

    .line 10
    .line 11
    iget-object v2, v0, Lcom/google/android/gms/internal/cast/zzgn;->a:Landroidx/collection/SimpleArrayMap;

    .line 12
    .line 13
    invoke-virtual {v2, v1}, Landroidx/collection/SimpleArrayMap;->containsKey(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result v3

    .line 17
    if-eqz v3, :cond_0

    .line 18
    .line 19
    invoke-virtual {v2, v1}, Landroidx/collection/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    check-cast v2, Ljava/lang/Boolean;

    .line 24
    .line 25
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    if-eqz v2, :cond_0

    .line 30
    .line 31
    return-void

    .line 32
    :cond_0
    invoke-virtual {v1}, Landroid/animation/Animator;->isStarted()Z

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    if-nez v2, :cond_3

    .line 37
    .line 38
    iget v2, v0, Lcom/google/android/gms/internal/cast/zzgp;->c:I

    .line 39
    .line 40
    const/4 v3, -0x1

    .line 41
    if-ne v2, v3, :cond_1

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_1
    iget v0, v0, Lcom/google/android/gms/internal/cast/zzgp;->d:I

    .line 45
    .line 46
    if-ltz v0, :cond_2

    .line 47
    .line 48
    goto :goto_1

    .line 49
    :cond_2
    :goto_0
    invoke-virtual {v1}, Landroid/animation/Animator;->start()V

    .line 50
    .line 51
    .line 52
    :cond_3
    :goto_1
    return-void
.end method
