.class final Lcom/google/android/gms/cast/zzt;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/util/Collection;


# direct methods
.method public synthetic constructor <init>(Ljava/util/Collection;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lcom/google/android/gms/cast/zzt;->a:Ljava/lang/String;

    .line 5
    .line 6
    iput-object p1, p0, Lcom/google/android/gms/cast/zzt;->b:Ljava/util/Collection;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 12

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "com.google.android.gms.cast.CATEGORY_CAST"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const-string v1, "/"

    .line 9
    .line 10
    iget-object v2, p0, Lcom/google/android/gms/cast/zzt;->a:Ljava/lang/String;

    .line 11
    .line 12
    if-eqz v2, :cond_1

    .line 13
    .line 14
    sget-object v3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 15
    .line 16
    invoke-virtual {v2, v3}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v3

    .line 20
    const-string v4, "[A-F0-9]+"

    .line 21
    .line 22
    invoke-virtual {v3, v4}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    .line 23
    .line 24
    .line 25
    move-result v4

    .line 26
    if-eqz v4, :cond_0

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    const-string v0, "Invalid application ID: "

    .line 36
    .line 37
    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 42
    .line 43
    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    throw v1

    .line 47
    :cond_1
    :goto_0
    const/4 v3, 0x0

    .line 48
    const/4 v4, 0x1

    .line 49
    iget-object v5, p0, Lcom/google/android/gms/cast/zzt;->b:Ljava/util/Collection;

    .line 50
    .line 51
    if-eqz v5, :cond_e

    .line 52
    .line 53
    invoke-interface {v5}, Ljava/util/Collection;->isEmpty()Z

    .line 54
    .line 55
    .line 56
    move-result v6

    .line 57
    if-nez v6, :cond_d

    .line 58
    .line 59
    if-nez v2, :cond_2

    .line 60
    .line 61
    move v6, v3

    .line 62
    goto :goto_1

    .line 63
    :cond_2
    move v6, v4

    .line 64
    :goto_1
    if-nez v2, :cond_3

    .line 65
    .line 66
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    :cond_3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 73
    .line 74
    .line 75
    move-result-object v2

    .line 76
    move v7, v4

    .line 77
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 78
    .line 79
    .line 80
    move-result v8

    .line 81
    if-eqz v8, :cond_c

    .line 82
    .line 83
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object v8

    .line 87
    check-cast v8, Ljava/lang/String;

    .line 88
    .line 89
    invoke-static {v8}, Lcom/google/android/gms/cast/internal/CastUtils;->b(Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    if-nez v7, :cond_4

    .line 93
    .line 94
    const-string v7, ","

    .line 95
    .line 96
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    :cond_4
    sget-object v7, Lcom/google/android/gms/cast/internal/CastUtils;->a:Ljava/util/regex/Pattern;

    .line 100
    .line 101
    invoke-virtual {v7, v8}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 102
    .line 103
    .line 104
    move-result-object v7

    .line 105
    invoke-virtual {v7}, Ljava/util/regex/Matcher;->matches()Z

    .line 106
    .line 107
    .line 108
    move-result v7

    .line 109
    if-eqz v7, :cond_5

    .line 110
    .line 111
    goto :goto_6

    .line 112
    :cond_5
    new-instance v7, Ljava/lang/StringBuilder;

    .line 113
    .line 114
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    .line 115
    .line 116
    .line 117
    move-result v9

    .line 118
    invoke-direct {v7, v9}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 119
    .line 120
    .line 121
    move v9, v3

    .line 122
    :goto_3
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    .line 123
    .line 124
    .line 125
    move-result v10

    .line 126
    if-ge v9, v10, :cond_b

    .line 127
    .line 128
    invoke-virtual {v8, v9}, Ljava/lang/String;->charAt(I)C

    .line 129
    .line 130
    .line 131
    move-result v10

    .line 132
    const/16 v11, 0x41

    .line 133
    .line 134
    if-lt v10, v11, :cond_6

    .line 135
    .line 136
    const/16 v11, 0x5a

    .line 137
    .line 138
    if-le v10, v11, :cond_a

    .line 139
    .line 140
    :cond_6
    const/16 v11, 0x61

    .line 141
    .line 142
    if-lt v10, v11, :cond_7

    .line 143
    .line 144
    const/16 v11, 0x7a

    .line 145
    .line 146
    if-le v10, v11, :cond_a

    .line 147
    .line 148
    :cond_7
    const/16 v11, 0x30

    .line 149
    .line 150
    if-lt v10, v11, :cond_8

    .line 151
    .line 152
    const/16 v11, 0x39

    .line 153
    .line 154
    if-le v10, v11, :cond_a

    .line 155
    .line 156
    :cond_8
    const/16 v11, 0x5f

    .line 157
    .line 158
    if-eq v10, v11, :cond_a

    .line 159
    .line 160
    const/16 v11, 0x2d

    .line 161
    .line 162
    if-ne v10, v11, :cond_9

    .line 163
    .line 164
    goto :goto_4

    .line 165
    :cond_9
    const/16 v11, 0x2e

    .line 166
    .line 167
    if-eq v10, v11, :cond_a

    .line 168
    .line 169
    const/16 v11, 0x3a

    .line 170
    .line 171
    if-eq v10, v11, :cond_a

    .line 172
    .line 173
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 174
    .line 175
    .line 176
    move-result-object v10

    .line 177
    new-array v11, v4, [Ljava/lang/Object;

    .line 178
    .line 179
    aput-object v10, v11, v3

    .line 180
    .line 181
    const-string v10, "%%%04x"

    .line 182
    .line 183
    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 184
    .line 185
    .line 186
    move-result-object v10

    .line 187
    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    .line 189
    .line 190
    goto :goto_5

    .line 191
    :cond_a
    :goto_4
    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 192
    .line 193
    .line 194
    :goto_5
    add-int/lit8 v9, v9, 0x1

    .line 195
    .line 196
    goto :goto_3

    .line 197
    :cond_b
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 198
    .line 199
    .line 200
    move-result-object v8

    .line 201
    :goto_6
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    .line 203
    .line 204
    move v7, v3

    .line 205
    goto/16 :goto_2

    .line 206
    .line 207
    :cond_c
    move v3, v6

    .line 208
    goto :goto_7

    .line 209
    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 210
    .line 211
    const-string v1, "Must specify at least one namespace"

    .line 212
    .line 213
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 214
    .line 215
    .line 216
    throw v0

    .line 217
    :cond_e
    if-nez v2, :cond_f

    .line 218
    .line 219
    goto :goto_7

    .line 220
    :cond_f
    move v3, v4

    .line 221
    :goto_7
    if-eq v4, v3, :cond_10

    .line 222
    .line 223
    if-nez v5, :cond_10

    .line 224
    .line 225
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 226
    .line 227
    .line 228
    :cond_10
    if-nez v5, :cond_11

    .line 229
    .line 230
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 231
    .line 232
    .line 233
    :cond_11
    const-string v1, "//ALLOW_IPV6"

    .line 234
    .line 235
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 236
    .line 237
    .line 238
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 239
    .line 240
    .line 241
    move-result-object v0

    .line 242
    return-object v0
.end method
