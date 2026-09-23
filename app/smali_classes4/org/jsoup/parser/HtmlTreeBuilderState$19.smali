.class final enum Lorg/jsoup/parser/HtmlTreeBuilderState$19;
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
    const-string v0, "AfterBody"

    .line 2
    .line 3
    const/16 v1, 0x12

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
    const-string v0, "html"

    .line 2
    .line 3
    invoke-virtual {p2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->E(Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-static {p1}, Lorg/jsoup/parser/HtmlTreeBuilderState;->a(Lorg/jsoup/parser/Token;)Z

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    sget-object v3, Lorg/jsoup/parser/HtmlTreeBuilderState;->k:Lorg/jsoup/parser/HtmlTreeBuilderState$7;

    .line 12
    .line 13
    if-eqz v2, :cond_1

    .line 14
    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    check-cast p1, Lorg/jsoup/parser/Token$Character;

    .line 18
    .line 19
    invoke-virtual {p2, p1, v1}, Lorg/jsoup/parser/HtmlTreeBuilder;->L(Lorg/jsoup/parser/Token$Character;Lorg/jsoup/nodes/Element;)V

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    invoke-virtual {v3, p1, p2}, Lorg/jsoup/parser/HtmlTreeBuilderState$7;->d(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/HtmlTreeBuilder;)Z

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_1
    invoke-virtual {p1}, Lorg/jsoup/parser/Token;->a()Z

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    if-eqz v2, :cond_2

    .line 32
    .line 33
    check-cast p1, Lorg/jsoup/parser/Token$Comment;

    .line 34
    .line 35
    invoke-virtual {p2, p1}, Lorg/jsoup/parser/HtmlTreeBuilder;->M(Lorg/jsoup/parser/Token$Comment;)V

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_2
    invoke-virtual {p1}, Lorg/jsoup/parser/Token;->b()Z

    .line 40
    .line 41
    .line 42
    move-result v2

    .line 43
    const/4 v4, 0x0

    .line 44
    if-eqz v2, :cond_3

    .line 45
    .line 46
    invoke-virtual {p2, p0}, Lorg/jsoup/parser/HtmlTreeBuilder;->B(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 47
    .line 48
    .line 49
    return v4

    .line 50
    :cond_3
    invoke-virtual {p1}, Lorg/jsoup/parser/Token;->e()Z

    .line 51
    .line 52
    .line 53
    move-result v2

    .line 54
    if-eqz v2, :cond_4

    .line 55
    .line 56
    move-object v2, p1

    .line 57
    check-cast v2, Lorg/jsoup/parser/Token$StartTag;

    .line 58
    .line 59
    invoke-virtual {v2}, Lorg/jsoup/parser/Token$Tag;->m()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v2

    .line 63
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    move-result v2

    .line 67
    if-eqz v2, :cond_4

    .line 68
    .line 69
    invoke-virtual {v3, p1, p2}, Lorg/jsoup/parser/HtmlTreeBuilderState$7;->d(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/HtmlTreeBuilder;)Z

    .line 70
    .line 71
    .line 72
    move-result p1

    .line 73
    return p1

    .line 74
    :cond_4
    invoke-virtual {p1}, Lorg/jsoup/parser/Token;->d()Z

    .line 75
    .line 76
    .line 77
    move-result v2

    .line 78
    if-eqz v2, :cond_7

    .line 79
    .line 80
    move-object v2, p1

    .line 81
    check-cast v2, Lorg/jsoup/parser/Token$EndTag;

    .line 82
    .line 83
    invoke-virtual {v2}, Lorg/jsoup/parser/Token$Tag;->m()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v2

    .line 87
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 88
    .line 89
    .line 90
    move-result v0

    .line 91
    if-eqz v0, :cond_7

    .line 92
    .line 93
    iget-boolean p1, p2, Lorg/jsoup/parser/HtmlTreeBuilder;->z:Z

    .line 94
    .line 95
    if-eqz p1, :cond_5

    .line 96
    .line 97
    invoke-virtual {p2, p0}, Lorg/jsoup/parser/HtmlTreeBuilder;->B(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 98
    .line 99
    .line 100
    return v4

    .line 101
    :cond_5
    if-eqz v1, :cond_6

    .line 102
    .line 103
    invoke-virtual {p2, v1, v4}, Lorg/jsoup/parser/TreeBuilder;->s(Lorg/jsoup/nodes/Node;Z)V

    .line 104
    .line 105
    .line 106
    :cond_6
    sget-object p1, Lorg/jsoup/parser/HtmlTreeBuilderState;->z:Lorg/jsoup/parser/HtmlTreeBuilderState$22;

    .line 107
    .line 108
    iput-object p1, p2, Lorg/jsoup/parser/HtmlTreeBuilder;->n:Lorg/jsoup/parser/HtmlTreeBuilderState;

    .line 109
    .line 110
    goto :goto_0

    .line 111
    :cond_7
    invoke-virtual {p1}, Lorg/jsoup/parser/Token;->c()Z

    .line 112
    .line 113
    .line 114
    move-result v0

    .line 115
    if-eqz v0, :cond_8

    .line 116
    .line 117
    :goto_0
    const/4 p1, 0x1

    .line 118
    return p1

    .line 119
    :cond_8
    invoke-virtual {p2, p0}, Lorg/jsoup/parser/HtmlTreeBuilder;->B(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    .line 120
    .line 121
    .line 122
    const-string v0, "body"

    .line 123
    .line 124
    invoke-virtual {p2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->S(Ljava/lang/String;)Z

    .line 125
    .line 126
    .line 127
    move-result v0

    .line 128
    if-nez v0, :cond_9

    .line 129
    .line 130
    iget-object v0, p2, Lorg/jsoup/parser/TreeBuilder;->e:Ljava/util/ArrayList;

    .line 131
    .line 132
    iget-object v1, p2, Lorg/jsoup/parser/TreeBuilder;->d:Lorg/jsoup/nodes/Document;

    .line 133
    .line 134
    invoke-virtual {v1}, Lorg/jsoup/nodes/Document;->body()Lorg/jsoup/nodes/Element;

    .line 135
    .line 136
    .line 137
    move-result-object v1

    .line 138
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 139
    .line 140
    .line 141
    :cond_9
    iput-object v3, p2, Lorg/jsoup/parser/HtmlTreeBuilder;->n:Lorg/jsoup/parser/HtmlTreeBuilderState;

    .line 142
    .line 143
    invoke-virtual {p2, p1}, Lorg/jsoup/parser/HtmlTreeBuilder;->m(Lorg/jsoup/parser/Token;)Z

    .line 144
    .line 145
    .line 146
    move-result p1

    .line 147
    return p1
.end method
