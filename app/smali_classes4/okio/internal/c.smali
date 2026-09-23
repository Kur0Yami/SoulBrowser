.class public final synthetic Lokio/internal/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic c:I

.field public final synthetic f:Lkotlin/jvm/internal/Ref$ObjectRef;

.field public final synthetic g:Lkotlin/jvm/internal/Ref$ObjectRef;

.field public final synthetic h:Lkotlin/jvm/internal/Ref$ObjectRef;

.field public final synthetic i:Lokio/BufferedSource;


# direct methods
.method public synthetic constructor <init>(Lkotlin/jvm/internal/Ref$ObjectRef;Lokio/RealBufferedSource;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    iput v0, p0, Lokio/internal/c;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lokio/internal/c;->f:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object p2, p0, Lokio/internal/c;->i:Lokio/BufferedSource;

    iput-object p3, p0, Lokio/internal/c;->g:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object p4, p0, Lokio/internal/c;->h:Lkotlin/jvm/internal/Ref$ObjectRef;

    return-void
.end method

.method public synthetic constructor <init>(Lokio/BufferedSource;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;)V
    .locals 1

    .line 2
    const/4 v0, 0x0

    iput v0, p0, Lokio/internal/c;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lokio/internal/c;->i:Lokio/BufferedSource;

    iput-object p2, p0, Lokio/internal/c;->f:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object p3, p0, Lokio/internal/c;->g:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object p4, p0, Lokio/internal/c;->h:Lkotlin/jvm/internal/Ref$ObjectRef;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    .line 1
    iget v0, p0, Lokio/internal/c;->c:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lokio/internal/c;->i:Lokio/BufferedSource;

    .line 7
    .line 8
    check-cast v0, Lokio/RealBufferedSource;

    .line 9
    .line 10
    check-cast p1, Ljava/lang/Integer;

    .line 11
    .line 12
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    check-cast p2, Ljava/lang/Long;

    .line 17
    .line 18
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    .line 19
    .line 20
    .line 21
    move-result-wide v1

    .line 22
    const/4 p2, 0x1

    .line 23
    if-ne p1, p2, :cond_2

    .line 24
    .line 25
    iget-object p1, p0, Lokio/internal/c;->f:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 26
    .line 27
    iget-object p2, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 28
    .line 29
    if-nez p2, :cond_1

    .line 30
    .line 31
    const-wide/16 v3, 0x18

    .line 32
    .line 33
    cmp-long p2, v1, v3

    .line 34
    .line 35
    if-nez p2, :cond_0

    .line 36
    .line 37
    invoke-virtual {v0}, Lokio/RealBufferedSource;->b()J

    .line 38
    .line 39
    .line 40
    move-result-wide v1

    .line 41
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 42
    .line 43
    .line 44
    move-result-object p2

    .line 45
    iput-object p2, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 46
    .line 47
    invoke-virtual {v0}, Lokio/RealBufferedSource;->b()J

    .line 48
    .line 49
    .line 50
    move-result-wide p1

    .line 51
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    iget-object p2, p0, Lokio/internal/c;->g:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 56
    .line 57
    iput-object p1, p2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 58
    .line 59
    invoke-virtual {v0}, Lokio/RealBufferedSource;->b()J

    .line 60
    .line 61
    .line 62
    move-result-wide p1

    .line 63
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    iget-object p2, p0, Lokio/internal/c;->h:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 68
    .line 69
    iput-object p1, p2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_0
    new-instance p1, Ljava/io/IOException;

    .line 73
    .line 74
    const-string p2, "bad zip: NTFS extra attribute tag 0x0001 size != 24"

    .line 75
    .line 76
    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    throw p1

    .line 80
    :cond_1
    new-instance p1, Ljava/io/IOException;

    .line 81
    .line 82
    const-string p2, "bad zip: NTFS extra attribute tag 0x0001 repeated"

    .line 83
    .line 84
    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    throw p1

    .line 88
    :cond_2
    :goto_0
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 89
    .line 90
    return-object p1

    .line 91
    :pswitch_0
    check-cast p1, Ljava/lang/Integer;

    .line 92
    .line 93
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 94
    .line 95
    .line 96
    move-result p1

    .line 97
    check-cast p2, Ljava/lang/Long;

    .line 98
    .line 99
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    .line 100
    .line 101
    .line 102
    move-result-wide v0

    .line 103
    const/16 p2, 0x5455

    .line 104
    .line 105
    if-ne p1, p2, :cond_d

    .line 106
    .line 107
    const-wide/16 p1, 0x1

    .line 108
    .line 109
    cmp-long v2, v0, p1

    .line 110
    .line 111
    const-string v3, "bad zip: extended timestamp extra too short"

    .line 112
    .line 113
    if-ltz v2, :cond_c

    .line 114
    .line 115
    iget-object v2, p0, Lokio/internal/c;->i:Lokio/BufferedSource;

    .line 116
    .line 117
    invoke-interface {v2}, Lokio/BufferedSource;->readByte()B

    .line 118
    .line 119
    .line 120
    move-result v4

    .line 121
    and-int/lit8 v5, v4, 0x1

    .line 122
    .line 123
    const/4 v6, 0x0

    .line 124
    const/4 v7, 0x1

    .line 125
    if-ne v5, v7, :cond_3

    .line 126
    .line 127
    move v5, v7

    .line 128
    goto :goto_1

    .line 129
    :cond_3
    move v5, v6

    .line 130
    :goto_1
    and-int/lit8 v8, v4, 0x2

    .line 131
    .line 132
    const/4 v9, 0x2

    .line 133
    if-ne v8, v9, :cond_4

    .line 134
    .line 135
    move v8, v7

    .line 136
    goto :goto_2

    .line 137
    :cond_4
    move v8, v6

    .line 138
    :goto_2
    const/4 v9, 0x4

    .line 139
    and-int/2addr v4, v9

    .line 140
    if-ne v4, v9, :cond_5

    .line 141
    .line 142
    move v6, v7

    .line 143
    :cond_5
    if-eqz v5, :cond_6

    .line 144
    .line 145
    const-wide/16 p1, 0x5

    .line 146
    .line 147
    :cond_6
    const-wide/16 v9, 0x4

    .line 148
    .line 149
    if-eqz v8, :cond_7

    .line 150
    .line 151
    add-long/2addr p1, v9

    .line 152
    :cond_7
    if-eqz v6, :cond_8

    .line 153
    .line 154
    add-long/2addr p1, v9

    .line 155
    :cond_8
    cmp-long p1, v0, p1

    .line 156
    .line 157
    if-ltz p1, :cond_b

    .line 158
    .line 159
    if-eqz v5, :cond_9

    .line 160
    .line 161
    invoke-interface {v2}, Lokio/BufferedSource;->l0()I

    .line 162
    .line 163
    .line 164
    move-result p1

    .line 165
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 166
    .line 167
    .line 168
    move-result-object p1

    .line 169
    iget-object p2, p0, Lokio/internal/c;->f:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 170
    .line 171
    iput-object p1, p2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 172
    .line 173
    :cond_9
    if-eqz v8, :cond_a

    .line 174
    .line 175
    invoke-interface {v2}, Lokio/BufferedSource;->l0()I

    .line 176
    .line 177
    .line 178
    move-result p1

    .line 179
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 180
    .line 181
    .line 182
    move-result-object p1

    .line 183
    iget-object p2, p0, Lokio/internal/c;->g:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 184
    .line 185
    iput-object p1, p2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 186
    .line 187
    :cond_a
    if-eqz v6, :cond_d

    .line 188
    .line 189
    invoke-interface {v2}, Lokio/BufferedSource;->l0()I

    .line 190
    .line 191
    .line 192
    move-result p1

    .line 193
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 194
    .line 195
    .line 196
    move-result-object p1

    .line 197
    iget-object p2, p0, Lokio/internal/c;->h:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 198
    .line 199
    iput-object p1, p2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 200
    .line 201
    goto :goto_3

    .line 202
    :cond_b
    new-instance p1, Ljava/io/IOException;

    .line 203
    .line 204
    invoke-direct {p1, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 205
    .line 206
    .line 207
    throw p1

    .line 208
    :cond_c
    new-instance p1, Ljava/io/IOException;

    .line 209
    .line 210
    invoke-direct {p1, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 211
    .line 212
    .line 213
    throw p1

    .line 214
    :cond_d
    :goto_3
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 215
    .line 216
    return-object p1

    .line 217
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
