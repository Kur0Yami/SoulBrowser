.class public final Lcom/google/android/gms/internal/cast/zzp;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/MainThread;
.end annotation


# static fields
.field public static final d:Lcom/google/android/gms/cast/internal/Logger;

.field public static final e:Ljava/lang/String;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/util/Map;

.field public final c:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/google/android/gms/cast/internal/Logger;

    .line 2
    .line 3
    const-string v1, "ApplicationAnalyticsUtils"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/cast/internal/Logger;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lcom/google/android/gms/internal/cast/zzp;->d:Lcom/google/android/gms/cast/internal/Logger;

    .line 10
    .line 11
    const-string v0, "22.2.0"

    .line 12
    .line 13
    sput-object v0, Lcom/google/android/gms/internal/cast/zzp;->e:Ljava/lang/String;

    .line 14
    .line 15
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/cast/zzp;->a:Ljava/lang/String;

    .line 5
    .line 6
    const-string p1, "com.google.android.gms.cast.DICTIONARY_CAST_STATUS_CODES_TO_APP_SESSION_ERROR"

    .line 7
    .line 8
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/cast/zzaz;->a(Ljava/lang/String;Landroid/os/Bundle;)Ljava/util/Map;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    iput-object p1, p0, Lcom/google/android/gms/internal/cast/zzp;->b:Ljava/util/Map;

    .line 13
    .line 14
    const-string p1, "com.google.android.gms.cast.DICTIONARY_CAST_STATUS_CODES_TO_APP_SESSION_CHANGE_REASON"

    .line 15
    .line 16
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/cast/zzaz;->a(Ljava/lang/String;Landroid/os/Bundle;)Ljava/util/Map;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    iput-object p1, p0, Lcom/google/android/gms/internal/cast/zzp;->c:Ljava/util/Map;

    .line 21
    .line 22
    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/cast/zzo;I)Lcom/google/android/gms/internal/cast/zzqr;
    .locals 4

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/cast/zzp;->b(Lcom/google/android/gms/internal/cast/zzo;)Lcom/google/android/gms/internal/cast/zzqq;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p1}, Lcom/google/android/gms/internal/cast/zzqq;->f()Lcom/google/android/gms/internal/cast/zzqg;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-static {v0}, Lcom/google/android/gms/internal/cast/zzqg;->o(Lcom/google/android/gms/internal/cast/zzqg;)Lcom/google/android/gms/internal/cast/zzqf;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iget-object v1, p0, Lcom/google/android/gms/internal/cast/zzp;->c:Ljava/util/Map;

    .line 14
    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result v3

    .line 25
    if-nez v3, :cond_0

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    check-cast v1, Ljava/lang/Integer;

    .line 33
    .line 34
    invoke-static {v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    check-cast v1, Ljava/lang/Integer;

    .line 39
    .line 40
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    goto :goto_1

    .line 45
    :cond_1
    :goto_0
    add-int/lit16 v1, p2, 0x2710

    .line 46
    .line 47
    :goto_1
    invoke-virtual {v0}, Lcom/google/android/gms/internal/cast/zzya;->c()V

    .line 48
    .line 49
    .line 50
    iget-object v2, v0, Lcom/google/android/gms/internal/cast/zzya;->f:Lcom/google/android/gms/internal/cast/zzyd;

    .line 51
    .line 52
    check-cast v2, Lcom/google/android/gms/internal/cast/zzqg;

    .line 53
    .line 54
    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/cast/zzqg;->t(I)V

    .line 55
    .line 56
    .line 57
    iget-object v1, p0, Lcom/google/android/gms/internal/cast/zzp;->b:Ljava/util/Map;

    .line 58
    .line 59
    if-eqz v1, :cond_3

    .line 60
    .line 61
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 62
    .line 63
    .line 64
    move-result-object v2

    .line 65
    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 66
    .line 67
    .line 68
    move-result v3

    .line 69
    if-nez v3, :cond_2

    .line 70
    .line 71
    goto :goto_2

    .line 72
    :cond_2
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object p2

    .line 76
    check-cast p2, Ljava/lang/Integer;

    .line 77
    .line 78
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object p2

    .line 82
    check-cast p2, Ljava/lang/Integer;

    .line 83
    .line 84
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 85
    .line 86
    .line 87
    move-result p2

    .line 88
    goto :goto_3

    .line 89
    :cond_3
    :goto_2
    add-int/lit16 p2, p2, 0x2710

    .line 90
    .line 91
    :goto_3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/cast/zzya;->c()V

    .line 92
    .line 93
    .line 94
    iget-object v1, v0, Lcom/google/android/gms/internal/cast/zzya;->f:Lcom/google/android/gms/internal/cast/zzyd;

    .line 95
    .line 96
    check-cast v1, Lcom/google/android/gms/internal/cast/zzqg;

    .line 97
    .line 98
    invoke-virtual {v1, p2}, Lcom/google/android/gms/internal/cast/zzqg;->u(I)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {v0}, Lcom/google/android/gms/internal/cast/zzya;->e()Lcom/google/android/gms/internal/cast/zzyd;

    .line 102
    .line 103
    .line 104
    move-result-object p2

    .line 105
    check-cast p2, Lcom/google/android/gms/internal/cast/zzqg;

    .line 106
    .line 107
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/cast/zzqq;->g(Lcom/google/android/gms/internal/cast/zzqg;)V

    .line 108
    .line 109
    .line 110
    invoke-virtual {p1}, Lcom/google/android/gms/internal/cast/zzya;->e()Lcom/google/android/gms/internal/cast/zzyd;

    .line 111
    .line 112
    .line 113
    move-result-object p1

    .line 114
    check-cast p1, Lcom/google/android/gms/internal/cast/zzqr;

    .line 115
    .line 116
    return-object p1
.end method

.method public final b(Lcom/google/android/gms/internal/cast/zzo;)Lcom/google/android/gms/internal/cast/zzqq;
    .locals 10

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/cast/zzqr;->o()Lcom/google/android/gms/internal/cast/zzqq;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-wide v1, p1, Lcom/google/android/gms/internal/cast/zzo;->d:J

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/google/android/gms/internal/cast/zzya;->c()V

    .line 8
    .line 9
    .line 10
    iget-object v3, v0, Lcom/google/android/gms/internal/cast/zzya;->f:Lcom/google/android/gms/internal/cast/zzyd;

    .line 11
    .line 12
    check-cast v3, Lcom/google/android/gms/internal/cast/zzqr;

    .line 13
    .line 14
    invoke-virtual {v3, v1, v2}, Lcom/google/android/gms/internal/cast/zzqr;->q(J)V

    .line 15
    .line 16
    .line 17
    iget v1, p1, Lcom/google/android/gms/internal/cast/zzo;->e:I

    .line 18
    .line 19
    add-int/lit8 v2, v1, 0x1

    .line 20
    .line 21
    iput v2, p1, Lcom/google/android/gms/internal/cast/zzo;->e:I

    .line 22
    .line 23
    invoke-virtual {v0}, Lcom/google/android/gms/internal/cast/zzya;->c()V

    .line 24
    .line 25
    .line 26
    iget-object v2, v0, Lcom/google/android/gms/internal/cast/zzya;->f:Lcom/google/android/gms/internal/cast/zzyd;

    .line 27
    .line 28
    check-cast v2, Lcom/google/android/gms/internal/cast/zzqr;

    .line 29
    .line 30
    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/cast/zzqr;->w(I)V

    .line 31
    .line 32
    .line 33
    iget-object v1, p1, Lcom/google/android/gms/internal/cast/zzo;->c:Ljava/lang/String;

    .line 34
    .line 35
    if-eqz v1, :cond_0

    .line 36
    .line 37
    invoke-virtual {v0}, Lcom/google/android/gms/internal/cast/zzya;->c()V

    .line 38
    .line 39
    .line 40
    iget-object v2, v0, Lcom/google/android/gms/internal/cast/zzya;->f:Lcom/google/android/gms/internal/cast/zzyd;

    .line 41
    .line 42
    check-cast v2, Lcom/google/android/gms/internal/cast/zzqr;

    .line 43
    .line 44
    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/cast/zzqr;->v(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/cast/zzus;->n()Lcom/google/android/gms/internal/cast/zzur;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    iget-object v2, p1, Lcom/google/android/gms/internal/cast/zzo;->h:Ljava/lang/String;

    .line 52
    .line 53
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 54
    .line 55
    .line 56
    move-result v2

    .line 57
    if-nez v2, :cond_1

    .line 58
    .line 59
    iget-object v2, p1, Lcom/google/android/gms/internal/cast/zzo;->h:Ljava/lang/String;

    .line 60
    .line 61
    invoke-virtual {v0}, Lcom/google/android/gms/internal/cast/zzya;->c()V

    .line 62
    .line 63
    .line 64
    iget-object v3, v0, Lcom/google/android/gms/internal/cast/zzya;->f:Lcom/google/android/gms/internal/cast/zzyd;

    .line 65
    .line 66
    check-cast v3, Lcom/google/android/gms/internal/cast/zzqr;

    .line 67
    .line 68
    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/cast/zzqr;->r(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    iget-object v2, p1, Lcom/google/android/gms/internal/cast/zzo;->h:Ljava/lang/String;

    .line 72
    .line 73
    invoke-virtual {v1}, Lcom/google/android/gms/internal/cast/zzya;->c()V

    .line 74
    .line 75
    .line 76
    iget-object v3, v1, Lcom/google/android/gms/internal/cast/zzya;->f:Lcom/google/android/gms/internal/cast/zzyd;

    .line 77
    .line 78
    check-cast v3, Lcom/google/android/gms/internal/cast/zzus;

    .line 79
    .line 80
    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/cast/zzus;->o(Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    :cond_1
    iget-object v2, p1, Lcom/google/android/gms/internal/cast/zzo;->i:Ljava/lang/String;

    .line 84
    .line 85
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 86
    .line 87
    .line 88
    move-result v2

    .line 89
    if-nez v2, :cond_2

    .line 90
    .line 91
    iget-object v2, p1, Lcom/google/android/gms/internal/cast/zzo;->i:Ljava/lang/String;

    .line 92
    .line 93
    invoke-virtual {v1}, Lcom/google/android/gms/internal/cast/zzya;->c()V

    .line 94
    .line 95
    .line 96
    iget-object v3, v1, Lcom/google/android/gms/internal/cast/zzya;->f:Lcom/google/android/gms/internal/cast/zzyd;

    .line 97
    .line 98
    check-cast v3, Lcom/google/android/gms/internal/cast/zzus;

    .line 99
    .line 100
    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/cast/zzus;->p(Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    :cond_2
    iget-object v2, p1, Lcom/google/android/gms/internal/cast/zzo;->j:Ljava/lang/String;

    .line 104
    .line 105
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 106
    .line 107
    .line 108
    move-result v2

    .line 109
    if-nez v2, :cond_3

    .line 110
    .line 111
    iget-object v2, p1, Lcom/google/android/gms/internal/cast/zzo;->j:Ljava/lang/String;

    .line 112
    .line 113
    invoke-virtual {v1}, Lcom/google/android/gms/internal/cast/zzya;->c()V

    .line 114
    .line 115
    .line 116
    iget-object v3, v1, Lcom/google/android/gms/internal/cast/zzya;->f:Lcom/google/android/gms/internal/cast/zzyd;

    .line 117
    .line 118
    check-cast v3, Lcom/google/android/gms/internal/cast/zzus;

    .line 119
    .line 120
    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/cast/zzus;->q(Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    :cond_3
    iget-object v2, p1, Lcom/google/android/gms/internal/cast/zzo;->k:Ljava/lang/String;

    .line 124
    .line 125
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 126
    .line 127
    .line 128
    move-result v2

    .line 129
    if-nez v2, :cond_4

    .line 130
    .line 131
    iget-object v2, p1, Lcom/google/android/gms/internal/cast/zzo;->k:Ljava/lang/String;

    .line 132
    .line 133
    invoke-virtual {v1}, Lcom/google/android/gms/internal/cast/zzya;->c()V

    .line 134
    .line 135
    .line 136
    iget-object v3, v1, Lcom/google/android/gms/internal/cast/zzya;->f:Lcom/google/android/gms/internal/cast/zzyd;

    .line 137
    .line 138
    check-cast v3, Lcom/google/android/gms/internal/cast/zzus;

    .line 139
    .line 140
    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/cast/zzus;->r(Ljava/lang/String;)V

    .line 141
    .line 142
    .line 143
    :cond_4
    iget-object v2, p1, Lcom/google/android/gms/internal/cast/zzo;->l:Ljava/lang/String;

    .line 144
    .line 145
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 146
    .line 147
    .line 148
    move-result v2

    .line 149
    if-nez v2, :cond_5

    .line 150
    .line 151
    iget-object v2, p1, Lcom/google/android/gms/internal/cast/zzo;->l:Ljava/lang/String;

    .line 152
    .line 153
    invoke-virtual {v1}, Lcom/google/android/gms/internal/cast/zzya;->c()V

    .line 154
    .line 155
    .line 156
    iget-object v3, v1, Lcom/google/android/gms/internal/cast/zzya;->f:Lcom/google/android/gms/internal/cast/zzyd;

    .line 157
    .line 158
    check-cast v3, Lcom/google/android/gms/internal/cast/zzus;

    .line 159
    .line 160
    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/cast/zzus;->s(Ljava/lang/String;)V

    .line 161
    .line 162
    .line 163
    :cond_5
    iget-object v2, p1, Lcom/google/android/gms/internal/cast/zzo;->m:Ljava/lang/String;

    .line 164
    .line 165
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 166
    .line 167
    .line 168
    move-result v2

    .line 169
    if-nez v2, :cond_6

    .line 170
    .line 171
    iget-object v2, p1, Lcom/google/android/gms/internal/cast/zzo;->m:Ljava/lang/String;

    .line 172
    .line 173
    invoke-virtual {v1}, Lcom/google/android/gms/internal/cast/zzya;->c()V

    .line 174
    .line 175
    .line 176
    iget-object v3, v1, Lcom/google/android/gms/internal/cast/zzya;->f:Lcom/google/android/gms/internal/cast/zzyd;

    .line 177
    .line 178
    check-cast v3, Lcom/google/android/gms/internal/cast/zzus;

    .line 179
    .line 180
    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/cast/zzus;->t(Ljava/lang/String;)V

    .line 181
    .line 182
    .line 183
    :cond_6
    iget v2, p1, Lcom/google/android/gms/internal/cast/zzo;->n:I

    .line 184
    .line 185
    const/4 v3, 0x2

    .line 186
    const/4 v4, 0x1

    .line 187
    if-eq v2, v4, :cond_9

    .line 188
    .line 189
    const/4 v5, 0x3

    .line 190
    if-eq v2, v3, :cond_a

    .line 191
    .line 192
    const/4 v6, 0x4

    .line 193
    if-eq v2, v5, :cond_8

    .line 194
    .line 195
    const/4 v5, 0x5

    .line 196
    if-eq v2, v6, :cond_a

    .line 197
    .line 198
    if-eq v2, v5, :cond_7

    .line 199
    .line 200
    move v5, v4

    .line 201
    goto :goto_0

    .line 202
    :cond_7
    const/4 v5, 0x6

    .line 203
    goto :goto_0

    .line 204
    :cond_8
    move v5, v6

    .line 205
    goto :goto_0

    .line 206
    :cond_9
    move v5, v3

    .line 207
    :cond_a
    :goto_0
    invoke-virtual {v1}, Lcom/google/android/gms/internal/cast/zzya;->c()V

    .line 208
    .line 209
    .line 210
    iget-object v2, v1, Lcom/google/android/gms/internal/cast/zzya;->f:Lcom/google/android/gms/internal/cast/zzyd;

    .line 211
    .line 212
    check-cast v2, Lcom/google/android/gms/internal/cast/zzus;

    .line 213
    .line 214
    invoke-virtual {v2, v5}, Lcom/google/android/gms/internal/cast/zzus;->u(I)V

    .line 215
    .line 216
    .line 217
    invoke-virtual {v1}, Lcom/google/android/gms/internal/cast/zzya;->e()Lcom/google/android/gms/internal/cast/zzyd;

    .line 218
    .line 219
    .line 220
    move-result-object v1

    .line 221
    check-cast v1, Lcom/google/android/gms/internal/cast/zzus;

    .line 222
    .line 223
    invoke-virtual {v0}, Lcom/google/android/gms/internal/cast/zzya;->c()V

    .line 224
    .line 225
    .line 226
    iget-object v2, v0, Lcom/google/android/gms/internal/cast/zzya;->f:Lcom/google/android/gms/internal/cast/zzyd;

    .line 227
    .line 228
    check-cast v2, Lcom/google/android/gms/internal/cast/zzqr;

    .line 229
    .line 230
    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/cast/zzqr;->B(Lcom/google/android/gms/internal/cast/zzus;)V

    .line 231
    .line 232
    .line 233
    invoke-static {}, Lcom/google/android/gms/internal/cast/zzqc;->n()Lcom/google/android/gms/internal/cast/zzqb;

    .line 234
    .line 235
    .line 236
    move-result-object v1

    .line 237
    invoke-virtual {v1}, Lcom/google/android/gms/internal/cast/zzya;->c()V

    .line 238
    .line 239
    .line 240
    iget-object v2, v1, Lcom/google/android/gms/internal/cast/zzya;->f:Lcom/google/android/gms/internal/cast/zzyd;

    .line 241
    .line 242
    check-cast v2, Lcom/google/android/gms/internal/cast/zzqc;

    .line 243
    .line 244
    sget-object v5, Lcom/google/android/gms/internal/cast/zzp;->e:Ljava/lang/String;

    .line 245
    .line 246
    invoke-virtual {v2, v5}, Lcom/google/android/gms/internal/cast/zzqc;->p(Ljava/lang/String;)V

    .line 247
    .line 248
    .line 249
    invoke-virtual {v1}, Lcom/google/android/gms/internal/cast/zzya;->c()V

    .line 250
    .line 251
    .line 252
    iget-object v2, v1, Lcom/google/android/gms/internal/cast/zzya;->f:Lcom/google/android/gms/internal/cast/zzyd;

    .line 253
    .line 254
    check-cast v2, Lcom/google/android/gms/internal/cast/zzqc;

    .line 255
    .line 256
    iget-object v5, p0, Lcom/google/android/gms/internal/cast/zzp;->a:Ljava/lang/String;

    .line 257
    .line 258
    invoke-virtual {v2, v5}, Lcom/google/android/gms/internal/cast/zzqc;->o(Ljava/lang/String;)V

    .line 259
    .line 260
    .line 261
    invoke-virtual {v1}, Lcom/google/android/gms/internal/cast/zzya;->e()Lcom/google/android/gms/internal/cast/zzyd;

    .line 262
    .line 263
    .line 264
    move-result-object v1

    .line 265
    check-cast v1, Lcom/google/android/gms/internal/cast/zzqc;

    .line 266
    .line 267
    invoke-virtual {v0}, Lcom/google/android/gms/internal/cast/zzya;->c()V

    .line 268
    .line 269
    .line 270
    iget-object v2, v0, Lcom/google/android/gms/internal/cast/zzya;->f:Lcom/google/android/gms/internal/cast/zzyd;

    .line 271
    .line 272
    check-cast v2, Lcom/google/android/gms/internal/cast/zzqr;

    .line 273
    .line 274
    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/cast/zzqr;->z(Lcom/google/android/gms/internal/cast/zzqc;)V

    .line 275
    .line 276
    .line 277
    invoke-static {}, Lcom/google/android/gms/internal/cast/zzqg;->n()Lcom/google/android/gms/internal/cast/zzqf;

    .line 278
    .line 279
    .line 280
    move-result-object v1

    .line 281
    iget-object v2, p1, Lcom/google/android/gms/internal/cast/zzo;->b:Ljava/lang/String;

    .line 282
    .line 283
    if-eqz v2, :cond_b

    .line 284
    .line 285
    invoke-static {}, Lcom/google/android/gms/internal/cast/zzrp;->n()Lcom/google/android/gms/internal/cast/zzro;

    .line 286
    .line 287
    .line 288
    move-result-object v2

    .line 289
    iget-object v5, p1, Lcom/google/android/gms/internal/cast/zzo;->b:Ljava/lang/String;

    .line 290
    .line 291
    invoke-virtual {v2}, Lcom/google/android/gms/internal/cast/zzya;->c()V

    .line 292
    .line 293
    .line 294
    iget-object v6, v2, Lcom/google/android/gms/internal/cast/zzya;->f:Lcom/google/android/gms/internal/cast/zzyd;

    .line 295
    .line 296
    check-cast v6, Lcom/google/android/gms/internal/cast/zzrp;

    .line 297
    .line 298
    invoke-virtual {v6, v5}, Lcom/google/android/gms/internal/cast/zzrp;->o(Ljava/lang/String;)V

    .line 299
    .line 300
    .line 301
    invoke-virtual {v2}, Lcom/google/android/gms/internal/cast/zzya;->e()Lcom/google/android/gms/internal/cast/zzyd;

    .line 302
    .line 303
    .line 304
    move-result-object v2

    .line 305
    check-cast v2, Lcom/google/android/gms/internal/cast/zzrp;

    .line 306
    .line 307
    invoke-virtual {v1}, Lcom/google/android/gms/internal/cast/zzya;->c()V

    .line 308
    .line 309
    .line 310
    iget-object v5, v1, Lcom/google/android/gms/internal/cast/zzya;->f:Lcom/google/android/gms/internal/cast/zzyd;

    .line 311
    .line 312
    check-cast v5, Lcom/google/android/gms/internal/cast/zzqg;

    .line 313
    .line 314
    invoke-virtual {v5, v2}, Lcom/google/android/gms/internal/cast/zzqg;->q(Lcom/google/android/gms/internal/cast/zzrp;)V

    .line 315
    .line 316
    .line 317
    :cond_b
    invoke-virtual {v1}, Lcom/google/android/gms/internal/cast/zzya;->c()V

    .line 318
    .line 319
    .line 320
    iget-object v2, v1, Lcom/google/android/gms/internal/cast/zzya;->f:Lcom/google/android/gms/internal/cast/zzyd;

    .line 321
    .line 322
    check-cast v2, Lcom/google/android/gms/internal/cast/zzqg;

    .line 323
    .line 324
    const/4 v5, 0x0

    .line 325
    invoke-virtual {v2, v5}, Lcom/google/android/gms/internal/cast/zzqg;->r(Z)V

    .line 326
    .line 327
    .line 328
    iget-object v2, p1, Lcom/google/android/gms/internal/cast/zzo;->f:Ljava/lang/String;

    .line 329
    .line 330
    if-eqz v2, :cond_c

    .line 331
    .line 332
    :try_start_0
    const-string v6, "-"

    .line 333
    .line 334
    const-string v7, ""

    .line 335
    .line 336
    invoke-virtual {v2, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 337
    .line 338
    .line 339
    move-result-object v6

    .line 340
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    .line 341
    .line 342
    .line 343
    move-result v7

    .line 344
    const/16 v8, 0x10

    .line 345
    .line 346
    invoke-static {v8, v7}, Ljava/lang/Math;->min(II)I

    .line 347
    .line 348
    .line 349
    move-result v7

    .line 350
    invoke-virtual {v6, v5, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 351
    .line 352
    .line 353
    move-result-object v6

    .line 354
    new-instance v7, Ljava/math/BigInteger;

    .line 355
    .line 356
    invoke-direct {v7, v6, v8}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    .line 357
    .line 358
    .line 359
    invoke-virtual {v7}, Ljava/math/BigInteger;->longValue()J

    .line 360
    .line 361
    .line 362
    move-result-wide v6
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 363
    goto :goto_1

    .line 364
    :catch_0
    move-exception v6

    .line 365
    new-array v7, v4, [Ljava/lang/Object;

    .line 366
    .line 367
    aput-object v2, v7, v5

    .line 368
    .line 369
    sget-object v2, Lcom/google/android/gms/internal/cast/zzp;->d:Lcom/google/android/gms/cast/internal/Logger;

    .line 370
    .line 371
    iget-object v8, v2, Lcom/google/android/gms/cast/internal/Logger;->a:Ljava/lang/String;

    .line 372
    .line 373
    const-string v9, "receiverSessionId %s is not valid for hash"

    .line 374
    .line 375
    invoke-virtual {v2, v9, v7}, Lcom/google/android/gms/cast/internal/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 376
    .line 377
    .line 378
    move-result-object v2

    .line 379
    invoke-static {v8, v2, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 380
    .line 381
    .line 382
    const-wide/16 v6, 0x0

    .line 383
    .line 384
    :goto_1
    invoke-virtual {v1}, Lcom/google/android/gms/internal/cast/zzya;->c()V

    .line 385
    .line 386
    .line 387
    iget-object v2, v1, Lcom/google/android/gms/internal/cast/zzya;->f:Lcom/google/android/gms/internal/cast/zzyd;

    .line 388
    .line 389
    check-cast v2, Lcom/google/android/gms/internal/cast/zzqg;

    .line 390
    .line 391
    invoke-virtual {v2, v6, v7}, Lcom/google/android/gms/internal/cast/zzqg;->s(J)V

    .line 392
    .line 393
    .line 394
    :cond_c
    iget v2, p1, Lcom/google/android/gms/internal/cast/zzo;->g:I

    .line 395
    .line 396
    invoke-virtual {v1}, Lcom/google/android/gms/internal/cast/zzya;->c()V

    .line 397
    .line 398
    .line 399
    iget-object v6, v1, Lcom/google/android/gms/internal/cast/zzya;->f:Lcom/google/android/gms/internal/cast/zzyd;

    .line 400
    .line 401
    check-cast v6, Lcom/google/android/gms/internal/cast/zzqg;

    .line 402
    .line 403
    invoke-virtual {v6, v2}, Lcom/google/android/gms/internal/cast/zzqg;->v(I)V

    .line 404
    .line 405
    .line 406
    iget-object v2, p1, Lcom/google/android/gms/internal/cast/zzo;->a:Lcom/google/android/gms/internal/cast/zzax;

    .line 407
    .line 408
    iget v2, v2, Lcom/google/android/gms/internal/cast/zzax;->f:I

    .line 409
    .line 410
    if-ne v2, v3, :cond_d

    .line 411
    .line 412
    goto :goto_2

    .line 413
    :cond_d
    move v4, v5

    .line 414
    :goto_2
    invoke-virtual {v1}, Lcom/google/android/gms/internal/cast/zzya;->c()V

    .line 415
    .line 416
    .line 417
    iget-object v2, v1, Lcom/google/android/gms/internal/cast/zzya;->f:Lcom/google/android/gms/internal/cast/zzyd;

    .line 418
    .line 419
    check-cast v2, Lcom/google/android/gms/internal/cast/zzqg;

    .line 420
    .line 421
    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/cast/zzqg;->w(Z)V

    .line 422
    .line 423
    .line 424
    iget-boolean p1, p1, Lcom/google/android/gms/internal/cast/zzo;->o:Z

    .line 425
    .line 426
    invoke-virtual {v1}, Lcom/google/android/gms/internal/cast/zzya;->c()V

    .line 427
    .line 428
    .line 429
    iget-object v2, v1, Lcom/google/android/gms/internal/cast/zzya;->f:Lcom/google/android/gms/internal/cast/zzyd;

    .line 430
    .line 431
    check-cast v2, Lcom/google/android/gms/internal/cast/zzqg;

    .line 432
    .line 433
    invoke-virtual {v2, p1}, Lcom/google/android/gms/internal/cast/zzqg;->z(Z)V

    .line 434
    .line 435
    .line 436
    invoke-virtual {v0}, Lcom/google/android/gms/internal/cast/zzya;->c()V

    .line 437
    .line 438
    .line 439
    iget-object p1, v0, Lcom/google/android/gms/internal/cast/zzya;->f:Lcom/google/android/gms/internal/cast/zzyd;

    .line 440
    .line 441
    check-cast p1, Lcom/google/android/gms/internal/cast/zzqr;

    .line 442
    .line 443
    invoke-virtual {v1}, Lcom/google/android/gms/internal/cast/zzya;->e()Lcom/google/android/gms/internal/cast/zzyd;

    .line 444
    .line 445
    .line 446
    move-result-object v1

    .line 447
    check-cast v1, Lcom/google/android/gms/internal/cast/zzqg;

    .line 448
    .line 449
    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/cast/zzqr;->x(Lcom/google/android/gms/internal/cast/zzqg;)V

    .line 450
    .line 451
    .line 452
    return-object v0
.end method
