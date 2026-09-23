.class public final synthetic Lcom/google/android/gms/internal/mlkit_vision_common/zzmi;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/google/android/gms/internal/mlkit_vision_common/zzmj;

.field public final synthetic f:Lcom/google/android/gms/internal/mlkit_vision_common/zzmk;

.field public final synthetic g:Lcom/google/android/gms/internal/mlkit_vision_common/zziv;

.field public final synthetic h:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/mlkit_vision_common/zzmj;Lcom/google/android/gms/internal/mlkit_vision_common/zzmk;Lcom/google/android/gms/internal/mlkit_vision_common/zziv;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzmi;->c:Lcom/google/android/gms/internal/mlkit_vision_common/zzmj;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzmi;->f:Lcom/google/android/gms/internal/mlkit_vision_common/zzmk;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzmi;->g:Lcom/google/android/gms/internal/mlkit_vision_common/zziv;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzmi;->h:Ljava/lang/String;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzmi;->c:Lcom/google/android/gms/internal/mlkit_vision_common/zzmj;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzmi;->f:Lcom/google/android/gms/internal/mlkit_vision_common/zzmk;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzmi;->g:Lcom/google/android/gms/internal/mlkit_vision_common/zziv;

    .line 6
    .line 7
    iget-object v3, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzmi;->h:Ljava/lang/String;

    .line 8
    .line 9
    iget-object v4, v1, Lcom/google/android/gms/internal/mlkit_vision_common/zzmk;->a:Lcom/google/android/gms/internal/mlkit_vision_common/zziw;

    .line 10
    .line 11
    iput-object v2, v4, Lcom/google/android/gms/internal/mlkit_vision_common/zziw;->b:Lcom/google/android/gms/internal/mlkit_vision_common/zziv;

    .line 12
    .line 13
    new-instance v2, Lcom/google/android/gms/internal/mlkit_vision_common/zziy;

    .line 14
    .line 15
    invoke-direct {v2, v4}, Lcom/google/android/gms/internal/mlkit_vision_common/zziy;-><init>(Lcom/google/android/gms/internal/mlkit_vision_common/zziw;)V

    .line 16
    .line 17
    .line 18
    iget-object v2, v2, Lcom/google/android/gms/internal/mlkit_vision_common/zziy;->a:Lcom/google/android/gms/internal/mlkit_vision_common/zzla;

    .line 19
    .line 20
    if-eqz v2, :cond_1

    .line 21
    .line 22
    iget-object v2, v2, Lcom/google/android/gms/internal/mlkit_vision_common/zzla;->d:Ljava/lang/String;

    .line 23
    .line 24
    sget v4, Lcom/google/android/gms/internal/mlkit_vision_common/zze;->a:I

    .line 25
    .line 26
    if-eqz v2, :cond_1

    .line 27
    .line 28
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    .line 29
    .line 30
    .line 31
    move-result v4

    .line 32
    if-eqz v4, :cond_0

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    invoke-static {v2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    check-cast v2, Ljava/lang/String;

    .line 40
    .line 41
    goto :goto_1

    .line 42
    :cond_1
    :goto_0
    const-string v2, "NA"

    .line 43
    .line 44
    :goto_1
    new-instance v4, Lcom/google/android/gms/internal/mlkit_vision_common/zzky;

    .line 45
    .line 46
    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 47
    .line 48
    .line 49
    iget-object v5, v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzmj;->a:Ljava/lang/String;

    .line 50
    .line 51
    iput-object v5, v4, Lcom/google/android/gms/internal/mlkit_vision_common/zzky;->a:Ljava/lang/String;

    .line 52
    .line 53
    iget-object v5, v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzmj;->b:Ljava/lang/String;

    .line 54
    .line 55
    iput-object v5, v4, Lcom/google/android/gms/internal/mlkit_vision_common/zzky;->b:Ljava/lang/String;

    .line 56
    .line 57
    const-class v5, Lcom/google/android/gms/internal/mlkit_vision_common/zzmj;

    .line 58
    .line 59
    monitor-enter v5

    .line 60
    :try_start_0
    sget-object v6, Lcom/google/android/gms/internal/mlkit_vision_common/zzmj;->j:Lcom/google/android/gms/internal/mlkit_vision_common/zzp;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    .line 62
    if-eqz v6, :cond_2

    .line 63
    .line 64
    monitor-exit v5

    .line 65
    goto :goto_3

    .line 66
    :cond_2
    :try_start_1
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    .line 67
    .line 68
    .line 69
    move-result-object v6

    .line 70
    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 71
    .line 72
    .line 73
    move-result-object v6

    .line 74
    invoke-static {v6}, Landroidx/core/os/ConfigurationCompat;->a(Landroid/content/res/Configuration;)Landroidx/core/os/LocaleListCompat;

    .line 75
    .line 76
    .line 77
    move-result-object v6

    .line 78
    new-instance v7, Lcom/google/android/gms/internal/mlkit_vision_common/zzm;

    .line 79
    .line 80
    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    .line 81
    .line 82
    .line 83
    const/4 v8, 0x4

    .line 84
    new-array v8, v8, [Ljava/lang/Object;

    .line 85
    .line 86
    iput-object v8, v7, Lcom/google/android/gms/internal/mlkit_vision_common/zzj;->a:[Ljava/lang/Object;

    .line 87
    .line 88
    const/4 v8, 0x0

    .line 89
    iput v8, v7, Lcom/google/android/gms/internal/mlkit_vision_common/zzj;->b:I

    .line 90
    .line 91
    :goto_2
    invoke-virtual {v6}, Landroidx/core/os/LocaleListCompat;->e()I

    .line 92
    .line 93
    .line 94
    move-result v9

    .line 95
    if-ge v8, v9, :cond_3

    .line 96
    .line 97
    invoke-virtual {v6, v8}, Landroidx/core/os/LocaleListCompat;->c(I)Ljava/util/Locale;

    .line 98
    .line 99
    .line 100
    move-result-object v9

    .line 101
    invoke-static {v9}, Lcom/google/mlkit/common/sdkinternal/CommonUtils;->b(Ljava/util/Locale;)Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v9

    .line 105
    invoke-virtual {v7, v9}, Lcom/google/android/gms/internal/mlkit_vision_common/zzm;->a(Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    add-int/lit8 v8, v8, 0x1

    .line 109
    .line 110
    goto :goto_2

    .line 111
    :catchall_0
    move-exception v0

    .line 112
    goto :goto_5

    .line 113
    :cond_3
    const/4 v6, 0x1

    .line 114
    iput-boolean v6, v7, Lcom/google/android/gms/internal/mlkit_vision_common/zzj;->c:Z

    .line 115
    .line 116
    iget-object v6, v7, Lcom/google/android/gms/internal/mlkit_vision_common/zzj;->a:[Ljava/lang/Object;

    .line 117
    .line 118
    iget v7, v7, Lcom/google/android/gms/internal/mlkit_vision_common/zzj;->b:I

    .line 119
    .line 120
    invoke-static {v7, v6}, Lcom/google/android/gms/internal/mlkit_vision_common/zzp;->p(I[Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_vision_common/zzp;

    .line 121
    .line 122
    .line 123
    move-result-object v6

    .line 124
    sput-object v6, Lcom/google/android/gms/internal/mlkit_vision_common/zzmj;->j:Lcom/google/android/gms/internal/mlkit_vision_common/zzp;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 125
    .line 126
    monitor-exit v5

    .line 127
    :goto_3
    iput-object v6, v4, Lcom/google/android/gms/internal/mlkit_vision_common/zzky;->e:Lcom/google/android/gms/internal/mlkit_vision_common/zzp;

    .line 128
    .line 129
    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 130
    .line 131
    iput-object v5, v4, Lcom/google/android/gms/internal/mlkit_vision_common/zzky;->h:Ljava/lang/Boolean;

    .line 132
    .line 133
    iput-object v2, v4, Lcom/google/android/gms/internal/mlkit_vision_common/zzky;->d:Ljava/lang/String;

    .line 134
    .line 135
    iput-object v3, v4, Lcom/google/android/gms/internal/mlkit_vision_common/zzky;->c:Ljava/lang/String;

    .line 136
    .line 137
    iget-object v2, v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzmj;->f:Lcom/google/android/gms/tasks/Task;

    .line 138
    .line 139
    invoke-virtual {v2}, Lcom/google/android/gms/tasks/Task;->p()Z

    .line 140
    .line 141
    .line 142
    move-result v2

    .line 143
    if-eqz v2, :cond_4

    .line 144
    .line 145
    iget-object v2, v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzmj;->f:Lcom/google/android/gms/tasks/Task;

    .line 146
    .line 147
    invoke-virtual {v2}, Lcom/google/android/gms/tasks/Task;->m()Ljava/lang/Object;

    .line 148
    .line 149
    .line 150
    move-result-object v2

    .line 151
    check-cast v2, Ljava/lang/String;

    .line 152
    .line 153
    goto :goto_4

    .line 154
    :cond_4
    iget-object v2, v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzmj;->d:Lcom/google/mlkit/common/sdkinternal/SharedPrefManager;

    .line 155
    .line 156
    invoke-virtual {v2}, Lcom/google/mlkit/common/sdkinternal/SharedPrefManager;->a()Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object v2

    .line 160
    :goto_4
    iput-object v2, v4, Lcom/google/android/gms/internal/mlkit_vision_common/zzky;->f:Ljava/lang/String;

    .line 161
    .line 162
    const/16 v2, 0xa

    .line 163
    .line 164
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 165
    .line 166
    .line 167
    move-result-object v2

    .line 168
    iput-object v2, v4, Lcom/google/android/gms/internal/mlkit_vision_common/zzky;->j:Ljava/lang/Integer;

    .line 169
    .line 170
    iget v2, v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzmj;->h:I

    .line 171
    .line 172
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 173
    .line 174
    .line 175
    move-result-object v2

    .line 176
    iput-object v2, v4, Lcom/google/android/gms/internal/mlkit_vision_common/zzky;->k:Ljava/lang/Integer;

    .line 177
    .line 178
    iput-object v4, v1, Lcom/google/android/gms/internal/mlkit_vision_common/zzmk;->b:Lcom/google/android/gms/internal/mlkit_vision_common/zzky;

    .line 179
    .line 180
    iget-object v0, v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzmj;->c:Lcom/google/android/gms/internal/mlkit_vision_common/zzmf;

    .line 181
    .line 182
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_common/zzmf;->a(Lcom/google/android/gms/internal/mlkit_vision_common/zzmk;)V

    .line 183
    .line 184
    .line 185
    return-void

    .line 186
    :goto_5
    :try_start_2
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 187
    throw v0
.end method
