.class public Lcom/mycompany/app/subtitle/FormatSTL;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lcom/mycompany/app/subtitle/Caption;[BLjava/util/ArrayList;Ljava/util/ArrayList;Lcom/mycompany/app/subtitle/Subtitle$SubtitleListener;)V
    .locals 10

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x0

    .line 3
    move-object v3, v0

    .line 4
    move v2, v1

    .line 5
    :goto_0
    array-length v4, p1

    .line 6
    if-ge v2, v4, :cond_f

    .line 7
    .line 8
    invoke-interface {p4}, Lcom/mycompany/app/subtitle/Subtitle$SubtitleListener;->a()Z

    .line 9
    .line 10
    .line 11
    move-result v4

    .line 12
    if-eqz v4, :cond_0

    .line 13
    .line 14
    goto/16 :goto_6

    .line 15
    .line 16
    :cond_0
    aget-byte v4, p1, v2

    .line 17
    .line 18
    const/4 v5, 0x1

    .line 19
    if-gez v4, :cond_b

    .line 20
    .line 21
    const/16 v6, -0x71

    .line 22
    .line 23
    if-gt v4, v6, :cond_e

    .line 24
    .line 25
    add-int/lit8 v7, v2, 0x1

    .line 26
    .line 27
    array-length v8, p1

    .line 28
    if-ge v7, v8, :cond_1

    .line 29
    .line 30
    aget-byte v8, p1, v7

    .line 31
    .line 32
    if-ne v4, v8, :cond_1

    .line 33
    .line 34
    move v2, v7

    .line 35
    :cond_1
    aget-byte v4, p1, v2

    .line 36
    .line 37
    const/16 v7, -0x76

    .line 38
    .line 39
    if-eq v4, v7, :cond_9

    .line 40
    .line 41
    if-eq v4, v6, :cond_2

    .line 42
    .line 43
    goto/16 :goto_5

    .line 44
    .line 45
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    .line 46
    .line 47
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 48
    .line 49
    .line 50
    iget-object v4, p0, Lcom/mycompany/app/subtitle/Caption;->c:Ljava/lang/String;

    .line 51
    .line 52
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    if-eqz v3, :cond_3

    .line 56
    .line 57
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    :cond_3
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v2

    .line 64
    iput-object v2, p0, Lcom/mycompany/app/subtitle/Caption;->c:Ljava/lang/String;

    .line 65
    .line 66
    iget-object v2, p0, Lcom/mycompany/app/subtitle/Caption;->a:Lcom/mycompany/app/subtitle/Time;

    .line 67
    .line 68
    iget v2, v2, Lcom/mycompany/app/subtitle/Time;->a:I

    .line 69
    .line 70
    :goto_1
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 71
    .line 72
    .line 73
    move-result-object v3

    .line 74
    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 75
    .line 76
    .line 77
    move-result v3

    .line 78
    if-eqz v3, :cond_4

    .line 79
    .line 80
    add-int/lit8 v2, v2, 0x1

    .line 81
    .line 82
    goto :goto_1

    .line 83
    :cond_4
    iget-object v3, p0, Lcom/mycompany/app/subtitle/Caption;->a:Lcom/mycompany/app/subtitle/Time;

    .line 84
    .line 85
    iput v2, v3, Lcom/mycompany/app/subtitle/Time;->a:I

    .line 86
    .line 87
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 88
    .line 89
    .line 90
    move-result-object v2

    .line 91
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 92
    .line 93
    .line 94
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    .line 95
    .line 96
    .line 97
    move-result v2

    .line 98
    if-nez v2, :cond_5

    .line 99
    .line 100
    goto :goto_3

    .line 101
    :cond_5
    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    move-result-object v2

    .line 105
    check-cast v2, Ljava/util/List;

    .line 106
    .line 107
    if-nez v2, :cond_6

    .line 108
    .line 109
    goto :goto_3

    .line 110
    :cond_6
    iget-object v3, p0, Lcom/mycompany/app/subtitle/Caption;->a:Lcom/mycompany/app/subtitle/Time;

    .line 111
    .line 112
    iget v3, v3, Lcom/mycompany/app/subtitle/Time;->a:I

    .line 113
    .line 114
    iget-object v4, p0, Lcom/mycompany/app/subtitle/Caption;->b:Lcom/mycompany/app/subtitle/Time;

    .line 115
    .line 116
    iget v4, v4, Lcom/mycompany/app/subtitle/Time;->a:I

    .line 117
    .line 118
    if-ge v3, v4, :cond_8

    .line 119
    .line 120
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 121
    .line 122
    .line 123
    move-result v3

    .line 124
    if-lez v3, :cond_7

    .line 125
    .line 126
    add-int/lit8 v3, v3, -0x1

    .line 127
    .line 128
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 129
    .line 130
    .line 131
    move-result-object v3

    .line 132
    check-cast v3, Lcom/mycompany/app/subtitle/SubtitleItem;

    .line 133
    .line 134
    if-eqz v3, :cond_7

    .line 135
    .line 136
    iget-wide v6, v3, Lcom/mycompany/app/subtitle/SubtitleItem;->a:J

    .line 137
    .line 138
    iget-object v4, p0, Lcom/mycompany/app/subtitle/Caption;->a:Lcom/mycompany/app/subtitle/Time;

    .line 139
    .line 140
    iget v4, v4, Lcom/mycompany/app/subtitle/Time;->a:I

    .line 141
    .line 142
    int-to-long v8, v4

    .line 143
    cmp-long v4, v6, v8

    .line 144
    .line 145
    if-nez v4, :cond_7

    .line 146
    .line 147
    iget-object v4, p0, Lcom/mycompany/app/subtitle/Caption;->c:Ljava/lang/String;

    .line 148
    .line 149
    iput-object v4, v3, Lcom/mycompany/app/subtitle/SubtitleItem;->b:Ljava/lang/String;

    .line 150
    .line 151
    goto :goto_2

    .line 152
    :cond_7
    new-instance v3, Lcom/mycompany/app/subtitle/SubtitleItem;

    .line 153
    .line 154
    iget-object v4, p0, Lcom/mycompany/app/subtitle/Caption;->a:Lcom/mycompany/app/subtitle/Time;

    .line 155
    .line 156
    iget v4, v4, Lcom/mycompany/app/subtitle/Time;->a:I

    .line 157
    .line 158
    int-to-long v6, v4

    .line 159
    iget-object v4, p0, Lcom/mycompany/app/subtitle/Caption;->c:Ljava/lang/String;

    .line 160
    .line 161
    invoke-direct {v3, v6, v7, v4}, Lcom/mycompany/app/subtitle/SubtitleItem;-><init>(JLjava/lang/String;)V

    .line 162
    .line 163
    .line 164
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 165
    .line 166
    .line 167
    :cond_8
    :goto_2
    new-instance v3, Lcom/mycompany/app/subtitle/SubtitleItem;

    .line 168
    .line 169
    iget-object v4, p0, Lcom/mycompany/app/subtitle/Caption;->b:Lcom/mycompany/app/subtitle/Time;

    .line 170
    .line 171
    iget v4, v4, Lcom/mycompany/app/subtitle/Time;->a:I

    .line 172
    .line 173
    int-to-long v6, v4

    .line 174
    invoke-direct {v3, v6, v7, v0}, Lcom/mycompany/app/subtitle/SubtitleItem;-><init>(JLjava/lang/String;)V

    .line 175
    .line 176
    .line 177
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 178
    .line 179
    .line 180
    :goto_3
    array-length v2, p1

    .line 181
    :goto_4
    move-object v3, v0

    .line 182
    goto :goto_5

    .line 183
    :cond_9
    new-instance v4, Ljava/lang/StringBuilder;

    .line 184
    .line 185
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 186
    .line 187
    .line 188
    iget-object v6, p0, Lcom/mycompany/app/subtitle/Caption;->c:Ljava/lang/String;

    .line 189
    .line 190
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    .line 192
    .line 193
    if-eqz v3, :cond_a

    .line 194
    .line 195
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 196
    .line 197
    .line 198
    :cond_a
    const-string v3, "<br />"

    .line 199
    .line 200
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    .line 202
    .line 203
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 204
    .line 205
    .line 206
    move-result-object v3

    .line 207
    iput-object v3, p0, Lcom/mycompany/app/subtitle/Caption;->c:Ljava/lang/String;

    .line 208
    .line 209
    goto :goto_4

    .line 210
    :cond_b
    const/16 v6, 0x20

    .line 211
    .line 212
    if-ge v4, v6, :cond_c

    .line 213
    .line 214
    add-int/lit8 v6, v2, 0x1

    .line 215
    .line 216
    array-length v7, p1

    .line 217
    if-ge v6, v7, :cond_e

    .line 218
    .line 219
    aget-byte v7, p1, v6

    .line 220
    .line 221
    if-ne v4, v7, :cond_e

    .line 222
    .line 223
    move v2, v6

    .line 224
    goto :goto_5

    .line 225
    :cond_c
    new-array v6, v5, [B

    .line 226
    .line 227
    aput-byte v4, v6, v1

    .line 228
    .line 229
    if-nez v3, :cond_d

    .line 230
    .line 231
    new-instance v3, Ljava/lang/StringBuilder;

    .line 232
    .line 233
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 234
    .line 235
    .line 236
    :cond_d
    new-instance v4, Ljava/lang/String;

    .line 237
    .line 238
    invoke-direct {v4, v6}, Ljava/lang/String;-><init>([B)V

    .line 239
    .line 240
    .line 241
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 242
    .line 243
    .line 244
    :cond_e
    :goto_5
    add-int/2addr v2, v5

    .line 245
    goto/16 :goto_0

    .line 246
    .line 247
    :cond_f
    :goto_6
    return-void
.end method
