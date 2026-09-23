.class abstract Lorg/jsoup/parser/Token$Tag;
.super Lorg/jsoup/parser/Token;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jsoup/parser/Token;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Tag"
.end annotation


# instance fields
.field public final d:Lorg/jsoup/parser/TokenData;

.field public e:Ljava/lang/String;

.field public f:Z

.field public g:Lorg/jsoup/nodes/Attributes;

.field public final h:Lorg/jsoup/parser/TokenData;

.field public final i:Lorg/jsoup/parser/TokenData;

.field public j:Z

.field public final k:Lorg/jsoup/parser/TreeBuilder;

.field public final l:Z

.field public m:I

.field public n:I

.field public o:I

.field public p:I


# direct methods
.method public constructor <init>(Lorg/jsoup/parser/Token$TokenType;Lorg/jsoup/parser/TreeBuilder;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lorg/jsoup/parser/Token;-><init>(Lorg/jsoup/parser/Token$TokenType;)V

    .line 2
    .line 3
    .line 4
    new-instance p1, Lorg/jsoup/parser/TokenData;

    .line 5
    .line 6
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lorg/jsoup/parser/Token$Tag;->d:Lorg/jsoup/parser/TokenData;

    .line 10
    .line 11
    const/4 p1, 0x0

    .line 12
    iput-boolean p1, p0, Lorg/jsoup/parser/Token$Tag;->f:Z

    .line 13
    .line 14
    new-instance v0, Lorg/jsoup/parser/TokenData;

    .line 15
    .line 16
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 17
    .line 18
    .line 19
    iput-object v0, p0, Lorg/jsoup/parser/Token$Tag;->h:Lorg/jsoup/parser/TokenData;

    .line 20
    .line 21
    new-instance v0, Lorg/jsoup/parser/TokenData;

    .line 22
    .line 23
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 24
    .line 25
    .line 26
    iput-object v0, p0, Lorg/jsoup/parser/Token$Tag;->i:Lorg/jsoup/parser/TokenData;

    .line 27
    .line 28
    iput-boolean p1, p0, Lorg/jsoup/parser/Token$Tag;->j:Z

    .line 29
    .line 30
    iput-object p2, p0, Lorg/jsoup/parser/Token$Tag;->k:Lorg/jsoup/parser/TreeBuilder;

    .line 31
    .line 32
    iget-boolean p1, p2, Lorg/jsoup/parser/TreeBuilder;->m:Z

    .line 33
    .line 34
    iput-boolean p1, p0, Lorg/jsoup/parser/Token$Tag;->l:Z

    .line 35
    .line 36
    return-void
.end method


# virtual methods
.method public bridge synthetic f()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/jsoup/parser/Token$Tag;->n()Lorg/jsoup/parser/Token$Tag;

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final g(CII)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/jsoup/parser/Token$Tag;->i:Lorg/jsoup/parser/TokenData;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lorg/jsoup/parser/TokenData;->a(C)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p2, p3}, Lorg/jsoup/parser/Token$Tag;->j(II)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final h([III)V
    .locals 6

    .line 1
    array-length v0, p1

    .line 2
    const/4 v1, 0x0

    .line 3
    :goto_0
    if-ge v1, v0, :cond_2

    .line 4
    .line 5
    aget v2, p1, v1

    .line 6
    .line 7
    iget-object v3, p0, Lorg/jsoup/parser/Token$Tag;->i:Lorg/jsoup/parser/TokenData;

    .line 8
    .line 9
    iget-object v4, v3, Lorg/jsoup/parser/TokenData;->b:Ljava/lang/StringBuilder;

    .line 10
    .line 11
    if-eqz v4, :cond_0

    .line 12
    .line 13
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    goto :goto_1

    .line 17
    :cond_0
    iget-object v4, v3, Lorg/jsoup/parser/TokenData;->a:Ljava/lang/String;

    .line 18
    .line 19
    if-eqz v4, :cond_1

    .line 20
    .line 21
    invoke-static {}, Lorg/jsoup/internal/StringUtil;->borrowBuilder()Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    move-result-object v4

    .line 25
    iput-object v4, v3, Lorg/jsoup/parser/TokenData;->b:Ljava/lang/StringBuilder;

    .line 26
    .line 27
    iget-object v5, v3, Lorg/jsoup/parser/TokenData;->a:Ljava/lang/String;

    .line 28
    .line 29
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    const/4 v4, 0x0

    .line 33
    iput-object v4, v3, Lorg/jsoup/parser/TokenData;->a:Ljava/lang/String;

    .line 34
    .line 35
    iget-object v3, v3, Lorg/jsoup/parser/TokenData;->b:Ljava/lang/StringBuilder;

    .line 36
    .line 37
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    goto :goto_1

    .line 41
    :cond_1
    invoke-static {v2}, Ljava/lang/Character;->toChars(I)[C

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    invoke-static {v2}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    iput-object v2, v3, Lorg/jsoup/parser/TokenData;->a:Ljava/lang/String;

    .line 50
    .line 51
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_2
    invoke-virtual {p0, p2, p3}, Lorg/jsoup/parser/Token$Tag;->j(II)V

    .line 55
    .line 56
    .line 57
    return-void
.end method

.method public final i(Ljava/lang/String;)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    const v1, 0xfffd

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    iget-object v0, p0, Lorg/jsoup/parser/Token$Tag;->d:Lorg/jsoup/parser/TokenData;

    .line 10
    .line 11
    invoke-virtual {v0, p1}, Lorg/jsoup/parser/TokenData;->b(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Lorg/jsoup/parser/TokenData;->e()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    sget-object v0, Lorg/jsoup/parser/ParseSettings;->htmlDefault:Lorg/jsoup/parser/ParseSettings;

    .line 19
    .line 20
    invoke-static {p1}, Lorg/jsoup/internal/Normalizer;->normalize(Ljava/lang/String;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    iput-object p1, p0, Lorg/jsoup/parser/Token$Tag;->e:Ljava/lang/String;

    .line 25
    .line 26
    return-void
.end method

.method public final j(II)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lorg/jsoup/parser/Token$Tag;->l:Z

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget v0, p0, Lorg/jsoup/parser/Token$Tag;->o:I

    .line 6
    .line 7
    const/4 v1, -0x1

    .line 8
    if-le v0, v1, :cond_0

    .line 9
    .line 10
    move p1, v0

    .line 11
    :cond_0
    iput p1, p0, Lorg/jsoup/parser/Token$Tag;->o:I

    .line 12
    .line 13
    iput p2, p0, Lorg/jsoup/parser/Token$Tag;->p:I

    .line 14
    .line 15
    :cond_1
    return-void
.end method

.method public final k(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/jsoup/parser/Token$Tag;->d:Lorg/jsoup/parser/TokenData;

    .line 2
    .line 3
    invoke-virtual {v0}, Lorg/jsoup/parser/TokenData;->d()V

    .line 4
    .line 5
    .line 6
    iput-object p1, v0, Lorg/jsoup/parser/TokenData;->a:Ljava/lang/String;

    .line 7
    .line 8
    invoke-virtual {v0}, Lorg/jsoup/parser/TokenData;->e()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    sget-object v0, Lorg/jsoup/parser/ParseSettings;->htmlDefault:Lorg/jsoup/parser/ParseSettings;

    .line 13
    .line 14
    invoke-static {p1}, Lorg/jsoup/internal/Normalizer;->normalize(Ljava/lang/String;)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    iput-object p1, p0, Lorg/jsoup/parser/Token$Tag;->e:Ljava/lang/String;

    .line 19
    .line 20
    return-void
.end method

.method public final l()V
    .locals 13

    .line 1
    iget-object v0, p0, Lorg/jsoup/parser/Token$Tag;->g:Lorg/jsoup/nodes/Attributes;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lorg/jsoup/nodes/Attributes;

    .line 6
    .line 7
    invoke-direct {v0}, Lorg/jsoup/nodes/Attributes;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lorg/jsoup/parser/Token$Tag;->g:Lorg/jsoup/nodes/Attributes;

    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Lorg/jsoup/parser/Token$Tag;->h:Lorg/jsoup/parser/TokenData;

    .line 13
    .line 14
    invoke-virtual {v0}, Lorg/jsoup/parser/TokenData;->c()Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    iget-boolean v2, p0, Lorg/jsoup/parser/Token$Tag;->l:Z

    .line 19
    .line 20
    iget-object v3, p0, Lorg/jsoup/parser/Token$Tag;->i:Lorg/jsoup/parser/TokenData;

    .line 21
    .line 22
    if-eqz v1, :cond_6

    .line 23
    .line 24
    iget-object v1, p0, Lorg/jsoup/parser/Token$Tag;->g:Lorg/jsoup/nodes/Attributes;

    .line 25
    .line 26
    invoke-virtual {v1}, Lorg/jsoup/nodes/Attributes;->size()I

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    const/16 v4, 0x200

    .line 31
    .line 32
    if-ge v1, v4, :cond_6

    .line 33
    .line 34
    invoke-virtual {v0}, Lorg/jsoup/parser/TokenData;->e()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    .line 43
    .line 44
    .line 45
    move-result v4

    .line 46
    if-nez v4, :cond_6

    .line 47
    .line 48
    invoke-virtual {v3}, Lorg/jsoup/parser/TokenData;->c()Z

    .line 49
    .line 50
    .line 51
    move-result v4

    .line 52
    if-eqz v4, :cond_1

    .line 53
    .line 54
    invoke-virtual {v3}, Lorg/jsoup/parser/TokenData;->e()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v4

    .line 58
    goto :goto_0

    .line 59
    :cond_1
    iget-boolean v4, p0, Lorg/jsoup/parser/Token$Tag;->j:Z

    .line 60
    .line 61
    if-eqz v4, :cond_2

    .line 62
    .line 63
    const-string v4, ""

    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_2
    const/4 v4, 0x0

    .line 67
    :goto_0
    iget-object v5, p0, Lorg/jsoup/parser/Token$Tag;->g:Lorg/jsoup/nodes/Attributes;

    .line 68
    .line 69
    invoke-virtual {v5, v1, v4}, Lorg/jsoup/nodes/Attributes;->add(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/Attributes;

    .line 70
    .line 71
    .line 72
    if-eqz v2, :cond_6

    .line 73
    .line 74
    invoke-virtual {p0}, Lorg/jsoup/parser/Token;->e()Z

    .line 75
    .line 76
    .line 77
    move-result v4

    .line 78
    if-eqz v4, :cond_6

    .line 79
    .line 80
    move-object v4, p0

    .line 81
    check-cast v4, Lorg/jsoup/parser/Token$StartTag;

    .line 82
    .line 83
    iget-object v4, v4, Lorg/jsoup/parser/Token$Tag;->k:Lorg/jsoup/parser/TreeBuilder;

    .line 84
    .line 85
    iget-object v5, v4, Lorg/jsoup/parser/TreeBuilder;->b:Lorg/jsoup/parser/CharacterReader;

    .line 86
    .line 87
    iget-object v4, v4, Lorg/jsoup/parser/TreeBuilder;->h:Lorg/jsoup/parser/ParseSettings;

    .line 88
    .line 89
    invoke-virtual {v4}, Lorg/jsoup/parser/ParseSettings;->preserveAttributeCase()Z

    .line 90
    .line 91
    .line 92
    move-result v4

    .line 93
    if-nez v4, :cond_3

    .line 94
    .line 95
    invoke-static {v1}, Lorg/jsoup/internal/Normalizer;->lowerCase(Ljava/lang/String;)Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v1

    .line 99
    :cond_3
    iget-object v4, p0, Lorg/jsoup/parser/Token$Tag;->g:Lorg/jsoup/nodes/Attributes;

    .line 100
    .line 101
    invoke-virtual {v4, v1}, Lorg/jsoup/nodes/Attributes;->sourceRange(Ljava/lang/String;)Lorg/jsoup/nodes/Range$AttributeRange;

    .line 102
    .line 103
    .line 104
    move-result-object v4

    .line 105
    invoke-virtual {v4}, Lorg/jsoup/nodes/Range$AttributeRange;->nameRange()Lorg/jsoup/nodes/Range;

    .line 106
    .line 107
    .line 108
    move-result-object v4

    .line 109
    invoke-virtual {v4}, Lorg/jsoup/nodes/Range;->isTracked()Z

    .line 110
    .line 111
    .line 112
    move-result v4

    .line 113
    if-eqz v4, :cond_4

    .line 114
    .line 115
    goto :goto_1

    .line 116
    :cond_4
    invoke-virtual {v3}, Lorg/jsoup/parser/TokenData;->c()Z

    .line 117
    .line 118
    .line 119
    move-result v4

    .line 120
    if-nez v4, :cond_5

    .line 121
    .line 122
    iget v4, p0, Lorg/jsoup/parser/Token$Tag;->n:I

    .line 123
    .line 124
    iput v4, p0, Lorg/jsoup/parser/Token$Tag;->p:I

    .line 125
    .line 126
    iput v4, p0, Lorg/jsoup/parser/Token$Tag;->o:I

    .line 127
    .line 128
    :cond_5
    new-instance v4, Lorg/jsoup/nodes/Range$AttributeRange;

    .line 129
    .line 130
    new-instance v6, Lorg/jsoup/nodes/Range;

    .line 131
    .line 132
    new-instance v7, Lorg/jsoup/nodes/Range$Position;

    .line 133
    .line 134
    iget v8, p0, Lorg/jsoup/parser/Token$Tag;->m:I

    .line 135
    .line 136
    invoke-virtual {v5, v8}, Lorg/jsoup/parser/CharacterReader;->l(I)I

    .line 137
    .line 138
    .line 139
    move-result v9

    .line 140
    iget v10, p0, Lorg/jsoup/parser/Token$Tag;->m:I

    .line 141
    .line 142
    invoke-virtual {v5, v10}, Lorg/jsoup/parser/CharacterReader;->d(I)I

    .line 143
    .line 144
    .line 145
    move-result v10

    .line 146
    invoke-direct {v7, v8, v9, v10}, Lorg/jsoup/nodes/Range$Position;-><init>(III)V

    .line 147
    .line 148
    .line 149
    new-instance v8, Lorg/jsoup/nodes/Range$Position;

    .line 150
    .line 151
    iget v9, p0, Lorg/jsoup/parser/Token$Tag;->n:I

    .line 152
    .line 153
    invoke-virtual {v5, v9}, Lorg/jsoup/parser/CharacterReader;->l(I)I

    .line 154
    .line 155
    .line 156
    move-result v10

    .line 157
    iget v11, p0, Lorg/jsoup/parser/Token$Tag;->n:I

    .line 158
    .line 159
    invoke-virtual {v5, v11}, Lorg/jsoup/parser/CharacterReader;->d(I)I

    .line 160
    .line 161
    .line 162
    move-result v11

    .line 163
    invoke-direct {v8, v9, v10, v11}, Lorg/jsoup/nodes/Range$Position;-><init>(III)V

    .line 164
    .line 165
    .line 166
    invoke-direct {v6, v7, v8}, Lorg/jsoup/nodes/Range;-><init>(Lorg/jsoup/nodes/Range$Position;Lorg/jsoup/nodes/Range$Position;)V

    .line 167
    .line 168
    .line 169
    new-instance v7, Lorg/jsoup/nodes/Range;

    .line 170
    .line 171
    new-instance v8, Lorg/jsoup/nodes/Range$Position;

    .line 172
    .line 173
    iget v9, p0, Lorg/jsoup/parser/Token$Tag;->o:I

    .line 174
    .line 175
    invoke-virtual {v5, v9}, Lorg/jsoup/parser/CharacterReader;->l(I)I

    .line 176
    .line 177
    .line 178
    move-result v10

    .line 179
    iget v11, p0, Lorg/jsoup/parser/Token$Tag;->o:I

    .line 180
    .line 181
    invoke-virtual {v5, v11}, Lorg/jsoup/parser/CharacterReader;->d(I)I

    .line 182
    .line 183
    .line 184
    move-result v11

    .line 185
    invoke-direct {v8, v9, v10, v11}, Lorg/jsoup/nodes/Range$Position;-><init>(III)V

    .line 186
    .line 187
    .line 188
    new-instance v9, Lorg/jsoup/nodes/Range$Position;

    .line 189
    .line 190
    iget v10, p0, Lorg/jsoup/parser/Token$Tag;->p:I

    .line 191
    .line 192
    invoke-virtual {v5, v10}, Lorg/jsoup/parser/CharacterReader;->l(I)I

    .line 193
    .line 194
    .line 195
    move-result v11

    .line 196
    iget v12, p0, Lorg/jsoup/parser/Token$Tag;->p:I

    .line 197
    .line 198
    invoke-virtual {v5, v12}, Lorg/jsoup/parser/CharacterReader;->d(I)I

    .line 199
    .line 200
    .line 201
    move-result v5

    .line 202
    invoke-direct {v9, v10, v11, v5}, Lorg/jsoup/nodes/Range$Position;-><init>(III)V

    .line 203
    .line 204
    .line 205
    invoke-direct {v7, v8, v9}, Lorg/jsoup/nodes/Range;-><init>(Lorg/jsoup/nodes/Range$Position;Lorg/jsoup/nodes/Range$Position;)V

    .line 206
    .line 207
    .line 208
    invoke-direct {v4, v6, v7}, Lorg/jsoup/nodes/Range$AttributeRange;-><init>(Lorg/jsoup/nodes/Range;Lorg/jsoup/nodes/Range;)V

    .line 209
    .line 210
    .line 211
    iget-object v5, p0, Lorg/jsoup/parser/Token$Tag;->g:Lorg/jsoup/nodes/Attributes;

    .line 212
    .line 213
    invoke-virtual {v5, v1, v4}, Lorg/jsoup/nodes/Attributes;->sourceRange(Ljava/lang/String;Lorg/jsoup/nodes/Range$AttributeRange;)Lorg/jsoup/nodes/Attributes;

    .line 214
    .line 215
    .line 216
    :cond_6
    :goto_1
    invoke-virtual {v0}, Lorg/jsoup/parser/TokenData;->d()V

    .line 217
    .line 218
    .line 219
    invoke-virtual {v3}, Lorg/jsoup/parser/TokenData;->d()V

    .line 220
    .line 221
    .line 222
    const/4 v0, 0x0

    .line 223
    iput-boolean v0, p0, Lorg/jsoup/parser/Token$Tag;->j:Z

    .line 224
    .line 225
    if-eqz v2, :cond_7

    .line 226
    .line 227
    const/4 v0, -0x1

    .line 228
    iput v0, p0, Lorg/jsoup/parser/Token$Tag;->p:I

    .line 229
    .line 230
    iput v0, p0, Lorg/jsoup/parser/Token$Tag;->o:I

    .line 231
    .line 232
    iput v0, p0, Lorg/jsoup/parser/Token$Tag;->n:I

    .line 233
    .line 234
    iput v0, p0, Lorg/jsoup/parser/Token$Tag;->m:I

    .line 235
    .line 236
    :cond_7
    return-void
.end method

.method public final m()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/jsoup/parser/Token$Tag;->e:Ljava/lang/String;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    goto :goto_1

    .line 14
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 15
    :goto_1
    invoke-static {v0}, Lorg/jsoup/helper/Validate;->isFalse(Z)V

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Lorg/jsoup/parser/Token$Tag;->e:Ljava/lang/String;

    .line 19
    .line 20
    return-object v0
.end method

.method public n()Lorg/jsoup/parser/Token$Tag;
    .locals 2

    .line 1
    invoke-super {p0}, Lorg/jsoup/parser/Token;->f()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lorg/jsoup/parser/Token$Tag;->d:Lorg/jsoup/parser/TokenData;

    .line 5
    .line 6
    invoke-virtual {v0}, Lorg/jsoup/parser/TokenData;->d()V

    .line 7
    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    iput-object v0, p0, Lorg/jsoup/parser/Token$Tag;->e:Ljava/lang/String;

    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    iput-boolean v1, p0, Lorg/jsoup/parser/Token$Tag;->f:Z

    .line 14
    .line 15
    iput-object v0, p0, Lorg/jsoup/parser/Token$Tag;->g:Lorg/jsoup/nodes/Attributes;

    .line 16
    .line 17
    iget-object v0, p0, Lorg/jsoup/parser/Token$Tag;->h:Lorg/jsoup/parser/TokenData;

    .line 18
    .line 19
    invoke-virtual {v0}, Lorg/jsoup/parser/TokenData;->d()V

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Lorg/jsoup/parser/Token$Tag;->i:Lorg/jsoup/parser/TokenData;

    .line 23
    .line 24
    invoke-virtual {v0}, Lorg/jsoup/parser/TokenData;->d()V

    .line 25
    .line 26
    .line 27
    iput-boolean v1, p0, Lorg/jsoup/parser/Token$Tag;->j:Z

    .line 28
    .line 29
    iget-boolean v0, p0, Lorg/jsoup/parser/Token$Tag;->l:Z

    .line 30
    .line 31
    if-eqz v0, :cond_0

    .line 32
    .line 33
    const/4 v0, -0x1

    .line 34
    iput v0, p0, Lorg/jsoup/parser/Token$Tag;->p:I

    .line 35
    .line 36
    iput v0, p0, Lorg/jsoup/parser/Token$Tag;->o:I

    .line 37
    .line 38
    iput v0, p0, Lorg/jsoup/parser/Token$Tag;->n:I

    .line 39
    .line 40
    iput v0, p0, Lorg/jsoup/parser/Token$Tag;->m:I

    .line 41
    .line 42
    :cond_0
    return-object p0
.end method

.method public final o()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/jsoup/parser/Token$Tag;->d:Lorg/jsoup/parser/TokenData;

    .line 2
    .line 3
    invoke-virtual {v0}, Lorg/jsoup/parser/TokenData;->e()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    const-string v0, "[unset]"

    .line 14
    .line 15
    :cond_0
    return-object v0
.end method
