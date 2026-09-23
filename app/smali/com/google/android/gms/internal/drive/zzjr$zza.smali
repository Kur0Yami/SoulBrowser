.class final Lcom/google/android/gms/internal/drive/zzjr$zza;
.super Lcom/google/android/gms/internal/drive/zzjr;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/drive/zzjr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "zza"
.end annotation


# instance fields
.field public final d:[B

.field public final e:I

.field public f:I


# direct methods
.method public constructor <init>([BI)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    array-length v0, p1

    .line 5
    sub-int/2addr v0, p2

    .line 6
    or-int/2addr v0, p2

    .line 7
    const/4 v1, 0x0

    .line 8
    if-ltz v0, :cond_0

    .line 9
    .line 10
    iput-object p1, p0, Lcom/google/android/gms/internal/drive/zzjr$zza;->d:[B

    .line 11
    .line 12
    iput v1, p0, Lcom/google/android/gms/internal/drive/zzjr$zza;->f:I

    .line 13
    .line 14
    iput p2, p0, Lcom/google/android/gms/internal/drive/zzjr$zza;->e:I

    .line 15
    .line 16
    return-void

    .line 17
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 18
    .line 19
    array-length p1, p1

    .line 20
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 29
    .line 30
    .line 31
    move-result-object p2

    .line 32
    const/4 v3, 0x3

    .line 33
    new-array v3, v3, [Ljava/lang/Object;

    .line 34
    .line 35
    aput-object p1, v3, v1

    .line 36
    .line 37
    const/4 p1, 0x1

    .line 38
    aput-object v2, v3, p1

    .line 39
    .line 40
    const/4 p1, 0x2

    .line 41
    aput-object p2, v3, p1

    .line 42
    .line 43
    const-string p1, "Array range is invalid. Buffer.length=%d, offset=%d, length=%d"

    .line 44
    .line 45
    invoke-static {p1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    throw v0
.end method


# virtual methods
.method public final B(I)V
    .locals 2

    .line 1
    if-ltz p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/drive/zzjr$zza;->C(I)V

    .line 4
    .line 5
    .line 6
    return-void

    .line 7
    :cond_0
    int-to-long v0, p1

    .line 8
    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/drive/zzjr$zza;->x(J)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final C(I)V
    .locals 7

    .line 1
    sget-boolean v0, Lcom/google/android/gms/internal/drive/zzjr;->c:Z

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/android/gms/internal/drive/zzjr$zza;->d:[B

    .line 4
    .line 5
    if-eqz v0, :cond_4

    .line 6
    .line 7
    invoke-static {}, Lcom/google/android/gms/internal/drive/zzix;->a()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_4

    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/google/android/gms/internal/drive/zzjr$zza;->r()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    const/4 v2, 0x5

    .line 18
    if-lt v0, v2, :cond_4

    .line 19
    .line 20
    and-int/lit8 v0, p1, -0x80

    .line 21
    .line 22
    if-nez v0, :cond_0

    .line 23
    .line 24
    iget v0, p0, Lcom/google/android/gms/internal/drive/zzjr$zza;->f:I

    .line 25
    .line 26
    add-int/lit8 v2, v0, 0x1

    .line 27
    .line 28
    iput v2, p0, Lcom/google/android/gms/internal/drive/zzjr$zza;->f:I

    .line 29
    .line 30
    int-to-long v2, v0

    .line 31
    int-to-byte p1, p1

    .line 32
    invoke-static {v1, v2, v3, p1}, Lcom/google/android/gms/internal/drive/zznd;->e([BJB)V

    .line 33
    .line 34
    .line 35
    return-void

    .line 36
    :cond_0
    iget v0, p0, Lcom/google/android/gms/internal/drive/zzjr$zza;->f:I

    .line 37
    .line 38
    add-int/lit8 v2, v0, 0x1

    .line 39
    .line 40
    iput v2, p0, Lcom/google/android/gms/internal/drive/zzjr$zza;->f:I

    .line 41
    .line 42
    int-to-long v2, v0

    .line 43
    or-int/lit16 v0, p1, 0x80

    .line 44
    .line 45
    int-to-byte v0, v0

    .line 46
    invoke-static {v1, v2, v3, v0}, Lcom/google/android/gms/internal/drive/zznd;->e([BJB)V

    .line 47
    .line 48
    .line 49
    ushr-int/lit8 v0, p1, 0x7

    .line 50
    .line 51
    and-int/lit8 v2, v0, -0x80

    .line 52
    .line 53
    if-nez v2, :cond_1

    .line 54
    .line 55
    iget p1, p0, Lcom/google/android/gms/internal/drive/zzjr$zza;->f:I

    .line 56
    .line 57
    add-int/lit8 v2, p1, 0x1

    .line 58
    .line 59
    iput v2, p0, Lcom/google/android/gms/internal/drive/zzjr$zza;->f:I

    .line 60
    .line 61
    int-to-long v2, p1

    .line 62
    int-to-byte p1, v0

    .line 63
    invoke-static {v1, v2, v3, p1}, Lcom/google/android/gms/internal/drive/zznd;->e([BJB)V

    .line 64
    .line 65
    .line 66
    return-void

    .line 67
    :cond_1
    iget v2, p0, Lcom/google/android/gms/internal/drive/zzjr$zza;->f:I

    .line 68
    .line 69
    add-int/lit8 v3, v2, 0x1

    .line 70
    .line 71
    iput v3, p0, Lcom/google/android/gms/internal/drive/zzjr$zza;->f:I

    .line 72
    .line 73
    int-to-long v2, v2

    .line 74
    or-int/lit16 v0, v0, 0x80

    .line 75
    .line 76
    int-to-byte v0, v0

    .line 77
    invoke-static {v1, v2, v3, v0}, Lcom/google/android/gms/internal/drive/zznd;->e([BJB)V

    .line 78
    .line 79
    .line 80
    ushr-int/lit8 v0, p1, 0xe

    .line 81
    .line 82
    and-int/lit8 v2, v0, -0x80

    .line 83
    .line 84
    if-nez v2, :cond_2

    .line 85
    .line 86
    iget p1, p0, Lcom/google/android/gms/internal/drive/zzjr$zza;->f:I

    .line 87
    .line 88
    add-int/lit8 v2, p1, 0x1

    .line 89
    .line 90
    iput v2, p0, Lcom/google/android/gms/internal/drive/zzjr$zza;->f:I

    .line 91
    .line 92
    int-to-long v2, p1

    .line 93
    int-to-byte p1, v0

    .line 94
    invoke-static {v1, v2, v3, p1}, Lcom/google/android/gms/internal/drive/zznd;->e([BJB)V

    .line 95
    .line 96
    .line 97
    return-void

    .line 98
    :cond_2
    iget v2, p0, Lcom/google/android/gms/internal/drive/zzjr$zza;->f:I

    .line 99
    .line 100
    add-int/lit8 v3, v2, 0x1

    .line 101
    .line 102
    iput v3, p0, Lcom/google/android/gms/internal/drive/zzjr$zza;->f:I

    .line 103
    .line 104
    int-to-long v2, v2

    .line 105
    or-int/lit16 v0, v0, 0x80

    .line 106
    .line 107
    int-to-byte v0, v0

    .line 108
    invoke-static {v1, v2, v3, v0}, Lcom/google/android/gms/internal/drive/zznd;->e([BJB)V

    .line 109
    .line 110
    .line 111
    ushr-int/lit8 v0, p1, 0x15

    .line 112
    .line 113
    and-int/lit8 v2, v0, -0x80

    .line 114
    .line 115
    if-nez v2, :cond_3

    .line 116
    .line 117
    iget p1, p0, Lcom/google/android/gms/internal/drive/zzjr$zza;->f:I

    .line 118
    .line 119
    add-int/lit8 v2, p1, 0x1

    .line 120
    .line 121
    iput v2, p0, Lcom/google/android/gms/internal/drive/zzjr$zza;->f:I

    .line 122
    .line 123
    int-to-long v2, p1

    .line 124
    int-to-byte p1, v0

    .line 125
    invoke-static {v1, v2, v3, p1}, Lcom/google/android/gms/internal/drive/zznd;->e([BJB)V

    .line 126
    .line 127
    .line 128
    return-void

    .line 129
    :cond_3
    iget v2, p0, Lcom/google/android/gms/internal/drive/zzjr$zza;->f:I

    .line 130
    .line 131
    add-int/lit8 v3, v2, 0x1

    .line 132
    .line 133
    iput v3, p0, Lcom/google/android/gms/internal/drive/zzjr$zza;->f:I

    .line 134
    .line 135
    int-to-long v2, v2

    .line 136
    or-int/lit16 v0, v0, 0x80

    .line 137
    .line 138
    int-to-byte v0, v0

    .line 139
    invoke-static {v1, v2, v3, v0}, Lcom/google/android/gms/internal/drive/zznd;->e([BJB)V

    .line 140
    .line 141
    .line 142
    ushr-int/lit8 p1, p1, 0x1c

    .line 143
    .line 144
    iget v0, p0, Lcom/google/android/gms/internal/drive/zzjr$zza;->f:I

    .line 145
    .line 146
    add-int/lit8 v2, v0, 0x1

    .line 147
    .line 148
    iput v2, p0, Lcom/google/android/gms/internal/drive/zzjr$zza;->f:I

    .line 149
    .line 150
    int-to-long v2, v0

    .line 151
    int-to-byte p1, p1

    .line 152
    invoke-static {v1, v2, v3, p1}, Lcom/google/android/gms/internal/drive/zznd;->e([BJB)V

    .line 153
    .line 154
    .line 155
    return-void

    .line 156
    :cond_4
    :goto_0
    and-int/lit8 v0, p1, -0x80

    .line 157
    .line 158
    if-nez v0, :cond_5

    .line 159
    .line 160
    :try_start_0
    iget v0, p0, Lcom/google/android/gms/internal/drive/zzjr$zza;->f:I

    .line 161
    .line 162
    add-int/lit8 v2, v0, 0x1

    .line 163
    .line 164
    iput v2, p0, Lcom/google/android/gms/internal/drive/zzjr$zza;->f:I

    .line 165
    .line 166
    int-to-byte p1, p1

    .line 167
    aput-byte p1, v1, v0

    .line 168
    .line 169
    return-void

    .line 170
    :catch_0
    move-exception p1

    .line 171
    goto :goto_1

    .line 172
    :cond_5
    iget v0, p0, Lcom/google/android/gms/internal/drive/zzjr$zza;->f:I

    .line 173
    .line 174
    add-int/lit8 v2, v0, 0x1

    .line 175
    .line 176
    iput v2, p0, Lcom/google/android/gms/internal/drive/zzjr$zza;->f:I

    .line 177
    .line 178
    and-int/lit8 v2, p1, 0x7f

    .line 179
    .line 180
    or-int/lit16 v2, v2, 0x80

    .line 181
    .line 182
    int-to-byte v2, v2

    .line 183
    aput-byte v2, v1, v0
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 184
    .line 185
    ushr-int/lit8 p1, p1, 0x7

    .line 186
    .line 187
    goto :goto_0

    .line 188
    :goto_1
    new-instance v0, Lcom/google/android/gms/internal/drive/zzjr$zzb;

    .line 189
    .line 190
    iget v1, p0, Lcom/google/android/gms/internal/drive/zzjr$zza;->f:I

    .line 191
    .line 192
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 193
    .line 194
    .line 195
    move-result-object v1

    .line 196
    iget v2, p0, Lcom/google/android/gms/internal/drive/zzjr$zza;->e:I

    .line 197
    .line 198
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 199
    .line 200
    .line 201
    move-result-object v2

    .line 202
    const/4 v3, 0x1

    .line 203
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 204
    .line 205
    .line 206
    move-result-object v4

    .line 207
    const/4 v5, 0x3

    .line 208
    new-array v5, v5, [Ljava/lang/Object;

    .line 209
    .line 210
    const/4 v6, 0x0

    .line 211
    aput-object v1, v5, v6

    .line 212
    .line 213
    aput-object v2, v5, v3

    .line 214
    .line 215
    const/4 v1, 0x2

    .line 216
    aput-object v4, v5, v1

    .line 217
    .line 218
    const-string v1, "Pos: %d, limit: %d, len: %d"

    .line 219
    .line 220
    invoke-static {v1, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 221
    .line 222
    .line 223
    move-result-object v1

    .line 224
    invoke-direct {v0, v1, p1}, Lcom/google/android/gms/internal/drive/zzjr$zzb;-><init>(Ljava/lang/String;Ljava/lang/IndexOutOfBoundsException;)V

    .line 225
    .line 226
    .line 227
    throw v0
.end method

.method public final D([BII)V
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/drive/zzjr$zza;->d:[B

    .line 2
    .line 3
    iget v1, p0, Lcom/google/android/gms/internal/drive/zzjr$zza;->f:I

    .line 4
    .line 5
    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 6
    .line 7
    .line 8
    iget p1, p0, Lcom/google/android/gms/internal/drive/zzjr$zza;->f:I

    .line 9
    .line 10
    add-int/2addr p1, p3

    .line 11
    iput p1, p0, Lcom/google/android/gms/internal/drive/zzjr$zza;->f:I
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 12
    .line 13
    return-void

    .line 14
    :catch_0
    move-exception p1

    .line 15
    new-instance p2, Lcom/google/android/gms/internal/drive/zzjr$zzb;

    .line 16
    .line 17
    iget v0, p0, Lcom/google/android/gms/internal/drive/zzjr$zza;->f:I

    .line 18
    .line 19
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    iget v1, p0, Lcom/google/android/gms/internal/drive/zzjr$zza;->e:I

    .line 24
    .line 25
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 30
    .line 31
    .line 32
    move-result-object p3

    .line 33
    const/4 v2, 0x3

    .line 34
    new-array v2, v2, [Ljava/lang/Object;

    .line 35
    .line 36
    const/4 v3, 0x0

    .line 37
    aput-object v0, v2, v3

    .line 38
    .line 39
    const/4 v0, 0x1

    .line 40
    aput-object v1, v2, v0

    .line 41
    .line 42
    const/4 v0, 0x2

    .line 43
    aput-object p3, v2, v0

    .line 44
    .line 45
    const-string p3, "Pos: %d, limit: %d, len: %d"

    .line 46
    .line 47
    invoke-static {p3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p3

    .line 51
    invoke-direct {p2, p3, p1}, Lcom/google/android/gms/internal/drive/zzjr$zzb;-><init>(Ljava/lang/String;Ljava/lang/IndexOutOfBoundsException;)V

    .line 52
    .line 53
    .line 54
    throw p2
.end method

.method public final a(IJ)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/drive/zzjr$zza;->j(II)V

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, p2, p3}, Lcom/google/android/gms/internal/drive/zzjr$zza;->x(J)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final b(ILcom/google/android/gms/internal/drive/zzjc;)V
    .locals 1

    .line 1
    const/4 v0, 0x2

    .line 2
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/drive/zzjr$zza;->j(II)V

    .line 3
    .line 4
    .line 5
    invoke-virtual {p2}, Lcom/google/android/gms/internal/drive/zzjc;->size()I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/drive/zzjr$zza;->C(I)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p2, p0}, Lcom/google/android/gms/internal/drive/zzjc;->g(Lcom/google/android/gms/internal/drive/zzjb;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final c(ILcom/google/android/gms/internal/drive/zzlq;)V
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x3

    .line 3
    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/drive/zzjr$zza;->j(II)V

    .line 4
    .line 5
    .line 6
    const/4 v2, 0x2

    .line 7
    invoke-virtual {p0, v2, p1}, Lcom/google/android/gms/internal/drive/zzjr$zza;->s(II)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, v1, v2}, Lcom/google/android/gms/internal/drive/zzjr$zza;->j(II)V

    .line 11
    .line 12
    .line 13
    invoke-interface {p2}, Lcom/google/android/gms/internal/drive/zzlq;->d()I

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/drive/zzjr$zza;->C(I)V

    .line 18
    .line 19
    .line 20
    invoke-interface {p2, p0}, Lcom/google/android/gms/internal/drive/zzlq;->c(Lcom/google/android/gms/internal/drive/zzjr;)V

    .line 21
    .line 22
    .line 23
    const/4 p1, 0x4

    .line 24
    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/drive/zzjr$zza;->j(II)V

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method public final d(ILcom/google/android/gms/internal/drive/zzlq;Lcom/google/android/gms/internal/drive/zzmf;)V
    .locals 2

    .line 1
    const/4 v0, 0x2

    .line 2
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/drive/zzjr$zza;->j(II)V

    .line 3
    .line 4
    .line 5
    move-object p1, p2

    .line 6
    check-cast p1, Lcom/google/android/gms/internal/drive/zzit;

    .line 7
    .line 8
    invoke-virtual {p1}, Lcom/google/android/gms/internal/drive/zzit;->g()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    const/4 v1, -0x1

    .line 13
    if-ne v0, v1, :cond_0

    .line 14
    .line 15
    invoke-interface {p3, p1}, Lcom/google/android/gms/internal/drive/zzmf;->c(Lcom/google/android/gms/internal/drive/zzit;)I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/drive/zzit;->h(I)V

    .line 20
    .line 21
    .line 22
    :cond_0
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/drive/zzjr$zza;->C(I)V

    .line 23
    .line 24
    .line 25
    iget-object p1, p0, Lcom/google/android/gms/internal/drive/zzjr;->a:Lcom/google/android/gms/internal/drive/zzjt;

    .line 26
    .line 27
    invoke-interface {p3, p2, p1}, Lcom/google/android/gms/internal/drive/zzmf;->b(Ljava/lang/Object;Lcom/google/android/gms/internal/drive/zzns;)V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public final e(ILjava/lang/String;)V
    .locals 7

    .line 1
    const/4 v0, 0x2

    .line 2
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/drive/zzjr$zza;->j(II)V

    .line 3
    .line 4
    .line 5
    iget p1, p0, Lcom/google/android/gms/internal/drive/zzjr$zza;->f:I

    .line 6
    .line 7
    :try_start_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    mul-int/lit8 v0, v0, 0x3

    .line 12
    .line 13
    invoke-static {v0}, Lcom/google/android/gms/internal/drive/zzjr;->i(I)I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    invoke-static {v1}, Lcom/google/android/gms/internal/drive/zzjr;->i(I)I

    .line 22
    .line 23
    .line 24
    move-result v1
    :try_end_0
    .catch Lcom/google/android/gms/internal/drive/zznj; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 25
    iget-object v2, p0, Lcom/google/android/gms/internal/drive/zzjr$zza;->d:[B

    .line 26
    .line 27
    if-ne v1, v0, :cond_0

    .line 28
    .line 29
    add-int v0, p1, v1

    .line 30
    .line 31
    :try_start_1
    iput v0, p0, Lcom/google/android/gms/internal/drive/zzjr$zza;->f:I

    .line 32
    .line 33
    invoke-virtual {p0}, Lcom/google/android/gms/internal/drive/zzjr$zza;->r()I

    .line 34
    .line 35
    .line 36
    move-result v3

    .line 37
    sget-object v4, Lcom/google/android/gms/internal/drive/zznf;->a:Lcom/google/android/gms/internal/drive/zznh;

    .line 38
    .line 39
    invoke-virtual {v4, p2, v2, v0, v3}, Lcom/google/android/gms/internal/drive/zznh;->a(Ljava/lang/String;[BII)I

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    iput p1, p0, Lcom/google/android/gms/internal/drive/zzjr$zza;->f:I

    .line 44
    .line 45
    sub-int v2, v0, p1

    .line 46
    .line 47
    sub-int/2addr v2, v1

    .line 48
    invoke-virtual {p0, v2}, Lcom/google/android/gms/internal/drive/zzjr$zza;->C(I)V

    .line 49
    .line 50
    .line 51
    iput v0, p0, Lcom/google/android/gms/internal/drive/zzjr$zza;->f:I

    .line 52
    .line 53
    goto :goto_2

    .line 54
    :catch_0
    move-exception v0

    .line 55
    move-object p1, v0

    .line 56
    goto :goto_0

    .line 57
    :catch_1
    move-exception v0

    .line 58
    move-object v6, v0

    .line 59
    goto :goto_1

    .line 60
    :cond_0
    invoke-static {p2}, Lcom/google/android/gms/internal/drive/zznf;->a(Ljava/lang/String;)I

    .line 61
    .line 62
    .line 63
    move-result v0

    .line 64
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/drive/zzjr$zza;->C(I)V

    .line 65
    .line 66
    .line 67
    iget v0, p0, Lcom/google/android/gms/internal/drive/zzjr$zza;->f:I

    .line 68
    .line 69
    invoke-virtual {p0}, Lcom/google/android/gms/internal/drive/zzjr$zza;->r()I

    .line 70
    .line 71
    .line 72
    move-result v1

    .line 73
    sget-object v3, Lcom/google/android/gms/internal/drive/zznf;->a:Lcom/google/android/gms/internal/drive/zznh;

    .line 74
    .line 75
    invoke-virtual {v3, p2, v2, v0, v1}, Lcom/google/android/gms/internal/drive/zznh;->a(Ljava/lang/String;[BII)I

    .line 76
    .line 77
    .line 78
    move-result v0

    .line 79
    iput v0, p0, Lcom/google/android/gms/internal/drive/zzjr$zza;->f:I
    :try_end_1
    .catch Lcom/google/android/gms/internal/drive/zznj; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    .line 80
    .line 81
    goto :goto_2

    .line 82
    :goto_0
    new-instance p2, Lcom/google/android/gms/internal/drive/zzjr$zzb;

    .line 83
    .line 84
    invoke-direct {p2, p1}, Lcom/google/android/gms/internal/drive/zzjr$zzb;-><init>(Ljava/lang/IndexOutOfBoundsException;)V

    .line 85
    .line 86
    .line 87
    throw p2

    .line 88
    :goto_1
    iput p1, p0, Lcom/google/android/gms/internal/drive/zzjr$zza;->f:I

    .line 89
    .line 90
    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    .line 91
    .line 92
    const-string v4, "inefficientWriteStringNoTag"

    .line 93
    .line 94
    const-string v5, "Converting ill-formed UTF-16. Your Protocol Buffer will not round trip correctly!"

    .line 95
    .line 96
    sget-object v1, Lcom/google/android/gms/internal/drive/zzjr;->b:Ljava/util/logging/Logger;

    .line 97
    .line 98
    const-string v3, "com.google.protobuf.CodedOutputStream"

    .line 99
    .line 100
    invoke-virtual/range {v1 .. v6}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 101
    .line 102
    .line 103
    sget-object p1, Lcom/google/android/gms/internal/drive/zzkm;->a:Ljava/nio/charset/Charset;

    .line 104
    .line 105
    invoke-virtual {p2, p1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 106
    .line 107
    .line 108
    move-result-object p1

    .line 109
    :try_start_2
    array-length p2, p1

    .line 110
    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/drive/zzjr$zza;->C(I)V

    .line 111
    .line 112
    .line 113
    array-length p2, p1

    .line 114
    const/4 v0, 0x0

    .line 115
    invoke-virtual {p0, p1, v0, p2}, Lcom/google/android/gms/internal/drive/zzjr$zza;->D([BII)V
    :try_end_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Lcom/google/android/gms/internal/drive/zzjr$zzb; {:try_start_2 .. :try_end_2} :catch_2

    .line 116
    .line 117
    .line 118
    :goto_2
    return-void

    .line 119
    :catch_2
    move-exception v0

    .line 120
    move-object p1, v0

    .line 121
    goto :goto_3

    .line 122
    :catch_3
    move-exception v0

    .line 123
    move-object p1, v0

    .line 124
    goto :goto_4

    .line 125
    :goto_3
    throw p1

    .line 126
    :goto_4
    new-instance p2, Lcom/google/android/gms/internal/drive/zzjr$zzb;

    .line 127
    .line 128
    invoke-direct {p2, p1}, Lcom/google/android/gms/internal/drive/zzjr$zzb;-><init>(Ljava/lang/IndexOutOfBoundsException;)V

    .line 129
    .line 130
    .line 131
    throw p2
.end method

.method public final f(I)V
    .locals 7

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/drive/zzjr$zza;->d:[B

    .line 2
    .line 3
    iget v1, p0, Lcom/google/android/gms/internal/drive/zzjr$zza;->f:I

    .line 4
    .line 5
    add-int/lit8 v2, v1, 0x1

    .line 6
    .line 7
    iput v2, p0, Lcom/google/android/gms/internal/drive/zzjr$zza;->f:I

    .line 8
    .line 9
    int-to-byte v3, p1

    .line 10
    aput-byte v3, v0, v1

    .line 11
    .line 12
    add-int/lit8 v3, v1, 0x2

    .line 13
    .line 14
    iput v3, p0, Lcom/google/android/gms/internal/drive/zzjr$zza;->f:I

    .line 15
    .line 16
    shr-int/lit8 v4, p1, 0x8

    .line 17
    .line 18
    int-to-byte v4, v4

    .line 19
    aput-byte v4, v0, v2

    .line 20
    .line 21
    add-int/lit8 v2, v1, 0x3

    .line 22
    .line 23
    iput v2, p0, Lcom/google/android/gms/internal/drive/zzjr$zza;->f:I

    .line 24
    .line 25
    shr-int/lit8 v4, p1, 0x10

    .line 26
    .line 27
    int-to-byte v4, v4

    .line 28
    aput-byte v4, v0, v3

    .line 29
    .line 30
    add-int/lit8 v1, v1, 0x4

    .line 31
    .line 32
    iput v1, p0, Lcom/google/android/gms/internal/drive/zzjr$zza;->f:I

    .line 33
    .line 34
    ushr-int/lit8 p1, p1, 0x18

    .line 35
    .line 36
    int-to-byte p1, p1

    .line 37
    aput-byte p1, v0, v2
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 38
    .line 39
    return-void

    .line 40
    :catch_0
    move-exception p1

    .line 41
    new-instance v0, Lcom/google/android/gms/internal/drive/zzjr$zzb;

    .line 42
    .line 43
    iget v1, p0, Lcom/google/android/gms/internal/drive/zzjr$zza;->f:I

    .line 44
    .line 45
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    iget v2, p0, Lcom/google/android/gms/internal/drive/zzjr$zza;->e:I

    .line 50
    .line 51
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    const/4 v3, 0x1

    .line 56
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 57
    .line 58
    .line 59
    move-result-object v4

    .line 60
    const/4 v5, 0x3

    .line 61
    new-array v5, v5, [Ljava/lang/Object;

    .line 62
    .line 63
    const/4 v6, 0x0

    .line 64
    aput-object v1, v5, v6

    .line 65
    .line 66
    aput-object v2, v5, v3

    .line 67
    .line 68
    const/4 v1, 0x2

    .line 69
    aput-object v4, v5, v1

    .line 70
    .line 71
    const-string v1, "Pos: %d, limit: %d, len: %d"

    .line 72
    .line 73
    invoke-static {v1, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    invoke-direct {v0, v1, p1}, Lcom/google/android/gms/internal/drive/zzjr$zzb;-><init>(Ljava/lang/String;Ljava/lang/IndexOutOfBoundsException;)V

    .line 78
    .line 79
    .line 80
    throw v0
.end method

.method public final j(II)V
    .locals 0

    .line 1
    shl-int/lit8 p1, p1, 0x3

    .line 2
    .line 3
    or-int/2addr p1, p2

    .line 4
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/drive/zzjr$zza;->C(I)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public final k(ILcom/google/android/gms/internal/drive/zzjc;)V
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x3

    .line 3
    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/drive/zzjr$zza;->j(II)V

    .line 4
    .line 5
    .line 6
    const/4 v2, 0x2

    .line 7
    invoke-virtual {p0, v2, p1}, Lcom/google/android/gms/internal/drive/zzjr$zza;->s(II)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, v1, p2}, Lcom/google/android/gms/internal/drive/zzjr$zza;->b(ILcom/google/android/gms/internal/drive/zzjc;)V

    .line 11
    .line 12
    .line 13
    const/4 p1, 0x4

    .line 14
    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/drive/zzjr$zza;->j(II)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public final l(IZ)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/drive/zzjr$zza;->j(II)V

    .line 3
    .line 4
    .line 5
    int-to-byte p1, p2

    .line 6
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/drive/zzjr$zza;->o(B)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final o(B)V
    .locals 7

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/drive/zzjr$zza;->d:[B

    .line 2
    .line 3
    iget v1, p0, Lcom/google/android/gms/internal/drive/zzjr$zza;->f:I

    .line 4
    .line 5
    add-int/lit8 v2, v1, 0x1

    .line 6
    .line 7
    iput v2, p0, Lcom/google/android/gms/internal/drive/zzjr$zza;->f:I

    .line 8
    .line 9
    aput-byte p1, v0, v1
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    .line 11
    return-void

    .line 12
    :catch_0
    move-exception p1

    .line 13
    new-instance v0, Lcom/google/android/gms/internal/drive/zzjr$zzb;

    .line 14
    .line 15
    iget v1, p0, Lcom/google/android/gms/internal/drive/zzjr$zza;->f:I

    .line 16
    .line 17
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    iget v2, p0, Lcom/google/android/gms/internal/drive/zzjr$zza;->e:I

    .line 22
    .line 23
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    const/4 v3, 0x1

    .line 28
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 29
    .line 30
    .line 31
    move-result-object v4

    .line 32
    const/4 v5, 0x3

    .line 33
    new-array v5, v5, [Ljava/lang/Object;

    .line 34
    .line 35
    const/4 v6, 0x0

    .line 36
    aput-object v1, v5, v6

    .line 37
    .line 38
    aput-object v2, v5, v3

    .line 39
    .line 40
    const/4 v1, 0x2

    .line 41
    aput-object v4, v5, v1

    .line 42
    .line 43
    const-string v1, "Pos: %d, limit: %d, len: %d"

    .line 44
    .line 45
    invoke-static {v1, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    invoke-direct {v0, v1, p1}, Lcom/google/android/gms/internal/drive/zzjr$zzb;-><init>(Ljava/lang/String;Ljava/lang/IndexOutOfBoundsException;)V

    .line 50
    .line 51
    .line 52
    throw v0
.end method

.method public final p(II)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/drive/zzjr$zza;->j(II)V

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/drive/zzjr$zza;->B(I)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final q(IJ)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/drive/zzjr$zza;->j(II)V

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, p2, p3}, Lcom/google/android/gms/internal/drive/zzjr$zza;->z(J)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final r()I
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/drive/zzjr$zza;->e:I

    .line 2
    .line 3
    iget v1, p0, Lcom/google/android/gms/internal/drive/zzjr$zza;->f:I

    .line 4
    .line 5
    sub-int/2addr v0, v1

    .line 6
    return v0
.end method

.method public final s(II)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/drive/zzjr$zza;->j(II)V

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/drive/zzjr$zza;->C(I)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final t(II)V
    .locals 1

    .line 1
    const/4 v0, 0x5

    .line 2
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/drive/zzjr$zza;->j(II)V

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/drive/zzjr$zza;->f(I)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final x(J)V
    .locals 9

    .line 1
    sget-boolean v0, Lcom/google/android/gms/internal/drive/zzjr;->c:Z

    .line 2
    .line 3
    const/4 v1, 0x7

    .line 4
    const-wide/16 v2, 0x0

    .line 5
    .line 6
    const-wide/16 v4, -0x80

    .line 7
    .line 8
    iget-object v6, p0, Lcom/google/android/gms/internal/drive/zzjr$zza;->d:[B

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/google/android/gms/internal/drive/zzjr$zza;->r()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    const/16 v7, 0xa

    .line 17
    .line 18
    if-lt v0, v7, :cond_1

    .line 19
    .line 20
    :goto_0
    and-long v7, p1, v4

    .line 21
    .line 22
    cmp-long v0, v7, v2

    .line 23
    .line 24
    if-nez v0, :cond_0

    .line 25
    .line 26
    iget v0, p0, Lcom/google/android/gms/internal/drive/zzjr$zza;->f:I

    .line 27
    .line 28
    add-int/lit8 v1, v0, 0x1

    .line 29
    .line 30
    iput v1, p0, Lcom/google/android/gms/internal/drive/zzjr$zza;->f:I

    .line 31
    .line 32
    int-to-long v0, v0

    .line 33
    long-to-int p1, p1

    .line 34
    int-to-byte p1, p1

    .line 35
    invoke-static {v6, v0, v1, p1}, Lcom/google/android/gms/internal/drive/zznd;->e([BJB)V

    .line 36
    .line 37
    .line 38
    return-void

    .line 39
    :cond_0
    iget v0, p0, Lcom/google/android/gms/internal/drive/zzjr$zza;->f:I

    .line 40
    .line 41
    add-int/lit8 v7, v0, 0x1

    .line 42
    .line 43
    iput v7, p0, Lcom/google/android/gms/internal/drive/zzjr$zza;->f:I

    .line 44
    .line 45
    int-to-long v7, v0

    .line 46
    long-to-int v0, p1

    .line 47
    and-int/lit8 v0, v0, 0x7f

    .line 48
    .line 49
    or-int/lit16 v0, v0, 0x80

    .line 50
    .line 51
    int-to-byte v0, v0

    .line 52
    invoke-static {v6, v7, v8, v0}, Lcom/google/android/gms/internal/drive/zznd;->e([BJB)V

    .line 53
    .line 54
    .line 55
    ushr-long/2addr p1, v1

    .line 56
    goto :goto_0

    .line 57
    :cond_1
    :goto_1
    and-long v7, p1, v4

    .line 58
    .line 59
    cmp-long v0, v7, v2

    .line 60
    .line 61
    if-nez v0, :cond_2

    .line 62
    .line 63
    :try_start_0
    iget v0, p0, Lcom/google/android/gms/internal/drive/zzjr$zza;->f:I

    .line 64
    .line 65
    add-int/lit8 v1, v0, 0x1

    .line 66
    .line 67
    iput v1, p0, Lcom/google/android/gms/internal/drive/zzjr$zza;->f:I

    .line 68
    .line 69
    long-to-int p1, p1

    .line 70
    int-to-byte p1, p1

    .line 71
    aput-byte p1, v6, v0

    .line 72
    .line 73
    return-void

    .line 74
    :catch_0
    move-exception p1

    .line 75
    goto :goto_2

    .line 76
    :cond_2
    iget v0, p0, Lcom/google/android/gms/internal/drive/zzjr$zza;->f:I

    .line 77
    .line 78
    add-int/lit8 v7, v0, 0x1

    .line 79
    .line 80
    iput v7, p0, Lcom/google/android/gms/internal/drive/zzjr$zza;->f:I

    .line 81
    .line 82
    long-to-int v7, p1

    .line 83
    and-int/lit8 v7, v7, 0x7f

    .line 84
    .line 85
    or-int/lit16 v7, v7, 0x80

    .line 86
    .line 87
    int-to-byte v7, v7

    .line 88
    aput-byte v7, v6, v0
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 89
    .line 90
    ushr-long/2addr p1, v1

    .line 91
    goto :goto_1

    .line 92
    :goto_2
    new-instance p2, Lcom/google/android/gms/internal/drive/zzjr$zzb;

    .line 93
    .line 94
    iget v0, p0, Lcom/google/android/gms/internal/drive/zzjr$zza;->f:I

    .line 95
    .line 96
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    iget v1, p0, Lcom/google/android/gms/internal/drive/zzjr$zza;->e:I

    .line 101
    .line 102
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 103
    .line 104
    .line 105
    move-result-object v1

    .line 106
    const/4 v2, 0x1

    .line 107
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 108
    .line 109
    .line 110
    move-result-object v3

    .line 111
    const/4 v4, 0x3

    .line 112
    new-array v4, v4, [Ljava/lang/Object;

    .line 113
    .line 114
    const/4 v5, 0x0

    .line 115
    aput-object v0, v4, v5

    .line 116
    .line 117
    aput-object v1, v4, v2

    .line 118
    .line 119
    const/4 v0, 0x2

    .line 120
    aput-object v3, v4, v0

    .line 121
    .line 122
    const-string v0, "Pos: %d, limit: %d, len: %d"

    .line 123
    .line 124
    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v0

    .line 128
    invoke-direct {p2, v0, p1}, Lcom/google/android/gms/internal/drive/zzjr$zzb;-><init>(Ljava/lang/String;Ljava/lang/IndexOutOfBoundsException;)V

    .line 129
    .line 130
    .line 131
    throw p2
.end method

.method public final z(J)V
    .locals 7

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/drive/zzjr$zza;->d:[B

    .line 2
    .line 3
    iget v1, p0, Lcom/google/android/gms/internal/drive/zzjr$zza;->f:I

    .line 4
    .line 5
    add-int/lit8 v2, v1, 0x1

    .line 6
    .line 7
    iput v2, p0, Lcom/google/android/gms/internal/drive/zzjr$zza;->f:I

    .line 8
    .line 9
    long-to-int v3, p1

    .line 10
    int-to-byte v3, v3

    .line 11
    aput-byte v3, v0, v1

    .line 12
    .line 13
    add-int/lit8 v3, v1, 0x2

    .line 14
    .line 15
    iput v3, p0, Lcom/google/android/gms/internal/drive/zzjr$zza;->f:I

    .line 16
    .line 17
    const/16 v4, 0x8

    .line 18
    .line 19
    shr-long v5, p1, v4

    .line 20
    .line 21
    long-to-int v5, v5

    .line 22
    int-to-byte v5, v5

    .line 23
    aput-byte v5, v0, v2

    .line 24
    .line 25
    add-int/lit8 v2, v1, 0x3

    .line 26
    .line 27
    iput v2, p0, Lcom/google/android/gms/internal/drive/zzjr$zza;->f:I

    .line 28
    .line 29
    const/16 v5, 0x10

    .line 30
    .line 31
    shr-long v5, p1, v5

    .line 32
    .line 33
    long-to-int v5, v5

    .line 34
    int-to-byte v5, v5

    .line 35
    aput-byte v5, v0, v3

    .line 36
    .line 37
    add-int/lit8 v3, v1, 0x4

    .line 38
    .line 39
    iput v3, p0, Lcom/google/android/gms/internal/drive/zzjr$zza;->f:I

    .line 40
    .line 41
    const/16 v5, 0x18

    .line 42
    .line 43
    shr-long v5, p1, v5

    .line 44
    .line 45
    long-to-int v5, v5

    .line 46
    int-to-byte v5, v5

    .line 47
    aput-byte v5, v0, v2

    .line 48
    .line 49
    add-int/lit8 v2, v1, 0x5

    .line 50
    .line 51
    iput v2, p0, Lcom/google/android/gms/internal/drive/zzjr$zza;->f:I

    .line 52
    .line 53
    const/16 v5, 0x20

    .line 54
    .line 55
    shr-long v5, p1, v5

    .line 56
    .line 57
    long-to-int v5, v5

    .line 58
    int-to-byte v5, v5

    .line 59
    aput-byte v5, v0, v3

    .line 60
    .line 61
    add-int/lit8 v3, v1, 0x6

    .line 62
    .line 63
    iput v3, p0, Lcom/google/android/gms/internal/drive/zzjr$zza;->f:I

    .line 64
    .line 65
    const/16 v5, 0x28

    .line 66
    .line 67
    shr-long v5, p1, v5

    .line 68
    .line 69
    long-to-int v5, v5

    .line 70
    int-to-byte v5, v5

    .line 71
    aput-byte v5, v0, v2

    .line 72
    .line 73
    add-int/lit8 v2, v1, 0x7

    .line 74
    .line 75
    iput v2, p0, Lcom/google/android/gms/internal/drive/zzjr$zza;->f:I

    .line 76
    .line 77
    const/16 v5, 0x30

    .line 78
    .line 79
    shr-long v5, p1, v5

    .line 80
    .line 81
    long-to-int v5, v5

    .line 82
    int-to-byte v5, v5

    .line 83
    aput-byte v5, v0, v3

    .line 84
    .line 85
    add-int/2addr v1, v4

    .line 86
    iput v1, p0, Lcom/google/android/gms/internal/drive/zzjr$zza;->f:I

    .line 87
    .line 88
    const/16 v1, 0x38

    .line 89
    .line 90
    shr-long/2addr p1, v1

    .line 91
    long-to-int p1, p1

    .line 92
    int-to-byte p1, p1

    .line 93
    aput-byte p1, v0, v2
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 94
    .line 95
    return-void

    .line 96
    :catch_0
    move-exception p1

    .line 97
    new-instance p2, Lcom/google/android/gms/internal/drive/zzjr$zzb;

    .line 98
    .line 99
    iget v0, p0, Lcom/google/android/gms/internal/drive/zzjr$zza;->f:I

    .line 100
    .line 101
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    iget v1, p0, Lcom/google/android/gms/internal/drive/zzjr$zza;->e:I

    .line 106
    .line 107
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 108
    .line 109
    .line 110
    move-result-object v1

    .line 111
    const/4 v2, 0x1

    .line 112
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 113
    .line 114
    .line 115
    move-result-object v3

    .line 116
    const/4 v4, 0x3

    .line 117
    new-array v4, v4, [Ljava/lang/Object;

    .line 118
    .line 119
    const/4 v5, 0x0

    .line 120
    aput-object v0, v4, v5

    .line 121
    .line 122
    aput-object v1, v4, v2

    .line 123
    .line 124
    const/4 v0, 0x2

    .line 125
    aput-object v3, v4, v0

    .line 126
    .line 127
    const-string v0, "Pos: %d, limit: %d, len: %d"

    .line 128
    .line 129
    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object v0

    .line 133
    invoke-direct {p2, v0, p1}, Lcom/google/android/gms/internal/drive/zzjr$zzb;-><init>(Ljava/lang/String;Ljava/lang/IndexOutOfBoundsException;)V

    .line 134
    .line 135
    .line 136
    throw p2
.end method
