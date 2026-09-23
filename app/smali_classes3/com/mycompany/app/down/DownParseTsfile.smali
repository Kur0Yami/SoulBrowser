.class public Lcom/mycompany/app/down/DownParseTsfile;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/mycompany/app/main/MainDownSvc$DownItem;ZLcom/mycompany/app/main/MainUtil$LoopCancelListener;)Ljava/util/ArrayList;
    .locals 15

    .line 1
    move/from16 v0, p4

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez p3, :cond_0

    .line 5
    .line 6
    if-nez p5, :cond_0

    .line 7
    .line 8
    goto/16 :goto_9

    .line 9
    .line 10
    :cond_0
    invoke-static/range {p1 .. p1}, Lcom/mycompany/app/main/MainUtil;->M0(Ljava/lang/String;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v3

    .line 14
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    if-eqz v2, :cond_1

    .line 19
    .line 20
    goto/16 :goto_9

    .line 21
    .line 22
    :cond_1
    if-eqz v0, :cond_2

    .line 23
    .line 24
    const/16 v2, 0x2e

    .line 25
    .line 26
    invoke-virtual {v3, v2}, Ljava/lang/String;->lastIndexOf(I)I

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    :goto_0
    move v9, v2

    .line 31
    goto :goto_1

    .line 32
    :cond_2
    const-string v2, ".ts"

    .line 33
    .line 34
    invoke-virtual {v3, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    .line 35
    .line 36
    .line 37
    move-result v2

    .line 38
    goto :goto_0

    .line 39
    :goto_1
    if-lez v9, :cond_14

    .line 40
    .line 41
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 42
    .line 43
    .line 44
    move-result v2

    .line 45
    if-lt v9, v2, :cond_3

    .line 46
    .line 47
    goto/16 :goto_9

    .line 48
    .line 49
    :cond_3
    add-int/lit8 v2, v9, -0x1

    .line 50
    .line 51
    const/16 v4, 0x2f

    .line 52
    .line 53
    invoke-virtual {v3, v4, v2}, Ljava/lang/String;->lastIndexOf(II)I

    .line 54
    .line 55
    .line 56
    move-result v10

    .line 57
    if-gtz v10, :cond_4

    .line 58
    .line 59
    goto/16 :goto_9

    .line 60
    .line 61
    :cond_4
    const-string v4, "-v1-a1"

    .line 62
    .line 63
    invoke-virtual {v3, v4, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;I)I

    .line 64
    .line 65
    .line 66
    move-result v4

    .line 67
    const/4 v11, 0x1

    .line 68
    if-le v4, v10, :cond_5

    .line 69
    .line 70
    if-ge v4, v9, :cond_5

    .line 71
    .line 72
    move v4, v11

    .line 73
    goto :goto_2

    .line 74
    :cond_5
    const/4 v4, 0x0

    .line 75
    invoke-static {v3, v4}, Lcom/mycompany/app/main/MainUtil;->J1(Ljava/lang/String;Z)Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v5

    .line 79
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 80
    .line 81
    .line 82
    move-result v6

    .line 83
    if-eqz v6, :cond_6

    .line 84
    .line 85
    goto :goto_2

    .line 86
    :cond_6
    const-string v4, "cdn.qooqlevideo.com"

    .line 87
    .line 88
    invoke-virtual {v5, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 89
    .line 90
    .line 91
    move-result v4

    .line 92
    :goto_2
    const/16 v12, 0x39

    .line 93
    .line 94
    const/16 v13, 0x30

    .line 95
    .line 96
    const/4 v14, -0x1

    .line 97
    if-nez v4, :cond_c

    .line 98
    .line 99
    move v4, v14

    .line 100
    move v6, v4

    .line 101
    :goto_3
    if-eq v2, v10, :cond_a

    .line 102
    .line 103
    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    .line 104
    .line 105
    .line 106
    move-result v5

    .line 107
    if-lt v5, v13, :cond_8

    .line 108
    .line 109
    if-gt v5, v12, :cond_8

    .line 110
    .line 111
    if-ne v6, v14, :cond_7

    .line 112
    .line 113
    add-int/lit8 v6, v2, 0x1

    .line 114
    .line 115
    :cond_7
    move v4, v2

    .line 116
    goto :goto_4

    .line 117
    :cond_8
    if-eq v6, v14, :cond_9

    .line 118
    .line 119
    goto :goto_5

    .line 120
    :cond_9
    :goto_4
    add-int/lit8 v2, v2, -0x1

    .line 121
    .line 122
    goto :goto_3

    .line 123
    :cond_a
    :goto_5
    if-eq v4, v14, :cond_14

    .line 124
    .line 125
    if-ne v6, v14, :cond_b

    .line 126
    .line 127
    goto :goto_9

    .line 128
    :cond_b
    invoke-static {v3, v4, v6, v0}, Lcom/mycompany/app/down/DownParseTsfile;->b(Ljava/lang/String;IIZ)I

    .line 129
    .line 130
    .line 131
    move-result v5

    .line 132
    move-object v2, p0

    .line 133
    move-object/from16 v4, p2

    .line 134
    .line 135
    move-object/from16 v7, p3

    .line 136
    .line 137
    move-object/from16 v8, p5

    .line 138
    .line 139
    invoke-static/range {v2 .. v8}, Lcom/mycompany/app/down/DownParseTsfile;->d(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IILcom/mycompany/app/main/MainDownSvc$DownItem;Lcom/mycompany/app/main/MainUtil$LoopCancelListener;)Ljava/util/ArrayList;

    .line 140
    .line 141
    .line 142
    move-result-object v1

    .line 143
    if-eqz v1, :cond_d

    .line 144
    .line 145
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 146
    .line 147
    .line 148
    move-result v2

    .line 149
    if-le v2, v11, :cond_d

    .line 150
    .line 151
    return-object v1

    .line 152
    :cond_c
    move v5, v14

    .line 153
    move v6, v5

    .line 154
    :cond_d
    add-int/2addr v10, v11

    .line 155
    move v2, v14

    .line 156
    move v4, v2

    .line 157
    :goto_6
    if-eq v10, v9, :cond_11

    .line 158
    .line 159
    invoke-virtual {v3, v10}, Ljava/lang/String;->charAt(I)C

    .line 160
    .line 161
    .line 162
    move-result v7

    .line 163
    if-lt v7, v13, :cond_f

    .line 164
    .line 165
    if-gt v7, v12, :cond_f

    .line 166
    .line 167
    if-ne v2, v14, :cond_e

    .line 168
    .line 169
    move v2, v10

    .line 170
    :cond_e
    add-int/lit8 v4, v10, 0x1

    .line 171
    .line 172
    goto :goto_7

    .line 173
    :cond_f
    if-eq v2, v14, :cond_10

    .line 174
    .line 175
    goto :goto_8

    .line 176
    :cond_10
    :goto_7
    add-int/lit8 v10, v10, 0x1

    .line 177
    .line 178
    goto :goto_6

    .line 179
    :cond_11
    :goto_8
    if-eq v2, v14, :cond_14

    .line 180
    .line 181
    if-ne v4, v14, :cond_12

    .line 182
    .line 183
    goto :goto_9

    .line 184
    :cond_12
    invoke-static {v3, v2, v4, v0}, Lcom/mycompany/app/down/DownParseTsfile;->b(Ljava/lang/String;IIZ)I

    .line 185
    .line 186
    .line 187
    move-result v0

    .line 188
    if-eq v5, v0, :cond_14

    .line 189
    .line 190
    if-ne v6, v4, :cond_13

    .line 191
    .line 192
    goto :goto_9

    .line 193
    :cond_13
    move-object v2, p0

    .line 194
    move-object/from16 v7, p3

    .line 195
    .line 196
    move-object/from16 v8, p5

    .line 197
    .line 198
    move v5, v0

    .line 199
    move v6, v4

    .line 200
    move-object/from16 v4, p2

    .line 201
    .line 202
    invoke-static/range {v2 .. v8}, Lcom/mycompany/app/down/DownParseTsfile;->d(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IILcom/mycompany/app/main/MainDownSvc$DownItem;Lcom/mycompany/app/main/MainUtil$LoopCancelListener;)Ljava/util/ArrayList;

    .line 203
    .line 204
    .line 205
    move-result-object p0

    .line 206
    return-object p0

    .line 207
    :cond_14
    :goto_9
    return-object v1
.end method

.method public static b(Ljava/lang/String;IIZ)I
    .locals 1

    .line 1
    if-eqz p3, :cond_2

    .line 2
    .line 3
    const-string p3, "000"

    .line 4
    .line 5
    invoke-virtual {p0, p3, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    .line 6
    .line 7
    .line 8
    move-result p3

    .line 9
    if-lt p3, p1, :cond_0

    .line 10
    .line 11
    add-int/lit8 v0, p2, -0x3

    .line 12
    .line 13
    if-ge p3, v0, :cond_0

    .line 14
    .line 15
    return p3

    .line 16
    :cond_0
    const-string p3, "00"

    .line 17
    .line 18
    invoke-virtual {p0, p3, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    .line 19
    .line 20
    .line 21
    move-result p3

    .line 22
    if-lt p3, p1, :cond_1

    .line 23
    .line 24
    add-int/lit8 v0, p2, -0x2

    .line 25
    .line 26
    if-ge p3, v0, :cond_1

    .line 27
    .line 28
    return p3

    .line 29
    :cond_1
    const/16 p3, 0x30

    .line 30
    .line 31
    invoke-virtual {p0, p3, p1}, Ljava/lang/String;->indexOf(II)I

    .line 32
    .line 33
    .line 34
    move-result p0

    .line 35
    if-lt p0, p1, :cond_2

    .line 36
    .line 37
    add-int/lit8 p3, p2, -0x1

    .line 38
    .line 39
    if-ge p0, p3, :cond_2

    .line 40
    .line 41
    return p0

    .line 42
    :cond_2
    add-int/lit8 p2, p2, -0x5

    .line 43
    .line 44
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    .line 45
    .line 46
    .line 47
    move-result p0

    .line 48
    return p0
.end method

.method public static c(Landroid/content/Context;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/mycompany/app/main/MainDownSvc$DownItem;Lcom/mycompany/app/main/MainUtil$LoopCancelListener;)I
    .locals 3

    .line 1
    :goto_0
    add-int v0, p1, p2

    .line 2
    .line 3
    move v2, v0

    .line 4
    move v0, p1

    .line 5
    move p1, v2

    .line 6
    const v1, 0x186a0

    .line 7
    .line 8
    .line 9
    if-ge p1, v1, :cond_1

    .line 10
    .line 11
    invoke-static {p7, p8}, Lcom/mycompany/app/down/DownParseTsfile;->f(Lcom/mycompany/app/main/MainDownSvc$DownItem;Lcom/mycompany/app/main/MainUtil$LoopCancelListener;)Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    const/4 p0, -0x1

    .line 18
    return p0

    .line 19
    :cond_0
    invoke-static {p1, p3, p4, p5}, Lcom/mycompany/app/down/DownParseTsfile;->e(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-static {p0, v1, p6}, Lcom/mycompany/app/main/MainUtil;->j6(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    if-eqz v1, :cond_1

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    return v0
.end method

.method public static d(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IILcom/mycompany/app/main/MainDownSvc$DownItem;Lcom/mycompany/app/main/MainUtil$LoopCancelListener;)Ljava/util/ArrayList;
    .locals 12

    .line 1
    move/from16 v0, p4

    .line 2
    .line 3
    if-nez p5, :cond_0

    .line 4
    .line 5
    if-nez p6, :cond_0

    .line 6
    .line 7
    goto/16 :goto_8

    .line 8
    .line 9
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_1

    .line 14
    .line 15
    goto/16 :goto_8

    .line 16
    .line 17
    :cond_1
    const/4 v1, 0x0

    .line 18
    invoke-virtual {p1, v1, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v5

    .line 22
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    if-eqz v2, :cond_2

    .line 27
    .line 28
    goto/16 :goto_8

    .line 29
    .line 30
    :cond_2
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v7

    .line 34
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 35
    .line 36
    .line 37
    move-result v2

    .line 38
    if-eqz v2, :cond_3

    .line 39
    .line 40
    goto/16 :goto_8

    .line 41
    .line 42
    :cond_3
    invoke-virtual {p1, p3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    invoke-static {p1}, Lcom/mycompany/app/main/MainUtil;->H6(Ljava/lang/String;)I

    .line 47
    .line 48
    .line 49
    move-result p3

    .line 50
    const/4 v0, -0x1

    .line 51
    if-ne p3, v0, :cond_4

    .line 52
    .line 53
    goto/16 :goto_8

    .line 54
    .line 55
    :cond_4
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 56
    .line 57
    .line 58
    move-result p3

    .line 59
    const/4 v11, 0x1

    .line 60
    if-le p3, v11, :cond_5

    .line 61
    .line 62
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    .line 63
    .line 64
    .line 65
    move-result p1

    .line 66
    const/16 v2, 0x30

    .line 67
    .line 68
    if-ne p1, v2, :cond_5

    .line 69
    .line 70
    const-string p1, "%0"

    .line 71
    .line 72
    const-string v2, "d"

    .line 73
    .line 74
    invoke-static {p3, p1, v2}, Landroid/support/v4/media/a;->f(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    :goto_0
    move-object v6, p1

    .line 79
    goto :goto_1

    .line 80
    :cond_5
    const-string p1, "%d"

    .line 81
    .line 82
    goto :goto_0

    .line 83
    :goto_1
    const/16 p1, 0xa

    .line 84
    .line 85
    if-ge v1, p1, :cond_6

    .line 86
    .line 87
    invoke-static/range {p5 .. p6}, Lcom/mycompany/app/down/DownParseTsfile;->f(Lcom/mycompany/app/main/MainDownSvc$DownItem;Lcom/mycompany/app/main/MainUtil$LoopCancelListener;)Z

    .line 88
    .line 89
    .line 90
    move-result p1

    .line 91
    if-eqz p1, :cond_7

    .line 92
    .line 93
    :cond_6
    move v1, v0

    .line 94
    goto :goto_2

    .line 95
    :cond_7
    invoke-static {v1, v5, v6, v7}, Lcom/mycompany/app/down/DownParseTsfile;->e(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object p1

    .line 99
    invoke-static {p0, p1, p2}, Lcom/mycompany/app/main/MainUtil;->j6(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    .line 100
    .line 101
    .line 102
    move-result p1

    .line 103
    if-eqz p1, :cond_8

    .line 104
    .line 105
    goto :goto_2

    .line 106
    :cond_8
    add-int/lit8 v1, v1, 0x1

    .line 107
    .line 108
    goto :goto_1

    .line 109
    :goto_2
    if-ne v1, v0, :cond_9

    .line 110
    .line 111
    goto/16 :goto_8

    .line 112
    .line 113
    :cond_9
    invoke-static/range {p5 .. p6}, Lcom/mycompany/app/down/DownParseTsfile;->f(Lcom/mycompany/app/main/MainDownSvc$DownItem;Lcom/mycompany/app/main/MainUtil$LoopCancelListener;)Z

    .line 114
    .line 115
    .line 116
    move-result p1

    .line 117
    if-eqz p1, :cond_b

    .line 118
    .line 119
    :cond_a
    :goto_3
    move p1, v0

    .line 120
    goto :goto_5

    .line 121
    :cond_b
    const/16 v3, 0x320

    .line 122
    .line 123
    invoke-static {v3, v5, v6, v7}, Lcom/mycompany/app/down/DownParseTsfile;->e(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object p1

    .line 127
    invoke-static {p0, p1, p2}, Lcom/mycompany/app/main/MainUtil;->j6(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    .line 128
    .line 129
    .line 130
    move-result p1

    .line 131
    if-eqz p1, :cond_c

    .line 132
    .line 133
    const/16 v4, 0x64

    .line 134
    .line 135
    move-object v2, p0

    .line 136
    move-object v8, p2

    .line 137
    move-object/from16 v9, p5

    .line 138
    .line 139
    move-object/from16 v10, p6

    .line 140
    .line 141
    invoke-static/range {v2 .. v10}, Lcom/mycompany/app/down/DownParseTsfile;->c(Landroid/content/Context;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/mycompany/app/main/MainDownSvc$DownItem;Lcom/mycompany/app/main/MainUtil$LoopCancelListener;)I

    .line 142
    .line 143
    .line 144
    move-result p1

    .line 145
    goto :goto_5

    .line 146
    :cond_c
    const/16 p1, 0x2bc

    .line 147
    .line 148
    :goto_4
    if-le p1, v0, :cond_a

    .line 149
    .line 150
    invoke-static/range {p5 .. p6}, Lcom/mycompany/app/down/DownParseTsfile;->f(Lcom/mycompany/app/main/MainDownSvc$DownItem;Lcom/mycompany/app/main/MainUtil$LoopCancelListener;)Z

    .line 151
    .line 152
    .line 153
    move-result p3

    .line 154
    if-eqz p3, :cond_d

    .line 155
    .line 156
    goto :goto_3

    .line 157
    :cond_d
    invoke-static {p1, v5, v6, v7}, Lcom/mycompany/app/down/DownParseTsfile;->e(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object p3

    .line 161
    invoke-static {p0, p3, p2}, Lcom/mycompany/app/main/MainUtil;->j6(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    .line 162
    .line 163
    .line 164
    move-result p3

    .line 165
    if-eqz p3, :cond_e

    .line 166
    .line 167
    goto :goto_5

    .line 168
    :cond_e
    add-int/lit8 p1, p1, -0x64

    .line 169
    .line 170
    goto :goto_4

    .line 171
    :goto_5
    const p3, 0x1863c

    .line 172
    .line 173
    .line 174
    if-lt p1, p3, :cond_f

    .line 175
    .line 176
    goto :goto_8

    .line 177
    :cond_f
    if-ne p1, v0, :cond_10

    .line 178
    .line 179
    move v3, v1

    .line 180
    goto :goto_6

    .line 181
    :cond_10
    move v3, p1

    .line 182
    :goto_6
    const/16 v4, 0x32

    .line 183
    .line 184
    move-object v2, p0

    .line 185
    move-object v8, p2

    .line 186
    move-object/from16 v9, p5

    .line 187
    .line 188
    move-object/from16 v10, p6

    .line 189
    .line 190
    invoke-static/range {v2 .. v10}, Lcom/mycompany/app/down/DownParseTsfile;->c(Landroid/content/Context;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/mycompany/app/main/MainDownSvc$DownItem;Lcom/mycompany/app/main/MainUtil$LoopCancelListener;)I

    .line 191
    .line 192
    .line 193
    move-result v3

    .line 194
    const/16 v4, 0x14

    .line 195
    .line 196
    invoke-static/range {v2 .. v10}, Lcom/mycompany/app/down/DownParseTsfile;->c(Landroid/content/Context;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/mycompany/app/main/MainDownSvc$DownItem;Lcom/mycompany/app/main/MainUtil$LoopCancelListener;)I

    .line 197
    .line 198
    .line 199
    move-result v3

    .line 200
    const/16 v4, 0xa

    .line 201
    .line 202
    invoke-static/range {v2 .. v10}, Lcom/mycompany/app/down/DownParseTsfile;->c(Landroid/content/Context;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/mycompany/app/main/MainDownSvc$DownItem;Lcom/mycompany/app/main/MainUtil$LoopCancelListener;)I

    .line 203
    .line 204
    .line 205
    move-result v3

    .line 206
    const/4 v4, 0x5

    .line 207
    invoke-static/range {v2 .. v10}, Lcom/mycompany/app/down/DownParseTsfile;->c(Landroid/content/Context;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/mycompany/app/main/MainDownSvc$DownItem;Lcom/mycompany/app/main/MainUtil$LoopCancelListener;)I

    .line 208
    .line 209
    .line 210
    move-result v3

    .line 211
    const/4 v4, 0x2

    .line 212
    invoke-static/range {v2 .. v10}, Lcom/mycompany/app/down/DownParseTsfile;->c(Landroid/content/Context;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/mycompany/app/main/MainDownSvc$DownItem;Lcom/mycompany/app/main/MainUtil$LoopCancelListener;)I

    .line 213
    .line 214
    .line 215
    move-result v3

    .line 216
    const/4 v4, 0x1

    .line 217
    invoke-static/range {v2 .. v10}, Lcom/mycompany/app/down/DownParseTsfile;->c(Landroid/content/Context;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/mycompany/app/main/MainDownSvc$DownItem;Lcom/mycompany/app/main/MainUtil$LoopCancelListener;)I

    .line 218
    .line 219
    .line 220
    move-result p0

    .line 221
    new-instance p1, Ljava/util/ArrayList;

    .line 222
    .line 223
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 224
    .line 225
    .line 226
    add-int/2addr p0, v11

    .line 227
    :goto_7
    if-ge v1, p0, :cond_12

    .line 228
    .line 229
    invoke-static/range {p5 .. p6}, Lcom/mycompany/app/down/DownParseTsfile;->f(Lcom/mycompany/app/main/MainDownSvc$DownItem;Lcom/mycompany/app/main/MainUtil$LoopCancelListener;)Z

    .line 230
    .line 231
    .line 232
    move-result p2

    .line 233
    if-eqz p2, :cond_11

    .line 234
    .line 235
    :goto_8
    const/4 p0, 0x0

    .line 236
    return-object p0

    .line 237
    :cond_11
    invoke-static {v1, v5, v6, v7}, Lcom/mycompany/app/down/DownParseTsfile;->e(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 238
    .line 239
    .line 240
    move-result-object p2

    .line 241
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 242
    .line 243
    .line 244
    add-int/lit8 v1, v1, 0x1

    .line 245
    .line 246
    goto :goto_7

    .line 247
    :cond_12
    return-object p1
.end method

.method public static e(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1
    invoke-static {p1}, Landroid/support/v4/media/a;->t(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 6
    .line 7
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    const/4 v1, 0x1

    .line 12
    new-array v1, v1, [Ljava/lang/Object;

    .line 13
    .line 14
    const/4 v2, 0x0

    .line 15
    aput-object p0, v1, v2

    .line 16
    .line 17
    invoke-static {v0, p2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    return-object p0
.end method

.method public static f(Lcom/mycompany/app/main/MainDownSvc$DownItem;Lcom/mycompany/app/main/MainUtil$LoopCancelListener;)Z
    .locals 0

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    iget p0, p0, Lcom/mycompany/app/main/MainDownSvc$DownItem;->c:I

    .line 4
    .line 5
    const/4 p1, 0x6

    .line 6
    if-ne p0, p1, :cond_1

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    if-eqz p1, :cond_1

    .line 10
    .line 11
    invoke-interface {p1}, Lcom/mycompany/app/main/MainUtil$LoopCancelListener;->isCancelled()Z

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    if-eqz p0, :cond_1

    .line 16
    .line 17
    :goto_0
    const/4 p0, 0x1

    .line 18
    return p0

    .line 19
    :cond_1
    const/4 p0, 0x0

    .line 20
    return p0
.end method
