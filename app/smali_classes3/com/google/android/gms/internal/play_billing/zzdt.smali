.class public final Lcom/google/android/gms/internal/play_billing/zzdt;
.super Lcom/google/android/gms/internal/play_billing/zzfv;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/play_billing/zzhd;


# static fields
.field private static final zzb:Lcom/google/android/gms/internal/play_billing/zzdt;


# instance fields
.field private zzd:Lcom/google/android/gms/internal/play_billing/zzga;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/play_billing/zzdt;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/android/gms/internal/play_billing/zzdt;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/google/android/gms/internal/play_billing/zzdt;->zzb:Lcom/google/android/gms/internal/play_billing/zzdt;

    .line 7
    .line 8
    const-class v1, Lcom/google/android/gms/internal/play_billing/zzdt;

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
    sget-object v0, Lcom/google/android/gms/internal/play_billing/zzhk;->i:Lcom/google/android/gms/internal/play_billing/zzhk;

    .line 5
    .line 6
    iput-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzdt;->zzd:Lcom/google/android/gms/internal/play_billing/zzga;

    .line 7
    .line 8
    return-void
.end method

.method public static q()Lcom/google/android/gms/internal/play_billing/zzds;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/play_billing/zzdt;->zzb:Lcom/google/android/gms/internal/play_billing/zzdt;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_billing/zzfv;->j()Lcom/google/android/gms/internal/play_billing/zzfr;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/google/android/gms/internal/play_billing/zzds;

    .line 8
    .line 9
    return-object v0
.end method

.method public static r(Lcom/google/android/gms/internal/play_billing/zzdt;Ljava/util/ArrayList;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzdt;->zzd:Lcom/google/android/gms/internal/play_billing/zzga;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/google/android/gms/internal/play_billing/zzga;->zzc()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    add-int/2addr v1, v1

    .line 14
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/play_billing/zzga;->f(I)Lcom/google/android/gms/internal/play_billing/zzga;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    iput-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzdt;->zzd:Lcom/google/android/gms/internal/play_billing/zzga;

    .line 19
    .line 20
    :cond_0
    iget-object p0, p0, Lcom/google/android/gms/internal/play_billing/zzdt;->zzd:Lcom/google/android/gms/internal/play_billing/zzga;

    .line 21
    .line 22
    sget-object v0, Lcom/google/android/gms/internal/play_billing/zzgb;->a:Ljava/nio/charset/Charset;

    .line 23
    .line 24
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    instance-of v1, p0, Ljava/util/ArrayList;

    .line 29
    .line 30
    if-eqz v1, :cond_1

    .line 31
    .line 32
    move-object v1, p0

    .line 33
    check-cast v1, Ljava/util/ArrayList;

    .line 34
    .line 35
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    add-int/2addr v2, v0

    .line 40
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->ensureCapacity(I)V

    .line 41
    .line 42
    .line 43
    goto :goto_1

    .line 44
    :cond_1
    instance-of v1, p0, Lcom/google/android/gms/internal/play_billing/zzhk;

    .line 45
    .line 46
    if-eqz v1, :cond_5

    .line 47
    .line 48
    move-object v1, p0

    .line 49
    check-cast v1, Lcom/google/android/gms/internal/play_billing/zzhk;

    .line 50
    .line 51
    iget v2, v1, Lcom/google/android/gms/internal/play_billing/zzhk;->g:I

    .line 52
    .line 53
    add-int/2addr v2, v0

    .line 54
    iget-object v0, v1, Lcom/google/android/gms/internal/play_billing/zzhk;->f:[Ljava/lang/Object;

    .line 55
    .line 56
    array-length v0, v0

    .line 57
    if-gt v2, v0, :cond_2

    .line 58
    .line 59
    goto :goto_1

    .line 60
    :cond_2
    const/16 v3, 0xa

    .line 61
    .line 62
    if-eqz v0, :cond_4

    .line 63
    .line 64
    :goto_0
    if-ge v0, v2, :cond_3

    .line 65
    .line 66
    const/4 v4, 0x3

    .line 67
    const/4 v5, 0x2

    .line 68
    const/4 v6, 0x1

    .line 69
    invoke-static {v0, v4, v5, v6, v3}, Lcom/google/android/gms/internal/ads/a;->e(IIIII)I

    .line 70
    .line 71
    .line 72
    move-result v0

    .line 73
    goto :goto_0

    .line 74
    :cond_3
    iget-object v2, v1, Lcom/google/android/gms/internal/play_billing/zzhk;->f:[Ljava/lang/Object;

    .line 75
    .line 76
    invoke-static {v2, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    iput-object v0, v1, Lcom/google/android/gms/internal/play_billing/zzhk;->f:[Ljava/lang/Object;

    .line 81
    .line 82
    goto :goto_1

    .line 83
    :cond_4
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    .line 84
    .line 85
    .line 86
    move-result v0

    .line 87
    new-array v0, v0, [Ljava/lang/Object;

    .line 88
    .line 89
    iput-object v0, v1, Lcom/google/android/gms/internal/play_billing/zzhk;->f:[Ljava/lang/Object;

    .line 90
    .line 91
    :cond_5
    :goto_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 92
    .line 93
    .line 94
    move-result v0

    .line 95
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 96
    .line 97
    .line 98
    move-result v1

    .line 99
    const/4 v2, 0x0

    .line 100
    :goto_2
    if-ge v2, v1, :cond_8

    .line 101
    .line 102
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    move-result-object v3

    .line 106
    if-nez v3, :cond_7

    .line 107
    .line 108
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 109
    .line 110
    .line 111
    move-result p1

    .line 112
    sub-int/2addr p1, v0

    .line 113
    const-string v1, "Element at index "

    .line 114
    .line 115
    const-string v2, " is null."

    .line 116
    .line 117
    invoke-static {p1, v1, v2}, Landroid/support/v4/media/a;->f(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object p1

    .line 121
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 122
    .line 123
    .line 124
    move-result v1

    .line 125
    :goto_3
    add-int/lit8 v1, v1, -0x1

    .line 126
    .line 127
    if-lt v1, v0, :cond_6

    .line 128
    .line 129
    invoke-interface {p0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 130
    .line 131
    .line 132
    goto :goto_3

    .line 133
    :cond_6
    new-instance p0, Ljava/lang/NullPointerException;

    .line 134
    .line 135
    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 136
    .line 137
    .line 138
    throw p0

    .line 139
    :cond_7
    invoke-interface {p0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 140
    .line 141
    .line 142
    add-int/lit8 v2, v2, 0x1

    .line 143
    .line 144
    goto :goto_2

    .line 145
    :cond_8
    return-void
.end method


# virtual methods
.method public final i(I)Ljava/lang/Object;
    .locals 3

    .line 1
    add-int/lit8 p1, p1, -0x1

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    if-eqz p1, :cond_4

    .line 5
    .line 6
    const/4 v1, 0x2

    .line 7
    if-eq p1, v1, :cond_3

    .line 8
    .line 9
    const/4 v0, 0x3

    .line 10
    if-eq p1, v0, :cond_2

    .line 11
    .line 12
    const/4 v0, 0x4

    .line 13
    if-eq p1, v0, :cond_1

    .line 14
    .line 15
    const/4 v0, 0x5

    .line 16
    if-ne p1, v0, :cond_0

    .line 17
    .line 18
    sget-object p1, Lcom/google/android/gms/internal/play_billing/zzdt;->zzb:Lcom/google/android/gms/internal/play_billing/zzdt;

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
    new-instance p1, Lcom/google/android/gms/internal/play_billing/zzds;

    .line 24
    .line 25
    sget-object v0, Lcom/google/android/gms/internal/play_billing/zzdt;->zzb:Lcom/google/android/gms/internal/play_billing/zzdt;

    .line 26
    .line 27
    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/play_billing/zzfr;-><init>(Lcom/google/android/gms/internal/play_billing/zzfv;)V

    .line 28
    .line 29
    .line 30
    return-object p1

    .line 31
    :cond_2
    new-instance p1, Lcom/google/android/gms/internal/play_billing/zzdt;

    .line 32
    .line 33
    invoke-direct {p1}, Lcom/google/android/gms/internal/play_billing/zzdt;-><init>()V

    .line 34
    .line 35
    .line 36
    return-object p1

    .line 37
    :cond_3
    new-array p1, v1, [Ljava/lang/Object;

    .line 38
    .line 39
    const-string v1, "zzd"

    .line 40
    .line 41
    const/4 v2, 0x0

    .line 42
    aput-object v1, p1, v2

    .line 43
    .line 44
    const-class v1, Lcom/google/android/gms/internal/play_billing/zzdr;

    .line 45
    .line 46
    aput-object v1, p1, v0

    .line 47
    .line 48
    sget-object v0, Lcom/google/android/gms/internal/play_billing/zzdt;->zzb:Lcom/google/android/gms/internal/play_billing/zzdt;

    .line 49
    .line 50
    new-instance v1, Lcom/google/android/gms/internal/play_billing/zzhl;

    .line 51
    .line 52
    const-string v2, "\u0004\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0001\u0000\u0001\u001b"

    .line 53
    .line 54
    invoke-direct {v1, v0, v2, p1}, Lcom/google/android/gms/internal/play_billing/zzhl;-><init>(Lcom/google/android/gms/internal/play_billing/zzhc;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 55
    .line 56
    .line 57
    return-object v1

    .line 58
    :cond_4
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    return-object p1
.end method
