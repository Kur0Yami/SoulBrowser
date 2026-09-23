.class public final Lcom/google/android/gms/internal/consent_sdk/zzhc;
.super Lcom/google/android/gms/internal/consent_sdk/zzqm;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/consent_sdk/zzrr;


# static fields
.field private static final zzb:Lcom/google/android/gms/internal/consent_sdk/zzhc;


# instance fields
.field private zzd:I

.field private zze:Lcom/google/android/gms/internal/consent_sdk/zzgy;

.field private zzf:Ljava/lang/String;

.field private zzg:Lcom/google/android/gms/internal/consent_sdk/zzha;

.field private zzh:Lcom/google/android/gms/internal/consent_sdk/zzgw;

.field private zzi:Lcom/google/android/gms/internal/consent_sdk/zzgt;

.field private zzj:Lcom/google/android/gms/internal/consent_sdk/zzqr;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/consent_sdk/zzhc;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/android/gms/internal/consent_sdk/zzhc;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/google/android/gms/internal/consent_sdk/zzhc;->zzb:Lcom/google/android/gms/internal/consent_sdk/zzhc;

    .line 7
    .line 8
    const-class v1, Lcom/google/android/gms/internal/consent_sdk/zzhc;

    .line 9
    .line 10
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/consent_sdk/zzqm;->l(Ljava/lang/Class;Lcom/google/android/gms/internal/consent_sdk/zzqm;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/consent_sdk/zzqm;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, ""

    .line 5
    .line 6
    iput-object v0, p0, Lcom/google/android/gms/internal/consent_sdk/zzhc;->zzf:Ljava/lang/String;

    .line 7
    .line 8
    sget-object v0, Lcom/google/android/gms/internal/consent_sdk/zzry;->i:Lcom/google/android/gms/internal/consent_sdk/zzry;

    .line 9
    .line 10
    iput-object v0, p0, Lcom/google/android/gms/internal/consent_sdk/zzhc;->zzj:Lcom/google/android/gms/internal/consent_sdk/zzqr;

    .line 11
    .line 12
    return-void
.end method

.method public static m()Lcom/google/android/gms/internal/consent_sdk/zzgu;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/consent_sdk/zzhc;->zzb:Lcom/google/android/gms/internal/consent_sdk/zzhc;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/consent_sdk/zzqm;->g()Lcom/google/android/gms/internal/consent_sdk/zzqj;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/google/android/gms/internal/consent_sdk/zzgu;

    .line 8
    .line 9
    return-object v0
.end method

.method public static synthetic n(Lcom/google/android/gms/internal/consent_sdk/zzhc;Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/consent_sdk/zzhc;->zzj:Lcom/google/android/gms/internal/consent_sdk/zzqr;

    .line 5
    .line 6
    invoke-interface {v0}, Lcom/google/android/gms/internal/consent_sdk/zzqr;->zzc()Z

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    add-int/2addr v1, v1

    .line 17
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/consent_sdk/zzqr;->f(I)Lcom/google/android/gms/internal/consent_sdk/zzqr;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    iput-object v0, p0, Lcom/google/android/gms/internal/consent_sdk/zzhc;->zzj:Lcom/google/android/gms/internal/consent_sdk/zzqr;

    .line 22
    .line 23
    :cond_0
    iget-object p0, p0, Lcom/google/android/gms/internal/consent_sdk/zzhc;->zzj:Lcom/google/android/gms/internal/consent_sdk/zzqr;

    .line 24
    .line 25
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method public static synthetic o(Lcom/google/android/gms/internal/consent_sdk/zzhc;Ljava/lang/String;)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/consent_sdk/zzhc;->zzd:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/android/gms/internal/consent_sdk/zzhc;->zzd:I

    iput-object p1, p0, Lcom/google/android/gms/internal/consent_sdk/zzhc;->zzf:Ljava/lang/String;

    return-void
.end method

.method public static synthetic p(Lcom/google/android/gms/internal/consent_sdk/zzhc;Lcom/google/android/gms/internal/consent_sdk/zzgt;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/consent_sdk/zzhc;->zzi:Lcom/google/android/gms/internal/consent_sdk/zzgt;

    iget p1, p0, Lcom/google/android/gms/internal/consent_sdk/zzhc;->zzd:I

    or-int/lit8 p1, p1, 0x10

    iput p1, p0, Lcom/google/android/gms/internal/consent_sdk/zzhc;->zzd:I

    return-void
.end method

.method public static synthetic q(Lcom/google/android/gms/internal/consent_sdk/zzhc;Lcom/google/android/gms/internal/consent_sdk/zzgw;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/consent_sdk/zzhc;->zzh:Lcom/google/android/gms/internal/consent_sdk/zzgw;

    .line 2
    .line 3
    iget p1, p0, Lcom/google/android/gms/internal/consent_sdk/zzhc;->zzd:I

    .line 4
    .line 5
    or-int/lit8 p1, p1, 0x8

    .line 6
    .line 7
    iput p1, p0, Lcom/google/android/gms/internal/consent_sdk/zzhc;->zzd:I

    .line 8
    .line 9
    return-void
.end method

.method public static synthetic r(Lcom/google/android/gms/internal/consent_sdk/zzhc;Lcom/google/android/gms/internal/consent_sdk/zzgy;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/consent_sdk/zzhc;->zze:Lcom/google/android/gms/internal/consent_sdk/zzgy;

    .line 2
    .line 3
    iget p1, p0, Lcom/google/android/gms/internal/consent_sdk/zzhc;->zzd:I

    .line 4
    .line 5
    or-int/lit8 p1, p1, 0x1

    .line 6
    .line 7
    iput p1, p0, Lcom/google/android/gms/internal/consent_sdk/zzhc;->zzd:I

    .line 8
    .line 9
    return-void
.end method

.method public static synthetic s(Lcom/google/android/gms/internal/consent_sdk/zzhc;Lcom/google/android/gms/internal/consent_sdk/zzha;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/consent_sdk/zzhc;->zzg:Lcom/google/android/gms/internal/consent_sdk/zzha;

    .line 2
    .line 3
    iget p1, p0, Lcom/google/android/gms/internal/consent_sdk/zzhc;->zzd:I

    .line 4
    .line 5
    or-int/lit8 p1, p1, 0x4

    .line 6
    .line 7
    iput p1, p0, Lcom/google/android/gms/internal/consent_sdk/zzhc;->zzd:I

    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final f(I)Ljava/lang/Object;
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
    sget-object p1, Lcom/google/android/gms/internal/consent_sdk/zzhc;->zzb:Lcom/google/android/gms/internal/consent_sdk/zzhc;

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
    new-instance p1, Lcom/google/android/gms/internal/consent_sdk/zzgu;

    .line 24
    .line 25
    sget-object v0, Lcom/google/android/gms/internal/consent_sdk/zzhc;->zzb:Lcom/google/android/gms/internal/consent_sdk/zzhc;

    .line 26
    .line 27
    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/consent_sdk/zzqj;-><init>(Lcom/google/android/gms/internal/consent_sdk/zzqm;)V

    .line 28
    .line 29
    .line 30
    return-object p1

    .line 31
    :cond_2
    new-instance p1, Lcom/google/android/gms/internal/consent_sdk/zzhc;

    .line 32
    .line 33
    invoke-direct {p1}, Lcom/google/android/gms/internal/consent_sdk/zzhc;-><init>()V

    .line 34
    .line 35
    .line 36
    return-object p1

    .line 37
    :cond_3
    const/4 p1, 0x7

    .line 38
    new-array p1, p1, [Ljava/lang/Object;

    .line 39
    .line 40
    const-string v5, "zzd"

    .line 41
    .line 42
    const/4 v6, 0x0

    .line 43
    aput-object v5, p1, v6

    .line 44
    .line 45
    const-string v5, "zze"

    .line 46
    .line 47
    aput-object v5, p1, v0

    .line 48
    .line 49
    const-string v0, "zzf"

    .line 50
    .line 51
    aput-object v0, p1, v4

    .line 52
    .line 53
    const-string v0, "zzg"

    .line 54
    .line 55
    aput-object v0, p1, v3

    .line 56
    .line 57
    const-string v0, "zzh"

    .line 58
    .line 59
    aput-object v0, p1, v2

    .line 60
    .line 61
    const-string v0, "zzi"

    .line 62
    .line 63
    aput-object v0, p1, v1

    .line 64
    .line 65
    const-string v0, "zzj"

    .line 66
    .line 67
    const/4 v1, 0x6

    .line 68
    aput-object v0, p1, v1

    .line 69
    .line 70
    sget-object v0, Lcom/google/android/gms/internal/consent_sdk/zzhc;->zzb:Lcom/google/android/gms/internal/consent_sdk/zzhc;

    .line 71
    .line 72
    new-instance v1, Lcom/google/android/gms/internal/consent_sdk/zzrz;

    .line 73
    .line 74
    const-string v2, "\u0004\u0006\u0000\u0001\u0001\u0006\u0006\u0000\u0001\u0000\u0001\u1009\u0000\u0002\u1208\u0001\u0003\u1009\u0002\u0004\u1009\u0003\u0005\u1009\u0004\u0006\u021a"

    .line 75
    .line 76
    invoke-direct {v1, v0, v2, p1}, Lcom/google/android/gms/internal/consent_sdk/zzrz;-><init>(Lcom/google/android/gms/internal/consent_sdk/zzrq;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 77
    .line 78
    .line 79
    return-object v1

    .line 80
    :cond_4
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    return-object p1
.end method
