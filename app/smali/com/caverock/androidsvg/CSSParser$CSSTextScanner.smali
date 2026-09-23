.class Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;
.super Lcom/caverock/androidsvg/SVGParser$TextScanner;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/caverock/androidsvg/CSSParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CSSTextScanner"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/caverock/androidsvg/CSSParser$CSSTextScanner$AnPlusB;
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 1
    const-string v0, "(?s)/\\*.*?\\*/"

    .line 2
    .line 3
    const-string v1, ""

    .line 4
    .line 5
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGParser$TextScanner;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public static r(I)I
    .locals 2

    .line 1
    const/16 v0, 0x30

    .line 2
    .line 3
    if-lt p0, v0, :cond_0

    .line 4
    .line 5
    const/16 v1, 0x39

    .line 6
    .line 7
    if-gt p0, v1, :cond_0

    .line 8
    .line 9
    sub-int/2addr p0, v0

    .line 10
    return p0

    .line 11
    :cond_0
    const/16 v0, 0x41

    .line 12
    .line 13
    if-lt p0, v0, :cond_1

    .line 14
    .line 15
    const/16 v0, 0x46

    .line 16
    .line 17
    if-gt p0, v0, :cond_1

    .line 18
    .line 19
    add-int/lit8 p0, p0, -0x37

    .line 20
    .line 21
    return p0

    .line 22
    :cond_1
    const/16 v0, 0x61

    .line 23
    .line 24
    if-lt p0, v0, :cond_2

    .line 25
    .line 26
    const/16 v0, 0x66

    .line 27
    .line 28
    if-gt p0, v0, :cond_2

    .line 29
    .line 30
    add-int/lit8 p0, p0, -0x57

    .line 31
    .line 32
    return p0

    .line 33
    :cond_2
    const/4 p0, -0x1

    .line 34
    return p0
.end method


# virtual methods
.method public final s()Ljava/lang/String;
    .locals 8

    .line 1
    invoke-virtual {p0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->f()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->a:Ljava/lang/String;

    .line 9
    .line 10
    iget v1, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->b:I

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    const/16 v1, 0x27

    .line 17
    .line 18
    if-eq v0, v1, :cond_1

    .line 19
    .line 20
    const/16 v1, 0x22

    .line 21
    .line 22
    if-eq v0, v1, :cond_1

    .line 23
    .line 24
    :goto_0
    const/4 v0, 0x0

    .line 25
    return-object v0

    .line 26
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    .line 27
    .line 28
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 29
    .line 30
    .line 31
    iget v2, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->b:I

    .line 32
    .line 33
    const/4 v3, 0x1

    .line 34
    add-int/2addr v2, v3

    .line 35
    iput v2, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->b:I

    .line 36
    .line 37
    invoke-virtual {p0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->h()Ljava/lang/Integer;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 42
    .line 43
    .line 44
    move-result v2

    .line 45
    :goto_1
    const/4 v4, -0x1

    .line 46
    if-eq v2, v4, :cond_8

    .line 47
    .line 48
    if-eq v2, v0, :cond_8

    .line 49
    .line 50
    const/16 v5, 0x5c

    .line 51
    .line 52
    if-ne v2, v5, :cond_7

    .line 53
    .line 54
    invoke-virtual {p0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->h()Ljava/lang/Integer;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 59
    .line 60
    .line 61
    move-result v2

    .line 62
    if-ne v2, v4, :cond_2

    .line 63
    .line 64
    goto :goto_1

    .line 65
    :cond_2
    const/16 v5, 0xa

    .line 66
    .line 67
    if-eq v2, v5, :cond_6

    .line 68
    .line 69
    const/16 v5, 0xd

    .line 70
    .line 71
    if-eq v2, v5, :cond_6

    .line 72
    .line 73
    const/16 v5, 0xc

    .line 74
    .line 75
    if-ne v2, v5, :cond_3

    .line 76
    .line 77
    goto :goto_4

    .line 78
    :cond_3
    invoke-static {v2}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->r(I)I

    .line 79
    .line 80
    .line 81
    move-result v5

    .line 82
    if-eq v5, v4, :cond_7

    .line 83
    .line 84
    move v6, v3

    .line 85
    :goto_2
    const/4 v7, 0x5

    .line 86
    if-gt v6, v7, :cond_5

    .line 87
    .line 88
    invoke-virtual {p0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->h()Ljava/lang/Integer;

    .line 89
    .line 90
    .line 91
    move-result-object v2

    .line 92
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 93
    .line 94
    .line 95
    move-result v2

    .line 96
    invoke-static {v2}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->r(I)I

    .line 97
    .line 98
    .line 99
    move-result v7

    .line 100
    if-ne v7, v4, :cond_4

    .line 101
    .line 102
    goto :goto_3

    .line 103
    :cond_4
    mul-int/lit8 v5, v5, 0x10

    .line 104
    .line 105
    add-int/2addr v5, v7

    .line 106
    add-int/lit8 v6, v6, 0x1

    .line 107
    .line 108
    goto :goto_2

    .line 109
    :cond_5
    :goto_3
    int-to-char v4, v5

    .line 110
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    goto :goto_1

    .line 114
    :cond_6
    :goto_4
    invoke-virtual {p0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->h()Ljava/lang/Integer;

    .line 115
    .line 116
    .line 117
    move-result-object v2

    .line 118
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 119
    .line 120
    .line 121
    move-result v2

    .line 122
    goto :goto_1

    .line 123
    :cond_7
    int-to-char v2, v2

    .line 124
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 125
    .line 126
    .line 127
    invoke-virtual {p0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->h()Ljava/lang/Integer;

    .line 128
    .line 129
    .line 130
    move-result-object v2

    .line 131
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 132
    .line 133
    .line 134
    move-result v2

    .line 135
    goto :goto_1

    .line 136
    :cond_8
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object v0

    .line 140
    return-object v0
.end method

.method public final t()Ljava/lang/String;
    .locals 10

    .line 1
    invoke-virtual {p0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->f()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->a:Ljava/lang/String;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget v0, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->b:I

    .line 10
    .line 11
    goto :goto_3

    .line 12
    :cond_0
    iget v0, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->b:I

    .line 13
    .line 14
    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    const/16 v3, 0x2d

    .line 19
    .line 20
    if-ne v2, v3, :cond_1

    .line 21
    .line 22
    invoke-virtual {p0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->a()I

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    :cond_1
    const/16 v4, 0x5f

    .line 27
    .line 28
    const/16 v5, 0x7a

    .line 29
    .line 30
    const/16 v6, 0x61

    .line 31
    .line 32
    const/16 v7, 0x5a

    .line 33
    .line 34
    const/16 v8, 0x41

    .line 35
    .line 36
    if-lt v2, v8, :cond_2

    .line 37
    .line 38
    if-le v2, v7, :cond_4

    .line 39
    .line 40
    :cond_2
    if-lt v2, v6, :cond_3

    .line 41
    .line 42
    if-le v2, v5, :cond_4

    .line 43
    .line 44
    :cond_3
    if-ne v2, v4, :cond_a

    .line 45
    .line 46
    :cond_4
    invoke-virtual {p0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->a()I

    .line 47
    .line 48
    .line 49
    move-result v2

    .line 50
    :goto_0
    if-lt v2, v8, :cond_5

    .line 51
    .line 52
    if-le v2, v7, :cond_9

    .line 53
    .line 54
    :cond_5
    if-lt v2, v6, :cond_6

    .line 55
    .line 56
    if-le v2, v5, :cond_9

    .line 57
    .line 58
    :cond_6
    const/16 v9, 0x30

    .line 59
    .line 60
    if-lt v2, v9, :cond_7

    .line 61
    .line 62
    const/16 v9, 0x39

    .line 63
    .line 64
    if-le v2, v9, :cond_9

    .line 65
    .line 66
    :cond_7
    if-eq v2, v3, :cond_9

    .line 67
    .line 68
    if-ne v2, v4, :cond_8

    .line 69
    .line 70
    goto :goto_1

    .line 71
    :cond_8
    iget v2, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->b:I

    .line 72
    .line 73
    goto :goto_2

    .line 74
    :cond_9
    :goto_1
    invoke-virtual {p0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->a()I

    .line 75
    .line 76
    .line 77
    move-result v2

    .line 78
    goto :goto_0

    .line 79
    :cond_a
    move v2, v0

    .line 80
    :goto_2
    iput v0, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->b:I

    .line 81
    .line 82
    move v0, v2

    .line 83
    :goto_3
    iget v2, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->b:I

    .line 84
    .line 85
    if-ne v0, v2, :cond_b

    .line 86
    .line 87
    const/4 v0, 0x0

    .line 88
    return-object v0

    .line 89
    :cond_b
    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v1

    .line 93
    iput v0, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->b:I

    .line 94
    .line 95
    return-object v1
.end method

.method public final u()Ljava/util/ArrayList;
    .locals 24

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->f()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x0

    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    return-object v2

    .line 11
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    .line 12
    .line 13
    const/4 v3, 0x1

    .line 14
    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 15
    .line 16
    .line 17
    new-instance v4, Lcom/caverock/androidsvg/CSSParser$Selector;

    .line 18
    .line 19
    invoke-direct {v4}, Lcom/caverock/androidsvg/CSSParser$Selector;-><init>()V

    .line 20
    .line 21
    .line 22
    :goto_0
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->f()Z

    .line 23
    .line 24
    .line 25
    move-result v5

    .line 26
    if-nez v5, :cond_49

    .line 27
    .line 28
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->f()Z

    .line 29
    .line 30
    .line 31
    move-result v5

    .line 32
    if-eqz v5, :cond_1

    .line 33
    .line 34
    goto/16 :goto_26

    .line 35
    .line 36
    :cond_1
    iget v5, v0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->b:I

    .line 37
    .line 38
    iget-object v6, v4, Lcom/caverock/androidsvg/CSSParser$Selector;->a:Ljava/util/ArrayList;

    .line 39
    .line 40
    const/16 v7, 0x2b

    .line 41
    .line 42
    if-eqz v6, :cond_4

    .line 43
    .line 44
    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    .line 45
    .line 46
    .line 47
    move-result v6

    .line 48
    if-eqz v6, :cond_2

    .line 49
    .line 50
    goto :goto_1

    .line 51
    :cond_2
    const/16 v6, 0x3e

    .line 52
    .line 53
    invoke-virtual {v0, v6}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->d(C)Z

    .line 54
    .line 55
    .line 56
    move-result v6

    .line 57
    if-eqz v6, :cond_3

    .line 58
    .line 59
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->q()V

    .line 60
    .line 61
    .line 62
    sget-object v6, Lcom/caverock/androidsvg/CSSParser$Combinator;->f:Lcom/caverock/androidsvg/CSSParser$Combinator;

    .line 63
    .line 64
    goto :goto_2

    .line 65
    :cond_3
    invoke-virtual {v0, v7}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->d(C)Z

    .line 66
    .line 67
    .line 68
    move-result v6

    .line 69
    if-eqz v6, :cond_4

    .line 70
    .line 71
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->q()V

    .line 72
    .line 73
    .line 74
    sget-object v6, Lcom/caverock/androidsvg/CSSParser$Combinator;->g:Lcom/caverock/androidsvg/CSSParser$Combinator;

    .line 75
    .line 76
    goto :goto_2

    .line 77
    :cond_4
    :goto_1
    move-object v6, v2

    .line 78
    :goto_2
    const/16 v8, 0x2a

    .line 79
    .line 80
    invoke-virtual {v0, v8}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->d(C)Z

    .line 81
    .line 82
    .line 83
    move-result v8

    .line 84
    if-eqz v8, :cond_5

    .line 85
    .line 86
    new-instance v8, Lcom/caverock/androidsvg/CSSParser$SimpleSelector;

    .line 87
    .line 88
    invoke-direct {v8, v6, v2}, Lcom/caverock/androidsvg/CSSParser$SimpleSelector;-><init>(Lcom/caverock/androidsvg/CSSParser$Combinator;Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    goto :goto_3

    .line 92
    :cond_5
    invoke-virtual {v0}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->t()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v8

    .line 96
    if-eqz v8, :cond_6

    .line 97
    .line 98
    new-instance v9, Lcom/caverock/androidsvg/CSSParser$SimpleSelector;

    .line 99
    .line 100
    invoke-direct {v9, v6, v8}, Lcom/caverock/androidsvg/CSSParser$SimpleSelector;-><init>(Lcom/caverock/androidsvg/CSSParser$Combinator;Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    iget v8, v4, Lcom/caverock/androidsvg/CSSParser$Selector;->b:I

    .line 104
    .line 105
    add-int/2addr v8, v3

    .line 106
    iput v8, v4, Lcom/caverock/androidsvg/CSSParser$Selector;->b:I

    .line 107
    .line 108
    move-object v8, v9

    .line 109
    goto :goto_3

    .line 110
    :cond_6
    move-object v8, v2

    .line 111
    :goto_3
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->f()Z

    .line 112
    .line 113
    .line 114
    move-result v9

    .line 115
    if-nez v9, :cond_45

    .line 116
    .line 117
    const/16 v9, 0x2e

    .line 118
    .line 119
    invoke-virtual {v0, v9}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->d(C)Z

    .line 120
    .line 121
    .line 122
    move-result v9

    .line 123
    sget-object v10, Lcom/caverock/androidsvg/CSSParser$AttribOp;->f:Lcom/caverock/androidsvg/CSSParser$AttribOp;

    .line 124
    .line 125
    if-eqz v9, :cond_9

    .line 126
    .line 127
    if-nez v8, :cond_7

    .line 128
    .line 129
    new-instance v8, Lcom/caverock/androidsvg/CSSParser$SimpleSelector;

    .line 130
    .line 131
    invoke-direct {v8, v6, v2}, Lcom/caverock/androidsvg/CSSParser$SimpleSelector;-><init>(Lcom/caverock/androidsvg/CSSParser$Combinator;Ljava/lang/String;)V

    .line 132
    .line 133
    .line 134
    :cond_7
    invoke-virtual {v0}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->t()Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object v9

    .line 138
    if-eqz v9, :cond_8

    .line 139
    .line 140
    const-string v11, "class"

    .line 141
    .line 142
    invoke-virtual {v8, v11, v10, v9}, Lcom/caverock/androidsvg/CSSParser$SimpleSelector;->a(Ljava/lang/String;Lcom/caverock/androidsvg/CSSParser$AttribOp;Ljava/lang/String;)V

    .line 143
    .line 144
    .line 145
    invoke-virtual {v4}, Lcom/caverock/androidsvg/CSSParser$Selector;->a()V

    .line 146
    .line 147
    .line 148
    goto :goto_3

    .line 149
    :cond_8
    new-instance v1, Lcom/caverock/androidsvg/CSSParseException;

    .line 150
    .line 151
    const-string v2, "Invalid \".class\" simpleSelectors"

    .line 152
    .line 153
    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 154
    .line 155
    .line 156
    throw v1

    .line 157
    :cond_9
    const/16 v9, 0x23

    .line 158
    .line 159
    invoke-virtual {v0, v9}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->d(C)Z

    .line 160
    .line 161
    .line 162
    move-result v9

    .line 163
    if-eqz v9, :cond_c

    .line 164
    .line 165
    if-nez v8, :cond_a

    .line 166
    .line 167
    new-instance v8, Lcom/caverock/androidsvg/CSSParser$SimpleSelector;

    .line 168
    .line 169
    invoke-direct {v8, v6, v2}, Lcom/caverock/androidsvg/CSSParser$SimpleSelector;-><init>(Lcom/caverock/androidsvg/CSSParser$Combinator;Ljava/lang/String;)V

    .line 170
    .line 171
    .line 172
    :cond_a
    invoke-virtual {v0}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->t()Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    move-result-object v9

    .line 176
    if-eqz v9, :cond_b

    .line 177
    .line 178
    const-string v11, "id"

    .line 179
    .line 180
    invoke-virtual {v8, v11, v10, v9}, Lcom/caverock/androidsvg/CSSParser$SimpleSelector;->a(Ljava/lang/String;Lcom/caverock/androidsvg/CSSParser$AttribOp;Ljava/lang/String;)V

    .line 181
    .line 182
    .line 183
    iget v9, v4, Lcom/caverock/androidsvg/CSSParser$Selector;->b:I

    .line 184
    .line 185
    const v10, 0xf4240

    .line 186
    .line 187
    .line 188
    add-int/2addr v9, v10

    .line 189
    iput v9, v4, Lcom/caverock/androidsvg/CSSParser$Selector;->b:I

    .line 190
    .line 191
    goto :goto_3

    .line 192
    :cond_b
    new-instance v1, Lcom/caverock/androidsvg/CSSParseException;

    .line 193
    .line 194
    const-string v2, "Invalid \"#id\" simpleSelectors"

    .line 195
    .line 196
    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 197
    .line 198
    .line 199
    throw v1

    .line 200
    :cond_c
    const/16 v9, 0x5b

    .line 201
    .line 202
    invoke-virtual {v0, v9}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->d(C)Z

    .line 203
    .line 204
    .line 205
    move-result v9

    .line 206
    if-eqz v9, :cond_18

    .line 207
    .line 208
    if-nez v8, :cond_d

    .line 209
    .line 210
    new-instance v8, Lcom/caverock/androidsvg/CSSParser$SimpleSelector;

    .line 211
    .line 212
    invoke-direct {v8, v6, v2}, Lcom/caverock/androidsvg/CSSParser$SimpleSelector;-><init>(Lcom/caverock/androidsvg/CSSParser$Combinator;Ljava/lang/String;)V

    .line 213
    .line 214
    .line 215
    :cond_d
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->q()V

    .line 216
    .line 217
    .line 218
    invoke-virtual {v0}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->t()Ljava/lang/String;

    .line 219
    .line 220
    .line 221
    move-result-object v9

    .line 222
    const-string v11, "Invalid attribute simpleSelectors"

    .line 223
    .line 224
    if-eqz v9, :cond_17

    .line 225
    .line 226
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->q()V

    .line 227
    .line 228
    .line 229
    const/16 v12, 0x3d

    .line 230
    .line 231
    invoke-virtual {v0, v12}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->d(C)Z

    .line 232
    .line 233
    .line 234
    move-result v12

    .line 235
    if-eqz v12, :cond_e

    .line 236
    .line 237
    goto :goto_4

    .line 238
    :cond_e
    const-string v10, "~="

    .line 239
    .line 240
    invoke-virtual {v0, v10}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->e(Ljava/lang/String;)Z

    .line 241
    .line 242
    .line 243
    move-result v10

    .line 244
    if-eqz v10, :cond_f

    .line 245
    .line 246
    sget-object v10, Lcom/caverock/androidsvg/CSSParser$AttribOp;->g:Lcom/caverock/androidsvg/CSSParser$AttribOp;

    .line 247
    .line 248
    goto :goto_4

    .line 249
    :cond_f
    const-string v10, "|="

    .line 250
    .line 251
    invoke-virtual {v0, v10}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->e(Ljava/lang/String;)Z

    .line 252
    .line 253
    .line 254
    move-result v10

    .line 255
    if-eqz v10, :cond_10

    .line 256
    .line 257
    sget-object v10, Lcom/caverock/androidsvg/CSSParser$AttribOp;->h:Lcom/caverock/androidsvg/CSSParser$AttribOp;

    .line 258
    .line 259
    goto :goto_4

    .line 260
    :cond_10
    move-object v10, v2

    .line 261
    :goto_4
    if-eqz v10, :cond_14

    .line 262
    .line 263
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->q()V

    .line 264
    .line 265
    .line 266
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->f()Z

    .line 267
    .line 268
    .line 269
    move-result v12

    .line 270
    if-eqz v12, :cond_11

    .line 271
    .line 272
    move-object v12, v2

    .line 273
    goto :goto_5

    .line 274
    :cond_11
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->k()Ljava/lang/String;

    .line 275
    .line 276
    .line 277
    move-result-object v12

    .line 278
    if-eqz v12, :cond_12

    .line 279
    .line 280
    goto :goto_5

    .line 281
    :cond_12
    invoke-virtual {v0}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->t()Ljava/lang/String;

    .line 282
    .line 283
    .line 284
    move-result-object v12

    .line 285
    :goto_5
    if-eqz v12, :cond_13

    .line 286
    .line 287
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->q()V

    .line 288
    .line 289
    .line 290
    goto :goto_6

    .line 291
    :cond_13
    new-instance v1, Lcom/caverock/androidsvg/CSSParseException;

    .line 292
    .line 293
    invoke-direct {v1, v11}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 294
    .line 295
    .line 296
    throw v1

    .line 297
    :cond_14
    move-object v12, v2

    .line 298
    :goto_6
    const/16 v13, 0x5d

    .line 299
    .line 300
    invoke-virtual {v0, v13}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->d(C)Z

    .line 301
    .line 302
    .line 303
    move-result v13

    .line 304
    if-eqz v13, :cond_16

    .line 305
    .line 306
    if-nez v10, :cond_15

    .line 307
    .line 308
    sget-object v10, Lcom/caverock/androidsvg/CSSParser$AttribOp;->c:Lcom/caverock/androidsvg/CSSParser$AttribOp;

    .line 309
    .line 310
    :cond_15
    invoke-virtual {v8, v9, v10, v12}, Lcom/caverock/androidsvg/CSSParser$SimpleSelector;->a(Ljava/lang/String;Lcom/caverock/androidsvg/CSSParser$AttribOp;Ljava/lang/String;)V

    .line 311
    .line 312
    .line 313
    invoke-virtual {v4}, Lcom/caverock/androidsvg/CSSParser$Selector;->a()V

    .line 314
    .line 315
    .line 316
    goto/16 :goto_3

    .line 317
    .line 318
    :cond_16
    new-instance v1, Lcom/caverock/androidsvg/CSSParseException;

    .line 319
    .line 320
    invoke-direct {v1, v11}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 321
    .line 322
    .line 323
    throw v1

    .line 324
    :cond_17
    new-instance v1, Lcom/caverock/androidsvg/CSSParseException;

    .line 325
    .line 326
    invoke-direct {v1, v11}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 327
    .line 328
    .line 329
    throw v1

    .line 330
    :cond_18
    const/16 v9, 0x3a

    .line 331
    .line 332
    invoke-virtual {v0, v9}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->d(C)Z

    .line 333
    .line 334
    .line 335
    move-result v9

    .line 336
    if-eqz v9, :cond_45

    .line 337
    .line 338
    if-nez v8, :cond_19

    .line 339
    .line 340
    new-instance v8, Lcom/caverock/androidsvg/CSSParser$SimpleSelector;

    .line 341
    .line 342
    invoke-direct {v8, v6, v2}, Lcom/caverock/androidsvg/CSSParser$SimpleSelector;-><init>(Lcom/caverock/androidsvg/CSSParser$Combinator;Ljava/lang/String;)V

    .line 343
    .line 344
    .line 345
    :cond_19
    invoke-virtual {v0}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->t()Ljava/lang/String;

    .line 346
    .line 347
    .line 348
    move-result-object v9

    .line 349
    if-eqz v9, :cond_44

    .line 350
    .line 351
    sget-object v10, Lcom/caverock/androidsvg/CSSParser$PseudoClassIdents;->i:Ljava/util/HashMap;

    .line 352
    .line 353
    invoke-virtual {v10, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 354
    .line 355
    .line 356
    move-result-object v10

    .line 357
    check-cast v10, Lcom/caverock/androidsvg/CSSParser$PseudoClassIdents;

    .line 358
    .line 359
    if-eqz v10, :cond_1a

    .line 360
    .line 361
    goto :goto_7

    .line 362
    :cond_1a
    sget-object v10, Lcom/caverock/androidsvg/CSSParser$PseudoClassIdents;->h:Lcom/caverock/androidsvg/CSSParser$PseudoClassIdents;

    .line 363
    .line 364
    :goto_7
    invoke-virtual {v10}, Ljava/lang/Enum;->ordinal()I

    .line 365
    .line 366
    .line 367
    move-result v11

    .line 368
    const-string v13, "Invalid or missing parameter section for pseudo class: "

    .line 369
    .line 370
    const/16 v14, 0x29

    .line 371
    .line 372
    const/16 v15, 0x28

    .line 373
    .line 374
    packed-switch v11, :pswitch_data_0

    .line 375
    .line 376
    .line 377
    new-instance v1, Lcom/caverock/androidsvg/CSSParseException;

    .line 378
    .line 379
    const-string v2, "Unsupported pseudo class: "

    .line 380
    .line 381
    invoke-virtual {v2, v9}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 382
    .line 383
    .line 384
    move-result-object v2

    .line 385
    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 386
    .line 387
    .line 388
    throw v1

    .line 389
    :pswitch_0
    new-instance v10, Lcom/caverock/androidsvg/CSSParser$PseudoClassNotSupported;

    .line 390
    .line 391
    invoke-direct {v10, v9}, Lcom/caverock/androidsvg/CSSParser$PseudoClassNotSupported;-><init>(Ljava/lang/String;)V

    .line 392
    .line 393
    .line 394
    invoke-virtual {v4}, Lcom/caverock/androidsvg/CSSParser$Selector;->a()V

    .line 395
    .line 396
    .line 397
    :goto_8
    move v12, v7

    .line 398
    goto/16 :goto_24

    .line 399
    .line 400
    :pswitch_1
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->f()Z

    .line 401
    .line 402
    .line 403
    move-result v10

    .line 404
    if-eqz v10, :cond_1b

    .line 405
    .line 406
    goto :goto_9

    .line 407
    :cond_1b
    iget v10, v0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->b:I

    .line 408
    .line 409
    invoke-virtual {v0, v15}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->d(C)Z

    .line 410
    .line 411
    .line 412
    move-result v11

    .line 413
    if-nez v11, :cond_1c

    .line 414
    .line 415
    goto :goto_9

    .line 416
    :cond_1c
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->q()V

    .line 417
    .line 418
    .line 419
    move-object v11, v2

    .line 420
    :cond_1d
    invoke-virtual {v0}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->t()Ljava/lang/String;

    .line 421
    .line 422
    .line 423
    move-result-object v12

    .line 424
    if-nez v12, :cond_1e

    .line 425
    .line 426
    iput v10, v0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->b:I

    .line 427
    .line 428
    goto :goto_9

    .line 429
    :cond_1e
    if-nez v11, :cond_1f

    .line 430
    .line 431
    new-instance v11, Ljava/util/ArrayList;

    .line 432
    .line 433
    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 434
    .line 435
    .line 436
    :cond_1f
    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 437
    .line 438
    .line 439
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->q()V

    .line 440
    .line 441
    .line 442
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->p()Z

    .line 443
    .line 444
    .line 445
    move-result v12

    .line 446
    if-nez v12, :cond_1d

    .line 447
    .line 448
    invoke-virtual {v0, v14}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->d(C)Z

    .line 449
    .line 450
    .line 451
    move-result v11

    .line 452
    if-eqz v11, :cond_20

    .line 453
    .line 454
    goto :goto_9

    .line 455
    :cond_20
    iput v10, v0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->b:I

    .line 456
    .line 457
    :goto_9
    new-instance v10, Lcom/caverock/androidsvg/CSSParser$PseudoClassNotSupported;

    .line 458
    .line 459
    invoke-direct {v10, v9}, Lcom/caverock/androidsvg/CSSParser$PseudoClassNotSupported;-><init>(Ljava/lang/String;)V

    .line 460
    .line 461
    .line 462
    invoke-virtual {v4}, Lcom/caverock/androidsvg/CSSParser$Selector;->a()V

    .line 463
    .line 464
    .line 465
    goto :goto_8

    .line 466
    :pswitch_2
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->f()Z

    .line 467
    .line 468
    .line 469
    move-result v10

    .line 470
    if-eqz v10, :cond_21

    .line 471
    .line 472
    :goto_a
    move-object v11, v2

    .line 473
    goto/16 :goto_f

    .line 474
    .line 475
    :cond_21
    iget v10, v0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->b:I

    .line 476
    .line 477
    invoke-virtual {v0, v15}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->d(C)Z

    .line 478
    .line 479
    .line 480
    move-result v11

    .line 481
    if-nez v11, :cond_22

    .line 482
    .line 483
    goto :goto_a

    .line 484
    :cond_22
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->q()V

    .line 485
    .line 486
    .line 487
    invoke-virtual {v0}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->u()Ljava/util/ArrayList;

    .line 488
    .line 489
    .line 490
    move-result-object v11

    .line 491
    if-nez v11, :cond_23

    .line 492
    .line 493
    iput v10, v0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->b:I

    .line 494
    .line 495
    goto :goto_a

    .line 496
    :cond_23
    invoke-virtual {v0, v14}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->d(C)Z

    .line 497
    .line 498
    .line 499
    move-result v14

    .line 500
    if-nez v14, :cond_24

    .line 501
    .line 502
    iput v10, v0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->b:I

    .line 503
    .line 504
    goto :goto_a

    .line 505
    :cond_24
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    .line 506
    .line 507
    .line 508
    move-result v10

    .line 509
    const/4 v14, 0x0

    .line 510
    :goto_b
    if-ge v14, v10, :cond_2a

    .line 511
    .line 512
    invoke-virtual {v11, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 513
    .line 514
    .line 515
    move-result-object v15

    .line 516
    add-int/lit8 v14, v14, 0x1

    .line 517
    .line 518
    check-cast v15, Lcom/caverock/androidsvg/CSSParser$Selector;

    .line 519
    .line 520
    iget-object v15, v15, Lcom/caverock/androidsvg/CSSParser$Selector;->a:Ljava/util/ArrayList;

    .line 521
    .line 522
    if-nez v15, :cond_25

    .line 523
    .line 524
    goto :goto_f

    .line 525
    :cond_25
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    .line 526
    .line 527
    .line 528
    move-result v7

    .line 529
    const/4 v2, 0x0

    .line 530
    :goto_c
    if-ge v2, v7, :cond_29

    .line 531
    .line 532
    invoke-virtual {v15, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 533
    .line 534
    .line 535
    move-result-object v16

    .line 536
    add-int/lit8 v2, v2, 0x1

    .line 537
    .line 538
    move-object/from16 v12, v16

    .line 539
    .line 540
    check-cast v12, Lcom/caverock/androidsvg/CSSParser$SimpleSelector;

    .line 541
    .line 542
    iget-object v12, v12, Lcom/caverock/androidsvg/CSSParser$SimpleSelector;->d:Ljava/util/ArrayList;

    .line 543
    .line 544
    if-nez v12, :cond_26

    .line 545
    .line 546
    goto :goto_e

    .line 547
    :cond_26
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    .line 548
    .line 549
    .line 550
    move-result v3

    .line 551
    move/from16 v18, v2

    .line 552
    .line 553
    const/4 v2, 0x0

    .line 554
    :goto_d
    if-ge v2, v3, :cond_28

    .line 555
    .line 556
    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 557
    .line 558
    .line 559
    move-result-object v19

    .line 560
    add-int/lit8 v2, v2, 0x1

    .line 561
    .line 562
    move/from16 v20, v2

    .line 563
    .line 564
    move-object/from16 v2, v19

    .line 565
    .line 566
    check-cast v2, Lcom/caverock/androidsvg/CSSParser$PseudoClass;

    .line 567
    .line 568
    instance-of v2, v2, Lcom/caverock/androidsvg/CSSParser$PseudoClassNot;

    .line 569
    .line 570
    if-eqz v2, :cond_27

    .line 571
    .line 572
    const/4 v11, 0x0

    .line 573
    goto :goto_f

    .line 574
    :cond_27
    move/from16 v2, v20

    .line 575
    .line 576
    goto :goto_d

    .line 577
    :cond_28
    move/from16 v2, v18

    .line 578
    .line 579
    const/4 v3, 0x1

    .line 580
    goto :goto_c

    .line 581
    :cond_29
    :goto_e
    const/4 v2, 0x0

    .line 582
    const/4 v3, 0x1

    .line 583
    const/16 v7, 0x2b

    .line 584
    .line 585
    goto :goto_b

    .line 586
    :cond_2a
    :goto_f
    if-eqz v11, :cond_2d

    .line 587
    .line 588
    new-instance v10, Lcom/caverock/androidsvg/CSSParser$PseudoClassNot;

    .line 589
    .line 590
    invoke-direct {v10}, Ljava/lang/Object;-><init>()V

    .line 591
    .line 592
    .line 593
    iput-object v11, v10, Lcom/caverock/androidsvg/CSSParser$PseudoClassNot;->a:Ljava/util/List;

    .line 594
    .line 595
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    .line 596
    .line 597
    .line 598
    move-result v2

    .line 599
    const/high16 v3, -0x80000000

    .line 600
    .line 601
    const/4 v12, 0x0

    .line 602
    :cond_2b
    :goto_10
    if-ge v12, v2, :cond_2c

    .line 603
    .line 604
    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 605
    .line 606
    .line 607
    move-result-object v7

    .line 608
    add-int/lit8 v12, v12, 0x1

    .line 609
    .line 610
    check-cast v7, Lcom/caverock/androidsvg/CSSParser$Selector;

    .line 611
    .line 612
    iget v7, v7, Lcom/caverock/androidsvg/CSSParser$Selector;->b:I

    .line 613
    .line 614
    if-le v7, v3, :cond_2b

    .line 615
    .line 616
    move v3, v7

    .line 617
    goto :goto_10

    .line 618
    :cond_2c
    iput v3, v4, Lcom/caverock/androidsvg/CSSParser$Selector;->b:I

    .line 619
    .line 620
    :goto_11
    const/16 v12, 0x2b

    .line 621
    .line 622
    goto/16 :goto_24

    .line 623
    .line 624
    :cond_2d
    new-instance v1, Lcom/caverock/androidsvg/CSSParseException;

    .line 625
    .line 626
    invoke-virtual {v13, v9}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 627
    .line 628
    .line 629
    move-result-object v2

    .line 630
    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 631
    .line 632
    .line 633
    throw v1

    .line 634
    :pswitch_3
    new-instance v10, Lcom/caverock/androidsvg/CSSParser$PseudoClassEmpty;

    .line 635
    .line 636
    invoke-direct {v10}, Ljava/lang/Object;-><init>()V

    .line 637
    .line 638
    .line 639
    invoke-virtual {v4}, Lcom/caverock/androidsvg/CSSParser$Selector;->a()V

    .line 640
    .line 641
    .line 642
    goto :goto_11

    .line 643
    :pswitch_4
    new-instance v10, Lcom/caverock/androidsvg/CSSParser$PseudoClassOnlyChild;

    .line 644
    .line 645
    iget-object v2, v8, Lcom/caverock/androidsvg/CSSParser$SimpleSelector;->b:Ljava/lang/String;

    .line 646
    .line 647
    const/4 v3, 0x1

    .line 648
    invoke-direct {v10, v2, v3}, Lcom/caverock/androidsvg/CSSParser$PseudoClassOnlyChild;-><init>(Ljava/lang/String;Z)V

    .line 649
    .line 650
    .line 651
    invoke-virtual {v4}, Lcom/caverock/androidsvg/CSSParser$Selector;->a()V

    .line 652
    .line 653
    .line 654
    goto :goto_11

    .line 655
    :pswitch_5
    new-instance v10, Lcom/caverock/androidsvg/CSSParser$PseudoClassOnlyChild;

    .line 656
    .line 657
    const/4 v2, 0x0

    .line 658
    const/4 v3, 0x0

    .line 659
    invoke-direct {v10, v3, v2}, Lcom/caverock/androidsvg/CSSParser$PseudoClassOnlyChild;-><init>(Ljava/lang/String;Z)V

    .line 660
    .line 661
    .line 662
    invoke-virtual {v4}, Lcom/caverock/androidsvg/CSSParser$Selector;->a()V

    .line 663
    .line 664
    .line 665
    goto :goto_11

    .line 666
    :pswitch_6
    move-object v3, v2

    .line 667
    new-instance v17, Lcom/caverock/androidsvg/CSSParser$PseudoClassAnPlusB;

    .line 668
    .line 669
    const/16 v22, 0x1

    .line 670
    .line 671
    iget-object v2, v8, Lcom/caverock/androidsvg/CSSParser$SimpleSelector;->b:Ljava/lang/String;

    .line 672
    .line 673
    const/16 v18, 0x0

    .line 674
    .line 675
    const/16 v19, 0x1

    .line 676
    .line 677
    const/16 v21, 0x0

    .line 678
    .line 679
    move-object/from16 v20, v2

    .line 680
    .line 681
    invoke-direct/range {v17 .. v22}, Lcom/caverock/androidsvg/CSSParser$PseudoClassAnPlusB;-><init>(IILjava/lang/String;ZZ)V

    .line 682
    .line 683
    .line 684
    invoke-virtual {v4}, Lcom/caverock/androidsvg/CSSParser$Selector;->a()V

    .line 685
    .line 686
    .line 687
    :goto_12
    move-object/from16 v10, v17

    .line 688
    .line 689
    goto :goto_11

    .line 690
    :pswitch_7
    move-object v3, v2

    .line 691
    new-instance v9, Lcom/caverock/androidsvg/CSSParser$PseudoClassAnPlusB;

    .line 692
    .line 693
    const/4 v14, 0x1

    .line 694
    iget-object v12, v8, Lcom/caverock/androidsvg/CSSParser$SimpleSelector;->b:Ljava/lang/String;

    .line 695
    .line 696
    const/4 v10, 0x0

    .line 697
    const/4 v11, 0x1

    .line 698
    const/4 v13, 0x1

    .line 699
    invoke-direct/range {v9 .. v14}, Lcom/caverock/androidsvg/CSSParser$PseudoClassAnPlusB;-><init>(IILjava/lang/String;ZZ)V

    .line 700
    .line 701
    .line 702
    invoke-virtual {v4}, Lcom/caverock/androidsvg/CSSParser$Selector;->a()V

    .line 703
    .line 704
    .line 705
    move-object v10, v9

    .line 706
    goto :goto_11

    .line 707
    :pswitch_8
    move-object v3, v2

    .line 708
    new-instance v10, Lcom/caverock/androidsvg/CSSParser$PseudoClassAnPlusB;

    .line 709
    .line 710
    const/4 v15, 0x0

    .line 711
    const/4 v13, 0x0

    .line 712
    const/4 v11, 0x0

    .line 713
    const/4 v12, 0x1

    .line 714
    const/4 v14, 0x0

    .line 715
    invoke-direct/range {v10 .. v15}, Lcom/caverock/androidsvg/CSSParser$PseudoClassAnPlusB;-><init>(IILjava/lang/String;ZZ)V

    .line 716
    .line 717
    .line 718
    invoke-virtual {v4}, Lcom/caverock/androidsvg/CSSParser$Selector;->a()V

    .line 719
    .line 720
    .line 721
    goto :goto_11

    .line 722
    :pswitch_9
    move-object v3, v2

    .line 723
    new-instance v17, Lcom/caverock/androidsvg/CSSParser$PseudoClassAnPlusB;

    .line 724
    .line 725
    const/16 v22, 0x0

    .line 726
    .line 727
    const/16 v20, 0x0

    .line 728
    .line 729
    const/16 v18, 0x0

    .line 730
    .line 731
    const/16 v19, 0x1

    .line 732
    .line 733
    const/16 v21, 0x1

    .line 734
    .line 735
    invoke-direct/range {v17 .. v22}, Lcom/caverock/androidsvg/CSSParser$PseudoClassAnPlusB;-><init>(IILjava/lang/String;ZZ)V

    .line 736
    .line 737
    .line 738
    invoke-virtual {v4}, Lcom/caverock/androidsvg/CSSParser$Selector;->a()V

    .line 739
    .line 740
    .line 741
    goto :goto_12

    .line 742
    :pswitch_a
    move-object v3, v2

    .line 743
    sget-object v2, Lcom/caverock/androidsvg/CSSParser$PseudoClassIdents;->c:Lcom/caverock/androidsvg/CSSParser$PseudoClassIdents;

    .line 744
    .line 745
    if-eq v10, v2, :cond_2f

    .line 746
    .line 747
    sget-object v2, Lcom/caverock/androidsvg/CSSParser$PseudoClassIdents;->f:Lcom/caverock/androidsvg/CSSParser$PseudoClassIdents;

    .line 748
    .line 749
    if-ne v10, v2, :cond_2e

    .line 750
    .line 751
    goto :goto_13

    .line 752
    :cond_2e
    const/16 v22, 0x0

    .line 753
    .line 754
    goto :goto_14

    .line 755
    :cond_2f
    :goto_13
    const/16 v22, 0x1

    .line 756
    .line 757
    :goto_14
    sget-object v2, Lcom/caverock/androidsvg/CSSParser$PseudoClassIdents;->f:Lcom/caverock/androidsvg/CSSParser$PseudoClassIdents;

    .line 758
    .line 759
    if-eq v10, v2, :cond_31

    .line 760
    .line 761
    sget-object v2, Lcom/caverock/androidsvg/CSSParser$PseudoClassIdents;->g:Lcom/caverock/androidsvg/CSSParser$PseudoClassIdents;

    .line 762
    .line 763
    if-ne v10, v2, :cond_30

    .line 764
    .line 765
    goto :goto_15

    .line 766
    :cond_30
    const/16 v23, 0x0

    .line 767
    .line 768
    goto :goto_16

    .line 769
    :cond_31
    :goto_15
    const/16 v23, 0x1

    .line 770
    .line 771
    :goto_16
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->f()Z

    .line 772
    .line 773
    .line 774
    move-result v2

    .line 775
    if-eqz v2, :cond_32

    .line 776
    .line 777
    :goto_17
    move-object v7, v3

    .line 778
    const/16 v12, 0x2b

    .line 779
    .line 780
    goto/16 :goto_23

    .line 781
    .line 782
    :cond_32
    iget v2, v0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->b:I

    .line 783
    .line 784
    invoke-virtual {v0, v15}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->d(C)Z

    .line 785
    .line 786
    .line 787
    move-result v7

    .line 788
    if-nez v7, :cond_33

    .line 789
    .line 790
    goto :goto_17

    .line 791
    :cond_33
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->q()V

    .line 792
    .line 793
    .line 794
    const-string v7, "odd"

    .line 795
    .line 796
    invoke-virtual {v0, v7}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->e(Ljava/lang/String;)Z

    .line 797
    .line 798
    .line 799
    move-result v7

    .line 800
    const/4 v10, 0x2

    .line 801
    if-eqz v7, :cond_34

    .line 802
    .line 803
    new-instance v7, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner$AnPlusB;

    .line 804
    .line 805
    const/4 v11, 0x1

    .line 806
    invoke-direct {v7, v10, v11}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner$AnPlusB;-><init>(II)V

    .line 807
    .line 808
    .line 809
    :goto_18
    const/16 v12, 0x2b

    .line 810
    .line 811
    goto/16 :goto_22

    .line 812
    .line 813
    :cond_34
    const/4 v11, 0x1

    .line 814
    const-string v7, "even"

    .line 815
    .line 816
    invoke-virtual {v0, v7}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->e(Ljava/lang/String;)Z

    .line 817
    .line 818
    .line 819
    move-result v7

    .line 820
    if-eqz v7, :cond_35

    .line 821
    .line 822
    new-instance v7, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner$AnPlusB;

    .line 823
    .line 824
    const/4 v12, 0x0

    .line 825
    invoke-direct {v7, v10, v12}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner$AnPlusB;-><init>(II)V

    .line 826
    .line 827
    .line 828
    goto :goto_18

    .line 829
    :cond_35
    const/16 v7, 0x2b

    .line 830
    .line 831
    const/4 v12, 0x0

    .line 832
    invoke-virtual {v0, v7}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->d(C)Z

    .line 833
    .line 834
    .line 835
    move-result v10

    .line 836
    const/16 v15, 0x2d

    .line 837
    .line 838
    if-eqz v10, :cond_36

    .line 839
    .line 840
    goto :goto_19

    .line 841
    :cond_36
    invoke-virtual {v0, v15}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->d(C)Z

    .line 842
    .line 843
    .line 844
    move-result v10

    .line 845
    if-eqz v10, :cond_37

    .line 846
    .line 847
    const/4 v10, -0x1

    .line 848
    goto :goto_1a

    .line 849
    :cond_37
    :goto_19
    move v10, v11

    .line 850
    :goto_1a
    iget v3, v0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->b:I

    .line 851
    .line 852
    iget v7, v0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->c:I

    .line 853
    .line 854
    iget-object v11, v0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->a:Ljava/lang/String;

    .line 855
    .line 856
    invoke-static {v3, v7, v11}, Lcom/caverock/androidsvg/IntegerParser;->a(IILjava/lang/String;)Lcom/caverock/androidsvg/IntegerParser;

    .line 857
    .line 858
    .line 859
    move-result-object v3

    .line 860
    if-eqz v3, :cond_38

    .line 861
    .line 862
    iget v12, v3, Lcom/caverock/androidsvg/IntegerParser;->a:I

    .line 863
    .line 864
    iput v12, v0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->b:I

    .line 865
    .line 866
    :cond_38
    const/16 v12, 0x6e

    .line 867
    .line 868
    invoke-virtual {v0, v12}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->d(C)Z

    .line 869
    .line 870
    .line 871
    move-result v12

    .line 872
    if-nez v12, :cond_3a

    .line 873
    .line 874
    const/16 v12, 0x4e

    .line 875
    .line 876
    invoke-virtual {v0, v12}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->d(C)Z

    .line 877
    .line 878
    .line 879
    move-result v12

    .line 880
    if-eqz v12, :cond_39

    .line 881
    .line 882
    goto :goto_1b

    .line 883
    :cond_39
    move-object v7, v3

    .line 884
    move/from16 v16, v10

    .line 885
    .line 886
    const/4 v3, 0x0

    .line 887
    const/4 v10, 0x1

    .line 888
    const/16 v12, 0x2b

    .line 889
    .line 890
    goto :goto_1f

    .line 891
    :cond_3a
    :goto_1b
    if-eqz v3, :cond_3b

    .line 892
    .line 893
    goto :goto_1c

    .line 894
    :cond_3b
    new-instance v3, Lcom/caverock/androidsvg/IntegerParser;

    .line 895
    .line 896
    const-wide/16 v14, 0x1

    .line 897
    .line 898
    iget v12, v0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->b:I

    .line 899
    .line 900
    invoke-direct {v3, v14, v15, v12}, Lcom/caverock/androidsvg/IntegerParser;-><init>(JI)V

    .line 901
    .line 902
    .line 903
    :goto_1c
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->q()V

    .line 904
    .line 905
    .line 906
    const/16 v12, 0x2b

    .line 907
    .line 908
    invoke-virtual {v0, v12}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->d(C)Z

    .line 909
    .line 910
    .line 911
    move-result v14

    .line 912
    if-nez v14, :cond_3c

    .line 913
    .line 914
    const/16 v15, 0x2d

    .line 915
    .line 916
    invoke-virtual {v0, v15}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->d(C)Z

    .line 917
    .line 918
    .line 919
    move-result v14

    .line 920
    if-eqz v14, :cond_3c

    .line 921
    .line 922
    const/16 v16, -0x1

    .line 923
    .line 924
    goto :goto_1d

    .line 925
    :cond_3c
    const/16 v16, 0x1

    .line 926
    .line 927
    :goto_1d
    if-eqz v14, :cond_3e

    .line 928
    .line 929
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->q()V

    .line 930
    .line 931
    .line 932
    iget v14, v0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->b:I

    .line 933
    .line 934
    invoke-static {v14, v7, v11}, Lcom/caverock/androidsvg/IntegerParser;->a(IILjava/lang/String;)Lcom/caverock/androidsvg/IntegerParser;

    .line 935
    .line 936
    .line 937
    move-result-object v7

    .line 938
    if-eqz v7, :cond_3d

    .line 939
    .line 940
    iget v11, v7, Lcom/caverock/androidsvg/IntegerParser;->a:I

    .line 941
    .line 942
    iput v11, v0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->b:I

    .line 943
    .line 944
    goto :goto_1f

    .line 945
    :cond_3d
    iput v2, v0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->b:I

    .line 946
    .line 947
    :goto_1e
    const/4 v7, 0x0

    .line 948
    goto :goto_23

    .line 949
    :cond_3e
    const/4 v7, 0x0

    .line 950
    :goto_1f
    new-instance v11, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner$AnPlusB;

    .line 951
    .line 952
    if-nez v3, :cond_3f

    .line 953
    .line 954
    const/4 v3, 0x0

    .line 955
    goto :goto_20

    .line 956
    :cond_3f
    iget-wide v14, v3, Lcom/caverock/androidsvg/IntegerParser;->b:J

    .line 957
    .line 958
    long-to-int v3, v14

    .line 959
    mul-int/2addr v3, v10

    .line 960
    :goto_20
    if-nez v7, :cond_40

    .line 961
    .line 962
    const/4 v7, 0x0

    .line 963
    goto :goto_21

    .line 964
    :cond_40
    iget-wide v14, v7, Lcom/caverock/androidsvg/IntegerParser;->b:J

    .line 965
    .line 966
    long-to-int v7, v14

    .line 967
    mul-int v7, v7, v16

    .line 968
    .line 969
    :goto_21
    invoke-direct {v11, v3, v7}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner$AnPlusB;-><init>(II)V

    .line 970
    .line 971
    .line 972
    move-object v7, v11

    .line 973
    :goto_22
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->q()V

    .line 974
    .line 975
    .line 976
    const/16 v3, 0x29

    .line 977
    .line 978
    invoke-virtual {v0, v3}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->d(C)Z

    .line 979
    .line 980
    .line 981
    move-result v3

    .line 982
    if-eqz v3, :cond_41

    .line 983
    .line 984
    goto :goto_23

    .line 985
    :cond_41
    iput v2, v0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->b:I

    .line 986
    .line 987
    goto :goto_1e

    .line 988
    :goto_23
    if-eqz v7, :cond_42

    .line 989
    .line 990
    new-instance v18, Lcom/caverock/androidsvg/CSSParser$PseudoClassAnPlusB;

    .line 991
    .line 992
    iget v2, v7, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner$AnPlusB;->a:I

    .line 993
    .line 994
    iget v3, v7, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner$AnPlusB;->b:I

    .line 995
    .line 996
    iget-object v7, v8, Lcom/caverock/androidsvg/CSSParser$SimpleSelector;->b:Ljava/lang/String;

    .line 997
    .line 998
    move/from16 v19, v2

    .line 999
    .line 1000
    move/from16 v20, v3

    .line 1001
    .line 1002
    move-object/from16 v21, v7

    .line 1003
    .line 1004
    invoke-direct/range {v18 .. v23}, Lcom/caverock/androidsvg/CSSParser$PseudoClassAnPlusB;-><init>(IILjava/lang/String;ZZ)V

    .line 1005
    .line 1006
    .line 1007
    invoke-virtual {v4}, Lcom/caverock/androidsvg/CSSParser$Selector;->a()V

    .line 1008
    .line 1009
    .line 1010
    move-object/from16 v10, v18

    .line 1011
    .line 1012
    goto :goto_24

    .line 1013
    :cond_42
    new-instance v1, Lcom/caverock/androidsvg/CSSParseException;

    .line 1014
    .line 1015
    invoke-virtual {v13, v9}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 1016
    .line 1017
    .line 1018
    move-result-object v2

    .line 1019
    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 1020
    .line 1021
    .line 1022
    throw v1

    .line 1023
    :pswitch_b
    move v12, v7

    .line 1024
    new-instance v10, Lcom/caverock/androidsvg/CSSParser$PseudoClassRoot;

    .line 1025
    .line 1026
    invoke-direct {v10}, Ljava/lang/Object;-><init>()V

    .line 1027
    .line 1028
    .line 1029
    invoke-virtual {v4}, Lcom/caverock/androidsvg/CSSParser$Selector;->a()V

    .line 1030
    .line 1031
    .line 1032
    goto :goto_24

    .line 1033
    :pswitch_c
    move v12, v7

    .line 1034
    new-instance v10, Lcom/caverock/androidsvg/CSSParser$PseudoClassTarget;

    .line 1035
    .line 1036
    invoke-direct {v10}, Ljava/lang/Object;-><init>()V

    .line 1037
    .line 1038
    .line 1039
    invoke-virtual {v4}, Lcom/caverock/androidsvg/CSSParser$Selector;->a()V

    .line 1040
    .line 1041
    .line 1042
    :goto_24
    iget-object v2, v8, Lcom/caverock/androidsvg/CSSParser$SimpleSelector;->d:Ljava/util/ArrayList;

    .line 1043
    .line 1044
    if-nez v2, :cond_43

    .line 1045
    .line 1046
    new-instance v2, Ljava/util/ArrayList;

    .line 1047
    .line 1048
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1049
    .line 1050
    .line 1051
    iput-object v2, v8, Lcom/caverock/androidsvg/CSSParser$SimpleSelector;->d:Ljava/util/ArrayList;

    .line 1052
    .line 1053
    :cond_43
    iget-object v2, v8, Lcom/caverock/androidsvg/CSSParser$SimpleSelector;->d:Ljava/util/ArrayList;

    .line 1054
    .line 1055
    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1056
    .line 1057
    .line 1058
    move v7, v12

    .line 1059
    const/4 v2, 0x0

    .line 1060
    const/4 v3, 0x1

    .line 1061
    goto/16 :goto_3

    .line 1062
    .line 1063
    :cond_44
    new-instance v1, Lcom/caverock/androidsvg/CSSParseException;

    .line 1064
    .line 1065
    const-string v2, "Invalid pseudo class"

    .line 1066
    .line 1067
    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 1068
    .line 1069
    .line 1070
    throw v1

    .line 1071
    :cond_45
    if-eqz v8, :cond_48

    .line 1072
    .line 1073
    iget-object v2, v4, Lcom/caverock/androidsvg/CSSParser$Selector;->a:Ljava/util/ArrayList;

    .line 1074
    .line 1075
    if-nez v2, :cond_46

    .line 1076
    .line 1077
    new-instance v2, Ljava/util/ArrayList;

    .line 1078
    .line 1079
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1080
    .line 1081
    .line 1082
    iput-object v2, v4, Lcom/caverock/androidsvg/CSSParser$Selector;->a:Ljava/util/ArrayList;

    .line 1083
    .line 1084
    :cond_46
    iget-object v2, v4, Lcom/caverock/androidsvg/CSSParser$Selector;->a:Ljava/util/ArrayList;

    .line 1085
    .line 1086
    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1087
    .line 1088
    .line 1089
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->p()Z

    .line 1090
    .line 1091
    .line 1092
    move-result v2

    .line 1093
    if-nez v2, :cond_47

    .line 1094
    .line 1095
    :goto_25
    const/4 v2, 0x0

    .line 1096
    const/4 v3, 0x1

    .line 1097
    goto/16 :goto_0

    .line 1098
    .line 1099
    :cond_47
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1100
    .line 1101
    .line 1102
    new-instance v4, Lcom/caverock/androidsvg/CSSParser$Selector;

    .line 1103
    .line 1104
    invoke-direct {v4}, Lcom/caverock/androidsvg/CSSParser$Selector;-><init>()V

    .line 1105
    .line 1106
    .line 1107
    goto :goto_25

    .line 1108
    :cond_48
    iput v5, v0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->b:I

    .line 1109
    .line 1110
    :cond_49
    :goto_26
    iget-object v2, v4, Lcom/caverock/androidsvg/CSSParser$Selector;->a:Ljava/util/ArrayList;

    .line 1111
    .line 1112
    if-eqz v2, :cond_4b

    .line 1113
    .line 1114
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 1115
    .line 1116
    .line 1117
    move-result v2

    .line 1118
    if-eqz v2, :cond_4a

    .line 1119
    .line 1120
    goto :goto_27

    .line 1121
    :cond_4a
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1122
    .line 1123
    .line 1124
    :cond_4b
    :goto_27
    return-object v1

    .line 1125
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
