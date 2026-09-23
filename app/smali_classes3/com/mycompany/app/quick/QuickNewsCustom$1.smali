.class Lcom/mycompany/app/quick/QuickNewsCustom$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/quick/QuickNewsCustom;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/quick/QuickNewsCustom;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/quick/QuickNewsCustom$1;->c:Lcom/mycompany/app/quick/QuickNewsCustom;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/quick/QuickNewsCustom$1;->c:Lcom/mycompany/app/quick/QuickNewsCustom;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/quick/QuickNews;->d:Ljava/lang/String;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    :try_start_0
    invoke-static {v1}, Lorg/jsoup/Jsoup;->connect(Ljava/lang/String;)Lorg/jsoup/Connection;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-static {}, Lorg/jsoup/parser/Parser;->xmlParser()Lorg/jsoup/parser/Parser;

    .line 11
    .line 12
    .line 13
    move-result-object v3

    .line 14
    invoke-interface {v1, v3}, Lorg/jsoup/Connection;->parser(Lorg/jsoup/parser/Parser;)Lorg/jsoup/Connection;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-interface {v1}, Lorg/jsoup/Connection;->get()Lorg/jsoup/nodes/Document;

    .line 19
    .line 20
    .line 21
    move-result-object v1
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/LinkageError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    goto :goto_0

    .line 23
    :catch_0
    move-object v1, v2

    .line 24
    :goto_0
    if-nez v1, :cond_0

    .line 25
    .line 26
    goto :goto_2

    .line 27
    :cond_0
    :try_start_1
    const-string v3, "item"

    .line 28
    .line 29
    invoke-virtual {v1, v3}, Lorg/jsoup/nodes/Element;->select(Ljava/lang/String;)Lorg/jsoup/select/Elements;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    if-nez v1, :cond_1

    .line 34
    .line 35
    goto :goto_2

    .line 36
    :cond_1
    iget-object v3, v0, Lcom/mycompany/app/quick/QuickNews;->a:Landroid/content/Context;

    .line 37
    .line 38
    invoke-static {v3}, Lcom/mycompany/app/data/DataNews;->a(Landroid/content/Context;)Lcom/mycompany/app/data/DataNews;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    iget-object v3, v3, Lcom/mycompany/app/data/DataNews;->a:Ljava/util/List;

    .line 43
    .line 44
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 45
    .line 46
    .line 47
    move-result v4

    .line 48
    const/4 v5, 0x0

    .line 49
    move-object v6, v2

    .line 50
    :goto_1
    if-ge v5, v4, :cond_5

    .line 51
    .line 52
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v7

    .line 56
    add-int/lit8 v5, v5, 0x1

    .line 57
    .line 58
    check-cast v7, Lorg/jsoup/nodes/Element;

    .line 59
    .line 60
    iget-object v8, v0, Lcom/mycompany/app/quick/QuickNews;->a:Landroid/content/Context;

    .line 61
    .line 62
    if-nez v8, :cond_2

    .line 63
    .line 64
    goto :goto_2

    .line 65
    :cond_2
    invoke-virtual {v0, v7, v3}, Lcom/mycompany/app/quick/QuickNewsCustom;->e(Lorg/jsoup/nodes/Element;Ljava/util/List;)Lcom/mycompany/app/quick/QuickAdapter$QuickItem;

    .line 66
    .line 67
    .line 68
    move-result-object v7

    .line 69
    if-nez v7, :cond_3

    .line 70
    .line 71
    goto :goto_1

    .line 72
    :cond_3
    if-nez v6, :cond_4

    .line 73
    .line 74
    new-instance v6, Ljava/util/ArrayList;

    .line 75
    .line 76
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 77
    .line 78
    .line 79
    :cond_4
    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 80
    .line 81
    .line 82
    goto :goto_1

    .line 83
    :cond_5
    if-eqz v6, :cond_7

    .line 84
    .line 85
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    .line 86
    .line 87
    .line 88
    move-result v1

    .line 89
    if-eqz v1, :cond_6

    .line 90
    .line 91
    goto :goto_2

    .line 92
    :cond_6
    new-instance v1, Lcom/mycompany/app/quick/QuickNews$SortNews;

    .line 93
    .line 94
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 95
    .line 96
    .line 97
    :try_start_2
    invoke-static {v6, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 98
    .line 99
    .line 100
    :catch_1
    move-object v2, v6

    .line 101
    :catch_2
    :cond_7
    :goto_2
    invoke-static {v2}, Lcom/mycompany/app/quick/QuickNews;->a(Ljava/util/List;)Ljava/util/List;

    .line 102
    .line 103
    .line 104
    move-result-object v1

    .line 105
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->f()Lcom/nostra13/universalimageloader/core/ImageLoader;

    .line 106
    .line 107
    .line 108
    move-result-object v2

    .line 109
    invoke-virtual {v2}, Lcom/nostra13/universalimageloader/core/ImageLoader;->m()V

    .line 110
    .line 111
    .line 112
    iget-object v2, v0, Lcom/mycompany/app/quick/QuickNews;->a:Landroid/content/Context;

    .line 113
    .line 114
    invoke-static {v2}, Lcom/mycompany/app/data/DataNews;->a(Landroid/content/Context;)Lcom/mycompany/app/data/DataNews;

    .line 115
    .line 116
    .line 117
    move-result-object v2

    .line 118
    invoke-virtual {v2, v1}, Lcom/mycompany/app/data/DataNews;->b(Ljava/util/List;)J

    .line 119
    .line 120
    .line 121
    iput-object v1, v0, Lcom/mycompany/app/quick/QuickNewsCustom;->j:Ljava/util/List;

    .line 122
    .line 123
    iget-object v0, v0, Lcom/mycompany/app/quick/QuickNews;->c:Landroid/os/Handler;

    .line 124
    .line 125
    if-nez v0, :cond_8

    .line 126
    .line 127
    return-void

    .line 128
    :cond_8
    new-instance v1, Lcom/mycompany/app/quick/QuickNewsCustom$1$1;

    .line 129
    .line 130
    invoke-direct {v1, p0}, Lcom/mycompany/app/quick/QuickNewsCustom$1$1;-><init>(Lcom/mycompany/app/quick/QuickNewsCustom$1;)V

    .line 131
    .line 132
    .line 133
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 134
    .line 135
    .line 136
    return-void
.end method
