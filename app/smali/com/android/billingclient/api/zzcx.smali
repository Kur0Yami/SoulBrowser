.class public final synthetic Lcom/android/billingclient/api/zzcx;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic a:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget v0, Lcom/android/billingclient/api/zzcy;->a:I

    return-void
.end method

.method public static a(Ljava/lang/Exception;)Ljava/lang/String;
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p0, :cond_0

    .line 3
    .line 4
    return-object v0

    .line 5
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    if-nez p0, :cond_1

    .line 18
    .line 19
    const-string p0, ""

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :catchall_0
    move-exception p0

    .line 23
    goto :goto_1

    .line 24
    :cond_1
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    .line 25
    .line 26
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    const-string v1, ":"

    .line 33
    .line 34
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    sget v1, Lcom/google/android/gms/internal/play_billing/zzc;->a:I

    .line 45
    .line 46
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 47
    .line 48
    .line 49
    move-result v1

    .line 50
    const/16 v2, 0x28

    .line 51
    .line 52
    if-le v1, v2, :cond_2

    .line 53
    .line 54
    const/4 v1, 0x0

    .line 55
    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    :cond_2
    return-object p0

    .line 60
    :goto_1
    const-string v1, "BillingLogger"

    .line 61
    .line 62
    const-string v2, "Unable to get truncated exception info"

    .line 63
    .line 64
    invoke-static {v1, v2, p0}, Lcom/google/android/gms/internal/play_billing/zzc;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 65
    .line 66
    .line 67
    return-object v0
.end method

.method public static b(Lcom/google/android/gms/internal/play_billing/zzje;ILcom/android/billingclient/api/BillingResult;Ljava/lang/String;Lcom/google/android/gms/internal/play_billing/zzjl;)Lcom/google/android/gms/internal/play_billing/zzix;
    .locals 3

    .line 1
    :try_start_0
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzjg;->q()Lcom/google/android/gms/internal/play_billing/zzjc;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v1, p2, Lcom/android/billingclient/api/BillingResult;->a:I

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_billing/zzfr;->e()V

    .line 8
    .line 9
    .line 10
    iget-object v2, v0, Lcom/google/android/gms/internal/play_billing/zzfr;->f:Lcom/google/android/gms/internal/play_billing/zzfv;

    .line 11
    .line 12
    check-cast v2, Lcom/google/android/gms/internal/play_billing/zzjg;

    .line 13
    .line 14
    invoke-static {v2, v1}, Lcom/google/android/gms/internal/play_billing/zzjg;->v(Lcom/google/android/gms/internal/play_billing/zzjg;I)V

    .line 15
    .line 16
    .line 17
    iget-object v1, p2, Lcom/android/billingclient/api/BillingResult;->c:Ljava/lang/String;

    .line 18
    .line 19
    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_billing/zzfr;->e()V

    .line 20
    .line 21
    .line 22
    iget-object v2, v0, Lcom/google/android/gms/internal/play_billing/zzfr;->f:Lcom/google/android/gms/internal/play_billing/zzfv;

    .line 23
    .line 24
    check-cast v2, Lcom/google/android/gms/internal/play_billing/zzjg;

    .line 25
    .line 26
    invoke-static {v2, v1}, Lcom/google/android/gms/internal/play_billing/zzjg;->s(Lcom/google/android/gms/internal/play_billing/zzjg;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    iget p2, p2, Lcom/android/billingclient/api/BillingResult;->b:I

    .line 30
    .line 31
    if-eqz p2, :cond_0

    .line 32
    .line 33
    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_billing/zzfr;->e()V

    .line 34
    .line 35
    .line 36
    iget-object v1, v0, Lcom/google/android/gms/internal/play_billing/zzfr;->f:Lcom/google/android/gms/internal/play_billing/zzfv;

    .line 37
    .line 38
    check-cast v1, Lcom/google/android/gms/internal/play_billing/zzjg;

    .line 39
    .line 40
    invoke-static {v1, p2}, Lcom/google/android/gms/internal/play_billing/zzjg;->t(Lcom/google/android/gms/internal/play_billing/zzjg;I)V

    .line 41
    .line 42
    .line 43
    :cond_0
    if-eqz p0, :cond_1

    .line 44
    .line 45
    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/play_billing/zzjc;->g(Lcom/google/android/gms/internal/play_billing/zzje;)V

    .line 46
    .line 47
    .line 48
    :cond_1
    if-eqz p3, :cond_2

    .line 49
    .line 50
    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_billing/zzfr;->e()V

    .line 51
    .line 52
    .line 53
    iget-object p0, v0, Lcom/google/android/gms/internal/play_billing/zzfr;->f:Lcom/google/android/gms/internal/play_billing/zzfv;

    .line 54
    .line 55
    check-cast p0, Lcom/google/android/gms/internal/play_billing/zzjg;

    .line 56
    .line 57
    invoke-static {p0, p3}, Lcom/google/android/gms/internal/play_billing/zzjg;->r(Lcom/google/android/gms/internal/play_billing/zzjg;Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    :cond_2
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzix;->t()Lcom/google/android/gms/internal/play_billing/zziv;

    .line 61
    .line 62
    .line 63
    move-result-object p0

    .line 64
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/play_billing/zziv;->g(Lcom/google/android/gms/internal/play_billing/zzjc;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/play_billing/zziv;->i(I)V

    .line 68
    .line 69
    .line 70
    sget-object p1, Lcom/google/android/gms/internal/play_billing/zzjl;->f:Lcom/google/android/gms/internal/play_billing/zzjl;

    .line 71
    .line 72
    invoke-virtual {p4, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 73
    .line 74
    .line 75
    move-result p1

    .line 76
    if-nez p1, :cond_3

    .line 77
    .line 78
    invoke-virtual {p0}, Lcom/google/android/gms/internal/play_billing/zzfr;->e()V

    .line 79
    .line 80
    .line 81
    iget-object p1, p0, Lcom/google/android/gms/internal/play_billing/zzfr;->f:Lcom/google/android/gms/internal/play_billing/zzfv;

    .line 82
    .line 83
    check-cast p1, Lcom/google/android/gms/internal/play_billing/zzix;

    .line 84
    .line 85
    invoke-static {p1, p4}, Lcom/google/android/gms/internal/play_billing/zzix;->w(Lcom/google/android/gms/internal/play_billing/zzix;Lcom/google/android/gms/internal/play_billing/zzjl;)V

    .line 86
    .line 87
    .line 88
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/play_billing/zzfr;->c()Lcom/google/android/gms/internal/play_billing/zzfv;

    .line 89
    .line 90
    .line 91
    move-result-object p0

    .line 92
    check-cast p0, Lcom/google/android/gms/internal/play_billing/zzix;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 93
    .line 94
    return-object p0

    .line 95
    :catchall_0
    move-exception p0

    .line 96
    const-string p1, "BillingLogger"

    .line 97
    .line 98
    const-string p2, "Unable to create logging payload"

    .line 99
    .line 100
    invoke-static {p1, p2, p0}, Lcom/google/android/gms/internal/play_billing/zzc;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 101
    .line 102
    .line 103
    const/4 p0, 0x0

    .line 104
    return-object p0
.end method

.method public static c(ILcom/google/android/gms/internal/play_billing/zzjl;)Lcom/google/android/gms/internal/play_billing/zzjb;
    .locals 2

    .line 1
    :try_start_0
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzjb;->r()Lcom/google/android/gms/internal/play_billing/zziz;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_billing/zzfr;->e()V

    .line 6
    .line 7
    .line 8
    iget-object v1, v0, Lcom/google/android/gms/internal/play_billing/zzfr;->f:Lcom/google/android/gms/internal/play_billing/zzfv;

    .line 9
    .line 10
    check-cast v1, Lcom/google/android/gms/internal/play_billing/zzjb;

    .line 11
    .line 12
    invoke-static {v1, p0}, Lcom/google/android/gms/internal/play_billing/zzjb;->q(Lcom/google/android/gms/internal/play_billing/zzjb;I)V

    .line 13
    .line 14
    .line 15
    sget-object p0, Lcom/google/android/gms/internal/play_billing/zzjl;->f:Lcom/google/android/gms/internal/play_billing/zzjl;

    .line 16
    .line 17
    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result p0

    .line 21
    if-nez p0, :cond_0

    .line 22
    .line 23
    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_billing/zzfr;->e()V

    .line 24
    .line 25
    .line 26
    iget-object p0, v0, Lcom/google/android/gms/internal/play_billing/zzfr;->f:Lcom/google/android/gms/internal/play_billing/zzfv;

    .line 27
    .line 28
    check-cast p0, Lcom/google/android/gms/internal/play_billing/zzjb;

    .line 29
    .line 30
    invoke-static {p0, p1}, Lcom/google/android/gms/internal/play_billing/zzjb;->t(Lcom/google/android/gms/internal/play_billing/zzjb;Lcom/google/android/gms/internal/play_billing/zzjl;)V

    .line 31
    .line 32
    .line 33
    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_billing/zzfr;->c()Lcom/google/android/gms/internal/play_billing/zzfv;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    check-cast p0, Lcom/google/android/gms/internal/play_billing/zzjb;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 38
    .line 39
    return-object p0

    .line 40
    :catch_0
    move-exception p0

    .line 41
    const-string p1, "BillingLogger"

    .line 42
    .line 43
    const-string v0, "Unable to create logging payload"

    .line 44
    .line 45
    invoke-static {p1, v0, p0}, Lcom/google/android/gms/internal/play_billing/zzc;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 46
    .line 47
    .line 48
    const/4 p0, 0x0

    .line 49
    return-object p0
.end method
