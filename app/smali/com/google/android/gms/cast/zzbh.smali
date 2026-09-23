.class final synthetic Lcom/google/android/gms/cast/zzbh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/google/android/gms/cast/zzbl;

.field public final synthetic f:Lcom/google/android/gms/cast/internal/zzac;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/cast/zzbl;Lcom/google/android/gms/cast/internal/zzac;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/cast/zzbh;->c:Lcom/google/android/gms/cast/zzbl;

    iput-object p2, p0, Lcom/google/android/gms/cast/zzbh;->f:Lcom/google/android/gms/cast/internal/zzac;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 13

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/cast/zzbh;->c:Lcom/google/android/gms/cast/zzbl;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/google/android/gms/cast/zzbl;->c:Lcom/google/android/gms/cast/zzbm;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/google/android/gms/cast/zzbm;->t:Lcom/google/android/gms/cast/Cast$Listener;

    .line 6
    .line 7
    iget-object v2, p0, Lcom/google/android/gms/cast/zzbh;->f:Lcom/google/android/gms/cast/internal/zzac;

    .line 8
    .line 9
    iget-object v3, v2, Lcom/google/android/gms/cast/internal/zzac;->h:Lcom/google/android/gms/cast/ApplicationMetadata;

    .line 10
    .line 11
    iget-object v4, v2, Lcom/google/android/gms/cast/internal/zzac;->j:Lcom/google/android/gms/cast/zzao;

    .line 12
    .line 13
    iget-object v5, v0, Lcom/google/android/gms/cast/zzbm;->j:Lcom/google/android/gms/cast/ApplicationMetadata;

    .line 14
    .line 15
    invoke-static {v3, v5}, Lcom/google/android/gms/cast/internal/CastUtils;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result v5

    .line 19
    if-nez v5, :cond_0

    .line 20
    .line 21
    iput-object v3, v0, Lcom/google/android/gms/cast/zzbm;->j:Lcom/google/android/gms/cast/ApplicationMetadata;

    .line 22
    .line 23
    invoke-virtual {v1, v3}, Lcom/google/android/gms/cast/Cast$Listener;->c(Lcom/google/android/gms/cast/ApplicationMetadata;)V

    .line 24
    .line 25
    .line 26
    :cond_0
    iget-wide v5, v2, Lcom/google/android/gms/cast/internal/zzac;->c:D

    .line 27
    .line 28
    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    .line 29
    .line 30
    .line 31
    move-result v3

    .line 32
    const/4 v7, 0x1

    .line 33
    const/4 v8, 0x0

    .line 34
    if-nez v3, :cond_1

    .line 35
    .line 36
    iget-wide v9, v0, Lcom/google/android/gms/cast/zzbm;->l:D

    .line 37
    .line 38
    sub-double v9, v5, v9

    .line 39
    .line 40
    invoke-static {v9, v10}, Ljava/lang/Math;->abs(D)D

    .line 41
    .line 42
    .line 43
    move-result-wide v9

    .line 44
    const-wide v11, 0x3e7ad7f29abcaf48L    # 1.0E-7

    .line 45
    .line 46
    .line 47
    .line 48
    .line 49
    cmpl-double v3, v9, v11

    .line 50
    .line 51
    if-lez v3, :cond_1

    .line 52
    .line 53
    iput-wide v5, v0, Lcom/google/android/gms/cast/zzbm;->l:D

    .line 54
    .line 55
    move v3, v7

    .line 56
    goto :goto_0

    .line 57
    :cond_1
    move v3, v8

    .line 58
    :goto_0
    iget-boolean v5, v2, Lcom/google/android/gms/cast/internal/zzac;->f:Z

    .line 59
    .line 60
    iget-boolean v6, v0, Lcom/google/android/gms/cast/zzbm;->m:Z

    .line 61
    .line 62
    if-eq v5, v6, :cond_2

    .line 63
    .line 64
    iput-boolean v5, v0, Lcom/google/android/gms/cast/zzbm;->m:Z

    .line 65
    .line 66
    move v3, v7

    .line 67
    :cond_2
    sget-object v5, Lcom/google/android/gms/cast/zzbm;->w:Lcom/google/android/gms/cast/internal/Logger;

    .line 68
    .line 69
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 70
    .line 71
    .line 72
    move-result-object v6

    .line 73
    iget-boolean v9, v0, Lcom/google/android/gms/cast/zzbm;->c:Z

    .line 74
    .line 75
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 76
    .line 77
    .line 78
    move-result-object v9

    .line 79
    const/4 v10, 0x2

    .line 80
    new-array v11, v10, [Ljava/lang/Object;

    .line 81
    .line 82
    aput-object v6, v11, v8

    .line 83
    .line 84
    aput-object v9, v11, v7

    .line 85
    .line 86
    const-string v6, "hasVolumeChanged=%b, mFirstDeviceStatusUpdate=%b"

    .line 87
    .line 88
    invoke-virtual {v5, v6, v11}, Lcom/google/android/gms/cast/internal/Logger;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 89
    .line 90
    .line 91
    if-eqz v1, :cond_4

    .line 92
    .line 93
    if-nez v3, :cond_3

    .line 94
    .line 95
    iget-boolean v3, v0, Lcom/google/android/gms/cast/zzbm;->c:Z

    .line 96
    .line 97
    if-eqz v3, :cond_4

    .line 98
    .line 99
    :cond_3
    invoke-virtual {v1}, Lcom/google/android/gms/cast/Cast$Listener;->g()V

    .line 100
    .line 101
    .line 102
    :cond_4
    iget-wide v11, v2, Lcom/google/android/gms/cast/internal/zzac;->k:D

    .line 103
    .line 104
    invoke-static {v11, v12}, Ljava/lang/Double;->isNaN(D)Z

    .line 105
    .line 106
    .line 107
    iget v3, v2, Lcom/google/android/gms/cast/internal/zzac;->g:I

    .line 108
    .line 109
    iget v6, v0, Lcom/google/android/gms/cast/zzbm;->n:I

    .line 110
    .line 111
    if-eq v3, v6, :cond_5

    .line 112
    .line 113
    iput v3, v0, Lcom/google/android/gms/cast/zzbm;->n:I

    .line 114
    .line 115
    move v3, v7

    .line 116
    goto :goto_1

    .line 117
    :cond_5
    move v3, v8

    .line 118
    :goto_1
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 119
    .line 120
    .line 121
    move-result-object v6

    .line 122
    iget-boolean v9, v0, Lcom/google/android/gms/cast/zzbm;->c:Z

    .line 123
    .line 124
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 125
    .line 126
    .line 127
    move-result-object v9

    .line 128
    new-array v11, v10, [Ljava/lang/Object;

    .line 129
    .line 130
    aput-object v6, v11, v8

    .line 131
    .line 132
    aput-object v9, v11, v7

    .line 133
    .line 134
    const-string v6, "hasActiveInputChanged=%b, mFirstDeviceStatusUpdate=%b"

    .line 135
    .line 136
    invoke-virtual {v5, v6, v11}, Lcom/google/android/gms/cast/internal/Logger;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 137
    .line 138
    .line 139
    if-eqz v1, :cond_7

    .line 140
    .line 141
    if-nez v3, :cond_6

    .line 142
    .line 143
    iget-boolean v3, v0, Lcom/google/android/gms/cast/zzbm;->c:Z

    .line 144
    .line 145
    if-eqz v3, :cond_7

    .line 146
    .line 147
    :cond_6
    iget v3, v0, Lcom/google/android/gms/cast/zzbm;->n:I

    .line 148
    .line 149
    invoke-virtual {v1, v3}, Lcom/google/android/gms/cast/Cast$Listener;->a(I)V

    .line 150
    .line 151
    .line 152
    :cond_7
    iget v2, v2, Lcom/google/android/gms/cast/internal/zzac;->i:I

    .line 153
    .line 154
    iget v3, v0, Lcom/google/android/gms/cast/zzbm;->o:I

    .line 155
    .line 156
    if-eq v2, v3, :cond_8

    .line 157
    .line 158
    iput v2, v0, Lcom/google/android/gms/cast/zzbm;->o:I

    .line 159
    .line 160
    move v2, v7

    .line 161
    goto :goto_2

    .line 162
    :cond_8
    move v2, v8

    .line 163
    :goto_2
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 164
    .line 165
    .line 166
    move-result-object v3

    .line 167
    iget-boolean v6, v0, Lcom/google/android/gms/cast/zzbm;->c:Z

    .line 168
    .line 169
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 170
    .line 171
    .line 172
    move-result-object v6

    .line 173
    new-array v9, v10, [Ljava/lang/Object;

    .line 174
    .line 175
    aput-object v3, v9, v8

    .line 176
    .line 177
    aput-object v6, v9, v7

    .line 178
    .line 179
    const-string v3, "hasStandbyStateChanged=%b, mFirstDeviceStatusUpdate=%b"

    .line 180
    .line 181
    invoke-virtual {v5, v3, v9}, Lcom/google/android/gms/cast/internal/Logger;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 182
    .line 183
    .line 184
    if-eqz v1, :cond_a

    .line 185
    .line 186
    if-nez v2, :cond_9

    .line 187
    .line 188
    iget-boolean v2, v0, Lcom/google/android/gms/cast/zzbm;->c:Z

    .line 189
    .line 190
    if-eqz v2, :cond_a

    .line 191
    .line 192
    :cond_9
    iget v2, v0, Lcom/google/android/gms/cast/zzbm;->o:I

    .line 193
    .line 194
    invoke-virtual {v1, v2}, Lcom/google/android/gms/cast/Cast$Listener;->f(I)V

    .line 195
    .line 196
    .line 197
    :cond_a
    iget-object v1, v0, Lcom/google/android/gms/cast/zzbm;->p:Lcom/google/android/gms/cast/zzao;

    .line 198
    .line 199
    invoke-static {v1, v4}, Lcom/google/android/gms/cast/internal/CastUtils;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 200
    .line 201
    .line 202
    move-result v1

    .line 203
    if-nez v1, :cond_b

    .line 204
    .line 205
    iput-object v4, v0, Lcom/google/android/gms/cast/zzbm;->p:Lcom/google/android/gms/cast/zzao;

    .line 206
    .line 207
    :cond_b
    iput-boolean v8, v0, Lcom/google/android/gms/cast/zzbm;->c:Z

    .line 208
    .line 209
    return-void
.end method
