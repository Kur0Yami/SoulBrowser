.class public abstract Lcom/google/android/gms/internal/auth/zzdc;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final f:Ljava/lang/Object;

.field public static volatile g:Lcom/google/android/gms/internal/auth/zzcd;

.field public static final h:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field public final a:Lcom/google/android/gms/internal/auth/zzcz;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/Object;

.field public volatile d:I

.field public volatile e:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/Object;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/google/android/gms/internal/auth/zzdc;->f:Ljava/lang/Object;

    .line 7
    .line 8
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 11
    .line 12
    .line 13
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 14
    .line 15
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 16
    .line 17
    .line 18
    sput-object v0, Lcom/google/android/gms/internal/auth/zzdc;->h:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 19
    .line 20
    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/android/gms/internal/auth/zzcz;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, -0x1

    .line 5
    iput v0, p0, Lcom/google/android/gms/internal/auth/zzdc;->d:I

    .line 6
    .line 7
    iget-object v0, p1, Lcom/google/android/gms/internal/auth/zzcz;->a:Landroid/net/Uri;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iput-object p1, p0, Lcom/google/android/gms/internal/auth/zzdc;->a:Lcom/google/android/gms/internal/auth/zzcz;

    .line 12
    .line 13
    iput-object p2, p0, Lcom/google/android/gms/internal/auth/zzdc;->b:Ljava/lang/String;

    .line 14
    .line 15
    iput-object p3, p0, Lcom/google/android/gms/internal/auth/zzdc;->c:Ljava/lang/Object;

    .line 16
    .line 17
    return-void

    .line 18
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 19
    .line 20
    const-string p2, "Must pass a valid SharedPreferences file name or ContentProvider URI"

    .line 21
    .line 22
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    throw p1
.end method

.method public static c(Landroid/content/Context;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/auth/zzdc;->g:Lcom/google/android/gms/internal/auth/zzcd;

    .line 2
    .line 3
    if-nez v0, :cond_5

    .line 4
    .line 5
    if-nez p0, :cond_0

    .line 6
    .line 7
    goto :goto_4

    .line 8
    :cond_0
    sget-object v0, Lcom/google/android/gms/internal/auth/zzdc;->f:Ljava/lang/Object;

    .line 9
    .line 10
    monitor-enter v0

    .line 11
    :try_start_0
    sget-object v1, Lcom/google/android/gms/internal/auth/zzdc;->g:Lcom/google/android/gms/internal/auth/zzcd;

    .line 12
    .line 13
    if-nez v1, :cond_4

    .line 14
    .line 15
    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 16
    :try_start_1
    sget-object v1, Lcom/google/android/gms/internal/auth/zzdc;->g:Lcom/google/android/gms/internal/auth/zzcd;

    .line 17
    .line 18
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    if-eqz v2, :cond_1

    .line 23
    .line 24
    move-object p0, v2

    .line 25
    :cond_1
    if-eqz v1, :cond_2

    .line 26
    .line 27
    iget-object v1, v1, Lcom/google/android/gms/internal/auth/zzcd;->a:Landroid/content/Context;

    .line 28
    .line 29
    if-eq v1, p0, :cond_3

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :catchall_0
    move-exception p0

    .line 33
    goto :goto_1

    .line 34
    :cond_2
    :goto_0
    invoke-static {}, Lcom/google/android/gms/internal/auth/zzcg;->c()V

    .line 35
    .line 36
    .line 37
    invoke-static {}, Lcom/google/android/gms/internal/auth/zzdd;->c()V

    .line 38
    .line 39
    .line 40
    invoke-static {}, Lcom/google/android/gms/internal/auth/zzco;->d()V

    .line 41
    .line 42
    .line 43
    new-instance v1, Lcom/google/android/gms/internal/auth/zzct;

    .line 44
    .line 45
    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/auth/zzct;-><init>(Landroid/content/Context;)V

    .line 46
    .line 47
    .line 48
    invoke-static {v1}, Lcom/google/android/gms/internal/auth/zzdo;->a(Lcom/google/android/gms/internal/auth/zzdj;)Lcom/google/android/gms/internal/auth/zzdj;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    new-instance v2, Lcom/google/android/gms/internal/auth/zzcd;

    .line 53
    .line 54
    invoke-direct {v2, p0, v1}, Lcom/google/android/gms/internal/auth/zzcd;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/auth/zzdj;)V

    .line 55
    .line 56
    .line 57
    sput-object v2, Lcom/google/android/gms/internal/auth/zzdc;->g:Lcom/google/android/gms/internal/auth/zzcd;

    .line 58
    .line 59
    sget-object p0, Lcom/google/android/gms/internal/auth/zzdc;->h:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 60
    .line 61
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 62
    .line 63
    .line 64
    :cond_3
    monitor-exit v0

    .line 65
    goto :goto_2

    .line 66
    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 67
    :try_start_2
    throw p0

    .line 68
    :catchall_1
    move-exception p0

    .line 69
    goto :goto_3

    .line 70
    :cond_4
    :goto_2
    monitor-exit v0

    .line 71
    return-void

    .line 72
    :goto_3
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 73
    throw p0

    .line 74
    :cond_5
    :goto_4
    return-void
.end method


# virtual methods
.method public abstract a(Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method public final b()Ljava/lang/Object;
    .locals 7

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/auth/zzdc;->h:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iget v1, p0, Lcom/google/android/gms/internal/auth/zzdc;->d:I

    .line 8
    .line 9
    if-ge v1, v0, :cond_e

    .line 10
    .line 11
    monitor-enter p0

    .line 12
    :try_start_0
    iget v1, p0, Lcom/google/android/gms/internal/auth/zzdc;->d:I

    .line 13
    .line 14
    if-ge v1, v0, :cond_d

    .line 15
    .line 16
    sget-object v1, Lcom/google/android/gms/internal/auth/zzdc;->g:Lcom/google/android/gms/internal/auth/zzcd;

    .line 17
    .line 18
    sget-object v2, Lcom/google/android/gms/internal/auth/zzdf;->c:Lcom/google/android/gms/internal/auth/zzdf;

    .line 19
    .line 20
    const/4 v3, 0x0

    .line 21
    if-eqz v1, :cond_2

    .line 22
    .line 23
    iget-object v2, v1, Lcom/google/android/gms/internal/auth/zzcd;->b:Lcom/google/android/gms/internal/auth/zzdj;

    .line 24
    .line 25
    invoke-interface {v2}, Lcom/google/android/gms/internal/auth/zzdj;->zza()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    check-cast v2, Lcom/google/android/gms/internal/auth/zzdh;

    .line 30
    .line 31
    invoke-virtual {v2}, Lcom/google/android/gms/internal/auth/zzdh;->b()Z

    .line 32
    .line 33
    .line 34
    move-result v4

    .line 35
    if-eqz v4, :cond_2

    .line 36
    .line 37
    invoke-virtual {v2}, Lcom/google/android/gms/internal/auth/zzdh;->a()Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v4

    .line 41
    check-cast v4, Lcom/google/android/gms/internal/auth/zzci;

    .line 42
    .line 43
    iget-object v5, p0, Lcom/google/android/gms/internal/auth/zzdc;->a:Lcom/google/android/gms/internal/auth/zzcz;

    .line 44
    .line 45
    iget-object v5, v5, Lcom/google/android/gms/internal/auth/zzcz;->a:Landroid/net/Uri;

    .line 46
    .line 47
    iget-object v6, p0, Lcom/google/android/gms/internal/auth/zzdc;->b:Ljava/lang/String;

    .line 48
    .line 49
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 50
    .line 51
    .line 52
    if-eqz v5, :cond_0

    .line 53
    .line 54
    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v5

    .line 58
    iget-object v4, v4, Lcom/google/android/gms/internal/auth/zzci;->a:Landroidx/collection/SimpleArrayMap;

    .line 59
    .line 60
    invoke-virtual {v4, v5}, Landroidx/collection/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object v4

    .line 64
    check-cast v4, Landroidx/collection/SimpleArrayMap;

    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_0
    move-object v4, v3

    .line 68
    :goto_0
    if-nez v4, :cond_1

    .line 69
    .line 70
    goto :goto_1

    .line 71
    :cond_1
    const-string v5, ""

    .line 72
    .line 73
    invoke-virtual {v5, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v5

    .line 77
    invoke-virtual {v4, v5}, Landroidx/collection/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object v4

    .line 81
    check-cast v4, Ljava/lang/String;

    .line 82
    .line 83
    goto :goto_2

    .line 84
    :catchall_0
    move-exception v0

    .line 85
    goto/16 :goto_9

    .line 86
    .line 87
    :cond_2
    :goto_1
    move-object v4, v3

    .line 88
    :goto_2
    const-string v5, "Must call PhenotypeFlag.init() first"

    .line 89
    .line 90
    if-eqz v1, :cond_c

    .line 91
    .line 92
    iget-object v5, p0, Lcom/google/android/gms/internal/auth/zzdc;->a:Lcom/google/android/gms/internal/auth/zzcz;

    .line 93
    .line 94
    iget-object v5, v5, Lcom/google/android/gms/internal/auth/zzcz;->a:Landroid/net/Uri;

    .line 95
    .line 96
    if-eqz v5, :cond_4

    .line 97
    .line 98
    iget-object v6, v1, Lcom/google/android/gms/internal/auth/zzcd;->a:Landroid/content/Context;

    .line 99
    .line 100
    invoke-static {v6, v5}, Lcom/google/android/gms/internal/auth/zzcq;->a(Landroid/content/Context;Landroid/net/Uri;)Z

    .line 101
    .line 102
    .line 103
    move-result v5

    .line 104
    if-eqz v5, :cond_3

    .line 105
    .line 106
    iget-object v5, v1, Lcom/google/android/gms/internal/auth/zzcd;->a:Landroid/content/Context;

    .line 107
    .line 108
    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 109
    .line 110
    .line 111
    move-result-object v5

    .line 112
    iget-object v6, p0, Lcom/google/android/gms/internal/auth/zzdc;->a:Lcom/google/android/gms/internal/auth/zzcz;

    .line 113
    .line 114
    iget-object v6, v6, Lcom/google/android/gms/internal/auth/zzcz;->a:Landroid/net/Uri;

    .line 115
    .line 116
    invoke-static {v5, v6}, Lcom/google/android/gms/internal/auth/zzcg;->b(Landroid/content/ContentResolver;Landroid/net/Uri;)Lcom/google/android/gms/internal/auth/zzcg;

    .line 117
    .line 118
    .line 119
    move-result-object v5

    .line 120
    goto :goto_3

    .line 121
    :cond_3
    move-object v5, v3

    .line 122
    goto :goto_3

    .line 123
    :cond_4
    invoke-static {}, Lcom/google/android/gms/internal/auth/zzdd;->b()Lcom/google/android/gms/internal/auth/zzdd;

    .line 124
    .line 125
    .line 126
    move-result-object v5

    .line 127
    :goto_3
    if-eqz v5, :cond_5

    .line 128
    .line 129
    iget-object v6, p0, Lcom/google/android/gms/internal/auth/zzdc;->b:Ljava/lang/String;

    .line 130
    .line 131
    invoke-interface {v5, v6}, Lcom/google/android/gms/internal/auth/zzcl;->a(Ljava/lang/String;)Ljava/lang/Object;

    .line 132
    .line 133
    .line 134
    move-result-object v5

    .line 135
    if-eqz v5, :cond_5

    .line 136
    .line 137
    invoke-virtual {p0, v5}, Lcom/google/android/gms/internal/auth/zzdc;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    .line 139
    .line 140
    move-result-object v5

    .line 141
    goto :goto_4

    .line 142
    :cond_5
    move-object v5, v3

    .line 143
    :goto_4
    if-nez v5, :cond_9

    .line 144
    .line 145
    iget-object v5, p0, Lcom/google/android/gms/internal/auth/zzdc;->a:Lcom/google/android/gms/internal/auth/zzcz;

    .line 146
    .line 147
    iget-boolean v5, v5, Lcom/google/android/gms/internal/auth/zzcz;->c:Z

    .line 148
    .line 149
    if-nez v5, :cond_7

    .line 150
    .line 151
    iget-object v1, v1, Lcom/google/android/gms/internal/auth/zzcd;->a:Landroid/content/Context;

    .line 152
    .line 153
    invoke-static {v1}, Lcom/google/android/gms/internal/auth/zzco;->b(Landroid/content/Context;)Lcom/google/android/gms/internal/auth/zzco;

    .line 154
    .line 155
    .line 156
    move-result-object v1

    .line 157
    iget-object v5, p0, Lcom/google/android/gms/internal/auth/zzdc;->a:Lcom/google/android/gms/internal/auth/zzcz;

    .line 158
    .line 159
    iget-boolean v5, v5, Lcom/google/android/gms/internal/auth/zzcz;->c:Z

    .line 160
    .line 161
    if-eqz v5, :cond_6

    .line 162
    .line 163
    move-object v5, v3

    .line 164
    goto :goto_5

    .line 165
    :cond_6
    iget-object v5, p0, Lcom/google/android/gms/internal/auth/zzdc;->b:Ljava/lang/String;

    .line 166
    .line 167
    :goto_5
    invoke-virtual {v1, v5}, Lcom/google/android/gms/internal/auth/zzco;->c(Ljava/lang/String;)Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object v1

    .line 171
    if-eqz v1, :cond_7

    .line 172
    .line 173
    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/auth/zzdc;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    .line 175
    .line 176
    move-result-object v3

    .line 177
    :cond_7
    if-nez v3, :cond_8

    .line 178
    .line 179
    iget-object v5, p0, Lcom/google/android/gms/internal/auth/zzdc;->c:Ljava/lang/Object;

    .line 180
    .line 181
    goto :goto_6

    .line 182
    :cond_8
    move-object v5, v3

    .line 183
    :cond_9
    :goto_6
    invoke-virtual {v2}, Lcom/google/android/gms/internal/auth/zzdh;->b()Z

    .line 184
    .line 185
    .line 186
    move-result v1

    .line 187
    if-eqz v1, :cond_b

    .line 188
    .line 189
    if-nez v4, :cond_a

    .line 190
    .line 191
    iget-object v5, p0, Lcom/google/android/gms/internal/auth/zzdc;->c:Ljava/lang/Object;

    .line 192
    .line 193
    goto :goto_7

    .line 194
    :cond_a
    invoke-virtual {p0, v4}, Lcom/google/android/gms/internal/auth/zzdc;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    .line 196
    .line 197
    move-result-object v5

    .line 198
    :cond_b
    :goto_7
    iput-object v5, p0, Lcom/google/android/gms/internal/auth/zzdc;->e:Ljava/lang/Object;

    .line 199
    .line 200
    iput v0, p0, Lcom/google/android/gms/internal/auth/zzdc;->d:I

    .line 201
    .line 202
    goto :goto_8

    .line 203
    :cond_c
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 204
    .line 205
    invoke-direct {v0, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 206
    .line 207
    .line 208
    throw v0

    .line 209
    :cond_d
    :goto_8
    monitor-exit p0

    .line 210
    goto :goto_a

    .line 211
    :goto_9
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 212
    throw v0

    .line 213
    :cond_e
    :goto_a
    iget-object v0, p0, Lcom/google/android/gms/internal/auth/zzdc;->e:Ljava/lang/Object;

    .line 214
    .line 215
    return-object v0
.end method
