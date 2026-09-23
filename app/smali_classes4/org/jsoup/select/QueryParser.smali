.class public Lorg/jsoup/select/QueryParser;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/AutoCloseable;


# static fields
.field public static final h:[C

.field public static final i:[Ljava/lang/String;

.field public static final j:[C

.field public static final k:Ljava/util/regex/Pattern;

.field public static final l:Ljava/util/regex/Pattern;


# instance fields
.field public final c:Lorg/jsoup/parser/TokenQueue;

.field public final f:Ljava/lang/String;

.field public g:Z


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1
    const/4 v0, 0x3

    .line 2
    new-array v0, v0, [C

    .line 3
    .line 4
    fill-array-data v0, :array_0

    .line 5
    .line 6
    .line 7
    sput-object v0, Lorg/jsoup/select/QueryParser;->h:[C

    .line 8
    .line 9
    const-string v5, "*="

    .line 10
    .line 11
    const-string v6, "~="

    .line 12
    .line 13
    const-string v1, "="

    .line 14
    .line 15
    const-string v2, "!="

    .line 16
    .line 17
    const-string v3, "^="

    .line 18
    .line 19
    const-string v4, "$="

    .line 20
    .line 21
    filled-new-array/range {v1 .. v6}, [Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    sput-object v0, Lorg/jsoup/select/QueryParser;->i:[Ljava/lang/String;

    .line 26
    .line 27
    const/4 v0, 0x2

    .line 28
    new-array v1, v0, [C

    .line 29
    .line 30
    fill-array-data v1, :array_1

    .line 31
    .line 32
    .line 33
    sput-object v1, Lorg/jsoup/select/QueryParser;->j:[C

    .line 34
    .line 35
    const-string v1, "(([+-])?(\\d+)?)n(\\s*([+-])?\\s*\\d+)?"

    .line 36
    .line 37
    invoke-static {v1, v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    sput-object v0, Lorg/jsoup/select/QueryParser;->k:Ljava/util/regex/Pattern;

    .line 42
    .line 43
    const-string v0, "([+-])?(\\d+)"

    .line 44
    .line 45
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    sput-object v0, Lorg/jsoup/select/QueryParser;->l:Ljava/util/regex/Pattern;

    .line 50
    .line 51
    return-void

    .line 52
    nop

    .line 53
    :array_0
    .array-data 2
        0x3es
        0x2bs
        0x7es
    .end array-data

    .line 54
    .line 55
    .line 56
    .line 57
    .line 58
    .line 59
    .line 60
    nop

    .line 61
    :array_1
    .array-data 2
        0x2cs
        0x29s
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Lorg/jsoup/helper/Validate;->notEmpty(Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    iput-object p1, p0, Lorg/jsoup/select/QueryParser;->f:Ljava/lang/String;

    .line 12
    .line 13
    new-instance v0, Lorg/jsoup/parser/TokenQueue;

    .line 14
    .line 15
    invoke-direct {v0, p1}, Lorg/jsoup/parser/TokenQueue;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    iput-object v0, p0, Lorg/jsoup/select/QueryParser;->c:Lorg/jsoup/parser/TokenQueue;

    .line 19
    .line 20
    return-void
.end method

.method public static a(Lorg/jsoup/select/Evaluator;Lorg/jsoup/select/Evaluator;)Lorg/jsoup/select/Evaluator;
    .locals 3

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    return-object p1

    .line 4
    :cond_0
    instance-of v0, p0, Lorg/jsoup/select/CombiningEvaluator$And;

    .line 5
    .line 6
    if-eqz v0, :cond_1

    .line 7
    .line 8
    move-object v0, p0

    .line 9
    check-cast v0, Lorg/jsoup/select/CombiningEvaluator$And;

    .line 10
    .line 11
    invoke-virtual {v0, p1}, Lorg/jsoup/select/CombiningEvaluator;->add(Lorg/jsoup/select/Evaluator;)V

    .line 12
    .line 13
    .line 14
    return-object p0

    .line 15
    :cond_1
    new-instance v0, Lorg/jsoup/select/CombiningEvaluator$And;

    .line 16
    .line 17
    const/4 v1, 0x2

    .line 18
    new-array v1, v1, [Lorg/jsoup/select/Evaluator;

    .line 19
    .line 20
    const/4 v2, 0x0

    .line 21
    aput-object p0, v1, v2

    .line 22
    .line 23
    const/4 p0, 0x1

    .line 24
    aput-object p1, v1, p0

    .line 25
    .line 26
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    invoke-direct {v0, p0}, Lorg/jsoup/select/CombiningEvaluator$And;-><init>(Ljava/util/Collection;)V

    .line 31
    .line 32
    .line 33
    return-object v0
.end method

.method public static parse(Ljava/lang/String;)Lorg/jsoup/select/Evaluator;
    .locals 6

    .line 1
    :try_start_0
    new-instance v0, Lorg/jsoup/select/QueryParser;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lorg/jsoup/select/QueryParser;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    .line 5
    .line 6
    :try_start_1
    invoke-virtual {v0}, Lorg/jsoup/select/QueryParser;->n()Lorg/jsoup/select/Evaluator;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    iget-object v1, v0, Lorg/jsoup/select/QueryParser;->c:Lorg/jsoup/parser/TokenQueue;

    .line 11
    .line 12
    invoke-virtual {v1}, Lorg/jsoup/parser/TokenQueue;->consumeWhitespace()Z

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1}, Lorg/jsoup/parser/TokenQueue;->isEmpty()Z

    .line 16
    .line 17
    .line 18
    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 19
    if-eqz v2, :cond_0

    .line 20
    .line 21
    :try_start_2
    invoke-virtual {v0}, Lorg/jsoup/select/QueryParser;->close()V
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0

    .line 22
    .line 23
    .line 24
    return-object p0

    .line 25
    :cond_0
    :try_start_3
    new-instance p0, Lorg/jsoup/select/Selector$SelectorParseException;

    .line 26
    .line 27
    const-string v2, "Could not parse query \'%s\': unexpected token at \'%s\'"

    .line 28
    .line 29
    iget-object v3, v0, Lorg/jsoup/select/QueryParser;->f:Ljava/lang/String;

    .line 30
    .line 31
    invoke-virtual {v1}, Lorg/jsoup/parser/TokenQueue;->remainder()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    const/4 v4, 0x2

    .line 36
    new-array v4, v4, [Ljava/lang/Object;

    .line 37
    .line 38
    const/4 v5, 0x0

    .line 39
    aput-object v3, v4, v5

    .line 40
    .line 41
    const/4 v3, 0x1

    .line 42
    aput-object v1, v4, v3

    .line 43
    .line 44
    invoke-direct {p0, v2, v4}, Lorg/jsoup/select/Selector$SelectorParseException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 45
    .line 46
    .line 47
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 48
    :catchall_0
    move-exception p0

    .line 49
    :try_start_4
    invoke-virtual {v0}, Lorg/jsoup/select/QueryParser;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 50
    .line 51
    .line 52
    goto :goto_0

    .line 53
    :catchall_1
    move-exception v0

    .line 54
    :try_start_5
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 55
    .line 56
    .line 57
    :goto_0
    throw p0
    :try_end_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_0

    .line 58
    :catch_0
    move-exception p0

    .line 59
    new-instance v0, Lorg/jsoup/select/Selector$SelectorParseException;

    .line 60
    .line 61
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object p0

    .line 65
    invoke-direct {v0, p0}, Lorg/jsoup/select/Selector$SelectorParseException;-><init>(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    throw v0
.end method


# virtual methods
.method public final b()I
    .locals 3

    .line 1
    invoke-virtual {p0}, Lorg/jsoup/select/QueryParser;->d()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-static {v0}, Lorg/jsoup/internal/StringUtil;->isNumeric(Ljava/lang/String;)Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    const-string v2, "Index must be numeric"

    .line 14
    .line 15
    invoke-static {v1, v2}, Lorg/jsoup/helper/Validate;->isTrue(ZLjava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    return v0
.end method

.method public close()V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/jsoup/select/QueryParser;->c:Lorg/jsoup/parser/TokenQueue;

    .line 2
    .line 3
    invoke-virtual {v0}, Lorg/jsoup/parser/TokenQueue;->close()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final d()Ljava/lang/String;
    .locals 3

    .line 1
    const/16 v0, 0x28

    .line 2
    .line 3
    const/16 v1, 0x29

    .line 4
    .line 5
    iget-object v2, p0, Lorg/jsoup/select/QueryParser;->c:Lorg/jsoup/parser/TokenQueue;

    .line 6
    .line 7
    invoke-virtual {v2, v0, v1}, Lorg/jsoup/parser/TokenQueue;->chompBalanced(CC)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method public final e(Z)Lorg/jsoup/select/Evaluator;
    .locals 3

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    const-string v0, ":containsOwn"

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    const-string v0, ":contains"

    .line 7
    .line 8
    :goto_0
    invoke-virtual {p0}, Lorg/jsoup/select/QueryParser;->d()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-static {v1}, Lorg/jsoup/parser/TokenQueue;->unescape(Ljava/lang/String;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    const-string v2, "(text) query must not be empty"

    .line 17
    .line 18
    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-static {v1, v0}, Lorg/jsoup/helper/Validate;->notEmpty(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    iget-boolean v0, p0, Lorg/jsoup/select/QueryParser;->g:Z

    .line 26
    .line 27
    if-eqz v0, :cond_1

    .line 28
    .line 29
    new-instance p1, Lorg/jsoup/select/NodeEvaluator$ContainsValue;

    .line 30
    .line 31
    invoke-direct {p1, v1}, Lorg/jsoup/select/NodeEvaluator$ContainsValue;-><init>(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    return-object p1

    .line 35
    :cond_1
    if-eqz p1, :cond_2

    .line 36
    .line 37
    new-instance p1, Lorg/jsoup/select/Evaluator$ContainsOwnText;

    .line 38
    .line 39
    invoke-direct {p1, v1}, Lorg/jsoup/select/Evaluator$ContainsOwnText;-><init>(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    return-object p1

    .line 43
    :cond_2
    new-instance p1, Lorg/jsoup/select/Evaluator$ContainsText;

    .line 44
    .line 45
    invoke-direct {p1, v1}, Lorg/jsoup/select/Evaluator$ContainsText;-><init>(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    return-object p1
.end method

.method public final f(Z)Lorg/jsoup/select/Evaluator;
    .locals 3

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    const-string v0, ":containsWholeOwnText"

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    const-string v0, ":containsWholeText"

    .line 7
    .line 8
    :goto_0
    invoke-virtual {p0}, Lorg/jsoup/select/QueryParser;->d()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-static {v1}, Lorg/jsoup/parser/TokenQueue;->unescape(Ljava/lang/String;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    const-string v2, "(text) query must not be empty"

    .line 17
    .line 18
    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-static {v1, v0}, Lorg/jsoup/helper/Validate;->notEmpty(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    if-eqz p1, :cond_1

    .line 26
    .line 27
    new-instance p1, Lorg/jsoup/select/Evaluator$ContainsWholeOwnText;

    .line 28
    .line 29
    invoke-direct {p1, v1}, Lorg/jsoup/select/Evaluator$ContainsWholeOwnText;-><init>(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    return-object p1

    .line 33
    :cond_1
    new-instance p1, Lorg/jsoup/select/Evaluator$ContainsWholeText;

    .line 34
    .line 35
    invoke-direct {p1, v1}, Lorg/jsoup/select/Evaluator$ContainsWholeText;-><init>(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    return-object p1
.end method

.method public final i(ZZ)Lorg/jsoup/select/Evaluator$CssNthEvaluator;
    .locals 8

    .line 1
    invoke-virtual {p0}, Lorg/jsoup/select/QueryParser;->d()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lorg/jsoup/internal/Normalizer;->normalize(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const-string v1, "odd"

    .line 10
    .line 11
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    const/4 v2, 0x1

    .line 16
    const/4 v3, 0x2

    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    goto/16 :goto_1

    .line 20
    .line 21
    :cond_0
    const-string v1, "even"

    .line 22
    .line 23
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    const/4 v4, 0x0

    .line 28
    if-eqz v1, :cond_2

    .line 29
    .line 30
    :cond_1
    move v2, v4

    .line 31
    goto :goto_1

    .line 32
    :cond_2
    sget-object v1, Lorg/jsoup/select/QueryParser;->k:Ljava/util/regex/Pattern;

    .line 33
    .line 34
    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    .line 39
    .line 40
    .line 41
    move-result v5

    .line 42
    const-string v6, ""

    .line 43
    .line 44
    const-string v7, "^\\+"

    .line 45
    .line 46
    if-eqz v5, :cond_5

    .line 47
    .line 48
    const/4 v0, 0x3

    .line 49
    invoke-virtual {v1, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    if-eqz v0, :cond_3

    .line 54
    .line 55
    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    invoke-virtual {v0, v7, v6}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 64
    .line 65
    .line 66
    move-result v0

    .line 67
    move v3, v0

    .line 68
    goto :goto_0

    .line 69
    :cond_3
    const-string v0, "-"

    .line 70
    .line 71
    invoke-virtual {v1, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v3

    .line 75
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 76
    .line 77
    .line 78
    move-result v0

    .line 79
    if-eqz v0, :cond_4

    .line 80
    .line 81
    const/4 v2, -0x1

    .line 82
    :cond_4
    move v3, v2

    .line 83
    :goto_0
    const/4 v0, 0x4

    .line 84
    invoke-virtual {v1, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v2

    .line 88
    if-eqz v2, :cond_1

    .line 89
    .line 90
    invoke-virtual {v1, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    invoke-virtual {v0, v7, v6}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 99
    .line 100
    .line 101
    move-result v0

    .line 102
    move v2, v0

    .line 103
    goto :goto_1

    .line 104
    :cond_5
    sget-object v1, Lorg/jsoup/select/QueryParser;->l:Ljava/util/regex/Pattern;

    .line 105
    .line 106
    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 107
    .line 108
    .line 109
    move-result-object v1

    .line 110
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    .line 111
    .line 112
    .line 113
    move-result v3

    .line 114
    if-eqz v3, :cond_9

    .line 115
    .line 116
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v0

    .line 120
    invoke-virtual {v0, v7, v6}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v0

    .line 124
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 125
    .line 126
    .line 127
    move-result v2

    .line 128
    move v3, v4

    .line 129
    :goto_1
    if-eqz p2, :cond_7

    .line 130
    .line 131
    if-eqz p1, :cond_6

    .line 132
    .line 133
    new-instance p1, Lorg/jsoup/select/Evaluator$IsNthLastOfType;

    .line 134
    .line 135
    invoke-direct {p1, v3, v2}, Lorg/jsoup/select/Evaluator$IsNthLastOfType;-><init>(II)V

    .line 136
    .line 137
    .line 138
    return-object p1

    .line 139
    :cond_6
    new-instance p1, Lorg/jsoup/select/Evaluator$IsNthOfType;

    .line 140
    .line 141
    invoke-direct {p1, v3, v2}, Lorg/jsoup/select/Evaluator$IsNthOfType;-><init>(II)V

    .line 142
    .line 143
    .line 144
    return-object p1

    .line 145
    :cond_7
    if-eqz p1, :cond_8

    .line 146
    .line 147
    new-instance p1, Lorg/jsoup/select/Evaluator$IsNthLastChild;

    .line 148
    .line 149
    invoke-direct {p1, v3, v2}, Lorg/jsoup/select/Evaluator$IsNthLastChild;-><init>(II)V

    .line 150
    .line 151
    .line 152
    return-object p1

    .line 153
    :cond_8
    new-instance p1, Lorg/jsoup/select/Evaluator$IsNthChild;

    .line 154
    .line 155
    invoke-direct {p1, v3, v2}, Lorg/jsoup/select/Evaluator$IsNthChild;-><init>(II)V

    .line 156
    .line 157
    .line 158
    return-object p1

    .line 159
    :cond_9
    new-instance p1, Lorg/jsoup/select/Selector$SelectorParseException;

    .line 160
    .line 161
    new-array p2, v2, [Ljava/lang/Object;

    .line 162
    .line 163
    aput-object v0, p2, v4

    .line 164
    .line 165
    const-string v0, "Could not parse nth-index \'%s\': unexpected format"

    .line 166
    .line 167
    invoke-direct {p1, v0, p2}, Lorg/jsoup/select/Selector$SelectorParseException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 168
    .line 169
    .line 170
    throw p1
.end method

.method public final j(Lorg/jsoup/parser/TokenQueue;)Lorg/jsoup/select/Evaluator;
    .locals 5

    .line 1
    sget-object v0, Lorg/jsoup/select/QueryParser;->i:[Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Lorg/jsoup/parser/TokenQueue;->consumeToAny([Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Lorg/jsoup/helper/Validate;->notEmpty(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1}, Lorg/jsoup/parser/TokenQueue;->consumeWhitespace()Z

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1}, Lorg/jsoup/parser/TokenQueue;->isEmpty()Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    const/4 v2, 0x1

    .line 18
    if-eqz v1, :cond_2

    .line 19
    .line 20
    const-string p1, "^"

    .line 21
    .line 22
    invoke-virtual {v0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    if-eqz p1, :cond_0

    .line 27
    .line 28
    new-instance p1, Lorg/jsoup/select/Evaluator$AttributeStarting;

    .line 29
    .line 30
    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-direct {p1, v0}, Lorg/jsoup/select/Evaluator$AttributeStarting;-><init>(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    return-object p1

    .line 38
    :cond_0
    const-string p1, "*"

    .line 39
    .line 40
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    move-result p1

    .line 44
    if-eqz p1, :cond_1

    .line 45
    .line 46
    new-instance p1, Lorg/jsoup/select/Evaluator$AttributeStarting;

    .line 47
    .line 48
    const-string v0, ""

    .line 49
    .line 50
    invoke-direct {p1, v0}, Lorg/jsoup/select/Evaluator$AttributeStarting;-><init>(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    return-object p1

    .line 54
    :cond_1
    new-instance p1, Lorg/jsoup/select/Evaluator$Attribute;

    .line 55
    .line 56
    invoke-direct {p1, v0}, Lorg/jsoup/select/Evaluator$Attribute;-><init>(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    return-object p1

    .line 60
    :cond_2
    const/16 v1, 0x3d

    .line 61
    .line 62
    invoke-virtual {p1, v1}, Lorg/jsoup/parser/TokenQueue;->matchChomp(C)Z

    .line 63
    .line 64
    .line 65
    move-result v1

    .line 66
    if-eqz v1, :cond_3

    .line 67
    .line 68
    new-instance v1, Lorg/jsoup/select/Evaluator$AttributeWithValue;

    .line 69
    .line 70
    invoke-virtual {p1}, Lorg/jsoup/parser/TokenQueue;->remainder()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    invoke-direct {v1, v0, p1}, Lorg/jsoup/select/Evaluator$AttributeWithValue;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    return-object v1

    .line 78
    :cond_3
    const-string v1, "!="

    .line 79
    .line 80
    invoke-virtual {p1, v1}, Lorg/jsoup/parser/TokenQueue;->matchChomp(Ljava/lang/String;)Z

    .line 81
    .line 82
    .line 83
    move-result v1

    .line 84
    if-eqz v1, :cond_4

    .line 85
    .line 86
    new-instance v1, Lorg/jsoup/select/Evaluator$AttributeWithValueNot;

    .line 87
    .line 88
    invoke-virtual {p1}, Lorg/jsoup/parser/TokenQueue;->remainder()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    invoke-direct {v1, v0, p1}, Lorg/jsoup/select/Evaluator$AttributeWithValueNot;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    return-object v1

    .line 96
    :cond_4
    const-string v1, "^="

    .line 97
    .line 98
    invoke-virtual {p1, v1}, Lorg/jsoup/parser/TokenQueue;->matchChomp(Ljava/lang/String;)Z

    .line 99
    .line 100
    .line 101
    move-result v1

    .line 102
    if-eqz v1, :cond_5

    .line 103
    .line 104
    new-instance v1, Lorg/jsoup/select/Evaluator$AttributeWithValueStarting;

    .line 105
    .line 106
    invoke-virtual {p1}, Lorg/jsoup/parser/TokenQueue;->remainder()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object p1

    .line 110
    invoke-direct {v1, v0, p1}, Lorg/jsoup/select/Evaluator$AttributeWithValueStarting;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    return-object v1

    .line 114
    :cond_5
    const-string v1, "$="

    .line 115
    .line 116
    invoke-virtual {p1, v1}, Lorg/jsoup/parser/TokenQueue;->matchChomp(Ljava/lang/String;)Z

    .line 117
    .line 118
    .line 119
    move-result v1

    .line 120
    if-eqz v1, :cond_6

    .line 121
    .line 122
    new-instance v1, Lorg/jsoup/select/Evaluator$AttributeWithValueEnding;

    .line 123
    .line 124
    invoke-virtual {p1}, Lorg/jsoup/parser/TokenQueue;->remainder()Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object p1

    .line 128
    invoke-direct {v1, v0, p1}, Lorg/jsoup/select/Evaluator$AttributeWithValueEnding;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    return-object v1

    .line 132
    :cond_6
    const-string v1, "*="

    .line 133
    .line 134
    invoke-virtual {p1, v1}, Lorg/jsoup/parser/TokenQueue;->matchChomp(Ljava/lang/String;)Z

    .line 135
    .line 136
    .line 137
    move-result v1

    .line 138
    if-eqz v1, :cond_7

    .line 139
    .line 140
    new-instance v1, Lorg/jsoup/select/Evaluator$AttributeWithValueContaining;

    .line 141
    .line 142
    invoke-virtual {p1}, Lorg/jsoup/parser/TokenQueue;->remainder()Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object p1

    .line 146
    invoke-direct {v1, v0, p1}, Lorg/jsoup/select/Evaluator$AttributeWithValueContaining;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    .line 148
    .line 149
    return-object v1

    .line 150
    :cond_7
    const-string v1, "~="

    .line 151
    .line 152
    invoke-virtual {p1, v1}, Lorg/jsoup/parser/TokenQueue;->matchChomp(Ljava/lang/String;)Z

    .line 153
    .line 154
    .line 155
    move-result v1

    .line 156
    if-eqz v1, :cond_8

    .line 157
    .line 158
    new-instance v1, Lorg/jsoup/select/Evaluator$AttributeWithValueMatching;

    .line 159
    .line 160
    invoke-virtual {p1}, Lorg/jsoup/parser/TokenQueue;->remainder()Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object p1

    .line 164
    invoke-static {p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 165
    .line 166
    .line 167
    move-result-object p1

    .line 168
    invoke-direct {v1, v0, p1}, Lorg/jsoup/select/Evaluator$AttributeWithValueMatching;-><init>(Ljava/lang/String;Ljava/util/regex/Pattern;)V

    .line 169
    .line 170
    .line 171
    return-object v1

    .line 172
    :cond_8
    new-instance v0, Lorg/jsoup/select/Selector$SelectorParseException;

    .line 173
    .line 174
    invoke-virtual {p1}, Lorg/jsoup/parser/TokenQueue;->remainder()Ljava/lang/String;

    .line 175
    .line 176
    .line 177
    move-result-object p1

    .line 178
    const/4 v1, 0x2

    .line 179
    new-array v1, v1, [Ljava/lang/Object;

    .line 180
    .line 181
    const/4 v3, 0x0

    .line 182
    iget-object v4, p0, Lorg/jsoup/select/QueryParser;->f:Ljava/lang/String;

    .line 183
    .line 184
    aput-object v4, v1, v3

    .line 185
    .line 186
    aput-object p1, v1, v2

    .line 187
    .line 188
    const-string p1, "Could not parse attribute query \'%s\': unexpected token at \'%s\'"

    .line 189
    .line 190
    invoke-direct {v0, p1, v1}, Lorg/jsoup/select/Selector$SelectorParseException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 191
    .line 192
    .line 193
    throw v0
.end method

.method public final k(Z)Lorg/jsoup/select/Evaluator;
    .locals 3

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    const-string v0, ":matchesOwn"

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    const-string v0, ":matches"

    .line 7
    .line 8
    :goto_0
    invoke-virtual {p0}, Lorg/jsoup/select/QueryParser;->d()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    const-string v2, "(regex) query must not be empty"

    .line 13
    .line 14
    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-static {v1, v0}, Lorg/jsoup/helper/Validate;->notEmpty(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    iget-boolean v1, p0, Lorg/jsoup/select/QueryParser;->g:Z

    .line 26
    .line 27
    if-eqz v1, :cond_1

    .line 28
    .line 29
    new-instance p1, Lorg/jsoup/select/NodeEvaluator$MatchesValue;

    .line 30
    .line 31
    invoke-direct {p1, v0}, Lorg/jsoup/select/NodeEvaluator$MatchesValue;-><init>(Ljava/util/regex/Pattern;)V

    .line 32
    .line 33
    .line 34
    return-object p1

    .line 35
    :cond_1
    if-eqz p1, :cond_2

    .line 36
    .line 37
    new-instance p1, Lorg/jsoup/select/Evaluator$MatchesOwn;

    .line 38
    .line 39
    invoke-direct {p1, v0}, Lorg/jsoup/select/Evaluator$MatchesOwn;-><init>(Ljava/util/regex/Pattern;)V

    .line 40
    .line 41
    .line 42
    return-object p1

    .line 43
    :cond_2
    new-instance p1, Lorg/jsoup/select/Evaluator$Matches;

    .line 44
    .line 45
    invoke-direct {p1, v0}, Lorg/jsoup/select/Evaluator$Matches;-><init>(Ljava/util/regex/Pattern;)V

    .line 46
    .line 47
    .line 48
    return-object p1
.end method

.method public final l(Z)Lorg/jsoup/select/Evaluator;
    .locals 3

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    const-string v0, ":matchesWholeOwnText"

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    const-string v0, ":matchesWholeText"

    .line 7
    .line 8
    :goto_0
    invoke-virtual {p0}, Lorg/jsoup/select/QueryParser;->d()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    const-string v2, "(regex) query must not be empty"

    .line 13
    .line 14
    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-static {v1, v0}, Lorg/jsoup/helper/Validate;->notEmpty(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    if-eqz p1, :cond_1

    .line 22
    .line 23
    new-instance p1, Lorg/jsoup/select/Evaluator$MatchesWholeOwnText;

    .line 24
    .line 25
    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-direct {p1, v0}, Lorg/jsoup/select/Evaluator$MatchesWholeOwnText;-><init>(Ljava/util/regex/Pattern;)V

    .line 30
    .line 31
    .line 32
    return-object p1

    .line 33
    :cond_1
    new-instance p1, Lorg/jsoup/select/Evaluator$MatchesWholeText;

    .line 34
    .line 35
    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-direct {p1, v0}, Lorg/jsoup/select/Evaluator$MatchesWholeText;-><init>(Ljava/util/regex/Pattern;)V

    .line 40
    .line 41
    .line 42
    return-object p1
.end method

.method public final m()Lorg/jsoup/select/Evaluator;
    .locals 7

    .line 1
    iget-object v0, p0, Lorg/jsoup/select/QueryParser;->c:Lorg/jsoup/parser/TokenQueue;

    .line 2
    .line 3
    invoke-virtual {v0}, Lorg/jsoup/parser/TokenQueue;->consumeWhitespace()Z

    .line 4
    .line 5
    .line 6
    sget-object v1, Lorg/jsoup/select/QueryParser;->h:[C

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Lorg/jsoup/parser/TokenQueue;->matchesAny([C)Z

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    if-eqz v2, :cond_0

    .line 13
    .line 14
    new-instance v2, Lorg/jsoup/select/StructuralEvaluator$Root;

    .line 15
    .line 16
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    invoke-virtual {p0}, Lorg/jsoup/select/QueryParser;->o()Lorg/jsoup/select/Evaluator;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    :goto_0
    invoke-virtual {v0}, Lorg/jsoup/parser/TokenQueue;->consumeWhitespace()Z

    .line 25
    .line 26
    .line 27
    move-result v3

    .line 28
    const/4 v4, 0x0

    .line 29
    const/16 v5, 0x20

    .line 30
    .line 31
    if-eqz v3, :cond_1

    .line 32
    .line 33
    move v3, v5

    .line 34
    goto :goto_1

    .line 35
    :cond_1
    move v3, v4

    .line 36
    :goto_1
    invoke-virtual {v0, v1}, Lorg/jsoup/parser/TokenQueue;->matchesAny([C)Z

    .line 37
    .line 38
    .line 39
    move-result v6

    .line 40
    if-eqz v6, :cond_2

    .line 41
    .line 42
    invoke-virtual {v0}, Lorg/jsoup/parser/TokenQueue;->consume()C

    .line 43
    .line 44
    .line 45
    move-result v3

    .line 46
    goto :goto_2

    .line 47
    :cond_2
    sget-object v6, Lorg/jsoup/select/QueryParser;->j:[C

    .line 48
    .line 49
    invoke-virtual {v0, v6}, Lorg/jsoup/parser/TokenQueue;->matchesAny([C)Z

    .line 50
    .line 51
    .line 52
    move-result v6

    .line 53
    if-eqz v6, :cond_3

    .line 54
    .line 55
    goto :goto_4

    .line 56
    :cond_3
    :goto_2
    if-eqz v3, :cond_9

    .line 57
    .line 58
    invoke-virtual {p0}, Lorg/jsoup/select/QueryParser;->o()Lorg/jsoup/select/Evaluator;

    .line 59
    .line 60
    .line 61
    move-result-object v6

    .line 62
    if-eq v3, v5, :cond_8

    .line 63
    .line 64
    const/16 v5, 0x2b

    .line 65
    .line 66
    if-eq v3, v5, :cond_7

    .line 67
    .line 68
    const/16 v5, 0x3e

    .line 69
    .line 70
    if-eq v3, v5, :cond_5

    .line 71
    .line 72
    const/16 v5, 0x7e

    .line 73
    .line 74
    if-ne v3, v5, :cond_4

    .line 75
    .line 76
    new-instance v3, Lorg/jsoup/select/StructuralEvaluator$PreviousSibling;

    .line 77
    .line 78
    invoke-direct {v3, v2}, Lorg/jsoup/select/StructuralEvaluator;-><init>(Lorg/jsoup/select/Evaluator;)V

    .line 79
    .line 80
    .line 81
    invoke-static {v3, v6}, Lorg/jsoup/select/QueryParser;->a(Lorg/jsoup/select/Evaluator;Lorg/jsoup/select/Evaluator;)Lorg/jsoup/select/Evaluator;

    .line 82
    .line 83
    .line 84
    move-result-object v2

    .line 85
    goto :goto_0

    .line 86
    :cond_4
    new-instance v0, Lorg/jsoup/select/Selector$SelectorParseException;

    .line 87
    .line 88
    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 89
    .line 90
    .line 91
    move-result-object v1

    .line 92
    const/4 v2, 0x1

    .line 93
    new-array v2, v2, [Ljava/lang/Object;

    .line 94
    .line 95
    aput-object v1, v2, v4

    .line 96
    .line 97
    const-string v1, "Unknown combinator \'%s\'"

    .line 98
    .line 99
    invoke-direct {v0, v1, v2}, Lorg/jsoup/select/Selector$SelectorParseException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 100
    .line 101
    .line 102
    throw v0

    .line 103
    :cond_5
    instance-of v3, v2, Lorg/jsoup/select/StructuralEvaluator$ImmediateParentRun;

    .line 104
    .line 105
    if-eqz v3, :cond_6

    .line 106
    .line 107
    check-cast v2, Lorg/jsoup/select/StructuralEvaluator$ImmediateParentRun;

    .line 108
    .line 109
    goto :goto_3

    .line 110
    :cond_6
    new-instance v3, Lorg/jsoup/select/StructuralEvaluator$ImmediateParentRun;

    .line 111
    .line 112
    invoke-direct {v3, v2}, Lorg/jsoup/select/StructuralEvaluator$ImmediateParentRun;-><init>(Lorg/jsoup/select/Evaluator;)V

    .line 113
    .line 114
    .line 115
    move-object v2, v3

    .line 116
    :goto_3
    iget-object v3, v2, Lorg/jsoup/select/StructuralEvaluator$ImmediateParentRun;->d:Ljava/util/ArrayList;

    .line 117
    .line 118
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 119
    .line 120
    .line 121
    iget v3, v2, Lorg/jsoup/select/StructuralEvaluator$ImmediateParentRun;->e:I

    .line 122
    .line 123
    invoke-virtual {v6}, Lorg/jsoup/select/Evaluator;->a()I

    .line 124
    .line 125
    .line 126
    move-result v4

    .line 127
    add-int/2addr v4, v3

    .line 128
    iput v4, v2, Lorg/jsoup/select/StructuralEvaluator$ImmediateParentRun;->e:I

    .line 129
    .line 130
    iget-boolean v3, v2, Lorg/jsoup/select/StructuralEvaluator;->b:Z

    .line 131
    .line 132
    invoke-virtual {v6}, Lorg/jsoup/select/Evaluator;->d()Z

    .line 133
    .line 134
    .line 135
    move-result v4

    .line 136
    or-int/2addr v3, v4

    .line 137
    iput-boolean v3, v2, Lorg/jsoup/select/StructuralEvaluator;->b:Z

    .line 138
    .line 139
    goto :goto_0

    .line 140
    :cond_7
    new-instance v3, Lorg/jsoup/select/StructuralEvaluator$ImmediatePreviousSibling;

    .line 141
    .line 142
    invoke-direct {v3, v2}, Lorg/jsoup/select/StructuralEvaluator;-><init>(Lorg/jsoup/select/Evaluator;)V

    .line 143
    .line 144
    .line 145
    invoke-static {v3, v6}, Lorg/jsoup/select/QueryParser;->a(Lorg/jsoup/select/Evaluator;Lorg/jsoup/select/Evaluator;)Lorg/jsoup/select/Evaluator;

    .line 146
    .line 147
    .line 148
    move-result-object v2

    .line 149
    goto :goto_0

    .line 150
    :cond_8
    new-instance v3, Lorg/jsoup/select/StructuralEvaluator$Ancestor;

    .line 151
    .line 152
    invoke-direct {v3, v2}, Lorg/jsoup/select/StructuralEvaluator;-><init>(Lorg/jsoup/select/Evaluator;)V

    .line 153
    .line 154
    .line 155
    invoke-static {v3, v6}, Lorg/jsoup/select/QueryParser;->a(Lorg/jsoup/select/Evaluator;Lorg/jsoup/select/Evaluator;)Lorg/jsoup/select/Evaluator;

    .line 156
    .line 157
    .line 158
    move-result-object v2

    .line 159
    goto/16 :goto_0

    .line 160
    .line 161
    :cond_9
    :goto_4
    return-object v2
.end method

.method public final n()Lorg/jsoup/select/Evaluator;
    .locals 5

    .line 1
    invoke-virtual {p0}, Lorg/jsoup/select/QueryParser;->m()Lorg/jsoup/select/Evaluator;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    :goto_0
    iget-object v1, p0, Lorg/jsoup/select/QueryParser;->c:Lorg/jsoup/parser/TokenQueue;

    .line 6
    .line 7
    const/16 v2, 0x2c

    .line 8
    .line 9
    invoke-virtual {v1, v2}, Lorg/jsoup/parser/TokenQueue;->matchChomp(C)Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_1

    .line 14
    .line 15
    invoke-virtual {p0}, Lorg/jsoup/select/QueryParser;->m()Lorg/jsoup/select/Evaluator;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    instance-of v2, v0, Lorg/jsoup/select/CombiningEvaluator$Or;

    .line 20
    .line 21
    if-eqz v2, :cond_0

    .line 22
    .line 23
    move-object v2, v0

    .line 24
    check-cast v2, Lorg/jsoup/select/CombiningEvaluator$Or;

    .line 25
    .line 26
    invoke-virtual {v2, v1}, Lorg/jsoup/select/CombiningEvaluator;->add(Lorg/jsoup/select/Evaluator;)V

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    new-instance v2, Lorg/jsoup/select/CombiningEvaluator$Or;

    .line 31
    .line 32
    const/4 v3, 0x2

    .line 33
    new-array v3, v3, [Lorg/jsoup/select/Evaluator;

    .line 34
    .line 35
    const/4 v4, 0x0

    .line 36
    aput-object v0, v3, v4

    .line 37
    .line 38
    const/4 v0, 0x1

    .line 39
    aput-object v1, v3, v0

    .line 40
    .line 41
    invoke-direct {v2, v3}, Lorg/jsoup/select/CombiningEvaluator$Or;-><init>([Lorg/jsoup/select/Evaluator;)V

    .line 42
    .line 43
    .line 44
    move-object v0, v2

    .line 45
    goto :goto_0

    .line 46
    :cond_1
    return-object v0
.end method

.method public final o()Lorg/jsoup/select/Evaluator;
    .locals 9

    .line 1
    iget-object v0, p0, Lorg/jsoup/select/QueryParser;->c:Lorg/jsoup/parser/TokenQueue;

    .line 2
    .line 3
    invoke-virtual {v0}, Lorg/jsoup/parser/TokenQueue;->consumeWhitespace()Z

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Lorg/jsoup/parser/TokenQueue;->matchesWord()Z

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    const/4 v2, 0x1

    .line 11
    const/4 v3, 0x0

    .line 12
    const/4 v4, 0x2

    .line 13
    const-string v5, "*|"

    .line 14
    .line 15
    if-nez v1, :cond_2

    .line 16
    .line 17
    invoke-virtual {v0, v5}, Lorg/jsoup/parser/TokenQueue;->matches(Ljava/lang/String;)Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_0

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const/16 v1, 0x2a

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Lorg/jsoup/parser/TokenQueue;->matchChomp(C)Z

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    if-eqz v1, :cond_1

    .line 31
    .line 32
    new-instance v1, Lorg/jsoup/select/Evaluator$AllElements;

    .line 33
    .line 34
    invoke-direct {v1}, Lorg/jsoup/select/Evaluator$AllElements;-><init>()V

    .line 35
    .line 36
    .line 37
    goto :goto_2

    .line 38
    :cond_1
    const/4 v1, 0x0

    .line 39
    goto :goto_2

    .line 40
    :cond_2
    :goto_0
    invoke-virtual {v0}, Lorg/jsoup/parser/TokenQueue;->consumeElementSelector()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    invoke-static {v1}, Lorg/jsoup/internal/Normalizer;->normalize(Ljava/lang/String;)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    invoke-static {v1}, Lorg/jsoup/helper/Validate;->notEmpty(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 52
    .line 53
    .line 54
    move-result v5

    .line 55
    const-string v6, ":"

    .line 56
    .line 57
    if-eqz v5, :cond_3

    .line 58
    .line 59
    invoke-virtual {v1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    new-instance v5, Lorg/jsoup/select/CombiningEvaluator$Or;

    .line 64
    .line 65
    new-instance v7, Lorg/jsoup/select/Evaluator$Tag;

    .line 66
    .line 67
    invoke-direct {v7, v1}, Lorg/jsoup/select/Evaluator$Tag;-><init>(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    new-instance v8, Lorg/jsoup/select/Evaluator$TagEndsWith;

    .line 71
    .line 72
    invoke-static {v6, v1}, Landroid/support/v4/media/a;->C(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    invoke-direct {v8, v1}, Lorg/jsoup/select/Evaluator$TagEndsWith;-><init>(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    new-array v1, v4, [Lorg/jsoup/select/Evaluator;

    .line 80
    .line 81
    aput-object v7, v1, v3

    .line 82
    .line 83
    aput-object v8, v1, v2

    .line 84
    .line 85
    invoke-direct {v5, v1}, Lorg/jsoup/select/CombiningEvaluator$Or;-><init>([Lorg/jsoup/select/Evaluator;)V

    .line 86
    .line 87
    .line 88
    :goto_1
    move-object v1, v5

    .line 89
    goto :goto_2

    .line 90
    :cond_3
    const-string v5, "|*"

    .line 91
    .line 92
    invoke-virtual {v1, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 93
    .line 94
    .line 95
    move-result v5

    .line 96
    if-eqz v5, :cond_4

    .line 97
    .line 98
    new-instance v5, Ljava/lang/StringBuilder;

    .line 99
    .line 100
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 101
    .line 102
    .line 103
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 104
    .line 105
    .line 106
    move-result v7

    .line 107
    sub-int/2addr v7, v4

    .line 108
    invoke-virtual {v1, v3, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v1

    .line 112
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v1

    .line 122
    new-instance v5, Lorg/jsoup/select/Evaluator$TagStartsWith;

    .line 123
    .line 124
    invoke-direct {v5, v1}, Lorg/jsoup/select/Evaluator$TagStartsWith;-><init>(Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    goto :goto_1

    .line 128
    :cond_4
    const-string v5, "|"

    .line 129
    .line 130
    invoke-virtual {v1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 131
    .line 132
    .line 133
    move-result v7

    .line 134
    if-eqz v7, :cond_5

    .line 135
    .line 136
    invoke-virtual {v1, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object v1

    .line 140
    :cond_5
    new-instance v5, Lorg/jsoup/select/Evaluator$Tag;

    .line 141
    .line 142
    invoke-direct {v5, v1}, Lorg/jsoup/select/Evaluator$Tag;-><init>(Ljava/lang/String;)V

    .line 143
    .line 144
    .line 145
    goto :goto_1

    .line 146
    :goto_2
    invoke-virtual {p0}, Lorg/jsoup/select/QueryParser;->u()Lorg/jsoup/select/Evaluator;

    .line 147
    .line 148
    .line 149
    move-result-object v5

    .line 150
    if-eqz v5, :cond_6

    .line 151
    .line 152
    invoke-static {v1, v5}, Lorg/jsoup/select/QueryParser;->a(Lorg/jsoup/select/Evaluator;Lorg/jsoup/select/Evaluator;)Lorg/jsoup/select/Evaluator;

    .line 153
    .line 154
    .line 155
    move-result-object v1

    .line 156
    goto :goto_2

    .line 157
    :cond_6
    if-eqz v1, :cond_7

    .line 158
    .line 159
    return-object v1

    .line 160
    :cond_7
    new-instance v1, Lorg/jsoup/select/Selector$SelectorParseException;

    .line 161
    .line 162
    invoke-virtual {v0}, Lorg/jsoup/parser/TokenQueue;->remainder()Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object v0

    .line 166
    new-array v4, v4, [Ljava/lang/Object;

    .line 167
    .line 168
    iget-object v5, p0, Lorg/jsoup/select/QueryParser;->f:Ljava/lang/String;

    .line 169
    .line 170
    aput-object v5, v4, v3

    .line 171
    .line 172
    aput-object v0, v4, v2

    .line 173
    .line 174
    const-string v0, "Could not parse query \'%s\': unexpected token at \'%s\'"

    .line 175
    .line 176
    invoke-direct {v1, v0, v4}, Lorg/jsoup/select/Selector$SelectorParseException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 177
    .line 178
    .line 179
    throw v1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/jsoup/select/QueryParser;->f:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final u()Lorg/jsoup/select/Evaluator;
    .locals 11

    .line 1
    const/16 v0, 0x23

    .line 2
    .line 3
    iget-object v1, p0, Lorg/jsoup/select/QueryParser;->c:Lorg/jsoup/parser/TokenQueue;

    .line 4
    .line 5
    invoke-virtual {v1, v0}, Lorg/jsoup/parser/TokenQueue;->matchChomp(C)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {v1}, Lorg/jsoup/parser/TokenQueue;->consumeCssIdentifier()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-static {v0}, Lorg/jsoup/helper/Validate;->notEmpty(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    new-instance v1, Lorg/jsoup/select/Evaluator$Id;

    .line 19
    .line 20
    invoke-direct {v1, v0}, Lorg/jsoup/select/Evaluator$Id;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    return-object v1

    .line 24
    :cond_0
    const/16 v0, 0x2e

    .line 25
    .line 26
    invoke-virtual {v1, v0}, Lorg/jsoup/parser/TokenQueue;->matchChomp(C)Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-eqz v0, :cond_1

    .line 31
    .line 32
    invoke-virtual {v1}, Lorg/jsoup/parser/TokenQueue;->consumeCssIdentifier()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-static {v0}, Lorg/jsoup/helper/Validate;->notEmpty(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    new-instance v1, Lorg/jsoup/select/Evaluator$Class;

    .line 40
    .line 41
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    invoke-direct {v1, v0}, Lorg/jsoup/select/Evaluator$Class;-><init>(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    return-object v1

    .line 49
    :cond_1
    const/16 v0, 0x5b

    .line 50
    .line 51
    invoke-virtual {v1, v0}, Lorg/jsoup/parser/TokenQueue;->matches(C)Z

    .line 52
    .line 53
    .line 54
    move-result v2

    .line 55
    if-eqz v2, :cond_2

    .line 56
    .line 57
    new-instance v2, Lorg/jsoup/parser/TokenQueue;

    .line 58
    .line 59
    const/16 v3, 0x5d

    .line 60
    .line 61
    invoke-virtual {v1, v0, v3}, Lorg/jsoup/parser/TokenQueue;->chompBalanced(CC)Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    invoke-direct {v2, v0}, Lorg/jsoup/parser/TokenQueue;-><init>(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    :try_start_0
    invoke-virtual {p0, v2}, Lorg/jsoup/select/QueryParser;->j(Lorg/jsoup/parser/TokenQueue;)Lorg/jsoup/select/Evaluator;

    .line 69
    .line 70
    .line 71
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 72
    invoke-virtual {v2}, Lorg/jsoup/parser/TokenQueue;->close()V

    .line 73
    .line 74
    .line 75
    return-object v0

    .line 76
    :catchall_0
    move-exception v0

    .line 77
    :try_start_1
    invoke-virtual {v2}, Lorg/jsoup/parser/TokenQueue;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 78
    .line 79
    .line 80
    goto :goto_0

    .line 81
    :catchall_1
    move-exception v1

    .line 82
    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 83
    .line 84
    .line 85
    :goto_0
    throw v0

    .line 86
    :cond_2
    const-string v0, "::"

    .line 87
    .line 88
    invoke-virtual {v1, v0}, Lorg/jsoup/parser/TokenQueue;->matchChomp(Ljava/lang/String;)Z

    .line 89
    .line 90
    .line 91
    move-result v0

    .line 92
    const/4 v2, 0x5

    .line 93
    const/4 v3, 0x4

    .line 94
    const/4 v4, 0x3

    .line 95
    const/4 v5, -0x1

    .line 96
    const/4 v6, 0x2

    .line 97
    const/4 v7, 0x0

    .line 98
    iget-object v8, p0, Lorg/jsoup/select/QueryParser;->f:Ljava/lang/String;

    .line 99
    .line 100
    const/4 v9, 0x1

    .line 101
    if-eqz v0, :cond_a

    .line 102
    .line 103
    invoke-virtual {v1}, Lorg/jsoup/parser/TokenQueue;->consumeCssIdentifier()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    iput-boolean v9, p0, Lorg/jsoup/select/QueryParser;->g:Z

    .line 108
    .line 109
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 110
    .line 111
    .line 112
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 113
    .line 114
    .line 115
    move-result v1

    .line 116
    sparse-switch v1, :sswitch_data_0

    .line 117
    .line 118
    .line 119
    :goto_1
    move v2, v5

    .line 120
    goto :goto_2

    .line 121
    :sswitch_0
    const-string v1, "leafnode"

    .line 122
    .line 123
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 124
    .line 125
    .line 126
    move-result v1

    .line 127
    if-nez v1, :cond_8

    .line 128
    .line 129
    goto :goto_1

    .line 130
    :sswitch_1
    const-string v1, "comment"

    .line 131
    .line 132
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 133
    .line 134
    .line 135
    move-result v1

    .line 136
    if-nez v1, :cond_3

    .line 137
    .line 138
    goto :goto_1

    .line 139
    :cond_3
    move v2, v3

    .line 140
    goto :goto_2

    .line 141
    :sswitch_2
    const-string v1, "cdata"

    .line 142
    .line 143
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 144
    .line 145
    .line 146
    move-result v1

    .line 147
    if-nez v1, :cond_4

    .line 148
    .line 149
    goto :goto_1

    .line 150
    :cond_4
    move v2, v4

    .line 151
    goto :goto_2

    .line 152
    :sswitch_3
    const-string v1, "text"

    .line 153
    .line 154
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 155
    .line 156
    .line 157
    move-result v1

    .line 158
    if-nez v1, :cond_5

    .line 159
    .line 160
    goto :goto_1

    .line 161
    :cond_5
    move v2, v6

    .line 162
    goto :goto_2

    .line 163
    :sswitch_4
    const-string v1, "node"

    .line 164
    .line 165
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 166
    .line 167
    .line 168
    move-result v1

    .line 169
    if-nez v1, :cond_6

    .line 170
    .line 171
    goto :goto_1

    .line 172
    :cond_6
    move v2, v9

    .line 173
    goto :goto_2

    .line 174
    :sswitch_5
    const-string v1, "data"

    .line 175
    .line 176
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 177
    .line 178
    .line 179
    move-result v1

    .line 180
    if-nez v1, :cond_7

    .line 181
    .line 182
    goto :goto_1

    .line 183
    :cond_7
    move v2, v7

    .line 184
    :cond_8
    :goto_2
    packed-switch v2, :pswitch_data_0

    .line 185
    .line 186
    .line 187
    new-instance v1, Lorg/jsoup/select/Selector$SelectorParseException;

    .line 188
    .line 189
    new-array v2, v6, [Ljava/lang/Object;

    .line 190
    .line 191
    aput-object v8, v2, v7

    .line 192
    .line 193
    aput-object v0, v2, v9

    .line 194
    .line 195
    const-string v0, "Could not parse query \'%s\': unknown node type \'::%s\'"

    .line 196
    .line 197
    invoke-direct {v1, v0, v2}, Lorg/jsoup/select/Selector$SelectorParseException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 198
    .line 199
    .line 200
    throw v1

    .line 201
    :pswitch_0
    new-instance v1, Lorg/jsoup/select/NodeEvaluator$InstanceType;

    .line 202
    .line 203
    const-class v2, Lorg/jsoup/nodes/LeafNode;

    .line 204
    .line 205
    invoke-direct {v1, v2, v0}, Lorg/jsoup/select/NodeEvaluator$InstanceType;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    .line 206
    .line 207
    .line 208
    goto :goto_3

    .line 209
    :pswitch_1
    new-instance v1, Lorg/jsoup/select/NodeEvaluator$InstanceType;

    .line 210
    .line 211
    const-class v2, Lorg/jsoup/nodes/Comment;

    .line 212
    .line 213
    invoke-direct {v1, v2, v0}, Lorg/jsoup/select/NodeEvaluator$InstanceType;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    .line 214
    .line 215
    .line 216
    goto :goto_3

    .line 217
    :pswitch_2
    new-instance v1, Lorg/jsoup/select/NodeEvaluator$InstanceType;

    .line 218
    .line 219
    const-class v2, Lorg/jsoup/nodes/CDataNode;

    .line 220
    .line 221
    invoke-direct {v1, v2, v0}, Lorg/jsoup/select/NodeEvaluator$InstanceType;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    .line 222
    .line 223
    .line 224
    goto :goto_3

    .line 225
    :pswitch_3
    new-instance v1, Lorg/jsoup/select/NodeEvaluator$InstanceType;

    .line 226
    .line 227
    const-class v2, Lorg/jsoup/nodes/TextNode;

    .line 228
    .line 229
    invoke-direct {v1, v2, v0}, Lorg/jsoup/select/NodeEvaluator$InstanceType;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    .line 230
    .line 231
    .line 232
    goto :goto_3

    .line 233
    :pswitch_4
    new-instance v1, Lorg/jsoup/select/NodeEvaluator$InstanceType;

    .line 234
    .line 235
    const-class v2, Lorg/jsoup/nodes/Node;

    .line 236
    .line 237
    invoke-direct {v1, v2, v0}, Lorg/jsoup/select/NodeEvaluator$InstanceType;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    .line 238
    .line 239
    .line 240
    goto :goto_3

    .line 241
    :pswitch_5
    new-instance v1, Lorg/jsoup/select/NodeEvaluator$InstanceType;

    .line 242
    .line 243
    const-class v2, Lorg/jsoup/nodes/DataNode;

    .line 244
    .line 245
    invoke-direct {v1, v2, v0}, Lorg/jsoup/select/NodeEvaluator$InstanceType;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    .line 246
    .line 247
    .line 248
    :goto_3
    invoke-virtual {p0}, Lorg/jsoup/select/QueryParser;->u()Lorg/jsoup/select/Evaluator;

    .line 249
    .line 250
    .line 251
    move-result-object v0

    .line 252
    if-eqz v0, :cond_9

    .line 253
    .line 254
    invoke-static {v1, v0}, Lorg/jsoup/select/QueryParser;->a(Lorg/jsoup/select/Evaluator;Lorg/jsoup/select/Evaluator;)Lorg/jsoup/select/Evaluator;

    .line 255
    .line 256
    .line 257
    move-result-object v1

    .line 258
    goto :goto_3

    .line 259
    :cond_9
    iput-boolean v7, p0, Lorg/jsoup/select/QueryParser;->g:Z

    .line 260
    .line 261
    return-object v1

    .line 262
    :cond_a
    const/16 v0, 0x3a

    .line 263
    .line 264
    invoke-virtual {v1, v0}, Lorg/jsoup/parser/TokenQueue;->matchChomp(C)Z

    .line 265
    .line 266
    .line 267
    move-result v0

    .line 268
    if-eqz v0, :cond_28

    .line 269
    .line 270
    invoke-virtual {v1}, Lorg/jsoup/parser/TokenQueue;->consumeCssIdentifier()Ljava/lang/String;

    .line 271
    .line 272
    .line 273
    move-result-object v0

    .line 274
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 275
    .line 276
    .line 277
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 278
    .line 279
    .line 280
    move-result v10

    .line 281
    sparse-switch v10, :sswitch_data_1

    .line 282
    .line 283
    .line 284
    :goto_4
    move v2, v5

    .line 285
    goto/16 :goto_5

    .line 286
    .line 287
    :sswitch_6
    const-string v2, "last-of-type"

    .line 288
    .line 289
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 290
    .line 291
    .line 292
    move-result v0

    .line 293
    if-nez v0, :cond_b

    .line 294
    .line 295
    goto :goto_4

    .line 296
    :cond_b
    const/16 v2, 0x1c

    .line 297
    .line 298
    goto/16 :goto_5

    .line 299
    .line 300
    :sswitch_7
    const-string v2, "containsWholeText"

    .line 301
    .line 302
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 303
    .line 304
    .line 305
    move-result v0

    .line 306
    if-nez v0, :cond_c

    .line 307
    .line 308
    goto :goto_4

    .line 309
    :cond_c
    const/16 v2, 0x1b

    .line 310
    .line 311
    goto/16 :goto_5

    .line 312
    .line 313
    :sswitch_8
    const-string v2, "matchesOwn"

    .line 314
    .line 315
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 316
    .line 317
    .line 318
    move-result v0

    .line 319
    if-nez v0, :cond_d

    .line 320
    .line 321
    goto :goto_4

    .line 322
    :cond_d
    const/16 v2, 0x1a

    .line 323
    .line 324
    goto/16 :goto_5

    .line 325
    .line 326
    :sswitch_9
    const-string v2, "only-of-type"

    .line 327
    .line 328
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 329
    .line 330
    .line 331
    move-result v0

    .line 332
    if-nez v0, :cond_e

    .line 333
    .line 334
    goto :goto_4

    .line 335
    :cond_e
    const/16 v2, 0x19

    .line 336
    .line 337
    goto/16 :goto_5

    .line 338
    .line 339
    :sswitch_a
    const-string v2, "first-of-type"

    .line 340
    .line 341
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 342
    .line 343
    .line 344
    move-result v0

    .line 345
    if-nez v0, :cond_f

    .line 346
    .line 347
    goto :goto_4

    .line 348
    :cond_f
    const/16 v2, 0x18

    .line 349
    .line 350
    goto/16 :goto_5

    .line 351
    .line 352
    :sswitch_b
    const-string v2, "matchesWholeOwnText"

    .line 353
    .line 354
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 355
    .line 356
    .line 357
    move-result v0

    .line 358
    if-nez v0, :cond_10

    .line 359
    .line 360
    goto :goto_4

    .line 361
    :cond_10
    const/16 v2, 0x17

    .line 362
    .line 363
    goto/16 :goto_5

    .line 364
    .line 365
    :sswitch_c
    const-string v2, "matches"

    .line 366
    .line 367
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 368
    .line 369
    .line 370
    move-result v0

    .line 371
    if-nez v0, :cond_11

    .line 372
    .line 373
    goto :goto_4

    .line 374
    :cond_11
    const/16 v2, 0x16

    .line 375
    .line 376
    goto/16 :goto_5

    .line 377
    .line 378
    :sswitch_d
    const-string v2, "last-child"

    .line 379
    .line 380
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 381
    .line 382
    .line 383
    move-result v0

    .line 384
    if-nez v0, :cond_12

    .line 385
    .line 386
    goto :goto_4

    .line 387
    :cond_12
    const/16 v2, 0x15

    .line 388
    .line 389
    goto/16 :goto_5

    .line 390
    .line 391
    :sswitch_e
    const-string v2, "matchText"

    .line 392
    .line 393
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 394
    .line 395
    .line 396
    move-result v0

    .line 397
    if-nez v0, :cond_13

    .line 398
    .line 399
    goto :goto_4

    .line 400
    :cond_13
    const/16 v2, 0x14

    .line 401
    .line 402
    goto/16 :goto_5

    .line 403
    .line 404
    :sswitch_f
    const-string v2, "containsOwn"

    .line 405
    .line 406
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 407
    .line 408
    .line 409
    move-result v0

    .line 410
    if-nez v0, :cond_14

    .line 411
    .line 412
    goto/16 :goto_4

    .line 413
    .line 414
    :cond_14
    const/16 v2, 0x13

    .line 415
    .line 416
    goto/16 :goto_5

    .line 417
    .line 418
    :sswitch_10
    const-string v2, "empty"

    .line 419
    .line 420
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 421
    .line 422
    .line 423
    move-result v0

    .line 424
    if-nez v0, :cond_15

    .line 425
    .line 426
    goto/16 :goto_4

    .line 427
    .line 428
    :cond_15
    const/16 v2, 0x12

    .line 429
    .line 430
    goto/16 :goto_5

    .line 431
    .line 432
    :sswitch_11
    const-string v2, "blank"

    .line 433
    .line 434
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 435
    .line 436
    .line 437
    move-result v0

    .line 438
    if-nez v0, :cond_16

    .line 439
    .line 440
    goto/16 :goto_4

    .line 441
    .line 442
    :cond_16
    const/16 v2, 0x11

    .line 443
    .line 444
    goto/16 :goto_5

    .line 445
    .line 446
    :sswitch_12
    const-string v2, "root"

    .line 447
    .line 448
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 449
    .line 450
    .line 451
    move-result v0

    .line 452
    if-nez v0, :cond_17

    .line 453
    .line 454
    goto/16 :goto_4

    .line 455
    .line 456
    :cond_17
    const/16 v2, 0x10

    .line 457
    .line 458
    goto/16 :goto_5

    .line 459
    .line 460
    :sswitch_13
    const-string v2, "not"

    .line 461
    .line 462
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 463
    .line 464
    .line 465
    move-result v0

    .line 466
    if-nez v0, :cond_18

    .line 467
    .line 468
    goto/16 :goto_4

    .line 469
    .line 470
    :cond_18
    const/16 v2, 0xf

    .line 471
    .line 472
    goto/16 :goto_5

    .line 473
    .line 474
    :sswitch_14
    const-string v2, "has"

    .line 475
    .line 476
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 477
    .line 478
    .line 479
    move-result v0

    .line 480
    if-nez v0, :cond_19

    .line 481
    .line 482
    goto/16 :goto_4

    .line 483
    .line 484
    :cond_19
    const/16 v2, 0xe

    .line 485
    .line 486
    goto/16 :goto_5

    .line 487
    .line 488
    :sswitch_15
    const-string v2, "lt"

    .line 489
    .line 490
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 491
    .line 492
    .line 493
    move-result v0

    .line 494
    if-nez v0, :cond_1a

    .line 495
    .line 496
    goto/16 :goto_4

    .line 497
    .line 498
    :cond_1a
    const/16 v2, 0xd

    .line 499
    .line 500
    goto/16 :goto_5

    .line 501
    .line 502
    :sswitch_16
    const-string v2, "is"

    .line 503
    .line 504
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 505
    .line 506
    .line 507
    move-result v0

    .line 508
    if-nez v0, :cond_1b

    .line 509
    .line 510
    goto/16 :goto_4

    .line 511
    .line 512
    :cond_1b
    const/16 v2, 0xc

    .line 513
    .line 514
    goto/16 :goto_5

    .line 515
    .line 516
    :sswitch_17
    const-string v2, "gt"

    .line 517
    .line 518
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 519
    .line 520
    .line 521
    move-result v0

    .line 522
    if-nez v0, :cond_1c

    .line 523
    .line 524
    goto/16 :goto_4

    .line 525
    .line 526
    :cond_1c
    const/16 v2, 0xb

    .line 527
    .line 528
    goto/16 :goto_5

    .line 529
    .line 530
    :sswitch_18
    const-string v2, "eq"

    .line 531
    .line 532
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 533
    .line 534
    .line 535
    move-result v0

    .line 536
    if-nez v0, :cond_1d

    .line 537
    .line 538
    goto/16 :goto_4

    .line 539
    .line 540
    :cond_1d
    const/16 v2, 0xa

    .line 541
    .line 542
    goto/16 :goto_5

    .line 543
    .line 544
    :sswitch_19
    const-string v2, "containsWholeOwnText"

    .line 545
    .line 546
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 547
    .line 548
    .line 549
    move-result v0

    .line 550
    if-nez v0, :cond_1e

    .line 551
    .line 552
    goto/16 :goto_4

    .line 553
    .line 554
    :cond_1e
    const/16 v2, 0x9

    .line 555
    .line 556
    goto/16 :goto_5

    .line 557
    .line 558
    :sswitch_1a
    const-string v2, "contains"

    .line 559
    .line 560
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 561
    .line 562
    .line 563
    move-result v0

    .line 564
    if-nez v0, :cond_1f

    .line 565
    .line 566
    goto/16 :goto_4

    .line 567
    .line 568
    :cond_1f
    const/16 v2, 0x8

    .line 569
    .line 570
    goto/16 :goto_5

    .line 571
    .line 572
    :sswitch_1b
    const-string v2, "nth-last-of-type"

    .line 573
    .line 574
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 575
    .line 576
    .line 577
    move-result v0

    .line 578
    if-nez v0, :cond_20

    .line 579
    .line 580
    goto/16 :goto_4

    .line 581
    .line 582
    :cond_20
    const/4 v2, 0x7

    .line 583
    goto :goto_5

    .line 584
    :sswitch_1c
    const-string v2, "nth-of-type"

    .line 585
    .line 586
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 587
    .line 588
    .line 589
    move-result v0

    .line 590
    if-nez v0, :cond_21

    .line 591
    .line 592
    goto/16 :goto_4

    .line 593
    .line 594
    :cond_21
    const/4 v2, 0x6

    .line 595
    goto :goto_5

    .line 596
    :sswitch_1d
    const-string v3, "only-child"

    .line 597
    .line 598
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 599
    .line 600
    .line 601
    move-result v0

    .line 602
    if-nez v0, :cond_27

    .line 603
    .line 604
    goto/16 :goto_4

    .line 605
    .line 606
    :sswitch_1e
    const-string v2, "nth-last-child"

    .line 607
    .line 608
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 609
    .line 610
    .line 611
    move-result v0

    .line 612
    if-nez v0, :cond_22

    .line 613
    .line 614
    goto/16 :goto_4

    .line 615
    .line 616
    :cond_22
    move v2, v3

    .line 617
    goto :goto_5

    .line 618
    :sswitch_1f
    const-string v2, "nth-child"

    .line 619
    .line 620
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 621
    .line 622
    .line 623
    move-result v0

    .line 624
    if-nez v0, :cond_23

    .line 625
    .line 626
    goto/16 :goto_4

    .line 627
    .line 628
    :cond_23
    move v2, v4

    .line 629
    goto :goto_5

    .line 630
    :sswitch_20
    const-string v2, "matchesWholeText"

    .line 631
    .line 632
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 633
    .line 634
    .line 635
    move-result v0

    .line 636
    if-nez v0, :cond_24

    .line 637
    .line 638
    goto/16 :goto_4

    .line 639
    .line 640
    :cond_24
    move v2, v6

    .line 641
    goto :goto_5

    .line 642
    :sswitch_21
    const-string v2, "first-child"

    .line 643
    .line 644
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 645
    .line 646
    .line 647
    move-result v0

    .line 648
    if-nez v0, :cond_25

    .line 649
    .line 650
    goto/16 :goto_4

    .line 651
    .line 652
    :cond_25
    move v2, v9

    .line 653
    goto :goto_5

    .line 654
    :sswitch_22
    const-string v2, "containsData"

    .line 655
    .line 656
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 657
    .line 658
    .line 659
    move-result v0

    .line 660
    if-nez v0, :cond_26

    .line 661
    .line 662
    goto/16 :goto_4

    .line 663
    .line 664
    :cond_26
    move v2, v7

    .line 665
    :cond_27
    :goto_5
    const/16 v0, 0x29

    .line 666
    .line 667
    const/16 v3, 0x28

    .line 668
    .line 669
    packed-switch v2, :pswitch_data_1

    .line 670
    .line 671
    .line 672
    new-instance v0, Lorg/jsoup/select/Selector$SelectorParseException;

    .line 673
    .line 674
    invoke-virtual {v1}, Lorg/jsoup/parser/TokenQueue;->remainder()Ljava/lang/String;

    .line 675
    .line 676
    .line 677
    move-result-object v1

    .line 678
    new-array v2, v6, [Ljava/lang/Object;

    .line 679
    .line 680
    aput-object v8, v2, v7

    .line 681
    .line 682
    aput-object v1, v2, v9

    .line 683
    .line 684
    const-string v1, "Could not parse query \'%s\': unexpected token at \'%s\'"

    .line 685
    .line 686
    invoke-direct {v0, v1, v2}, Lorg/jsoup/select/Selector$SelectorParseException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 687
    .line 688
    .line 689
    throw v0

    .line 690
    :pswitch_6
    new-instance v0, Lorg/jsoup/select/Evaluator$IsLastOfType;

    .line 691
    .line 692
    invoke-direct {v0}, Lorg/jsoup/select/Evaluator$IsLastOfType;-><init>()V

    .line 693
    .line 694
    .line 695
    return-object v0

    .line 696
    :pswitch_7
    invoke-virtual {p0, v7}, Lorg/jsoup/select/QueryParser;->f(Z)Lorg/jsoup/select/Evaluator;

    .line 697
    .line 698
    .line 699
    move-result-object v0

    .line 700
    return-object v0

    .line 701
    :pswitch_8
    invoke-virtual {p0, v9}, Lorg/jsoup/select/QueryParser;->k(Z)Lorg/jsoup/select/Evaluator;

    .line 702
    .line 703
    .line 704
    move-result-object v0

    .line 705
    return-object v0

    .line 706
    :pswitch_9
    new-instance v0, Lorg/jsoup/select/Evaluator$IsOnlyOfType;

    .line 707
    .line 708
    invoke-direct {v0}, Lorg/jsoup/select/Evaluator$IsOnlyOfType;-><init>()V

    .line 709
    .line 710
    .line 711
    return-object v0

    .line 712
    :pswitch_a
    new-instance v0, Lorg/jsoup/select/Evaluator$IsFirstOfType;

    .line 713
    .line 714
    invoke-direct {v0}, Lorg/jsoup/select/Evaluator$IsFirstOfType;-><init>()V

    .line 715
    .line 716
    .line 717
    return-object v0

    .line 718
    :pswitch_b
    invoke-virtual {p0, v9}, Lorg/jsoup/select/QueryParser;->l(Z)Lorg/jsoup/select/Evaluator;

    .line 719
    .line 720
    .line 721
    move-result-object v0

    .line 722
    return-object v0

    .line 723
    :pswitch_c
    invoke-virtual {p0, v7}, Lorg/jsoup/select/QueryParser;->k(Z)Lorg/jsoup/select/Evaluator;

    .line 724
    .line 725
    .line 726
    move-result-object v0

    .line 727
    return-object v0

    .line 728
    :pswitch_d
    new-instance v0, Lorg/jsoup/select/Evaluator$IsLastChild;

    .line 729
    .line 730
    invoke-direct {v0}, Lorg/jsoup/select/Evaluator$IsLastChild;-><init>()V

    .line 731
    .line 732
    .line 733
    return-object v0

    .line 734
    :pswitch_e
    new-instance v0, Lorg/jsoup/select/Evaluator$MatchText;

    .line 735
    .line 736
    invoke-direct {v0}, Lorg/jsoup/select/Evaluator$MatchText;-><init>()V

    .line 737
    .line 738
    .line 739
    return-object v0

    .line 740
    :pswitch_f
    invoke-virtual {p0, v9}, Lorg/jsoup/select/QueryParser;->e(Z)Lorg/jsoup/select/Evaluator;

    .line 741
    .line 742
    .line 743
    move-result-object v0

    .line 744
    return-object v0

    .line 745
    :pswitch_10
    new-instance v0, Lorg/jsoup/select/Evaluator$IsEmpty;

    .line 746
    .line 747
    invoke-direct {v0}, Lorg/jsoup/select/Evaluator$IsEmpty;-><init>()V

    .line 748
    .line 749
    .line 750
    return-object v0

    .line 751
    :pswitch_11
    new-instance v0, Lorg/jsoup/select/NodeEvaluator$BlankValue;

    .line 752
    .line 753
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 754
    .line 755
    .line 756
    return-object v0

    .line 757
    :pswitch_12
    new-instance v0, Lorg/jsoup/select/Evaluator$IsRoot;

    .line 758
    .line 759
    invoke-direct {v0}, Lorg/jsoup/select/Evaluator$IsRoot;-><init>()V

    .line 760
    .line 761
    .line 762
    return-object v0

    .line 763
    :pswitch_13
    invoke-virtual {p0}, Lorg/jsoup/select/QueryParser;->d()Ljava/lang/String;

    .line 764
    .line 765
    .line 766
    move-result-object v0

    .line 767
    const-string v1, ":not(selector) subselect must not be empty"

    .line 768
    .line 769
    invoke-static {v0, v1}, Lorg/jsoup/helper/Validate;->notEmpty(Ljava/lang/String;Ljava/lang/String;)V

    .line 770
    .line 771
    .line 772
    new-instance v1, Lorg/jsoup/select/StructuralEvaluator$Not;

    .line 773
    .line 774
    invoke-static {v0}, Lorg/jsoup/select/QueryParser;->parse(Ljava/lang/String;)Lorg/jsoup/select/Evaluator;

    .line 775
    .line 776
    .line 777
    move-result-object v0

    .line 778
    invoke-direct {v1, v0}, Lorg/jsoup/select/StructuralEvaluator;-><init>(Lorg/jsoup/select/Evaluator;)V

    .line 779
    .line 780
    .line 781
    return-object v1

    .line 782
    :pswitch_14
    new-instance v2, Lorg/jsoup/select/e;

    .line 783
    .line 784
    invoke-direct {v2, v7}, Lorg/jsoup/select/e;-><init>(I)V

    .line 785
    .line 786
    .line 787
    invoke-virtual {v1, v3}, Lorg/jsoup/parser/TokenQueue;->matchChomp(C)Z

    .line 788
    .line 789
    .line 790
    move-result v3

    .line 791
    const-string v4, ":has() must have a selector"

    .line 792
    .line 793
    invoke-static {v3, v4}, Lorg/jsoup/helper/Validate;->isTrue(ZLjava/lang/String;)V

    .line 794
    .line 795
    .line 796
    invoke-virtual {p0}, Lorg/jsoup/select/QueryParser;->n()Lorg/jsoup/select/Evaluator;

    .line 797
    .line 798
    .line 799
    move-result-object v3

    .line 800
    invoke-virtual {v1, v0}, Lorg/jsoup/parser/TokenQueue;->matchChomp(C)Z

    .line 801
    .line 802
    .line 803
    move-result v0

    .line 804
    invoke-static {v0, v4}, Lorg/jsoup/helper/Validate;->isTrue(ZLjava/lang/String;)V

    .line 805
    .line 806
    .line 807
    invoke-virtual {v2, v3}, Lorg/jsoup/select/e;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    .line 808
    .line 809
    .line 810
    move-result-object v0

    .line 811
    check-cast v0, Lorg/jsoup/select/Evaluator;

    .line 812
    .line 813
    return-object v0

    .line 814
    :pswitch_15
    new-instance v0, Lorg/jsoup/select/Evaluator$IndexLessThan;

    .line 815
    .line 816
    invoke-virtual {p0}, Lorg/jsoup/select/QueryParser;->b()I

    .line 817
    .line 818
    .line 819
    move-result v1

    .line 820
    invoke-direct {v0, v1}, Lorg/jsoup/select/Evaluator$IndexLessThan;-><init>(I)V

    .line 821
    .line 822
    .line 823
    return-object v0

    .line 824
    :pswitch_16
    invoke-virtual {v1, v3}, Lorg/jsoup/parser/TokenQueue;->matchChomp(C)Z

    .line 825
    .line 826
    .line 827
    move-result v2

    .line 828
    const-string v3, ":is() must have a selector"

    .line 829
    .line 830
    invoke-static {v2, v3}, Lorg/jsoup/helper/Validate;->isTrue(ZLjava/lang/String;)V

    .line 831
    .line 832
    .line 833
    invoke-virtual {p0}, Lorg/jsoup/select/QueryParser;->n()Lorg/jsoup/select/Evaluator;

    .line 834
    .line 835
    .line 836
    move-result-object v2

    .line 837
    invoke-virtual {v1, v0}, Lorg/jsoup/parser/TokenQueue;->matchChomp(C)Z

    .line 838
    .line 839
    .line 840
    move-result v0

    .line 841
    invoke-static {v0, v3}, Lorg/jsoup/helper/Validate;->isTrue(ZLjava/lang/String;)V

    .line 842
    .line 843
    .line 844
    new-instance v0, Lorg/jsoup/select/StructuralEvaluator$Is;

    .line 845
    .line 846
    invoke-direct {v0, v2}, Lorg/jsoup/select/StructuralEvaluator;-><init>(Lorg/jsoup/select/Evaluator;)V

    .line 847
    .line 848
    .line 849
    return-object v0

    .line 850
    :pswitch_17
    new-instance v0, Lorg/jsoup/select/Evaluator$IndexGreaterThan;

    .line 851
    .line 852
    invoke-virtual {p0}, Lorg/jsoup/select/QueryParser;->b()I

    .line 853
    .line 854
    .line 855
    move-result v1

    .line 856
    invoke-direct {v0, v1}, Lorg/jsoup/select/Evaluator$IndexGreaterThan;-><init>(I)V

    .line 857
    .line 858
    .line 859
    return-object v0

    .line 860
    :pswitch_18
    new-instance v0, Lorg/jsoup/select/Evaluator$IndexEquals;

    .line 861
    .line 862
    invoke-virtual {p0}, Lorg/jsoup/select/QueryParser;->b()I

    .line 863
    .line 864
    .line 865
    move-result v1

    .line 866
    invoke-direct {v0, v1}, Lorg/jsoup/select/Evaluator$IndexEquals;-><init>(I)V

    .line 867
    .line 868
    .line 869
    return-object v0

    .line 870
    :pswitch_19
    invoke-virtual {p0, v9}, Lorg/jsoup/select/QueryParser;->f(Z)Lorg/jsoup/select/Evaluator;

    .line 871
    .line 872
    .line 873
    move-result-object v0

    .line 874
    return-object v0

    .line 875
    :pswitch_1a
    invoke-virtual {p0, v7}, Lorg/jsoup/select/QueryParser;->e(Z)Lorg/jsoup/select/Evaluator;

    .line 876
    .line 877
    .line 878
    move-result-object v0

    .line 879
    return-object v0

    .line 880
    :pswitch_1b
    invoke-virtual {p0, v9, v9}, Lorg/jsoup/select/QueryParser;->i(ZZ)Lorg/jsoup/select/Evaluator$CssNthEvaluator;

    .line 881
    .line 882
    .line 883
    move-result-object v0

    .line 884
    return-object v0

    .line 885
    :pswitch_1c
    invoke-virtual {p0, v7, v9}, Lorg/jsoup/select/QueryParser;->i(ZZ)Lorg/jsoup/select/Evaluator$CssNthEvaluator;

    .line 886
    .line 887
    .line 888
    move-result-object v0

    .line 889
    return-object v0

    .line 890
    :pswitch_1d
    new-instance v0, Lorg/jsoup/select/Evaluator$IsOnlyChild;

    .line 891
    .line 892
    invoke-direct {v0}, Lorg/jsoup/select/Evaluator$IsOnlyChild;-><init>()V

    .line 893
    .line 894
    .line 895
    return-object v0

    .line 896
    :pswitch_1e
    invoke-virtual {p0, v9, v7}, Lorg/jsoup/select/QueryParser;->i(ZZ)Lorg/jsoup/select/Evaluator$CssNthEvaluator;

    .line 897
    .line 898
    .line 899
    move-result-object v0

    .line 900
    return-object v0

    .line 901
    :pswitch_1f
    invoke-virtual {p0, v7, v7}, Lorg/jsoup/select/QueryParser;->i(ZZ)Lorg/jsoup/select/Evaluator$CssNthEvaluator;

    .line 902
    .line 903
    .line 904
    move-result-object v0

    .line 905
    return-object v0

    .line 906
    :pswitch_20
    invoke-virtual {p0, v7}, Lorg/jsoup/select/QueryParser;->l(Z)Lorg/jsoup/select/Evaluator;

    .line 907
    .line 908
    .line 909
    move-result-object v0

    .line 910
    return-object v0

    .line 911
    :pswitch_21
    new-instance v0, Lorg/jsoup/select/Evaluator$IsFirstChild;

    .line 912
    .line 913
    invoke-direct {v0}, Lorg/jsoup/select/Evaluator$IsFirstChild;-><init>()V

    .line 914
    .line 915
    .line 916
    return-object v0

    .line 917
    :pswitch_22
    invoke-virtual {p0}, Lorg/jsoup/select/QueryParser;->d()Ljava/lang/String;

    .line 918
    .line 919
    .line 920
    move-result-object v0

    .line 921
    invoke-static {v0}, Lorg/jsoup/parser/TokenQueue;->unescape(Ljava/lang/String;)Ljava/lang/String;

    .line 922
    .line 923
    .line 924
    move-result-object v0

    .line 925
    const-string v1, ":containsData(text) query must not be empty"

    .line 926
    .line 927
    invoke-static {v0, v1}, Lorg/jsoup/helper/Validate;->notEmpty(Ljava/lang/String;Ljava/lang/String;)V

    .line 928
    .line 929
    .line 930
    new-instance v1, Lorg/jsoup/select/Evaluator$ContainsData;

    .line 931
    .line 932
    invoke-direct {v1, v0}, Lorg/jsoup/select/Evaluator$ContainsData;-><init>(Ljava/lang/String;)V

    .line 933
    .line 934
    .line 935
    return-object v1

    .line 936
    :cond_28
    const/4 v0, 0x0

    .line 937
    return-object v0

    .line 938
    nop

    :sswitch_data_0
    .sparse-switch
        0x2eefaa -> :sswitch_5
        0x33ae02 -> :sswitch_4
        0x36452d -> :sswitch_3
        0x5a2068d -> :sswitch_2
        0x38a5ee5f -> :sswitch_1
        0x5d2b6e60 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :sswitch_data_1
    .sparse-switch
        -0x7fa84d97 -> :sswitch_22
        -0x7f5fe841 -> :sswitch_21
        -0x73a0d86f -> :sswitch_20
        -0x6899dd0f -> :sswitch_1f
        -0x6123fd90 -> :sswitch_1e
        -0x38814845 -> :sswitch_1d
        -0x357f41fb -> :sswitch_1c
        -0x3403463c -> :sswitch_1b
        -0x21d289e1 -> :sswitch_1a
        -0x34d8c25 -> :sswitch_19
        0xcac -> :sswitch_18
        0xced -> :sswitch_17
        0xd2a -> :sswitch_16
        0xd88 -> :sswitch_15
        0x1929a -> :sswitch_14
        0x1aad3 -> :sswitch_13
        0x3580e2 -> :sswitch_12
        0x5979154 -> :sswitch_11
        0x5c2854d -> :sswitch_10
        0xc6618e7 -> :sswitch_f
        0x24992892 -> :sswitch_e
        0x31d1d325 -> :sswitch_d
        0x321e8933 -> :sswitch_c
        0x4adb88ef -> :sswitch_b
        0x4d10b753 -> :sswitch_a
        0x56c7484f -> :sswitch_9
        0x6f813d53 -> :sswitch_8
        0x780e0425 -> :sswitch_7
        0x78c13139 -> :sswitch_6
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
    .end packed-switch
.end method
