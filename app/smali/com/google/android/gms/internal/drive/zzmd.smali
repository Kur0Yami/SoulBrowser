.class final Lcom/google/android/gms/internal/drive/zzmd;
.super Ljava/lang/Object;


# static fields
.field public static final c:Lcom/google/android/gms/internal/drive/zzmd;


# instance fields
.field public final a:Lcom/google/android/gms/internal/drive/zzlf;

.field public final b:Lj$/util/concurrent/ConcurrentHashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/drive/zzmd;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/android/gms/internal/drive/zzmd;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/google/android/gms/internal/drive/zzmd;->c:Lcom/google/android/gms/internal/drive/zzmd;

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
    iput-object v0, p0, Lcom/google/android/gms/internal/drive/zzmd;->b:Lj$/util/concurrent/ConcurrentHashMap;

    .line 10
    .line 11
    new-instance v0, Lcom/google/android/gms/internal/drive/zzlf;

    .line 12
    .line 13
    invoke-direct {v0}, Lcom/google/android/gms/internal/drive/zzlf;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/google/android/gms/internal/drive/zzmd;->a:Lcom/google/android/gms/internal/drive/zzlf;

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Class;)Lcom/google/android/gms/internal/drive/zzmf;
    .locals 9

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/drive/zzkm;->a:Ljava/nio/charset/Charset;

    .line 2
    .line 3
    if-eqz p1, :cond_b

    .line 4
    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/drive/zzmd;->b:Lj$/util/concurrent/ConcurrentHashMap;

    .line 6
    .line 7
    invoke-virtual {v0, p1}, Lj$/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    check-cast v1, Lcom/google/android/gms/internal/drive/zzmf;

    .line 12
    .line 13
    if-nez v1, :cond_a

    .line 14
    .line 15
    iget-object v1, p0, Lcom/google/android/gms/internal/drive/zzmd;->a:Lcom/google/android/gms/internal/drive/zzlf;

    .line 16
    .line 17
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    sget-object v2, Lcom/google/android/gms/internal/drive/zzmh;->a:Ljava/lang/Class;

    .line 21
    .line 22
    const-class v2, Lcom/google/android/gms/internal/drive/zzkk;

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
    sget-object v3, Lcom/google/android/gms/internal/drive/zzmh;->a:Ljava/lang/Class;

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
    iget-object v1, v1, Lcom/google/android/gms/internal/drive/zzlf;->a:Lcom/google/android/gms/internal/drive/zzlh;

    .line 50
    .line 51
    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/drive/zzlh;->b(Ljava/lang/Class;)Lcom/google/android/gms/internal/drive/zzlo;

    .line 52
    .line 53
    .line 54
    move-result-object v3

    .line 55
    invoke-interface {v3}, Lcom/google/android/gms/internal/drive/zzlo;->b()Z

    .line 56
    .line 57
    .line 58
    move-result v1

    .line 59
    const-string v4, "Protobuf runtime is not correctly loaded."

    .line 60
    .line 61
    if-eqz v1, :cond_4

    .line 62
    .line 63
    invoke-virtual {v2, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 64
    .line 65
    .line 66
    move-result v1

    .line 67
    if-eqz v1, :cond_2

    .line 68
    .line 69
    sget-object v1, Lcom/google/android/gms/internal/drive/zzmh;->d:Lcom/google/android/gms/internal/drive/zzmz;

    .line 70
    .line 71
    sget-object v2, Lcom/google/android/gms/internal/drive/zzka;->a:Lcom/google/android/gms/internal/drive/zzjz;

    .line 72
    .line 73
    invoke-interface {v3}, Lcom/google/android/gms/internal/drive/zzlo;->c()Lcom/google/android/gms/internal/drive/zzlq;

    .line 74
    .line 75
    .line 76
    move-result-object v3

    .line 77
    new-instance v4, Lcom/google/android/gms/internal/drive/zzlw;

    .line 78
    .line 79
    invoke-direct {v4, v1, v2, v3}, Lcom/google/android/gms/internal/drive/zzlw;-><init>(Lcom/google/android/gms/internal/drive/zzmx;Lcom/google/android/gms/internal/drive/zzjy;Lcom/google/android/gms/internal/drive/zzlq;)V

    .line 80
    .line 81
    .line 82
    goto :goto_1

    .line 83
    :cond_2
    sget-object v1, Lcom/google/android/gms/internal/drive/zzmh;->b:Lcom/google/android/gms/internal/drive/zzmx;

    .line 84
    .line 85
    sget-object v2, Lcom/google/android/gms/internal/drive/zzka;->b:Lcom/google/android/gms/internal/drive/zzjy;

    .line 86
    .line 87
    if-eqz v2, :cond_3

    .line 88
    .line 89
    invoke-interface {v3}, Lcom/google/android/gms/internal/drive/zzlo;->c()Lcom/google/android/gms/internal/drive/zzlq;

    .line 90
    .line 91
    .line 92
    move-result-object v3

    .line 93
    new-instance v4, Lcom/google/android/gms/internal/drive/zzlw;

    .line 94
    .line 95
    invoke-direct {v4, v1, v2, v3}, Lcom/google/android/gms/internal/drive/zzlw;-><init>(Lcom/google/android/gms/internal/drive/zzmx;Lcom/google/android/gms/internal/drive/zzjy;Lcom/google/android/gms/internal/drive/zzlq;)V

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
    move-result v1

    .line 109
    const/4 v2, 0x1

    .line 110
    if-eqz v1, :cond_6

    .line 111
    .line 112
    invoke-interface {v3}, Lcom/google/android/gms/internal/drive/zzlo;->a()I

    .line 113
    .line 114
    .line 115
    move-result v1

    .line 116
    if-ne v1, v2, :cond_5

    .line 117
    .line 118
    sget-object v4, Lcom/google/android/gms/internal/drive/zzma;->b:Lcom/google/android/gms/internal/drive/zzlz;

    .line 119
    .line 120
    sget-object v5, Lcom/google/android/gms/internal/drive/zzla;->b:Lcom/google/android/gms/internal/drive/zzld;

    .line 121
    .line 122
    sget-object v6, Lcom/google/android/gms/internal/drive/zzmh;->d:Lcom/google/android/gms/internal/drive/zzmz;

    .line 123
    .line 124
    sget-object v7, Lcom/google/android/gms/internal/drive/zzka;->a:Lcom/google/android/gms/internal/drive/zzjz;

    .line 125
    .line 126
    sget-object v8, Lcom/google/android/gms/internal/drive/zzln;->b:Lcom/google/android/gms/internal/drive/zzlm;

    .line 127
    .line 128
    invoke-static/range {v3 .. v8}, Lcom/google/android/gms/internal/drive/zzlu;->h(Lcom/google/android/gms/internal/drive/zzlo;Lcom/google/android/gms/internal/drive/zzly;Lcom/google/android/gms/internal/drive/zzla;Lcom/google/android/gms/internal/drive/zzmx;Lcom/google/android/gms/internal/drive/zzjy;Lcom/google/android/gms/internal/drive/zzll;)Lcom/google/android/gms/internal/drive/zzlu;

    .line 129
    .line 130
    .line 131
    move-result-object v4

    .line 132
    goto :goto_1

    .line 133
    :cond_5
    sget-object v4, Lcom/google/android/gms/internal/drive/zzma;->b:Lcom/google/android/gms/internal/drive/zzlz;

    .line 134
    .line 135
    sget-object v5, Lcom/google/android/gms/internal/drive/zzla;->b:Lcom/google/android/gms/internal/drive/zzld;

    .line 136
    .line 137
    sget-object v6, Lcom/google/android/gms/internal/drive/zzmh;->d:Lcom/google/android/gms/internal/drive/zzmz;

    .line 138
    .line 139
    const/4 v7, 0x0

    .line 140
    sget-object v8, Lcom/google/android/gms/internal/drive/zzln;->b:Lcom/google/android/gms/internal/drive/zzlm;

    .line 141
    .line 142
    invoke-static/range {v3 .. v8}, Lcom/google/android/gms/internal/drive/zzlu;->h(Lcom/google/android/gms/internal/drive/zzlo;Lcom/google/android/gms/internal/drive/zzly;Lcom/google/android/gms/internal/drive/zzla;Lcom/google/android/gms/internal/drive/zzmx;Lcom/google/android/gms/internal/drive/zzjy;Lcom/google/android/gms/internal/drive/zzll;)Lcom/google/android/gms/internal/drive/zzlu;

    .line 143
    .line 144
    .line 145
    move-result-object v4

    .line 146
    goto :goto_1

    .line 147
    :cond_6
    invoke-interface {v3}, Lcom/google/android/gms/internal/drive/zzlo;->a()I

    .line 148
    .line 149
    .line 150
    move-result v1

    .line 151
    if-ne v1, v2, :cond_8

    .line 152
    .line 153
    move-object v1, v4

    .line 154
    sget-object v4, Lcom/google/android/gms/internal/drive/zzma;->a:Lcom/google/android/gms/internal/drive/zzly;

    .line 155
    .line 156
    sget-object v5, Lcom/google/android/gms/internal/drive/zzla;->a:Lcom/google/android/gms/internal/drive/zzlc;

    .line 157
    .line 158
    sget-object v6, Lcom/google/android/gms/internal/drive/zzmh;->b:Lcom/google/android/gms/internal/drive/zzmx;

    .line 159
    .line 160
    sget-object v7, Lcom/google/android/gms/internal/drive/zzka;->b:Lcom/google/android/gms/internal/drive/zzjy;

    .line 161
    .line 162
    if-eqz v7, :cond_7

    .line 163
    .line 164
    sget-object v8, Lcom/google/android/gms/internal/drive/zzln;->a:Lcom/google/android/gms/internal/drive/zzll;

    .line 165
    .line 166
    invoke-static/range {v3 .. v8}, Lcom/google/android/gms/internal/drive/zzlu;->h(Lcom/google/android/gms/internal/drive/zzlo;Lcom/google/android/gms/internal/drive/zzly;Lcom/google/android/gms/internal/drive/zzla;Lcom/google/android/gms/internal/drive/zzmx;Lcom/google/android/gms/internal/drive/zzjy;Lcom/google/android/gms/internal/drive/zzll;)Lcom/google/android/gms/internal/drive/zzlu;

    .line 167
    .line 168
    .line 169
    move-result-object v4

    .line 170
    goto :goto_1

    .line 171
    :cond_7
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 172
    .line 173
    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 174
    .line 175
    .line 176
    throw p1

    .line 177
    :cond_8
    sget-object v4, Lcom/google/android/gms/internal/drive/zzma;->a:Lcom/google/android/gms/internal/drive/zzly;

    .line 178
    .line 179
    sget-object v5, Lcom/google/android/gms/internal/drive/zzla;->a:Lcom/google/android/gms/internal/drive/zzlc;

    .line 180
    .line 181
    sget-object v6, Lcom/google/android/gms/internal/drive/zzmh;->c:Lcom/google/android/gms/internal/drive/zzmx;

    .line 182
    .line 183
    const/4 v7, 0x0

    .line 184
    sget-object v8, Lcom/google/android/gms/internal/drive/zzln;->a:Lcom/google/android/gms/internal/drive/zzll;

    .line 185
    .line 186
    invoke-static/range {v3 .. v8}, Lcom/google/android/gms/internal/drive/zzlu;->h(Lcom/google/android/gms/internal/drive/zzlo;Lcom/google/android/gms/internal/drive/zzly;Lcom/google/android/gms/internal/drive/zzla;Lcom/google/android/gms/internal/drive/zzmx;Lcom/google/android/gms/internal/drive/zzjy;Lcom/google/android/gms/internal/drive/zzll;)Lcom/google/android/gms/internal/drive/zzlu;

    .line 187
    .line 188
    .line 189
    move-result-object v4

    .line 190
    :goto_1
    invoke-virtual {v0, p1, v4}, Lj$/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    .line 192
    .line 193
    move-result-object p1

    .line 194
    check-cast p1, Lcom/google/android/gms/internal/drive/zzmf;

    .line 195
    .line 196
    if-eqz p1, :cond_9

    .line 197
    .line 198
    return-object p1

    .line 199
    :cond_9
    return-object v4

    .line 200
    :cond_a
    return-object v1

    .line 201
    :cond_b
    new-instance p1, Ljava/lang/NullPointerException;

    .line 202
    .line 203
    const-string v0, "messageType"

    .line 204
    .line 205
    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 206
    .line 207
    .line 208
    throw p1
.end method

.method public final b(Lcom/google/android/gms/internal/drive/zzkk;)Lcom/google/android/gms/internal/drive/zzmf;
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/drive/zzmd;->a(Ljava/lang/Class;)Lcom/google/android/gms/internal/drive/zzmf;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method
