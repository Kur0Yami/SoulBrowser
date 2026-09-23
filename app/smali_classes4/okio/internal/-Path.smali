.class public final Lokio/internal/-Path;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0002\n\u0000\u00a8\u0006\u0000"
    }
    d2 = {
        "okio"
    }
    k = 0x2
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation

.annotation build Lkotlin/jvm/JvmName;
    name = "-Path"
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nPath.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Path.kt\nokio/internal/-Path\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,405:1\n53#1,22:406\n203#1:432\n203#1:433\n1563#2:428\n1634#2,3:429\n*S KotlinDebug\n*F\n+ 1 Path.kt\nokio/internal/-Path\n*L\n47#1:406,22\n193#1:432\n198#1:433\n47#1:428\n47#1:429,3\n*E\n"
    }
.end annotation


# static fields
.field public static final a:Lokio/ByteString;

.field public static final b:Lokio/ByteString;

.field public static final c:Lokio/ByteString;

.field public static final d:Lokio/ByteString;

.field public static final e:Lokio/ByteString;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Lokio/ByteString;->h:Lokio/ByteString;

    .line 2
    .line 3
    const-string v0, "/"

    .line 4
    .line 5
    invoke-static {v0}, Lokio/ByteString$Companion;->b(Ljava/lang/String;)Lokio/ByteString;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    sput-object v0, Lokio/internal/-Path;->a:Lokio/ByteString;

    .line 10
    .line 11
    const-string v0, "\\"

    .line 12
    .line 13
    invoke-static {v0}, Lokio/ByteString$Companion;->b(Ljava/lang/String;)Lokio/ByteString;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    sput-object v0, Lokio/internal/-Path;->b:Lokio/ByteString;

    .line 18
    .line 19
    const-string v0, "/\\"

    .line 20
    .line 21
    invoke-static {v0}, Lokio/ByteString$Companion;->b(Ljava/lang/String;)Lokio/ByteString;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    sput-object v0, Lokio/internal/-Path;->c:Lokio/ByteString;

    .line 26
    .line 27
    const-string v0, "."

    .line 28
    .line 29
    invoke-static {v0}, Lokio/ByteString$Companion;->b(Ljava/lang/String;)Lokio/ByteString;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    sput-object v0, Lokio/internal/-Path;->d:Lokio/ByteString;

    .line 34
    .line 35
    const-string v0, ".."

    .line 36
    .line 37
    invoke-static {v0}, Lokio/ByteString$Companion;->b(Ljava/lang/String;)Lokio/ByteString;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    sput-object v0, Lokio/internal/-Path;->e:Lokio/ByteString;

    .line 42
    .line 43
    return-void
.end method

.method public static final a(Lokio/Path;)I
    .locals 6

    .line 1
    iget-object p0, p0, Lokio/Path;->c:Lokio/ByteString;

    .line 2
    .line 3
    invoke-virtual {p0}, Lokio/ByteString;->d()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, -0x1

    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    goto :goto_2

    .line 11
    :cond_0
    const/4 v0, 0x0

    .line 12
    invoke-virtual {p0, v0}, Lokio/ByteString;->i(I)B

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    const/16 v3, 0x2f

    .line 17
    .line 18
    const/4 v4, 0x1

    .line 19
    if-ne v2, v3, :cond_1

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_1
    invoke-virtual {p0, v0}, Lokio/ByteString;->i(I)B

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    const/16 v3, 0x5c

    .line 27
    .line 28
    const/4 v5, 0x2

    .line 29
    if-ne v2, v3, :cond_4

    .line 30
    .line 31
    invoke-virtual {p0}, Lokio/ByteString;->d()I

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    if-le v0, v5, :cond_3

    .line 36
    .line 37
    invoke-virtual {p0, v4}, Lokio/ByteString;->i(I)B

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    if-ne v0, v3, :cond_3

    .line 42
    .line 43
    const-string v0, "other"

    .line 44
    .line 45
    sget-object v2, Lokio/internal/-Path;->b:Lokio/ByteString;

    .line 46
    .line 47
    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v2}, Lokio/ByteString;->h()[B

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    invoke-virtual {p0, v0, v5}, Lokio/ByteString;->f([BI)I

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    if-ne v0, v1, :cond_2

    .line 59
    .line 60
    invoke-virtual {p0}, Lokio/ByteString;->d()I

    .line 61
    .line 62
    .line 63
    move-result p0

    .line 64
    return p0

    .line 65
    :cond_2
    return v0

    .line 66
    :cond_3
    :goto_0
    return v4

    .line 67
    :cond_4
    invoke-virtual {p0}, Lokio/ByteString;->d()I

    .line 68
    .line 69
    .line 70
    move-result v2

    .line 71
    if-le v2, v5, :cond_6

    .line 72
    .line 73
    invoke-virtual {p0, v4}, Lokio/ByteString;->i(I)B

    .line 74
    .line 75
    .line 76
    move-result v2

    .line 77
    const/16 v4, 0x3a

    .line 78
    .line 79
    if-ne v2, v4, :cond_6

    .line 80
    .line 81
    invoke-virtual {p0, v5}, Lokio/ByteString;->i(I)B

    .line 82
    .line 83
    .line 84
    move-result v2

    .line 85
    if-ne v2, v3, :cond_6

    .line 86
    .line 87
    invoke-virtual {p0, v0}, Lokio/ByteString;->i(I)B

    .line 88
    .line 89
    .line 90
    move-result p0

    .line 91
    int-to-char p0, p0

    .line 92
    const/16 v0, 0x61

    .line 93
    .line 94
    if-gt v0, p0, :cond_5

    .line 95
    .line 96
    const/16 v0, 0x7b

    .line 97
    .line 98
    if-ge p0, v0, :cond_5

    .line 99
    .line 100
    goto :goto_1

    .line 101
    :cond_5
    const/16 v0, 0x41

    .line 102
    .line 103
    if-gt v0, p0, :cond_6

    .line 104
    .line 105
    const/16 v0, 0x5b

    .line 106
    .line 107
    if-ge p0, v0, :cond_6

    .line 108
    .line 109
    :goto_1
    const/4 p0, 0x3

    .line 110
    return p0

    .line 111
    :cond_6
    :goto_2
    return v1
.end method

.method public static final b(Lokio/Path;Lokio/Path;Z)Lokio/Path;
    .locals 6

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "child"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    invoke-static {p1}, Lokio/internal/-Path;->a(Lokio/Path;)I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    const/4 v1, -0x1

    .line 19
    if-eq v0, v1, :cond_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    invoke-virtual {p1}, Lokio/Path;->d()Ljava/lang/Character;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    if-eqz v0, :cond_1

    .line 27
    .line 28
    :goto_0
    return-object p1

    .line 29
    :cond_1
    invoke-static {p0}, Lokio/internal/-Path;->c(Lokio/Path;)Lokio/ByteString;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    if-nez v0, :cond_2

    .line 34
    .line 35
    invoke-static {p1}, Lokio/internal/-Path;->c(Lokio/Path;)Lokio/ByteString;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    if-nez v0, :cond_2

    .line 40
    .line 41
    sget-object v0, Lokio/Path;->f:Ljava/lang/String;

    .line 42
    .line 43
    invoke-static {v0}, Lokio/internal/-Path;->f(Ljava/lang/String;)Lokio/ByteString;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    :cond_2
    new-instance v1, Lokio/Buffer;

    .line 48
    .line 49
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 50
    .line 51
    .line 52
    iget-object p0, p0, Lokio/Path;->c:Lokio/ByteString;

    .line 53
    .line 54
    invoke-virtual {v1, p0}, Lokio/Buffer;->n(Lokio/ByteString;)V

    .line 55
    .line 56
    .line 57
    iget-wide v2, v1, Lokio/Buffer;->f:J

    .line 58
    .line 59
    const-wide/16 v4, 0x0

    .line 60
    .line 61
    cmp-long p0, v2, v4

    .line 62
    .line 63
    if-lez p0, :cond_3

    .line 64
    .line 65
    invoke-virtual {v1, v0}, Lokio/Buffer;->n(Lokio/ByteString;)V

    .line 66
    .line 67
    .line 68
    :cond_3
    iget-object p0, p1, Lokio/Path;->c:Lokio/ByteString;

    .line 69
    .line 70
    invoke-virtual {v1, p0}, Lokio/Buffer;->n(Lokio/ByteString;)V

    .line 71
    .line 72
    .line 73
    invoke-static {v1, p2}, Lokio/internal/-Path;->d(Lokio/Buffer;Z)Lokio/Path;

    .line 74
    .line 75
    .line 76
    move-result-object p0

    .line 77
    return-object p0
.end method

.method public static final c(Lokio/Path;)Lokio/ByteString;
    .locals 3

    .line 1
    iget-object v0, p0, Lokio/Path;->c:Lokio/ByteString;

    .line 2
    .line 3
    sget-object v1, Lokio/internal/-Path;->a:Lokio/ByteString;

    .line 4
    .line 5
    invoke-static {v0, v1}, Lokio/ByteString;->g(Lokio/ByteString;Lokio/ByteString;)I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v2, -0x1

    .line 10
    if-eq v0, v2, :cond_0

    .line 11
    .line 12
    return-object v1

    .line 13
    :cond_0
    iget-object p0, p0, Lokio/Path;->c:Lokio/ByteString;

    .line 14
    .line 15
    sget-object v0, Lokio/internal/-Path;->b:Lokio/ByteString;

    .line 16
    .line 17
    invoke-static {p0, v0}, Lokio/ByteString;->g(Lokio/ByteString;Lokio/ByteString;)I

    .line 18
    .line 19
    .line 20
    move-result p0

    .line 21
    if-eq p0, v2, :cond_1

    .line 22
    .line 23
    return-object v0

    .line 24
    :cond_1
    const/4 p0, 0x0

    .line 25
    return-object p0
.end method

.method public static final d(Lokio/Buffer;Z)Lokio/Path;
    .locals 31

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const-string v1, "<this>"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    new-instance v2, Lokio/Buffer;

    .line 9
    .line 10
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 11
    .line 12
    .line 13
    const/4 v3, 0x0

    .line 14
    const/4 v4, 0x0

    .line 15
    move v5, v4

    .line 16
    :goto_0
    sget-object v6, Lokio/internal/-Path;->a:Lokio/ByteString;

    .line 17
    .line 18
    const-string v7, "bytes"

    .line 19
    .line 20
    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v6}, Lokio/ByteString;->d()I

    .line 24
    .line 25
    .line 26
    move-result v8

    .line 27
    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    const-string v9, "byteCount == 0"

    .line 31
    .line 32
    const-wide/16 v15, -0x1

    .line 33
    .line 34
    if-gez v8, :cond_0

    .line 35
    .line 36
    move-object/from16 v29, v9

    .line 37
    .line 38
    move-wide/from16 v27, v15

    .line 39
    .line 40
    const-wide/16 v23, 0x0

    .line 41
    .line 42
    const-wide/16 v25, 0x1

    .line 43
    .line 44
    :goto_1
    move/from16 v16, v4

    .line 45
    .line 46
    goto/16 :goto_f

    .line 47
    .line 48
    :cond_0
    const-wide/16 v23, 0x0

    .line 49
    .line 50
    int-to-long v12, v8

    .line 51
    const-wide/16 v25, 0x1

    .line 52
    .line 53
    iget-wide v10, v0, Lokio/Buffer;->f:J

    .line 54
    .line 55
    cmp-long v10, v12, v10

    .line 56
    .line 57
    if-lez v10, :cond_1

    .line 58
    .line 59
    :goto_2
    move-object/from16 v29, v9

    .line 60
    .line 61
    move-wide/from16 v27, v15

    .line 62
    .line 63
    goto :goto_1

    .line 64
    :cond_1
    invoke-virtual {v6}, Lokio/ByteString;->d()I

    .line 65
    .line 66
    .line 67
    move-result v10

    .line 68
    if-le v8, v10, :cond_2

    .line 69
    .line 70
    goto :goto_2

    .line 71
    :cond_2
    if-nez v8, :cond_3

    .line 72
    .line 73
    move/from16 v16, v4

    .line 74
    .line 75
    goto/16 :goto_e

    .line 76
    .line 77
    :cond_3
    sget-object v10, Lokio/internal/-Buffer;->a:[B

    .line 78
    .line 79
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {v6}, Lokio/ByteString;->d()I

    .line 86
    .line 87
    .line 88
    move-result v10

    .line 89
    int-to-long v10, v10

    .line 90
    move-wide/from16 v27, v15

    .line 91
    .line 92
    int-to-long v14, v4

    .line 93
    move-wide/from16 v17, v10

    .line 94
    .line 95
    move-wide/from16 v21, v12

    .line 96
    .line 97
    move-wide/from16 v19, v14

    .line 98
    .line 99
    invoke-static/range {v17 .. v22}, Lokio/-SegmentedByteString;->b(JJJ)V

    .line 100
    .line 101
    .line 102
    if-lez v8, :cond_3b

    .line 103
    .line 104
    iget-wide v10, v0, Lokio/Buffer;->f:J

    .line 105
    .line 106
    cmp-long v12, v25, v10

    .line 107
    .line 108
    if-lez v12, :cond_4

    .line 109
    .line 110
    move-wide v12, v10

    .line 111
    goto :goto_3

    .line 112
    :cond_4
    move-wide/from16 v12, v25

    .line 113
    .line 114
    :goto_3
    cmp-long v14, v23, v12

    .line 115
    .line 116
    if-nez v14, :cond_6

    .line 117
    .line 118
    :goto_4
    move/from16 v16, v4

    .line 119
    .line 120
    :cond_5
    move-object/from16 v29, v9

    .line 121
    .line 122
    goto/16 :goto_c

    .line 123
    .line 124
    :cond_6
    iget-object v14, v0, Lokio/Buffer;->c:Lokio/Segment;

    .line 125
    .line 126
    if-nez v14, :cond_7

    .line 127
    .line 128
    goto :goto_4

    .line 129
    :cond_7
    cmp-long v15, v10, v23

    .line 130
    .line 131
    if-gez v15, :cond_b

    .line 132
    .line 133
    :goto_5
    cmp-long v15, v10, v23

    .line 134
    .line 135
    if-lez v15, :cond_8

    .line 136
    .line 137
    iget-object v14, v14, Lokio/Segment;->g:Lokio/Segment;

    .line 138
    .line 139
    invoke-static {v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 140
    .line 141
    .line 142
    iget v15, v14, Lokio/Segment;->c:I

    .line 143
    .line 144
    move/from16 v16, v4

    .line 145
    .line 146
    iget v4, v14, Lokio/Segment;->b:I

    .line 147
    .line 148
    sub-int/2addr v15, v4

    .line 149
    move-wide/from16 v17, v10

    .line 150
    .line 151
    int-to-long v10, v15

    .line 152
    sub-long v10, v17, v10

    .line 153
    .line 154
    move/from16 v4, v16

    .line 155
    .line 156
    goto :goto_5

    .line 157
    :cond_8
    move/from16 v16, v4

    .line 158
    .line 159
    move-wide/from16 v17, v10

    .line 160
    .line 161
    invoke-virtual {v6}, Lokio/ByteString;->h()[B

    .line 162
    .line 163
    .line 164
    move-result-object v4

    .line 165
    aget-byte v6, v4, v16

    .line 166
    .line 167
    iget-wide v10, v0, Lokio/Buffer;->f:J

    .line 168
    .line 169
    sub-long v10, v10, v21

    .line 170
    .line 171
    add-long v10, v10, v25

    .line 172
    .line 173
    invoke-static {v12, v13, v10, v11}, Ljava/lang/Math;->min(JJ)J

    .line 174
    .line 175
    .line 176
    move-result-wide v10

    .line 177
    move-wide/from16 v12, v23

    .line 178
    .line 179
    :goto_6
    cmp-long v15, v17, v10

    .line 180
    .line 181
    if-gez v15, :cond_5

    .line 182
    .line 183
    iget-object v15, v14, Lokio/Segment;->a:[B

    .line 184
    .line 185
    move-wide/from16 v19, v10

    .line 186
    .line 187
    iget v10, v14, Lokio/Segment;->c:I

    .line 188
    .line 189
    iget v11, v14, Lokio/Segment;->b:I

    .line 190
    .line 191
    move-wide/from16 v21, v12

    .line 192
    .line 193
    int-to-long v11, v11

    .line 194
    add-long v11, v11, v19

    .line 195
    .line 196
    sub-long v11, v11, v17

    .line 197
    .line 198
    move-object/from16 v29, v9

    .line 199
    .line 200
    int-to-long v9, v10

    .line 201
    invoke-static {v9, v10, v11, v12}, Ljava/lang/Math;->min(JJ)J

    .line 202
    .line 203
    .line 204
    move-result-wide v9

    .line 205
    long-to-int v9, v9

    .line 206
    iget v10, v14, Lokio/Segment;->b:I

    .line 207
    .line 208
    int-to-long v10, v10

    .line 209
    add-long v10, v10, v21

    .line 210
    .line 211
    sub-long v10, v10, v17

    .line 212
    .line 213
    long-to-int v10, v10

    .line 214
    :goto_7
    if-ge v10, v9, :cond_a

    .line 215
    .line 216
    aget-byte v11, v15, v10

    .line 217
    .line 218
    if-ne v11, v6, :cond_9

    .line 219
    .line 220
    add-int/lit8 v11, v10, 0x1

    .line 221
    .line 222
    const/4 v12, 0x1

    .line 223
    invoke-static {v14, v11, v4, v12, v8}, Lokio/internal/-Buffer;->a(Lokio/Segment;I[BII)Z

    .line 224
    .line 225
    .line 226
    move-result v11

    .line 227
    if-eqz v11, :cond_9

    .line 228
    .line 229
    :goto_8
    iget v4, v14, Lokio/Segment;->b:I

    .line 230
    .line 231
    sub-int/2addr v10, v4

    .line 232
    int-to-long v8, v10

    .line 233
    add-long v8, v8, v17

    .line 234
    .line 235
    goto/16 :goto_d

    .line 236
    .line 237
    :cond_9
    add-int/lit8 v10, v10, 0x1

    .line 238
    .line 239
    goto :goto_7

    .line 240
    :cond_a
    iget v9, v14, Lokio/Segment;->c:I

    .line 241
    .line 242
    iget v10, v14, Lokio/Segment;->b:I

    .line 243
    .line 244
    sub-int/2addr v9, v10

    .line 245
    int-to-long v9, v9

    .line 246
    add-long v12, v17, v9

    .line 247
    .line 248
    iget-object v14, v14, Lokio/Segment;->f:Lokio/Segment;

    .line 249
    .line 250
    invoke-static {v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 251
    .line 252
    .line 253
    move-wide/from16 v17, v12

    .line 254
    .line 255
    move-wide/from16 v10, v19

    .line 256
    .line 257
    move-object/from16 v9, v29

    .line 258
    .line 259
    goto :goto_6

    .line 260
    :cond_b
    move/from16 v16, v4

    .line 261
    .line 262
    move-object/from16 v29, v9

    .line 263
    .line 264
    move-wide/from16 v9, v23

    .line 265
    .line 266
    :goto_9
    iget v4, v14, Lokio/Segment;->c:I

    .line 267
    .line 268
    iget v11, v14, Lokio/Segment;->b:I

    .line 269
    .line 270
    sub-int/2addr v4, v11

    .line 271
    move-wide/from16 v17, v9

    .line 272
    .line 273
    int-to-long v9, v4

    .line 274
    add-long v9, v17, v9

    .line 275
    .line 276
    cmp-long v4, v9, v23

    .line 277
    .line 278
    if-gtz v4, :cond_c

    .line 279
    .line 280
    iget-object v14, v14, Lokio/Segment;->f:Lokio/Segment;

    .line 281
    .line 282
    invoke-static {v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 283
    .line 284
    .line 285
    goto :goto_9

    .line 286
    :cond_c
    invoke-virtual {v6}, Lokio/ByteString;->h()[B

    .line 287
    .line 288
    .line 289
    move-result-object v4

    .line 290
    aget-byte v6, v4, v16

    .line 291
    .line 292
    iget-wide v9, v0, Lokio/Buffer;->f:J

    .line 293
    .line 294
    sub-long v9, v9, v21

    .line 295
    .line 296
    add-long v9, v9, v25

    .line 297
    .line 298
    invoke-static {v12, v13, v9, v10}, Ljava/lang/Math;->min(JJ)J

    .line 299
    .line 300
    .line 301
    move-result-wide v9

    .line 302
    move-wide/from16 v11, v23

    .line 303
    .line 304
    :goto_a
    cmp-long v13, v17, v9

    .line 305
    .line 306
    if-gez v13, :cond_f

    .line 307
    .line 308
    iget-object v13, v14, Lokio/Segment;->a:[B

    .line 309
    .line 310
    iget v15, v14, Lokio/Segment;->c:I

    .line 311
    .line 312
    move-wide/from16 v19, v9

    .line 313
    .line 314
    iget v9, v14, Lokio/Segment;->b:I

    .line 315
    .line 316
    int-to-long v9, v9

    .line 317
    add-long v9, v9, v19

    .line 318
    .line 319
    sub-long v9, v9, v17

    .line 320
    .line 321
    move-wide/from16 v21, v11

    .line 322
    .line 323
    int-to-long v11, v15

    .line 324
    invoke-static {v11, v12, v9, v10}, Ljava/lang/Math;->min(JJ)J

    .line 325
    .line 326
    .line 327
    move-result-wide v9

    .line 328
    long-to-int v9, v9

    .line 329
    iget v10, v14, Lokio/Segment;->b:I

    .line 330
    .line 331
    int-to-long v10, v10

    .line 332
    add-long v10, v10, v21

    .line 333
    .line 334
    sub-long v10, v10, v17

    .line 335
    .line 336
    long-to-int v10, v10

    .line 337
    :goto_b
    if-ge v10, v9, :cond_e

    .line 338
    .line 339
    aget-byte v11, v13, v10

    .line 340
    .line 341
    if-ne v11, v6, :cond_d

    .line 342
    .line 343
    add-int/lit8 v11, v10, 0x1

    .line 344
    .line 345
    const/4 v12, 0x1

    .line 346
    invoke-static {v14, v11, v4, v12, v8}, Lokio/internal/-Buffer;->a(Lokio/Segment;I[BII)Z

    .line 347
    .line 348
    .line 349
    move-result v11

    .line 350
    if-eqz v11, :cond_d

    .line 351
    .line 352
    goto :goto_8

    .line 353
    :cond_d
    add-int/lit8 v10, v10, 0x1

    .line 354
    .line 355
    goto :goto_b

    .line 356
    :cond_e
    iget v9, v14, Lokio/Segment;->c:I

    .line 357
    .line 358
    iget v10, v14, Lokio/Segment;->b:I

    .line 359
    .line 360
    sub-int/2addr v9, v10

    .line 361
    int-to-long v9, v9

    .line 362
    add-long v11, v17, v9

    .line 363
    .line 364
    iget-object v14, v14, Lokio/Segment;->f:Lokio/Segment;

    .line 365
    .line 366
    invoke-static {v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 367
    .line 368
    .line 369
    move-wide/from16 v17, v11

    .line 370
    .line 371
    move-wide/from16 v9, v19

    .line 372
    .line 373
    goto :goto_a

    .line 374
    :cond_f
    :goto_c
    move-wide/from16 v8, v27

    .line 375
    .line 376
    :goto_d
    cmp-long v4, v8, v27

    .line 377
    .line 378
    if-eqz v4, :cond_10

    .line 379
    .line 380
    :goto_e
    move-object/from16 v19, v1

    .line 381
    .line 382
    goto/16 :goto_1a

    .line 383
    .line 384
    :cond_10
    :goto_f
    sget-object v4, Lokio/internal/-Path;->b:Lokio/ByteString;

    .line 385
    .line 386
    invoke-static {v4, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 387
    .line 388
    .line 389
    invoke-virtual {v4}, Lokio/ByteString;->d()I

    .line 390
    .line 391
    .line 392
    move-result v6

    .line 393
    invoke-static {v4, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 394
    .line 395
    .line 396
    if-gez v6, :cond_11

    .line 397
    .line 398
    goto/16 :goto_1b

    .line 399
    .line 400
    :cond_11
    int-to-long v12, v6

    .line 401
    iget-wide v8, v0, Lokio/Buffer;->f:J

    .line 402
    .line 403
    cmp-long v8, v12, v8

    .line 404
    .line 405
    if-lez v8, :cond_12

    .line 406
    .line 407
    goto/16 :goto_1b

    .line 408
    .line 409
    :cond_12
    invoke-virtual {v4}, Lokio/ByteString;->d()I

    .line 410
    .line 411
    .line 412
    move-result v8

    .line 413
    if-le v6, v8, :cond_13

    .line 414
    .line 415
    goto/16 :goto_1b

    .line 416
    .line 417
    :cond_13
    if-nez v6, :cond_14

    .line 418
    .line 419
    goto :goto_e

    .line 420
    :cond_14
    sget-object v8, Lokio/internal/-Buffer;->a:[B

    .line 421
    .line 422
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 423
    .line 424
    .line 425
    invoke-static {v4, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 426
    .line 427
    .line 428
    invoke-virtual {v4}, Lokio/ByteString;->d()I

    .line 429
    .line 430
    .line 431
    move-result v7

    .line 432
    int-to-long v8, v7

    .line 433
    move/from16 v7, v16

    .line 434
    .line 435
    int-to-long v10, v7

    .line 436
    invoke-static/range {v8 .. v13}, Lokio/-SegmentedByteString;->b(JJJ)V

    .line 437
    .line 438
    .line 439
    if-lez v6, :cond_3a

    .line 440
    .line 441
    iget-wide v7, v0, Lokio/Buffer;->f:J

    .line 442
    .line 443
    cmp-long v9, v25, v7

    .line 444
    .line 445
    if-lez v9, :cond_15

    .line 446
    .line 447
    move-wide v9, v7

    .line 448
    goto :goto_10

    .line 449
    :cond_15
    move-wide/from16 v9, v25

    .line 450
    .line 451
    :goto_10
    cmp-long v11, v23, v9

    .line 452
    .line 453
    if-nez v11, :cond_17

    .line 454
    .line 455
    :cond_16
    :goto_11
    move-object/from16 v19, v1

    .line 456
    .line 457
    const/16 v16, 0x0

    .line 458
    .line 459
    goto/16 :goto_18

    .line 460
    .line 461
    :cond_17
    iget-object v11, v0, Lokio/Buffer;->c:Lokio/Segment;

    .line 462
    .line 463
    if-nez v11, :cond_18

    .line 464
    .line 465
    goto :goto_11

    .line 466
    :cond_18
    cmp-long v14, v7, v23

    .line 467
    .line 468
    if-gez v14, :cond_1c

    .line 469
    .line 470
    :goto_12
    cmp-long v14, v7, v23

    .line 471
    .line 472
    if-lez v14, :cond_19

    .line 473
    .line 474
    iget-object v11, v11, Lokio/Segment;->g:Lokio/Segment;

    .line 475
    .line 476
    invoke-static {v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 477
    .line 478
    .line 479
    iget v14, v11, Lokio/Segment;->c:I

    .line 480
    .line 481
    iget v15, v11, Lokio/Segment;->b:I

    .line 482
    .line 483
    sub-int/2addr v14, v15

    .line 484
    int-to-long v14, v14

    .line 485
    sub-long/2addr v7, v14

    .line 486
    goto :goto_12

    .line 487
    :cond_19
    invoke-virtual {v4}, Lokio/ByteString;->h()[B

    .line 488
    .line 489
    .line 490
    move-result-object v14

    .line 491
    const/16 v16, 0x0

    .line 492
    .line 493
    aget-byte v15, v14, v16

    .line 494
    .line 495
    move-wide/from16 v17, v7

    .line 496
    .line 497
    iget-wide v7, v0, Lokio/Buffer;->f:J

    .line 498
    .line 499
    sub-long/2addr v7, v12

    .line 500
    add-long v7, v7, v25

    .line 501
    .line 502
    invoke-static {v9, v10, v7, v8}, Ljava/lang/Math;->min(JJ)J

    .line 503
    .line 504
    .line 505
    move-result-wide v7

    .line 506
    move-wide/from16 v9, v23

    .line 507
    .line 508
    :goto_13
    cmp-long v12, v17, v7

    .line 509
    .line 510
    if-gez v12, :cond_16

    .line 511
    .line 512
    iget-object v12, v11, Lokio/Segment;->a:[B

    .line 513
    .line 514
    iget v13, v11, Lokio/Segment;->c:I

    .line 515
    .line 516
    move-object/from16 v19, v1

    .line 517
    .line 518
    iget v1, v11, Lokio/Segment;->b:I

    .line 519
    .line 520
    move-wide/from16 v20, v7

    .line 521
    .line 522
    int-to-long v7, v1

    .line 523
    add-long v7, v7, v20

    .line 524
    .line 525
    sub-long v7, v7, v17

    .line 526
    .line 527
    move-wide/from16 v29, v9

    .line 528
    .line 529
    int-to-long v9, v13

    .line 530
    invoke-static {v9, v10, v7, v8}, Ljava/lang/Math;->min(JJ)J

    .line 531
    .line 532
    .line 533
    move-result-wide v7

    .line 534
    long-to-int v1, v7

    .line 535
    iget v7, v11, Lokio/Segment;->b:I

    .line 536
    .line 537
    int-to-long v7, v7

    .line 538
    add-long v7, v7, v29

    .line 539
    .line 540
    sub-long v7, v7, v17

    .line 541
    .line 542
    long-to-int v7, v7

    .line 543
    :goto_14
    if-ge v7, v1, :cond_1b

    .line 544
    .line 545
    aget-byte v8, v12, v7

    .line 546
    .line 547
    if-ne v8, v15, :cond_1a

    .line 548
    .line 549
    add-int/lit8 v8, v7, 0x1

    .line 550
    .line 551
    const/4 v9, 0x1

    .line 552
    invoke-static {v11, v8, v14, v9, v6}, Lokio/internal/-Buffer;->a(Lokio/Segment;I[BII)Z

    .line 553
    .line 554
    .line 555
    move-result v8

    .line 556
    if-eqz v8, :cond_1a

    .line 557
    .line 558
    iget v1, v11, Lokio/Segment;->b:I

    .line 559
    .line 560
    sub-int/2addr v7, v1

    .line 561
    int-to-long v6, v7

    .line 562
    add-long v6, v6, v17

    .line 563
    .line 564
    const/16 v16, 0x0

    .line 565
    .line 566
    goto/16 :goto_19

    .line 567
    .line 568
    :cond_1a
    add-int/lit8 v7, v7, 0x1

    .line 569
    .line 570
    goto :goto_14

    .line 571
    :cond_1b
    iget v1, v11, Lokio/Segment;->c:I

    .line 572
    .line 573
    iget v7, v11, Lokio/Segment;->b:I

    .line 574
    .line 575
    sub-int/2addr v1, v7

    .line 576
    int-to-long v7, v1

    .line 577
    add-long v9, v17, v7

    .line 578
    .line 579
    iget-object v11, v11, Lokio/Segment;->f:Lokio/Segment;

    .line 580
    .line 581
    invoke-static {v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 582
    .line 583
    .line 584
    move-wide/from16 v17, v9

    .line 585
    .line 586
    move-object/from16 v1, v19

    .line 587
    .line 588
    move-wide/from16 v7, v20

    .line 589
    .line 590
    goto :goto_13

    .line 591
    :cond_1c
    move-object/from16 v19, v1

    .line 592
    .line 593
    move-wide/from16 v7, v23

    .line 594
    .line 595
    :goto_15
    iget v1, v11, Lokio/Segment;->c:I

    .line 596
    .line 597
    iget v14, v11, Lokio/Segment;->b:I

    .line 598
    .line 599
    sub-int/2addr v1, v14

    .line 600
    int-to-long v14, v1

    .line 601
    add-long/2addr v14, v7

    .line 602
    cmp-long v1, v14, v23

    .line 603
    .line 604
    if-gtz v1, :cond_1d

    .line 605
    .line 606
    iget-object v11, v11, Lokio/Segment;->f:Lokio/Segment;

    .line 607
    .line 608
    invoke-static {v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 609
    .line 610
    .line 611
    move-wide v7, v14

    .line 612
    goto :goto_15

    .line 613
    :cond_1d
    invoke-virtual {v4}, Lokio/ByteString;->h()[B

    .line 614
    .line 615
    .line 616
    move-result-object v1

    .line 617
    const/16 v16, 0x0

    .line 618
    .line 619
    aget-byte v14, v1, v16

    .line 620
    .line 621
    move-wide/from16 v17, v7

    .line 622
    .line 623
    iget-wide v7, v0, Lokio/Buffer;->f:J

    .line 624
    .line 625
    sub-long/2addr v7, v12

    .line 626
    add-long v7, v7, v25

    .line 627
    .line 628
    invoke-static {v9, v10, v7, v8}, Ljava/lang/Math;->min(JJ)J

    .line 629
    .line 630
    .line 631
    move-result-wide v7

    .line 632
    move-wide/from16 v9, v23

    .line 633
    .line 634
    :goto_16
    cmp-long v12, v17, v7

    .line 635
    .line 636
    if-gez v12, :cond_20

    .line 637
    .line 638
    iget-object v12, v11, Lokio/Segment;->a:[B

    .line 639
    .line 640
    iget v13, v11, Lokio/Segment;->c:I

    .line 641
    .line 642
    iget v15, v11, Lokio/Segment;->b:I

    .line 643
    .line 644
    move-wide/from16 v20, v7

    .line 645
    .line 646
    int-to-long v7, v15

    .line 647
    add-long v7, v7, v20

    .line 648
    .line 649
    sub-long v7, v7, v17

    .line 650
    .line 651
    move-wide/from16 v29, v9

    .line 652
    .line 653
    int-to-long v9, v13

    .line 654
    invoke-static {v9, v10, v7, v8}, Ljava/lang/Math;->min(JJ)J

    .line 655
    .line 656
    .line 657
    move-result-wide v7

    .line 658
    long-to-int v7, v7

    .line 659
    iget v8, v11, Lokio/Segment;->b:I

    .line 660
    .line 661
    int-to-long v8, v8

    .line 662
    add-long v8, v8, v29

    .line 663
    .line 664
    sub-long v8, v8, v17

    .line 665
    .line 666
    long-to-int v8, v8

    .line 667
    :goto_17
    if-ge v8, v7, :cond_1f

    .line 668
    .line 669
    aget-byte v9, v12, v8

    .line 670
    .line 671
    if-ne v9, v14, :cond_1e

    .line 672
    .line 673
    add-int/lit8 v9, v8, 0x1

    .line 674
    .line 675
    const/4 v10, 0x1

    .line 676
    invoke-static {v11, v9, v1, v10, v6}, Lokio/internal/-Buffer;->a(Lokio/Segment;I[BII)Z

    .line 677
    .line 678
    .line 679
    move-result v9

    .line 680
    if-eqz v9, :cond_1e

    .line 681
    .line 682
    iget v1, v11, Lokio/Segment;->b:I

    .line 683
    .line 684
    sub-int/2addr v8, v1

    .line 685
    int-to-long v6, v8

    .line 686
    add-long v6, v6, v17

    .line 687
    .line 688
    goto :goto_19

    .line 689
    :cond_1e
    add-int/lit8 v8, v8, 0x1

    .line 690
    .line 691
    goto :goto_17

    .line 692
    :cond_1f
    iget v7, v11, Lokio/Segment;->c:I

    .line 693
    .line 694
    iget v8, v11, Lokio/Segment;->b:I

    .line 695
    .line 696
    sub-int/2addr v7, v8

    .line 697
    int-to-long v7, v7

    .line 698
    add-long v9, v17, v7

    .line 699
    .line 700
    iget-object v11, v11, Lokio/Segment;->f:Lokio/Segment;

    .line 701
    .line 702
    invoke-static {v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 703
    .line 704
    .line 705
    move-wide/from16 v17, v9

    .line 706
    .line 707
    move-wide/from16 v7, v20

    .line 708
    .line 709
    goto :goto_16

    .line 710
    :cond_20
    :goto_18
    move-wide/from16 v6, v27

    .line 711
    .line 712
    :goto_19
    cmp-long v1, v6, v27

    .line 713
    .line 714
    if-eqz v1, :cond_22

    .line 715
    .line 716
    :goto_1a
    invoke-virtual {v0}, Lokio/Buffer;->readByte()B

    .line 717
    .line 718
    .line 719
    move-result v1

    .line 720
    if-nez v3, :cond_21

    .line 721
    .line 722
    invoke-static {v1}, Lokio/internal/-Path;->e(B)Lokio/ByteString;

    .line 723
    .line 724
    .line 725
    move-result-object v1

    .line 726
    move-object v3, v1

    .line 727
    :cond_21
    add-int/lit8 v5, v5, 0x1

    .line 728
    .line 729
    move/from16 v4, v16

    .line 730
    .line 731
    move-object/from16 v1, v19

    .line 732
    .line 733
    goto/16 :goto_0

    .line 734
    .line 735
    :cond_22
    :goto_1b
    const/4 v1, 0x2

    .line 736
    if-lt v5, v1, :cond_23

    .line 737
    .line 738
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 739
    .line 740
    .line 741
    move-result v1

    .line 742
    if-eqz v1, :cond_23

    .line 743
    .line 744
    const/4 v12, 0x1

    .line 745
    goto :goto_1c

    .line 746
    :cond_23
    move/from16 v12, v16

    .line 747
    .line 748
    :goto_1c
    sget-object v1, Lokio/internal/-Path;->c:Lokio/ByteString;

    .line 749
    .line 750
    if-eqz v12, :cond_24

    .line 751
    .line 752
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 753
    .line 754
    .line 755
    invoke-virtual {v2, v3}, Lokio/Buffer;->n(Lokio/ByteString;)V

    .line 756
    .line 757
    .line 758
    invoke-virtual {v2, v3}, Lokio/Buffer;->n(Lokio/ByteString;)V

    .line 759
    .line 760
    .line 761
    goto/16 :goto_20

    .line 762
    .line 763
    :cond_24
    if-lez v5, :cond_25

    .line 764
    .line 765
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 766
    .line 767
    .line 768
    invoke-virtual {v2, v3}, Lokio/Buffer;->n(Lokio/ByteString;)V

    .line 769
    .line 770
    .line 771
    goto :goto_20

    .line 772
    :cond_25
    invoke-virtual {v0, v1}, Lokio/Buffer;->f(Lokio/ByteString;)J

    .line 773
    .line 774
    .line 775
    move-result-wide v5

    .line 776
    if-nez v3, :cond_27

    .line 777
    .line 778
    cmp-long v3, v5, v27

    .line 779
    .line 780
    if-nez v3, :cond_26

    .line 781
    .line 782
    sget-object v3, Lokio/Path;->f:Ljava/lang/String;

    .line 783
    .line 784
    invoke-static {v3}, Lokio/internal/-Path;->f(Ljava/lang/String;)Lokio/ByteString;

    .line 785
    .line 786
    .line 787
    move-result-object v3

    .line 788
    goto :goto_1d

    .line 789
    :cond_26
    invoke-virtual {v0, v5, v6}, Lokio/Buffer;->d(J)B

    .line 790
    .line 791
    .line 792
    move-result v3

    .line 793
    invoke-static {v3}, Lokio/internal/-Path;->e(B)Lokio/ByteString;

    .line 794
    .line 795
    .line 796
    move-result-object v3

    .line 797
    :cond_27
    :goto_1d
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 798
    .line 799
    .line 800
    move-result v4

    .line 801
    if-nez v4, :cond_28

    .line 802
    .line 803
    goto :goto_1f

    .line 804
    :cond_28
    iget-wide v7, v0, Lokio/Buffer;->f:J

    .line 805
    .line 806
    const-wide/16 v9, 0x2

    .line 807
    .line 808
    cmp-long v4, v7, v9

    .line 809
    .line 810
    if-gez v4, :cond_29

    .line 811
    .line 812
    goto :goto_1f

    .line 813
    :cond_29
    move-wide/from16 v7, v25

    .line 814
    .line 815
    invoke-virtual {v0, v7, v8}, Lokio/Buffer;->d(J)B

    .line 816
    .line 817
    .line 818
    move-result v4

    .line 819
    const/16 v7, 0x3a

    .line 820
    .line 821
    if-eq v4, v7, :cond_2a

    .line 822
    .line 823
    goto :goto_1f

    .line 824
    :cond_2a
    move-wide/from16 v7, v23

    .line 825
    .line 826
    invoke-virtual {v0, v7, v8}, Lokio/Buffer;->d(J)B

    .line 827
    .line 828
    .line 829
    move-result v4

    .line 830
    int-to-char v4, v4

    .line 831
    const/16 v7, 0x61

    .line 832
    .line 833
    if-gt v7, v4, :cond_2b

    .line 834
    .line 835
    const/16 v7, 0x7b

    .line 836
    .line 837
    if-ge v4, v7, :cond_2b

    .line 838
    .line 839
    goto :goto_1e

    .line 840
    :cond_2b
    const/16 v7, 0x41

    .line 841
    .line 842
    if-gt v7, v4, :cond_2d

    .line 843
    .line 844
    const/16 v7, 0x5b

    .line 845
    .line 846
    if-ge v4, v7, :cond_2d

    .line 847
    .line 848
    :goto_1e
    cmp-long v4, v5, v9

    .line 849
    .line 850
    if-nez v4, :cond_2c

    .line 851
    .line 852
    const-wide/16 v4, 0x3

    .line 853
    .line 854
    invoke-virtual {v2, v4, v5, v0}, Lokio/Buffer;->U(JLokio/Buffer;)V

    .line 855
    .line 856
    .line 857
    goto :goto_1f

    .line 858
    :cond_2c
    invoke-virtual {v2, v9, v10, v0}, Lokio/Buffer;->U(JLokio/Buffer;)V

    .line 859
    .line 860
    .line 861
    :cond_2d
    :goto_1f
    sget-object v4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 862
    .line 863
    :goto_20
    iget-wide v4, v2, Lokio/Buffer;->f:J

    .line 864
    .line 865
    const-wide/16 v23, 0x0

    .line 866
    .line 867
    cmp-long v4, v4, v23

    .line 868
    .line 869
    if-lez v4, :cond_2e

    .line 870
    .line 871
    const/4 v4, 0x1

    .line 872
    goto :goto_21

    .line 873
    :cond_2e
    move/from16 v4, v16

    .line 874
    .line 875
    :goto_21
    new-instance v5, Ljava/util/ArrayList;

    .line 876
    .line 877
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 878
    .line 879
    .line 880
    :cond_2f
    :goto_22
    invoke-virtual {v0}, Lokio/Buffer;->D()Z

    .line 881
    .line 882
    .line 883
    move-result v6

    .line 884
    sget-object v7, Lokio/internal/-Path;->d:Lokio/ByteString;

    .line 885
    .line 886
    if-nez v6, :cond_36

    .line 887
    .line 888
    invoke-virtual {v0, v1}, Lokio/Buffer;->f(Lokio/ByteString;)J

    .line 889
    .line 890
    .line 891
    move-result-wide v8

    .line 892
    cmp-long v6, v8, v27

    .line 893
    .line 894
    if-nez v6, :cond_30

    .line 895
    .line 896
    iget-wide v8, v0, Lokio/Buffer;->f:J

    .line 897
    .line 898
    invoke-virtual {v0, v8, v9}, Lokio/Buffer;->r(J)Lokio/ByteString;

    .line 899
    .line 900
    .line 901
    move-result-object v6

    .line 902
    goto :goto_23

    .line 903
    :cond_30
    invoke-virtual {v0, v8, v9}, Lokio/Buffer;->r(J)Lokio/ByteString;

    .line 904
    .line 905
    .line 906
    move-result-object v6

    .line 907
    invoke-virtual {v0}, Lokio/Buffer;->readByte()B

    .line 908
    .line 909
    .line 910
    :goto_23
    sget-object v8, Lokio/internal/-Path;->e:Lokio/ByteString;

    .line 911
    .line 912
    invoke-static {v6, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 913
    .line 914
    .line 915
    move-result v9

    .line 916
    if-eqz v9, :cond_35

    .line 917
    .line 918
    if-eqz v4, :cond_31

    .line 919
    .line 920
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    .line 921
    .line 922
    .line 923
    move-result v7

    .line 924
    if-nez v7, :cond_2f

    .line 925
    .line 926
    :cond_31
    if-eqz p1, :cond_32

    .line 927
    .line 928
    if-nez v4, :cond_33

    .line 929
    .line 930
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    .line 931
    .line 932
    .line 933
    move-result v7

    .line 934
    if-nez v7, :cond_32

    .line 935
    .line 936
    invoke-static {v5}, Lkotlin/collections/CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    .line 937
    .line 938
    .line 939
    move-result-object v7

    .line 940
    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 941
    .line 942
    .line 943
    move-result v7

    .line 944
    if-eqz v7, :cond_33

    .line 945
    .line 946
    :cond_32
    const/4 v9, 0x1

    .line 947
    goto :goto_25

    .line 948
    :cond_33
    if-eqz v12, :cond_34

    .line 949
    .line 950
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 951
    .line 952
    .line 953
    move-result v6

    .line 954
    const/4 v9, 0x1

    .line 955
    if-eq v6, v9, :cond_2f

    .line 956
    .line 957
    goto :goto_24

    .line 958
    :cond_34
    const/4 v9, 0x1

    .line 959
    :goto_24
    invoke-static {v5}, Lkotlin/collections/CollectionsKt;->r(Ljava/util/ArrayList;)V

    .line 960
    .line 961
    .line 962
    goto :goto_22

    .line 963
    :goto_25
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 964
    .line 965
    .line 966
    goto :goto_22

    .line 967
    :cond_35
    const/4 v9, 0x1

    .line 968
    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 969
    .line 970
    .line 971
    move-result v7

    .line 972
    if-nez v7, :cond_2f

    .line 973
    .line 974
    sget-object v7, Lokio/ByteString;->h:Lokio/ByteString;

    .line 975
    .line 976
    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 977
    .line 978
    .line 979
    move-result v7

    .line 980
    if-nez v7, :cond_2f

    .line 981
    .line 982
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 983
    .line 984
    .line 985
    goto :goto_22

    .line 986
    :cond_36
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 987
    .line 988
    .line 989
    move-result v0

    .line 990
    move/from16 v4, v16

    .line 991
    .line 992
    :goto_26
    if-ge v4, v0, :cond_38

    .line 993
    .line 994
    if-lez v4, :cond_37

    .line 995
    .line 996
    invoke-virtual {v2, v3}, Lokio/Buffer;->n(Lokio/ByteString;)V

    .line 997
    .line 998
    .line 999
    :cond_37
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1000
    .line 1001
    .line 1002
    move-result-object v1

    .line 1003
    check-cast v1, Lokio/ByteString;

    .line 1004
    .line 1005
    invoke-virtual {v2, v1}, Lokio/Buffer;->n(Lokio/ByteString;)V

    .line 1006
    .line 1007
    .line 1008
    add-int/lit8 v4, v4, 0x1

    .line 1009
    .line 1010
    goto :goto_26

    .line 1011
    :cond_38
    iget-wide v0, v2, Lokio/Buffer;->f:J

    .line 1012
    .line 1013
    const-wide/16 v23, 0x0

    .line 1014
    .line 1015
    cmp-long v0, v0, v23

    .line 1016
    .line 1017
    if-nez v0, :cond_39

    .line 1018
    .line 1019
    invoke-virtual {v2, v7}, Lokio/Buffer;->n(Lokio/ByteString;)V

    .line 1020
    .line 1021
    .line 1022
    :cond_39
    new-instance v0, Lokio/Path;

    .line 1023
    .line 1024
    iget-wide v3, v2, Lokio/Buffer;->f:J

    .line 1025
    .line 1026
    invoke-virtual {v2, v3, v4}, Lokio/Buffer;->r(J)Lokio/ByteString;

    .line 1027
    .line 1028
    .line 1029
    move-result-object v1

    .line 1030
    invoke-direct {v0, v1}, Lokio/Path;-><init>(Lokio/ByteString;)V

    .line 1031
    .line 1032
    .line 1033
    return-object v0

    .line 1034
    :cond_3a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 1035
    .line 1036
    move-object/from16 v1, v29

    .line 1037
    .line 1038
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 1039
    .line 1040
    .line 1041
    throw v0

    .line 1042
    :cond_3b
    move-object v1, v9

    .line 1043
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 1044
    .line 1045
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 1046
    .line 1047
    .line 1048
    throw v0
.end method

.method public static final e(B)Lokio/ByteString;
    .locals 2

    .line 1
    const/16 v0, 0x2f

    .line 2
    .line 3
    if-eq p0, v0, :cond_1

    .line 4
    .line 5
    const/16 v0, 0x5c

    .line 6
    .line 7
    if-ne p0, v0, :cond_0

    .line 8
    .line 9
    sget-object p0, Lokio/internal/-Path;->b:Lokio/ByteString;

    .line 10
    .line 11
    return-object p0

    .line 12
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 13
    .line 14
    const-string v1, "not a directory separator: "

    .line 15
    .line 16
    invoke-static {p0, v1}, Landroid/support/v4/media/a;->e(ILjava/lang/String;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    throw v0

    .line 24
    :cond_1
    sget-object p0, Lokio/internal/-Path;->a:Lokio/ByteString;

    .line 25
    .line 26
    return-object p0
.end method

.method public static final f(Ljava/lang/String;)Lokio/ByteString;
    .locals 2

    .line 1
    const-string v0, "/"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    sget-object p0, Lokio/internal/-Path;->a:Lokio/ByteString;

    .line 10
    .line 11
    return-object p0

    .line 12
    :cond_0
    const-string v0, "\\"

    .line 13
    .line 14
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    sget-object p0, Lokio/internal/-Path;->b:Lokio/ByteString;

    .line 21
    .line 22
    return-object p0

    .line 23
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 24
    .line 25
    const-string v1, "not a directory separator: "

    .line 26
    .line 27
    invoke-static {v1, p0}, Landroid/support/v4/media/a;->C(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    throw v0
.end method
