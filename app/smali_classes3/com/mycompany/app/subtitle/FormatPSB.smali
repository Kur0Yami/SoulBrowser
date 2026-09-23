.class public Lcom/mycompany/app/subtitle/FormatPSB;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lcom/mycompany/app/subtitle/Caption;Ljava/util/ArrayList;)V
    .locals 5

    .line 1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    check-cast p1, Ljava/util/List;

    .line 14
    .line 15
    if-nez p1, :cond_1

    .line 16
    .line 17
    :goto_0
    return-void

    .line 18
    :cond_1
    iget-object v0, p0, Lcom/mycompany/app/subtitle/Caption;->a:Lcom/mycompany/app/subtitle/Time;

    .line 19
    .line 20
    iget v0, v0, Lcom/mycompany/app/subtitle/Time;->a:I

    .line 21
    .line 22
    iget-object v1, p0, Lcom/mycompany/app/subtitle/Caption;->b:Lcom/mycompany/app/subtitle/Time;

    .line 23
    .line 24
    iget v1, v1, Lcom/mycompany/app/subtitle/Time;->a:I

    .line 25
    .line 26
    if-ge v0, v1, :cond_3

    .line 27
    .line 28
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    if-lez v0, :cond_2

    .line 33
    .line 34
    add-int/lit8 v0, v0, -0x1

    .line 35
    .line 36
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    check-cast v0, Lcom/mycompany/app/subtitle/SubtitleItem;

    .line 41
    .line 42
    if-eqz v0, :cond_2

    .line 43
    .line 44
    iget-wide v1, v0, Lcom/mycompany/app/subtitle/SubtitleItem;->a:J

    .line 45
    .line 46
    iget-object v3, p0, Lcom/mycompany/app/subtitle/Caption;->a:Lcom/mycompany/app/subtitle/Time;

    .line 47
    .line 48
    iget v3, v3, Lcom/mycompany/app/subtitle/Time;->a:I

    .line 49
    .line 50
    int-to-long v3, v3

    .line 51
    cmp-long v1, v1, v3

    .line 52
    .line 53
    if-nez v1, :cond_2

    .line 54
    .line 55
    iget-object v1, p0, Lcom/mycompany/app/subtitle/Caption;->c:Ljava/lang/String;

    .line 56
    .line 57
    iput-object v1, v0, Lcom/mycompany/app/subtitle/SubtitleItem;->b:Ljava/lang/String;

    .line 58
    .line 59
    goto :goto_1

    .line 60
    :cond_2
    new-instance v0, Lcom/mycompany/app/subtitle/SubtitleItem;

    .line 61
    .line 62
    iget-object v1, p0, Lcom/mycompany/app/subtitle/Caption;->a:Lcom/mycompany/app/subtitle/Time;

    .line 63
    .line 64
    iget v1, v1, Lcom/mycompany/app/subtitle/Time;->a:I

    .line 65
    .line 66
    int-to-long v1, v1

    .line 67
    iget-object v3, p0, Lcom/mycompany/app/subtitle/Caption;->c:Ljava/lang/String;

    .line 68
    .line 69
    invoke-direct {v0, v1, v2, v3}, Lcom/mycompany/app/subtitle/SubtitleItem;-><init>(JLjava/lang/String;)V

    .line 70
    .line 71
    .line 72
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 73
    .line 74
    .line 75
    :cond_3
    :goto_1
    new-instance v0, Lcom/mycompany/app/subtitle/SubtitleItem;

    .line 76
    .line 77
    iget-object p0, p0, Lcom/mycompany/app/subtitle/Caption;->b:Lcom/mycompany/app/subtitle/Time;

    .line 78
    .line 79
    iget p0, p0, Lcom/mycompany/app/subtitle/Time;->a:I

    .line 80
    .line 81
    int-to-long v1, p0

    .line 82
    const/4 p0, 0x0

    .line 83
    invoke-direct {v0, v1, v2, p0}, Lcom/mycompany/app/subtitle/SubtitleItem;-><init>(JLjava/lang/String;)V

    .line 84
    .line 85
    .line 86
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 87
    .line 88
    .line 89
    return-void
.end method

.method public static b(Ljava/lang/String;)Lcom/mycompany/app/subtitle/Caption;
    .locals 9

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    goto/16 :goto_0

    .line 8
    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    const/16 v1, 0x7b

    .line 15
    .line 16
    if-eq v0, v1, :cond_1

    .line 17
    .line 18
    goto/16 :goto_0

    .line 19
    .line 20
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    const-string v2, "<br />"

    .line 25
    .line 26
    const-string v3, "|"

    .line 27
    .line 28
    const/16 v4, 0x12

    .line 29
    .line 30
    const/16 v5, 0x7d

    .line 31
    .line 32
    const/4 v6, 0x1

    .line 33
    if-lt v0, v4, :cond_3

    .line 34
    .line 35
    const/16 v0, 0x8

    .line 36
    .line 37
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    .line 38
    .line 39
    .line 40
    move-result v7

    .line 41
    if-ne v7, v5, :cond_3

    .line 42
    .line 43
    const/16 v7, 0x9

    .line 44
    .line 45
    invoke-virtual {p0, v7}, Ljava/lang/String;->charAt(I)C

    .line 46
    .line 47
    .line 48
    move-result v7

    .line 49
    if-ne v7, v1, :cond_3

    .line 50
    .line 51
    const/16 v7, 0x11

    .line 52
    .line 53
    invoke-virtual {p0, v7}, Ljava/lang/String;->charAt(I)C

    .line 54
    .line 55
    .line 56
    move-result v8

    .line 57
    if-ne v8, v5, :cond_3

    .line 58
    .line 59
    invoke-virtual {p0, v6, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    const/16 v1, 0xa

    .line 64
    .line 65
    invoke-virtual {p0, v1, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    new-instance v5, Lcom/mycompany/app/subtitle/Caption;

    .line 70
    .line 71
    invoke-direct {v5}, Lcom/mycompany/app/subtitle/Caption;-><init>()V

    .line 72
    .line 73
    .line 74
    new-instance v7, Lcom/mycompany/app/subtitle/Time;

    .line 75
    .line 76
    invoke-direct {v7, v6, v0}, Lcom/mycompany/app/subtitle/Time;-><init>(ILjava/lang/String;)V

    .line 77
    .line 78
    .line 79
    iput-object v7, v5, Lcom/mycompany/app/subtitle/Caption;->a:Lcom/mycompany/app/subtitle/Time;

    .line 80
    .line 81
    new-instance v0, Lcom/mycompany/app/subtitle/Time;

    .line 82
    .line 83
    invoke-direct {v0, v6, v1}, Lcom/mycompany/app/subtitle/Time;-><init>(ILjava/lang/String;)V

    .line 84
    .line 85
    .line 86
    iput-object v0, v5, Lcom/mycompany/app/subtitle/Caption;->b:Lcom/mycompany/app/subtitle/Time;

    .line 87
    .line 88
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 89
    .line 90
    .line 91
    move-result v0

    .line 92
    if-le v0, v4, :cond_2

    .line 93
    .line 94
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 95
    .line 96
    .line 97
    move-result v0

    .line 98
    invoke-virtual {p0, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object p0

    .line 102
    invoke-virtual {p0, v3, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object p0

    .line 106
    iput-object p0, v5, Lcom/mycompany/app/subtitle/Caption;->c:Ljava/lang/String;

    .line 107
    .line 108
    :cond_2
    return-object v5

    .line 109
    :cond_3
    invoke-virtual {p0, v5}, Ljava/lang/String;->indexOf(I)I

    .line 110
    .line 111
    .line 112
    move-result v0

    .line 113
    const/4 v4, -0x1

    .line 114
    if-ne v0, v4, :cond_4

    .line 115
    .line 116
    goto :goto_0

    .line 117
    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 118
    .line 119
    .line 120
    move-result v7

    .line 121
    add-int/lit8 v8, v0, 0x2

    .line 122
    .line 123
    if-gt v7, v8, :cond_5

    .line 124
    .line 125
    goto :goto_0

    .line 126
    :cond_5
    add-int/lit8 v7, v0, 0x1

    .line 127
    .line 128
    invoke-virtual {p0, v7}, Ljava/lang/String;->charAt(I)C

    .line 129
    .line 130
    .line 131
    move-result v8

    .line 132
    if-eq v8, v1, :cond_6

    .line 133
    .line 134
    goto :goto_0

    .line 135
    :cond_6
    invoke-virtual {p0, v6, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object v0

    .line 139
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 140
    .line 141
    .line 142
    move-result v1

    .line 143
    invoke-virtual {p0, v7, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object p0

    .line 147
    invoke-virtual {p0, v5}, Ljava/lang/String;->indexOf(I)I

    .line 148
    .line 149
    .line 150
    move-result v1

    .line 151
    if-ne v1, v4, :cond_7

    .line 152
    .line 153
    :goto_0
    const/4 p0, 0x0

    .line 154
    return-object p0

    .line 155
    :cond_7
    invoke-virtual {p0, v6, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object v4

    .line 159
    new-instance v5, Lcom/mycompany/app/subtitle/Caption;

    .line 160
    .line 161
    invoke-direct {v5}, Lcom/mycompany/app/subtitle/Caption;-><init>()V

    .line 162
    .line 163
    .line 164
    new-instance v7, Lcom/mycompany/app/subtitle/Time;

    .line 165
    .line 166
    invoke-direct {v7, v6, v0}, Lcom/mycompany/app/subtitle/Time;-><init>(ILjava/lang/String;)V

    .line 167
    .line 168
    .line 169
    iput-object v7, v5, Lcom/mycompany/app/subtitle/Caption;->a:Lcom/mycompany/app/subtitle/Time;

    .line 170
    .line 171
    new-instance v0, Lcom/mycompany/app/subtitle/Time;

    .line 172
    .line 173
    invoke-direct {v0, v6, v4}, Lcom/mycompany/app/subtitle/Time;-><init>(ILjava/lang/String;)V

    .line 174
    .line 175
    .line 176
    iput-object v0, v5, Lcom/mycompany/app/subtitle/Caption;->b:Lcom/mycompany/app/subtitle/Time;

    .line 177
    .line 178
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 179
    .line 180
    .line 181
    move-result v0

    .line 182
    add-int/2addr v1, v6

    .line 183
    if-le v0, v1, :cond_8

    .line 184
    .line 185
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 186
    .line 187
    .line 188
    move-result v0

    .line 189
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 190
    .line 191
    .line 192
    move-result-object p0

    .line 193
    invoke-virtual {p0, v3, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 194
    .line 195
    .line 196
    move-result-object p0

    .line 197
    iput-object p0, v5, Lcom/mycompany/app/subtitle/Caption;->c:Ljava/lang/String;

    .line 198
    .line 199
    :cond_8
    return-object v5
.end method
