.class public final synthetic Lcom/google/android/gms/internal/mlkit_vision_text_common/zztw;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/google/android/gms/internal/mlkit_vision_text_common/zzuc;

.field public final synthetic f:Lcom/google/android/gms/internal/mlkit_vision_text_common/zztr;

.field public final synthetic g:Lcom/google/android/gms/internal/mlkit_vision_text_common/zzov;

.field public final synthetic h:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/mlkit_vision_text_common/zzuc;Lcom/google/android/gms/internal/mlkit_vision_text_common/zztr;Lcom/google/android/gms/internal/mlkit_vision_text_common/zzov;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_text_common/zztw;->c:Lcom/google/android/gms/internal/mlkit_vision_text_common/zzuc;

    iput-object p2, p0, Lcom/google/android/gms/internal/mlkit_vision_text_common/zztw;->f:Lcom/google/android/gms/internal/mlkit_vision_text_common/zztr;

    iput-object p3, p0, Lcom/google/android/gms/internal/mlkit_vision_text_common/zztw;->g:Lcom/google/android/gms/internal/mlkit_vision_text_common/zzov;

    iput-object p4, p0, Lcom/google/android/gms/internal/mlkit_vision_text_common/zztw;->h:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_text_common/zztw;->c:Lcom/google/android/gms/internal/mlkit_vision_text_common/zzuc;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_text_common/zztw;->f:Lcom/google/android/gms/internal/mlkit_vision_text_common/zztr;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/google/android/gms/internal/mlkit_vision_text_common/zztw;->g:Lcom/google/android/gms/internal/mlkit_vision_text_common/zzov;

    .line 6
    .line 7
    iget-object v3, p0, Lcom/google/android/gms/internal/mlkit_vision_text_common/zztw;->h:Ljava/lang/String;

    .line 8
    .line 9
    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_text_common/zztr;->a(Lcom/google/android/gms/internal/mlkit_vision_text_common/zzov;)Lcom/google/android/gms/internal/mlkit_vision_text_common/zzuf;

    .line 10
    .line 11
    .line 12
    move-object v2, v1

    .line 13
    check-cast v2, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzuf;

    .line 14
    .line 15
    iget-object v4, v2, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzuf;->a:Lcom/google/android/gms/internal/mlkit_vision_text_common/zzow;

    .line 16
    .line 17
    new-instance v5, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzoy;

    .line 18
    .line 19
    invoke-direct {v5, v4}, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzoy;-><init>(Lcom/google/android/gms/internal/mlkit_vision_text_common/zzow;)V

    .line 20
    .line 21
    .line 22
    iget-object v4, v5, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzoy;->a:Lcom/google/android/gms/internal/mlkit_vision_text_common/zzst;

    .line 23
    .line 24
    if-eqz v4, :cond_0

    .line 25
    .line 26
    iget-object v4, v4, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzst;->d:Ljava/lang/String;

    .line 27
    .line 28
    invoke-static {v4}, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzy;->b(Ljava/lang/String;)Z

    .line 29
    .line 30
    .line 31
    move-result v5

    .line 32
    if-nez v5, :cond_0

    .line 33
    .line 34
    invoke-static {v4}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v4

    .line 38
    check-cast v4, Ljava/lang/String;

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_0
    const-string v4, "NA"

    .line 42
    .line 43
    :goto_0
    new-instance v5, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzsr;

    .line 44
    .line 45
    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    .line 46
    .line 47
    .line 48
    iget-object v6, v0, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzuc;->a:Ljava/lang/String;

    .line 49
    .line 50
    iput-object v6, v5, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzsr;->a:Ljava/lang/String;

    .line 51
    .line 52
    iget-object v6, v0, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzuc;->b:Ljava/lang/String;

    .line 53
    .line 54
    iput-object v6, v5, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzsr;->b:Ljava/lang/String;

    .line 55
    .line 56
    const-class v6, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzuc;

    .line 57
    .line 58
    monitor-enter v6

    .line 59
    :try_start_0
    sget-object v7, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzuc;->k:Lcom/google/android/gms/internal/mlkit_vision_text_common/zzbk;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 60
    .line 61
    if-eqz v7, :cond_1

    .line 62
    .line 63
    monitor-exit v6

    .line 64
    goto :goto_2

    .line 65
    :cond_1
    :try_start_1
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    .line 66
    .line 67
    .line 68
    move-result-object v7

    .line 69
    invoke-virtual {v7}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 70
    .line 71
    .line 72
    move-result-object v7

    .line 73
    invoke-static {v7}, Landroidx/core/os/ConfigurationCompat;->a(Landroid/content/res/Configuration;)Landroidx/core/os/LocaleListCompat;

    .line 74
    .line 75
    .line 76
    move-result-object v7

    .line 77
    new-instance v8, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzbh;

    .line 78
    .line 79
    invoke-direct {v8}, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzbh;-><init>()V

    .line 80
    .line 81
    .line 82
    const/4 v9, 0x0

    .line 83
    :goto_1
    invoke-virtual {v7}, Landroidx/core/os/LocaleListCompat;->e()I

    .line 84
    .line 85
    .line 86
    move-result v10

    .line 87
    if-ge v9, v10, :cond_2

    .line 88
    .line 89
    invoke-virtual {v7, v9}, Landroidx/core/os/LocaleListCompat;->c(I)Ljava/util/Locale;

    .line 90
    .line 91
    .line 92
    move-result-object v10

    .line 93
    invoke-static {v10}, Lcom/google/mlkit/common/sdkinternal/CommonUtils;->b(Ljava/util/Locale;)Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v10

    .line 97
    invoke-virtual {v8, v10}, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzbh;->a(Ljava/lang/Object;)V

    .line 98
    .line 99
    .line 100
    add-int/lit8 v9, v9, 0x1

    .line 101
    .line 102
    goto :goto_1

    .line 103
    :catchall_0
    move-exception v0

    .line 104
    goto :goto_4

    .line 105
    :cond_2
    invoke-virtual {v8}, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzbh;->b()Lcom/google/android/gms/internal/mlkit_vision_text_common/zzbk;

    .line 106
    .line 107
    .line 108
    move-result-object v7

    .line 109
    sput-object v7, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzuc;->k:Lcom/google/android/gms/internal/mlkit_vision_text_common/zzbk;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 110
    .line 111
    monitor-exit v6

    .line 112
    :goto_2
    iput-object v7, v5, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzsr;->e:Lcom/google/android/gms/internal/mlkit_vision_text_common/zzbk;

    .line 113
    .line 114
    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 115
    .line 116
    iput-object v6, v5, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzsr;->h:Ljava/lang/Boolean;

    .line 117
    .line 118
    iput-object v4, v5, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzsr;->d:Ljava/lang/String;

    .line 119
    .line 120
    iput-object v3, v5, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzsr;->c:Ljava/lang/String;

    .line 121
    .line 122
    iget-object v3, v0, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzuc;->f:Lcom/google/android/gms/tasks/Task;

    .line 123
    .line 124
    invoke-virtual {v3}, Lcom/google/android/gms/tasks/Task;->p()Z

    .line 125
    .line 126
    .line 127
    move-result v3

    .line 128
    if-eqz v3, :cond_3

    .line 129
    .line 130
    iget-object v3, v0, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzuc;->f:Lcom/google/android/gms/tasks/Task;

    .line 131
    .line 132
    invoke-virtual {v3}, Lcom/google/android/gms/tasks/Task;->m()Ljava/lang/Object;

    .line 133
    .line 134
    .line 135
    move-result-object v3

    .line 136
    check-cast v3, Ljava/lang/String;

    .line 137
    .line 138
    goto :goto_3

    .line 139
    :cond_3
    iget-object v3, v0, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzuc;->d:Lcom/google/mlkit/common/sdkinternal/SharedPrefManager;

    .line 140
    .line 141
    invoke-virtual {v3}, Lcom/google/mlkit/common/sdkinternal/SharedPrefManager;->a()Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object v3

    .line 145
    :goto_3
    iput-object v3, v5, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzsr;->f:Ljava/lang/String;

    .line 146
    .line 147
    const/16 v3, 0xa

    .line 148
    .line 149
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 150
    .line 151
    .line 152
    move-result-object v3

    .line 153
    iput-object v3, v5, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzsr;->j:Ljava/lang/Integer;

    .line 154
    .line 155
    iget v3, v0, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzuc;->h:I

    .line 156
    .line 157
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 158
    .line 159
    .line 160
    move-result-object v3

    .line 161
    iput-object v3, v5, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzsr;->k:Ljava/lang/Integer;

    .line 162
    .line 163
    iput-object v5, v2, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzuf;->b:Lcom/google/android/gms/internal/mlkit_vision_text_common/zzsr;

    .line 164
    .line 165
    iget-object v0, v0, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzuc;->c:Lcom/google/android/gms/internal/mlkit_vision_text_common/zztv;

    .line 166
    .line 167
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_text_common/zztv;->a(Lcom/google/android/gms/internal/mlkit_vision_text_common/zztr;)V

    .line 168
    .line 169
    .line 170
    return-void

    .line 171
    :goto_4
    :try_start_2
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 172
    throw v0
.end method
