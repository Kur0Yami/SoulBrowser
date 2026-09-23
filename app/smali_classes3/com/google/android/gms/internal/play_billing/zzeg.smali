.class public abstract Lcom/google/android/gms/internal/play_billing/zzeg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/play_billing/zzhc;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType:",
        "Lcom/google/android/gms/internal/play_billing/zzeg<",
        "TMessageType;TBuilderType;>;BuilderType:",
        "Lcom/google/android/gms/internal/play_billing/zzef<",
        "TMessageType;TBuilderType;>;>",
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/play_billing/zzhc;"
    }
.end annotation


# instance fields
.field protected transient zza:I


# virtual methods
.method public final b()[B
    .locals 5

    .line 1
    :try_start_0
    move-object v0, p0

    .line 2
    check-cast v0, Lcom/google/android/gms/internal/play_billing/zzfv;

    .line 3
    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_billing/zzfv;->zzn()I

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    new-array v2, v1, [B

    .line 9
    .line 10
    sget-boolean v3, Lcom/google/android/gms/internal/play_billing/zzfc;->b:Z

    .line 11
    .line 12
    new-instance v3, Lcom/google/android/gms/internal/play_billing/zzez;

    .line 13
    .line 14
    invoke-direct {v3, v2, v1}, Lcom/google/android/gms/internal/play_billing/zzez;-><init>([BI)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/play_billing/zzfv;->a(Lcom/google/android/gms/internal/play_billing/zzfc;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v3}, Lcom/google/android/gms/internal/play_billing/zzfc;->a()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 21
    .line 22
    .line 23
    return-object v2

    .line 24
    :catch_0
    move-exception v0

    .line 25
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    new-instance v2, Ljava/lang/RuntimeException;

    .line 30
    .line 31
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    const-string v3, "Serializing "

    .line 36
    .line 37
    const-string v4, " to a byte array threw an IOException (should never happen)."

    .line 38
    .line 39
    invoke-static {v3, v1, v4}, Landroid/support/v4/media/a;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    invoke-direct {v2, v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 44
    .line 45
    .line 46
    throw v2
.end method

.method public c(Lcom/google/android/gms/internal/play_billing/zzhm;)I
    .locals 0

    .line 1
    const/4 p1, 0x0

    throw p1
.end method

.method public final zzj()Lcom/google/android/gms/internal/play_billing/zzev;
    .locals 5

    .line 1
    :try_start_0
    move-object v0, p0

    .line 2
    check-cast v0, Lcom/google/android/gms/internal/play_billing/zzfv;

    .line 3
    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_billing/zzfv;->zzn()I

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    sget-object v2, Lcom/google/android/gms/internal/play_billing/zzev;->f:Lcom/google/android/gms/internal/play_billing/zzev;

    .line 9
    .line 10
    new-array v2, v1, [B

    .line 11
    .line 12
    sget-boolean v3, Lcom/google/android/gms/internal/play_billing/zzfc;->b:Z

    .line 13
    .line 14
    new-instance v3, Lcom/google/android/gms/internal/play_billing/zzez;

    .line 15
    .line 16
    invoke-direct {v3, v2, v1}, Lcom/google/android/gms/internal/play_billing/zzez;-><init>([BI)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/play_billing/zzfv;->a(Lcom/google/android/gms/internal/play_billing/zzfc;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v3}, Lcom/google/android/gms/internal/play_billing/zzfc;->a()V

    .line 23
    .line 24
    .line 25
    new-instance v0, Lcom/google/android/gms/internal/play_billing/zzet;

    .line 26
    .line 27
    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/play_billing/zzet;-><init>([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    .line 29
    .line 30
    return-object v0

    .line 31
    :catch_0
    move-exception v0

    .line 32
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    new-instance v2, Ljava/lang/RuntimeException;

    .line 37
    .line 38
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    const-string v3, "Serializing "

    .line 43
    .line 44
    const-string v4, " to a ByteString threw an IOException (should never happen)."

    .line 45
    .line 46
    invoke-static {v3, v1, v4}, Landroid/support/v4/media/a;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    invoke-direct {v2, v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 51
    .line 52
    .line 53
    throw v2
.end method
