.class final synthetic Lcom/google/android/gms/internal/cast/zzh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/tasks/OnSuccessListener;


# instance fields
.field public final synthetic c:Lcom/google/android/gms/internal/cast/zzj;

.field public final synthetic f:Lcom/google/android/gms/internal/cast/zzqr;

.field public final synthetic g:I


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/cast/zzj;Lcom/google/android/gms/internal/cast/zzqr;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/cast/zzh;->c:Lcom/google/android/gms/internal/cast/zzj;

    iput-object p2, p0, Lcom/google/android/gms/internal/cast/zzh;->f:Lcom/google/android/gms/internal/cast/zzqr;

    iput p3, p0, Lcom/google/android/gms/internal/cast/zzh;->g:I

    return-void
.end method


# virtual methods
.method public final onSuccess(Ljava/lang/Object;)V
    .locals 4

    .line 1
    check-cast p1, Ljava/lang/Boolean;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    if-nez p1, :cond_0

    .line 8
    .line 9
    goto :goto_1

    .line 10
    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/cast/zzh;->f:Lcom/google/android/gms/internal/cast/zzqr;

    .line 11
    .line 12
    invoke-static {p1}, Lcom/google/android/gms/internal/cast/zzqr;->p(Lcom/google/android/gms/internal/cast/zzqr;)Lcom/google/android/gms/internal/cast/zzqq;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzh;->c:Lcom/google/android/gms/internal/cast/zzj;

    .line 17
    .line 18
    iget-object v1, v0, Lcom/google/android/gms/internal/cast/zzj;->f:Ljava/lang/String;

    .line 19
    .line 20
    invoke-virtual {p1}, Lcom/google/android/gms/internal/cast/zzya;->c()V

    .line 21
    .line 22
    .line 23
    iget-object v2, p1, Lcom/google/android/gms/internal/cast/zzya;->f:Lcom/google/android/gms/internal/cast/zzyd;

    .line 24
    .line 25
    check-cast v2, Lcom/google/android/gms/internal/cast/zzqr;

    .line 26
    .line 27
    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/cast/zzqr;->s(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1}, Lcom/google/android/gms/internal/cast/zzya;->c()V

    .line 31
    .line 32
    .line 33
    iget-object v2, p1, Lcom/google/android/gms/internal/cast/zzya;->f:Lcom/google/android/gms/internal/cast/zzyd;

    .line 34
    .line 35
    check-cast v2, Lcom/google/android/gms/internal/cast/zzqr;

    .line 36
    .line 37
    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/cast/zzqr;->t(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    iget-object v1, v0, Lcom/google/android/gms/internal/cast/zzj;->g:Ljava/lang/Long;

    .line 41
    .line 42
    if-eqz v1, :cond_1

    .line 43
    .line 44
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 45
    .line 46
    .line 47
    move-result-wide v1

    .line 48
    long-to-int v1, v1

    .line 49
    invoke-virtual {p1}, Lcom/google/android/gms/internal/cast/zzya;->c()V

    .line 50
    .line 51
    .line 52
    iget-object v2, p1, Lcom/google/android/gms/internal/cast/zzya;->f:Lcom/google/android/gms/internal/cast/zzyd;

    .line 53
    .line 54
    check-cast v2, Lcom/google/android/gms/internal/cast/zzqr;

    .line 55
    .line 56
    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/cast/zzqr;->u(I)V

    .line 57
    .line 58
    .line 59
    :cond_1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/cast/zzya;->e()Lcom/google/android/gms/internal/cast/zzyd;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    check-cast p1, Lcom/google/android/gms/internal/cast/zzqr;

    .line 64
    .line 65
    iget v1, v0, Lcom/google/android/gms/internal/cast/zzj;->k:I

    .line 66
    .line 67
    add-int/lit8 v2, v1, -0x1

    .line 68
    .line 69
    if-eqz v1, :cond_5

    .line 70
    .line 71
    iget v1, p0, Lcom/google/android/gms/internal/cast/zzh;->g:I

    .line 72
    .line 73
    add-int/lit8 v1, v1, -0x1

    .line 74
    .line 75
    const/4 v3, 0x1

    .line 76
    if-eqz v2, :cond_3

    .line 77
    .line 78
    if-eq v2, v3, :cond_2

    .line 79
    .line 80
    invoke-static {v1, p1}, Lcom/google/android/datatransport/Event;->f(ILcom/google/android/gms/internal/cast/zzqr;)Lcom/google/android/datatransport/Event;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    goto :goto_0

    .line 85
    :cond_2
    invoke-static {v1, p1}, Lcom/google/android/datatransport/Event;->d(ILcom/google/android/gms/internal/cast/zzqr;)Lcom/google/android/datatransport/Event;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    goto :goto_0

    .line 90
    :cond_3
    invoke-static {v1, p1}, Lcom/google/android/datatransport/Event;->f(ILcom/google/android/gms/internal/cast/zzqr;)Lcom/google/android/datatransport/Event;

    .line 91
    .line 92
    .line 93
    move-result-object p1

    .line 94
    :goto_0
    sget-object v1, Lcom/google/android/gms/internal/cast/zzj;->l:Lcom/google/android/gms/cast/internal/Logger;

    .line 95
    .line 96
    new-array v2, v3, [Ljava/lang/Object;

    .line 97
    .line 98
    const/4 v3, 0x0

    .line 99
    aput-object p1, v2, v3

    .line 100
    .line 101
    const-string v3, "analytics event: %s"

    .line 102
    .line 103
    invoke-virtual {v1, v3, v2}, Lcom/google/android/gms/cast/internal/Logger;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 104
    .line 105
    .line 106
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    .line 108
    .line 109
    iget-object v0, v0, Lcom/google/android/gms/internal/cast/zzj;->i:Lcom/google/android/datatransport/Transport;

    .line 110
    .line 111
    if-eqz v0, :cond_4

    .line 112
    .line 113
    invoke-interface {v0, p1}, Lcom/google/android/datatransport/Transport;->a(Lcom/google/android/datatransport/Event;)V

    .line 114
    .line 115
    .line 116
    :cond_4
    :goto_1
    return-void

    .line 117
    :cond_5
    const/4 p1, 0x0

    .line 118
    throw p1
.end method
