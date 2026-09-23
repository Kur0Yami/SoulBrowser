.class Lcom/google/api/client/json/gson/GsonParser;
.super Lcom/google/api/client/json/JsonParser;
.source "SourceFile"


# instance fields
.field public final g:Lcom/google/gson/stream/JsonReader;

.field public final h:Lcom/google/api/client/json/gson/GsonFactory;

.field public final i:Ljava/util/ArrayList;

.field public j:Lcom/google/api/client/json/JsonToken;

.field public k:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/api/client/json/gson/GsonFactory;Lcom/google/gson/stream/JsonReader;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/google/api/client/json/gson/GsonParser;->i:Ljava/util/ArrayList;

    .line 10
    .line 11
    iput-object p1, p0, Lcom/google/api/client/json/gson/GsonParser;->h:Lcom/google/api/client/json/gson/GsonFactory;

    .line 12
    .line 13
    iput-object p2, p0, Lcom/google/api/client/json/gson/GsonParser;->g:Lcom/google/gson/stream/JsonReader;

    .line 14
    .line 15
    invoke-virtual {p1}, Lcom/google/api/client/json/gson/GsonFactory;->getReadLeniency()Z

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    if-eqz p1, :cond_0

    .line 20
    .line 21
    sget-object p1, Lcom/google/gson/Strictness;->c:Lcom/google/gson/Strictness;

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    sget-object p1, Lcom/google/gson/Strictness;->f:Lcom/google/gson/Strictness;

    .line 25
    .line 26
    :goto_0
    iput-object p1, p2, Lcom/google/gson/stream/JsonReader;->f:Lcom/google/gson/Strictness;

    .line 27
    .line 28
    return-void
.end method


# virtual methods
.method public final G()Lcom/google/api/client/json/JsonParser;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/api/client/json/gson/GsonParser;->j:Lcom/google/api/client/json/JsonToken;

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    iget-object v1, p0, Lcom/google/api/client/json/gson/GsonParser;->g:Lcom/google/gson/stream/JsonReader;

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    const/4 v2, 0x2

    .line 14
    if-eq v0, v2, :cond_0

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    invoke-virtual {v1}, Lcom/google/gson/stream/JsonReader;->h0()V

    .line 18
    .line 19
    .line 20
    const-string v0, "}"

    .line 21
    .line 22
    iput-object v0, p0, Lcom/google/api/client/json/gson/GsonParser;->k:Ljava/lang/String;

    .line 23
    .line 24
    sget-object v0, Lcom/google/api/client/json/JsonToken;->h:Lcom/google/api/client/json/JsonToken;

    .line 25
    .line 26
    iput-object v0, p0, Lcom/google/api/client/json/gson/GsonParser;->j:Lcom/google/api/client/json/JsonToken;

    .line 27
    .line 28
    return-object p0

    .line 29
    :cond_1
    invoke-virtual {v1}, Lcom/google/gson/stream/JsonReader;->h0()V

    .line 30
    .line 31
    .line 32
    const-string v0, "]"

    .line 33
    .line 34
    iput-object v0, p0, Lcom/google/api/client/json/gson/GsonParser;->k:Ljava/lang/String;

    .line 35
    .line 36
    sget-object v0, Lcom/google/api/client/json/JsonToken;->f:Lcom/google/api/client/json/JsonToken;

    .line 37
    .line 38
    iput-object v0, p0, Lcom/google/api/client/json/gson/GsonParser;->j:Lcom/google/api/client/json/JsonToken;

    .line 39
    .line 40
    :cond_2
    :goto_0
    return-object p0
.end method

.method public final T()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/api/client/json/gson/GsonParser;->j:Lcom/google/api/client/json/JsonToken;

    .line 2
    .line 3
    sget-object v1, Lcom/google/api/client/json/JsonToken;->k:Lcom/google/api/client/json/JsonToken;

    .line 4
    .line 5
    if-eq v0, v1, :cond_1

    .line 6
    .line 7
    sget-object v1, Lcom/google/api/client/json/JsonToken;->l:Lcom/google/api/client/json/JsonToken;

    .line 8
    .line 9
    if-ne v0, v1, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    new-instance v0, Ljava/io/IOException;

    .line 13
    .line 14
    const-string v1, "Token is not a number"

    .line 15
    .line 16
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    throw v0

    .line 20
    :cond_1
    :goto_0
    return-void
.end method

.method public final a()Ljava/math/BigInteger;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/api/client/json/gson/GsonParser;->T()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/math/BigInteger;

    .line 5
    .line 6
    iget-object v1, p0, Lcom/google/api/client/json/gson/GsonParser;->k:Ljava/lang/String;

    .line 7
    .line 8
    invoke-direct {v0, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    return-object v0
.end method

.method public final b()B
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/api/client/json/gson/GsonParser;->T()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/api/client/json/gson/GsonParser;->k:Ljava/lang/String;

    .line 5
    .line 6
    invoke-static {v0}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    return v0
.end method

.method public final close()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/api/client/json/gson/GsonParser;->g:Lcom/google/gson/stream/JsonReader;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/gson/stream/JsonReader;->close()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final e()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/api/client/json/gson/GsonParser;->i:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    return-object v0

    .line 11
    :cond_0
    const/4 v1, 0x1

    .line 12
    invoke-static {v1, v0}, Landroid/support/v4/media/a;->c(ILjava/util/ArrayList;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    check-cast v0, Ljava/lang/String;

    .line 17
    .line 18
    return-object v0
.end method

.method public final f()Lcom/google/api/client/json/JsonToken;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/api/client/json/gson/GsonParser;->j:Lcom/google/api/client/json/JsonToken;

    .line 2
    .line 3
    return-object v0
.end method

.method public final i()Ljava/math/BigDecimal;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/api/client/json/gson/GsonParser;->T()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/math/BigDecimal;

    .line 5
    .line 6
    iget-object v1, p0, Lcom/google/api/client/json/gson/GsonParser;->k:Ljava/lang/String;

    .line 7
    .line 8
    invoke-direct {v0, v1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    return-object v0
.end method

.method public final j()D
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/api/client/json/gson/GsonParser;->T()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/api/client/json/gson/GsonParser;->k:Ljava/lang/String;

    .line 5
    .line 6
    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 7
    .line 8
    .line 9
    move-result-wide v0

    .line 10
    return-wide v0
.end method

.method public final k()Lcom/google/api/client/json/JsonFactory;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/api/client/json/gson/GsonParser;->h:Lcom/google/api/client/json/gson/GsonFactory;

    .line 2
    .line 3
    return-object v0
.end method

.method public final l()F
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/api/client/json/gson/GsonParser;->T()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/api/client/json/gson/GsonParser;->k:Ljava/lang/String;

    .line 5
    .line 6
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    return v0
.end method

.method public final m()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/api/client/json/gson/GsonParser;->T()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/api/client/json/gson/GsonParser;->k:Ljava/lang/String;

    .line 5
    .line 6
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    return v0
.end method

.method public final n()J
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/api/client/json/gson/GsonParser;->T()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/api/client/json/gson/GsonParser;->k:Ljava/lang/String;

    .line 5
    .line 6
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 7
    .line 8
    .line 9
    move-result-wide v0

    .line 10
    return-wide v0
.end method

.method public final o()S
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/api/client/json/gson/GsonParser;->T()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/api/client/json/gson/GsonParser;->k:Ljava/lang/String;

    .line 5
    .line 6
    invoke-static {v0}, Ljava/lang/Short;->parseShort(Ljava/lang/String;)S

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    return v0
.end method

.method public final u()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/api/client/json/gson/GsonParser;->k:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final v()Lcom/google/api/client/json/JsonToken;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/api/client/json/gson/GsonParser;->j:Lcom/google/api/client/json/JsonToken;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    iget-object v2, p0, Lcom/google/api/client/json/gson/GsonParser;->i:Ljava/util/ArrayList;

    .line 5
    .line 6
    iget-object v3, p0, Lcom/google/api/client/json/gson/GsonParser;->g:Lcom/google/gson/stream/JsonReader;

    .line 7
    .line 8
    if-eqz v0, :cond_2

    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    const/4 v4, 0x2

    .line 17
    if-eq v0, v4, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    invoke-virtual {v3}, Lcom/google/gson/stream/JsonReader;->b()V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_1
    invoke-virtual {v3}, Lcom/google/gson/stream/JsonReader;->a()V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    :cond_2
    :goto_0
    :try_start_0
    invoke-virtual {v3}, Lcom/google/gson/stream/JsonReader;->W()Lcom/google/gson/stream/JsonToken;

    .line 34
    .line 35
    .line 36
    move-result-object v0
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    .line 37
    goto :goto_1

    .line 38
    :catch_0
    sget-object v0, Lcom/google/gson/stream/JsonToken;->n:Lcom/google/gson/stream/JsonToken;

    .line 39
    .line 40
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    packed-switch v0, :pswitch_data_0

    .line 45
    .line 46
    .line 47
    iput-object v1, p0, Lcom/google/api/client/json/gson/GsonParser;->k:Ljava/lang/String;

    .line 48
    .line 49
    iput-object v1, p0, Lcom/google/api/client/json/gson/GsonParser;->j:Lcom/google/api/client/json/JsonToken;

    .line 50
    .line 51
    goto/16 :goto_3

    .line 52
    .line 53
    :pswitch_0
    const-string v0, "null"

    .line 54
    .line 55
    iput-object v0, p0, Lcom/google/api/client/json/gson/GsonParser;->k:Ljava/lang/String;

    .line 56
    .line 57
    sget-object v0, Lcom/google/api/client/json/JsonToken;->o:Lcom/google/api/client/json/JsonToken;

    .line 58
    .line 59
    iput-object v0, p0, Lcom/google/api/client/json/gson/GsonParser;->j:Lcom/google/api/client/json/JsonToken;

    .line 60
    .line 61
    invoke-virtual {v3}, Lcom/google/gson/stream/JsonReader;->L()V

    .line 62
    .line 63
    .line 64
    goto/16 :goto_3

    .line 65
    .line 66
    :pswitch_1
    invoke-virtual {v3}, Lcom/google/gson/stream/JsonReader;->v()Z

    .line 67
    .line 68
    .line 69
    move-result v0

    .line 70
    if-eqz v0, :cond_3

    .line 71
    .line 72
    const-string v0, "true"

    .line 73
    .line 74
    iput-object v0, p0, Lcom/google/api/client/json/gson/GsonParser;->k:Ljava/lang/String;

    .line 75
    .line 76
    sget-object v0, Lcom/google/api/client/json/JsonToken;->m:Lcom/google/api/client/json/JsonToken;

    .line 77
    .line 78
    iput-object v0, p0, Lcom/google/api/client/json/gson/GsonParser;->j:Lcom/google/api/client/json/JsonToken;

    .line 79
    .line 80
    goto/16 :goto_3

    .line 81
    .line 82
    :cond_3
    const-string v0, "false"

    .line 83
    .line 84
    iput-object v0, p0, Lcom/google/api/client/json/gson/GsonParser;->k:Ljava/lang/String;

    .line 85
    .line 86
    sget-object v0, Lcom/google/api/client/json/JsonToken;->n:Lcom/google/api/client/json/JsonToken;

    .line 87
    .line 88
    iput-object v0, p0, Lcom/google/api/client/json/gson/GsonParser;->j:Lcom/google/api/client/json/JsonToken;

    .line 89
    .line 90
    goto/16 :goto_3

    .line 91
    .line 92
    :pswitch_2
    invoke-virtual {v3}, Lcom/google/gson/stream/JsonReader;->S()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    iput-object v0, p0, Lcom/google/api/client/json/gson/GsonParser;->k:Ljava/lang/String;

    .line 97
    .line 98
    const/16 v1, 0x2e

    .line 99
    .line 100
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    .line 101
    .line 102
    .line 103
    move-result v0

    .line 104
    const/4 v1, -0x1

    .line 105
    if-ne v0, v1, :cond_4

    .line 106
    .line 107
    sget-object v0, Lcom/google/api/client/json/JsonToken;->k:Lcom/google/api/client/json/JsonToken;

    .line 108
    .line 109
    goto :goto_2

    .line 110
    :cond_4
    sget-object v0, Lcom/google/api/client/json/JsonToken;->l:Lcom/google/api/client/json/JsonToken;

    .line 111
    .line 112
    :goto_2
    iput-object v0, p0, Lcom/google/api/client/json/gson/GsonParser;->j:Lcom/google/api/client/json/JsonToken;

    .line 113
    .line 114
    goto :goto_3

    .line 115
    :pswitch_3
    invoke-virtual {v3}, Lcom/google/gson/stream/JsonReader;->S()Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v0

    .line 119
    iput-object v0, p0, Lcom/google/api/client/json/gson/GsonParser;->k:Ljava/lang/String;

    .line 120
    .line 121
    sget-object v0, Lcom/google/api/client/json/JsonToken;->j:Lcom/google/api/client/json/JsonToken;

    .line 122
    .line 123
    iput-object v0, p0, Lcom/google/api/client/json/gson/GsonParser;->j:Lcom/google/api/client/json/JsonToken;

    .line 124
    .line 125
    goto :goto_3

    .line 126
    :pswitch_4
    invoke-virtual {v3}, Lcom/google/gson/stream/JsonReader;->F()Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v0

    .line 130
    iput-object v0, p0, Lcom/google/api/client/json/gson/GsonParser;->k:Ljava/lang/String;

    .line 131
    .line 132
    sget-object v0, Lcom/google/api/client/json/JsonToken;->i:Lcom/google/api/client/json/JsonToken;

    .line 133
    .line 134
    iput-object v0, p0, Lcom/google/api/client/json/gson/GsonParser;->j:Lcom/google/api/client/json/JsonToken;

    .line 135
    .line 136
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 137
    .line 138
    .line 139
    move-result v0

    .line 140
    add-int/lit8 v0, v0, -0x1

    .line 141
    .line 142
    iget-object v1, p0, Lcom/google/api/client/json/gson/GsonParser;->k:Ljava/lang/String;

    .line 143
    .line 144
    invoke-virtual {v2, v0, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 145
    .line 146
    .line 147
    goto :goto_3

    .line 148
    :pswitch_5
    const-string v0, "}"

    .line 149
    .line 150
    iput-object v0, p0, Lcom/google/api/client/json/gson/GsonParser;->k:Ljava/lang/String;

    .line 151
    .line 152
    sget-object v0, Lcom/google/api/client/json/JsonToken;->h:Lcom/google/api/client/json/JsonToken;

    .line 153
    .line 154
    iput-object v0, p0, Lcom/google/api/client/json/gson/GsonParser;->j:Lcom/google/api/client/json/JsonToken;

    .line 155
    .line 156
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 157
    .line 158
    .line 159
    move-result v0

    .line 160
    add-int/lit8 v0, v0, -0x1

    .line 161
    .line 162
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 163
    .line 164
    .line 165
    invoke-virtual {v3}, Lcom/google/gson/stream/JsonReader;->i()V

    .line 166
    .line 167
    .line 168
    goto :goto_3

    .line 169
    :pswitch_6
    const-string v0, "{"

    .line 170
    .line 171
    iput-object v0, p0, Lcom/google/api/client/json/gson/GsonParser;->k:Ljava/lang/String;

    .line 172
    .line 173
    sget-object v0, Lcom/google/api/client/json/JsonToken;->g:Lcom/google/api/client/json/JsonToken;

    .line 174
    .line 175
    iput-object v0, p0, Lcom/google/api/client/json/gson/GsonParser;->j:Lcom/google/api/client/json/JsonToken;

    .line 176
    .line 177
    goto :goto_3

    .line 178
    :pswitch_7
    const-string v0, "]"

    .line 179
    .line 180
    iput-object v0, p0, Lcom/google/api/client/json/gson/GsonParser;->k:Ljava/lang/String;

    .line 181
    .line 182
    sget-object v0, Lcom/google/api/client/json/JsonToken;->f:Lcom/google/api/client/json/JsonToken;

    .line 183
    .line 184
    iput-object v0, p0, Lcom/google/api/client/json/gson/GsonParser;->j:Lcom/google/api/client/json/JsonToken;

    .line 185
    .line 186
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 187
    .line 188
    .line 189
    move-result v0

    .line 190
    add-int/lit8 v0, v0, -0x1

    .line 191
    .line 192
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 193
    .line 194
    .line 195
    invoke-virtual {v3}, Lcom/google/gson/stream/JsonReader;->f()V

    .line 196
    .line 197
    .line 198
    goto :goto_3

    .line 199
    :pswitch_8
    const-string v0, "["

    .line 200
    .line 201
    iput-object v0, p0, Lcom/google/api/client/json/gson/GsonParser;->k:Ljava/lang/String;

    .line 202
    .line 203
    sget-object v0, Lcom/google/api/client/json/JsonToken;->c:Lcom/google/api/client/json/JsonToken;

    .line 204
    .line 205
    iput-object v0, p0, Lcom/google/api/client/json/gson/GsonParser;->j:Lcom/google/api/client/json/JsonToken;

    .line 206
    .line 207
    :goto_3
    iget-object v0, p0, Lcom/google/api/client/json/gson/GsonParser;->j:Lcom/google/api/client/json/JsonToken;

    .line 208
    .line 209
    return-object v0

    .line 210
    nop

    .line 211
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
