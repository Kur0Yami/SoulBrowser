.class public Lorg/apache/commons/codec/language/bm/Lang;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/codec/language/bm/Lang$LangRule;
    }
.end annotation


# static fields
.field public static final b:Ljava/util/EnumMap;


# instance fields
.field public final a:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 1
    new-instance v0, Ljava/util/EnumMap;

    .line 2
    .line 3
    const-class v1, Lorg/apache/commons/codec/language/bm/NameType;

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 6
    .line 7
    .line 8
    sput-object v0, Lorg/apache/commons/codec/language/bm/Lang;->b:Ljava/util/EnumMap;

    .line 9
    .line 10
    invoke-static {}, Lorg/apache/commons/codec/language/bm/NameType;->values()[Lorg/apache/commons/codec/language/bm/NameType;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    array-length v1, v0

    .line 15
    const/4 v2, 0x0

    .line 16
    move v3, v2

    .line 17
    :goto_0
    if-ge v3, v1, :cond_7

    .line 18
    .line 19
    aget-object v4, v0, v3

    .line 20
    .line 21
    sget-object v5, Lorg/apache/commons/codec/language/bm/Lang;->b:Ljava/util/EnumMap;

    .line 22
    .line 23
    iget-object v6, v4, Lorg/apache/commons/codec/language/bm/NameType;->c:Ljava/lang/String;

    .line 24
    .line 25
    const-string v7, "org/apache/commons/codec/language/bm/"

    .line 26
    .line 27
    const-string v8, "_lang.txt"

    .line 28
    .line 29
    invoke-static {v7, v6, v8}, Landroid/support/v4/media/a;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v6

    .line 33
    sget-object v7, Lorg/apache/commons/codec/language/bm/Languages;->b:Ljava/util/EnumMap;

    .line 34
    .line 35
    invoke-virtual {v7, v4}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v7

    .line 39
    check-cast v7, Lorg/apache/commons/codec/language/bm/Languages;

    .line 40
    .line 41
    new-instance v8, Ljava/util/ArrayList;

    .line 42
    .line 43
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 44
    .line 45
    .line 46
    new-instance v9, Ljava/util/Scanner;

    .line 47
    .line 48
    invoke-static {v6}, Lorg/apache/commons/codec/Resources;->a(Ljava/lang/String;)Ljava/io/InputStream;

    .line 49
    .line 50
    .line 51
    move-result-object v10

    .line 52
    const-string v11, "UTF-8"

    .line 53
    .line 54
    invoke-direct {v9, v10, v11}, Ljava/util/Scanner;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    :goto_1
    move v10, v2

    .line 58
    :cond_0
    :goto_2
    :try_start_0
    invoke-virtual {v9}, Ljava/util/Scanner;->hasNextLine()Z

    .line 59
    .line 60
    .line 61
    move-result v11

    .line 62
    if-eqz v11, :cond_6

    .line 63
    .line 64
    invoke-virtual {v9}, Ljava/util/Scanner;->nextLine()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v11

    .line 68
    if-eqz v10, :cond_1

    .line 69
    .line 70
    const-string v12, "*/"

    .line 71
    .line 72
    invoke-virtual {v11, v12}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 73
    .line 74
    .line 75
    move-result v11

    .line 76
    if-eqz v11, :cond_0

    .line 77
    .line 78
    goto :goto_1

    .line 79
    :catchall_0
    move-exception v0

    .line 80
    goto/16 :goto_4

    .line 81
    .line 82
    :cond_1
    const-string v12, "/*"

    .line 83
    .line 84
    invoke-virtual {v11, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 85
    .line 86
    .line 87
    move-result v12

    .line 88
    const/4 v13, 0x1

    .line 89
    if-eqz v12, :cond_2

    .line 90
    .line 91
    move v10, v13

    .line 92
    goto :goto_2

    .line 93
    :cond_2
    const-string v12, "//"

    .line 94
    .line 95
    invoke-virtual {v11, v12}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 96
    .line 97
    .line 98
    move-result v12

    .line 99
    if-ltz v12, :cond_3

    .line 100
    .line 101
    invoke-virtual {v11, v2, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v12

    .line 105
    goto :goto_3

    .line 106
    :cond_3
    move-object v12, v11

    .line 107
    :goto_3
    invoke-virtual {v12}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v12

    .line 111
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    .line 112
    .line 113
    .line 114
    move-result v14

    .line 115
    if-nez v14, :cond_4

    .line 116
    .line 117
    goto :goto_2

    .line 118
    :cond_4
    const-string v14, "\\s+"

    .line 119
    .line 120
    invoke-virtual {v12, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v12

    .line 124
    array-length v14, v12

    .line 125
    const/4 v15, 0x3

    .line 126
    if-ne v14, v15, :cond_5

    .line 127
    .line 128
    aget-object v11, v12, v2

    .line 129
    .line 130
    invoke-static {v11}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 131
    .line 132
    .line 133
    aget-object v11, v12, v13

    .line 134
    .line 135
    const-string v13, "\\+"

    .line 136
    .line 137
    invoke-virtual {v11, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object v11

    .line 141
    const/4 v13, 0x2

    .line 142
    aget-object v12, v12, v13

    .line 143
    .line 144
    const-string v13, "true"

    .line 145
    .line 146
    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 147
    .line 148
    .line 149
    new-instance v12, Lorg/apache/commons/codec/language/bm/Lang$LangRule;

    .line 150
    .line 151
    new-instance v13, Ljava/util/HashSet;

    .line 152
    .line 153
    invoke-static {v11}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 154
    .line 155
    .line 156
    move-result-object v11

    .line 157
    invoke-direct {v13, v11}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 158
    .line 159
    .line 160
    invoke-direct {v12}, Ljava/lang/Object;-><init>()V

    .line 161
    .line 162
    .line 163
    invoke-virtual {v8, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 164
    .line 165
    .line 166
    goto :goto_2

    .line 167
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 168
    .line 169
    new-instance v1, Ljava/lang/StringBuilder;

    .line 170
    .line 171
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 172
    .line 173
    .line 174
    const-string v2, "Malformed line \'"

    .line 175
    .line 176
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    .line 178
    .line 179
    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    .line 181
    .line 182
    const-string v2, "\' in language resource \'"

    .line 183
    .line 184
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    .line 186
    .line 187
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    .line 189
    .line 190
    const-string v2, "\'"

    .line 191
    .line 192
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 193
    .line 194
    .line 195
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 196
    .line 197
    .line 198
    move-result-object v1

    .line 199
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 200
    .line 201
    .line 202
    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 203
    :cond_6
    invoke-virtual {v9}, Ljava/util/Scanner;->close()V

    .line 204
    .line 205
    .line 206
    new-instance v6, Lorg/apache/commons/codec/language/bm/Lang;

    .line 207
    .line 208
    invoke-direct {v6, v8, v7}, Lorg/apache/commons/codec/language/bm/Lang;-><init>(Ljava/util/ArrayList;Lorg/apache/commons/codec/language/bm/Languages;)V

    .line 209
    .line 210
    .line 211
    invoke-virtual {v5, v4, v6}, Ljava/util/EnumMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    .line 213
    .line 214
    add-int/lit8 v3, v3, 0x1

    .line 215
    .line 216
    goto/16 :goto_0

    .line 217
    .line 218
    :goto_4
    :try_start_1
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 219
    :catchall_1
    move-exception v1

    .line 220
    :try_start_2
    invoke-virtual {v9}, Ljava/util/Scanner;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 221
    .line 222
    .line 223
    goto :goto_5

    .line 224
    :catchall_2
    move-exception v2

    .line 225
    invoke-virtual {v0, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 226
    .line 227
    .line 228
    :goto_5
    throw v1

    .line 229
    :cond_7
    return-void
.end method

.method public constructor <init>(Ljava/util/ArrayList;Lorg/apache/commons/codec/language/bm/Languages;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Lj$/util/DesugarCollections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    iput-object p1, p0, Lorg/apache/commons/codec/language/bm/Lang;->a:Ljava/util/List;

    .line 9
    .line 10
    return-void
.end method
