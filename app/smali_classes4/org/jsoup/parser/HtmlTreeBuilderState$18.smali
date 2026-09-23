.class final enum Lorg/jsoup/parser/HtmlTreeBuilderState$18;
.super Lorg/jsoup/parser/HtmlTreeBuilderState;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jsoup/parser/HtmlTreeBuilderState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4011
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    const-string v0, "InTemplate"

    .line 2
    .line 3
    const/16 v1, 0x11

    .line 4
    .line 5
    invoke-direct {p0, v0, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final d(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/HtmlTreeBuilder;)Z
    .locals 5

    .line 1
    sget-object v0, Lorg/jsoup/parser/HtmlTreeBuilderState$25;->a:[I

    .line 2
    .line 3
    iget-object v1, p1, Lorg/jsoup/parser/Token;->a:Lorg/jsoup/parser/Token$TokenType;

    .line 4
    .line 5
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    aget v0, v0, v1

    .line 10
    .line 11
    sget-object v1, Lorg/jsoup/parser/HtmlTreeBuilderState;->k:Lorg/jsoup/parser/HtmlTreeBuilderState$7;

    .line 12
    .line 13
    sget-object v2, Lorg/jsoup/parser/HtmlTreeBuilderState;->h:Lorg/jsoup/parser/HtmlTreeBuilderState$4;

    .line 14
    .line 15
    const/4 v3, 0x1

    .line 16
    const-string v4, "template"

    .line 17
    .line 18
    packed-switch v0, :pswitch_data_0

    .line 19
    .line 20
    .line 21
    new-instance p2, Ljava/lang/StringBuilder;

    .line 22
    .line 23
    const-string v0, "Unexpected state: "

    .line 24
    .line 25
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    iget-object p1, p1, Lorg/jsoup/parser/Token;->a:Lorg/jsoup/parser/Token$TokenType;

    .line 29
    .line 30
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    invoke-static {p1}, Lorg/jsoup/helper/Validate;->wtf(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    return v3

    .line 41
    :pswitch_0
    invoke-virtual {p2, v4}, Lorg/jsoup/parser/HtmlTreeBuilder;->S(Ljava/lang/String;)Z

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    if-nez v0, :cond_0

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_0
    invoke-virtual {p2, p0}, Lorg/jsoup/parser/HtmlTreeBuilder;->B(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {p2, v4}, Lorg/jsoup/parser/HtmlTreeBuilder;->V(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->v()V

    .line 55
    .line 56
    .line 57
    invoke-virtual {p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->W()V

    .line 58
    .line 59
    .line 60
    invoke-virtual {p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->b0()Z

    .line 61
    .line 62
    .line 63
    iget-object v0, p2, Lorg/jsoup/parser/HtmlTreeBuilder;->n:Lorg/jsoup/parser/HtmlTreeBuilderState;

    .line 64
    .line 65
    sget-object v1, Lorg/jsoup/parser/HtmlTreeBuilderState;->v:Lorg/jsoup/parser/HtmlTreeBuilderState$18;

    .line 66
    .line 67
    if-eq v0, v1, :cond_1

    .line 68
    .line 69
    iget-object v0, p2, Lorg/jsoup/parser/HtmlTreeBuilder;->u:Ljava/util/ArrayList;

    .line 70
    .line 71
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 72
    .line 73
    .line 74
    move-result v0

    .line 75
    const/16 v1, 0xc

    .line 76
    .line 77
    if-ge v0, v1, :cond_1

    .line 78
    .line 79
    invoke-virtual {p2, p1}, Lorg/jsoup/parser/HtmlTreeBuilder;->m(Lorg/jsoup/parser/Token;)Z

    .line 80
    .line 81
    .line 82
    move-result p1

    .line 83
    return p1

    .line 84
    :cond_1
    :goto_0
    return v3

    .line 85
    :pswitch_1
    move-object v0, p1

    .line 86
    check-cast v0, Lorg/jsoup/parser/Token$EndTag;

    .line 87
    .line 88
    invoke-virtual {v0}, Lorg/jsoup/parser/Token$Tag;->m()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 93
    .line 94
    .line 95
    move-result v0

    .line 96
    if-eqz v0, :cond_2

    .line 97
    .line 98
    invoke-virtual {v2, p1, p2}, Lorg/jsoup/parser/HtmlTreeBuilderState$4;->d(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/HtmlTreeBuilder;)Z

    .line 99
    .line 100
    .line 101
    return v3

    .line 102
    :cond_2
    invoke-virtual {p2, p0}, Lorg/jsoup/parser/HtmlTreeBuilder;->B(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 103
    .line 104
    .line 105
    const/4 p1, 0x0

    .line 106
    return p1

    .line 107
    :pswitch_2
    move-object v0, p1

    .line 108
    check-cast v0, Lorg/jsoup/parser/Token$StartTag;

    .line 109
    .line 110
    invoke-virtual {v0}, Lorg/jsoup/parser/Token$Tag;->m()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v0

    .line 114
    sget-object v4, Lorg/jsoup/parser/HtmlTreeBuilderState$Constants;->J:[Ljava/lang/String;

    .line 115
    .line 116
    invoke-static {v0, v4}, Lorg/jsoup/internal/StringUtil;->inSorted(Ljava/lang/String;[Ljava/lang/String;)Z

    .line 117
    .line 118
    .line 119
    move-result v4

    .line 120
    if-eqz v4, :cond_3

    .line 121
    .line 122
    invoke-virtual {v2, p1, p2}, Lorg/jsoup/parser/HtmlTreeBuilderState$4;->d(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/HtmlTreeBuilder;)Z

    .line 123
    .line 124
    .line 125
    return v3

    .line 126
    :cond_3
    sget-object v2, Lorg/jsoup/parser/HtmlTreeBuilderState$Constants;->K:[Ljava/lang/String;

    .line 127
    .line 128
    invoke-static {v0, v2}, Lorg/jsoup/internal/StringUtil;->inSorted(Ljava/lang/String;[Ljava/lang/String;)Z

    .line 129
    .line 130
    .line 131
    move-result v2

    .line 132
    if-eqz v2, :cond_4

    .line 133
    .line 134
    invoke-virtual {p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->W()V

    .line 135
    .line 136
    .line 137
    sget-object v0, Lorg/jsoup/parser/HtmlTreeBuilderState;->m:Lorg/jsoup/parser/HtmlTreeBuilderState$9;

    .line 138
    .line 139
    invoke-virtual {p2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->X(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 140
    .line 141
    .line 142
    iput-object v0, p2, Lorg/jsoup/parser/HtmlTreeBuilder;->n:Lorg/jsoup/parser/HtmlTreeBuilderState;

    .line 143
    .line 144
    invoke-virtual {p2, p1}, Lorg/jsoup/parser/HtmlTreeBuilder;->m(Lorg/jsoup/parser/Token;)Z

    .line 145
    .line 146
    .line 147
    move-result p1

    .line 148
    return p1

    .line 149
    :cond_4
    const-string v2, "col"

    .line 150
    .line 151
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 152
    .line 153
    .line 154
    move-result v2

    .line 155
    if-eqz v2, :cond_5

    .line 156
    .line 157
    invoke-virtual {p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->W()V

    .line 158
    .line 159
    .line 160
    sget-object v0, Lorg/jsoup/parser/HtmlTreeBuilderState;->p:Lorg/jsoup/parser/HtmlTreeBuilderState$12;

    .line 161
    .line 162
    invoke-virtual {p2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->X(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 163
    .line 164
    .line 165
    iput-object v0, p2, Lorg/jsoup/parser/HtmlTreeBuilder;->n:Lorg/jsoup/parser/HtmlTreeBuilderState;

    .line 166
    .line 167
    invoke-virtual {p2, p1}, Lorg/jsoup/parser/HtmlTreeBuilder;->m(Lorg/jsoup/parser/Token;)Z

    .line 168
    .line 169
    .line 170
    move-result p1

    .line 171
    return p1

    .line 172
    :cond_5
    const-string v2, "tr"

    .line 173
    .line 174
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 175
    .line 176
    .line 177
    move-result v2

    .line 178
    if-eqz v2, :cond_6

    .line 179
    .line 180
    invoke-virtual {p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->W()V

    .line 181
    .line 182
    .line 183
    sget-object v0, Lorg/jsoup/parser/HtmlTreeBuilderState;->q:Lorg/jsoup/parser/HtmlTreeBuilderState$13;

    .line 184
    .line 185
    invoke-virtual {p2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->X(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 186
    .line 187
    .line 188
    iput-object v0, p2, Lorg/jsoup/parser/HtmlTreeBuilder;->n:Lorg/jsoup/parser/HtmlTreeBuilderState;

    .line 189
    .line 190
    invoke-virtual {p2, p1}, Lorg/jsoup/parser/HtmlTreeBuilder;->m(Lorg/jsoup/parser/Token;)Z

    .line 191
    .line 192
    .line 193
    move-result p1

    .line 194
    return p1

    .line 195
    :cond_6
    const-string v2, "td"

    .line 196
    .line 197
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 198
    .line 199
    .line 200
    move-result v2

    .line 201
    if-nez v2, :cond_8

    .line 202
    .line 203
    const-string v2, "th"

    .line 204
    .line 205
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 206
    .line 207
    .line 208
    move-result v0

    .line 209
    if-eqz v0, :cond_7

    .line 210
    .line 211
    goto :goto_1

    .line 212
    :cond_7
    invoke-virtual {p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->W()V

    .line 213
    .line 214
    .line 215
    invoke-virtual {p2, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->X(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 216
    .line 217
    .line 218
    iput-object v1, p2, Lorg/jsoup/parser/HtmlTreeBuilder;->n:Lorg/jsoup/parser/HtmlTreeBuilderState;

    .line 219
    .line 220
    invoke-virtual {p2, p1}, Lorg/jsoup/parser/HtmlTreeBuilder;->m(Lorg/jsoup/parser/Token;)Z

    .line 221
    .line 222
    .line 223
    move-result p1

    .line 224
    return p1

    .line 225
    :cond_8
    :goto_1
    invoke-virtual {p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->W()V

    .line 226
    .line 227
    .line 228
    sget-object v0, Lorg/jsoup/parser/HtmlTreeBuilderState;->r:Lorg/jsoup/parser/HtmlTreeBuilderState$14;

    .line 229
    .line 230
    invoke-virtual {p2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->X(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 231
    .line 232
    .line 233
    iput-object v0, p2, Lorg/jsoup/parser/HtmlTreeBuilder;->n:Lorg/jsoup/parser/HtmlTreeBuilderState;

    .line 234
    .line 235
    invoke-virtual {p2, p1}, Lorg/jsoup/parser/HtmlTreeBuilder;->m(Lorg/jsoup/parser/Token;)Z

    .line 236
    .line 237
    .line 238
    move-result p1

    .line 239
    return p1

    .line 240
    :pswitch_3
    invoke-virtual {v1, p1, p2}, Lorg/jsoup/parser/HtmlTreeBuilderState$7;->d(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/HtmlTreeBuilder;)Z

    .line 241
    .line 242
    .line 243
    return v3

    .line 244
    nop

    .line 245
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_0
    .end packed-switch
.end method
