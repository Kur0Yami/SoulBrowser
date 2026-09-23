.class final Lorg/jsoup/parser/Tokeniser;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final u:[C

.field public static final v:[I


# instance fields
.field public final a:Lorg/jsoup/parser/CharacterReader;

.field public final b:Lorg/jsoup/parser/ParseErrorList;

.field public c:Lorg/jsoup/parser/TokeniserState;

.field public d:Lorg/jsoup/parser/Token;

.field public e:Z

.field public final f:Lorg/jsoup/parser/TokenData;

.field public final g:Lorg/jsoup/nodes/Document$OutputSettings$Syntax;

.field public final h:Lorg/jsoup/parser/Token$StartTag;

.field public final i:Lorg/jsoup/parser/Token$EndTag;

.field public j:Lorg/jsoup/parser/Token$Tag;

.field public final k:Lorg/jsoup/parser/Token$Character;

.field public final l:Lorg/jsoup/parser/Token$Doctype;

.field public final m:Lorg/jsoup/parser/Token$Comment;

.field public final n:Lorg/jsoup/parser/Token$XmlDecl;

.field public o:Ljava/lang/String;

.field public p:Ljava/lang/String;

.field public q:I

.field public r:I

.field public final s:[I

.field public final t:[I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const/4 v0, 0x7

    .line 2
    new-array v0, v0, [C

    .line 3
    .line 4
    fill-array-data v0, :array_0

    .line 5
    .line 6
    .line 7
    sput-object v0, Lorg/jsoup/parser/Tokeniser;->u:[C

    .line 8
    .line 9
    const/16 v1, 0x20

    .line 10
    .line 11
    new-array v1, v1, [I

    .line 12
    .line 13
    fill-array-data v1, :array_1

    .line 14
    .line 15
    .line 16
    sput-object v1, Lorg/jsoup/parser/Tokeniser;->v:[I

    .line 17
    .line 18
    invoke-static {v0}, Ljava/util/Arrays;->sort([C)V

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    nop

    .line 23
    :array_0
    .array-data 2
        0x9s
        0xas
        0xds
        0xcs
        0x20s
        0x3cs
        0x26s
    .end array-data

    .line 24
    .line 25
    .line 26
    .line 27
    .line 28
    .line 29
    .line 30
    .line 31
    .line 32
    .line 33
    .line 34
    nop

    .line 35
    :array_1
    .array-data 4
        0x20ac
        0x81
        0x201a
        0x192
        0x201e
        0x2026
        0x2020
        0x2021
        0x2c6
        0x2030
        0x160
        0x2039
        0x152
        0x8d
        0x17d
        0x8f
        0x90
        0x2018
        0x2019
        0x201c
        0x201d
        0x2022
        0x2013
        0x2014
        0x2dc
        0x2122
        0x161
        0x203a
        0x153
        0x9d
        0x17e
        0x178
    .end array-data
.end method

.method public constructor <init>(Lorg/jsoup/parser/TreeBuilder;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lorg/jsoup/parser/TokeniserState;->c:Lorg/jsoup/parser/TokeniserState$1;

    .line 5
    .line 6
    iput-object v0, p0, Lorg/jsoup/parser/Tokeniser;->c:Lorg/jsoup/parser/TokeniserState;

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lorg/jsoup/parser/Tokeniser;->d:Lorg/jsoup/parser/Token;

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput-boolean v0, p0, Lorg/jsoup/parser/Tokeniser;->e:Z

    .line 13
    .line 14
    new-instance v1, Lorg/jsoup/parser/TokenData;

    .line 15
    .line 16
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 17
    .line 18
    .line 19
    iput-object v1, p0, Lorg/jsoup/parser/Tokeniser;->f:Lorg/jsoup/parser/TokenData;

    .line 20
    .line 21
    new-instance v1, Lorg/jsoup/parser/Token$Character;

    .line 22
    .line 23
    invoke-direct {v1}, Lorg/jsoup/parser/Token$Character;-><init>()V

    .line 24
    .line 25
    .line 26
    iput-object v1, p0, Lorg/jsoup/parser/Tokeniser;->k:Lorg/jsoup/parser/Token$Character;

    .line 27
    .line 28
    new-instance v1, Lorg/jsoup/parser/Token$Doctype;

    .line 29
    .line 30
    invoke-direct {v1}, Lorg/jsoup/parser/Token$Doctype;-><init>()V

    .line 31
    .line 32
    .line 33
    iput-object v1, p0, Lorg/jsoup/parser/Tokeniser;->l:Lorg/jsoup/parser/Token$Doctype;

    .line 34
    .line 35
    new-instance v1, Lorg/jsoup/parser/Token$Comment;

    .line 36
    .line 37
    invoke-direct {v1}, Lorg/jsoup/parser/Token$Comment;-><init>()V

    .line 38
    .line 39
    .line 40
    iput-object v1, p0, Lorg/jsoup/parser/Tokeniser;->m:Lorg/jsoup/parser/Token$Comment;

    .line 41
    .line 42
    iput v0, p0, Lorg/jsoup/parser/Tokeniser;->r:I

    .line 43
    .line 44
    const/4 v0, 0x1

    .line 45
    new-array v1, v0, [I

    .line 46
    .line 47
    iput-object v1, p0, Lorg/jsoup/parser/Tokeniser;->s:[I

    .line 48
    .line 49
    const/4 v1, 0x2

    .line 50
    new-array v1, v1, [I

    .line 51
    .line 52
    iput-object v1, p0, Lorg/jsoup/parser/Tokeniser;->t:[I

    .line 53
    .line 54
    instance-of v1, p1, Lorg/jsoup/parser/XmlTreeBuilder;

    .line 55
    .line 56
    if-eqz v1, :cond_0

    .line 57
    .line 58
    sget-object v1, Lorg/jsoup/nodes/Document$OutputSettings$Syntax;->xml:Lorg/jsoup/nodes/Document$OutputSettings$Syntax;

    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_0
    sget-object v1, Lorg/jsoup/nodes/Document$OutputSettings$Syntax;->html:Lorg/jsoup/nodes/Document$OutputSettings$Syntax;

    .line 62
    .line 63
    :goto_0
    iput-object v1, p0, Lorg/jsoup/parser/Tokeniser;->g:Lorg/jsoup/nodes/Document$OutputSettings$Syntax;

    .line 64
    .line 65
    new-instance v1, Lorg/jsoup/parser/Token$StartTag;

    .line 66
    .line 67
    invoke-direct {v1, p1}, Lorg/jsoup/parser/Token$StartTag;-><init>(Lorg/jsoup/parser/TreeBuilder;)V

    .line 68
    .line 69
    .line 70
    iput-object v1, p0, Lorg/jsoup/parser/Tokeniser;->h:Lorg/jsoup/parser/Token$StartTag;

    .line 71
    .line 72
    iput-object v1, p0, Lorg/jsoup/parser/Tokeniser;->j:Lorg/jsoup/parser/Token$Tag;

    .line 73
    .line 74
    new-instance v1, Lorg/jsoup/parser/Token$EndTag;

    .line 75
    .line 76
    invoke-direct {v1, p1}, Lorg/jsoup/parser/Token$EndTag;-><init>(Lorg/jsoup/parser/TreeBuilder;)V

    .line 77
    .line 78
    .line 79
    iput-object v1, p0, Lorg/jsoup/parser/Tokeniser;->i:Lorg/jsoup/parser/Token$EndTag;

    .line 80
    .line 81
    new-instance v1, Lorg/jsoup/parser/Token$XmlDecl;

    .line 82
    .line 83
    sget-object v2, Lorg/jsoup/parser/Token$TokenType;->XmlDecl:Lorg/jsoup/parser/Token$TokenType;

    .line 84
    .line 85
    invoke-direct {v1, v2, p1}, Lorg/jsoup/parser/Token$Tag;-><init>(Lorg/jsoup/parser/Token$TokenType;Lorg/jsoup/parser/TreeBuilder;)V

    .line 86
    .line 87
    .line 88
    iput-boolean v0, v1, Lorg/jsoup/parser/Token$XmlDecl;->q:Z

    .line 89
    .line 90
    iput-object v1, p0, Lorg/jsoup/parser/Tokeniser;->n:Lorg/jsoup/parser/Token$XmlDecl;

    .line 91
    .line 92
    iget-object v0, p1, Lorg/jsoup/parser/TreeBuilder;->b:Lorg/jsoup/parser/CharacterReader;

    .line 93
    .line 94
    iput-object v0, p0, Lorg/jsoup/parser/Tokeniser;->a:Lorg/jsoup/parser/CharacterReader;

    .line 95
    .line 96
    iget-object p1, p1, Lorg/jsoup/parser/TreeBuilder;->a:Lorg/jsoup/parser/Parser;

    .line 97
    .line 98
    invoke-virtual {p1}, Lorg/jsoup/parser/Parser;->getErrors()Lorg/jsoup/parser/ParseErrorList;

    .line 99
    .line 100
    .line 101
    move-result-object p1

    .line 102
    iput-object p1, p0, Lorg/jsoup/parser/Tokeniser;->b:Lorg/jsoup/parser/ParseErrorList;

    .line 103
    .line 104
    return-void
.end method


# virtual methods
.method public final a(Lorg/jsoup/parser/TokeniserState;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lorg/jsoup/parser/Tokeniser;->o(Lorg/jsoup/parser/TokeniserState;)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lorg/jsoup/parser/Tokeniser;->a:Lorg/jsoup/parser/CharacterReader;

    .line 5
    .line 6
    invoke-virtual {p1}, Lorg/jsoup/parser/CharacterReader;->advance()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final varargs b(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/jsoup/parser/Tokeniser;->b:Lorg/jsoup/parser/ParseErrorList;

    .line 2
    .line 3
    invoke-virtual {v0}, Lorg/jsoup/parser/ParseErrorList;->a()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    new-instance v1, Lorg/jsoup/parser/ParseError;

    .line 10
    .line 11
    const-string v2, "Invalid character reference: "

    .line 12
    .line 13
    invoke-virtual {v2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    iget-object p2, p0, Lorg/jsoup/parser/Tokeniser;->a:Lorg/jsoup/parser/CharacterReader;

    .line 22
    .line 23
    invoke-direct {v1, p2, p1}, Lorg/jsoup/parser/ParseError;-><init>(Lorg/jsoup/parser/CharacterReader;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, v1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    :cond_0
    return-void
.end method

.method public final c(Ljava/lang/Character;Z)[I
    .locals 13

    .line 1
    iget-object v0, p0, Lorg/jsoup/parser/Tokeniser;->a:Lorg/jsoup/parser/CharacterReader;

    .line 2
    .line 3
    invoke-virtual {v0}, Lorg/jsoup/parser/CharacterReader;->isEmpty()Z

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
    goto/16 :goto_a

    .line 11
    .line 12
    :cond_0
    if-eqz p1, :cond_1

    .line 13
    .line 14
    invoke-virtual {p1}, Ljava/lang/Character;->charValue()C

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    invoke-virtual {v0}, Lorg/jsoup/parser/CharacterReader;->current()C

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    if-ne p1, v1, :cond_1

    .line 23
    .line 24
    goto/16 :goto_a

    .line 25
    .line 26
    :cond_1
    invoke-virtual {v0}, Lorg/jsoup/parser/CharacterReader;->a()V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, Lorg/jsoup/parser/CharacterReader;->isEmpty()Z

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    if-nez p1, :cond_2

    .line 34
    .line 35
    iget-object p1, v0, Lorg/jsoup/parser/CharacterReader;->g:[C

    .line 36
    .line 37
    iget v1, v0, Lorg/jsoup/parser/CharacterReader;->h:I

    .line 38
    .line 39
    aget-char p1, p1, v1

    .line 40
    .line 41
    sget-object v1, Lorg/jsoup/parser/Tokeniser;->u:[C

    .line 42
    .line 43
    invoke-static {v1, p1}, Ljava/util/Arrays;->binarySearch([CC)I

    .line 44
    .line 45
    .line 46
    move-result p1

    .line 47
    if-ltz p1, :cond_2

    .line 48
    .line 49
    goto/16 :goto_a

    .line 50
    .line 51
    :cond_2
    iget p1, v0, Lorg/jsoup/parser/CharacterReader;->i:I

    .line 52
    .line 53
    iget v1, v0, Lorg/jsoup/parser/CharacterReader;->h:I

    .line 54
    .line 55
    sub-int/2addr p1, v1

    .line 56
    const/16 v1, 0x400

    .line 57
    .line 58
    const/4 v3, 0x0

    .line 59
    if-ge p1, v1, :cond_3

    .line 60
    .line 61
    iput v3, v0, Lorg/jsoup/parser/CharacterReader;->j:I

    .line 62
    .line 63
    :cond_3
    invoke-virtual {v0}, Lorg/jsoup/parser/CharacterReader;->a()V

    .line 64
    .line 65
    .line 66
    iget p1, v0, Lorg/jsoup/parser/CharacterReader;->h:I

    .line 67
    .line 68
    iput p1, v0, Lorg/jsoup/parser/CharacterReader;->l:I

    .line 69
    .line 70
    const-string p1, "#"

    .line 71
    .line 72
    invoke-virtual {v0, p1}, Lorg/jsoup/parser/CharacterReader;->m(Ljava/lang/String;)Z

    .line 73
    .line 74
    .line 75
    move-result p1

    .line 76
    const-string v1, ";"

    .line 77
    .line 78
    const/4 v4, -0x1

    .line 79
    const/4 v5, 0x1

    .line 80
    iget-object v6, p0, Lorg/jsoup/parser/Tokeniser;->s:[I

    .line 81
    .line 82
    if-eqz p1, :cond_e

    .line 83
    .line 84
    const-string p1, "X"

    .line 85
    .line 86
    invoke-virtual {v0, p1}, Lorg/jsoup/parser/CharacterReader;->n(Ljava/lang/String;)Z

    .line 87
    .line 88
    .line 89
    move-result p1

    .line 90
    const-string p2, ""

    .line 91
    .line 92
    if-eqz p1, :cond_5

    .line 93
    .line 94
    invoke-virtual {v0}, Lorg/jsoup/parser/CharacterReader;->a()V

    .line 95
    .line 96
    .line 97
    iget v7, v0, Lorg/jsoup/parser/CharacterReader;->h:I

    .line 98
    .line 99
    iget v8, v0, Lorg/jsoup/parser/CharacterReader;->i:I

    .line 100
    .line 101
    iget-object v9, v0, Lorg/jsoup/parser/CharacterReader;->g:[C

    .line 102
    .line 103
    move v10, v7

    .line 104
    :goto_0
    if-ge v10, v8, :cond_4

    .line 105
    .line 106
    aget-char v11, v9, v10

    .line 107
    .line 108
    invoke-static {v11}, Lorg/jsoup/internal/StringUtil;->isHexDigit(C)Z

    .line 109
    .line 110
    .line 111
    move-result v11

    .line 112
    if-eqz v11, :cond_4

    .line 113
    .line 114
    add-int/lit8 v10, v10, 0x1

    .line 115
    .line 116
    goto :goto_0

    .line 117
    :cond_4
    iput v10, v0, Lorg/jsoup/parser/CharacterReader;->h:I

    .line 118
    .line 119
    if-le v10, v7, :cond_7

    .line 120
    .line 121
    iget-object p2, v0, Lorg/jsoup/parser/CharacterReader;->g:[C

    .line 122
    .line 123
    iget-object v8, v0, Lorg/jsoup/parser/CharacterReader;->c:[Ljava/lang/String;

    .line 124
    .line 125
    sub-int/2addr v10, v7

    .line 126
    invoke-static {p2, v8, v7, v10}, Lorg/jsoup/parser/CharacterReader;->b([C[Ljava/lang/String;II)Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object p2

    .line 130
    goto :goto_2

    .line 131
    :cond_5
    invoke-virtual {v0}, Lorg/jsoup/parser/CharacterReader;->a()V

    .line 132
    .line 133
    .line 134
    iget v7, v0, Lorg/jsoup/parser/CharacterReader;->h:I

    .line 135
    .line 136
    iget v8, v0, Lorg/jsoup/parser/CharacterReader;->i:I

    .line 137
    .line 138
    iget-object v9, v0, Lorg/jsoup/parser/CharacterReader;->g:[C

    .line 139
    .line 140
    move v10, v7

    .line 141
    :goto_1
    if-ge v10, v8, :cond_6

    .line 142
    .line 143
    aget-char v11, v9, v10

    .line 144
    .line 145
    const/16 v12, 0x30

    .line 146
    .line 147
    if-lt v11, v12, :cond_6

    .line 148
    .line 149
    const/16 v12, 0x39

    .line 150
    .line 151
    if-gt v11, v12, :cond_6

    .line 152
    .line 153
    add-int/lit8 v10, v10, 0x1

    .line 154
    .line 155
    goto :goto_1

    .line 156
    :cond_6
    iput v10, v0, Lorg/jsoup/parser/CharacterReader;->h:I

    .line 157
    .line 158
    if-le v10, v7, :cond_7

    .line 159
    .line 160
    iget-object p2, v0, Lorg/jsoup/parser/CharacterReader;->g:[C

    .line 161
    .line 162
    iget-object v8, v0, Lorg/jsoup/parser/CharacterReader;->c:[Ljava/lang/String;

    .line 163
    .line 164
    sub-int/2addr v10, v7

    .line 165
    invoke-static {p2, v8, v7, v10}, Lorg/jsoup/parser/CharacterReader;->b([C[Ljava/lang/String;II)Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object p2

    .line 169
    :cond_7
    :goto_2
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    .line 170
    .line 171
    .line 172
    move-result v7

    .line 173
    if-eqz v7, :cond_8

    .line 174
    .line 175
    const-string p1, "numeric reference with no numerals"

    .line 176
    .line 177
    new-array p2, v3, [Ljava/lang/Object;

    .line 178
    .line 179
    invoke-virtual {p0, p1, p2}, Lorg/jsoup/parser/Tokeniser;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 180
    .line 181
    .line 182
    invoke-virtual {v0}, Lorg/jsoup/parser/CharacterReader;->B()V

    .line 183
    .line 184
    .line 185
    return-object v2

    .line 186
    :cond_8
    iput v4, v0, Lorg/jsoup/parser/CharacterReader;->l:I

    .line 187
    .line 188
    invoke-virtual {v0, v1}, Lorg/jsoup/parser/CharacterReader;->m(Ljava/lang/String;)Z

    .line 189
    .line 190
    .line 191
    move-result v0

    .line 192
    if-nez v0, :cond_9

    .line 193
    .line 194
    new-array v0, v5, [Ljava/lang/Object;

    .line 195
    .line 196
    aput-object p2, v0, v3

    .line 197
    .line 198
    const-string v1, "missing semicolon on [&#%s]"

    .line 199
    .line 200
    invoke-virtual {p0, v1, v0}, Lorg/jsoup/parser/Tokeniser;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 201
    .line 202
    .line 203
    :cond_9
    if-eqz p1, :cond_a

    .line 204
    .line 205
    const/16 p1, 0x10

    .line 206
    .line 207
    goto :goto_3

    .line 208
    :cond_a
    const/16 p1, 0xa

    .line 209
    .line 210
    :goto_3
    :try_start_0
    invoke-static {p2, p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;I)Ljava/lang/Integer;

    .line 211
    .line 212
    .line 213
    move-result-object p1

    .line 214
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 215
    .line 216
    .line 217
    move-result p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 218
    goto :goto_4

    .line 219
    :catch_0
    move p1, v4

    .line 220
    :goto_4
    if-eq p1, v4, :cond_d

    .line 221
    .line 222
    const p2, 0x10ffff

    .line 223
    .line 224
    .line 225
    if-le p1, p2, :cond_b

    .line 226
    .line 227
    goto :goto_5

    .line 228
    :cond_b
    const/16 p2, 0x80

    .line 229
    .line 230
    if-lt p1, p2, :cond_c

    .line 231
    .line 232
    const/16 p2, 0xa0

    .line 233
    .line 234
    if-ge p1, p2, :cond_c

    .line 235
    .line 236
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 237
    .line 238
    .line 239
    move-result-object p2

    .line 240
    new-array v0, v5, [Ljava/lang/Object;

    .line 241
    .line 242
    aput-object p2, v0, v3

    .line 243
    .line 244
    const-string p2, "character [%s] is not a valid unicode code point"

    .line 245
    .line 246
    invoke-virtual {p0, p2, v0}, Lorg/jsoup/parser/Tokeniser;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 247
    .line 248
    .line 249
    add-int/lit8 p1, p1, -0x80

    .line 250
    .line 251
    sget-object p2, Lorg/jsoup/parser/Tokeniser;->v:[I

    .line 252
    .line 253
    aget p1, p2, p1

    .line 254
    .line 255
    :cond_c
    aput p1, v6, v3

    .line 256
    .line 257
    goto :goto_6

    .line 258
    :cond_d
    :goto_5
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 259
    .line 260
    .line 261
    move-result-object p1

    .line 262
    new-array p2, v5, [Ljava/lang/Object;

    .line 263
    .line 264
    aput-object p1, p2, v3

    .line 265
    .line 266
    const-string p1, "character [%s] outside of valid range"

    .line 267
    .line 268
    invoke-virtual {p0, p1, p2}, Lorg/jsoup/parser/Tokeniser;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 269
    .line 270
    .line 271
    const p1, 0xfffd

    .line 272
    .line 273
    .line 274
    aput p1, v6, v3

    .line 275
    .line 276
    :goto_6
    return-object v6

    .line 277
    :cond_e
    invoke-virtual {v0}, Lorg/jsoup/parser/CharacterReader;->a()V

    .line 278
    .line 279
    .line 280
    iget p1, v0, Lorg/jsoup/parser/CharacterReader;->h:I

    .line 281
    .line 282
    :goto_7
    iget v7, v0, Lorg/jsoup/parser/CharacterReader;->h:I

    .line 283
    .line 284
    iget v8, v0, Lorg/jsoup/parser/CharacterReader;->i:I

    .line 285
    .line 286
    if-ge v7, v8, :cond_f

    .line 287
    .line 288
    iget-object v8, v0, Lorg/jsoup/parser/CharacterReader;->g:[C

    .line 289
    .line 290
    aget-char v7, v8, v7

    .line 291
    .line 292
    invoke-static {v7}, Lorg/jsoup/internal/StringUtil;->isAsciiLetter(C)Z

    .line 293
    .line 294
    .line 295
    move-result v7

    .line 296
    if-eqz v7, :cond_f

    .line 297
    .line 298
    iget v7, v0, Lorg/jsoup/parser/CharacterReader;->h:I

    .line 299
    .line 300
    add-int/2addr v7, v5

    .line 301
    iput v7, v0, Lorg/jsoup/parser/CharacterReader;->h:I

    .line 302
    .line 303
    goto :goto_7

    .line 304
    :cond_f
    :goto_8
    iget v7, v0, Lorg/jsoup/parser/CharacterReader;->h:I

    .line 305
    .line 306
    iget v8, v0, Lorg/jsoup/parser/CharacterReader;->i:I

    .line 307
    .line 308
    if-lt v7, v8, :cond_10

    .line 309
    .line 310
    goto :goto_9

    .line 311
    :cond_10
    iget-object v8, v0, Lorg/jsoup/parser/CharacterReader;->g:[C

    .line 312
    .line 313
    aget-char v7, v8, v7

    .line 314
    .line 315
    invoke-static {v7}, Lorg/jsoup/internal/StringUtil;->isDigit(C)Z

    .line 316
    .line 317
    .line 318
    move-result v7

    .line 319
    if-eqz v7, :cond_11

    .line 320
    .line 321
    iget v7, v0, Lorg/jsoup/parser/CharacterReader;->h:I

    .line 322
    .line 323
    add-int/2addr v7, v5

    .line 324
    iput v7, v0, Lorg/jsoup/parser/CharacterReader;->h:I

    .line 325
    .line 326
    goto :goto_8

    .line 327
    :cond_11
    :goto_9
    iget-object v7, v0, Lorg/jsoup/parser/CharacterReader;->g:[C

    .line 328
    .line 329
    iget-object v8, v0, Lorg/jsoup/parser/CharacterReader;->c:[Ljava/lang/String;

    .line 330
    .line 331
    iget v9, v0, Lorg/jsoup/parser/CharacterReader;->h:I

    .line 332
    .line 333
    sub-int/2addr v9, p1

    .line 334
    invoke-static {v7, v8, p1, v9}, Lorg/jsoup/parser/CharacterReader;->b([C[Ljava/lang/String;II)Ljava/lang/String;

    .line 335
    .line 336
    .line 337
    move-result-object p1

    .line 338
    const/16 v7, 0x3b

    .line 339
    .line 340
    invoke-virtual {v0, v7}, Lorg/jsoup/parser/CharacterReader;->o(C)Z

    .line 341
    .line 342
    .line 343
    move-result v7

    .line 344
    invoke-static {p1}, Lorg/jsoup/nodes/Entities;->isBaseNamedEntity(Ljava/lang/String;)Z

    .line 345
    .line 346
    .line 347
    move-result v8

    .line 348
    if-nez v8, :cond_16

    .line 349
    .line 350
    invoke-static {p1}, Lorg/jsoup/nodes/Entities;->isNamedEntity(Ljava/lang/String;)Z

    .line 351
    .line 352
    .line 353
    move-result v8

    .line 354
    if-eqz v8, :cond_12

    .line 355
    .line 356
    if-eqz v7, :cond_12

    .line 357
    .line 358
    goto :goto_b

    .line 359
    :cond_12
    invoke-virtual {v0}, Lorg/jsoup/parser/CharacterReader;->B()V

    .line 360
    .line 361
    .line 362
    if-eqz v7, :cond_13

    .line 363
    .line 364
    new-array v7, v5, [Ljava/lang/Object;

    .line 365
    .line 366
    aput-object p1, v7, v3

    .line 367
    .line 368
    const-string v8, "invalid named reference [%s]"

    .line 369
    .line 370
    invoke-virtual {p0, v8, v7}, Lorg/jsoup/parser/Tokeniser;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 371
    .line 372
    .line 373
    :cond_13
    if-eqz p2, :cond_14

    .line 374
    .line 375
    goto :goto_a

    .line 376
    :cond_14
    invoke-static {p1}, Lorg/jsoup/nodes/Entities;->findPrefix(Ljava/lang/String;)Ljava/lang/String;

    .line 377
    .line 378
    .line 379
    move-result-object p1

    .line 380
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 381
    .line 382
    .line 383
    move-result v7

    .line 384
    if-eqz v7, :cond_15

    .line 385
    .line 386
    :goto_a
    return-object v2

    .line 387
    :cond_15
    invoke-virtual {v0, p1}, Lorg/jsoup/parser/CharacterReader;->m(Ljava/lang/String;)Z

    .line 388
    .line 389
    .line 390
    :cond_16
    :goto_b
    if-eqz p2, :cond_19

    .line 391
    .line 392
    invoke-virtual {v0}, Lorg/jsoup/parser/CharacterReader;->v()Z

    .line 393
    .line 394
    .line 395
    move-result p2

    .line 396
    if-nez p2, :cond_18

    .line 397
    .line 398
    invoke-virtual {v0}, Lorg/jsoup/parser/CharacterReader;->isEmpty()Z

    .line 399
    .line 400
    .line 401
    move-result p2

    .line 402
    if-eqz p2, :cond_17

    .line 403
    .line 404
    move p2, v3

    .line 405
    goto :goto_c

    .line 406
    :cond_17
    iget-object p2, v0, Lorg/jsoup/parser/CharacterReader;->g:[C

    .line 407
    .line 408
    iget v7, v0, Lorg/jsoup/parser/CharacterReader;->h:I

    .line 409
    .line 410
    aget-char p2, p2, v7

    .line 411
    .line 412
    invoke-static {p2}, Lorg/jsoup/internal/StringUtil;->isDigit(C)Z

    .line 413
    .line 414
    .line 415
    move-result p2

    .line 416
    :goto_c
    if-nez p2, :cond_18

    .line 417
    .line 418
    const/4 p2, 0x3

    .line 419
    new-array p2, p2, [C

    .line 420
    .line 421
    fill-array-data p2, :array_0

    .line 422
    .line 423
    .line 424
    invoke-virtual {v0, p2}, Lorg/jsoup/parser/CharacterReader;->u([C)Z

    .line 425
    .line 426
    .line 427
    move-result p2

    .line 428
    if-eqz p2, :cond_19

    .line 429
    .line 430
    :cond_18
    invoke-virtual {v0}, Lorg/jsoup/parser/CharacterReader;->B()V

    .line 431
    .line 432
    .line 433
    return-object v2

    .line 434
    :cond_19
    iput v4, v0, Lorg/jsoup/parser/CharacterReader;->l:I

    .line 435
    .line 436
    invoke-virtual {v0, v1}, Lorg/jsoup/parser/CharacterReader;->m(Ljava/lang/String;)Z

    .line 437
    .line 438
    .line 439
    move-result p2

    .line 440
    if-nez p2, :cond_1a

    .line 441
    .line 442
    new-array p2, v5, [Ljava/lang/Object;

    .line 443
    .line 444
    aput-object p1, p2, v3

    .line 445
    .line 446
    const-string v0, "missing semicolon on [&%s]"

    .line 447
    .line 448
    invoke-virtual {p0, v0, p2}, Lorg/jsoup/parser/Tokeniser;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 449
    .line 450
    .line 451
    :cond_1a
    iget-object p2, p0, Lorg/jsoup/parser/Tokeniser;->t:[I

    .line 452
    .line 453
    invoke-static {p1, p2}, Lorg/jsoup/nodes/Entities;->codepointsForName(Ljava/lang/String;[I)I

    .line 454
    .line 455
    .line 456
    move-result v0

    .line 457
    if-ne v0, v5, :cond_1b

    .line 458
    .line 459
    aget p1, p2, v3

    .line 460
    .line 461
    aput p1, v6, v3

    .line 462
    .line 463
    return-object v6

    .line 464
    :cond_1b
    const/4 v1, 0x2

    .line 465
    if-ne v0, v1, :cond_1c

    .line 466
    .line 467
    return-object p2

    .line 468
    :cond_1c
    const-string v0, "Unexpected characters returned for "

    .line 469
    .line 470
    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 471
    .line 472
    .line 473
    move-result-object p1

    .line 474
    invoke-static {p1}, Lorg/jsoup/helper/Validate;->fail(Ljava/lang/String;)V

    .line 475
    .line 476
    .line 477
    return-object p2

    .line 478
    nop

    .line 479
    :array_0
    .array-data 2
        0x3ds
        0x2ds
        0x5fs
    .end array-data
.end method

.method public final d(Z)Lorg/jsoup/parser/Token$Tag;
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget-object p1, p0, Lorg/jsoup/parser/Tokeniser;->h:Lorg/jsoup/parser/Token$StartTag;

    .line 4
    .line 5
    invoke-virtual {p1}, Lorg/jsoup/parser/Token$StartTag;->n()Lorg/jsoup/parser/Token$Tag;

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    iget-object p1, p0, Lorg/jsoup/parser/Tokeniser;->i:Lorg/jsoup/parser/Token$EndTag;

    .line 10
    .line 11
    invoke-virtual {p1}, Lorg/jsoup/parser/Token$Tag;->n()Lorg/jsoup/parser/Token$Tag;

    .line 12
    .line 13
    .line 14
    :goto_0
    iput-object p1, p0, Lorg/jsoup/parser/Tokeniser;->j:Lorg/jsoup/parser/Token$Tag;

    .line 15
    .line 16
    return-object p1
.end method

.method public final e()V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/jsoup/parser/Tokeniser;->f:Lorg/jsoup/parser/TokenData;

    .line 2
    .line 3
    invoke-virtual {v0}, Lorg/jsoup/parser/TokenData;->d()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final f(C)V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/jsoup/parser/Tokeniser;->k:Lorg/jsoup/parser/Token$Character;

    .line 2
    .line 3
    iget-object v1, v0, Lorg/jsoup/parser/Token$Character;->d:Lorg/jsoup/parser/TokenData;

    .line 4
    .line 5
    invoke-virtual {v1, p1}, Lorg/jsoup/parser/TokenData;->a(C)V

    .line 6
    .line 7
    .line 8
    iget p1, p0, Lorg/jsoup/parser/Tokeniser;->r:I

    .line 9
    .line 10
    iput p1, v0, Lorg/jsoup/parser/Token;->b:I

    .line 11
    .line 12
    iget-object p1, p0, Lorg/jsoup/parser/Tokeniser;->a:Lorg/jsoup/parser/CharacterReader;

    .line 13
    .line 14
    invoke-virtual {p1}, Lorg/jsoup/parser/CharacterReader;->pos()I

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    iput p1, v0, Lorg/jsoup/parser/Token;->c:I

    .line 19
    .line 20
    return-void
.end method

.method public final g(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/jsoup/parser/Tokeniser;->k:Lorg/jsoup/parser/Token$Character;

    .line 2
    .line 3
    iget-object v1, v0, Lorg/jsoup/parser/Token$Character;->d:Lorg/jsoup/parser/TokenData;

    .line 4
    .line 5
    invoke-virtual {v1, p1}, Lorg/jsoup/parser/TokenData;->b(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget p1, p0, Lorg/jsoup/parser/Tokeniser;->r:I

    .line 9
    .line 10
    iput p1, v0, Lorg/jsoup/parser/Token;->b:I

    .line 11
    .line 12
    iget-object p1, p0, Lorg/jsoup/parser/Tokeniser;->a:Lorg/jsoup/parser/CharacterReader;

    .line 13
    .line 14
    invoke-virtual {p1}, Lorg/jsoup/parser/CharacterReader;->pos()I

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    iput p1, v0, Lorg/jsoup/parser/Token;->c:I

    .line 19
    .line 20
    return-void
.end method

.method public final h(Lorg/jsoup/parser/Token;)V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lorg/jsoup/parser/Tokeniser;->e:Z

    .line 2
    .line 3
    invoke-static {v0}, Lorg/jsoup/helper/Validate;->isFalse(Z)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lorg/jsoup/parser/Tokeniser;->d:Lorg/jsoup/parser/Token;

    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    iput-boolean v0, p0, Lorg/jsoup/parser/Tokeniser;->e:Z

    .line 10
    .line 11
    iget v1, p0, Lorg/jsoup/parser/Tokeniser;->q:I

    .line 12
    .line 13
    iput v1, p1, Lorg/jsoup/parser/Token;->b:I

    .line 14
    .line 15
    iget-object v1, p0, Lorg/jsoup/parser/Tokeniser;->a:Lorg/jsoup/parser/CharacterReader;

    .line 16
    .line 17
    invoke-virtual {v1}, Lorg/jsoup/parser/CharacterReader;->pos()I

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    iput v2, p1, Lorg/jsoup/parser/Token;->c:I

    .line 22
    .line 23
    invoke-virtual {v1}, Lorg/jsoup/parser/CharacterReader;->pos()I

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    iput v2, p0, Lorg/jsoup/parser/Tokeniser;->r:I

    .line 28
    .line 29
    iget-object v2, p1, Lorg/jsoup/parser/Token;->a:Lorg/jsoup/parser/Token$TokenType;

    .line 30
    .line 31
    sget-object v3, Lorg/jsoup/parser/Token$TokenType;->StartTag:Lorg/jsoup/parser/Token$TokenType;

    .line 32
    .line 33
    if-ne v2, v3, :cond_0

    .line 34
    .line 35
    check-cast p1, Lorg/jsoup/parser/Token$StartTag;

    .line 36
    .line 37
    iget-object p1, p1, Lorg/jsoup/parser/Token$Tag;->d:Lorg/jsoup/parser/TokenData;

    .line 38
    .line 39
    invoke-virtual {p1}, Lorg/jsoup/parser/TokenData;->e()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    iput-object p1, p0, Lorg/jsoup/parser/Tokeniser;->o:Ljava/lang/String;

    .line 44
    .line 45
    const/4 p1, 0x0

    .line 46
    iput-object p1, p0, Lorg/jsoup/parser/Tokeniser;->p:Ljava/lang/String;

    .line 47
    .line 48
    return-void

    .line 49
    :cond_0
    sget-object v3, Lorg/jsoup/parser/Token$TokenType;->EndTag:Lorg/jsoup/parser/Token$TokenType;

    .line 50
    .line 51
    if-ne v2, v3, :cond_1

    .line 52
    .line 53
    check-cast p1, Lorg/jsoup/parser/Token$EndTag;

    .line 54
    .line 55
    iget-object v2, p1, Lorg/jsoup/parser/Token$Tag;->g:Lorg/jsoup/nodes/Attributes;

    .line 56
    .line 57
    if-eqz v2, :cond_1

    .line 58
    .line 59
    invoke-virtual {p1}, Lorg/jsoup/parser/Token$Tag;->m()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    new-array v0, v0, [Ljava/lang/Object;

    .line 64
    .line 65
    const/4 v2, 0x0

    .line 66
    aput-object p1, v0, v2

    .line 67
    .line 68
    iget-object p1, p0, Lorg/jsoup/parser/Tokeniser;->b:Lorg/jsoup/parser/ParseErrorList;

    .line 69
    .line 70
    invoke-virtual {p1}, Lorg/jsoup/parser/ParseErrorList;->a()Z

    .line 71
    .line 72
    .line 73
    move-result v2

    .line 74
    if-eqz v2, :cond_1

    .line 75
    .line 76
    new-instance v2, Lorg/jsoup/parser/ParseError;

    .line 77
    .line 78
    const-string v3, "Attributes incorrectly present on end tag [/%s]"

    .line 79
    .line 80
    invoke-direct {v2, v1, v3, v0}, Lorg/jsoup/parser/ParseError;-><init>(Lorg/jsoup/parser/CharacterReader;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {p1, v2}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 84
    .line 85
    .line 86
    :cond_1
    return-void
.end method

.method public final i()V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/jsoup/parser/Tokeniser;->m:Lorg/jsoup/parser/Token$Comment;

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lorg/jsoup/parser/Tokeniser;->h(Lorg/jsoup/parser/Token;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final j()V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/jsoup/parser/Tokeniser;->l:Lorg/jsoup/parser/Token$Doctype;

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lorg/jsoup/parser/Tokeniser;->h(Lorg/jsoup/parser/Token;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final k()V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/jsoup/parser/Tokeniser;->j:Lorg/jsoup/parser/Token$Tag;

    .line 2
    .line 3
    iget-object v1, v0, Lorg/jsoup/parser/Token$Tag;->h:Lorg/jsoup/parser/TokenData;

    .line 4
    .line 5
    invoke-virtual {v1}, Lorg/jsoup/parser/TokenData;->c()Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    invoke-virtual {v0}, Lorg/jsoup/parser/Token$Tag;->l()V

    .line 12
    .line 13
    .line 14
    :cond_0
    iget-object v0, p0, Lorg/jsoup/parser/Tokeniser;->j:Lorg/jsoup/parser/Token$Tag;

    .line 15
    .line 16
    invoke-virtual {p0, v0}, Lorg/jsoup/parser/Tokeniser;->h(Lorg/jsoup/parser/Token;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public final l(Lorg/jsoup/parser/TokeniserState;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lorg/jsoup/parser/Tokeniser;->b:Lorg/jsoup/parser/ParseErrorList;

    .line 2
    .line 3
    invoke-virtual {v0}, Lorg/jsoup/parser/ParseErrorList;->a()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    new-instance v1, Lorg/jsoup/parser/ParseError;

    .line 10
    .line 11
    const/4 v2, 0x1

    .line 12
    new-array v2, v2, [Ljava/lang/Object;

    .line 13
    .line 14
    const/4 v3, 0x0

    .line 15
    aput-object p1, v2, v3

    .line 16
    .line 17
    iget-object p1, p0, Lorg/jsoup/parser/Tokeniser;->a:Lorg/jsoup/parser/CharacterReader;

    .line 18
    .line 19
    const-string v3, "Unexpectedly reached end of file (EOF) in input state [%s]"

    .line 20
    .line 21
    invoke-direct {v1, p1, v3, v2}, Lorg/jsoup/parser/ParseError;-><init>(Lorg/jsoup/parser/CharacterReader;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, v1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    :cond_0
    return-void
.end method

.method public final m(Lorg/jsoup/parser/TokeniserState;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lorg/jsoup/parser/Tokeniser;->b:Lorg/jsoup/parser/ParseErrorList;

    .line 2
    .line 3
    invoke-virtual {v0}, Lorg/jsoup/parser/ParseErrorList;->a()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    new-instance v1, Lorg/jsoup/parser/ParseError;

    .line 10
    .line 11
    iget-object v2, p0, Lorg/jsoup/parser/Tokeniser;->a:Lorg/jsoup/parser/CharacterReader;

    .line 12
    .line 13
    invoke-virtual {v2}, Lorg/jsoup/parser/CharacterReader;->current()C

    .line 14
    .line 15
    .line 16
    move-result v3

    .line 17
    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    const/4 v4, 0x2

    .line 22
    new-array v4, v4, [Ljava/lang/Object;

    .line 23
    .line 24
    const/4 v5, 0x0

    .line 25
    aput-object v3, v4, v5

    .line 26
    .line 27
    const/4 v3, 0x1

    .line 28
    aput-object p1, v4, v3

    .line 29
    .line 30
    const-string p1, "Unexpected character \'%s\' in input state [%s]"

    .line 31
    .line 32
    invoke-direct {v1, v2, p1, v4}, Lorg/jsoup/parser/ParseError;-><init>(Lorg/jsoup/parser/CharacterReader;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    :cond_0
    return-void
.end method

.method public final n()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/jsoup/parser/Tokeniser;->o:Ljava/lang/String;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lorg/jsoup/parser/Tokeniser;->j:Lorg/jsoup/parser/Token$Tag;

    .line 6
    .line 7
    iget-object v0, v0, Lorg/jsoup/parser/Token$Tag;->d:Lorg/jsoup/parser/TokenData;

    .line 8
    .line 9
    invoke-virtual {v0}, Lorg/jsoup/parser/TokenData;->e()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iget-object v1, p0, Lorg/jsoup/parser/Tokeniser;->o:Ljava/lang/String;

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    const/4 v0, 0x1

    .line 22
    return v0

    .line 23
    :cond_0
    const/4 v0, 0x0

    .line 24
    return v0
.end method

.method public final o(Lorg/jsoup/parser/TokeniserState;)V
    .locals 1

    .line 1
    sget-object v0, Lorg/jsoup/parser/TokeniserState;->l:Lorg/jsoup/parser/TokeniserState$8;

    .line 2
    .line 3
    if-ne p1, v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lorg/jsoup/parser/Tokeniser;->a:Lorg/jsoup/parser/CharacterReader;

    .line 6
    .line 7
    invoke-virtual {v0}, Lorg/jsoup/parser/CharacterReader;->pos()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    iput v0, p0, Lorg/jsoup/parser/Tokeniser;->q:I

    .line 12
    .line 13
    :cond_0
    iput-object p1, p0, Lorg/jsoup/parser/Tokeniser;->c:Lorg/jsoup/parser/TokeniserState;

    .line 14
    .line 15
    return-void
.end method
