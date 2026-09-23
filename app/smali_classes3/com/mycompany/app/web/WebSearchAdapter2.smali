.class public Lcom/mycompany/app/web/WebSearchAdapter2;
.super Landroid/widget/ArrayAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mycompany/app/web/WebSearchAdapter2$SortSearch;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter<",
        "Lcom/mycompany/app/web/WebSearchAdapter$SearchItem;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic B:I


# instance fields
.field public A:Ljava/util/ArrayList;

.field public final c:Landroid/content/Context;

.field public f:Lcom/mycompany/app/web/WebSearchAdapter$WebSearchListener;

.field public final g:I

.field public final h:Z

.field public i:Ljava/util/List;

.field public j:Ljava/util/List;

.field public k:Ljava/util/List;

.field public final l:Z

.field public m:Ljava/lang/String;

.field public n:Ljava/lang/String;

.field public o:Ljava/util/ArrayList;

.field public p:Lcom/mycompany/app/main/MainListLoader;

.field public q:Ljava/net/HttpURLConnection;

.field public r:Z

.field public s:I

.field public t:Z

.field public u:Z

.field public v:Landroid/os/Handler;

.field public w:Ljava/util/concurrent/ExecutorService;

.field public x:Ljava/util/regex/Pattern;

.field public y:I

.field public final z:Landroid/widget/Filter;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;ZILcom/mycompany/app/web/WebSearchAdapter$WebSearchListener;)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, v0, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 3
    .line 4
    .line 5
    new-instance v1, Lcom/mycompany/app/web/WebSearchAdapter2$8;

    .line 6
    .line 7
    invoke-direct {v1, p0}, Lcom/mycompany/app/web/WebSearchAdapter2$8;-><init>(Lcom/mycompany/app/web/WebSearchAdapter2;)V

    .line 8
    .line 9
    .line 10
    iput-object v1, p0, Lcom/mycompany/app/web/WebSearchAdapter2;->z:Landroid/widget/Filter;

    .line 11
    .line 12
    iput-object p1, p0, Lcom/mycompany/app/web/WebSearchAdapter2;->c:Landroid/content/Context;

    .line 13
    .line 14
    iput-object p7, p0, Lcom/mycompany/app/web/WebSearchAdapter2;->f:Lcom/mycompany/app/web/WebSearchAdapter$WebSearchListener;

    .line 15
    .line 16
    iput p6, p0, Lcom/mycompany/app/web/WebSearchAdapter2;->g:I

    .line 17
    .line 18
    iput-object p2, p0, Lcom/mycompany/app/web/WebSearchAdapter2;->i:Ljava/util/List;

    .line 19
    .line 20
    iput-object p3, p0, Lcom/mycompany/app/web/WebSearchAdapter2;->j:Ljava/util/List;

    .line 21
    .line 22
    iput-object p4, p0, Lcom/mycompany/app/web/WebSearchAdapter2;->k:Ljava/util/List;

    .line 23
    .line 24
    iput-boolean p5, p0, Lcom/mycompany/app/web/WebSearchAdapter2;->r:Z

    .line 25
    .line 26
    iput v0, p0, Lcom/mycompany/app/web/WebSearchAdapter2;->s:I

    .line 27
    .line 28
    invoke-static {}, Lcom/mycompany/app/main/MainUtil;->M5()Z

    .line 29
    .line 30
    .line 31
    move-result p2

    .line 32
    iput-boolean p2, p0, Lcom/mycompany/app/web/WebSearchAdapter2;->l:Z

    .line 33
    .line 34
    const/4 p2, 0x1

    .line 35
    const/4 p3, 0x2

    .line 36
    if-ne p6, p3, :cond_1

    .line 37
    .line 38
    :cond_0
    :goto_0
    move p3, v0

    .line 39
    goto :goto_1

    .line 40
    :cond_1
    invoke-static {}, Lcom/mycompany/app/db/book/DbBookRecent;->l()Z

    .line 41
    .line 42
    .line 43
    move-result p4

    .line 44
    if-nez p4, :cond_2

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_2
    sget p4, Lcom/mycompany/app/pref/PrefWeb;->W:I

    .line 48
    .line 49
    and-int/2addr p4, p3

    .line 50
    if-ne p4, p3, :cond_0

    .line 51
    .line 52
    move p3, p2

    .line 53
    :goto_1
    iput-boolean p3, p0, Lcom/mycompany/app/web/WebSearchAdapter2;->h:Z

    .line 54
    .line 55
    new-instance p3, Landroid/os/Handler;

    .line 56
    .line 57
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 58
    .line 59
    .line 60
    move-result-object p4

    .line 61
    invoke-direct {p3, p4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 62
    .line 63
    .line 64
    iput-object p3, p0, Lcom/mycompany/app/web/WebSearchAdapter2;->v:Landroid/os/Handler;

    .line 65
    .line 66
    sget p3, Lcom/mycompany/app/pref/PrefWeb;->V:I

    .line 67
    .line 68
    if-ne p3, p2, :cond_3

    .line 69
    .line 70
    const-string p2, "https://duckduckgo.com/ac/?q="

    .line 71
    .line 72
    iput-object p2, p0, Lcom/mycompany/app/web/WebSearchAdapter2;->m:Ljava/lang/String;

    .line 73
    .line 74
    goto :goto_2

    .line 75
    :cond_3
    new-instance p2, Ljava/lang/StringBuilder;

    .line 76
    .line 77
    const-string p3, "https://suggestqueries.google.com/complete/search?client=chrome&hl="

    .line 78
    .line 79
    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    invoke-static {}, Lcom/mycompany/app/main/MainUtil;->g2()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object p3

    .line 86
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    const-string p3, "&q="

    .line 90
    .line 91
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object p2

    .line 98
    iput-object p2, p0, Lcom/mycompany/app/web/WebSearchAdapter2;->m:Ljava/lang/String;

    .line 99
    .line 100
    :goto_2
    new-instance p2, Lcom/mycompany/app/main/MainListLoader;

    .line 101
    .line 102
    new-instance p3, Lcom/mycompany/app/web/WebSearchAdapter2$1;

    .line 103
    .line 104
    invoke-direct {p3}, Ljava/lang/Object;-><init>()V

    .line 105
    .line 106
    .line 107
    invoke-direct {p2, p1, v0, p3}, Lcom/mycompany/app/main/MainListLoader;-><init>(Landroid/content/Context;ZLcom/mycompany/app/main/MainListLoader$ListLoadListener;)V

    .line 108
    .line 109
    .line 110
    iput-object p2, p0, Lcom/mycompany/app/web/WebSearchAdapter2;->p:Lcom/mycompany/app/main/MainListLoader;

    .line 111
    .line 112
    return-void
.end method

.method public static a(Landroid/view/View;)I
    .locals 1

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    if-nez p0, :cond_1

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_1
    instance-of v0, p0, Lcom/mycompany/app/web/WebSearchAdapter$SearchHolder;

    .line 12
    .line 13
    if-nez v0, :cond_2

    .line 14
    .line 15
    :goto_0
    const/4 p0, 0x0

    .line 16
    goto :goto_1

    .line 17
    :cond_2
    check-cast p0, Lcom/mycompany/app/web/WebSearchAdapter$SearchHolder;

    .line 18
    .line 19
    :goto_1
    if-eqz p0, :cond_4

    .line 20
    .line 21
    iget-object v0, p0, Lcom/mycompany/app/web/WebSearchAdapter$SearchHolder;->u:Lcom/mycompany/app/view/MyFilterRelative;

    .line 22
    .line 23
    if-nez v0, :cond_3

    .line 24
    .line 25
    goto :goto_2

    .line 26
    :cond_3
    iget p0, p0, Lcom/mycompany/app/web/WebSearchAdapter$SearchHolder;->E:I

    .line 27
    .line 28
    return p0

    .line 29
    :cond_4
    :goto_2
    const/4 p0, -0x1

    .line 30
    return p0
.end method

.method public static c(Lcom/mycompany/app/web/WebSearchAdapter2;Ljava/util/List;Ljava/util/ArrayList;Ljava/lang/String;I)V
    .locals 7

    .line 1
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    const/4 v1, 0x0

    .line 11
    move v2, v1

    .line 12
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    .line 14
    .line 15
    move-result v3

    .line 16
    if-eqz v3, :cond_4

    .line 17
    .line 18
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v3

    .line 22
    check-cast v3, Lcom/mycompany/app/web/WebSearchAdapter$SearchItem;

    .line 23
    .line 24
    iget-object v4, v3, Lcom/mycompany/app/web/WebSearchAdapter$SearchItem;->e:Ljava/lang/String;

    .line 25
    .line 26
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 27
    .line 28
    .line 29
    move-result v4

    .line 30
    if-nez v4, :cond_0

    .line 31
    .line 32
    iget-object v4, v3, Lcom/mycompany/app/web/WebSearchAdapter$SearchItem;->f:Ljava/lang/String;

    .line 33
    .line 34
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 35
    .line 36
    .line 37
    move-result v4

    .line 38
    if-eqz v4, :cond_1

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_1
    iget-object v4, v3, Lcom/mycompany/app/web/WebSearchAdapter$SearchItem;->f:Ljava/lang/String;

    .line 42
    .line 43
    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 44
    .line 45
    invoke-virtual {v4, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v4

    .line 49
    iput-object v4, v3, Lcom/mycompany/app/web/WebSearchAdapter$SearchItem;->h:Ljava/lang/String;

    .line 50
    .line 51
    iget-object v4, v3, Lcom/mycompany/app/web/WebSearchAdapter$SearchItem;->e:Ljava/lang/String;

    .line 52
    .line 53
    invoke-virtual {v4, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v4

    .line 57
    iget-object v5, v3, Lcom/mycompany/app/web/WebSearchAdapter$SearchItem;->h:Ljava/lang/String;

    .line 58
    .line 59
    invoke-virtual {v5, p3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 60
    .line 61
    .line 62
    move-result v5

    .line 63
    iget v6, v3, Lcom/mycompany/app/web/WebSearchAdapter$SearchItem;->j:I

    .line 64
    .line 65
    invoke-virtual {v4, p3, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    .line 66
    .line 67
    .line 68
    move-result v4

    .line 69
    const/4 v6, -0x1

    .line 70
    if-ne v4, v6, :cond_2

    .line 71
    .line 72
    iput v5, v3, Lcom/mycompany/app/web/WebSearchAdapter$SearchItem;->c:I

    .line 73
    .line 74
    goto :goto_1

    .line 75
    :cond_2
    if-ne v5, v6, :cond_3

    .line 76
    .line 77
    iput v4, v3, Lcom/mycompany/app/web/WebSearchAdapter$SearchItem;->c:I

    .line 78
    .line 79
    goto :goto_1

    .line 80
    :cond_3
    invoke-static {v5, v4}, Ljava/lang/Math;->min(II)I

    .line 81
    .line 82
    .line 83
    move-result v4

    .line 84
    iput v4, v3, Lcom/mycompany/app/web/WebSearchAdapter$SearchItem;->c:I

    .line 85
    .line 86
    :goto_1
    iget v4, v3, Lcom/mycompany/app/web/WebSearchAdapter$SearchItem;->c:I

    .line 87
    .line 88
    if-eq v4, v6, :cond_0

    .line 89
    .line 90
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 91
    .line 92
    .line 93
    add-int/lit8 v2, v2, 0x1

    .line 94
    .line 95
    const/16 v3, 0x9

    .line 96
    .line 97
    if-le v2, v3, :cond_0

    .line 98
    .line 99
    :cond_4
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 100
    .line 101
    .line 102
    move-result p1

    .line 103
    if-eqz p1, :cond_5

    .line 104
    .line 105
    goto :goto_3

    .line 106
    :cond_5
    new-instance p1, Lcom/mycompany/app/web/WebSearchAdapter2$SortSearch;

    .line 107
    .line 108
    iget-boolean p3, p0, Lcom/mycompany/app/web/WebSearchAdapter2;->r:Z

    .line 109
    .line 110
    invoke-direct {p1, p3}, Lcom/mycompany/app/web/WebSearchAdapter2$SortSearch;-><init>(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 111
    .line 112
    .line 113
    :try_start_1
    invoke-static {v0, p1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 114
    .line 115
    .line 116
    :catch_0
    :try_start_2
    new-instance p1, Lcom/mycompany/app/web/WebSearchAdapter$SearchItem;

    .line 117
    .line 118
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 119
    .line 120
    .line 121
    const/4 p3, 0x1

    .line 122
    iput p3, p1, Lcom/mycompany/app/web/WebSearchAdapter$SearchItem;->b:I

    .line 123
    .line 124
    iget-object p3, p0, Lcom/mycompany/app/web/WebSearchAdapter2;->c:Landroid/content/Context;

    .line 125
    .line 126
    invoke-virtual {p3, p4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object p3

    .line 130
    iput-object p3, p1, Lcom/mycompany/app/web/WebSearchAdapter$SearchItem;->f:Ljava/lang/String;

    .line 131
    .line 132
    iget-boolean p3, p0, Lcom/mycompany/app/web/WebSearchAdapter2;->r:Z

    .line 133
    .line 134
    if-eqz p3, :cond_6

    .line 135
    .line 136
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 137
    .line 138
    .line 139
    goto :goto_2

    .line 140
    :cond_6
    invoke-virtual {v0, v1, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 141
    .line 142
    .line 143
    :goto_2
    iget-boolean p0, p0, Lcom/mycompany/app/web/WebSearchAdapter2;->r:Z

    .line 144
    .line 145
    if-eqz p0, :cond_7

    .line 146
    .line 147
    invoke-virtual {p2, v1, v0}, Ljava/util/ArrayList;->addAll(ILjava/util/Collection;)Z

    .line 148
    .line 149
    .line 150
    goto :goto_3

    .line 151
    :cond_7
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 152
    .line 153
    .line 154
    :catch_1
    :goto_3
    return-void
.end method


# virtual methods
.method public final d(I)Lcom/mycompany/app/web/WebSearchAdapter$SearchItem;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebSearchAdapter2;->o:Ljava/util/ArrayList;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    if-ltz p1, :cond_1

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-lt p1, v0, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/web/WebSearchAdapter2;->o:Ljava/util/ArrayList;

    .line 15
    .line 16
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    check-cast p1, Lcom/mycompany/app/web/WebSearchAdapter$SearchItem;

    .line 21
    .line 22
    return-object p1

    .line 23
    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 24
    return-object p1
.end method

.method public final e()Ljava/util/regex/Pattern;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebSearchAdapter2;->x:Ljava/util/regex/Pattern;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-string v0, "\\p{Punct}"

    .line 6
    .line 7
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iput-object v0, p0, Lcom/mycompany/app/web/WebSearchAdapter2;->x:Ljava/util/regex/Pattern;

    .line 12
    .line 13
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/web/WebSearchAdapter2;->x:Ljava/util/regex/Pattern;

    .line 14
    .line 15
    return-object v0
.end method

.method public final f()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/mycompany/app/web/WebSearchAdapter2;->y:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    goto :goto_0

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/web/WebSearchAdapter2;->o:Ljava/util/ArrayList;

    .line 8
    .line 9
    if-nez v0, :cond_1

    .line 10
    .line 11
    move v0, v1

    .line 12
    goto :goto_0

    .line 13
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    :goto_0
    iput v0, p0, Lcom/mycompany/app/web/WebSearchAdapter2;->y:I

    .line 18
    .line 19
    invoke-virtual {p0, v1}, Lcom/mycompany/app/web/WebSearchAdapter2;->i(Z)V

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Lcom/mycompany/app/web/WebSearchAdapter2;->p:Lcom/mycompany/app/main/MainListLoader;

    .line 23
    .line 24
    const/4 v1, 0x0

    .line 25
    if-eqz v0, :cond_2

    .line 26
    .line 27
    invoke-virtual {v0}, Lcom/mycompany/app/main/MainListLoader;->f()V

    .line 28
    .line 29
    .line 30
    iput-object v1, p0, Lcom/mycompany/app/web/WebSearchAdapter2;->p:Lcom/mycompany/app/main/MainListLoader;

    .line 31
    .line 32
    :cond_2
    iput-object v1, p0, Lcom/mycompany/app/web/WebSearchAdapter2;->f:Lcom/mycompany/app/web/WebSearchAdapter$WebSearchListener;

    .line 33
    .line 34
    iput-object v1, p0, Lcom/mycompany/app/web/WebSearchAdapter2;->i:Ljava/util/List;

    .line 35
    .line 36
    iput-object v1, p0, Lcom/mycompany/app/web/WebSearchAdapter2;->j:Ljava/util/List;

    .line 37
    .line 38
    iput-object v1, p0, Lcom/mycompany/app/web/WebSearchAdapter2;->k:Ljava/util/List;

    .line 39
    .line 40
    iput-object v1, p0, Lcom/mycompany/app/web/WebSearchAdapter2;->m:Ljava/lang/String;

    .line 41
    .line 42
    iput-object v1, p0, Lcom/mycompany/app/web/WebSearchAdapter2;->n:Ljava/lang/String;

    .line 43
    .line 44
    iget-object v0, p0, Lcom/mycompany/app/web/WebSearchAdapter2;->v:Landroid/os/Handler;

    .line 45
    .line 46
    invoke-static {v0}, Lcom/mycompany/app/main/MainUtil;->R6(Landroid/os/Handler;)V

    .line 47
    .line 48
    .line 49
    iput-object v1, p0, Lcom/mycompany/app/web/WebSearchAdapter2;->v:Landroid/os/Handler;

    .line 50
    .line 51
    iput-object v1, p0, Lcom/mycompany/app/web/WebSearchAdapter2;->w:Ljava/util/concurrent/ExecutorService;

    .line 52
    .line 53
    iput-object v1, p0, Lcom/mycompany/app/web/WebSearchAdapter2;->x:Ljava/util/regex/Pattern;

    .line 54
    .line 55
    return-void
.end method

.method public final g(Ljava/lang/Runnable;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebSearchAdapter2;->w:Ljava/util/concurrent/ExecutorService;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isTerminated()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_2

    .line 16
    .line 17
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/web/WebSearchAdapter2;->c:Landroid/content/Context;

    .line 18
    .line 19
    invoke-static {v0}, Lcom/mycompany/app/main/MainApp;->i(Landroid/content/Context;)Ljava/util/concurrent/ExecutorService;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    if-nez v0, :cond_1

    .line 24
    .line 25
    return-void

    .line 26
    :cond_1
    iput-object v0, p0, Lcom/mycompany/app/web/WebSearchAdapter2;->w:Ljava/util/concurrent/ExecutorService;

    .line 27
    .line 28
    :cond_2
    :try_start_0
    invoke-interface {v0, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    .line 30
    .line 31
    :catch_0
    return-void
.end method

.method public final getCount()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/mycompany/app/web/WebSearchAdapter2;->y:I

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return v0

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/web/WebSearchAdapter2;->o:Ljava/util/ArrayList;

    .line 7
    .line 8
    if-nez v0, :cond_1

    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    return v0

    .line 12
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    return v0
.end method

.method public final getFilter()Landroid/widget/Filter;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebSearchAdapter2;->z:Landroid/widget/Filter;

    .line 2
    .line 3
    return-object v0
.end method

.method public final bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/mycompany/app/web/WebSearchAdapter2;->d(I)Lcom/mycompany/app/web/WebSearchAdapter$SearchItem;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 18

    move-object/from16 v0, p0

    move/from16 v1, p1

    const/4 v6, 0x0

    const/4 v7, -0x1

    const/4 v9, 0x1

    const/16 v10, 0x8

    if-nez p2, :cond_4

    .line 1
    iget-object v11, v0, Lcom/mycompany/app/web/WebSearchAdapter2;->c:Landroid/content/Context;

    if-nez v11, :cond_0

    move/from16 v17, v6

    const/4 v2, 0x0

    goto/16 :goto_0

    .line 2
    :cond_0
    new-instance v12, Lcom/mycompany/app/view/MyFilterRelative;

    .line 3
    invoke-direct {v12, v11}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 4
    sget v13, Lcom/mycompany/app/main/MainApp;->h1:I

    invoke-virtual {v12, v13}, Landroid/view/View;->setMinimumHeight(I)V

    .line 5
    new-instance v13, Landroid/view/ViewGroup$LayoutParams;

    const/4 v14, -0x2

    invoke-direct {v13, v7, v14}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v12, v13}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 6
    new-instance v13, Lcom/mycompany/app/view/MyRoundImage;

    invoke-direct {v13, v11}, Lcom/mycompany/app/view/MyRoundImage;-><init>(Landroid/content/Context;)V

    const/high16 v15, 0x41c00000    # 24.0f

    .line 7
    invoke-static {v11, v15}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    move-result v15

    float-to-int v15, v15

    int-to-float v3, v15

    const/high16 v16, 0x40000000    # 2.0f

    div-float v3, v3, v16

    float-to-int v3, v3

    .line 8
    sget-object v4, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v13, v4}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 9
    sget v4, Lcom/mycompany/app/main/MainApp;->G1:I

    invoke-virtual {v13, v4}, Lcom/mycompany/app/view/MyRoundImage;->setRoundRadius(I)V

    int-to-float v4, v3

    .line 10
    invoke-virtual {v13, v4}, Lcom/mycompany/app/view/MyRoundImage;->setCircleRadius(F)V

    .line 11
    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v4, v15, v15}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 12
    sget v15, Lcom/mycompany/app/main/MainApp;->E1:I

    iput v15, v4, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 13
    invoke-virtual {v4, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 14
    invoke-virtual {v12, v13, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 15
    new-instance v3, Landroid/widget/FrameLayout;

    invoke-direct {v3, v11}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 16
    sget v4, Lnet/kaki87/soul2/testing/R$id;->search_item_frame:I

    .line 17
    invoke-virtual {v3, v4}, Landroid/view/View;->setId(I)V

    .line 18
    new-instance v15, Landroid/widget/RelativeLayout$LayoutParams;

    sget v5, Lcom/mycompany/app/main/MainApp;->h1:I

    invoke-direct {v15, v14, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v5, 0x15

    .line 19
    invoke-virtual {v15, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 20
    invoke-virtual {v12, v3, v15}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 21
    new-instance v5, Lcom/mycompany/app/view/MyButtonImage;

    invoke-direct {v5, v11}, Lcom/mycompany/app/view/MyButtonImage;-><init>(Landroid/content/Context;)V

    .line 22
    sget-object v15, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v5, v15}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 23
    invoke-virtual {v5, v10}, Lcom/mycompany/app/view/MyButtonImage;->setVisibility(I)V

    .line 24
    new-instance v10, Landroid/widget/FrameLayout$LayoutParams;

    sget v8, Lcom/mycompany/app/main/MainApp;->g1:I

    sget v7, Lcom/mycompany/app/main/MainApp;->h1:I

    invoke-direct {v10, v8, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const v7, 0x800005

    .line 25
    iput v7, v10, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 26
    sget v8, Lcom/mycompany/app/main/MainApp;->g1:I

    invoke-virtual {v10, v8}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 27
    invoke-virtual {v3, v5, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 28
    invoke-static {v11, v15}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->p(Landroid/content/Context;Landroid/widget/ImageView$ScaleType;)Lcom/mycompany/app/view/MyButtonImage;

    move-result-object v8

    .line 29
    new-instance v10, Landroid/widget/FrameLayout$LayoutParams;

    sget v15, Lcom/mycompany/app/main/MainApp;->g1:I

    sget v14, Lcom/mycompany/app/main/MainApp;->h1:I

    invoke-direct {v10, v15, v14}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 30
    iput v7, v10, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 31
    invoke-virtual {v3, v8, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 32
    new-instance v7, Landroid/widget/LinearLayout;

    invoke-direct {v7, v11}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 33
    sget v10, Lcom/mycompany/app/main/MainApp;->F1:I

    invoke-virtual {v7, v6, v10, v6, v10}, Landroid/view/View;->setPadding(IIII)V

    .line 34
    invoke-virtual {v7, v9}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 35
    new-instance v10, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v14, -0x1

    const/4 v15, -0x2

    invoke-direct {v10, v14, v15}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v14, 0x10

    .line 36
    invoke-virtual {v10, v14, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/16 v4, 0xf

    .line 37
    invoke-virtual {v10, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/high16 v4, 0x42500000    # 52.0f

    .line 38
    invoke-static {v11, v4}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {v10, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 39
    invoke-virtual {v12, v7, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 40
    new-instance v4, Landroidx/appcompat/widget/AppCompatTextView;

    const/4 v10, 0x0

    .line 41
    invoke-direct {v4, v11, v10}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 42
    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setSingleLine(Z)V

    const/high16 v15, 0x41800000    # 16.0f

    .line 43
    invoke-virtual {v4, v9, v15}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    const/4 v15, -0x2

    .line 44
    invoke-virtual {v7, v4, v15, v15}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    move/from16 v17, v6

    .line 45
    new-instance v6, Landroidx/appcompat/widget/AppCompatTextView;

    .line 46
    invoke-direct {v6, v11, v10}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 47
    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setSingleLine(Z)V

    const/high16 v10, 0x41600000    # 14.0f

    .line 48
    invoke-virtual {v6, v9, v10}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 49
    new-instance v10, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v10, v15, v15}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 50
    sget v15, Lcom/mycompany/app/main/MainApp;->G1:I

    iput v15, v10, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 51
    invoke-virtual {v7, v6, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 52
    new-instance v10, Lcom/mycompany/app/view/MyRoundBack;

    .line 53
    invoke-direct {v10, v11}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/16 v15, 0x8

    .line 54
    invoke-virtual {v10, v15}, Landroid/view/View;->setVisibility(I)V

    .line 55
    sget v15, Lcom/mycompany/app/main/MainApp;->h1:I

    const/4 v9, -0x1

    invoke-virtual {v12, v10, v9, v15}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 56
    new-instance v9, Landroidx/appcompat/widget/AppCompatTextView;

    const/4 v15, 0x0

    .line 57
    invoke-direct {v9, v11, v15}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 58
    invoke-virtual {v9, v14}, Landroid/widget/TextView;->setGravity(I)V

    const/4 v14, 0x1

    .line 59
    invoke-virtual {v9, v14}, Landroid/widget/TextView;->setSingleLine(Z)V

    const/high16 v15, 0x41600000    # 14.0f

    .line 60
    invoke-virtual {v9, v14, v15}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    const/16 v15, 0x8

    .line 61
    invoke-virtual {v9, v15}, Landroid/view/View;->setVisibility(I)V

    .line 62
    new-instance v14, Landroid/widget/RelativeLayout$LayoutParams;

    sget v15, Lcom/mycompany/app/main/MainApp;->h1:I

    const/4 v2, -0x2

    invoke-direct {v14, v2, v15}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/high16 v2, 0x41400000    # 12.0f

    .line 63
    invoke-static {v11, v2}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v14, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 64
    invoke-virtual {v12, v9, v14}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 65
    new-instance v2, Lcom/mycompany/app/web/WebSearchAdapter$SearchHolder;

    .line 66
    invoke-direct {v2, v12}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 67
    iput-object v12, v2, Lcom/mycompany/app/web/WebSearchAdapter$SearchHolder;->u:Lcom/mycompany/app/view/MyFilterRelative;

    .line 68
    iput-object v13, v2, Lcom/mycompany/app/web/WebSearchAdapter$SearchHolder;->v:Lcom/mycompany/app/view/MyRoundImage;

    .line 69
    iput-object v7, v2, Lcom/mycompany/app/web/WebSearchAdapter$SearchHolder;->w:Landroid/widget/LinearLayout;

    .line 70
    iput-object v4, v2, Lcom/mycompany/app/web/WebSearchAdapter$SearchHolder;->x:Landroidx/appcompat/widget/AppCompatTextView;

    .line 71
    iput-object v6, v2, Lcom/mycompany/app/web/WebSearchAdapter$SearchHolder;->y:Landroidx/appcompat/widget/AppCompatTextView;

    .line 72
    iput-object v3, v2, Lcom/mycompany/app/web/WebSearchAdapter$SearchHolder;->z:Landroid/widget/FrameLayout;

    .line 73
    iput-object v5, v2, Lcom/mycompany/app/web/WebSearchAdapter$SearchHolder;->A:Lcom/mycompany/app/view/MyButtonImage;

    .line 74
    iput-object v8, v2, Lcom/mycompany/app/web/WebSearchAdapter$SearchHolder;->B:Lcom/mycompany/app/view/MyButtonImage;

    .line 75
    iput-object v10, v2, Lcom/mycompany/app/web/WebSearchAdapter$SearchHolder;->C:Lcom/mycompany/app/view/MyRoundBack;

    .line 76
    iput-object v9, v2, Lcom/mycompany/app/web/WebSearchAdapter$SearchHolder;->D:Landroidx/appcompat/widget/AppCompatTextView;

    .line 77
    invoke-static/range {v17 .. v17}, Lcom/mycompany/app/main/MainUtil;->k5(Z)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 78
    iget-object v3, v2, Lcom/mycompany/app/web/WebSearchAdapter$SearchHolder;->x:Landroidx/appcompat/widget/AppCompatTextView;

    const v4, -0x3e3e3f

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 79
    iget-object v3, v2, Lcom/mycompany/app/web/WebSearchAdapter$SearchHolder;->y:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 80
    :cond_1
    iget-object v3, v2, Lcom/mycompany/app/web/WebSearchAdapter$SearchHolder;->x:Landroidx/appcompat/widget/AppCompatTextView;

    const/high16 v4, -0x1000000

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 81
    iget-object v3, v2, Lcom/mycompany/app/web/WebSearchAdapter$SearchHolder;->y:Landroidx/appcompat/widget/AppCompatTextView;

    const v4, -0x9e9e9f

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_0
    if-nez v2, :cond_2

    return-object p2

    .line 82
    :cond_2
    iget-object v3, v2, Lcom/mycompany/app/web/WebSearchAdapter$SearchHolder;->u:Lcom/mycompany/app/view/MyFilterRelative;

    if-nez v3, :cond_3

    return-object v3

    .line 83
    :cond_3
    invoke-virtual {v3, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_1

    :cond_4
    move/from16 v17, v6

    .line 84
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mycompany/app/web/WebSearchAdapter$SearchHolder;

    if-nez v2, :cond_5

    return-object p2

    :cond_5
    move-object/from16 v3, p2

    .line 85
    :goto_1
    iget-object v4, v2, Lcom/mycompany/app/web/WebSearchAdapter$SearchHolder;->u:Lcom/mycompany/app/view/MyFilterRelative;

    if-nez v4, :cond_6

    goto/16 :goto_16

    .line 86
    :cond_6
    invoke-virtual {v4, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 87
    iput v1, v2, Lcom/mycompany/app/web/WebSearchAdapter$SearchHolder;->E:I

    .line 88
    invoke-virtual/range {p0 .. p1}, Lcom/mycompany/app/web/WebSearchAdapter2;->d(I)Lcom/mycompany/app/web/WebSearchAdapter$SearchItem;

    move-result-object v5

    if-nez v5, :cond_7

    goto/16 :goto_16

    .line 89
    :cond_7
    iget v6, v5, Lcom/mycompany/app/web/WebSearchAdapter$SearchItem;->b:I

    const/4 v7, 0x3

    iget v8, v0, Lcom/mycompany/app/web/WebSearchAdapter2;->g:I

    if-ne v6, v7, :cond_9

    .line 90
    iget-object v5, v2, Lcom/mycompany/app/web/WebSearchAdapter$SearchHolder;->v:Lcom/mycompany/app/view/MyRoundImage;

    const/16 v15, 0x8

    invoke-virtual {v5, v15}, Lcom/mycompany/app/view/MyRoundImage;->setVisibility(I)V

    .line 91
    iget-object v5, v2, Lcom/mycompany/app/web/WebSearchAdapter$SearchHolder;->w:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v15}, Landroid/view/View;->setVisibility(I)V

    .line 92
    iget-object v5, v2, Lcom/mycompany/app/web/WebSearchAdapter$SearchHolder;->z:Landroid/widget/FrameLayout;

    invoke-virtual {v5, v15}, Landroid/view/View;->setVisibility(I)V

    .line 93
    iget-object v5, v2, Lcom/mycompany/app/web/WebSearchAdapter$SearchHolder;->C:Lcom/mycompany/app/view/MyRoundBack;

    invoke-virtual {v5, v15}, Landroid/view/View;->setVisibility(I)V

    .line 94
    iget-object v2, v2, Lcom/mycompany/app/web/WebSearchAdapter$SearchHolder;->D:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v2, v15}, Landroid/view/View;->setVisibility(I)V

    const/4 v15, 0x0

    .line 95
    invoke-virtual {v4, v15}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const/4 v14, 0x1

    if-eq v8, v14, :cond_8

    move/from16 v6, v17

    .line 96
    invoke-virtual {v4, v6}, Lcom/mycompany/app/view/MyFilterRelative;->setFilterColor(I)V

    .line 97
    invoke-virtual {v0, v1, v4}, Lcom/mycompany/app/web/WebSearchAdapter2;->h(ILcom/mycompany/app/view/MyFilterRelative;)V

    .line 98
    :cond_8
    new-instance v1, Lcom/mycompany/app/web/WebSearchAdapter2$5;

    invoke-direct {v1, v0}, Lcom/mycompany/app/web/WebSearchAdapter2$5;-><init>(Lcom/mycompany/app/web/WebSearchAdapter2;)V

    invoke-virtual {v4, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v3

    :cond_9
    move/from16 v6, v17

    .line 99
    invoke-static {v6}, Lcom/mycompany/app/main/MainUtil;->k5(Z)Z

    move-result v9

    .line 100
    iget v10, v5, Lcom/mycompany/app/web/WebSearchAdapter$SearchItem;->b:I

    const v11, -0x70708

    const/4 v14, 0x1

    if-ne v10, v14, :cond_e

    .line 101
    iget-object v10, v2, Lcom/mycompany/app/web/WebSearchAdapter$SearchHolder;->v:Lcom/mycompany/app/view/MyRoundImage;

    const/16 v15, 0x8

    invoke-virtual {v10, v15}, Lcom/mycompany/app/view/MyRoundImage;->setVisibility(I)V

    .line 102
    iget-object v10, v2, Lcom/mycompany/app/web/WebSearchAdapter$SearchHolder;->w:Landroid/widget/LinearLayout;

    invoke-virtual {v10, v15}, Landroid/view/View;->setVisibility(I)V

    .line 103
    iget-object v10, v2, Lcom/mycompany/app/web/WebSearchAdapter$SearchHolder;->z:Landroid/widget/FrameLayout;

    invoke-virtual {v10, v15}, Landroid/view/View;->setVisibility(I)V

    .line 104
    iget-object v10, v2, Lcom/mycompany/app/web/WebSearchAdapter$SearchHolder;->C:Lcom/mycompany/app/view/MyRoundBack;

    invoke-virtual {v10, v6}, Landroid/view/View;->setVisibility(I)V

    .line 105
    iget-object v10, v2, Lcom/mycompany/app/web/WebSearchAdapter$SearchHolder;->D:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v10, v6}, Landroid/view/View;->setVisibility(I)V

    .line 106
    iget-object v6, v2, Lcom/mycompany/app/web/WebSearchAdapter$SearchHolder;->C:Lcom/mycompany/app/view/MyRoundBack;

    new-instance v10, Lcom/mycompany/app/web/WebSearchAdapter2$2;

    .line 107
    invoke-direct {v10}, Ljava/lang/Object;-><init>()V

    .line 108
    invoke-virtual {v6, v10}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 109
    sget v6, Lcom/mycompany/app/main/MainApp;->F1:I

    mul-int/2addr v6, v7

    sget v7, Lcom/mycompany/app/main/MainApp;->G1:I

    add-int/2addr v6, v7

    .line 110
    iget-boolean v7, v0, Lcom/mycompany/app/web/WebSearchAdapter2;->r:Z

    if-eqz v7, :cond_a

    .line 111
    iget-object v7, v2, Lcom/mycompany/app/web/WebSearchAdapter$SearchHolder;->D:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v7}, Landroid/view/View;->getPaddingBottom()I

    move-result v7

    if-eq v7, v6, :cond_b

    .line 112
    iget-object v7, v2, Lcom/mycompany/app/web/WebSearchAdapter$SearchHolder;->D:Landroidx/appcompat/widget/AppCompatTextView;

    const/4 v10, 0x0

    invoke-virtual {v7, v10, v10, v10, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    goto :goto_2

    :cond_a
    const/4 v10, 0x0

    .line 113
    iget-object v7, v2, Lcom/mycompany/app/web/WebSearchAdapter$SearchHolder;->D:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v7}, Landroid/view/View;->getPaddingTop()I

    move-result v7

    if-eq v7, v6, :cond_b

    .line 114
    iget-object v7, v2, Lcom/mycompany/app/web/WebSearchAdapter$SearchHolder;->D:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v7, v10, v6, v10, v10}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 115
    :cond_b
    :goto_2
    iget-object v6, v2, Lcom/mycompany/app/web/WebSearchAdapter$SearchHolder;->D:Landroidx/appcompat/widget/AppCompatTextView;

    iget-object v5, v5, Lcom/mycompany/app/web/WebSearchAdapter$SearchItem;->f:Ljava/lang/String;

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz v9, :cond_c

    .line 116
    iget-object v5, v2, Lcom/mycompany/app/web/WebSearchAdapter$SearchHolder;->C:Lcom/mycompany/app/view/MyRoundBack;

    const v6, -0xdededf

    iget-boolean v7, v0, Lcom/mycompany/app/web/WebSearchAdapter2;->r:Z

    invoke-virtual {v5, v6, v7}, Lcom/mycompany/app/view/MyRoundBack;->a(IZ)V

    .line 117
    iget-object v2, v2, Lcom/mycompany/app/web/WebSearchAdapter$SearchHolder;->D:Landroidx/appcompat/widget/AppCompatTextView;

    const v5, -0x3e3e3f

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v2, -0x1000000

    .line 118
    invoke-virtual {v4, v2}, Landroid/view/View;->setBackgroundColor(I)V

    :goto_3
    const/4 v14, 0x1

    goto :goto_4

    .line 119
    :cond_c
    iget-object v5, v2, Lcom/mycompany/app/web/WebSearchAdapter$SearchHolder;->C:Lcom/mycompany/app/view/MyRoundBack;

    iget-boolean v6, v0, Lcom/mycompany/app/web/WebSearchAdapter2;->r:Z

    const/4 v14, -0x1

    invoke-virtual {v5, v14, v6}, Lcom/mycompany/app/view/MyRoundBack;->a(IZ)V

    .line 120
    iget-object v2, v2, Lcom/mycompany/app/web/WebSearchAdapter$SearchHolder;->D:Landroidx/appcompat/widget/AppCompatTextView;

    const v5, -0x9e9e9f

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 121
    invoke-virtual {v4, v11}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_3

    :goto_4
    if-eq v8, v14, :cond_d

    .line 122
    invoke-static {}, Lcom/mycompany/app/main/MainUtil;->l1()I

    move-result v2

    invoke-virtual {v4, v2}, Lcom/mycompany/app/view/MyFilterRelative;->setFilterColor(I)V

    .line 123
    invoke-virtual {v0, v1, v4}, Lcom/mycompany/app/web/WebSearchAdapter2;->h(ILcom/mycompany/app/view/MyFilterRelative;)V

    .line 124
    :cond_d
    new-instance v1, Lcom/mycompany/app/web/WebSearchAdapter2$5;

    invoke-direct {v1, v0}, Lcom/mycompany/app/web/WebSearchAdapter2$5;-><init>(Lcom/mycompany/app/web/WebSearchAdapter2;)V

    invoke-virtual {v4, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v3

    :cond_e
    const/4 v14, -0x1

    .line 125
    iget-object v6, v2, Lcom/mycompany/app/web/WebSearchAdapter$SearchHolder;->v:Lcom/mycompany/app/view/MyRoundImage;

    invoke-virtual {v6, v9}, Lcom/mycompany/app/view/MyRoundImage;->setDarkColor(Z)V

    .line 126
    iget-object v6, v2, Lcom/mycompany/app/web/WebSearchAdapter$SearchHolder;->v:Lcom/mycompany/app/view/MyRoundImage;

    const/4 v10, 0x0

    invoke-virtual {v6, v10}, Lcom/mycompany/app/view/MyRoundImage;->setVisibility(I)V

    .line 127
    iget-object v6, v2, Lcom/mycompany/app/web/WebSearchAdapter$SearchHolder;->w:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v10}, Landroid/view/View;->setVisibility(I)V

    .line 128
    iget-object v6, v2, Lcom/mycompany/app/web/WebSearchAdapter$SearchHolder;->C:Lcom/mycompany/app/view/MyRoundBack;

    const/16 v15, 0x8

    invoke-virtual {v6, v15}, Landroid/view/View;->setVisibility(I)V

    .line 129
    iget-object v6, v2, Lcom/mycompany/app/web/WebSearchAdapter$SearchHolder;->D:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v6, v15}, Landroid/view/View;->setVisibility(I)V

    .line 130
    iget v6, v5, Lcom/mycompany/app/web/WebSearchAdapter$SearchItem;->b:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_10

    .line 131
    iget-object v5, v2, Lcom/mycompany/app/web/WebSearchAdapter$SearchHolder;->z:Landroid/widget/FrameLayout;

    invoke-virtual {v5, v15}, Landroid/view/View;->setVisibility(I)V

    if-eqz v9, :cond_f

    .line 132
    iget-object v5, v2, Lcom/mycompany/app/web/WebSearchAdapter$SearchHolder;->v:Lcom/mycompany/app/view/MyRoundImage;

    sget v6, Lnet/kaki87/soul2/testing/R$drawable;->outline_find_in_page_dark_24:I

    invoke-virtual {v5, v6}, Lcom/mycompany/app/view/MyRoundImage;->setImageResource(I)V

    goto :goto_5

    .line 133
    :cond_f
    iget-object v5, v2, Lcom/mycompany/app/web/WebSearchAdapter$SearchHolder;->v:Lcom/mycompany/app/view/MyRoundImage;

    sget v6, Lnet/kaki87/soul2/testing/R$drawable;->outline_find_in_page_black_24:I

    invoke-virtual {v5, v6}, Lcom/mycompany/app/view/MyRoundImage;->setImageResource(I)V

    .line 134
    :goto_5
    iget-object v5, v2, Lcom/mycompany/app/web/WebSearchAdapter$SearchHolder;->x:Landroidx/appcompat/widget/AppCompatTextView;

    const/4 v14, 0x1

    invoke-virtual {v5, v14}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 135
    iget-object v5, v2, Lcom/mycompany/app/web/WebSearchAdapter$SearchHolder;->x:Landroidx/appcompat/widget/AppCompatTextView;

    sget v6, Lnet/kaki87/soul2/testing/R$string;->find_word:I

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    .line 136
    iget-object v2, v2, Lcom/mycompany/app/web/WebSearchAdapter$SearchHolder;->y:Landroidx/appcompat/widget/AppCompatTextView;

    const/16 v15, 0x8

    invoke-virtual {v2, v15}, Landroid/view/View;->setVisibility(I)V

    .line 137
    new-instance v2, Lcom/mycompany/app/web/WebSearchAdapter2$5;

    invoke-direct {v2, v0}, Lcom/mycompany/app/web/WebSearchAdapter2$5;-><init>(Lcom/mycompany/app/web/WebSearchAdapter2;)V

    invoke-virtual {v4, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_12

    .line 138
    :cond_10
    iget-object v6, v2, Lcom/mycompany/app/web/WebSearchAdapter$SearchHolder;->z:Landroid/widget/FrameLayout;

    const/4 v10, 0x0

    invoke-virtual {v6, v10}, Landroid/view/View;->setVisibility(I)V

    .line 139
    iget-object v6, v5, Lcom/mycompany/app/web/WebSearchAdapter$SearchItem;->e:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    .line 140
    iget-object v12, v0, Lcom/mycompany/app/web/WebSearchAdapter2;->n:Ljava/lang/String;

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v6, :cond_11

    .line 141
    iget-object v7, v2, Lcom/mycompany/app/web/WebSearchAdapter$SearchHolder;->x:Landroidx/appcompat/widget/AppCompatTextView;

    const/4 v13, 0x1

    invoke-virtual {v7, v13}, Landroid/widget/TextView;->setSingleLine(Z)V

    goto :goto_6

    .line 142
    :cond_11
    iget-object v13, v2, Lcom/mycompany/app/web/WebSearchAdapter$SearchHolder;->x:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v13, v10}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 143
    iget-object v10, v2, Lcom/mycompany/app/web/WebSearchAdapter$SearchHolder;->x:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v10, v7}, Landroid/widget/TextView;->setMaxLines(I)V

    :goto_6
    if-nez v12, :cond_14

    .line 144
    iget-object v7, v5, Lcom/mycompany/app/web/WebSearchAdapter$SearchItem;->i:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_12

    .line 145
    iget-object v7, v5, Lcom/mycompany/app/web/WebSearchAdapter$SearchItem;->i:Ljava/lang/String;

    :goto_7
    move-object v10, v7

    goto :goto_8

    .line 146
    :cond_12
    iget-object v7, v0, Lcom/mycompany/app/web/WebSearchAdapter2;->n:Ljava/lang/String;

    goto :goto_7

    :goto_8
    if-eqz v9, :cond_13

    move v7, v14

    goto :goto_9

    :cond_13
    const v7, -0xe19938

    .line 147
    :goto_9
    iget-object v13, v2, Lcom/mycompany/app/web/WebSearchAdapter$SearchHolder;->x:Landroidx/appcompat/widget/AppCompatTextView;

    iget-object v14, v5, Lcom/mycompany/app/web/WebSearchAdapter$SearchItem;->f:Ljava/lang/String;

    const/4 v15, 0x0

    invoke-static {v14, v7, v15, v10}, Lcom/mycompany/app/main/MainUtil;->t6(Ljava/lang/String;IILjava/lang/String;)Landroid/text/SpannableString;

    move-result-object v14

    sget-object v15, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {v13, v14, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    goto :goto_a

    .line 148
    :cond_14
    iget-object v7, v2, Lcom/mycompany/app/web/WebSearchAdapter$SearchHolder;->x:Landroidx/appcompat/widget/AppCompatTextView;

    iget-object v10, v5, Lcom/mycompany/app/web/WebSearchAdapter$SearchItem;->f:Ljava/lang/String;

    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v7, 0x0

    const/4 v10, 0x0

    :goto_a
    if-nez v6, :cond_16

    if-nez v12, :cond_15

    .line 149
    iget-object v6, v2, Lcom/mycompany/app/web/WebSearchAdapter$SearchHolder;->y:Landroidx/appcompat/widget/AppCompatTextView;

    iget-object v12, v5, Lcom/mycompany/app/web/WebSearchAdapter$SearchItem;->e:Ljava/lang/String;

    iget v13, v5, Lcom/mycompany/app/web/WebSearchAdapter$SearchItem;->j:I

    invoke-static {v12, v7, v13, v10}, Lcom/mycompany/app/main/MainUtil;->t6(Ljava/lang/String;IILjava/lang/String;)Landroid/text/SpannableString;

    move-result-object v7

    sget-object v10, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {v6, v7, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    goto :goto_b

    .line 150
    :cond_15
    iget-object v6, v2, Lcom/mycompany/app/web/WebSearchAdapter$SearchHolder;->y:Landroidx/appcompat/widget/AppCompatTextView;

    iget-object v7, v5, Lcom/mycompany/app/web/WebSearchAdapter$SearchItem;->e:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 151
    :goto_b
    iget-object v6, v2, Lcom/mycompany/app/web/WebSearchAdapter$SearchHolder;->y:Landroidx/appcompat/widget/AppCompatTextView;

    const/4 v10, 0x0

    invoke-virtual {v6, v10}, Landroid/view/View;->setVisibility(I)V

    goto :goto_c

    .line 152
    :cond_16
    iget-object v6, v2, Lcom/mycompany/app/web/WebSearchAdapter$SearchHolder;->y:Landroidx/appcompat/widget/AppCompatTextView;

    const/16 v15, 0x8

    invoke-virtual {v6, v15}, Landroid/view/View;->setVisibility(I)V

    .line 153
    :goto_c
    iget v6, v5, Lcom/mycompany/app/web/WebSearchAdapter$SearchItem;->a:I

    const/16 v7, 0x26

    const v10, -0x1f1f20

    const v12, -0xc0c0c1

    if-ne v6, v7, :cond_18

    if-eqz v9, :cond_17

    .line 154
    iget-object v6, v2, Lcom/mycompany/app/web/WebSearchAdapter$SearchHolder;->A:Lcom/mycompany/app/view/MyButtonImage;

    sget v13, Lnet/kaki87/soul2/testing/R$drawable;->outline_close_dark_18:I

    invoke-virtual {v6, v13}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 155
    iget-object v6, v2, Lcom/mycompany/app/web/WebSearchAdapter$SearchHolder;->A:Lcom/mycompany/app/view/MyButtonImage;

    invoke-virtual {v6, v12}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    goto :goto_d

    .line 156
    :cond_17
    iget-object v6, v2, Lcom/mycompany/app/web/WebSearchAdapter$SearchHolder;->A:Lcom/mycompany/app/view/MyButtonImage;

    sget v13, Lnet/kaki87/soul2/testing/R$drawable;->outline_close_black_18:I

    invoke-virtual {v6, v13}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 157
    iget-object v6, v2, Lcom/mycompany/app/web/WebSearchAdapter$SearchHolder;->A:Lcom/mycompany/app/view/MyButtonImage;

    invoke-virtual {v6, v10}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 158
    :goto_d
    iget-object v6, v2, Lcom/mycompany/app/web/WebSearchAdapter$SearchHolder;->A:Lcom/mycompany/app/view/MyButtonImage;

    const/4 v15, 0x0

    invoke-virtual {v6, v15}, Lcom/mycompany/app/view/MyButtonImage;->setVisibility(I)V

    .line 159
    iget-object v6, v2, Lcom/mycompany/app/web/WebSearchAdapter$SearchHolder;->A:Lcom/mycompany/app/view/MyButtonImage;

    invoke-virtual {v6, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 160
    iget-object v6, v2, Lcom/mycompany/app/web/WebSearchAdapter$SearchHolder;->A:Lcom/mycompany/app/view/MyButtonImage;

    new-instance v13, Lcom/mycompany/app/web/WebSearchAdapter2$3;

    invoke-direct {v13, v0}, Lcom/mycompany/app/web/WebSearchAdapter2$3;-><init>(Lcom/mycompany/app/web/WebSearchAdapter2;)V

    invoke-virtual {v6, v13}, Lcom/mycompany/app/view/MyButtonImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_e

    .line 161
    :cond_18
    iget-object v6, v2, Lcom/mycompany/app/web/WebSearchAdapter$SearchHolder;->A:Lcom/mycompany/app/view/MyButtonImage;

    const/16 v15, 0x8

    invoke-virtual {v6, v15}, Lcom/mycompany/app/view/MyButtonImage;->setVisibility(I)V

    .line 162
    :goto_e
    iget-boolean v6, v0, Lcom/mycompany/app/web/WebSearchAdapter2;->r:Z

    if-eqz v6, :cond_1a

    if-eqz v9, :cond_19

    .line 163
    iget-object v6, v2, Lcom/mycompany/app/web/WebSearchAdapter$SearchHolder;->B:Lcom/mycompany/app/view/MyButtonImage;

    sget v10, Lnet/kaki87/soul2/testing/R$drawable;->outline_south_west_dark_20:I

    invoke-virtual {v6, v10}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 164
    iget-object v6, v2, Lcom/mycompany/app/web/WebSearchAdapter$SearchHolder;->B:Lcom/mycompany/app/view/MyButtonImage;

    invoke-virtual {v6, v12}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    goto :goto_f

    .line 165
    :cond_19
    iget-object v6, v2, Lcom/mycompany/app/web/WebSearchAdapter$SearchHolder;->B:Lcom/mycompany/app/view/MyButtonImage;

    sget v12, Lnet/kaki87/soul2/testing/R$drawable;->outline_south_west_black_20:I

    invoke-virtual {v6, v12}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 166
    iget-object v6, v2, Lcom/mycompany/app/web/WebSearchAdapter$SearchHolder;->B:Lcom/mycompany/app/view/MyButtonImage;

    invoke-virtual {v6, v10}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    goto :goto_f

    :cond_1a
    if-eqz v9, :cond_1b

    .line 167
    iget-object v6, v2, Lcom/mycompany/app/web/WebSearchAdapter$SearchHolder;->B:Lcom/mycompany/app/view/MyButtonImage;

    sget v10, Lnet/kaki87/soul2/testing/R$drawable;->outline_north_west_dark_20:I

    invoke-virtual {v6, v10}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 168
    iget-object v6, v2, Lcom/mycompany/app/web/WebSearchAdapter$SearchHolder;->B:Lcom/mycompany/app/view/MyButtonImage;

    invoke-virtual {v6, v12}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    goto :goto_f

    .line 169
    :cond_1b
    iget-object v6, v2, Lcom/mycompany/app/web/WebSearchAdapter$SearchHolder;->B:Lcom/mycompany/app/view/MyButtonImage;

    sget v12, Lnet/kaki87/soul2/testing/R$drawable;->outline_north_west_black_20:I

    invoke-virtual {v6, v12}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 170
    iget-object v6, v2, Lcom/mycompany/app/web/WebSearchAdapter$SearchHolder;->B:Lcom/mycompany/app/view/MyButtonImage;

    invoke-virtual {v6, v10}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 171
    :goto_f
    iget-object v6, v2, Lcom/mycompany/app/web/WebSearchAdapter$SearchHolder;->B:Lcom/mycompany/app/view/MyButtonImage;

    invoke-virtual {v6, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 172
    iget-object v6, v2, Lcom/mycompany/app/web/WebSearchAdapter$SearchHolder;->B:Lcom/mycompany/app/view/MyButtonImage;

    new-instance v10, Lcom/mycompany/app/web/WebSearchAdapter2$4;

    invoke-direct {v10, v0}, Lcom/mycompany/app/web/WebSearchAdapter2$4;-><init>(Lcom/mycompany/app/web/WebSearchAdapter2;)V

    invoke-virtual {v6, v10}, Lcom/mycompany/app/view/MyButtonImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 173
    iget-object v2, v2, Lcom/mycompany/app/web/WebSearchAdapter$SearchHolder;->v:Lcom/mycompany/app/view/MyRoundImage;

    if-eqz v2, :cond_27

    .line 174
    iget-object v6, v0, Lcom/mycompany/app/web/WebSearchAdapter2;->p:Lcom/mycompany/app/main/MainListLoader;

    if-nez v6, :cond_1c

    goto/16 :goto_11

    :cond_1c
    const/16 v17, 0x0

    .line 175
    invoke-static/range {v17 .. v17}, Lcom/mycompany/app/main/MainUtil;->k5(Z)Z

    move-result v6

    .line 176
    iget v10, v5, Lcom/mycompany/app/web/WebSearchAdapter$SearchItem;->a:I

    if-ne v10, v7, :cond_1e

    if-eqz v6, :cond_1d

    .line 177
    sget v5, Lnet/kaki87/soul2/testing/R$drawable;->outline_history_dark_24:I

    invoke-virtual {v2, v5}, Lcom/mycompany/app/view/MyRoundImage;->setImageResource(I)V

    goto/16 :goto_11

    .line 178
    :cond_1d
    sget v5, Lnet/kaki87/soul2/testing/R$drawable;->outline_history_black_24:I

    invoke-virtual {v2, v5}, Lcom/mycompany/app/view/MyRoundImage;->setImageResource(I)V

    goto/16 :goto_11

    :cond_1e
    if-nez v10, :cond_20

    if-eqz v6, :cond_1f

    .line 179
    sget v5, Lnet/kaki87/soul2/testing/R$drawable;->outline_search_dark_24:I

    invoke-virtual {v2, v5}, Lcom/mycompany/app/view/MyRoundImage;->setImageResource(I)V

    goto/16 :goto_11

    .line 180
    :cond_1f
    sget v5, Lnet/kaki87/soul2/testing/R$drawable;->outline_search_black_24:I

    invoke-virtual {v2, v5}, Lcom/mycompany/app/view/MyRoundImage;->setImageResource(I)V

    goto/16 :goto_11

    .line 181
    :cond_20
    iget-object v7, v5, Lcom/mycompany/app/web/WebSearchAdapter$SearchItem;->e:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_22

    if-eqz v6, :cond_21

    .line 182
    sget v5, Lnet/kaki87/soul2/testing/R$drawable;->outline_public_dark_24:I

    invoke-virtual {v2, v5}, Lcom/mycompany/app/view/MyRoundImage;->setImageResource(I)V

    goto/16 :goto_11

    .line 183
    :cond_21
    sget v5, Lnet/kaki87/soul2/testing/R$drawable;->outline_public_black_24:I

    invoke-virtual {v2, v5}, Lcom/mycompany/app/view/MyRoundImage;->setImageResource(I)V

    goto/16 :goto_11

    .line 184
    :cond_22
    iget v7, v5, Lcom/mycompany/app/web/WebSearchAdapter$SearchItem;->a:I

    const/16 v10, 0x21

    if-ne v7, v10, :cond_24

    iget v10, v5, Lcom/mycompany/app/web/WebSearchAdapter$SearchItem;->g:I

    if-eqz v10, :cond_24

    if-eq v10, v11, :cond_24

    if-eqz v6, :cond_23

    .line 185
    sget v6, Lnet/kaki87/soul2/testing/R$drawable;->outline_public_dark_24:I

    iget-object v5, v5, Lcom/mycompany/app/web/WebSearchAdapter$SearchItem;->f:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/mycompany/app/web/WebSearchAdapter2;->e()Ljava/util/regex/Pattern;

    move-result-object v7

    invoke-virtual {v2, v10, v6, v5, v7}, Lcom/mycompany/app/view/MyRoundImage;->z(IILjava/lang/String;Ljava/util/regex/Pattern;)V

    goto :goto_11

    .line 186
    :cond_23
    sget v6, Lnet/kaki87/soul2/testing/R$drawable;->outline_public_black_24:I

    iget-object v5, v5, Lcom/mycompany/app/web/WebSearchAdapter$SearchItem;->f:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/mycompany/app/web/WebSearchAdapter2;->e()Ljava/util/regex/Pattern;

    move-result-object v7

    invoke-virtual {v2, v10, v6, v5, v7}, Lcom/mycompany/app/view/MyRoundImage;->z(IILjava/lang/String;Ljava/util/regex/Pattern;)V

    goto :goto_11

    .line 187
    :cond_24
    new-instance v10, Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 188
    invoke-direct {v10}, Ljava/lang/Object;-><init>()V

    .line 189
    iput v7, v10, Lcom/mycompany/app/main/MainItem$ChildItem;->a:I

    const/16 v7, 0xb

    .line 190
    iput v7, v10, Lcom/mycompany/app/main/MainItem$ChildItem;->c:I

    .line 191
    iget-object v7, v5, Lcom/mycompany/app/web/WebSearchAdapter$SearchItem;->e:Ljava/lang/String;

    iput-object v7, v10, Lcom/mycompany/app/main/MainItem$ChildItem;->g:Ljava/lang/String;

    .line 192
    iget-object v11, v5, Lcom/mycompany/app/web/WebSearchAdapter$SearchItem;->f:Ljava/lang/String;

    iput-object v11, v10, Lcom/mycompany/app/main/MainItem$ChildItem;->h:Ljava/lang/String;

    .line 193
    iput-object v7, v10, Lcom/mycompany/app/main/MainItem$ChildItem;->z:Ljava/lang/String;

    .line 194
    iget-wide v11, v5, Lcom/mycompany/app/web/WebSearchAdapter$SearchItem;->d:J

    iput-wide v11, v10, Lcom/mycompany/app/main/MainItem$ChildItem;->y:J

    .line 195
    iput v1, v10, Lcom/mycompany/app/main/MainItem$ChildItem;->J:I

    .line 196
    invoke-static {v10}, Lcom/mycompany/app/main/MainListLoader;->b(Lcom/mycompany/app/main/MainItem$ChildItem;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 197
    invoke-static {v7}, Lcom/mycompany/app/main/MainUtil;->f6(Landroid/graphics/Bitmap;)Z

    move-result v11

    if-eqz v11, :cond_25

    .line 198
    invoke-virtual {v2, v7}, Lcom/mycompany/app/view/MyRoundImage;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_11

    :cond_25
    if-eqz v6, :cond_26

    .line 199
    sget v6, Lnet/kaki87/soul2/testing/R$drawable;->outline_public_dark_24:I

    iget-object v5, v5, Lcom/mycompany/app/web/WebSearchAdapter$SearchItem;->f:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/mycompany/app/web/WebSearchAdapter2;->e()Ljava/util/regex/Pattern;

    move-result-object v7

    const/4 v15, 0x0

    invoke-virtual {v2, v15, v6, v5, v7}, Lcom/mycompany/app/view/MyRoundImage;->z(IILjava/lang/String;Ljava/util/regex/Pattern;)V

    goto :goto_10

    :cond_26
    const/4 v15, 0x0

    .line 200
    sget v6, Lnet/kaki87/soul2/testing/R$drawable;->outline_public_black_24:I

    iget-object v5, v5, Lcom/mycompany/app/web/WebSearchAdapter$SearchItem;->f:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/mycompany/app/web/WebSearchAdapter2;->e()Ljava/util/regex/Pattern;

    move-result-object v7

    invoke-virtual {v2, v15, v6, v5, v7}, Lcom/mycompany/app/view/MyRoundImage;->z(IILjava/lang/String;Ljava/util/regex/Pattern;)V

    .line 201
    :goto_10
    iget-object v2, v0, Lcom/mycompany/app/web/WebSearchAdapter2;->p:Lcom/mycompany/app/main/MainListLoader;

    invoke-virtual {v2, v10, v4}, Lcom/mycompany/app/main/MainListLoader;->e(Lcom/mycompany/app/main/MainItem$ChildItem;Landroid/view/View;)V

    .line 202
    :cond_27
    :goto_11
    new-instance v2, Lcom/mycompany/app/web/WebSearchAdapter2$5;

    invoke-direct {v2, v0}, Lcom/mycompany/app/web/WebSearchAdapter2$5;-><init>(Lcom/mycompany/app/web/WebSearchAdapter2;)V

    invoke-virtual {v4, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 203
    new-instance v2, Lcom/mycompany/app/web/WebSearchAdapter2$6;

    invoke-direct {v2, v0}, Lcom/mycompany/app/web/WebSearchAdapter2$6;-><init>(Lcom/mycompany/app/web/WebSearchAdapter2;)V

    invoke-virtual {v4, v2}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 204
    :goto_12
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x1d

    if-lt v2, v5, :cond_29

    if-eqz p3, :cond_29

    if-eqz v9, :cond_28

    .line 205
    iget-boolean v2, v0, Lcom/mycompany/app/web/WebSearchAdapter2;->t:Z

    if-nez v2, :cond_29

    const/4 v14, 0x1

    .line 206
    iput-boolean v14, v0, Lcom/mycompany/app/web/WebSearchAdapter2;->t:Z

    .line 207
    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    const v5, -0x909091

    invoke-direct {v2, v5}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    move-object/from16 v5, p3

    invoke-virtual {v5, v2}, Landroid/view/ViewGroup;->setVerticalScrollbarThumbDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_13

    :cond_28
    move-object/from16 v5, p3

    .line 208
    iget-boolean v2, v0, Lcom/mycompany/app/web/WebSearchAdapter2;->t:Z

    if-eqz v2, :cond_29

    const/4 v10, 0x0

    .line 209
    iput-boolean v10, v0, Lcom/mycompany/app/web/WebSearchAdapter2;->t:Z

    const/4 v15, 0x0

    .line 210
    invoke-virtual {v5, v15}, Landroid/view/ViewGroup;->setVerticalScrollbarThumbDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_29
    :goto_13
    if-eqz v9, :cond_2a

    .line 211
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->selector_list_back_dark:I

    invoke-virtual {v4, v2}, Landroid/view/View;->setBackgroundResource(I)V

    :goto_14
    const/4 v14, 0x1

    goto :goto_15

    .line 212
    :cond_2a
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->selector_list_back:I

    invoke-virtual {v4, v2}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_14

    :goto_15
    if-eq v8, v14, :cond_2b

    .line 213
    invoke-static {}, Lcom/mycompany/app/main/MainUtil;->l1()I

    move-result v2

    invoke-virtual {v4, v2}, Lcom/mycompany/app/view/MyFilterRelative;->setFilterColor(I)V

    .line 214
    invoke-virtual {v0, v1, v4}, Lcom/mycompany/app/web/WebSearchAdapter2;->h(ILcom/mycompany/app/view/MyFilterRelative;)V

    :cond_2b
    :goto_16
    return-object v3
.end method

.method public final h(ILcom/mycompany/app/view/MyFilterRelative;)V
    .locals 4

    .line 1
    if-nez p2, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    iget-boolean v0, p0, Lcom/mycompany/app/web/WebSearchAdapter2;->r:Z

    .line 5
    .line 6
    const/4 v1, 0x1

    .line 7
    const/4 v2, 0x0

    .line 8
    if-eqz v0, :cond_2

    .line 9
    .line 10
    iget v0, p0, Lcom/mycompany/app/web/WebSearchAdapter2;->s:I

    .line 11
    .line 12
    if-ne p1, v0, :cond_1

    .line 13
    .line 14
    move p1, v1

    .line 15
    goto :goto_0

    .line 16
    :cond_1
    move p1, v2

    .line 17
    :goto_0
    move v0, v2

    .line 18
    goto :goto_3

    .line 19
    :cond_2
    iget v0, p0, Lcom/mycompany/app/web/WebSearchAdapter2;->y:I

    .line 20
    .line 21
    if-eqz v0, :cond_3

    .line 22
    .line 23
    goto :goto_1

    .line 24
    :cond_3
    iget-object v0, p0, Lcom/mycompany/app/web/WebSearchAdapter2;->o:Ljava/util/ArrayList;

    .line 25
    .line 26
    if-nez v0, :cond_4

    .line 27
    .line 28
    move v0, v2

    .line 29
    goto :goto_1

    .line 30
    :cond_4
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    :goto_1
    sub-int/2addr v0, v1

    .line 35
    iget v3, p0, Lcom/mycompany/app/web/WebSearchAdapter2;->s:I

    .line 36
    .line 37
    sub-int/2addr v0, v3

    .line 38
    if-ne p1, v0, :cond_5

    .line 39
    .line 40
    move p1, v1

    .line 41
    goto :goto_2

    .line 42
    :cond_5
    move p1, v2

    .line 43
    :goto_2
    move v0, p1

    .line 44
    move p1, v2

    .line 45
    :goto_3
    if-nez p1, :cond_6

    .line 46
    .line 47
    if-nez v0, :cond_6

    .line 48
    .line 49
    invoke-virtual {p2, v2}, Landroid/view/View;->setClipToOutline(Z)V

    .line 50
    .line 51
    .line 52
    return-void

    .line 53
    :cond_6
    new-instance v2, Lcom/mycompany/app/web/WebSearchAdapter2$7;

    .line 54
    .line 55
    invoke-direct {v2, p1, v0}, Lcom/mycompany/app/web/WebSearchAdapter2$7;-><init>(ZZ)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {p2, v2}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {p2, v1}, Landroid/view/View;->setClipToOutline(Z)V

    .line 62
    .line 63
    .line 64
    return-void
.end method

.method public final i(Z)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_0

    .line 3
    .line 4
    iget-object p1, p0, Lcom/mycompany/app/web/WebSearchAdapter2;->q:Ljava/net/HttpURLConnection;

    .line 5
    .line 6
    if-eqz p1, :cond_1

    .line 7
    .line 8
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lcom/mycompany/app/web/WebSearchAdapter2;->q:Ljava/net/HttpURLConnection;

    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    iget-object p1, p0, Lcom/mycompany/app/web/WebSearchAdapter2;->q:Ljava/net/HttpURLConnection;

    .line 15
    .line 16
    iput-object v0, p0, Lcom/mycompany/app/web/WebSearchAdapter2;->q:Ljava/net/HttpURLConnection;

    .line 17
    .line 18
    if-nez p1, :cond_2

    .line 19
    .line 20
    :cond_1
    return-void

    .line 21
    :cond_2
    new-instance v0, Lcom/mycompany/app/web/WebSearchAdapter2$10;

    .line 22
    .line 23
    invoke-direct {v0, p1}, Lcom/mycompany/app/web/WebSearchAdapter2$10;-><init>(Ljava/net/HttpURLConnection;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0, v0}, Lcom/mycompany/app/web/WebSearchAdapter2;->g(Ljava/lang/Runnable;)V

    .line 27
    .line 28
    .line 29
    return-void
.end method
