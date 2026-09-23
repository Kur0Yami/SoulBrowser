.class public final Lcom/google/android/gms/internal/play_billing/zzjb;
.super Lcom/google/android/gms/internal/play_billing/zzfv;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/play_billing/zzhd;


# static fields
.field private static final zzb:Lcom/google/android/gms/internal/play_billing/zzjb;


# instance fields
.field private zzd:I

.field private zze:I

.field private zzf:Ljava/lang/Object;

.field private zzg:I

.field private zzh:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/play_billing/zzjb;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/android/gms/internal/play_billing/zzjb;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/google/android/gms/internal/play_billing/zzjb;->zzb:Lcom/google/android/gms/internal/play_billing/zzjb;

    .line 7
    .line 8
    const-class v1, Lcom/google/android/gms/internal/play_billing/zzjb;

    .line 9
    .line 10
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/play_billing/zzfv;->e(Ljava/lang/Class;Lcom/google/android/gms/internal/play_billing/zzfv;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/play_billing/zzfv;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/google/android/gms/internal/play_billing/zzjb;->zze:I

    .line 6
    .line 7
    return-void
.end method

.method public static synthetic q(Lcom/google/android/gms/internal/play_billing/zzjb;I)V
    .locals 0

    .line 1
    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/google/android/gms/internal/play_billing/zzjb;->zzg:I

    iget p1, p0, Lcom/google/android/gms/internal/play_billing/zzjb;->zzd:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/android/gms/internal/play_billing/zzjb;->zzd:I

    return-void
.end method

.method public static r()Lcom/google/android/gms/internal/play_billing/zziz;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/play_billing/zzjb;->zzb:Lcom/google/android/gms/internal/play_billing/zzjb;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_billing/zzfv;->j()Lcom/google/android/gms/internal/play_billing/zzfr;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/google/android/gms/internal/play_billing/zziz;

    .line 8
    .line 9
    return-object v0
.end method

.method public static t(Lcom/google/android/gms/internal/play_billing/zzjb;Lcom/google/android/gms/internal/play_billing/zzjl;)V
    .locals 0

    .line 1
    iget p1, p1, Lcom/google/android/gms/internal/play_billing/zzjl;->c:I

    .line 2
    .line 3
    iput p1, p0, Lcom/google/android/gms/internal/play_billing/zzjb;->zzh:I

    .line 4
    .line 5
    iget p1, p0, Lcom/google/android/gms/internal/play_billing/zzjb;->zzd:I

    .line 6
    .line 7
    or-int/lit8 p1, p1, 0x2

    .line 8
    .line 9
    iput p1, p0, Lcom/google/android/gms/internal/play_billing/zzjb;->zzd:I

    .line 10
    .line 11
    return-void
.end method

.method public static synthetic u(Lcom/google/android/gms/internal/play_billing/zzjb;Lcom/google/android/gms/internal/play_billing/zzkf;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/play_billing/zzjb;->zzf:Ljava/lang/Object;

    .line 2
    .line 3
    const/4 p1, 0x4

    .line 4
    iput p1, p0, Lcom/google/android/gms/internal/play_billing/zzjb;->zze:I

    .line 5
    .line 6
    return-void
.end method

.method public static synthetic v(Lcom/google/android/gms/internal/play_billing/zzjb;Lcom/google/android/gms/internal/play_billing/zzkv;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/play_billing/zzjb;->zzf:Ljava/lang/Object;

    .line 2
    .line 3
    const/4 p1, 0x3

    .line 4
    iput p1, p0, Lcom/google/android/gms/internal/play_billing/zzjb;->zze:I

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final i(I)Ljava/lang/Object;
    .locals 7

    .line 1
    add-int/lit8 p1, p1, -0x1

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    if-eqz p1, :cond_4

    .line 5
    .line 6
    const/4 v1, 0x5

    .line 7
    const/4 v2, 0x4

    .line 8
    const/4 v3, 0x3

    .line 9
    const/4 v4, 0x2

    .line 10
    if-eq p1, v4, :cond_3

    .line 11
    .line 12
    if-eq p1, v3, :cond_2

    .line 13
    .line 14
    if-eq p1, v2, :cond_1

    .line 15
    .line 16
    if-ne p1, v1, :cond_0

    .line 17
    .line 18
    sget-object p1, Lcom/google/android/gms/internal/play_billing/zzjb;->zzb:Lcom/google/android/gms/internal/play_billing/zzjb;

    .line 19
    .line 20
    return-object p1

    .line 21
    :cond_0
    const/4 p1, 0x0

    .line 22
    throw p1

    .line 23
    :cond_1
    new-instance p1, Lcom/google/android/gms/internal/play_billing/zziz;

    .line 24
    .line 25
    sget-object v0, Lcom/google/android/gms/internal/play_billing/zzjb;->zzb:Lcom/google/android/gms/internal/play_billing/zzjb;

    .line 26
    .line 27
    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/play_billing/zzfr;-><init>(Lcom/google/android/gms/internal/play_billing/zzfv;)V

    .line 28
    .line 29
    .line 30
    return-object p1

    .line 31
    :cond_2
    new-instance p1, Lcom/google/android/gms/internal/play_billing/zzjb;

    .line 32
    .line 33
    invoke-direct {p1}, Lcom/google/android/gms/internal/play_billing/zzjb;-><init>()V

    .line 34
    .line 35
    .line 36
    return-object p1

    .line 37
    :cond_3
    const/16 p1, 0xa

    .line 38
    .line 39
    new-array p1, p1, [Ljava/lang/Object;

    .line 40
    .line 41
    const-string v5, "zzf"

    .line 42
    .line 43
    const/4 v6, 0x0

    .line 44
    aput-object v5, p1, v6

    .line 45
    .line 46
    const-string v5, "zze"

    .line 47
    .line 48
    aput-object v5, p1, v0

    .line 49
    .line 50
    const-string v0, "zzd"

    .line 51
    .line 52
    aput-object v0, p1, v4

    .line 53
    .line 54
    const-string v0, "zzg"

    .line 55
    .line 56
    aput-object v0, p1, v3

    .line 57
    .line 58
    sget-object v0, Lcom/google/android/gms/internal/play_billing/zziy;->a:Lcom/google/android/gms/internal/play_billing/zzfy;

    .line 59
    .line 60
    aput-object v0, p1, v2

    .line 61
    .line 62
    const-class v0, Lcom/google/android/gms/internal/play_billing/zzjz;

    .line 63
    .line 64
    aput-object v0, p1, v1

    .line 65
    .line 66
    const-class v0, Lcom/google/android/gms/internal/play_billing/zzkv;

    .line 67
    .line 68
    const/4 v1, 0x6

    .line 69
    aput-object v0, p1, v1

    .line 70
    .line 71
    const-class v0, Lcom/google/android/gms/internal/play_billing/zzkf;

    .line 72
    .line 73
    const/4 v1, 0x7

    .line 74
    aput-object v0, p1, v1

    .line 75
    .line 76
    const-string v0, "zzh"

    .line 77
    .line 78
    const/16 v1, 0x8

    .line 79
    .line 80
    aput-object v0, p1, v1

    .line 81
    .line 82
    sget-object v0, Lcom/google/android/gms/internal/play_billing/zzjk;->a:Lcom/google/android/gms/internal/play_billing/zzfy;

    .line 83
    .line 84
    const/16 v1, 0x9

    .line 85
    .line 86
    aput-object v0, p1, v1

    .line 87
    .line 88
    sget-object v0, Lcom/google/android/gms/internal/play_billing/zzjb;->zzb:Lcom/google/android/gms/internal/play_billing/zzjb;

    .line 89
    .line 90
    new-instance v1, Lcom/google/android/gms/internal/play_billing/zzhl;

    .line 91
    .line 92
    const-string v2, "\u0004\u0005\u0001\u0001\u0001\u0005\u0005\u0000\u0000\u0000\u0001\u180c\u0000\u0002<\u0000\u0003<\u0000\u0004<\u0000\u0005\u180c\u0001"

    .line 93
    .line 94
    invoke-direct {v1, v0, v2, p1}, Lcom/google/android/gms/internal/play_billing/zzhl;-><init>(Lcom/google/android/gms/internal/play_billing/zzhc;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 95
    .line 96
    .line 97
    return-object v1

    .line 98
    :cond_4
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 99
    .line 100
    .line 101
    move-result-object p1

    .line 102
    return-object p1
.end method

.method public final s()Lcom/google/android/gms/internal/play_billing/zzkf;
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/play_billing/zzjb;->zze:I

    .line 2
    .line 3
    const/4 v1, 0x4

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzjb;->zzf:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Lcom/google/android/gms/internal/play_billing/zzkf;

    .line 9
    .line 10
    return-object v0

    .line 11
    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzkf;->q()Lcom/google/android/gms/internal/play_billing/zzkf;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    return-object v0
.end method
