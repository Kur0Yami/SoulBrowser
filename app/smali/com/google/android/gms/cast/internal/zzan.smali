.class final Lcom/google/android/gms/cast/internal/zzan;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/cast/internal/zzat;


# instance fields
.field public final synthetic a:Lcom/google/android/gms/cast/internal/zzat;

.field public final synthetic b:Lcom/google/android/gms/cast/internal/zzar;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/cast/internal/zzar;Lcom/google/android/gms/cast/internal/zzat;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lcom/google/android/gms/cast/internal/zzan;->a:Lcom/google/android/gms/cast/internal/zzat;

    .line 5
    .line 6
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lcom/google/android/gms/cast/internal/zzan;->b:Lcom/google/android/gms/cast/internal/zzar;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final a(JJJLjava/lang/String;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/cast/internal/zzan;->a:Lcom/google/android/gms/cast/internal/zzat;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-wide v1, p1

    .line 6
    move-wide v3, p3

    .line 7
    move-wide v5, p5

    .line 8
    move-object v7, p7

    .line 9
    invoke-interface/range {v0 .. v7}, Lcom/google/android/gms/cast/internal/zzat;->a(JJJLjava/lang/String;)V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method public final b(Ljava/lang/String;JILjava/lang/Object;JJ)V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/cast/internal/zzan;->a:Lcom/google/android/gms/cast/internal/zzat;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    const/16 v1, 0x7d1

    .line 6
    .line 7
    if-ne p4, v1, :cond_0

    .line 8
    .line 9
    iget-object p4, p0, Lcom/google/android/gms/cast/internal/zzan;->b:Lcom/google/android/gms/cast/internal/zzar;

    .line 10
    .line 11
    iget v2, p4, Lcom/google/android/gms/cast/internal/zzar;->i:I

    .line 12
    .line 13
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    const/4 v3, 0x1

    .line 18
    new-array v3, v3, [Ljava/lang/Object;

    .line 19
    .line 20
    const/4 v4, 0x0

    .line 21
    aput-object v2, v3, v4

    .line 22
    .line 23
    iget-object v2, p4, Lcom/google/android/gms/cast/internal/zzq;->a:Lcom/google/android/gms/cast/internal/Logger;

    .line 24
    .line 25
    iget-object v4, v2, Lcom/google/android/gms/cast/internal/Logger;->a:Ljava/lang/String;

    .line 26
    .line 27
    const-string v5, "Possibility of local queue out of sync with receiver queue. Refetching sequence number. Current Local Sequence Number = %d"

    .line 28
    .line 29
    invoke-virtual {v2, v5, v3}, Lcom/google/android/gms/cast/internal/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    invoke-static {v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    .line 35
    .line 36
    iget-object p4, p4, Lcom/google/android/gms/cast/internal/zzar;->h:Lcom/google/android/gms/cast/internal/zzao;

    .line 37
    .line 38
    invoke-interface {p4}, Lcom/google/android/gms/cast/internal/zzao;->zzm()V

    .line 39
    .line 40
    .line 41
    move v4, v1

    .line 42
    move-wide v2, p2

    .line 43
    move-object v5, p5

    .line 44
    move-wide/from16 v6, p6

    .line 45
    .line 46
    move-wide/from16 v8, p8

    .line 47
    .line 48
    move-object v1, p1

    .line 49
    goto :goto_0

    .line 50
    :cond_0
    move v4, p4

    .line 51
    move-object v1, p1

    .line 52
    move-wide v2, p2

    .line 53
    move-object v5, p5

    .line 54
    move-wide/from16 v6, p6

    .line 55
    .line 56
    move-wide/from16 v8, p8

    .line 57
    .line 58
    :goto_0
    invoke-interface/range {v0 .. v9}, Lcom/google/android/gms/cast/internal/zzat;->b(Ljava/lang/String;JILjava/lang/Object;JJ)V

    .line 59
    .line 60
    .line 61
    :cond_1
    return-void
.end method
