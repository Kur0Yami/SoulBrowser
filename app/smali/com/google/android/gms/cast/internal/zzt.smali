.class final Lcom/google/android/gms/cast/internal/zzt;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/google/android/gms/cast/internal/zzx;

.field public final synthetic f:Lcom/google/android/gms/cast/internal/zzac;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/cast/internal/zzw;Lcom/google/android/gms/cast/internal/zzx;Lcom/google/android/gms/cast/internal/zzac;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lcom/google/android/gms/cast/internal/zzt;->c:Lcom/google/android/gms/cast/internal/zzx;

    .line 5
    .line 6
    iput-object p3, p0, Lcom/google/android/gms/cast/internal/zzt;->f:Lcom/google/android/gms/cast/internal/zzac;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 13

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/cast/internal/zzt;->c:Lcom/google/android/gms/cast/internal/zzx;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/google/android/gms/cast/internal/zzx;->g:Lcom/google/android/gms/cast/Cast$Listener;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/google/android/gms/cast/internal/zzt;->f:Lcom/google/android/gms/cast/internal/zzac;

    .line 6
    .line 7
    iget-object v3, v2, Lcom/google/android/gms/cast/internal/zzac;->h:Lcom/google/android/gms/cast/ApplicationMetadata;

    .line 8
    .line 9
    iget-object v4, v2, Lcom/google/android/gms/cast/internal/zzac;->j:Lcom/google/android/gms/cast/zzao;

    .line 10
    .line 11
    iget-object v5, v0, Lcom/google/android/gms/cast/internal/zzx;->c:Lcom/google/android/gms/cast/ApplicationMetadata;

    .line 12
    .line 13
    invoke-static {v3, v5}, Lcom/google/android/gms/cast/internal/CastUtils;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result v5

    .line 17
    if-nez v5, :cond_0

    .line 18
    .line 19
    iput-object v3, v0, Lcom/google/android/gms/cast/internal/zzx;->c:Lcom/google/android/gms/cast/ApplicationMetadata;

    .line 20
    .line 21
    invoke-virtual {v1, v3}, Lcom/google/android/gms/cast/Cast$Listener;->c(Lcom/google/android/gms/cast/ApplicationMetadata;)V

    .line 22
    .line 23
    .line 24
    :cond_0
    iget-wide v5, v2, Lcom/google/android/gms/cast/internal/zzac;->c:D

    .line 25
    .line 26
    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    .line 27
    .line 28
    .line 29
    move-result v3

    .line 30
    const/4 v7, 0x1

    .line 31
    const/4 v8, 0x0

    .line 32
    if-nez v3, :cond_1

    .line 33
    .line 34
    iget-wide v9, v0, Lcom/google/android/gms/cast/internal/zzx;->q:D

    .line 35
    .line 36
    sub-double v9, v5, v9

    .line 37
    .line 38
    invoke-static {v9, v10}, Ljava/lang/Math;->abs(D)D

    .line 39
    .line 40
    .line 41
    move-result-wide v9

    .line 42
    const-wide v11, 0x3e7ad7f29abcaf48L    # 1.0E-7

    .line 43
    .line 44
    .line 45
    .line 46
    .line 47
    cmpl-double v3, v9, v11

    .line 48
    .line 49
    if-lez v3, :cond_1

    .line 50
    .line 51
    iput-wide v5, v0, Lcom/google/android/gms/cast/internal/zzx;->q:D

    .line 52
    .line 53
    move v3, v7

    .line 54
    goto :goto_0

    .line 55
    :cond_1
    move v3, v8

    .line 56
    :goto_0
    iget-boolean v5, v2, Lcom/google/android/gms/cast/internal/zzac;->f:Z

    .line 57
    .line 58
    iget-boolean v6, v0, Lcom/google/android/gms/cast/internal/zzx;->m:Z

    .line 59
    .line 60
    if-eq v5, v6, :cond_2

    .line 61
    .line 62
    iput-boolean v5, v0, Lcom/google/android/gms/cast/internal/zzx;->m:Z

    .line 63
    .line 64
    move v3, v7

    .line 65
    :cond_2
    iget-wide v5, v2, Lcom/google/android/gms/cast/internal/zzac;->k:D

    .line 66
    .line 67
    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    .line 68
    .line 69
    .line 70
    sget-object v5, Lcom/google/android/gms/cast/internal/zzx;->B:Lcom/google/android/gms/cast/internal/Logger;

    .line 71
    .line 72
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 73
    .line 74
    .line 75
    move-result-object v6

    .line 76
    iget-boolean v9, v0, Lcom/google/android/gms/cast/internal/zzx;->o:Z

    .line 77
    .line 78
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 79
    .line 80
    .line 81
    move-result-object v9

    .line 82
    const/4 v10, 0x2

    .line 83
    new-array v11, v10, [Ljava/lang/Object;

    .line 84
    .line 85
    aput-object v6, v11, v8

    .line 86
    .line 87
    aput-object v9, v11, v7

    .line 88
    .line 89
    const-string v6, "hasVolumeChanged=%b, mFirstDeviceStatusUpdate=%b"

    .line 90
    .line 91
    invoke-virtual {v5, v6, v11}, Lcom/google/android/gms/cast/internal/Logger;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 92
    .line 93
    .line 94
    if-eqz v1, :cond_4

    .line 95
    .line 96
    if-nez v3, :cond_3

    .line 97
    .line 98
    iget-boolean v3, v0, Lcom/google/android/gms/cast/internal/zzx;->o:Z

    .line 99
    .line 100
    if-eqz v3, :cond_4

    .line 101
    .line 102
    :cond_3
    invoke-virtual {v1}, Lcom/google/android/gms/cast/Cast$Listener;->g()V

    .line 103
    .line 104
    .line 105
    :cond_4
    iget v3, v2, Lcom/google/android/gms/cast/internal/zzac;->g:I

    .line 106
    .line 107
    iget v6, v0, Lcom/google/android/gms/cast/internal/zzx;->s:I

    .line 108
    .line 109
    if-eq v3, v6, :cond_5

    .line 110
    .line 111
    iput v3, v0, Lcom/google/android/gms/cast/internal/zzx;->s:I

    .line 112
    .line 113
    move v3, v7

    .line 114
    goto :goto_1

    .line 115
    :cond_5
    move v3, v8

    .line 116
    :goto_1
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 117
    .line 118
    .line 119
    move-result-object v6

    .line 120
    iget-boolean v9, v0, Lcom/google/android/gms/cast/internal/zzx;->o:Z

    .line 121
    .line 122
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 123
    .line 124
    .line 125
    move-result-object v9

    .line 126
    new-array v11, v10, [Ljava/lang/Object;

    .line 127
    .line 128
    aput-object v6, v11, v8

    .line 129
    .line 130
    aput-object v9, v11, v7

    .line 131
    .line 132
    const-string v6, "hasActiveInputChanged=%b, mFirstDeviceStatusUpdate=%b"

    .line 133
    .line 134
    invoke-virtual {v5, v6, v11}, Lcom/google/android/gms/cast/internal/Logger;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 135
    .line 136
    .line 137
    if-eqz v1, :cond_7

    .line 138
    .line 139
    if-nez v3, :cond_6

    .line 140
    .line 141
    iget-boolean v3, v0, Lcom/google/android/gms/cast/internal/zzx;->o:Z

    .line 142
    .line 143
    if-eqz v3, :cond_7

    .line 144
    .line 145
    :cond_6
    iget v3, v0, Lcom/google/android/gms/cast/internal/zzx;->s:I

    .line 146
    .line 147
    invoke-virtual {v1, v3}, Lcom/google/android/gms/cast/Cast$Listener;->a(I)V

    .line 148
    .line 149
    .line 150
    :cond_7
    iget v2, v2, Lcom/google/android/gms/cast/internal/zzac;->i:I

    .line 151
    .line 152
    iget v3, v0, Lcom/google/android/gms/cast/internal/zzx;->t:I

    .line 153
    .line 154
    if-eq v2, v3, :cond_8

    .line 155
    .line 156
    iput v2, v0, Lcom/google/android/gms/cast/internal/zzx;->t:I

    .line 157
    .line 158
    move v2, v7

    .line 159
    goto :goto_2

    .line 160
    :cond_8
    move v2, v8

    .line 161
    :goto_2
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 162
    .line 163
    .line 164
    move-result-object v3

    .line 165
    iget-boolean v6, v0, Lcom/google/android/gms/cast/internal/zzx;->o:Z

    .line 166
    .line 167
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 168
    .line 169
    .line 170
    move-result-object v6

    .line 171
    new-array v9, v10, [Ljava/lang/Object;

    .line 172
    .line 173
    aput-object v3, v9, v8

    .line 174
    .line 175
    aput-object v6, v9, v7

    .line 176
    .line 177
    const-string v3, "hasStandbyStateChanged=%b, mFirstDeviceStatusUpdate=%b"

    .line 178
    .line 179
    invoke-virtual {v5, v3, v9}, Lcom/google/android/gms/cast/internal/Logger;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 180
    .line 181
    .line 182
    if-eqz v1, :cond_a

    .line 183
    .line 184
    if-nez v2, :cond_9

    .line 185
    .line 186
    iget-boolean v2, v0, Lcom/google/android/gms/cast/internal/zzx;->o:Z

    .line 187
    .line 188
    if-eqz v2, :cond_a

    .line 189
    .line 190
    :cond_9
    iget v2, v0, Lcom/google/android/gms/cast/internal/zzx;->t:I

    .line 191
    .line 192
    invoke-virtual {v1, v2}, Lcom/google/android/gms/cast/Cast$Listener;->f(I)V

    .line 193
    .line 194
    .line 195
    :cond_a
    iget-object v1, v0, Lcom/google/android/gms/cast/internal/zzx;->r:Lcom/google/android/gms/cast/zzao;

    .line 196
    .line 197
    invoke-static {v1, v4}, Lcom/google/android/gms/cast/internal/CastUtils;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 198
    .line 199
    .line 200
    move-result v1

    .line 201
    if-nez v1, :cond_b

    .line 202
    .line 203
    iput-object v4, v0, Lcom/google/android/gms/cast/internal/zzx;->r:Lcom/google/android/gms/cast/zzao;

    .line 204
    .line 205
    :cond_b
    iput-boolean v8, v0, Lcom/google/android/gms/cast/internal/zzx;->o:Z

    .line 206
    .line 207
    return-void
.end method
