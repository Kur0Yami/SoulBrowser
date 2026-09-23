.class public final Lcom/google/android/gms/internal/auth/zzhs;
.super Lcom/google/android/gms/internal/auth/zzev;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/auth/zzfy;


# static fields
.field private static final zzb:Lcom/google/android/gms/internal/auth/zzhs;


# instance fields
.field private zzd:Lcom/google/android/gms/internal/auth/zzez;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/auth/zzhs;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/android/gms/internal/auth/zzhs;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/google/android/gms/internal/auth/zzhs;->zzb:Lcom/google/android/gms/internal/auth/zzhs;

    .line 7
    .line 8
    invoke-static {v0}, Lcom/google/android/gms/internal/auth/zzev;->e(Lcom/google/android/gms/internal/auth/zzhs;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/auth/zzev;-><init>()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lcom/google/android/gms/internal/auth/zzgg;->h:Lcom/google/android/gms/internal/auth/zzgg;

    .line 5
    .line 6
    iput-object v0, p0, Lcom/google/android/gms/internal/auth/zzhs;->zzd:Lcom/google/android/gms/internal/auth/zzez;

    .line 7
    .line 8
    return-void
.end method

.method public static i([B)Lcom/google/android/gms/internal/auth/zzhs;
    .locals 7

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/auth/zzhs;->zzb:Lcom/google/android/gms/internal/auth/zzhs;

    .line 2
    .line 3
    array-length v5, p0

    .line 4
    sget-object v1, Lcom/google/android/gms/internal/auth/zzel;->b:Lcom/google/android/gms/internal/auth/zzel;

    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/google/android/gms/internal/auth/zzev;->b()Lcom/google/android/gms/internal/auth/zzev;

    .line 7
    .line 8
    .line 9
    move-result-object v2

    .line 10
    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/auth/zzgf;->c:Lcom/google/android/gms/internal/auth/zzgf;

    .line 11
    .line 12
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    move-result-object v3

    .line 16
    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/auth/zzgf;->a(Ljava/lang/Class;)Lcom/google/android/gms/internal/auth/zzgi;

    .line 17
    .line 18
    .line 19
    move-result-object v3

    .line 20
    new-instance v6, Lcom/google/android/gms/internal/auth/zzdt;

    .line 21
    .line 22
    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 26
    .line 27
    .line 28
    const/4 v4, 0x0

    .line 29
    move-object v1, v3

    .line 30
    move-object v3, p0

    .line 31
    invoke-interface/range {v1 .. v6}, Lcom/google/android/gms/internal/auth/zzgi;->g(Ljava/lang/Object;[BIILcom/google/android/gms/internal/auth/zzdt;)V

    .line 32
    .line 33
    .line 34
    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/auth/zzgi;->f(Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/google/android/gms/internal/auth/zzfb; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lcom/google/android/gms/internal/auth/zzgy; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 35
    .line 36
    .line 37
    const/4 p0, 0x1

    .line 38
    invoke-virtual {v2, p0}, Lcom/google/android/gms/internal/auth/zzev;->h(I)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    check-cast v1, Ljava/lang/Byte;

    .line 43
    .line 44
    invoke-virtual {v1}, Ljava/lang/Byte;->byteValue()B

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    if-ne v1, p0, :cond_0

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_0
    if-eqz v1, :cond_1

    .line 52
    .line 53
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 54
    .line 55
    .line 56
    move-result-object p0

    .line 57
    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/auth/zzgf;->a(Ljava/lang/Class;)Lcom/google/android/gms/internal/auth/zzgi;

    .line 58
    .line 59
    .line 60
    move-result-object p0

    .line 61
    invoke-interface {p0, v2}, Lcom/google/android/gms/internal/auth/zzgi;->c(Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    move-result p0

    .line 65
    const/4 v0, 0x2

    .line 66
    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/auth/zzev;->h(I)Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    if-eqz p0, :cond_1

    .line 70
    .line 71
    :goto_0
    check-cast v2, Lcom/google/android/gms/internal/auth/zzhs;

    .line 72
    .line 73
    return-object v2

    .line 74
    :cond_1
    new-instance p0, Lcom/google/android/gms/internal/auth/zzgy;

    .line 75
    .line 76
    const-string v0, "Message was missing required fields.  (Lite runtime could not determine which fields were missing)."

    .line 77
    .line 78
    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    new-instance v0, Lcom/google/android/gms/internal/auth/zzfb;

    .line 82
    .line 83
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object p0

    .line 87
    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    throw v0

    .line 91
    :catch_0
    invoke-static {}, Lcom/google/android/gms/internal/auth/zzfb;->c()Lcom/google/android/gms/internal/auth/zzfb;

    .line 92
    .line 93
    .line 94
    move-result-object p0

    .line 95
    throw p0

    .line 96
    :catch_1
    move-exception v0

    .line 97
    move-object p0, v0

    .line 98
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    instance-of v0, v0, Lcom/google/android/gms/internal/auth/zzfb;

    .line 103
    .line 104
    if-eqz v0, :cond_2

    .line 105
    .line 106
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    .line 107
    .line 108
    .line 109
    move-result-object p0

    .line 110
    check-cast p0, Lcom/google/android/gms/internal/auth/zzfb;

    .line 111
    .line 112
    throw p0

    .line 113
    :cond_2
    new-instance v0, Lcom/google/android/gms/internal/auth/zzfb;

    .line 114
    .line 115
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v1

    .line 119
    invoke-direct {v0, v1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 120
    .line 121
    .line 122
    throw v0

    .line 123
    :catch_2
    move-exception v0

    .line 124
    move-object p0, v0

    .line 125
    new-instance v0, Lcom/google/android/gms/internal/auth/zzfb;

    .line 126
    .line 127
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object p0

    .line 131
    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 132
    .line 133
    .line 134
    throw v0

    .line 135
    :catch_3
    move-exception v0

    .line 136
    move-object p0, v0

    .line 137
    throw p0
.end method


# virtual methods
.method public final h(I)Ljava/lang/Object;
    .locals 2

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
    if-eq p1, v0, :cond_0

    .line 17
    .line 18
    const/4 p1, 0x0

    .line 19
    return-object p1

    .line 20
    :cond_0
    sget-object p1, Lcom/google/android/gms/internal/auth/zzhs;->zzb:Lcom/google/android/gms/internal/auth/zzhs;

    .line 21
    .line 22
    return-object p1

    .line 23
    :cond_1
    new-instance p1, Lcom/google/android/gms/internal/auth/zzhr;

    .line 24
    .line 25
    sget-object v0, Lcom/google/android/gms/internal/auth/zzhs;->zzb:Lcom/google/android/gms/internal/auth/zzhs;

    .line 26
    .line 27
    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/auth/zzet;-><init>(Lcom/google/android/gms/internal/auth/zzhs;)V

    .line 28
    .line 29
    .line 30
    return-object p1

    .line 31
    :cond_2
    new-instance p1, Lcom/google/android/gms/internal/auth/zzhs;

    .line 32
    .line 33
    invoke-direct {p1}, Lcom/google/android/gms/internal/auth/zzhs;-><init>()V

    .line 34
    .line 35
    .line 36
    return-object p1

    .line 37
    :cond_3
    new-array p1, v0, [Ljava/lang/Object;

    .line 38
    .line 39
    const-string v0, "zzd"

    .line 40
    .line 41
    const/4 v1, 0x0

    .line 42
    aput-object v0, p1, v1

    .line 43
    .line 44
    sget-object v0, Lcom/google/android/gms/internal/auth/zzhs;->zzb:Lcom/google/android/gms/internal/auth/zzhs;

    .line 45
    .line 46
    new-instance v1, Lcom/google/android/gms/internal/auth/zzgh;

    .line 47
    .line 48
    invoke-direct {v1, v0, p1}, Lcom/google/android/gms/internal/auth/zzgh;-><init>(Lcom/google/android/gms/internal/auth/zzhs;[Ljava/lang/Object;)V

    .line 49
    .line 50
    .line 51
    return-object v1

    .line 52
    :cond_4
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    return-object p1
.end method

.method public final j()Lcom/google/android/gms/internal/auth/zzez;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/auth/zzhs;->zzd:Lcom/google/android/gms/internal/auth/zzez;

    .line 2
    .line 3
    return-object v0
.end method
