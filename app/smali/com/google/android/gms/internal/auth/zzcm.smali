.class public final synthetic Lcom/google/android/gms/internal/auth/zzcm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/auth/zzck;


# instance fields
.field public final synthetic a:Lcom/google/android/gms/internal/auth/zzco;

.field public final synthetic b:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/auth/zzco;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/auth/zzcm;->a:Lcom/google/android/gms/internal/auth/zzco;

    iput-object p2, p0, Lcom/google/android/gms/internal/auth/zzcm;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/auth/zzcm;->a:Lcom/google/android/gms/internal/auth/zzco;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/android/gms/internal/auth/zzcm;->b:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v0, v0, Lcom/google/android/gms/internal/auth/zzco;->a:Landroid/content/Context;

    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    sget-object v0, Lcom/google/android/gms/internal/auth/zzcb;->a:Landroid/net/Uri;

    .line 12
    .line 13
    const-class v3, Lcom/google/android/gms/internal/auth/zzcb;

    .line 14
    .line 15
    monitor-enter v3

    .line 16
    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/auth/zzcb;->e:Ljava/util/HashMap;

    .line 17
    .line 18
    const/4 v8, 0x1

    .line 19
    const/4 v4, 0x0

    .line 20
    const/4 v9, 0x0

    .line 21
    if-nez v0, :cond_0

    .line 22
    .line 23
    sget-object v0, Lcom/google/android/gms/internal/auth/zzcb;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 24
    .line 25
    invoke-virtual {v0, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 26
    .line 27
    .line 28
    new-instance v0, Ljava/util/HashMap;

    .line 29
    .line 30
    const/16 v4, 0x10

    .line 31
    .line 32
    const/high16 v5, 0x3f800000    # 1.0f

    .line 33
    .line 34
    invoke-direct {v0, v4, v5}, Ljava/util/HashMap;-><init>(IF)V

    .line 35
    .line 36
    .line 37
    sput-object v0, Lcom/google/android/gms/internal/auth/zzcb;->e:Ljava/util/HashMap;

    .line 38
    .line 39
    new-instance v0, Ljava/lang/Object;

    .line 40
    .line 41
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 42
    .line 43
    .line 44
    sput-object v0, Lcom/google/android/gms/internal/auth/zzcb;->j:Ljava/lang/Object;

    .line 45
    .line 46
    sget-object v0, Lcom/google/android/gms/internal/auth/zzcb;->a:Landroid/net/Uri;

    .line 47
    .line 48
    new-instance v4, Lcom/google/android/gms/internal/auth/zzca;

    .line 49
    .line 50
    invoke-direct {v4, v9}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v2, v0, v8, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 54
    .line 55
    .line 56
    goto :goto_0

    .line 57
    :catchall_0
    move-exception v0

    .line 58
    goto/16 :goto_4

    .line 59
    .line 60
    :cond_0
    sget-object v0, Lcom/google/android/gms/internal/auth/zzcb;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 61
    .line 62
    invoke-virtual {v0, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    .line 63
    .line 64
    .line 65
    move-result v0

    .line 66
    if-eqz v0, :cond_1

    .line 67
    .line 68
    sget-object v0, Lcom/google/android/gms/internal/auth/zzcb;->e:Ljava/util/HashMap;

    .line 69
    .line 70
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 71
    .line 72
    .line 73
    sget-object v0, Lcom/google/android/gms/internal/auth/zzcb;->f:Ljava/util/HashMap;

    .line 74
    .line 75
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 76
    .line 77
    .line 78
    sget-object v0, Lcom/google/android/gms/internal/auth/zzcb;->g:Ljava/util/HashMap;

    .line 79
    .line 80
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 81
    .line 82
    .line 83
    sget-object v0, Lcom/google/android/gms/internal/auth/zzcb;->h:Ljava/util/HashMap;

    .line 84
    .line 85
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 86
    .line 87
    .line 88
    sget-object v0, Lcom/google/android/gms/internal/auth/zzcb;->i:Ljava/util/HashMap;

    .line 89
    .line 90
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 91
    .line 92
    .line 93
    new-instance v0, Ljava/lang/Object;

    .line 94
    .line 95
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 96
    .line 97
    .line 98
    sput-object v0, Lcom/google/android/gms/internal/auth/zzcb;->j:Ljava/lang/Object;

    .line 99
    .line 100
    :cond_1
    :goto_0
    sget-object v0, Lcom/google/android/gms/internal/auth/zzcb;->j:Ljava/lang/Object;

    .line 101
    .line 102
    sget-object v4, Lcom/google/android/gms/internal/auth/zzcb;->e:Ljava/util/HashMap;

    .line 103
    .line 104
    invoke-virtual {v4, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 105
    .line 106
    .line 107
    move-result v4

    .line 108
    if-eqz v4, :cond_3

    .line 109
    .line 110
    sget-object v0, Lcom/google/android/gms/internal/auth/zzcb;->e:Ljava/util/HashMap;

    .line 111
    .line 112
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    .line 114
    .line 115
    move-result-object v0

    .line 116
    check-cast v0, Ljava/lang/String;

    .line 117
    .line 118
    if-nez v0, :cond_2

    .line 119
    .line 120
    goto :goto_1

    .line 121
    :cond_2
    move-object v9, v0

    .line 122
    :goto_1
    monitor-exit v3

    .line 123
    return-object v9

    .line 124
    :cond_3
    sget-object v4, Lcom/google/android/gms/internal/auth/zzcb;->k:[Ljava/lang/String;

    .line 125
    .line 126
    array-length v4, v4

    .line 127
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 128
    sget-object v3, Lcom/google/android/gms/internal/auth/zzcb;->a:Landroid/net/Uri;

    .line 129
    .line 130
    filled-new-array {v1}, [Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object v6

    .line 134
    const/4 v7, 0x0

    .line 135
    const/4 v4, 0x0

    .line 136
    const/4 v5, 0x0

    .line 137
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 138
    .line 139
    .line 140
    move-result-object v2

    .line 141
    if-nez v2, :cond_4

    .line 142
    .line 143
    goto :goto_2

    .line 144
    :cond_4
    :try_start_1
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    .line 145
    .line 146
    .line 147
    move-result v3

    .line 148
    if-nez v3, :cond_5

    .line 149
    .line 150
    invoke-static {v0, v1, v9}, Lcom/google/android/gms/internal/auth/zzcb;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 151
    .line 152
    .line 153
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 154
    .line 155
    .line 156
    return-object v9

    .line 157
    :catchall_1
    move-exception v0

    .line 158
    goto :goto_3

    .line 159
    :cond_5
    :try_start_2
    invoke-interface {v2, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 163
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 164
    .line 165
    .line 166
    if-eqz v3, :cond_6

    .line 167
    .line 168
    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 169
    .line 170
    .line 171
    move-result v2

    .line 172
    if-eqz v2, :cond_6

    .line 173
    .line 174
    move-object v3, v9

    .line 175
    :cond_6
    invoke-static {v0, v1, v3}, Lcom/google/android/gms/internal/auth/zzcb;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    .line 177
    .line 178
    if-eqz v3, :cond_7

    .line 179
    .line 180
    return-object v3

    .line 181
    :cond_7
    :goto_2
    return-object v9

    .line 182
    :goto_3
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 183
    .line 184
    .line 185
    throw v0

    .line 186
    :goto_4
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 187
    throw v0
.end method
