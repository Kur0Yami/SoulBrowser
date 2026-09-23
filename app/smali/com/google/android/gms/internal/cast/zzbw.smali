.class final synthetic Lcom/google/android/gms/internal/cast/zzbw;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/tasks/OnCompleteListener;


# instance fields
.field public final synthetic a:Lcom/google/android/gms/internal/cast/zzbx;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/cast/zzbx;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/cast/zzbw;->a:Lcom/google/android/gms/internal/cast/zzbx;

    return-void
.end method


# virtual methods
.method public final onComplete(Lcom/google/android/gms/tasks/Task;)V
    .locals 12

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/cast/zzbx;->l:Lcom/google/android/gms/cast/internal/Logger;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/android/gms/internal/cast/zzbw;->a:Lcom/google/android/gms/internal/cast/zzbx;

    .line 4
    .line 5
    iget-boolean v2, v1, Lcom/google/android/gms/internal/cast/zzbx;->i:Z

    .line 6
    .line 7
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->p()Z

    .line 8
    .line 9
    .line 10
    move-result v3

    .line 11
    const/4 v4, 0x1

    .line 12
    const/4 v5, 0x0

    .line 13
    if-eqz v3, :cond_2

    .line 14
    .line 15
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->m()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    check-cast p1, Landroid/os/Bundle;

    .line 20
    .line 21
    const-string v3, "com.google.android.gms.cast.FLAG_OUTPUT_SWITCHER_ENABLED"

    .line 22
    .line 23
    if-eqz p1, :cond_0

    .line 24
    .line 25
    invoke-virtual {p1, v3}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 26
    .line 27
    .line 28
    move-result v6

    .line 29
    if-eqz v6, :cond_0

    .line 30
    .line 31
    move v6, v4

    .line 32
    goto :goto_0

    .line 33
    :cond_0
    move v6, v5

    .line 34
    :goto_0
    if-eq v4, v6, :cond_1

    .line 35
    .line 36
    const-string v7, "not existed"

    .line 37
    .line 38
    goto :goto_1

    .line 39
    :cond_1
    const-string v7, "existed"

    .line 40
    .line 41
    :goto_1
    new-array v8, v4, [Ljava/lang/Object;

    .line 42
    .line 43
    aput-object v7, v8, v5

    .line 44
    .line 45
    const-string v7, "The module-to-client output switcher flag %s"

    .line 46
    .line 47
    invoke-virtual {v0, v7, v8}, Lcom/google/android/gms/cast/internal/Logger;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 48
    .line 49
    .line 50
    if-eqz v6, :cond_2

    .line 51
    .line 52
    invoke-virtual {p1, v3}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    .line 53
    .line 54
    .line 55
    move-result p1

    .line 56
    iput-boolean p1, v1, Lcom/google/android/gms/internal/cast/zzbx;->j:Z

    .line 57
    .line 58
    :cond_2
    iget-boolean p1, v1, Lcom/google/android/gms/internal/cast/zzbx;->j:Z

    .line 59
    .line 60
    iget-object v3, v1, Lcom/google/android/gms/internal/cast/zzbx;->c:Landroidx/mediarouter/media/MediaRouter;

    .line 61
    .line 62
    if-eqz v3, :cond_d

    .line 63
    .line 64
    iget-object v3, v1, Lcom/google/android/gms/internal/cast/zzbx;->f:Lcom/google/android/gms/cast/framework/CastOptions;

    .line 65
    .line 66
    if-nez v3, :cond_3

    .line 67
    .line 68
    goto/16 :goto_5

    .line 69
    .line 70
    :cond_3
    iget-boolean v6, v3, Lcom/google/android/gms/cast/framework/CastOptions;->o:Z

    .line 71
    .line 72
    iget-boolean v7, v3, Lcom/google/android/gms/cast/framework/CastOptions;->n:Z

    .line 73
    .line 74
    if-eqz p1, :cond_4

    .line 75
    .line 76
    iget-boolean p1, v3, Lcom/google/android/gms/cast/framework/CastOptions;->q:Z

    .line 77
    .line 78
    if-eqz p1, :cond_4

    .line 79
    .line 80
    move p1, v4

    .line 81
    goto :goto_2

    .line 82
    :cond_4
    move p1, v5

    .line 83
    :goto_2
    new-instance v8, Landroidx/mediarouter/media/MediaRouterParams$Builder;

    .line 84
    .line 85
    invoke-direct {v8}, Ljava/lang/Object;-><init>()V

    .line 86
    .line 87
    .line 88
    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 89
    .line 90
    const/16 v10, 0x1e

    .line 91
    .line 92
    if-lt v9, v10, :cond_5

    .line 93
    .line 94
    move v11, v4

    .line 95
    goto :goto_3

    .line 96
    :cond_5
    move v11, v5

    .line 97
    :goto_3
    iput-boolean v11, v8, Landroidx/mediarouter/media/MediaRouterParams$Builder;->a:Z

    .line 98
    .line 99
    if-lt v9, v10, :cond_6

    .line 100
    .line 101
    iput-boolean p1, v8, Landroidx/mediarouter/media/MediaRouterParams$Builder;->a:Z

    .line 102
    .line 103
    :cond_6
    if-lt v9, v10, :cond_7

    .line 104
    .line 105
    iput-boolean v6, v8, Landroidx/mediarouter/media/MediaRouterParams$Builder;->c:Z

    .line 106
    .line 107
    :cond_7
    if-lt v9, v10, :cond_8

    .line 108
    .line 109
    iput-boolean v7, v8, Landroidx/mediarouter/media/MediaRouterParams$Builder;->b:Z

    .line 110
    .line 111
    :cond_8
    iget-boolean v3, v3, Lcom/google/android/gms/cast/framework/CastOptions;->v:Z

    .line 112
    .line 113
    if-lt v9, v10, :cond_9

    .line 114
    .line 115
    iput-boolean v3, v8, Landroidx/mediarouter/media/MediaRouterParams$Builder;->d:Z

    .line 116
    .line 117
    :cond_9
    new-instance v3, Landroidx/mediarouter/media/MediaRouterParams;

    .line 118
    .line 119
    invoke-direct {v3, v8}, Landroidx/mediarouter/media/MediaRouterParams;-><init>(Landroidx/mediarouter/media/MediaRouterParams$Builder;)V

    .line 120
    .line 121
    .line 122
    invoke-static {v3}, Landroidx/mediarouter/media/MediaRouter;->t(Landroidx/mediarouter/media/MediaRouterParams;)V

    .line 123
    .line 124
    .line 125
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 126
    .line 127
    .line 128
    move-result-object v3

    .line 129
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 130
    .line 131
    .line 132
    move-result-object v8

    .line 133
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 134
    .line 135
    .line 136
    move-result-object v9

    .line 137
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 138
    .line 139
    .line 140
    move-result-object v7

    .line 141
    const/4 v10, 0x4

    .line 142
    new-array v10, v10, [Ljava/lang/Object;

    .line 143
    .line 144
    aput-object v3, v10, v5

    .line 145
    .line 146
    aput-object v8, v10, v4

    .line 147
    .line 148
    const/4 v3, 0x2

    .line 149
    aput-object v9, v10, v3

    .line 150
    .line 151
    const/4 v3, 0x3

    .line 152
    aput-object v7, v10, v3

    .line 153
    .line 154
    iget-object v3, v0, Lcom/google/android/gms/cast/internal/Logger;->a:Ljava/lang/String;

    .line 155
    .line 156
    const-string v7, "media transfer = %b, session transfer = %b, transfer to local = %b, in-app output switcher = %b"

    .line 157
    .line 158
    invoke-virtual {v0, v7, v10}, Lcom/google/android/gms/cast/internal/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object v0

    .line 162
    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    .line 164
    .line 165
    iget-object v0, v1, Lcom/google/android/gms/internal/cast/zzbx;->h:Lcom/google/android/gms/internal/cast/zzce;

    .line 166
    .line 167
    if-eqz v0, :cond_b

    .line 168
    .line 169
    if-eqz v2, :cond_a

    .line 170
    .line 171
    if-eqz p1, :cond_a

    .line 172
    .line 173
    goto :goto_4

    .line 174
    :cond_a
    move v4, v5

    .line 175
    :goto_4
    iput-boolean v4, v0, Lcom/google/android/gms/internal/cast/zzce;->f:Z

    .line 176
    .line 177
    :cond_b
    if-eqz v2, :cond_c

    .line 178
    .line 179
    if-eqz p1, :cond_c

    .line 180
    .line 181
    sget-object p1, Lcom/google/android/gms/internal/cast/zzpm;->O:Lcom/google/android/gms/internal/cast/zzpm;

    .line 182
    .line 183
    invoke-static {p1}, Lcom/google/android/gms/internal/cast/zzr;->a(Lcom/google/android/gms/internal/cast/zzpm;)V

    .line 184
    .line 185
    .line 186
    :cond_c
    if-eqz v6, :cond_d

    .line 187
    .line 188
    sget-object p1, Lcom/google/android/gms/internal/cast/zzpm;->P:Lcom/google/android/gms/internal/cast/zzpm;

    .line 189
    .line 190
    invoke-static {p1}, Lcom/google/android/gms/internal/cast/zzr;->a(Lcom/google/android/gms/internal/cast/zzpm;)V

    .line 191
    .line 192
    .line 193
    :cond_d
    :goto_5
    return-void
.end method
