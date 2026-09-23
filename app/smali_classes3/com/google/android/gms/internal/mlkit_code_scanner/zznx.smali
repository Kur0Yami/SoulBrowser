.class public final synthetic Lcom/google/android/gms/internal/mlkit_code_scanner/zznx;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/google/android/gms/internal/mlkit_code_scanner/zzny;

.field public final synthetic f:Lcom/google/android/gms/internal/mlkit_code_scanner/zzob;

.field public final synthetic g:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/mlkit_code_scanner/zzny;Lcom/google/android/gms/internal/mlkit_code_scanner/zzob;Ljava/lang/String;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/mlkit_code_scanner/zzkb;->f:Lcom/google/android/gms/internal/mlkit_code_scanner/zzkb;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_code_scanner/zznx;->c:Lcom/google/android/gms/internal/mlkit_code_scanner/zzny;

    .line 7
    .line 8
    iput-object p2, p0, Lcom/google/android/gms/internal/mlkit_code_scanner/zznx;->f:Lcom/google/android/gms/internal/mlkit_code_scanner/zzob;

    .line 9
    .line 10
    iput-object p3, p0, Lcom/google/android/gms/internal/mlkit_code_scanner/zznx;->g:Ljava/lang/String;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_code_scanner/zznx;->c:Lcom/google/android/gms/internal/mlkit_code_scanner/zzny;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_code_scanner/zznx;->f:Lcom/google/android/gms/internal/mlkit_code_scanner/zzob;

    .line 4
    .line 5
    sget-object v2, Lcom/google/android/gms/internal/mlkit_code_scanner/zzkb;->w2:Lcom/google/android/gms/internal/mlkit_code_scanner/zzkb;

    .line 6
    .line 7
    iget-object v3, p0, Lcom/google/android/gms/internal/mlkit_code_scanner/zznx;->g:Ljava/lang/String;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    iget-object v4, v1, Lcom/google/android/gms/internal/mlkit_code_scanner/zzob;->a:Lcom/google/android/gms/internal/mlkit_code_scanner/zzkc;

    .line 13
    .line 14
    iput-object v2, v4, Lcom/google/android/gms/internal/mlkit_code_scanner/zzkc;->b:Lcom/google/android/gms/internal/mlkit_code_scanner/zzkb;

    .line 15
    .line 16
    new-instance v2, Lcom/google/android/gms/internal/mlkit_code_scanner/zzke;

    .line 17
    .line 18
    invoke-direct {v2, v4}, Lcom/google/android/gms/internal/mlkit_code_scanner/zzke;-><init>(Lcom/google/android/gms/internal/mlkit_code_scanner/zzkc;)V

    .line 19
    .line 20
    .line 21
    iget-object v2, v2, Lcom/google/android/gms/internal/mlkit_code_scanner/zzke;->a:Lcom/google/android/gms/internal/mlkit_code_scanner/zzms;

    .line 22
    .line 23
    if-eqz v2, :cond_1

    .line 24
    .line 25
    iget-object v2, v2, Lcom/google/android/gms/internal/mlkit_code_scanner/zzms;->d:Ljava/lang/String;

    .line 26
    .line 27
    sget v4, Lcom/google/android/gms/internal/mlkit_code_scanner/zze;->a:I

    .line 28
    .line 29
    if-eqz v2, :cond_1

    .line 30
    .line 31
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    .line 32
    .line 33
    .line 34
    move-result v4

    .line 35
    if-eqz v4, :cond_0

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_0
    invoke-static {v2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    check-cast v2, Ljava/lang/String;

    .line 43
    .line 44
    goto :goto_1

    .line 45
    :cond_1
    :goto_0
    const-string v2, "NA"

    .line 46
    .line 47
    :goto_1
    new-instance v4, Lcom/google/android/gms/internal/mlkit_code_scanner/zzmq;

    .line 48
    .line 49
    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 50
    .line 51
    .line 52
    iget-object v5, v0, Lcom/google/android/gms/internal/mlkit_code_scanner/zzny;->a:Ljava/lang/String;

    .line 53
    .line 54
    iput-object v5, v4, Lcom/google/android/gms/internal/mlkit_code_scanner/zzmq;->a:Ljava/lang/String;

    .line 55
    .line 56
    iget-object v5, v0, Lcom/google/android/gms/internal/mlkit_code_scanner/zzny;->b:Ljava/lang/String;

    .line 57
    .line 58
    iput-object v5, v4, Lcom/google/android/gms/internal/mlkit_code_scanner/zzmq;->b:Ljava/lang/String;

    .line 59
    .line 60
    const-class v5, Lcom/google/android/gms/internal/mlkit_code_scanner/zzny;

    .line 61
    .line 62
    monitor-enter v5

    .line 63
    :try_start_0
    sget-object v6, Lcom/google/android/gms/internal/mlkit_code_scanner/zzny;->i:Lcom/google/android/gms/internal/mlkit_code_scanner/zzp;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64
    .line 65
    if-eqz v6, :cond_2

    .line 66
    .line 67
    monitor-exit v5

    .line 68
    goto :goto_4

    .line 69
    :cond_2
    :try_start_1
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    .line 70
    .line 71
    .line 72
    move-result-object v6

    .line 73
    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 74
    .line 75
    .line 76
    move-result-object v6

    .line 77
    invoke-static {v6}, Landroidx/core/os/ConfigurationCompat;->a(Landroid/content/res/Configuration;)Landroidx/core/os/LocaleListCompat;

    .line 78
    .line 79
    .line 80
    move-result-object v6

    .line 81
    new-instance v7, Lcom/google/android/gms/internal/mlkit_code_scanner/zzm;

    .line 82
    .line 83
    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    .line 84
    .line 85
    .line 86
    const/4 v8, 0x4

    .line 87
    new-array v8, v8, [Ljava/lang/Object;

    .line 88
    .line 89
    iput-object v8, v7, Lcom/google/android/gms/internal/mlkit_code_scanner/zzj;->a:[Ljava/lang/Object;

    .line 90
    .line 91
    const/4 v8, 0x0

    .line 92
    iput v8, v7, Lcom/google/android/gms/internal/mlkit_code_scanner/zzj;->b:I

    .line 93
    .line 94
    :goto_2
    invoke-virtual {v6}, Landroidx/core/os/LocaleListCompat;->e()I

    .line 95
    .line 96
    .line 97
    move-result v9

    .line 98
    if-ge v8, v9, :cond_3

    .line 99
    .line 100
    invoke-virtual {v6, v8}, Landroidx/core/os/LocaleListCompat;->c(I)Ljava/util/Locale;

    .line 101
    .line 102
    .line 103
    move-result-object v9

    .line 104
    invoke-static {v9}, Lcom/google/mlkit/common/sdkinternal/CommonUtils;->b(Ljava/util/Locale;)Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v9

    .line 108
    invoke-virtual {v7, v9}, Lcom/google/android/gms/internal/mlkit_code_scanner/zzm;->a(Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    add-int/lit8 v8, v8, 0x1

    .line 112
    .line 113
    goto :goto_2

    .line 114
    :catchall_0
    move-exception v0

    .line 115
    goto :goto_6

    .line 116
    :cond_3
    const/4 v6, 0x1

    .line 117
    iput-boolean v6, v7, Lcom/google/android/gms/internal/mlkit_code_scanner/zzj;->c:Z

    .line 118
    .line 119
    iget-object v6, v7, Lcom/google/android/gms/internal/mlkit_code_scanner/zzj;->a:[Ljava/lang/Object;

    .line 120
    .line 121
    iget v7, v7, Lcom/google/android/gms/internal/mlkit_code_scanner/zzj;->b:I

    .line 122
    .line 123
    sget-object v8, Lcom/google/android/gms/internal/mlkit_code_scanner/zzp;->f:Lcom/google/android/gms/internal/mlkit_code_scanner/zzab;

    .line 124
    .line 125
    if-nez v7, :cond_4

    .line 126
    .line 127
    sget-object v6, Lcom/google/android/gms/internal/mlkit_code_scanner/zzt;->i:Lcom/google/android/gms/internal/mlkit_code_scanner/zzp;

    .line 128
    .line 129
    goto :goto_3

    .line 130
    :cond_4
    new-instance v8, Lcom/google/android/gms/internal/mlkit_code_scanner/zzt;

    .line 131
    .line 132
    invoke-direct {v8, v6, v7}, Lcom/google/android/gms/internal/mlkit_code_scanner/zzt;-><init>([Ljava/lang/Object;I)V

    .line 133
    .line 134
    .line 135
    move-object v6, v8

    .line 136
    :goto_3
    sput-object v6, Lcom/google/android/gms/internal/mlkit_code_scanner/zzny;->i:Lcom/google/android/gms/internal/mlkit_code_scanner/zzp;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 137
    .line 138
    monitor-exit v5

    .line 139
    :goto_4
    iput-object v6, v4, Lcom/google/android/gms/internal/mlkit_code_scanner/zzmq;->e:Lcom/google/android/gms/internal/mlkit_code_scanner/zzp;

    .line 140
    .line 141
    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 142
    .line 143
    iput-object v5, v4, Lcom/google/android/gms/internal/mlkit_code_scanner/zzmq;->h:Ljava/lang/Boolean;

    .line 144
    .line 145
    iput-object v2, v4, Lcom/google/android/gms/internal/mlkit_code_scanner/zzmq;->d:Ljava/lang/String;

    .line 146
    .line 147
    iput-object v3, v4, Lcom/google/android/gms/internal/mlkit_code_scanner/zzmq;->c:Ljava/lang/String;

    .line 148
    .line 149
    iget-object v2, v0, Lcom/google/android/gms/internal/mlkit_code_scanner/zzny;->f:Lcom/google/android/gms/tasks/Task;

    .line 150
    .line 151
    invoke-virtual {v2}, Lcom/google/android/gms/tasks/Task;->p()Z

    .line 152
    .line 153
    .line 154
    move-result v2

    .line 155
    if-eqz v2, :cond_5

    .line 156
    .line 157
    iget-object v2, v0, Lcom/google/android/gms/internal/mlkit_code_scanner/zzny;->f:Lcom/google/android/gms/tasks/Task;

    .line 158
    .line 159
    invoke-virtual {v2}, Lcom/google/android/gms/tasks/Task;->m()Ljava/lang/Object;

    .line 160
    .line 161
    .line 162
    move-result-object v2

    .line 163
    check-cast v2, Ljava/lang/String;

    .line 164
    .line 165
    goto :goto_5

    .line 166
    :cond_5
    iget-object v2, v0, Lcom/google/android/gms/internal/mlkit_code_scanner/zzny;->d:Lcom/google/mlkit/common/sdkinternal/SharedPrefManager;

    .line 167
    .line 168
    invoke-virtual {v2}, Lcom/google/mlkit/common/sdkinternal/SharedPrefManager;->a()Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object v2

    .line 172
    :goto_5
    iput-object v2, v4, Lcom/google/android/gms/internal/mlkit_code_scanner/zzmq;->f:Ljava/lang/String;

    .line 173
    .line 174
    const/16 v2, 0xa

    .line 175
    .line 176
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 177
    .line 178
    .line 179
    move-result-object v2

    .line 180
    iput-object v2, v4, Lcom/google/android/gms/internal/mlkit_code_scanner/zzmq;->j:Ljava/lang/Integer;

    .line 181
    .line 182
    iget v2, v0, Lcom/google/android/gms/internal/mlkit_code_scanner/zzny;->h:I

    .line 183
    .line 184
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 185
    .line 186
    .line 187
    move-result-object v2

    .line 188
    iput-object v2, v4, Lcom/google/android/gms/internal/mlkit_code_scanner/zzmq;->k:Ljava/lang/Integer;

    .line 189
    .line 190
    iput-object v4, v1, Lcom/google/android/gms/internal/mlkit_code_scanner/zzob;->b:Lcom/google/android/gms/internal/mlkit_code_scanner/zzmq;

    .line 191
    .line 192
    iget-object v0, v0, Lcom/google/android/gms/internal/mlkit_code_scanner/zzny;->c:Lcom/google/android/gms/internal/mlkit_code_scanner/zznu;

    .line 193
    .line 194
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/mlkit_code_scanner/zznu;->a(Lcom/google/android/gms/internal/mlkit_code_scanner/zzob;)V

    .line 195
    .line 196
    .line 197
    return-void

    .line 198
    :goto_6
    :try_start_2
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 199
    throw v0
.end method
