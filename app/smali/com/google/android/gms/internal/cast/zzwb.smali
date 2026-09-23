.class abstract Lcom/google/android/gms/internal/cast/zzwb;
.super Lcom/google/android/gms/internal/cast/zzwx;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/util/concurrent/ListenableFuture;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/gms/internal/cast/zzwx;",
        "Lcom/google/common/util/concurrent/ListenableFuture<",
        "TV;>;"
    }
.end annotation


# static fields
.field public static final h:Ljava/lang/Object;

.field public static final i:Lcom/google/android/gms/internal/cast/zzwn;

.field public static final j:Z

.field public static final k:Lcom/google/android/gms/internal/cast/zzwb$zza;


# instance fields
.field public volatile c:Ljava/lang/Object;

.field public volatile f:Lcom/google/android/gms/internal/cast/zzwa$zzd;

.field public volatile g:Lcom/google/android/gms/internal/cast/zzwb$zze;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 1
    new-instance v0, Ljava/lang/Object;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/google/android/gms/internal/cast/zzwb;->h:Ljava/lang/Object;

    .line 7
    .line 8
    new-instance v0, Lcom/google/android/gms/internal/cast/zzwn;

    .line 9
    .line 10
    invoke-direct {v0}, Lcom/google/android/gms/internal/cast/zzwn;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lcom/google/android/gms/internal/cast/zzwb;->i:Lcom/google/android/gms/internal/cast/zzwn;

    .line 14
    .line 15
    :try_start_0
    const-string v0, "guava.concurrent.generate_cancellation_cause"

    .line 16
    .line 17
    const-string v1, "false"

    .line 18
    .line 19
    invoke-static {v0, v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    .line 24
    .line 25
    .line 26
    move-result v0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 27
    goto :goto_0

    .line 28
    :catch_0
    const/4 v0, 0x0

    .line 29
    :goto_0
    sput-boolean v0, Lcom/google/android/gms/internal/cast/zzwb;->j:Z

    .line 30
    .line 31
    const-string v0, "java.runtime.name"

    .line 32
    .line 33
    const-string v1, ""

    .line 34
    .line 35
    invoke-static {v0, v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    const/4 v1, 0x0

    .line 40
    if-eqz v0, :cond_1

    .line 41
    .line 42
    const-string v2, "Android"

    .line 43
    .line 44
    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    if-eqz v0, :cond_0

    .line 49
    .line 50
    goto :goto_2

    .line 51
    :cond_0
    :try_start_1
    new-instance v0, Lcom/google/android/gms/internal/cast/zzwb$zzb;

    .line 52
    .line 53
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V
    :try_end_1
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_1 .. :try_end_1} :catch_1

    .line 54
    .line 55
    .line 56
    :goto_1
    move-object v6, v1

    .line 57
    move-object v12, v6

    .line 58
    goto :goto_8

    .line 59
    :catch_1
    new-instance v0, Lcom/google/android/gms/internal/cast/zzwb$zzc;

    .line 60
    .line 61
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 62
    .line 63
    .line 64
    goto :goto_1

    .line 65
    :cond_1
    :goto_2
    :try_start_2
    new-instance v0, Lcom/google/android/gms/internal/cast/zzwb$zzd;

    .line 66
    .line 67
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/Error; {:try_start_2 .. :try_end_2} :catch_2

    .line 68
    .line 69
    .line 70
    goto :goto_1

    .line 71
    :catch_2
    move-exception v0

    .line 72
    :goto_3
    move-object v2, v0

    .line 73
    goto :goto_4

    .line 74
    :catch_3
    move-exception v0

    .line 75
    goto :goto_3

    .line 76
    :goto_4
    :try_start_3
    new-instance v0, Lcom/google/android/gms/internal/cast/zzwb$zzb;

    .line 77
    .line 78
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/lang/Error; {:try_start_3 .. :try_end_3} :catch_4

    .line 79
    .line 80
    .line 81
    :goto_5
    move-object v6, v1

    .line 82
    move-object v12, v2

    .line 83
    goto :goto_8

    .line 84
    :catch_4
    move-exception v0

    .line 85
    :goto_6
    move-object v1, v0

    .line 86
    goto :goto_7

    .line 87
    :catch_5
    move-exception v0

    .line 88
    goto :goto_6

    .line 89
    :goto_7
    new-instance v0, Lcom/google/android/gms/internal/cast/zzwb$zzc;

    .line 90
    .line 91
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 92
    .line 93
    .line 94
    goto :goto_5

    .line 95
    :goto_8
    sput-object v0, Lcom/google/android/gms/internal/cast/zzwb;->k:Lcom/google/android/gms/internal/cast/zzwb$zza;

    .line 96
    .line 97
    if-eqz v6, :cond_2

    .line 98
    .line 99
    sget-object v0, Lcom/google/android/gms/internal/cast/zzwb;->i:Lcom/google/android/gms/internal/cast/zzwn;

    .line 100
    .line 101
    invoke-virtual {v0}, Lcom/google/android/gms/internal/cast/zzwn;->a()Ljava/util/logging/Logger;

    .line 102
    .line 103
    .line 104
    move-result-object v7

    .line 105
    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    .line 106
    .line 107
    const-string v10, "<clinit>"

    .line 108
    .line 109
    const-string v11, "UnsafeAtomicHelper is broken!"

    .line 110
    .line 111
    const-string v9, "com.google.common.util.concurrent.AbstractFutureState"

    .line 112
    .line 113
    move-object v8, v2

    .line 114
    invoke-virtual/range {v7 .. v12}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 115
    .line 116
    .line 117
    invoke-virtual {v0}, Lcom/google/android/gms/internal/cast/zzwn;->a()Ljava/util/logging/Logger;

    .line 118
    .line 119
    .line 120
    move-result-object v1

    .line 121
    const-string v4, "<clinit>"

    .line 122
    .line 123
    const-string v5, "AtomicReferenceFieldUpdaterAtomicHelper is broken!"

    .line 124
    .line 125
    const-string v3, "com.google.common.util.concurrent.AbstractFutureState"

    .line 126
    .line 127
    invoke-virtual/range {v1 .. v6}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 128
    .line 129
    .line 130
    :cond_2
    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/cast/zzwb$zze;)V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p1, Lcom/google/android/gms/internal/cast/zzwb$zze;->a:Ljava/lang/Thread;

    .line 3
    .line 4
    :goto_0
    iget-object p1, p0, Lcom/google/android/gms/internal/cast/zzwb;->g:Lcom/google/android/gms/internal/cast/zzwb$zze;

    .line 5
    .line 6
    sget-object v1, Lcom/google/android/gms/internal/cast/zzwb$zze;->c:Lcom/google/android/gms/internal/cast/zzwb$zze;

    .line 7
    .line 8
    if-eq p1, v1, :cond_3

    .line 9
    .line 10
    move-object v1, v0

    .line 11
    :goto_1
    if-eqz p1, :cond_3

    .line 12
    .line 13
    iget-object v2, p1, Lcom/google/android/gms/internal/cast/zzwb$zze;->b:Lcom/google/android/gms/internal/cast/zzwb$zze;

    .line 14
    .line 15
    iget-object v3, p1, Lcom/google/android/gms/internal/cast/zzwb$zze;->a:Ljava/lang/Thread;

    .line 16
    .line 17
    if-eqz v3, :cond_0

    .line 18
    .line 19
    move-object v1, p1

    .line 20
    goto :goto_2

    .line 21
    :cond_0
    if-eqz v1, :cond_1

    .line 22
    .line 23
    iput-object v2, v1, Lcom/google/android/gms/internal/cast/zzwb$zze;->b:Lcom/google/android/gms/internal/cast/zzwb$zze;

    .line 24
    .line 25
    iget-object p1, v1, Lcom/google/android/gms/internal/cast/zzwb$zze;->a:Ljava/lang/Thread;

    .line 26
    .line 27
    if-nez p1, :cond_2

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    sget-object v3, Lcom/google/android/gms/internal/cast/zzwb;->k:Lcom/google/android/gms/internal/cast/zzwb$zza;

    .line 31
    .line 32
    invoke-virtual {v3, p0, p1, v2}, Lcom/google/android/gms/internal/cast/zzwb$zza;->c(Lcom/google/android/gms/internal/cast/zzwb;Lcom/google/android/gms/internal/cast/zzwb$zze;Lcom/google/android/gms/internal/cast/zzwb$zze;)Z

    .line 33
    .line 34
    .line 35
    move-result p1

    .line 36
    if-nez p1, :cond_2

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_2
    :goto_2
    move-object p1, v2

    .line 40
    goto :goto_1

    .line 41
    :cond_3
    return-void
.end method
