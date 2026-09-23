.class final enum Lorg/jsoup/parser/HtmlTreeBuilderState$10;
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
    const-string v0, "InTableText"

    .line 2
    .line 3
    const/16 v1, 0x9

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
    .locals 9

    .line 1
    iget-object v0, p1, Lorg/jsoup/parser/Token;->a:Lorg/jsoup/parser/Token$TokenType;

    .line 2
    .line 3
    sget-object v1, Lorg/jsoup/parser/Token$TokenType;->Character:Lorg/jsoup/parser/Token$TokenType;

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    const/4 v3, 0x0

    .line 7
    if-ne v0, v1, :cond_1

    .line 8
    .line 9
    check-cast p1, Lorg/jsoup/parser/Token$Character;

    .line 10
    .line 11
    iget-object v0, p1, Lorg/jsoup/parser/Token$Character;->d:Lorg/jsoup/parser/TokenData;

    .line 12
    .line 13
    invoke-virtual {v0}, Lorg/jsoup/parser/TokenData;->e()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    sget-object v1, Lorg/jsoup/parser/HtmlTreeBuilderState;->C:Ljava/lang/String;

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    invoke-virtual {p2, p0}, Lorg/jsoup/parser/HtmlTreeBuilder;->B(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 26
    .line 27
    .line 28
    return v3

    .line 29
    :cond_0
    new-instance v0, Lorg/jsoup/parser/Token$Character;

    .line 30
    .line 31
    invoke-direct {v0, p1}, Lorg/jsoup/parser/Token$Character;-><init>(Lorg/jsoup/parser/Token$Character;)V

    .line 32
    .line 33
    .line 34
    iget-object p1, p2, Lorg/jsoup/parser/HtmlTreeBuilder;->v:Ljava/util/ArrayList;

    .line 35
    .line 36
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    return v2

    .line 40
    :cond_1
    iget-object v0, p2, Lorg/jsoup/parser/HtmlTreeBuilder;->v:Ljava/util/ArrayList;

    .line 41
    .line 42
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    if-lez v0, :cond_5

    .line 47
    .line 48
    iget-object v0, p2, Lorg/jsoup/parser/TreeBuilder;->g:Lorg/jsoup/parser/Token;

    .line 49
    .line 50
    iget-object v1, p2, Lorg/jsoup/parser/HtmlTreeBuilder;->v:Ljava/util/ArrayList;

    .line 51
    .line 52
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 53
    .line 54
    .line 55
    move-result v4

    .line 56
    move v5, v3

    .line 57
    :goto_0
    if-ge v5, v4, :cond_4

    .line 58
    .line 59
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v6

    .line 63
    add-int/lit8 v5, v5, 0x1

    .line 64
    .line 65
    check-cast v6, Lorg/jsoup/parser/Token$Character;

    .line 66
    .line 67
    iput-object v6, p2, Lorg/jsoup/parser/TreeBuilder;->g:Lorg/jsoup/parser/Token;

    .line 68
    .line 69
    invoke-static {v6}, Lorg/jsoup/parser/HtmlTreeBuilderState;->a(Lorg/jsoup/parser/Token;)Z

    .line 70
    .line 71
    .line 72
    move-result v7

    .line 73
    if-nez v7, :cond_3

    .line 74
    .line 75
    invoke-virtual {p2, p0}, Lorg/jsoup/parser/HtmlTreeBuilder;->B(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {p2}, Lorg/jsoup/parser/TreeBuilder;->b()Lorg/jsoup/nodes/Element;

    .line 79
    .line 80
    .line 81
    move-result-object v7

    .line 82
    invoke-virtual {v7}, Lorg/jsoup/nodes/Element;->normalName()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v7

    .line 86
    sget-object v8, Lorg/jsoup/parser/HtmlTreeBuilderState$Constants;->z:[Ljava/lang/String;

    .line 87
    .line 88
    invoke-static {v7, v8}, Lorg/jsoup/internal/StringUtil;->inSorted(Ljava/lang/String;[Ljava/lang/String;)Z

    .line 89
    .line 90
    .line 91
    move-result v7

    .line 92
    sget-object v8, Lorg/jsoup/parser/HtmlTreeBuilderState;->k:Lorg/jsoup/parser/HtmlTreeBuilderState$7;

    .line 93
    .line 94
    if-eqz v7, :cond_2

    .line 95
    .line 96
    iput-boolean v2, p2, Lorg/jsoup/parser/HtmlTreeBuilder;->y:Z

    .line 97
    .line 98
    invoke-virtual {v8, v6, p2}, Lorg/jsoup/parser/HtmlTreeBuilderState$7;->d(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/HtmlTreeBuilder;)Z

    .line 99
    .line 100
    .line 101
    iput-boolean v3, p2, Lorg/jsoup/parser/HtmlTreeBuilder;->y:Z

    .line 102
    .line 103
    goto :goto_0

    .line 104
    :cond_2
    invoke-virtual {v8, v6, p2}, Lorg/jsoup/parser/HtmlTreeBuilderState$7;->d(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/HtmlTreeBuilder;)Z

    .line 105
    .line 106
    .line 107
    goto :goto_0

    .line 108
    :cond_3
    invoke-virtual {p2, v6}, Lorg/jsoup/parser/HtmlTreeBuilder;->K(Lorg/jsoup/parser/Token$Character;)V

    .line 109
    .line 110
    .line 111
    goto :goto_0

    .line 112
    :cond_4
    iput-object v0, p2, Lorg/jsoup/parser/TreeBuilder;->g:Lorg/jsoup/parser/Token;

    .line 113
    .line 114
    iget-object v0, p2, Lorg/jsoup/parser/HtmlTreeBuilder;->v:Ljava/util/ArrayList;

    .line 115
    .line 116
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 117
    .line 118
    .line 119
    :cond_5
    iget-object v0, p2, Lorg/jsoup/parser/HtmlTreeBuilder;->o:Lorg/jsoup/parser/HtmlTreeBuilderState;

    .line 120
    .line 121
    iput-object v0, p2, Lorg/jsoup/parser/HtmlTreeBuilder;->n:Lorg/jsoup/parser/HtmlTreeBuilderState;

    .line 122
    .line 123
    invoke-virtual {p2, p1}, Lorg/jsoup/parser/HtmlTreeBuilder;->m(Lorg/jsoup/parser/Token;)Z

    .line 124
    .line 125
    .line 126
    move-result p1

    .line 127
    return p1
.end method
