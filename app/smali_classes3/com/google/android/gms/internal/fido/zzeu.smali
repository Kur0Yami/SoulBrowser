.class public final Lcom/google/android/gms/internal/fido/zzeu;
.super Lcom/google/android/gms/internal/fido/zzei;
.source "SourceFile"


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 1
    new-instance v0, Ljava/util/HashSet;

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    new-array v1, v1, [Lcom/google/android/gms/internal/fido/zzdk;

    .line 5
    .line 6
    sget-object v2, Lcom/google/android/gms/internal/fido/zzdh;->a:Lcom/google/android/gms/internal/fido/zzdk;

    .line 7
    .line 8
    const/4 v3, 0x0

    .line 9
    aput-object v2, v1, v3

    .line 10
    .line 11
    sget-object v2, Lcom/google/android/gms/internal/fido/zzdm;->b:Lcom/google/android/gms/internal/fido/zzdk;

    .line 12
    .line 13
    const/4 v3, 0x1

    .line 14
    aput-object v2, v1, v3

    .line 15
    .line 16
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 21
    .line 22
    .line 23
    invoke-static {v0}, Lj$/util/DesugarCollections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    new-instance v1, Lcom/google/android/gms/internal/fido/zzdv;

    .line 28
    .line 29
    invoke-direct {v1}, Lcom/google/android/gms/internal/fido/zzdv;-><init>()V

    .line 30
    .line 31
    .line 32
    sget-object v2, Lcom/google/android/gms/internal/fido/zzed;->b:Lcom/google/android/gms/internal/fido/zzdy;

    .line 33
    .line 34
    iput-object v2, v1, Lcom/google/android/gms/internal/fido/zzdv;->d:Lcom/google/android/gms/internal/fido/zzdy;

    .line 35
    .line 36
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 41
    .line 42
    .line 43
    move-result v2

    .line 44
    if-eqz v2, :cond_3

    .line 45
    .line 46
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    check-cast v2, Lcom/google/android/gms/internal/fido/zzdk;

    .line 51
    .line 52
    if-eqz v2, :cond_2

    .line 53
    .line 54
    iget-boolean v3, v2, Lcom/google/android/gms/internal/fido/zzdk;->c:Z

    .line 55
    .line 56
    iget-object v4, v1, Lcom/google/android/gms/internal/fido/zzdv;->b:Ljava/util/HashMap;

    .line 57
    .line 58
    iget-object v5, v1, Lcom/google/android/gms/internal/fido/zzdv;->a:Ljava/util/HashMap;

    .line 59
    .line 60
    if-eqz v3, :cond_1

    .line 61
    .line 62
    if-eqz v3, :cond_0

    .line 63
    .line 64
    invoke-virtual {v5, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    sget-object v3, Lcom/google/android/gms/internal/fido/zzdv;->f:Lcom/google/android/gms/internal/fido/zzdy;

    .line 68
    .line 69
    invoke-virtual {v4, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 74
    .line 75
    const-string v1, "key must be repeating"

    .line 76
    .line 77
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    throw v0

    .line 81
    :cond_1
    invoke-virtual {v4, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    sget-object v3, Lcom/google/android/gms/internal/fido/zzdv;->e:Lcom/google/android/gms/internal/fido/zzdz;

    .line 85
    .line 86
    invoke-virtual {v5, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    goto :goto_0

    .line 90
    :cond_2
    const-string v0, " must not be null"

    .line 91
    .line 92
    const-string v1, "key"

    .line 93
    .line 94
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    new-instance v1, Ljava/lang/NullPointerException;

    .line 99
    .line 100
    invoke-direct {v1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    throw v1

    .line 104
    :cond_3
    new-instance v0, Lcom/google/android/gms/internal/fido/zzdx;

    .line 105
    .line 106
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/fido/zzdx;-><init>(Lcom/google/android/gms/internal/fido/zzdv;)V

    .line 107
    .line 108
    .line 109
    sget-object v0, Ljava/util/logging/Level;->ALL:Ljava/util/logging/Level;

    .line 110
    .line 111
    return-void
.end method
