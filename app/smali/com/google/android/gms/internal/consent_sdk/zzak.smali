.class final Lcom/google/android/gms/internal/consent_sdk/zzak;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/consent_sdk/zzaz;


# instance fields
.field public final a:Lcom/google/android/gms/internal/consent_sdk/zztf;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/consent_sdk/zzah;Lcom/google/android/gms/internal/consent_sdk/zzbs;)V
    .locals 10

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p1, Lcom/google/android/gms/internal/consent_sdk/zzah;->c:Lcom/google/android/gms/internal/consent_sdk/zzti;

    .line 5
    .line 6
    new-instance v1, Lcom/google/android/gms/internal/consent_sdk/zzca;

    .line 7
    .line 8
    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/consent_sdk/zzca;-><init>(Lcom/google/android/gms/internal/consent_sdk/zzti;)V

    .line 9
    .line 10
    .line 11
    invoke-static {v1}, Lcom/google/android/gms/internal/consent_sdk/zztg;->a(Lcom/google/android/gms/internal/consent_sdk/zzth;)Lcom/google/android/gms/internal/consent_sdk/zztg;

    .line 12
    .line 13
    .line 14
    move-result-object v4

    .line 15
    new-instance v0, Lcom/google/android/gms/internal/consent_sdk/zzti;

    .line 16
    .line 17
    if-eqz p2, :cond_1

    .line 18
    .line 19
    invoke-direct {v0, p2}, Lcom/google/android/gms/internal/consent_sdk/zzti;-><init>(Ljava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    new-instance v7, Lcom/google/android/gms/internal/consent_sdk/zztf;

    .line 23
    .line 24
    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    .line 25
    .line 26
    .line 27
    iput-object v7, p0, Lcom/google/android/gms/internal/consent_sdk/zzak;->a:Lcom/google/android/gms/internal/consent_sdk/zztf;

    .line 28
    .line 29
    iget-object v3, p1, Lcom/google/android/gms/internal/consent_sdk/zzah;->c:Lcom/google/android/gms/internal/consent_sdk/zzti;

    .line 30
    .line 31
    iget-object v5, p1, Lcom/google/android/gms/internal/consent_sdk/zzah;->h:Lcom/google/android/gms/internal/consent_sdk/zztg;

    .line 32
    .line 33
    iget-object v6, p1, Lcom/google/android/gms/internal/consent_sdk/zzah;->i:Lcom/google/android/gms/internal/consent_sdk/zzap;

    .line 34
    .line 35
    iget-object v8, p1, Lcom/google/android/gms/internal/consent_sdk/zzah;->d:Lcom/google/android/gms/internal/consent_sdk/zztg;

    .line 36
    .line 37
    new-instance v2, Lcom/google/android/gms/internal/consent_sdk/zzce;

    .line 38
    .line 39
    invoke-direct/range {v2 .. v8}, Lcom/google/android/gms/internal/consent_sdk/zzce;-><init>(Lcom/google/android/gms/internal/consent_sdk/zzti;Lcom/google/android/gms/internal/consent_sdk/zztg;Lcom/google/android/gms/internal/consent_sdk/zztg;Lcom/google/android/gms/internal/consent_sdk/zzap;Lcom/google/android/gms/internal/consent_sdk/zztf;Lcom/google/android/gms/internal/consent_sdk/zztg;)V

    .line 40
    .line 41
    .line 42
    move-object p2, v7

    .line 43
    move-object v6, v8

    .line 44
    new-instance v8, Lcom/google/android/gms/internal/consent_sdk/zzby;

    .line 45
    .line 46
    invoke-direct {v8, v4, v2}, Lcom/google/android/gms/internal/consent_sdk/zzby;-><init>(Lcom/google/android/gms/internal/consent_sdk/zztg;Lcom/google/android/gms/internal/consent_sdk/zzce;)V

    .line 47
    .line 48
    .line 49
    move-object v5, v4

    .line 50
    iget-object v4, p1, Lcom/google/android/gms/internal/consent_sdk/zzah;->e:Lcom/google/android/gms/internal/consent_sdk/zztg;

    .line 51
    .line 52
    iget-object v9, p1, Lcom/google/android/gms/internal/consent_sdk/zzah;->j:Lcom/google/android/gms/internal/consent_sdk/zztg;

    .line 53
    .line 54
    new-instance v2, Lcom/google/android/gms/internal/consent_sdk/zzbf;

    .line 55
    .line 56
    move-object v7, v0

    .line 57
    invoke-direct/range {v2 .. v9}, Lcom/google/android/gms/internal/consent_sdk/zzbf;-><init>(Lcom/google/android/gms/internal/consent_sdk/zzti;Lcom/google/android/gms/internal/consent_sdk/zztg;Lcom/google/android/gms/internal/consent_sdk/zztg;Lcom/google/android/gms/internal/consent_sdk/zztg;Lcom/google/android/gms/internal/consent_sdk/zzti;Lcom/google/android/gms/internal/consent_sdk/zzby;Lcom/google/android/gms/internal/consent_sdk/zztg;)V

    .line 58
    .line 59
    .line 60
    invoke-static {v2}, Lcom/google/android/gms/internal/consent_sdk/zztg;->a(Lcom/google/android/gms/internal/consent_sdk/zzth;)Lcom/google/android/gms/internal/consent_sdk/zztg;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    iget-object v0, p2, Lcom/google/android/gms/internal/consent_sdk/zztf;->a:Lcom/google/android/gms/internal/consent_sdk/zztg;

    .line 65
    .line 66
    if-nez v0, :cond_0

    .line 67
    .line 68
    iput-object p1, p2, Lcom/google/android/gms/internal/consent_sdk/zztf;->a:Lcom/google/android/gms/internal/consent_sdk/zztg;

    .line 69
    .line 70
    return-void

    .line 71
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 72
    .line 73
    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    .line 74
    .line 75
    .line 76
    throw p1

    .line 77
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    .line 78
    .line 79
    const-string p2, "instance cannot be null"

    .line 80
    .line 81
    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    throw p1
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/consent_sdk/zzbe;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/consent_sdk/zzak;->a:Lcom/google/android/gms/internal/consent_sdk/zztf;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/consent_sdk/zztf;->zzb()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/google/android/gms/internal/consent_sdk/zzbe;

    .line 8
    .line 9
    return-object v0
.end method
