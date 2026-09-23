.class final Lcom/android/billingclient/api/zzdh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/billingclient/api/zzcy;


# instance fields
.field public b:Lcom/google/android/gms/internal/play_billing/zzjs;

.field public final c:Lcom/android/billingclient/api/zzdj;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/play_billing/zzjs;)V
    .locals 4

    .line 1
    new-instance v0, Lcom/android/billingclient/api/zzdj;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    :try_start_0
    invoke-static {p1}, Lcom/google/android/datatransport/runtime/TransportRuntime;->b(Landroid/content/Context;)V

    .line 7
    .line 8
    .line 9
    invoke-static {}, Lcom/google/android/datatransport/runtime/TransportRuntime;->a()Lcom/google/android/datatransport/runtime/TransportRuntime;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    sget-object v1, Lcom/google/android/datatransport/cct/CCTDestination;->e:Lcom/google/android/datatransport/cct/CCTDestination;

    .line 14
    .line 15
    invoke-virtual {p1, v1}, Lcom/google/android/datatransport/runtime/TransportRuntime;->c(Lcom/google/android/datatransport/runtime/Destination;)Lcom/google/android/datatransport/TransportFactory;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    const-string v1, "PLAY_BILLING_LIBRARY"

    .line 20
    .line 21
    const-string v2, "proto"

    .line 22
    .line 23
    new-instance v3, Lcom/google/android/datatransport/Encoding;

    .line 24
    .line 25
    invoke-direct {v3, v2}, Lcom/google/android/datatransport/Encoding;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    new-instance v2, Lcom/android/billingclient/api/zzdi;

    .line 29
    .line 30
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 31
    .line 32
    .line 33
    invoke-interface {p1, v1, v3, v2}, Lcom/google/android/datatransport/TransportFactory;->a(Ljava/lang/String;Lcom/google/android/datatransport/Encoding;Lcom/google/android/datatransport/Transformer;)Lcom/google/android/datatransport/Transport;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    iput-object p1, v0, Lcom/android/billingclient/api/zzdj;->b:Lcom/google/android/datatransport/Transport;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :catchall_0
    const/4 p1, 0x1

    .line 41
    iput-boolean p1, v0, Lcom/android/billingclient/api/zzdj;->a:Z

    .line 42
    .line 43
    :goto_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    .line 45
    .line 46
    iput-object v0, p0, Lcom/android/billingclient/api/zzdh;->c:Lcom/android/billingclient/api/zzdj;

    .line 47
    .line 48
    iput-object p2, p0, Lcom/android/billingclient/api/zzdh;->b:Lcom/google/android/gms/internal/play_billing/zzjs;

    .line 49
    .line 50
    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/play_billing/zzix;)V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/android/billingclient/api/zzdh;->b:Lcom/google/android/gms/internal/play_billing/zzjs;

    .line 2
    .line 3
    invoke-virtual {p0, p1, v0}, Lcom/android/billingclient/api/zzdh;->l(Lcom/google/android/gms/internal/play_billing/zzix;Lcom/google/android/gms/internal/play_billing/zzjs;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    .line 5
    .line 6
    return-void

    .line 7
    :catchall_0
    move-exception p1

    .line 8
    const-string v0, "BillingLogger"

    .line 9
    .line 10
    const-string v1, "Unable to log."

    .line 11
    .line 12
    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/play_billing/zzc;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final b(Lcom/google/android/gms/internal/play_billing/zzjb;JZ)V
    .locals 2

    .line 1
    :try_start_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/play_billing/zzfv;->k()Lcom/google/android/gms/internal/play_billing/zzfr;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lcom/google/android/gms/internal/play_billing/zziz;

    .line 6
    .line 7
    invoke-virtual {p1}, Lcom/google/android/gms/internal/play_billing/zzjb;->s()Lcom/google/android/gms/internal/play_billing/zzkf;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-virtual {p1}, Lcom/google/android/gms/internal/play_billing/zzfv;->k()Lcom/google/android/gms/internal/play_billing/zzfr;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    check-cast p1, Lcom/google/android/gms/internal/play_billing/zzka;

    .line 16
    .line 17
    invoke-virtual {p1}, Lcom/google/android/gms/internal/play_billing/zzfr;->e()V

    .line 18
    .line 19
    .line 20
    iget-object v1, p1, Lcom/google/android/gms/internal/play_billing/zzfr;->f:Lcom/google/android/gms/internal/play_billing/zzfv;

    .line 21
    .line 22
    check-cast v1, Lcom/google/android/gms/internal/play_billing/zzkf;

    .line 23
    .line 24
    invoke-static {v1, p4}, Lcom/google/android/gms/internal/play_billing/zzkf;->r(Lcom/google/android/gms/internal/play_billing/zzkf;Z)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_billing/zzfr;->e()V

    .line 28
    .line 29
    .line 30
    iget-object p4, v0, Lcom/google/android/gms/internal/play_billing/zzfr;->f:Lcom/google/android/gms/internal/play_billing/zzfv;

    .line 31
    .line 32
    check-cast p4, Lcom/google/android/gms/internal/play_billing/zzjb;

    .line 33
    .line 34
    invoke-virtual {p1}, Lcom/google/android/gms/internal/play_billing/zzfr;->c()Lcom/google/android/gms/internal/play_billing/zzfv;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    check-cast p1, Lcom/google/android/gms/internal/play_billing/zzkf;

    .line 39
    .line 40
    invoke-static {p4, p1}, Lcom/google/android/gms/internal/play_billing/zzjb;->u(Lcom/google/android/gms/internal/play_billing/zzjb;Lcom/google/android/gms/internal/play_billing/zzkf;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_billing/zzfr;->c()Lcom/google/android/gms/internal/play_billing/zzfv;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    check-cast p1, Lcom/google/android/gms/internal/play_billing/zzjb;

    .line 48
    .line 49
    const-wide/16 v0, 0x0

    .line 50
    .line 51
    cmp-long p4, p2, v0

    .line 52
    .line 53
    if-nez p4, :cond_0

    .line 54
    .line 55
    iget-object p2, p0, Lcom/android/billingclient/api/zzdh;->b:Lcom/google/android/gms/internal/play_billing/zzjs;

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :catchall_0
    move-exception p1

    .line 59
    goto :goto_1

    .line 60
    :cond_0
    iget-object p4, p0, Lcom/android/billingclient/api/zzdh;->b:Lcom/google/android/gms/internal/play_billing/zzjs;

    .line 61
    .line 62
    invoke-virtual {p4}, Lcom/google/android/gms/internal/play_billing/zzfv;->k()Lcom/google/android/gms/internal/play_billing/zzfr;

    .line 63
    .line 64
    .line 65
    move-result-object p4

    .line 66
    check-cast p4, Lcom/google/android/gms/internal/play_billing/zzjq;

    .line 67
    .line 68
    invoke-virtual {p4}, Lcom/google/android/gms/internal/play_billing/zzfr;->e()V

    .line 69
    .line 70
    .line 71
    iget-object v0, p4, Lcom/google/android/gms/internal/play_billing/zzfr;->f:Lcom/google/android/gms/internal/play_billing/zzfv;

    .line 72
    .line 73
    check-cast v0, Lcom/google/android/gms/internal/play_billing/zzjs;

    .line 74
    .line 75
    invoke-static {v0, p2, p3}, Lcom/google/android/gms/internal/play_billing/zzjs;->F(Lcom/google/android/gms/internal/play_billing/zzjs;J)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {p4}, Lcom/google/android/gms/internal/play_billing/zzfr;->c()Lcom/google/android/gms/internal/play_billing/zzfv;

    .line 79
    .line 80
    .line 81
    move-result-object p2

    .line 82
    check-cast p2, Lcom/google/android/gms/internal/play_billing/zzjs;

    .line 83
    .line 84
    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/android/billingclient/api/zzdh;->m(Lcom/google/android/gms/internal/play_billing/zzjb;Lcom/google/android/gms/internal/play_billing/zzjs;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 85
    .line 86
    .line 87
    return-void

    .line 88
    :goto_1
    const-string p2, "BillingLogger"

    .line 89
    .line 90
    const-string p3, "Unable to log."

    .line 91
    .line 92
    invoke-static {p2, p3, p1}, Lcom/google/android/gms/internal/play_billing/zzc;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 93
    .line 94
    .line 95
    return-void
.end method

.method public final c(Lcom/google/android/gms/internal/play_billing/zzix;JZ)V
    .locals 2

    .line 1
    :try_start_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/play_billing/zzfv;->k()Lcom/google/android/gms/internal/play_billing/zzfr;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lcom/google/android/gms/internal/play_billing/zziv;

    .line 6
    .line 7
    invoke-virtual {p1}, Lcom/google/android/gms/internal/play_billing/zzix;->v()Lcom/google/android/gms/internal/play_billing/zzkf;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-virtual {p1}, Lcom/google/android/gms/internal/play_billing/zzfv;->k()Lcom/google/android/gms/internal/play_billing/zzfr;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    check-cast p1, Lcom/google/android/gms/internal/play_billing/zzka;

    .line 16
    .line 17
    invoke-virtual {p1}, Lcom/google/android/gms/internal/play_billing/zzfr;->e()V

    .line 18
    .line 19
    .line 20
    iget-object v1, p1, Lcom/google/android/gms/internal/play_billing/zzfr;->f:Lcom/google/android/gms/internal/play_billing/zzfv;

    .line 21
    .line 22
    check-cast v1, Lcom/google/android/gms/internal/play_billing/zzkf;

    .line 23
    .line 24
    invoke-static {v1, p4}, Lcom/google/android/gms/internal/play_billing/zzkf;->r(Lcom/google/android/gms/internal/play_billing/zzkf;Z)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_billing/zzfr;->e()V

    .line 28
    .line 29
    .line 30
    iget-object p4, v0, Lcom/google/android/gms/internal/play_billing/zzfr;->f:Lcom/google/android/gms/internal/play_billing/zzfv;

    .line 31
    .line 32
    check-cast p4, Lcom/google/android/gms/internal/play_billing/zzix;

    .line 33
    .line 34
    invoke-virtual {p1}, Lcom/google/android/gms/internal/play_billing/zzfr;->c()Lcom/google/android/gms/internal/play_billing/zzfv;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    check-cast p1, Lcom/google/android/gms/internal/play_billing/zzkf;

    .line 39
    .line 40
    invoke-static {p4, p1}, Lcom/google/android/gms/internal/play_billing/zzix;->q(Lcom/google/android/gms/internal/play_billing/zzix;Lcom/google/android/gms/internal/play_billing/zzkf;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_billing/zzfr;->c()Lcom/google/android/gms/internal/play_billing/zzfv;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    check-cast p1, Lcom/google/android/gms/internal/play_billing/zzix;

    .line 48
    .line 49
    const-wide/16 v0, 0x0

    .line 50
    .line 51
    cmp-long p4, p2, v0

    .line 52
    .line 53
    if-nez p4, :cond_0

    .line 54
    .line 55
    iget-object p2, p0, Lcom/android/billingclient/api/zzdh;->b:Lcom/google/android/gms/internal/play_billing/zzjs;

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :catchall_0
    move-exception p1

    .line 59
    goto :goto_1

    .line 60
    :cond_0
    iget-object p4, p0, Lcom/android/billingclient/api/zzdh;->b:Lcom/google/android/gms/internal/play_billing/zzjs;

    .line 61
    .line 62
    invoke-virtual {p4}, Lcom/google/android/gms/internal/play_billing/zzfv;->k()Lcom/google/android/gms/internal/play_billing/zzfr;

    .line 63
    .line 64
    .line 65
    move-result-object p4

    .line 66
    check-cast p4, Lcom/google/android/gms/internal/play_billing/zzjq;

    .line 67
    .line 68
    invoke-virtual {p4}, Lcom/google/android/gms/internal/play_billing/zzfr;->e()V

    .line 69
    .line 70
    .line 71
    iget-object v0, p4, Lcom/google/android/gms/internal/play_billing/zzfr;->f:Lcom/google/android/gms/internal/play_billing/zzfv;

    .line 72
    .line 73
    check-cast v0, Lcom/google/android/gms/internal/play_billing/zzjs;

    .line 74
    .line 75
    invoke-static {v0, p2, p3}, Lcom/google/android/gms/internal/play_billing/zzjs;->F(Lcom/google/android/gms/internal/play_billing/zzjs;J)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {p4}, Lcom/google/android/gms/internal/play_billing/zzfr;->c()Lcom/google/android/gms/internal/play_billing/zzfv;

    .line 79
    .line 80
    .line 81
    move-result-object p2

    .line 82
    check-cast p2, Lcom/google/android/gms/internal/play_billing/zzjs;

    .line 83
    .line 84
    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/android/billingclient/api/zzdh;->l(Lcom/google/android/gms/internal/play_billing/zzix;Lcom/google/android/gms/internal/play_billing/zzjs;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 85
    .line 86
    .line 87
    return-void

    .line 88
    :goto_1
    const-string p2, "BillingLogger"

    .line 89
    .line 90
    const-string p3, "Unable to log."

    .line 91
    .line 92
    invoke-static {p2, p3, p1}, Lcom/google/android/gms/internal/play_billing/zzc;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 93
    .line 94
    .line 95
    return-void
.end method

.method public final d(Lcom/google/android/gms/internal/play_billing/zzix;I)V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/android/billingclient/api/zzdh;->b:Lcom/google/android/gms/internal/play_billing/zzjs;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_billing/zzfv;->k()Lcom/google/android/gms/internal/play_billing/zzfr;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/google/android/gms/internal/play_billing/zzjq;

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_billing/zzfr;->e()V

    .line 10
    .line 11
    .line 12
    iget-object v1, v0, Lcom/google/android/gms/internal/play_billing/zzfr;->f:Lcom/google/android/gms/internal/play_billing/zzfv;

    .line 13
    .line 14
    check-cast v1, Lcom/google/android/gms/internal/play_billing/zzjs;

    .line 15
    .line 16
    invoke-static {v1, p2}, Lcom/google/android/gms/internal/play_billing/zzjs;->D(Lcom/google/android/gms/internal/play_billing/zzjs;I)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_billing/zzfr;->c()Lcom/google/android/gms/internal/play_billing/zzfv;

    .line 20
    .line 21
    .line 22
    move-result-object p2

    .line 23
    check-cast p2, Lcom/google/android/gms/internal/play_billing/zzjs;

    .line 24
    .line 25
    iput-object p2, p0, Lcom/android/billingclient/api/zzdh;->b:Lcom/google/android/gms/internal/play_billing/zzjs;

    .line 26
    .line 27
    invoke-virtual {p0, p1}, Lcom/android/billingclient/api/zzdh;->a(Lcom/google/android/gms/internal/play_billing/zzix;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    .line 29
    .line 30
    return-void

    .line 31
    :catchall_0
    move-exception p1

    .line 32
    const-string p2, "BillingLogger"

    .line 33
    .line 34
    const-string v0, "Unable to log."

    .line 35
    .line 36
    invoke-static {p2, v0, p1}, Lcom/google/android/gms/internal/play_billing/zzc;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 37
    .line 38
    .line 39
    return-void
.end method

.method public final e(Lcom/google/android/gms/internal/play_billing/zzix;IJ)V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/android/billingclient/api/zzdh;->b:Lcom/google/android/gms/internal/play_billing/zzjs;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_billing/zzfv;->k()Lcom/google/android/gms/internal/play_billing/zzfr;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/google/android/gms/internal/play_billing/zzjq;

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_billing/zzfr;->e()V

    .line 10
    .line 11
    .line 12
    iget-object v1, v0, Lcom/google/android/gms/internal/play_billing/zzfr;->f:Lcom/google/android/gms/internal/play_billing/zzfv;

    .line 13
    .line 14
    check-cast v1, Lcom/google/android/gms/internal/play_billing/zzjs;

    .line 15
    .line 16
    invoke-static {v1, p2}, Lcom/google/android/gms/internal/play_billing/zzjs;->D(Lcom/google/android/gms/internal/play_billing/zzjs;I)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_billing/zzfr;->c()Lcom/google/android/gms/internal/play_billing/zzfv;

    .line 20
    .line 21
    .line 22
    move-result-object p2

    .line 23
    check-cast p2, Lcom/google/android/gms/internal/play_billing/zzjs;

    .line 24
    .line 25
    iput-object p2, p0, Lcom/android/billingclient/api/zzdh;->b:Lcom/google/android/gms/internal/play_billing/zzjs;

    .line 26
    .line 27
    const-wide/16 v0, 0x0

    .line 28
    .line 29
    cmp-long v0, p3, v0

    .line 30
    .line 31
    if-nez v0, :cond_0

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    invoke-virtual {p2}, Lcom/google/android/gms/internal/play_billing/zzfv;->k()Lcom/google/android/gms/internal/play_billing/zzfr;

    .line 35
    .line 36
    .line 37
    move-result-object p2

    .line 38
    check-cast p2, Lcom/google/android/gms/internal/play_billing/zzjq;

    .line 39
    .line 40
    invoke-virtual {p2}, Lcom/google/android/gms/internal/play_billing/zzfr;->e()V

    .line 41
    .line 42
    .line 43
    iget-object v0, p2, Lcom/google/android/gms/internal/play_billing/zzfr;->f:Lcom/google/android/gms/internal/play_billing/zzfv;

    .line 44
    .line 45
    check-cast v0, Lcom/google/android/gms/internal/play_billing/zzjs;

    .line 46
    .line 47
    invoke-static {v0, p3, p4}, Lcom/google/android/gms/internal/play_billing/zzjs;->F(Lcom/google/android/gms/internal/play_billing/zzjs;J)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {p2}, Lcom/google/android/gms/internal/play_billing/zzfr;->c()Lcom/google/android/gms/internal/play_billing/zzfv;

    .line 51
    .line 52
    .line 53
    move-result-object p2

    .line 54
    check-cast p2, Lcom/google/android/gms/internal/play_billing/zzjs;

    .line 55
    .line 56
    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/android/billingclient/api/zzdh;->l(Lcom/google/android/gms/internal/play_billing/zzix;Lcom/google/android/gms/internal/play_billing/zzjs;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57
    .line 58
    .line 59
    return-void

    .line 60
    :catchall_0
    move-exception p1

    .line 61
    const-string p2, "BillingLogger"

    .line 62
    .line 63
    const-string p3, "Unable to log."

    .line 64
    .line 65
    invoke-static {p2, p3, p1}, Lcom/google/android/gms/internal/play_billing/zzc;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 66
    .line 67
    .line 68
    return-void
.end method

.method public final f(Lcom/google/android/gms/internal/play_billing/zzix;IJZ)V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/android/billingclient/api/zzdh;->b:Lcom/google/android/gms/internal/play_billing/zzjs;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_billing/zzfv;->k()Lcom/google/android/gms/internal/play_billing/zzfr;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/google/android/gms/internal/play_billing/zzjq;

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_billing/zzfr;->e()V

    .line 10
    .line 11
    .line 12
    iget-object v1, v0, Lcom/google/android/gms/internal/play_billing/zzfr;->f:Lcom/google/android/gms/internal/play_billing/zzfv;

    .line 13
    .line 14
    check-cast v1, Lcom/google/android/gms/internal/play_billing/zzjs;

    .line 15
    .line 16
    invoke-static {v1, p2}, Lcom/google/android/gms/internal/play_billing/zzjs;->D(Lcom/google/android/gms/internal/play_billing/zzjs;I)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_billing/zzfr;->c()Lcom/google/android/gms/internal/play_billing/zzfv;

    .line 20
    .line 21
    .line 22
    move-result-object p2

    .line 23
    check-cast p2, Lcom/google/android/gms/internal/play_billing/zzjs;

    .line 24
    .line 25
    iput-object p2, p0, Lcom/android/billingclient/api/zzdh;->b:Lcom/google/android/gms/internal/play_billing/zzjs;

    .line 26
    .line 27
    invoke-virtual {p1}, Lcom/google/android/gms/internal/play_billing/zzfv;->k()Lcom/google/android/gms/internal/play_billing/zzfr;

    .line 28
    .line 29
    .line 30
    move-result-object p2

    .line 31
    check-cast p2, Lcom/google/android/gms/internal/play_billing/zziv;

    .line 32
    .line 33
    invoke-virtual {p1}, Lcom/google/android/gms/internal/play_billing/zzix;->v()Lcom/google/android/gms/internal/play_billing/zzkf;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    invoke-virtual {p1}, Lcom/google/android/gms/internal/play_billing/zzfv;->k()Lcom/google/android/gms/internal/play_billing/zzfr;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    check-cast p1, Lcom/google/android/gms/internal/play_billing/zzka;

    .line 42
    .line 43
    invoke-virtual {p1}, Lcom/google/android/gms/internal/play_billing/zzfr;->e()V

    .line 44
    .line 45
    .line 46
    iget-object v0, p1, Lcom/google/android/gms/internal/play_billing/zzfr;->f:Lcom/google/android/gms/internal/play_billing/zzfv;

    .line 47
    .line 48
    check-cast v0, Lcom/google/android/gms/internal/play_billing/zzkf;

    .line 49
    .line 50
    invoke-static {v0, p5}, Lcom/google/android/gms/internal/play_billing/zzkf;->r(Lcom/google/android/gms/internal/play_billing/zzkf;Z)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {p2}, Lcom/google/android/gms/internal/play_billing/zzfr;->e()V

    .line 54
    .line 55
    .line 56
    iget-object p5, p2, Lcom/google/android/gms/internal/play_billing/zzfr;->f:Lcom/google/android/gms/internal/play_billing/zzfv;

    .line 57
    .line 58
    check-cast p5, Lcom/google/android/gms/internal/play_billing/zzix;

    .line 59
    .line 60
    invoke-virtual {p1}, Lcom/google/android/gms/internal/play_billing/zzfr;->c()Lcom/google/android/gms/internal/play_billing/zzfv;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    check-cast p1, Lcom/google/android/gms/internal/play_billing/zzkf;

    .line 65
    .line 66
    invoke-static {p5, p1}, Lcom/google/android/gms/internal/play_billing/zzix;->q(Lcom/google/android/gms/internal/play_billing/zzix;Lcom/google/android/gms/internal/play_billing/zzkf;)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {p2}, Lcom/google/android/gms/internal/play_billing/zzfr;->c()Lcom/google/android/gms/internal/play_billing/zzfv;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    check-cast p1, Lcom/google/android/gms/internal/play_billing/zzix;

    .line 74
    .line 75
    const-wide/16 v0, 0x0

    .line 76
    .line 77
    cmp-long p2, p3, v0

    .line 78
    .line 79
    if-nez p2, :cond_0

    .line 80
    .line 81
    iget-object p2, p0, Lcom/android/billingclient/api/zzdh;->b:Lcom/google/android/gms/internal/play_billing/zzjs;

    .line 82
    .line 83
    goto :goto_0

    .line 84
    :catchall_0
    move-exception p1

    .line 85
    goto :goto_1

    .line 86
    :cond_0
    iget-object p2, p0, Lcom/android/billingclient/api/zzdh;->b:Lcom/google/android/gms/internal/play_billing/zzjs;

    .line 87
    .line 88
    invoke-virtual {p2}, Lcom/google/android/gms/internal/play_billing/zzfv;->k()Lcom/google/android/gms/internal/play_billing/zzfr;

    .line 89
    .line 90
    .line 91
    move-result-object p2

    .line 92
    check-cast p2, Lcom/google/android/gms/internal/play_billing/zzjq;

    .line 93
    .line 94
    invoke-virtual {p2}, Lcom/google/android/gms/internal/play_billing/zzfr;->e()V

    .line 95
    .line 96
    .line 97
    iget-object p5, p2, Lcom/google/android/gms/internal/play_billing/zzfr;->f:Lcom/google/android/gms/internal/play_billing/zzfv;

    .line 98
    .line 99
    check-cast p5, Lcom/google/android/gms/internal/play_billing/zzjs;

    .line 100
    .line 101
    invoke-static {p5, p3, p4}, Lcom/google/android/gms/internal/play_billing/zzjs;->F(Lcom/google/android/gms/internal/play_billing/zzjs;J)V

    .line 102
    .line 103
    .line 104
    invoke-virtual {p2}, Lcom/google/android/gms/internal/play_billing/zzfr;->c()Lcom/google/android/gms/internal/play_billing/zzfv;

    .line 105
    .line 106
    .line 107
    move-result-object p2

    .line 108
    check-cast p2, Lcom/google/android/gms/internal/play_billing/zzjs;

    .line 109
    .line 110
    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/android/billingclient/api/zzdh;->l(Lcom/google/android/gms/internal/play_billing/zzix;Lcom/google/android/gms/internal/play_billing/zzjs;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 111
    .line 112
    .line 113
    return-void

    .line 114
    :goto_1
    const-string p2, "BillingLogger"

    .line 115
    .line 116
    const-string p3, "Unable to log."

    .line 117
    .line 118
    invoke-static {p2, p3, p1}, Lcom/google/android/gms/internal/play_billing/zzc;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 119
    .line 120
    .line 121
    return-void
.end method

.method public final g(Lcom/google/android/gms/internal/play_billing/zzjb;)V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/android/billingclient/api/zzdh;->b:Lcom/google/android/gms/internal/play_billing/zzjs;

    .line 2
    .line 3
    invoke-virtual {p0, p1, v0}, Lcom/android/billingclient/api/zzdh;->m(Lcom/google/android/gms/internal/play_billing/zzjb;Lcom/google/android/gms/internal/play_billing/zzjs;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    .line 5
    .line 6
    return-void

    .line 7
    :catchall_0
    move-exception p1

    .line 8
    const-string v0, "BillingLogger"

    .line 9
    .line 10
    const-string v1, "Unable to log."

    .line 11
    .line 12
    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/play_billing/zzc;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final h(Lcom/google/android/gms/internal/play_billing/zzjb;I)V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/android/billingclient/api/zzdh;->b:Lcom/google/android/gms/internal/play_billing/zzjs;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_billing/zzfv;->k()Lcom/google/android/gms/internal/play_billing/zzfr;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/google/android/gms/internal/play_billing/zzjq;

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_billing/zzfr;->e()V

    .line 10
    .line 11
    .line 12
    iget-object v1, v0, Lcom/google/android/gms/internal/play_billing/zzfr;->f:Lcom/google/android/gms/internal/play_billing/zzfv;

    .line 13
    .line 14
    check-cast v1, Lcom/google/android/gms/internal/play_billing/zzjs;

    .line 15
    .line 16
    invoke-static {v1, p2}, Lcom/google/android/gms/internal/play_billing/zzjs;->D(Lcom/google/android/gms/internal/play_billing/zzjs;I)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_billing/zzfr;->c()Lcom/google/android/gms/internal/play_billing/zzfv;

    .line 20
    .line 21
    .line 22
    move-result-object p2

    .line 23
    check-cast p2, Lcom/google/android/gms/internal/play_billing/zzjs;

    .line 24
    .line 25
    iput-object p2, p0, Lcom/android/billingclient/api/zzdh;->b:Lcom/google/android/gms/internal/play_billing/zzjs;

    .line 26
    .line 27
    invoke-virtual {p0, p1}, Lcom/android/billingclient/api/zzdh;->g(Lcom/google/android/gms/internal/play_billing/zzjb;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    .line 29
    .line 30
    return-void

    .line 31
    :catchall_0
    move-exception p1

    .line 32
    const-string p2, "BillingLogger"

    .line 33
    .line 34
    const-string v0, "Unable to log."

    .line 35
    .line 36
    invoke-static {p2, v0, p1}, Lcom/google/android/gms/internal/play_billing/zzc;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 37
    .line 38
    .line 39
    return-void
.end method

.method public final i(Lcom/google/android/gms/internal/play_billing/zzjj;)V
    .locals 2

    .line 1
    :try_start_0
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzki;->r()Lcom/google/android/gms/internal/play_billing/zzkg;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/android/billingclient/api/zzdh;->b:Lcom/google/android/gms/internal/play_billing/zzjs;

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/play_billing/zzkg;->g(Lcom/google/android/gms/internal/play_billing/zzjs;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_billing/zzfr;->e()V

    .line 11
    .line 12
    .line 13
    iget-object v1, v0, Lcom/google/android/gms/internal/play_billing/zzfr;->f:Lcom/google/android/gms/internal/play_billing/zzfv;

    .line 14
    .line 15
    check-cast v1, Lcom/google/android/gms/internal/play_billing/zzki;

    .line 16
    .line 17
    invoke-static {v1, p1}, Lcom/google/android/gms/internal/play_billing/zzki;->u(Lcom/google/android/gms/internal/play_billing/zzki;Lcom/google/android/gms/internal/play_billing/zzjj;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_billing/zzfr;->c()Lcom/google/android/gms/internal/play_billing/zzfv;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    check-cast p1, Lcom/google/android/gms/internal/play_billing/zzki;

    .line 25
    .line 26
    iget-object v0, p0, Lcom/android/billingclient/api/zzdh;->c:Lcom/android/billingclient/api/zzdj;

    .line 27
    .line 28
    invoke-virtual {v0, p1}, Lcom/android/billingclient/api/zzdj;->a(Lcom/google/android/gms/internal/play_billing/zzki;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    :catchall_0
    move-exception p1

    .line 33
    const-string v0, "BillingLogger"

    .line 34
    .line 35
    const-string v1, "Unable to log."

    .line 36
    .line 37
    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/play_billing/zzc;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 38
    .line 39
    .line 40
    return-void
.end method

.method public final j(Lcom/google/android/gms/internal/play_billing/zzko;)V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/android/billingclient/api/zzdh;->c:Lcom/android/billingclient/api/zzdj;

    .line 2
    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzki;->r()Lcom/google/android/gms/internal/play_billing/zzkg;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    iget-object v2, p0, Lcom/android/billingclient/api/zzdh;->b:Lcom/google/android/gms/internal/play_billing/zzjs;

    .line 8
    .line 9
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/play_billing/zzkg;->g(Lcom/google/android/gms/internal/play_billing/zzjs;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v1}, Lcom/google/android/gms/internal/play_billing/zzfr;->e()V

    .line 13
    .line 14
    .line 15
    iget-object v2, v1, Lcom/google/android/gms/internal/play_billing/zzfr;->f:Lcom/google/android/gms/internal/play_billing/zzfv;

    .line 16
    .line 17
    check-cast v2, Lcom/google/android/gms/internal/play_billing/zzki;

    .line 18
    .line 19
    invoke-static {v2, p1}, Lcom/google/android/gms/internal/play_billing/zzki;->w(Lcom/google/android/gms/internal/play_billing/zzki;Lcom/google/android/gms/internal/play_billing/zzko;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1}, Lcom/google/android/gms/internal/play_billing/zzfr;->c()Lcom/google/android/gms/internal/play_billing/zzfv;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    check-cast p1, Lcom/google/android/gms/internal/play_billing/zzki;

    .line 27
    .line 28
    invoke-virtual {v0, p1}, Lcom/android/billingclient/api/zzdj;->a(Lcom/google/android/gms/internal/play_billing/zzki;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    :catchall_0
    move-exception p1

    .line 33
    const-string v0, "BillingLogger"

    .line 34
    .line 35
    const-string v1, "Unable to log."

    .line 36
    .line 37
    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/play_billing/zzc;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 38
    .line 39
    .line 40
    return-void
.end method

.method public final k(Lcom/google/android/gms/internal/play_billing/zzks;)V
    .locals 2

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzki;->r()Lcom/google/android/gms/internal/play_billing/zzkg;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iget-object v1, p0, Lcom/android/billingclient/api/zzdh;->b:Lcom/google/android/gms/internal/play_billing/zzjs;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/play_billing/zzkg;->g(Lcom/google/android/gms/internal/play_billing/zzjs;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_billing/zzfr;->e()V

    .line 14
    .line 15
    .line 16
    iget-object v1, v0, Lcom/google/android/gms/internal/play_billing/zzfr;->f:Lcom/google/android/gms/internal/play_billing/zzfv;

    .line 17
    .line 18
    check-cast v1, Lcom/google/android/gms/internal/play_billing/zzki;

    .line 19
    .line 20
    invoke-static {v1, p1}, Lcom/google/android/gms/internal/play_billing/zzki;->q(Lcom/google/android/gms/internal/play_billing/zzki;Lcom/google/android/gms/internal/play_billing/zzks;)V

    .line 21
    .line 22
    .line 23
    iget-object p1, p0, Lcom/android/billingclient/api/zzdh;->c:Lcom/android/billingclient/api/zzdj;

    .line 24
    .line 25
    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_billing/zzfr;->c()Lcom/google/android/gms/internal/play_billing/zzfv;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    check-cast v0, Lcom/google/android/gms/internal/play_billing/zzki;

    .line 30
    .line 31
    invoke-virtual {p1, v0}, Lcom/android/billingclient/api/zzdj;->a(Lcom/google/android/gms/internal/play_billing/zzki;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    .line 33
    .line 34
    return-void

    .line 35
    :catchall_0
    move-exception p1

    .line 36
    const-string v0, "BillingLogger"

    .line 37
    .line 38
    const-string v1, "Unable to log."

    .line 39
    .line 40
    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/play_billing/zzc;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 41
    .line 42
    .line 43
    return-void
.end method

.method public final l(Lcom/google/android/gms/internal/play_billing/zzix;Lcom/google/android/gms/internal/play_billing/zzjs;)V
    .locals 1

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzki;->r()Lcom/google/android/gms/internal/play_billing/zzkg;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/play_billing/zzkg;->g(Lcom/google/android/gms/internal/play_billing/zzjs;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_billing/zzfr;->e()V

    .line 12
    .line 13
    .line 14
    iget-object p2, v0, Lcom/google/android/gms/internal/play_billing/zzfr;->f:Lcom/google/android/gms/internal/play_billing/zzfv;

    .line 15
    .line 16
    check-cast p2, Lcom/google/android/gms/internal/play_billing/zzki;

    .line 17
    .line 18
    invoke-static {p2, p1}, Lcom/google/android/gms/internal/play_billing/zzki;->s(Lcom/google/android/gms/internal/play_billing/zzki;Lcom/google/android/gms/internal/play_billing/zzix;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_billing/zzfr;->c()Lcom/google/android/gms/internal/play_billing/zzfv;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    check-cast p1, Lcom/google/android/gms/internal/play_billing/zzki;

    .line 26
    .line 27
    iget-object p2, p0, Lcom/android/billingclient/api/zzdh;->c:Lcom/android/billingclient/api/zzdj;

    .line 28
    .line 29
    invoke-virtual {p2, p1}, Lcom/android/billingclient/api/zzdj;->a(Lcom/google/android/gms/internal/play_billing/zzki;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    .line 31
    .line 32
    return-void

    .line 33
    :catchall_0
    move-exception p1

    .line 34
    const-string p2, "BillingLogger"

    .line 35
    .line 36
    const-string v0, "Unable to log."

    .line 37
    .line 38
    invoke-static {p2, v0, p1}, Lcom/google/android/gms/internal/play_billing/zzc;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 39
    .line 40
    .line 41
    return-void
.end method

.method public final m(Lcom/google/android/gms/internal/play_billing/zzjb;Lcom/google/android/gms/internal/play_billing/zzjs;)V
    .locals 1

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzki;->r()Lcom/google/android/gms/internal/play_billing/zzkg;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/play_billing/zzkg;->g(Lcom/google/android/gms/internal/play_billing/zzjs;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_billing/zzfr;->e()V

    .line 12
    .line 13
    .line 14
    iget-object p2, v0, Lcom/google/android/gms/internal/play_billing/zzfr;->f:Lcom/google/android/gms/internal/play_billing/zzfv;

    .line 15
    .line 16
    check-cast p2, Lcom/google/android/gms/internal/play_billing/zzki;

    .line 17
    .line 18
    invoke-static {p2, p1}, Lcom/google/android/gms/internal/play_billing/zzki;->t(Lcom/google/android/gms/internal/play_billing/zzki;Lcom/google/android/gms/internal/play_billing/zzjb;)V

    .line 19
    .line 20
    .line 21
    iget-object p1, p0, Lcom/android/billingclient/api/zzdh;->c:Lcom/android/billingclient/api/zzdj;

    .line 22
    .line 23
    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_billing/zzfr;->c()Lcom/google/android/gms/internal/play_billing/zzfv;

    .line 24
    .line 25
    .line 26
    move-result-object p2

    .line 27
    check-cast p2, Lcom/google/android/gms/internal/play_billing/zzki;

    .line 28
    .line 29
    invoke-virtual {p1, p2}, Lcom/android/billingclient/api/zzdj;->a(Lcom/google/android/gms/internal/play_billing/zzki;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    .line 31
    .line 32
    return-void

    .line 33
    :catchall_0
    move-exception p1

    .line 34
    const-string p2, "BillingLogger"

    .line 35
    .line 36
    const-string v0, "Unable to log."

    .line 37
    .line 38
    invoke-static {p2, v0, p1}, Lcom/google/android/gms/internal/play_billing/zzc;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 39
    .line 40
    .line 41
    return-void
.end method
