.class final Lcom/google/android/gms/internal/auth/zzgf;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final c:Lcom/google/android/gms/internal/auth/zzgf;


# instance fields
.field public final a:Lcom/google/android/gms/internal/auth/zzfp;

.field public final b:Lj$/util/concurrent/ConcurrentHashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/auth/zzgf;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/android/gms/internal/auth/zzgf;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/google/android/gms/internal/auth/zzgf;->c:Lcom/google/android/gms/internal/auth/zzgf;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lj$/util/concurrent/ConcurrentHashMap;

    .line 5
    .line 6
    invoke-direct {v0}, Lj$/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/google/android/gms/internal/auth/zzgf;->b:Lj$/util/concurrent/ConcurrentHashMap;

    .line 10
    .line 11
    new-instance v0, Lcom/google/android/gms/internal/auth/zzfp;

    .line 12
    .line 13
    invoke-direct {v0}, Lcom/google/android/gms/internal/auth/zzfp;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/google/android/gms/internal/auth/zzgf;->a:Lcom/google/android/gms/internal/auth/zzfp;

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Class;)Lcom/google/android/gms/internal/auth/zzgi;
    .locals 6

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/auth/zzfa;->a:Ljava/nio/charset/Charset;

    .line 2
    .line 3
    if-eqz p1, :cond_b

    .line 4
    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/auth/zzgf;->b:Lj$/util/concurrent/ConcurrentHashMap;

    .line 6
    .line 7
    invoke-virtual {v0, p1}, Lj$/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    check-cast v1, Lcom/google/android/gms/internal/auth/zzgi;

    .line 12
    .line 13
    if-nez v1, :cond_a

    .line 14
    .line 15
    iget-object v1, p0, Lcom/google/android/gms/internal/auth/zzgf;->a:Lcom/google/android/gms/internal/auth/zzfp;

    .line 16
    .line 17
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    sget-object v2, Lcom/google/android/gms/internal/auth/zzgk;->a:Ljava/lang/Class;

    .line 21
    .line 22
    const-class v2, Lcom/google/android/gms/internal/auth/zzev;

    .line 23
    .line 24
    invoke-virtual {v2, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 25
    .line 26
    .line 27
    move-result v3

    .line 28
    if-nez v3, :cond_1

    .line 29
    .line 30
    sget-object v3, Lcom/google/android/gms/internal/auth/zzgk;->a:Ljava/lang/Class;

    .line 31
    .line 32
    if-eqz v3, :cond_1

    .line 33
    .line 34
    invoke-virtual {v3, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 35
    .line 36
    .line 37
    move-result v3

    .line 38
    if-eqz v3, :cond_0

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 42
    .line 43
    const-string v0, "Message classes must extend GeneratedMessage or GeneratedMessageLite"

    .line 44
    .line 45
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    throw p1

    .line 49
    :cond_1
    :goto_0
    iget-object v1, v1, Lcom/google/android/gms/internal/auth/zzfp;->a:Lcom/google/android/gms/internal/auth/zzfo;

    .line 50
    .line 51
    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/auth/zzfo;->a(Ljava/lang/Class;)Lcom/google/android/gms/internal/auth/zzfu;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    invoke-interface {v1}, Lcom/google/android/gms/internal/auth/zzfu;->zzb()Z

    .line 56
    .line 57
    .line 58
    move-result v3

    .line 59
    const-string v4, "Protobuf runtime is not correctly loaded."

    .line 60
    .line 61
    if-eqz v3, :cond_4

    .line 62
    .line 63
    invoke-virtual {v2, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 64
    .line 65
    .line 66
    move-result v2

    .line 67
    if-eqz v2, :cond_2

    .line 68
    .line 69
    sget-object v2, Lcom/google/android/gms/internal/auth/zzgk;->c:Lcom/google/android/gms/internal/auth/zzhb;

    .line 70
    .line 71
    sget-object v3, Lcom/google/android/gms/internal/auth/zzeo;->a:Lcom/google/android/gms/internal/auth/zzen;

    .line 72
    .line 73
    invoke-interface {v1}, Lcom/google/android/gms/internal/auth/zzfu;->zza()Lcom/google/android/gms/internal/auth/zzfx;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    new-instance v4, Lcom/google/android/gms/internal/auth/zzgb;

    .line 78
    .line 79
    invoke-direct {v4, v2, v3, v1}, Lcom/google/android/gms/internal/auth/zzgb;-><init>(Lcom/google/android/gms/internal/auth/zzgz;Lcom/google/android/gms/internal/auth/zzem;Lcom/google/android/gms/internal/auth/zzfx;)V

    .line 80
    .line 81
    .line 82
    goto :goto_1

    .line 83
    :cond_2
    sget-object v2, Lcom/google/android/gms/internal/auth/zzgk;->b:Lcom/google/android/gms/internal/auth/zzgz;

    .line 84
    .line 85
    sget-object v3, Lcom/google/android/gms/internal/auth/zzeo;->b:Lcom/google/android/gms/internal/auth/zzem;

    .line 86
    .line 87
    if-eqz v3, :cond_3

    .line 88
    .line 89
    invoke-interface {v1}, Lcom/google/android/gms/internal/auth/zzfu;->zza()Lcom/google/android/gms/internal/auth/zzfx;

    .line 90
    .line 91
    .line 92
    move-result-object v1

    .line 93
    new-instance v4, Lcom/google/android/gms/internal/auth/zzgb;

    .line 94
    .line 95
    invoke-direct {v4, v2, v3, v1}, Lcom/google/android/gms/internal/auth/zzgb;-><init>(Lcom/google/android/gms/internal/auth/zzgz;Lcom/google/android/gms/internal/auth/zzem;Lcom/google/android/gms/internal/auth/zzfx;)V

    .line 96
    .line 97
    .line 98
    goto :goto_1

    .line 99
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 100
    .line 101
    invoke-direct {p1, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    throw p1

    .line 105
    :cond_4
    invoke-virtual {v2, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 106
    .line 107
    .line 108
    move-result v2

    .line 109
    const/4 v3, 0x1

    .line 110
    if-eqz v2, :cond_6

    .line 111
    .line 112
    invoke-interface {v1}, Lcom/google/android/gms/internal/auth/zzfu;->zzc()I

    .line 113
    .line 114
    .line 115
    move-result v2

    .line 116
    add-int/lit8 v2, v2, -0x1

    .line 117
    .line 118
    if-eq v2, v3, :cond_5

    .line 119
    .line 120
    sget v2, Lcom/google/android/gms/internal/auth/zzgd;->a:I

    .line 121
    .line 122
    sget-object v2, Lcom/google/android/gms/internal/auth/zzfl;->b:Lcom/google/android/gms/internal/auth/zzfj;

    .line 123
    .line 124
    sget-object v3, Lcom/google/android/gms/internal/auth/zzgk;->c:Lcom/google/android/gms/internal/auth/zzhb;

    .line 125
    .line 126
    sget-object v4, Lcom/google/android/gms/internal/auth/zzeo;->a:Lcom/google/android/gms/internal/auth/zzen;

    .line 127
    .line 128
    sget v4, Lcom/google/android/gms/internal/auth/zzft;->a:I

    .line 129
    .line 130
    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/auth/zzga;->n(Lcom/google/android/gms/internal/auth/zzfu;Lcom/google/android/gms/internal/auth/zzfl;Lcom/google/android/gms/internal/auth/zzgz;)Lcom/google/android/gms/internal/auth/zzga;

    .line 131
    .line 132
    .line 133
    move-result-object v4

    .line 134
    goto :goto_1

    .line 135
    :cond_5
    sget v2, Lcom/google/android/gms/internal/auth/zzgd;->a:I

    .line 136
    .line 137
    sget-object v2, Lcom/google/android/gms/internal/auth/zzfl;->b:Lcom/google/android/gms/internal/auth/zzfj;

    .line 138
    .line 139
    sget-object v3, Lcom/google/android/gms/internal/auth/zzgk;->c:Lcom/google/android/gms/internal/auth/zzhb;

    .line 140
    .line 141
    sget v4, Lcom/google/android/gms/internal/auth/zzft;->a:I

    .line 142
    .line 143
    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/auth/zzga;->n(Lcom/google/android/gms/internal/auth/zzfu;Lcom/google/android/gms/internal/auth/zzfl;Lcom/google/android/gms/internal/auth/zzgz;)Lcom/google/android/gms/internal/auth/zzga;

    .line 144
    .line 145
    .line 146
    move-result-object v4

    .line 147
    goto :goto_1

    .line 148
    :cond_6
    invoke-interface {v1}, Lcom/google/android/gms/internal/auth/zzfu;->zzc()I

    .line 149
    .line 150
    .line 151
    move-result v2

    .line 152
    add-int/lit8 v2, v2, -0x1

    .line 153
    .line 154
    if-eq v2, v3, :cond_8

    .line 155
    .line 156
    sget v2, Lcom/google/android/gms/internal/auth/zzgd;->a:I

    .line 157
    .line 158
    sget-object v2, Lcom/google/android/gms/internal/auth/zzfl;->a:Lcom/google/android/gms/internal/auth/zzfh;

    .line 159
    .line 160
    sget-object v3, Lcom/google/android/gms/internal/auth/zzgk;->b:Lcom/google/android/gms/internal/auth/zzgz;

    .line 161
    .line 162
    sget-object v5, Lcom/google/android/gms/internal/auth/zzeo;->b:Lcom/google/android/gms/internal/auth/zzem;

    .line 163
    .line 164
    if-eqz v5, :cond_7

    .line 165
    .line 166
    sget v4, Lcom/google/android/gms/internal/auth/zzft;->a:I

    .line 167
    .line 168
    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/auth/zzga;->n(Lcom/google/android/gms/internal/auth/zzfu;Lcom/google/android/gms/internal/auth/zzfl;Lcom/google/android/gms/internal/auth/zzgz;)Lcom/google/android/gms/internal/auth/zzga;

    .line 169
    .line 170
    .line 171
    move-result-object v4

    .line 172
    goto :goto_1

    .line 173
    :cond_7
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 174
    .line 175
    invoke-direct {p1, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 176
    .line 177
    .line 178
    throw p1

    .line 179
    :cond_8
    sget v2, Lcom/google/android/gms/internal/auth/zzgd;->a:I

    .line 180
    .line 181
    sget-object v2, Lcom/google/android/gms/internal/auth/zzfl;->a:Lcom/google/android/gms/internal/auth/zzfh;

    .line 182
    .line 183
    sget-object v3, Lcom/google/android/gms/internal/auth/zzgk;->b:Lcom/google/android/gms/internal/auth/zzgz;

    .line 184
    .line 185
    sget v4, Lcom/google/android/gms/internal/auth/zzft;->a:I

    .line 186
    .line 187
    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/auth/zzga;->n(Lcom/google/android/gms/internal/auth/zzfu;Lcom/google/android/gms/internal/auth/zzfl;Lcom/google/android/gms/internal/auth/zzgz;)Lcom/google/android/gms/internal/auth/zzga;

    .line 188
    .line 189
    .line 190
    move-result-object v4

    .line 191
    :goto_1
    invoke-virtual {v0, p1, v4}, Lj$/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    .line 193
    .line 194
    move-result-object p1

    .line 195
    check-cast p1, Lcom/google/android/gms/internal/auth/zzgi;

    .line 196
    .line 197
    if-nez p1, :cond_9

    .line 198
    .line 199
    return-object v4

    .line 200
    :cond_9
    return-object p1

    .line 201
    :cond_a
    return-object v1

    .line 202
    :cond_b
    new-instance p1, Ljava/lang/NullPointerException;

    .line 203
    .line 204
    const-string v0, "messageType"

    .line 205
    .line 206
    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 207
    .line 208
    .line 209
    throw p1
.end method
