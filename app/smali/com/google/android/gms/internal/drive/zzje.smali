.class final Lcom/google/android/gms/internal/drive/zzje;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/google/android/gms/internal/drive/zzjc;",
        ">;"
    }
.end annotation


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 4

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/drive/zzjc;

    .line 2
    .line 3
    check-cast p2, Lcom/google/android/gms/internal/drive/zzjc;

    .line 4
    .line 5
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    new-instance v0, Lcom/google/android/gms/internal/drive/zzjd;

    .line 9
    .line 10
    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/drive/zzjd;-><init>(Lcom/google/android/gms/internal/drive/zzjc;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    new-instance v1, Lcom/google/android/gms/internal/drive/zzjd;

    .line 17
    .line 18
    invoke-direct {v1, p2}, Lcom/google/android/gms/internal/drive/zzjd;-><init>(Lcom/google/android/gms/internal/drive/zzjc;)V

    .line 19
    .line 20
    .line 21
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    if-eqz v2, :cond_1

    .line 26
    .line 27
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    if-eqz v2, :cond_1

    .line 32
    .line 33
    invoke-interface {v0}, Lcom/google/android/gms/internal/drive/zzjj;->nextByte()B

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    and-int/lit16 v2, v2, 0xff

    .line 38
    .line 39
    invoke-interface {v1}, Lcom/google/android/gms/internal/drive/zzjj;->nextByte()B

    .line 40
    .line 41
    .line 42
    move-result v3

    .line 43
    and-int/lit16 v3, v3, 0xff

    .line 44
    .line 45
    invoke-static {v2, v3}, Ljava/lang/Integer;->compare(II)I

    .line 46
    .line 47
    .line 48
    move-result v2

    .line 49
    if-eqz v2, :cond_0

    .line 50
    .line 51
    return v2

    .line 52
    :cond_1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/drive/zzjc;->size()I

    .line 53
    .line 54
    .line 55
    move-result p1

    .line 56
    invoke-virtual {p2}, Lcom/google/android/gms/internal/drive/zzjc;->size()I

    .line 57
    .line 58
    .line 59
    move-result p2

    .line 60
    invoke-static {p1, p2}, Ljava/lang/Integer;->compare(II)I

    .line 61
    .line 62
    .line 63
    move-result p1

    .line 64
    return p1
.end method
