.class public final Lcom/google/android/gms/internal/fido/zzhi;
.super Lcom/google/android/gms/internal/fido/zzhp;
.source "SourceFile"


# instance fields
.field public final c:Lcom/google/android/gms/internal/fido/zzgx;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/fido/zzgx;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/fido/zzhi;->c:Lcom/google/android/gms/internal/fido/zzgx;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final compareTo(Ljava/lang/Object;)I
    .locals 5

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/fido/zzhp;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/fido/zzhp;->zza()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/16 v1, 0x40

    .line 8
    .line 9
    invoke-static {v1}, Lcom/google/android/gms/internal/fido/zzhp;->c(B)I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-eq v1, v0, :cond_0

    .line 14
    .line 15
    invoke-virtual {p1}, Lcom/google/android/gms/internal/fido/zzhp;->zza()I

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    sub-int/2addr v1, p1

    .line 20
    return v1

    .line 21
    :cond_0
    check-cast p1, Lcom/google/android/gms/internal/fido/zzhi;

    .line 22
    .line 23
    iget-object p1, p1, Lcom/google/android/gms/internal/fido/zzhi;->c:Lcom/google/android/gms/internal/fido/zzgx;

    .line 24
    .line 25
    iget-object v0, p0, Lcom/google/android/gms/internal/fido/zzhi;->c:Lcom/google/android/gms/internal/fido/zzgx;

    .line 26
    .line 27
    move-object v1, v0

    .line 28
    check-cast v1, Lcom/google/android/gms/internal/fido/zzgu;

    .line 29
    .line 30
    iget-object v1, v1, Lcom/google/android/gms/internal/fido/zzgu;->g:[B

    .line 31
    .line 32
    array-length v2, v1

    .line 33
    move-object v3, p1

    .line 34
    check-cast v3, Lcom/google/android/gms/internal/fido/zzgu;

    .line 35
    .line 36
    iget-object v3, v3, Lcom/google/android/gms/internal/fido/zzgu;->g:[B

    .line 37
    .line 38
    array-length v4, v3

    .line 39
    if-eq v2, v4, :cond_1

    .line 40
    .line 41
    array-length p1, v1

    .line 42
    array-length v0, v3

    .line 43
    sub-int/2addr p1, v0

    .line 44
    return p1

    .line 45
    :cond_1
    invoke-virtual {v0}, Lcom/google/android/gms/internal/fido/zzgx;->t()[B

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    invoke-virtual {p1}, Lcom/google/android/gms/internal/fido/zzgx;->t()[B

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    sget-object v1, Lcom/google/android/gms/internal/fido/zzgl;->a:Ljava/util/Comparator;

    .line 54
    .line 55
    invoke-interface {v1, v0, p1}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    .line 56
    .line 57
    .line 58
    move-result p1

    .line 59
    return p1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    if-ne p0, p1, :cond_0

    .line 2
    .line 3
    const/4 p1, 0x1

    .line 4
    return p1

    .line 5
    :cond_0
    const/4 v0, 0x0

    .line 6
    if-nez p1, :cond_1

    .line 7
    .line 8
    return v0

    .line 9
    :cond_1
    const-class v1, Lcom/google/android/gms/internal/fido/zzhi;

    .line 10
    .line 11
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    if-eq v1, v2, :cond_2

    .line 16
    .line 17
    return v0

    .line 18
    :cond_2
    check-cast p1, Lcom/google/android/gms/internal/fido/zzhi;

    .line 19
    .line 20
    iget-object v0, p0, Lcom/google/android/gms/internal/fido/zzhi;->c:Lcom/google/android/gms/internal/fido/zzgx;

    .line 21
    .line 22
    iget-object p1, p1, Lcom/google/android/gms/internal/fido/zzhi;->c:Lcom/google/android/gms/internal/fido/zzgx;

    .line 23
    .line 24
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/fido/zzgx;->equals(Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    return p1
.end method

.method public final hashCode()I
    .locals 3

    .line 1
    const/16 v0, 0x40

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/android/gms/internal/fido/zzhp;->c(B)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const/4 v1, 0x2

    .line 12
    new-array v1, v1, [Ljava/lang/Object;

    .line 13
    .line 14
    const/4 v2, 0x0

    .line 15
    aput-object v0, v1, v2

    .line 16
    .line 17
    const/4 v0, 0x1

    .line 18
    iget-object v2, p0, Lcom/google/android/gms/internal/fido/zzhi;->c:Lcom/google/android/gms/internal/fido/zzgx;

    .line 19
    .line 20
    aput-object v2, v1, v0

    .line 21
    .line 22
    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 15

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/fido/zzgf;->a:Lcom/google/android/gms/internal/fido/zzgf;

    .line 2
    .line 3
    check-cast v0, Lcom/google/android/gms/internal/fido/zzge;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/google/android/gms/internal/fido/zzge;->d:Lcom/google/android/gms/internal/fido/zzgf;

    .line 6
    .line 7
    if-nez v1, :cond_d

    .line 8
    .line 9
    iget-object v1, v0, Lcom/google/android/gms/internal/fido/zzge;->b:Lcom/google/android/gms/internal/fido/zzgb;

    .line 10
    .line 11
    iget-object v2, v1, Lcom/google/android/gms/internal/fido/zzgb;->b:[C

    .line 12
    .line 13
    const/4 v3, 0x0

    .line 14
    move v4, v3

    .line 15
    :goto_0
    array-length v5, v2

    .line 16
    if-ge v4, v5, :cond_a

    .line 17
    .line 18
    aget-char v5, v2, v4

    .line 19
    .line 20
    const/16 v6, 0x61

    .line 21
    .line 22
    if-lt v5, v6, :cond_9

    .line 23
    .line 24
    const/16 v7, 0x7a

    .line 25
    .line 26
    if-gt v5, v7, :cond_9

    .line 27
    .line 28
    move v4, v3

    .line 29
    :goto_1
    array-length v5, v2

    .line 30
    const/4 v8, 0x1

    .line 31
    const/16 v9, 0x5a

    .line 32
    .line 33
    const/16 v10, 0x41

    .line 34
    .line 35
    if-ge v4, v5, :cond_1

    .line 36
    .line 37
    aget-char v5, v2, v4

    .line 38
    .line 39
    if-lt v5, v10, :cond_0

    .line 40
    .line 41
    if-gt v5, v9, :cond_0

    .line 42
    .line 43
    move v4, v8

    .line 44
    goto :goto_2

    .line 45
    :cond_0
    add-int/lit8 v4, v4, 0x1

    .line 46
    .line 47
    goto :goto_1

    .line 48
    :cond_1
    move v4, v3

    .line 49
    :goto_2
    if-nez v4, :cond_8

    .line 50
    .line 51
    array-length v4, v2

    .line 52
    new-array v4, v4, [C

    .line 53
    .line 54
    move v5, v3

    .line 55
    :goto_3
    array-length v11, v2

    .line 56
    if-ge v5, v11, :cond_3

    .line 57
    .line 58
    aget-char v11, v2, v5

    .line 59
    .line 60
    if-lt v11, v6, :cond_2

    .line 61
    .line 62
    if-gt v11, v7, :cond_2

    .line 63
    .line 64
    xor-int/lit8 v11, v11, 0x20

    .line 65
    .line 66
    :cond_2
    int-to-char v11, v11

    .line 67
    aput-char v11, v4, v5

    .line 68
    .line 69
    add-int/lit8 v5, v5, 0x1

    .line 70
    .line 71
    goto :goto_3

    .line 72
    :cond_3
    iget-object v2, v1, Lcom/google/android/gms/internal/fido/zzgb;->a:Ljava/lang/String;

    .line 73
    .line 74
    new-instance v5, Lcom/google/android/gms/internal/fido/zzgb;

    .line 75
    .line 76
    const-string v6, ".upperCase()"

    .line 77
    .line 78
    invoke-virtual {v2, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v2

    .line 82
    invoke-direct {v5, v2, v4}, Lcom/google/android/gms/internal/fido/zzgb;-><init>(Ljava/lang/String;[C)V

    .line 83
    .line 84
    .line 85
    iget-object v2, v5, Lcom/google/android/gms/internal/fido/zzgb;->g:[B

    .line 86
    .line 87
    iget-boolean v4, v1, Lcom/google/android/gms/internal/fido/zzgb;->h:Z

    .line 88
    .line 89
    if-eqz v4, :cond_b

    .line 90
    .line 91
    iget-boolean v4, v5, Lcom/google/android/gms/internal/fido/zzgb;->h:Z

    .line 92
    .line 93
    if-eqz v4, :cond_4

    .line 94
    .line 95
    goto :goto_6

    .line 96
    :cond_4
    array-length v4, v2

    .line 97
    invoke-static {v2, v4}, Ljava/util/Arrays;->copyOf([BI)[B

    .line 98
    .line 99
    .line 100
    move-result-object v4

    .line 101
    :goto_4
    if-gt v10, v9, :cond_7

    .line 102
    .line 103
    or-int/lit8 v6, v10, 0x20

    .line 104
    .line 105
    aget-byte v7, v2, v10

    .line 106
    .line 107
    aget-byte v11, v2, v6

    .line 108
    .line 109
    const/4 v12, -0x1

    .line 110
    if-ne v7, v12, :cond_5

    .line 111
    .line 112
    aput-byte v11, v4, v10

    .line 113
    .line 114
    goto :goto_5

    .line 115
    :cond_5
    int-to-char v13, v10

    .line 116
    int-to-char v14, v6

    .line 117
    if-ne v11, v12, :cond_6

    .line 118
    .line 119
    aput-byte v7, v4, v6

    .line 120
    .line 121
    :goto_5
    add-int/lit8 v10, v10, 0x1

    .line 122
    .line 123
    goto :goto_4

    .line 124
    :cond_6
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 125
    .line 126
    invoke-static {v13}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 127
    .line 128
    .line 129
    move-result-object v1

    .line 130
    invoke-static {v14}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 131
    .line 132
    .line 133
    move-result-object v2

    .line 134
    const/4 v4, 0x2

    .line 135
    new-array v4, v4, [Ljava/lang/Object;

    .line 136
    .line 137
    aput-object v1, v4, v3

    .line 138
    .line 139
    aput-object v2, v4, v8

    .line 140
    .line 141
    const-string v1, "Can\'t ignoreCase() since \'%s\' and \'%s\' encode different values"

    .line 142
    .line 143
    invoke-static {v1, v4}, Lcom/google/android/gms/internal/fido/zzbo;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object v1

    .line 147
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 148
    .line 149
    .line 150
    throw v0

    .line 151
    :cond_7
    iget-object v2, v5, Lcom/google/android/gms/internal/fido/zzgb;->a:Ljava/lang/String;

    .line 152
    .line 153
    iget-object v3, v5, Lcom/google/android/gms/internal/fido/zzgb;->b:[C

    .line 154
    .line 155
    new-instance v5, Lcom/google/android/gms/internal/fido/zzgb;

    .line 156
    .line 157
    const-string v6, ".ignoreCase()"

    .line 158
    .line 159
    invoke-virtual {v2, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object v2

    .line 163
    invoke-direct {v5, v2, v3, v4, v8}, Lcom/google/android/gms/internal/fido/zzgb;-><init>(Ljava/lang/String;[C[BZ)V

    .line 164
    .line 165
    .line 166
    goto :goto_6

    .line 167
    :cond_8
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 168
    .line 169
    const-string v1, "Cannot call upperCase() on a mixed-case alphabet"

    .line 170
    .line 171
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 172
    .line 173
    .line 174
    throw v0

    .line 175
    :cond_9
    add-int/lit8 v4, v4, 0x1

    .line 176
    .line 177
    goto/16 :goto_0

    .line 178
    .line 179
    :cond_a
    move-object v5, v1

    .line 180
    :cond_b
    :goto_6
    if-ne v5, v1, :cond_c

    .line 181
    .line 182
    move-object v1, v0

    .line 183
    goto :goto_7

    .line 184
    :cond_c
    iget-object v1, v0, Lcom/google/android/gms/internal/fido/zzge;->c:Ljava/lang/Character;

    .line 185
    .line 186
    invoke-virtual {v0, v5, v1}, Lcom/google/android/gms/internal/fido/zzge;->d(Lcom/google/android/gms/internal/fido/zzgb;Ljava/lang/Character;)Lcom/google/android/gms/internal/fido/zzgf;

    .line 187
    .line 188
    .line 189
    move-result-object v1

    .line 190
    :goto_7
    iput-object v1, v0, Lcom/google/android/gms/internal/fido/zzge;->d:Lcom/google/android/gms/internal/fido/zzgf;

    .line 191
    .line 192
    :cond_d
    iget-object v0, p0, Lcom/google/android/gms/internal/fido/zzhi;->c:Lcom/google/android/gms/internal/fido/zzgx;

    .line 193
    .line 194
    invoke-virtual {v0}, Lcom/google/android/gms/internal/fido/zzgx;->t()[B

    .line 195
    .line 196
    .line 197
    move-result-object v0

    .line 198
    array-length v2, v0

    .line 199
    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/internal/fido/zzgf;->c([BI)Ljava/lang/String;

    .line 200
    .line 201
    .line 202
    move-result-object v0

    .line 203
    const-string v1, "h\'"

    .line 204
    .line 205
    const-string v2, "\'"

    .line 206
    .line 207
    invoke-static {v1, v0, v2}, Landroid/support/v4/media/a;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 208
    .line 209
    .line 210
    move-result-object v0

    .line 211
    return-object v0
.end method

.method public final zza()I
    .locals 1

    const/16 v0, 0x40

    invoke-static {v0}, Lcom/google/android/gms/internal/fido/zzhp;->c(B)I

    move-result v0

    return v0
.end method
