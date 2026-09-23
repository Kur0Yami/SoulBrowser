.class final enum Lorg/jsoup/parser/TokeniserState$35;
.super Lorg/jsoup/parser/TokeniserState;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jsoup/parser/TokeniserState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4011
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    const-string v0, "AttributeName"

    .line 2
    .line 3
    const/16 v1, 0x22

    .line 4
    .line 5
    invoke-direct {p0, v0, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final d(Lorg/jsoup/parser/Tokeniser;Lorg/jsoup/parser/CharacterReader;)V
    .locals 6

    .line 1
    invoke-virtual {p2}, Lorg/jsoup/parser/CharacterReader;->pos()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    sget-object v1, Lorg/jsoup/parser/TokeniserState;->u0:[C

    .line 6
    .line 7
    invoke-virtual {p2, v1}, Lorg/jsoup/parser/CharacterReader;->i([C)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    iget-object v2, p1, Lorg/jsoup/parser/Tokeniser;->j:Lorg/jsoup/parser/Token$Tag;

    .line 12
    .line 13
    invoke-virtual {p2}, Lorg/jsoup/parser/CharacterReader;->pos()I

    .line 14
    .line 15
    .line 16
    move-result v3

    .line 17
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    const/4 v4, 0x0

    .line 21
    const v5, 0xfffd

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1, v4, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    iget-object v4, v2, Lorg/jsoup/parser/Token$Tag;->h:Lorg/jsoup/parser/TokenData;

    .line 29
    .line 30
    invoke-virtual {v4, v1}, Lorg/jsoup/parser/TokenData;->b(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    iget-boolean v1, v2, Lorg/jsoup/parser/Token$Tag;->l:Z

    .line 34
    .line 35
    const/4 v4, -0x1

    .line 36
    if-eqz v1, :cond_1

    .line 37
    .line 38
    iget v1, v2, Lorg/jsoup/parser/Token$Tag;->m:I

    .line 39
    .line 40
    if-le v1, v4, :cond_0

    .line 41
    .line 42
    move v0, v1

    .line 43
    :cond_0
    iput v0, v2, Lorg/jsoup/parser/Token$Tag;->m:I

    .line 44
    .line 45
    iput v3, v2, Lorg/jsoup/parser/Token$Tag;->n:I

    .line 46
    .line 47
    :cond_1
    invoke-virtual {p2}, Lorg/jsoup/parser/CharacterReader;->pos()I

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    invoke-virtual {p2}, Lorg/jsoup/parser/CharacterReader;->consume()C

    .line 52
    .line 53
    .line 54
    move-result v1

    .line 55
    const/16 v2, 0x9

    .line 56
    .line 57
    sget-object v3, Lorg/jsoup/parser/TokeniserState;->N:Lorg/jsoup/parser/TokeniserState$36;

    .line 58
    .line 59
    if-eq v1, v2, :cond_9

    .line 60
    .line 61
    const/16 v2, 0xa

    .line 62
    .line 63
    if-eq v1, v2, :cond_9

    .line 64
    .line 65
    const/16 v2, 0xc

    .line 66
    .line 67
    if-eq v1, v2, :cond_9

    .line 68
    .line 69
    const/16 v2, 0xd

    .line 70
    .line 71
    if-eq v1, v2, :cond_9

    .line 72
    .line 73
    const/16 v2, 0x20

    .line 74
    .line 75
    if-eq v1, v2, :cond_9

    .line 76
    .line 77
    const/16 v2, 0x22

    .line 78
    .line 79
    if-eq v1, v2, :cond_6

    .line 80
    .line 81
    const/16 v2, 0x27

    .line 82
    .line 83
    if-eq v1, v2, :cond_6

    .line 84
    .line 85
    const/16 v2, 0x2f

    .line 86
    .line 87
    if-eq v1, v2, :cond_5

    .line 88
    .line 89
    const v2, 0xffff

    .line 90
    .line 91
    .line 92
    sget-object v5, Lorg/jsoup/parser/TokeniserState;->c:Lorg/jsoup/parser/TokeniserState$1;

    .line 93
    .line 94
    if-eq v1, v2, :cond_4

    .line 95
    .line 96
    packed-switch v1, :pswitch_data_0

    .line 97
    .line 98
    .line 99
    goto :goto_0

    .line 100
    :pswitch_0
    iget-object v2, p1, Lorg/jsoup/parser/Tokeniser;->g:Lorg/jsoup/nodes/Document$OutputSettings$Syntax;

    .line 101
    .line 102
    sget-object v5, Lorg/jsoup/nodes/Document$OutputSettings$Syntax;->xml:Lorg/jsoup/nodes/Document$OutputSettings$Syntax;

    .line 103
    .line 104
    if-ne v2, v5, :cond_2

    .line 105
    .line 106
    iget-object v2, p1, Lorg/jsoup/parser/Tokeniser;->j:Lorg/jsoup/parser/Token$Tag;

    .line 107
    .line 108
    instance-of v2, v2, Lorg/jsoup/parser/Token$XmlDecl;

    .line 109
    .line 110
    if-eqz v2, :cond_2

    .line 111
    .line 112
    invoke-virtual {p1, v3}, Lorg/jsoup/parser/Tokeniser;->o(Lorg/jsoup/parser/TokeniserState;)V

    .line 113
    .line 114
    .line 115
    return-void

    .line 116
    :cond_2
    :goto_0
    iget-object p1, p1, Lorg/jsoup/parser/Tokeniser;->j:Lorg/jsoup/parser/Token$Tag;

    .line 117
    .line 118
    invoke-virtual {p2}, Lorg/jsoup/parser/CharacterReader;->pos()I

    .line 119
    .line 120
    .line 121
    move-result p2

    .line 122
    iget-object v2, p1, Lorg/jsoup/parser/Token$Tag;->h:Lorg/jsoup/parser/TokenData;

    .line 123
    .line 124
    invoke-virtual {v2, v1}, Lorg/jsoup/parser/TokenData;->a(C)V

    .line 125
    .line 126
    .line 127
    iget-boolean v1, p1, Lorg/jsoup/parser/Token$Tag;->l:Z

    .line 128
    .line 129
    if-eqz v1, :cond_8

    .line 130
    .line 131
    iget v1, p1, Lorg/jsoup/parser/Token$Tag;->m:I

    .line 132
    .line 133
    if-le v1, v4, :cond_3

    .line 134
    .line 135
    move v0, v1

    .line 136
    :cond_3
    iput v0, p1, Lorg/jsoup/parser/Token$Tag;->m:I

    .line 137
    .line 138
    iput p2, p1, Lorg/jsoup/parser/Token$Tag;->n:I

    .line 139
    .line 140
    return-void

    .line 141
    :pswitch_1
    invoke-virtual {p1}, Lorg/jsoup/parser/Tokeniser;->k()V

    .line 142
    .line 143
    .line 144
    invoke-virtual {p1, v5}, Lorg/jsoup/parser/Tokeniser;->o(Lorg/jsoup/parser/TokeniserState;)V

    .line 145
    .line 146
    .line 147
    return-void

    .line 148
    :pswitch_2
    sget-object p2, Lorg/jsoup/parser/TokeniserState;->O:Lorg/jsoup/parser/TokeniserState$37;

    .line 149
    .line 150
    invoke-virtual {p1, p2}, Lorg/jsoup/parser/Tokeniser;->o(Lorg/jsoup/parser/TokeniserState;)V

    .line 151
    .line 152
    .line 153
    return-void

    .line 154
    :cond_4
    invoke-virtual {p1, p0}, Lorg/jsoup/parser/Tokeniser;->l(Lorg/jsoup/parser/TokeniserState;)V

    .line 155
    .line 156
    .line 157
    invoke-virtual {p1, v5}, Lorg/jsoup/parser/Tokeniser;->o(Lorg/jsoup/parser/TokeniserState;)V

    .line 158
    .line 159
    .line 160
    return-void

    .line 161
    :cond_5
    sget-object p2, Lorg/jsoup/parser/TokeniserState;->T:Lorg/jsoup/parser/TokeniserState$42;

    .line 162
    .line 163
    invoke-virtual {p1, p2}, Lorg/jsoup/parser/Tokeniser;->o(Lorg/jsoup/parser/TokeniserState;)V

    .line 164
    .line 165
    .line 166
    return-void

    .line 167
    :cond_6
    :pswitch_3
    invoke-virtual {p1, p0}, Lorg/jsoup/parser/Tokeniser;->m(Lorg/jsoup/parser/TokeniserState;)V

    .line 168
    .line 169
    .line 170
    iget-object p1, p1, Lorg/jsoup/parser/Tokeniser;->j:Lorg/jsoup/parser/Token$Tag;

    .line 171
    .line 172
    invoke-virtual {p2}, Lorg/jsoup/parser/CharacterReader;->pos()I

    .line 173
    .line 174
    .line 175
    move-result p2

    .line 176
    iget-object v2, p1, Lorg/jsoup/parser/Token$Tag;->h:Lorg/jsoup/parser/TokenData;

    .line 177
    .line 178
    invoke-virtual {v2, v1}, Lorg/jsoup/parser/TokenData;->a(C)V

    .line 179
    .line 180
    .line 181
    iget-boolean v1, p1, Lorg/jsoup/parser/Token$Tag;->l:Z

    .line 182
    .line 183
    if-eqz v1, :cond_8

    .line 184
    .line 185
    iget v1, p1, Lorg/jsoup/parser/Token$Tag;->m:I

    .line 186
    .line 187
    if-le v1, v4, :cond_7

    .line 188
    .line 189
    move v0, v1

    .line 190
    :cond_7
    iput v0, p1, Lorg/jsoup/parser/Token$Tag;->m:I

    .line 191
    .line 192
    iput p2, p1, Lorg/jsoup/parser/Token$Tag;->n:I

    .line 193
    .line 194
    :cond_8
    return-void

    .line 195
    :cond_9
    invoke-virtual {p1, v3}, Lorg/jsoup/parser/Tokeniser;->o(Lorg/jsoup/parser/TokeniserState;)V

    .line 196
    .line 197
    .line 198
    return-void

    .line 199
    :pswitch_data_0
    .packed-switch 0x3c
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
