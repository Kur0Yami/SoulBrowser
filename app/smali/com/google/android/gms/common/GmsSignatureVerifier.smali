.class public Lcom/google/android/gms/common/GmsSignatureVerifier;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
.end annotation

.annotation build Lcom/google/android/gms/common/internal/ShowFirstParty;
.end annotation


# static fields
.field private static final zza:Lcom/google/android/gms/common/zzab;

.field private static final zzb:Lcom/google/android/gms/common/zzab;

.field private static final zzc:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .line 1
    new-instance v0, Lcom/google/android/gms/common/zzaa;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/android/gms/common/zzaa;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "com.google.android.gms"

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/zzaa;->zza(Ljava/lang/String;)Lcom/google/android/gms/common/zzaa;

    .line 9
    .line 10
    .line 11
    const-wide/32 v1, 0xc2bd840

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/zzaa;->zzb(J)Lcom/google/android/gms/common/zzaa;

    .line 15
    .line 16
    .line 17
    sget-object v1, Lcom/google/android/gms/common/zzo;->zzf:Lcom/google/android/gms/common/zzm;

    .line 18
    .line 19
    invoke-virtual {v1}, Lcom/google/android/gms/common/zzm;->zzc()[B

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    sget-object v3, Lcom/google/android/gms/common/zzo;->zzd:Lcom/google/android/gms/common/zzm;

    .line 24
    .line 25
    invoke-virtual {v3}, Lcom/google/android/gms/common/zzm;->zzc()[B

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    sget-object v4, Lcom/google/android/gms/common/zzo;->zzb:Lcom/google/android/gms/common/zzm;

    .line 30
    .line 31
    invoke-virtual {v4}, Lcom/google/android/gms/common/zzm;->zzc()[B

    .line 32
    .line 33
    .line 34
    move-result-object v4

    .line 35
    sget-object v5, Lcom/google/android/gms/internal/common/zzah;->f:Lcom/google/android/gms/internal/common/zzal;

    .line 36
    .line 37
    const/4 v5, 0x3

    .line 38
    new-array v6, v5, [Ljava/lang/Object;

    .line 39
    .line 40
    const/4 v7, 0x0

    .line 41
    aput-object v2, v6, v7

    .line 42
    .line 43
    const/4 v2, 0x1

    .line 44
    aput-object v3, v6, v2

    .line 45
    .line 46
    const/4 v3, 0x2

    .line 47
    aput-object v4, v6, v3

    .line 48
    .line 49
    invoke-static {v5, v6}, Lcom/google/android/gms/internal/common/zzai;->a(I[Ljava/lang/Object;)V

    .line 50
    .line 51
    .line 52
    invoke-static {v5, v6}, Lcom/google/android/gms/internal/common/zzah;->v(I[Ljava/lang/Object;)Lcom/google/android/gms/internal/common/zzah;

    .line 53
    .line 54
    .line 55
    move-result-object v4

    .line 56
    invoke-virtual {v0, v4}, Lcom/google/android/gms/common/zzaa;->zzc(Ljava/util/List;)Lcom/google/android/gms/common/zzaa;

    .line 57
    .line 58
    .line 59
    sget-object v4, Lcom/google/android/gms/common/zzo;->zze:Lcom/google/android/gms/common/zzm;

    .line 60
    .line 61
    invoke-virtual {v4}, Lcom/google/android/gms/common/zzm;->zzc()[B

    .line 62
    .line 63
    .line 64
    move-result-object v6

    .line 65
    sget-object v8, Lcom/google/android/gms/common/zzo;->zzc:Lcom/google/android/gms/common/zzm;

    .line 66
    .line 67
    invoke-virtual {v8}, Lcom/google/android/gms/common/zzm;->zzc()[B

    .line 68
    .line 69
    .line 70
    move-result-object v9

    .line 71
    sget-object v10, Lcom/google/android/gms/common/zzo;->zza:Lcom/google/android/gms/common/zzm;

    .line 72
    .line 73
    invoke-virtual {v10}, Lcom/google/android/gms/common/zzm;->zzc()[B

    .line 74
    .line 75
    .line 76
    move-result-object v10

    .line 77
    new-array v11, v5, [Ljava/lang/Object;

    .line 78
    .line 79
    aput-object v6, v11, v7

    .line 80
    .line 81
    aput-object v9, v11, v2

    .line 82
    .line 83
    aput-object v10, v11, v3

    .line 84
    .line 85
    invoke-static {v5, v11}, Lcom/google/android/gms/internal/common/zzai;->a(I[Ljava/lang/Object;)V

    .line 86
    .line 87
    .line 88
    invoke-static {v5, v11}, Lcom/google/android/gms/internal/common/zzah;->v(I[Ljava/lang/Object;)Lcom/google/android/gms/internal/common/zzah;

    .line 89
    .line 90
    .line 91
    move-result-object v5

    .line 92
    invoke-virtual {v0, v5}, Lcom/google/android/gms/common/zzaa;->zzd(Ljava/util/List;)Lcom/google/android/gms/common/zzaa;

    .line 93
    .line 94
    .line 95
    invoke-virtual {v0}, Lcom/google/android/gms/common/zzaa;->zze()Lcom/google/android/gms/common/zzab;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    sput-object v0, Lcom/google/android/gms/common/GmsSignatureVerifier;->zza:Lcom/google/android/gms/common/zzab;

    .line 100
    .line 101
    new-instance v0, Lcom/google/android/gms/common/zzaa;

    .line 102
    .line 103
    invoke-direct {v0}, Lcom/google/android/gms/common/zzaa;-><init>()V

    .line 104
    .line 105
    .line 106
    const-string v5, "com.android.vending"

    .line 107
    .line 108
    invoke-virtual {v0, v5}, Lcom/google/android/gms/common/zzaa;->zza(Ljava/lang/String;)Lcom/google/android/gms/common/zzaa;

    .line 109
    .line 110
    .line 111
    const-wide/32 v5, 0x4e6e200

    .line 112
    .line 113
    .line 114
    invoke-virtual {v0, v5, v6}, Lcom/google/android/gms/common/zzaa;->zzb(J)Lcom/google/android/gms/common/zzaa;

    .line 115
    .line 116
    .line 117
    invoke-virtual {v1}, Lcom/google/android/gms/common/zzm;->zzc()[B

    .line 118
    .line 119
    .line 120
    move-result-object v1

    .line 121
    new-array v5, v2, [Ljava/lang/Object;

    .line 122
    .line 123
    aput-object v1, v5, v7

    .line 124
    .line 125
    invoke-static {v2, v5}, Lcom/google/android/gms/internal/common/zzai;->a(I[Ljava/lang/Object;)V

    .line 126
    .line 127
    .line 128
    invoke-static {v2, v5}, Lcom/google/android/gms/internal/common/zzah;->v(I[Ljava/lang/Object;)Lcom/google/android/gms/internal/common/zzah;

    .line 129
    .line 130
    .line 131
    move-result-object v1

    .line 132
    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/zzaa;->zzc(Ljava/util/List;)Lcom/google/android/gms/common/zzaa;

    .line 133
    .line 134
    .line 135
    invoke-virtual {v4}, Lcom/google/android/gms/common/zzm;->zzc()[B

    .line 136
    .line 137
    .line 138
    move-result-object v1

    .line 139
    invoke-virtual {v8}, Lcom/google/android/gms/common/zzm;->zzc()[B

    .line 140
    .line 141
    .line 142
    move-result-object v4

    .line 143
    new-array v5, v3, [Ljava/lang/Object;

    .line 144
    .line 145
    aput-object v1, v5, v7

    .line 146
    .line 147
    aput-object v4, v5, v2

    .line 148
    .line 149
    invoke-static {v3, v5}, Lcom/google/android/gms/internal/common/zzai;->a(I[Ljava/lang/Object;)V

    .line 150
    .line 151
    .line 152
    invoke-static {v3, v5}, Lcom/google/android/gms/internal/common/zzah;->v(I[Ljava/lang/Object;)Lcom/google/android/gms/internal/common/zzah;

    .line 153
    .line 154
    .line 155
    move-result-object v1

    .line 156
    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/zzaa;->zzd(Ljava/util/List;)Lcom/google/android/gms/common/zzaa;

    .line 157
    .line 158
    .line 159
    invoke-virtual {v0}, Lcom/google/android/gms/common/zzaa;->zze()Lcom/google/android/gms/common/zzab;

    .line 160
    .line 161
    .line 162
    move-result-object v0

    .line 163
    sput-object v0, Lcom/google/android/gms/common/GmsSignatureVerifier;->zzb:Lcom/google/android/gms/common/zzab;

    .line 164
    .line 165
    new-instance v0, Ljava/util/HashMap;

    .line 166
    .line 167
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 168
    .line 169
    .line 170
    sput-object v0, Lcom/google/android/gms/common/GmsSignatureVerifier;->zzc:Ljava/util/HashMap;

    .line 171
    .line 172
    return-void
.end method
