.class public abstract Lcom/google/android/gms/internal/consent_sdk/zzpa;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/consent_sdk/zzrq;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType:",
        "Lcom/google/android/gms/internal/consent_sdk/zzpa<",
        "TMessageType;TBuilderType;>;BuilderType:",
        "Lcom/google/android/gms/internal/consent_sdk/zzoz<",
        "TMessageType;TBuilderType;>;>",
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/consent_sdk/zzrq;"
    }
.end annotation


# instance fields
.field protected zza:I


# virtual methods
.method public final b(Ljava/io/OutputStream;)V
    .locals 3

    .line 1
    move-object v0, p0

    .line 2
    check-cast v0, Lcom/google/android/gms/internal/consent_sdk/zzqm;

    .line 3
    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/internal/consent_sdk/zzqm;->zzn()I

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    sget-object v2, Lcom/google/android/gms/internal/consent_sdk/zzpv;->b:Ljava/util/logging/Logger;

    .line 9
    .line 10
    const/16 v2, 0x1000

    .line 11
    .line 12
    if-le v1, v2, :cond_0

    .line 13
    .line 14
    move v1, v2

    .line 15
    :cond_0
    new-instance v2, Lcom/google/android/gms/internal/consent_sdk/zzpt;

    .line 16
    .line 17
    invoke-direct {v2, p1, v1}, Lcom/google/android/gms/internal/consent_sdk/zzpt;-><init>(Ljava/io/OutputStream;I)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/consent_sdk/zzqm;->a(Lcom/google/android/gms/internal/consent_sdk/zzpv;)V

    .line 21
    .line 22
    .line 23
    iget p1, v2, Lcom/google/android/gms/internal/consent_sdk/zzpq;->f:I

    .line 24
    .line 25
    if-lez p1, :cond_1

    .line 26
    .line 27
    invoke-virtual {v2}, Lcom/google/android/gms/internal/consent_sdk/zzpt;->C()V

    .line 28
    .line 29
    .line 30
    :cond_1
    return-void
.end method

.method public c(Lcom/google/android/gms/internal/consent_sdk/zzsa;)I
    .locals 0

    .line 1
    const/4 p1, 0x0

    throw p1
.end method

.method public final zzk()Lcom/google/android/gms/internal/consent_sdk/zzpm;
    .locals 5

    .line 1
    :try_start_0
    move-object v0, p0

    .line 2
    check-cast v0, Lcom/google/android/gms/internal/consent_sdk/zzqm;

    .line 3
    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/internal/consent_sdk/zzqm;->zzn()I

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    sget-object v2, Lcom/google/android/gms/internal/consent_sdk/zzpm;->f:Lcom/google/android/gms/internal/consent_sdk/zzpm;

    .line 9
    .line 10
    new-array v2, v1, [B

    .line 11
    .line 12
    sget-object v3, Lcom/google/android/gms/internal/consent_sdk/zzpv;->b:Ljava/util/logging/Logger;

    .line 13
    .line 14
    new-instance v3, Lcom/google/android/gms/internal/consent_sdk/zzpr;

    .line 15
    .line 16
    invoke-direct {v3, v2, v1}, Lcom/google/android/gms/internal/consent_sdk/zzpr;-><init>([BI)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/consent_sdk/zzqm;->a(Lcom/google/android/gms/internal/consent_sdk/zzpv;)V

    .line 20
    .line 21
    .line 22
    iget v0, v3, Lcom/google/android/gms/internal/consent_sdk/zzpr;->f:I

    .line 23
    .line 24
    sub-int/2addr v1, v0

    .line 25
    if-nez v1, :cond_0

    .line 26
    .line 27
    new-instance v0, Lcom/google/android/gms/internal/consent_sdk/zzpk;

    .line 28
    .line 29
    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/consent_sdk/zzpk;-><init>([B)V

    .line 30
    .line 31
    .line 32
    return-object v0

    .line 33
    :catch_0
    move-exception v0

    .line 34
    goto :goto_0

    .line 35
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 36
    .line 37
    const-string v1, "Did not write as much data as expected."

    .line 38
    .line 39
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    throw v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 43
    :goto_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    new-instance v2, Ljava/lang/RuntimeException;

    .line 48
    .line 49
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    const-string v3, "Serializing "

    .line 54
    .line 55
    const-string v4, " to a ByteString threw an IOException (should never happen)."

    .line 56
    .line 57
    invoke-static {v3, v1, v4}, Landroid/support/v4/media/a;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    invoke-direct {v2, v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 62
    .line 63
    .line 64
    throw v2
.end method
