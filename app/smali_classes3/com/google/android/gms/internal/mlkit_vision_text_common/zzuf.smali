.class public final Lcom/google/android/gms/internal/mlkit_vision_text_common/zzuf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/mlkit_vision_text_common/zztr;


# instance fields
.field public final a:Lcom/google/android/gms/internal/mlkit_vision_text_common/zzow;

.field public b:Lcom/google/android/gms/internal/mlkit_vision_text_common/zzsr;

.field public final c:I


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/mlkit_vision_text_common/zzow;I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzsr;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzuf;->b:Lcom/google/android/gms/internal/mlkit_vision_text_common/zzsr;

    .line 10
    .line 11
    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzuf;->a:Lcom/google/android/gms/internal/mlkit_vision_text_common/zzow;

    .line 12
    .line 13
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzuo;->a()V

    .line 14
    .line 15
    .line 16
    iput p2, p0, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzuf;->c:I

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/mlkit_vision_text_common/zzov;)Lcom/google/android/gms/internal/mlkit_vision_text_common/zzuf;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzuf;->a:Lcom/google/android/gms/internal/mlkit_vision_text_common/zzow;

    .line 2
    .line 3
    iput-object p1, v0, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzow;->b:Lcom/google/android/gms/internal/mlkit_vision_text_common/zzov;

    .line 4
    .line 5
    return-object p0
.end method

.method public final b(I)[B
    .locals 5

    .line 1
    xor-int/lit8 v0, p1, 0x1

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzuf;->b:Lcom/google/android/gms/internal/mlkit_vision_text_common/zzsr;

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    if-eq v2, v0, :cond_0

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    move v0, v2

    .line 11
    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iput-object v0, v1, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzsr;->i:Ljava/lang/Boolean;

    .line 16
    .line 17
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzuf;->b:Lcom/google/android/gms/internal/mlkit_vision_text_common/zzsr;

    .line 18
    .line 19
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 20
    .line 21
    iput-object v1, v0, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzsr;->g:Ljava/lang/Boolean;

    .line 22
    .line 23
    new-instance v1, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzst;

    .line 24
    .line 25
    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzst;-><init>(Lcom/google/android/gms/internal/mlkit_vision_text_common/zzsr;)V

    .line 26
    .line 27
    .line 28
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzuf;->a:Lcom/google/android/gms/internal/mlkit_vision_text_common/zzow;

    .line 29
    .line 30
    iput-object v1, v0, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzow;->a:Lcom/google/android/gms/internal/mlkit_vision_text_common/zzst;

    .line 31
    .line 32
    :try_start_0
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzuo;->a()V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    .line 34
    .line 35
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzmq;->a:Lcom/google/android/gms/internal/mlkit_vision_text_common/zzmq;

    .line 36
    .line 37
    if-nez p1, :cond_1

    .line 38
    .line 39
    :try_start_1
    new-instance p1, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzoy;

    .line 40
    .line 41
    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzoy;-><init>(Lcom/google/android/gms/internal/mlkit_vision_text_common/zzow;)V

    .line 42
    .line 43
    .line 44
    new-instance v0, Lcom/google/firebase/encoders/json/JsonDataEncoderBuilder;

    .line 45
    .line 46
    invoke-direct {v0}, Lcom/google/firebase/encoders/json/JsonDataEncoderBuilder;-><init>()V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzmq;->a(Lcom/google/firebase/encoders/config/EncoderConfig;)V

    .line 50
    .line 51
    .line 52
    iput-boolean v2, v0, Lcom/google/firebase/encoders/json/JsonDataEncoderBuilder;->d:Z

    .line 53
    .line 54
    invoke-virtual {v0}, Lcom/google/firebase/encoders/json/JsonDataEncoderBuilder;->b()Lcom/google/firebase/encoders/DataEncoder;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    invoke-interface {v0, p1}, Lcom/google/firebase/encoders/DataEncoder;->b(Ljava/lang/Object;)Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    const-string v0, "utf-8"

    .line 63
    .line 64
    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    return-object p1

    .line 69
    :catch_0
    move-exception p1

    .line 70
    goto :goto_1

    .line 71
    :cond_1
    new-instance p1, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzoy;

    .line 72
    .line 73
    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzoy;-><init>(Lcom/google/android/gms/internal/mlkit_vision_text_common/zzow;)V

    .line 74
    .line 75
    .line 76
    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzdb;

    .line 77
    .line 78
    invoke-direct {v0}, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzdb;-><init>()V

    .line 79
    .line 80
    .line 81
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzmq;->a(Lcom/google/firebase/encoders/config/EncoderConfig;)V

    .line 82
    .line 83
    .line 84
    new-instance v1, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzdc;

    .line 85
    .line 86
    new-instance v2, Ljava/util/HashMap;

    .line 87
    .line 88
    iget-object v3, v0, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzdb;->a:Ljava/util/HashMap;

    .line 89
    .line 90
    invoke-direct {v2, v3}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 91
    .line 92
    .line 93
    new-instance v3, Ljava/util/HashMap;

    .line 94
    .line 95
    iget-object v4, v0, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzdb;->b:Ljava/util/HashMap;

    .line 96
    .line 97
    invoke-direct {v3, v4}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 98
    .line 99
    .line 100
    iget-object v0, v0, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzdb;->c:Lcom/google/android/gms/internal/mlkit_vision_text_common/zzda;

    .line 101
    .line 102
    invoke-direct {v1, v2, v3, v0}, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzdc;-><init>(Ljava/util/HashMap;Ljava/util/HashMap;Lcom/google/firebase/encoders/ObjectEncoder;)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzdc;->a(Lcom/google/android/gms/internal/mlkit_vision_text_common/zzoy;)[B

    .line 106
    .line 107
    .line 108
    move-result-object p1
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0

    .line 109
    return-object p1

    .line 110
    :goto_1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 111
    .line 112
    const-string v1, "Failed to covert logging to UTF-8 byte array"

    .line 113
    .line 114
    invoke-direct {v0, v1, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 115
    .line 116
    .line 117
    throw v0
.end method

.method public final zza()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzuf;->c:I

    return v0
.end method
