.class public final Lcom/google/android/gms/internal/cast/zzqg;
.super Lcom/google/android/gms/internal/cast/zzyd;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/cast/zzzj;


# static fields
.field private static final zzs:Lcom/google/android/gms/internal/cast/zzqg;


# instance fields
.field private zzb:I

.field private zzd:Lcom/google/android/gms/internal/cast/zzrp;

.field private zze:Z

.field private zzf:J

.field private zzg:I

.field private zzh:I

.field private zzi:I

.field private zzj:I

.field private zzk:I

.field private zzl:Lcom/google/android/gms/internal/cast/zzui;

.field private zzm:I

.field private zzn:I

.field private zzo:Z

.field private zzp:I

.field private zzq:I

.field private zzr:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/cast/zzqg;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/android/gms/internal/cast/zzyd;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/google/android/gms/internal/cast/zzqg;->zzs:Lcom/google/android/gms/internal/cast/zzqg;

    .line 7
    .line 8
    const-class v1, Lcom/google/android/gms/internal/cast/zzqg;

    .line 9
    .line 10
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/cast/zzyd;->h(Ljava/lang/Class;Lcom/google/android/gms/internal/cast/zzyd;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public static n()Lcom/google/android/gms/internal/cast/zzqf;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/cast/zzqg;->zzs:Lcom/google/android/gms/internal/cast/zzqg;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/cast/zzyd;->d()Lcom/google/android/gms/internal/cast/zzya;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/google/android/gms/internal/cast/zzqf;

    .line 8
    .line 9
    return-object v0
.end method

.method public static o(Lcom/google/android/gms/internal/cast/zzqg;)Lcom/google/android/gms/internal/cast/zzqf;
    .locals 5

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/cast/zzqg;->zzs:Lcom/google/android/gms/internal/cast/zzqg;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/cast/zzyd;->d()Lcom/google/android/gms/internal/cast/zzya;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, v0, Lcom/google/android/gms/internal/cast/zzya;->c:Lcom/google/android/gms/internal/cast/zzyd;

    .line 8
    .line 9
    invoke-virtual {v1, p0}, Lcom/google/android/gms/internal/cast/zzyd;->equals(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    if-nez v2, :cond_1

    .line 14
    .line 15
    iget-object v2, v0, Lcom/google/android/gms/internal/cast/zzya;->f:Lcom/google/android/gms/internal/cast/zzyd;

    .line 16
    .line 17
    invoke-virtual {v2}, Lcom/google/android/gms/internal/cast/zzyd;->l()Z

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    if-nez v2, :cond_0

    .line 22
    .line 23
    const/4 v2, 0x4

    .line 24
    const/4 v3, 0x0

    .line 25
    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/cast/zzyd;->j(ILcom/google/android/gms/internal/cast/zzyd;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    check-cast v1, Lcom/google/android/gms/internal/cast/zzyd;

    .line 30
    .line 31
    iget-object v2, v0, Lcom/google/android/gms/internal/cast/zzya;->f:Lcom/google/android/gms/internal/cast/zzyd;

    .line 32
    .line 33
    sget-object v3, Lcom/google/android/gms/internal/cast/zzzp;->c:Lcom/google/android/gms/internal/cast/zzzp;

    .line 34
    .line 35
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 36
    .line 37
    .line 38
    move-result-object v4

    .line 39
    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/cast/zzzp;->a(Ljava/lang/Class;)Lcom/google/android/gms/internal/cast/zzzs;

    .line 40
    .line 41
    .line 42
    move-result-object v3

    .line 43
    invoke-interface {v3, v1, v2}, Lcom/google/android/gms/internal/cast/zzzs;->c(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 44
    .line 45
    .line 46
    iput-object v1, v0, Lcom/google/android/gms/internal/cast/zzya;->f:Lcom/google/android/gms/internal/cast/zzyd;

    .line 47
    .line 48
    :cond_0
    iget-object v1, v0, Lcom/google/android/gms/internal/cast/zzya;->f:Lcom/google/android/gms/internal/cast/zzyd;

    .line 49
    .line 50
    sget-object v2, Lcom/google/android/gms/internal/cast/zzzp;->c:Lcom/google/android/gms/internal/cast/zzzp;

    .line 51
    .line 52
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 53
    .line 54
    .line 55
    move-result-object v3

    .line 56
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/cast/zzzp;->a(Ljava/lang/Class;)Lcom/google/android/gms/internal/cast/zzzs;

    .line 57
    .line 58
    .line 59
    move-result-object v2

    .line 60
    invoke-interface {v2, v1, p0}, Lcom/google/android/gms/internal/cast/zzzs;->c(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 61
    .line 62
    .line 63
    :cond_1
    check-cast v0, Lcom/google/android/gms/internal/cast/zzqf;

    .line 64
    .line 65
    return-object v0
.end method

.method public static p()Lcom/google/android/gms/internal/cast/zzqg;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/cast/zzqg;->zzs:Lcom/google/android/gms/internal/cast/zzqg;

    return-object v0
.end method


# virtual methods
.method public final j(ILcom/google/android/gms/internal/cast/zzyd;)Ljava/lang/Object;
    .locals 6

    .line 1
    add-int/lit8 p1, p1, -0x1

    .line 2
    .line 3
    const/4 p2, 0x1

    .line 4
    if-eqz p1, :cond_4

    .line 5
    .line 6
    const/4 v0, 0x5

    .line 7
    const/4 v1, 0x4

    .line 8
    const/4 v2, 0x3

    .line 9
    const/4 v3, 0x2

    .line 10
    if-eq p1, v3, :cond_3

    .line 11
    .line 12
    if-eq p1, v2, :cond_2

    .line 13
    .line 14
    if-eq p1, v1, :cond_1

    .line 15
    .line 16
    if-ne p1, v0, :cond_0

    .line 17
    .line 18
    sget-object p1, Lcom/google/android/gms/internal/cast/zzqg;->zzs:Lcom/google/android/gms/internal/cast/zzqg;

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
    new-instance p1, Lcom/google/android/gms/internal/cast/zzqf;

    .line 24
    .line 25
    sget-object p2, Lcom/google/android/gms/internal/cast/zzqg;->zzs:Lcom/google/android/gms/internal/cast/zzqg;

    .line 26
    .line 27
    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/cast/zzya;-><init>(Lcom/google/android/gms/internal/cast/zzyd;)V

    .line 28
    .line 29
    .line 30
    return-object p1

    .line 31
    :cond_2
    new-instance p1, Lcom/google/android/gms/internal/cast/zzqg;

    .line 32
    .line 33
    invoke-direct {p1}, Lcom/google/android/gms/internal/cast/zzyd;-><init>()V

    .line 34
    .line 35
    .line 36
    return-object p1

    .line 37
    :cond_3
    const/16 p1, 0x13

    .line 38
    .line 39
    new-array p1, p1, [Ljava/lang/Object;

    .line 40
    .line 41
    const-string v4, "zzb"

    .line 42
    .line 43
    const/4 v5, 0x0

    .line 44
    aput-object v4, p1, v5

    .line 45
    .line 46
    const-string v4, "zzd"

    .line 47
    .line 48
    aput-object v4, p1, p2

    .line 49
    .line 50
    const-string p2, "zze"

    .line 51
    .line 52
    aput-object p2, p1, v3

    .line 53
    .line 54
    const-string p2, "zzf"

    .line 55
    .line 56
    aput-object p2, p1, v2

    .line 57
    .line 58
    const-string p2, "zzg"

    .line 59
    .line 60
    aput-object p2, p1, v1

    .line 61
    .line 62
    const-string p2, "zzh"

    .line 63
    .line 64
    aput-object p2, p1, v0

    .line 65
    .line 66
    sget-object p2, Lcom/google/android/gms/internal/cast/zzlh;->a:Lcom/google/android/gms/internal/cast/zzyh;

    .line 67
    .line 68
    const/4 v0, 0x6

    .line 69
    aput-object p2, p1, v0

    .line 70
    .line 71
    const-string p2, "zzi"

    .line 72
    .line 73
    const/4 v0, 0x7

    .line 74
    aput-object p2, p1, v0

    .line 75
    .line 76
    sget-object p2, Lcom/google/android/gms/internal/cast/zzlf;->a:Lcom/google/android/gms/internal/cast/zzyh;

    .line 77
    .line 78
    const/16 v0, 0x8

    .line 79
    .line 80
    aput-object p2, p1, v0

    .line 81
    .line 82
    const-string p2, "zzj"

    .line 83
    .line 84
    const/16 v0, 0x9

    .line 85
    .line 86
    aput-object p2, p1, v0

    .line 87
    .line 88
    const-string p2, "zzk"

    .line 89
    .line 90
    const/16 v0, 0xa

    .line 91
    .line 92
    aput-object p2, p1, v0

    .line 93
    .line 94
    const-string p2, "zzl"

    .line 95
    .line 96
    const/16 v0, 0xb

    .line 97
    .line 98
    aput-object p2, p1, v0

    .line 99
    .line 100
    const-string p2, "zzm"

    .line 101
    .line 102
    const/16 v0, 0xc

    .line 103
    .line 104
    aput-object p2, p1, v0

    .line 105
    .line 106
    sget-object p2, Lcom/google/android/gms/internal/cast/zzmj;->a:Lcom/google/android/gms/internal/cast/zzyh;

    .line 107
    .line 108
    const/16 v0, 0xd

    .line 109
    .line 110
    aput-object p2, p1, v0

    .line 111
    .line 112
    const-string p2, "zzn"

    .line 113
    .line 114
    const/16 v0, 0xe

    .line 115
    .line 116
    aput-object p2, p1, v0

    .line 117
    .line 118
    const-string p2, "zzo"

    .line 119
    .line 120
    const/16 v0, 0xf

    .line 121
    .line 122
    aput-object p2, p1, v0

    .line 123
    .line 124
    const-string p2, "zzp"

    .line 125
    .line 126
    const/16 v0, 0x10

    .line 127
    .line 128
    aput-object p2, p1, v0

    .line 129
    .line 130
    const-string p2, "zzq"

    .line 131
    .line 132
    const/16 v0, 0x11

    .line 133
    .line 134
    aput-object p2, p1, v0

    .line 135
    .line 136
    const-string p2, "zzr"

    .line 137
    .line 138
    const/16 v0, 0x12

    .line 139
    .line 140
    aput-object p2, p1, v0

    .line 141
    .line 142
    sget-object p2, Lcom/google/android/gms/internal/cast/zzqg;->zzs:Lcom/google/android/gms/internal/cast/zzqg;

    .line 143
    .line 144
    new-instance v0, Lcom/google/android/gms/internal/cast/zzzr;

    .line 145
    .line 146
    const-string v1, "\u0001\u000f\u0000\u0001\u0001\u000f\u000f\u0000\u0000\u0000\u0001\u1009\u0000\u0002\u1007\u0001\u0003\u1005\u0002\u0004\u1006\u0003\u0005\u180c\u0004\u0006\u180c\u0005\u0007\u1004\u0006\u0008\u1004\u0007\t\u1009\u0008\n\u180c\t\u000b\u1004\n\u000c\u1007\u000b\r\u1004\u000c\u000e\u1004\r\u000f\u1007\u000e"

    .line 147
    .line 148
    invoke-direct {v0, p2, v1, p1}, Lcom/google/android/gms/internal/cast/zzzr;-><init>(Lcom/google/android/gms/internal/cast/zzzi;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 149
    .line 150
    .line 151
    return-object v0

    .line 152
    :cond_4
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 153
    .line 154
    .line 155
    move-result-object p1

    .line 156
    return-object p1
.end method

.method public final synthetic q(Lcom/google/android/gms/internal/cast/zzrp;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/cast/zzqg;->zzd:Lcom/google/android/gms/internal/cast/zzrp;

    .line 2
    .line 3
    iget p1, p0, Lcom/google/android/gms/internal/cast/zzqg;->zzb:I

    .line 4
    .line 5
    or-int/lit8 p1, p1, 0x1

    .line 6
    .line 7
    iput p1, p0, Lcom/google/android/gms/internal/cast/zzqg;->zzb:I

    .line 8
    .line 9
    return-void
.end method

.method public final synthetic r(Z)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/cast/zzqg;->zzb:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/android/gms/internal/cast/zzqg;->zzb:I

    iput-boolean p1, p0, Lcom/google/android/gms/internal/cast/zzqg;->zze:Z

    return-void
.end method

.method public final synthetic s(J)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/cast/zzqg;->zzb:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/android/gms/internal/cast/zzqg;->zzb:I

    iput-wide p1, p0, Lcom/google/android/gms/internal/cast/zzqg;->zzf:J

    return-void
.end method

.method public final synthetic t(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/cast/zzqg;->zzb:I

    .line 2
    .line 3
    or-int/lit8 v0, v0, 0x40

    .line 4
    .line 5
    iput v0, p0, Lcom/google/android/gms/internal/cast/zzqg;->zzb:I

    .line 6
    .line 7
    iput p1, p0, Lcom/google/android/gms/internal/cast/zzqg;->zzj:I

    .line 8
    .line 9
    return-void
.end method

.method public final synthetic u(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/cast/zzqg;->zzb:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/google/android/gms/internal/cast/zzqg;->zzb:I

    iput p1, p0, Lcom/google/android/gms/internal/cast/zzqg;->zzk:I

    return-void
.end method

.method public final synthetic v(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/cast/zzqg;->zzb:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Lcom/google/android/gms/internal/cast/zzqg;->zzb:I

    iput p1, p0, Lcom/google/android/gms/internal/cast/zzqg;->zzn:I

    return-void
.end method

.method public final synthetic w(Z)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/cast/zzqg;->zzb:I

    or-int/lit16 v0, v0, 0x800

    iput v0, p0, Lcom/google/android/gms/internal/cast/zzqg;->zzb:I

    iput-boolean p1, p0, Lcom/google/android/gms/internal/cast/zzqg;->zzo:Z

    return-void
.end method

.method public final synthetic x(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/cast/zzqg;->zzb:I

    or-int/lit16 v0, v0, 0x1000

    iput v0, p0, Lcom/google/android/gms/internal/cast/zzqg;->zzb:I

    iput p1, p0, Lcom/google/android/gms/internal/cast/zzqg;->zzp:I

    return-void
.end method

.method public final synthetic y(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/cast/zzqg;->zzb:I

    or-int/lit16 v0, v0, 0x2000

    iput v0, p0, Lcom/google/android/gms/internal/cast/zzqg;->zzb:I

    iput p1, p0, Lcom/google/android/gms/internal/cast/zzqg;->zzq:I

    return-void
.end method

.method public final synthetic z(Z)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/cast/zzqg;->zzb:I

    or-int/lit16 v0, v0, 0x4000

    iput v0, p0, Lcom/google/android/gms/internal/cast/zzqg;->zzb:I

    iput-boolean p1, p0, Lcom/google/android/gms/internal/cast/zzqg;->zzr:Z

    return-void
.end method
