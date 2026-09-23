.class public Lcom/mycompany/app/web/WebSearchAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mycompany/app/web/WebSearchAdapter$WebSearchListener;,
        Lcom/mycompany/app/web/WebSearchAdapter$SearchItem;,
        Lcom/mycompany/app/web/WebSearchAdapter$SearchHolder;,
        Lcom/mycompany/app/web/WebSearchAdapter$SortSearch;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/mycompany/app/web/WebSearchAdapter$SearchHolder;",
        ">;"
    }
.end annotation


# instance fields
.field public A:I

.field public final d:Lcom/mycompany/app/web/WebViewActivity;

.field public e:Lcom/mycompany/app/web/WebSearchAdapter$WebSearchListener;

.field public final f:Z

.field public g:Ljava/util/List;

.field public h:Ljava/util/List;

.field public i:Ljava/util/List;

.field public final j:Z

.field public k:Ljava/lang/String;

.field public l:Ljava/lang/String;

.field public m:Ljava/util/ArrayList;

.field public n:Lcom/mycompany/app/main/MainListLoader;

.field public o:Ljava/net/HttpURLConnection;

.field public final p:Z

.field public final q:Z

.field public final r:I

.field public s:Z

.field public t:Landroid/os/Handler;

.field public u:Ljava/util/concurrent/ExecutorService;

.field public v:Ljava/util/regex/Pattern;

.field public w:Lcom/mycompany/app/view/MyRecyclerView;

.field public x:I

.field public final y:Landroid/widget/Filter;

.field public z:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/web/WebViewActivity;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;ZZLcom/mycompany/app/web/WebSearchAdapter$WebSearchListener;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/mycompany/app/web/WebSearchAdapter$8;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Lcom/mycompany/app/web/WebSearchAdapter$8;-><init>(Lcom/mycompany/app/web/WebSearchAdapter;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/mycompany/app/web/WebSearchAdapter;->y:Landroid/widget/Filter;

    .line 10
    .line 11
    iput-object p1, p0, Lcom/mycompany/app/web/WebSearchAdapter;->d:Lcom/mycompany/app/web/WebViewActivity;

    .line 12
    .line 13
    iput-object p7, p0, Lcom/mycompany/app/web/WebSearchAdapter;->e:Lcom/mycompany/app/web/WebSearchAdapter$WebSearchListener;

    .line 14
    .line 15
    iput-object p2, p0, Lcom/mycompany/app/web/WebSearchAdapter;->g:Ljava/util/List;

    .line 16
    .line 17
    iput-object p3, p0, Lcom/mycompany/app/web/WebSearchAdapter;->h:Ljava/util/List;

    .line 18
    .line 19
    iput-object p4, p0, Lcom/mycompany/app/web/WebSearchAdapter;->i:Ljava/util/List;

    .line 20
    .line 21
    iput-boolean p5, p0, Lcom/mycompany/app/web/WebSearchAdapter;->p:Z

    .line 22
    .line 23
    iput-boolean p6, p0, Lcom/mycompany/app/web/WebSearchAdapter;->q:Z

    .line 24
    .line 25
    const/4 p2, 0x1

    .line 26
    iput p2, p0, Lcom/mycompany/app/web/WebSearchAdapter;->r:I

    .line 27
    .line 28
    invoke-static {}, Lcom/mycompany/app/main/MainUtil;->M5()Z

    .line 29
    .line 30
    .line 31
    move-result p3

    .line 32
    iput-boolean p3, p0, Lcom/mycompany/app/web/WebSearchAdapter;->j:Z

    .line 33
    .line 34
    invoke-static {}, Lcom/mycompany/app/db/book/DbBookRecent;->l()Z

    .line 35
    .line 36
    .line 37
    move-result p3

    .line 38
    const/4 p4, 0x0

    .line 39
    if-nez p3, :cond_1

    .line 40
    .line 41
    :cond_0
    move p3, p4

    .line 42
    goto :goto_0

    .line 43
    :cond_1
    sget p3, Lcom/mycompany/app/pref/PrefWeb;->W:I

    .line 44
    .line 45
    const/4 p5, 0x2

    .line 46
    and-int/2addr p3, p5

    .line 47
    if-ne p3, p5, :cond_0

    .line 48
    .line 49
    move p3, p2

    .line 50
    :goto_0
    iput-boolean p3, p0, Lcom/mycompany/app/web/WebSearchAdapter;->f:Z

    .line 51
    .line 52
    new-instance p3, Landroid/os/Handler;

    .line 53
    .line 54
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 55
    .line 56
    .line 57
    move-result-object p5

    .line 58
    invoke-direct {p3, p5}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 59
    .line 60
    .line 61
    iput-object p3, p0, Lcom/mycompany/app/web/WebSearchAdapter;->t:Landroid/os/Handler;

    .line 62
    .line 63
    sget p3, Lcom/mycompany/app/pref/PrefWeb;->V:I

    .line 64
    .line 65
    if-ne p3, p2, :cond_2

    .line 66
    .line 67
    const-string p2, "https://duckduckgo.com/ac/?q="

    .line 68
    .line 69
    iput-object p2, p0, Lcom/mycompany/app/web/WebSearchAdapter;->k:Ljava/lang/String;

    .line 70
    .line 71
    goto :goto_1

    .line 72
    :cond_2
    new-instance p2, Ljava/lang/StringBuilder;

    .line 73
    .line 74
    const-string p3, "https://suggestqueries.google.com/complete/search?client=chrome&hl="

    .line 75
    .line 76
    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    invoke-static {}, Lcom/mycompany/app/main/MainUtil;->g2()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object p3

    .line 83
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    const-string p3, "&q="

    .line 87
    .line 88
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object p2

    .line 95
    iput-object p2, p0, Lcom/mycompany/app/web/WebSearchAdapter;->k:Ljava/lang/String;

    .line 96
    .line 97
    :goto_1
    new-instance p2, Lcom/mycompany/app/main/MainListLoader;

    .line 98
    .line 99
    new-instance p3, Lcom/mycompany/app/web/WebSearchAdapter$1;

    .line 100
    .line 101
    invoke-direct {p3}, Ljava/lang/Object;-><init>()V

    .line 102
    .line 103
    .line 104
    invoke-direct {p2, p1, p4, p3}, Lcom/mycompany/app/main/MainListLoader;-><init>(Landroid/content/Context;ZLcom/mycompany/app/main/MainListLoader$ListLoadListener;)V

    .line 105
    .line 106
    .line 107
    iput-object p2, p0, Lcom/mycompany/app/web/WebSearchAdapter;->n:Lcom/mycompany/app/main/MainListLoader;

    .line 108
    .line 109
    return-void
.end method

.method public static v(Landroid/view/View;)I
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
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->a:Landroid/view/View;

    .line 22
    .line 23
    if-nez v0, :cond_3

    .line 24
    .line 25
    goto :goto_2

    .line 26
    :cond_3
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->c()I

    .line 27
    .line 28
    .line 29
    move-result p0

    .line 30
    return p0

    .line 31
    :cond_4
    :goto_2
    const/4 p0, -0x1

    .line 32
    return p0
.end method

.method public static w(Lcom/mycompany/app/web/WebSearchAdapter;Ljava/util/List;Ljava/util/ArrayList;Ljava/lang/String;I)V
    .locals 8

    .line 1
    iget-boolean v0, p0, Lcom/mycompany/app/web/WebSearchAdapter;->q:Z

    .line 2
    .line 3
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    const/4 v2, 0x0

    .line 13
    move v3, v2

    .line 14
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    .line 16
    .line 17
    move-result v4

    .line 18
    if-eqz v4, :cond_4

    .line 19
    .line 20
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v4

    .line 24
    check-cast v4, Lcom/mycompany/app/web/WebSearchAdapter$SearchItem;

    .line 25
    .line 26
    iget-object v5, v4, Lcom/mycompany/app/web/WebSearchAdapter$SearchItem;->e:Ljava/lang/String;

    .line 27
    .line 28
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 29
    .line 30
    .line 31
    move-result v5

    .line 32
    if-nez v5, :cond_0

    .line 33
    .line 34
    iget-object v5, v4, Lcom/mycompany/app/web/WebSearchAdapter$SearchItem;->f:Ljava/lang/String;

    .line 35
    .line 36
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 37
    .line 38
    .line 39
    move-result v5

    .line 40
    if-eqz v5, :cond_1

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_1
    iget-object v5, v4, Lcom/mycompany/app/web/WebSearchAdapter$SearchItem;->f:Ljava/lang/String;

    .line 44
    .line 45
    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 46
    .line 47
    invoke-virtual {v5, v6}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v5

    .line 51
    iput-object v5, v4, Lcom/mycompany/app/web/WebSearchAdapter$SearchItem;->h:Ljava/lang/String;

    .line 52
    .line 53
    iget-object v5, v4, Lcom/mycompany/app/web/WebSearchAdapter$SearchItem;->e:Ljava/lang/String;

    .line 54
    .line 55
    invoke-virtual {v5, v6}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v5

    .line 59
    iget-object v6, v4, Lcom/mycompany/app/web/WebSearchAdapter$SearchItem;->h:Ljava/lang/String;

    .line 60
    .line 61
    invoke-virtual {v6, p3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 62
    .line 63
    .line 64
    move-result v6

    .line 65
    iget v7, v4, Lcom/mycompany/app/web/WebSearchAdapter$SearchItem;->j:I

    .line 66
    .line 67
    invoke-virtual {v5, p3, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    .line 68
    .line 69
    .line 70
    move-result v5

    .line 71
    const/4 v7, -0x1

    .line 72
    if-ne v5, v7, :cond_2

    .line 73
    .line 74
    iput v6, v4, Lcom/mycompany/app/web/WebSearchAdapter$SearchItem;->c:I

    .line 75
    .line 76
    goto :goto_1

    .line 77
    :cond_2
    if-ne v6, v7, :cond_3

    .line 78
    .line 79
    iput v5, v4, Lcom/mycompany/app/web/WebSearchAdapter$SearchItem;->c:I

    .line 80
    .line 81
    goto :goto_1

    .line 82
    :cond_3
    invoke-static {v6, v5}, Ljava/lang/Math;->min(II)I

    .line 83
    .line 84
    .line 85
    move-result v5

    .line 86
    iput v5, v4, Lcom/mycompany/app/web/WebSearchAdapter$SearchItem;->c:I

    .line 87
    .line 88
    :goto_1
    iget v5, v4, Lcom/mycompany/app/web/WebSearchAdapter$SearchItem;->c:I

    .line 89
    .line 90
    if-eq v5, v7, :cond_0

    .line 91
    .line 92
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 93
    .line 94
    .line 95
    add-int/lit8 v3, v3, 0x1

    .line 96
    .line 97
    const/16 v4, 0x9

    .line 98
    .line 99
    if-le v3, v4, :cond_0

    .line 100
    .line 101
    :cond_4
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 102
    .line 103
    .line 104
    move-result p1

    .line 105
    if-eqz p1, :cond_5

    .line 106
    .line 107
    goto :goto_3

    .line 108
    :cond_5
    new-instance p1, Lcom/mycompany/app/web/WebSearchAdapter$SortSearch;

    .line 109
    .line 110
    invoke-direct {p1, v0}, Lcom/mycompany/app/web/WebSearchAdapter$SortSearch;-><init>(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 111
    .line 112
    .line 113
    :try_start_1
    invoke-static {v1, p1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V
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
    iget-object p0, p0, Lcom/mycompany/app/web/WebSearchAdapter;->d:Lcom/mycompany/app/web/WebViewActivity;

    .line 125
    .line 126
    invoke-virtual {p0, p4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object p0

    .line 130
    iput-object p0, p1, Lcom/mycompany/app/web/WebSearchAdapter$SearchItem;->f:Ljava/lang/String;

    .line 131
    .line 132
    if-eqz v0, :cond_6

    .line 133
    .line 134
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 135
    .line 136
    .line 137
    goto :goto_2

    .line 138
    :cond_6
    invoke-virtual {v1, v2, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 139
    .line 140
    .line 141
    :goto_2
    if-eqz v0, :cond_7

    .line 142
    .line 143
    invoke-virtual {p2, v2, v1}, Ljava/util/ArrayList;->addAll(ILjava/util/Collection;)Z

    .line 144
    .line 145
    .line 146
    goto :goto_3

    .line 147
    :cond_7
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 148
    .line 149
    .line 150
    :catch_1
    :goto_3
    return-void
.end method


# virtual methods
.method public final A(ILcom/mycompany/app/view/MyFilterRelative;)V
    .locals 4

    .line 1
    if-nez p2, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    iget-boolean v0, p0, Lcom/mycompany/app/web/WebSearchAdapter;->q:Z

    .line 5
    .line 6
    iget v1, p0, Lcom/mycompany/app/web/WebSearchAdapter;->r:I

    .line 7
    .line 8
    const/4 v2, 0x1

    .line 9
    const/4 v3, 0x0

    .line 10
    if-eqz v0, :cond_2

    .line 11
    .line 12
    if-ne p1, v1, :cond_1

    .line 13
    .line 14
    move p1, v2

    .line 15
    goto :goto_0

    .line 16
    :cond_1
    move p1, v3

    .line 17
    :goto_0
    move v0, v3

    .line 18
    goto :goto_2

    .line 19
    :cond_2
    invoke-virtual {p0}, Lcom/mycompany/app/web/WebSearchAdapter;->d()I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    sub-int/2addr v0, v2

    .line 24
    sub-int/2addr v0, v1

    .line 25
    if-ne p1, v0, :cond_3

    .line 26
    .line 27
    move p1, v2

    .line 28
    goto :goto_1

    .line 29
    :cond_3
    move p1, v3

    .line 30
    :goto_1
    move v0, p1

    .line 31
    move p1, v3

    .line 32
    :goto_2
    if-nez p1, :cond_4

    .line 33
    .line 34
    if-nez v0, :cond_4

    .line 35
    .line 36
    invoke-virtual {p2, v3}, Landroid/view/View;->setClipToOutline(Z)V

    .line 37
    .line 38
    .line 39
    return-void

    .line 40
    :cond_4
    new-instance v1, Lcom/mycompany/app/web/WebSearchAdapter$7;

    .line 41
    .line 42
    invoke-direct {v1, p1, v0}, Lcom/mycompany/app/web/WebSearchAdapter$7;-><init>(ZZ)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {p2, v1}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {p2, v2}, Landroid/view/View;->setClipToOutline(Z)V

    .line 49
    .line 50
    .line 51
    return-void
.end method

.method public final B(Z)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_0

    .line 3
    .line 4
    iget-object p1, p0, Lcom/mycompany/app/web/WebSearchAdapter;->o:Ljava/net/HttpURLConnection;

    .line 5
    .line 6
    if-eqz p1, :cond_1

    .line 7
    .line 8
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lcom/mycompany/app/web/WebSearchAdapter;->o:Ljava/net/HttpURLConnection;

    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    iget-object p1, p0, Lcom/mycompany/app/web/WebSearchAdapter;->o:Ljava/net/HttpURLConnection;

    .line 15
    .line 16
    iput-object v0, p0, Lcom/mycompany/app/web/WebSearchAdapter;->o:Ljava/net/HttpURLConnection;

    .line 17
    .line 18
    if-nez p1, :cond_2

    .line 19
    .line 20
    :cond_1
    return-void

    .line 21
    :cond_2
    new-instance v0, Lcom/mycompany/app/web/WebSearchAdapter$10;

    .line 22
    .line 23
    invoke-direct {v0, p1}, Lcom/mycompany/app/web/WebSearchAdapter$10;-><init>(Ljava/net/HttpURLConnection;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0, v0}, Lcom/mycompany/app/web/WebSearchAdapter;->z(Ljava/lang/Runnable;)V

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method public final d()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/mycompany/app/web/WebSearchAdapter;->x:I

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return v0

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/web/WebSearchAdapter;->m:Ljava/util/ArrayList;

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

.method public final f(I)I
    .locals 3

    .line 1
    invoke-virtual {p0, p1}, Lcom/mycompany/app/web/WebSearchAdapter;->x(I)Lcom/mycompany/app/web/WebSearchAdapter$SearchItem;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    return p1

    .line 9
    :cond_0
    iget p1, p1, Lcom/mycompany/app/web/WebSearchAdapter$SearchItem;->b:I

    .line 10
    .line 11
    const/4 v0, 0x3

    .line 12
    if-eq p1, v0, :cond_1

    .line 13
    .line 14
    return p1

    .line 15
    :cond_1
    iget-boolean p1, p0, Lcom/mycompany/app/web/WebSearchAdapter;->q:Z

    .line 16
    .line 17
    if-eqz p1, :cond_3

    .line 18
    .line 19
    iget-object p1, p0, Lcom/mycompany/app/web/WebSearchAdapter;->e:Lcom/mycompany/app/web/WebSearchAdapter$WebSearchListener;

    .line 20
    .line 21
    const/4 v1, 0x1

    .line 22
    if-nez p1, :cond_2

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_2
    check-cast p1, Lcom/mycompany/app/web/WebViewActivity$250;

    .line 26
    .line 27
    invoke-virtual {p1}, Lcom/mycompany/app/web/WebViewActivity$250;->b()I

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    sget v2, Lcom/mycompany/app/main/MainApp;->h1:I

    .line 32
    .line 33
    if-le p1, v2, :cond_4

    .line 34
    .line 35
    sub-int v1, p1, v2

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_3
    sget v1, Lcom/mycompany/app/main/MainApp;->h1:I

    .line 39
    .line 40
    :cond_4
    :goto_0
    add-int/2addr v1, v0

    .line 41
    return v1
.end method

.method public final n(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p2

    .line 4
    .line 5
    move-object/from16 v2, p1

    .line 6
    .line 7
    check-cast v2, Lcom/mycompany/app/web/WebSearchAdapter$SearchHolder;

    .line 8
    .line 9
    iget-object v3, v2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->a:Landroid/view/View;

    .line 10
    .line 11
    if-nez v3, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    iget-object v3, v2, Lcom/mycompany/app/web/WebSearchAdapter$SearchHolder;->u:Lcom/mycompany/app/view/MyFilterRelative;

    .line 15
    .line 16
    if-nez v3, :cond_1

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_1
    invoke-virtual {v3, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, v1}, Lcom/mycompany/app/web/WebSearchAdapter;->x(I)Lcom/mycompany/app/web/WebSearchAdapter$SearchItem;

    .line 23
    .line 24
    .line 25
    move-result-object v4

    .line 26
    if-nez v4, :cond_2

    .line 27
    .line 28
    :goto_0
    return-void

    .line 29
    :cond_2
    iget v5, v4, Lcom/mycompany/app/web/WebSearchAdapter$SearchItem;->b:I

    .line 30
    .line 31
    const/4 v6, 0x3

    .line 32
    if-ne v5, v6, :cond_3

    .line 33
    .line 34
    new-instance v1, Lcom/mycompany/app/web/WebSearchAdapter$5;

    .line 35
    .line 36
    invoke-direct {v1, v0}, Lcom/mycompany/app/web/WebSearchAdapter$5;-><init>(Lcom/mycompany/app/web/WebSearchAdapter;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v3, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 40
    .line 41
    .line 42
    return-void

    .line 43
    :cond_3
    iget-boolean v5, v0, Lcom/mycompany/app/web/WebSearchAdapter;->p:Z

    .line 44
    .line 45
    invoke-static {v5}, Lcom/mycompany/app/main/MainUtil;->k5(Z)Z

    .line 46
    .line 47
    .line 48
    move-result v7

    .line 49
    iget v8, v4, Lcom/mycompany/app/web/WebSearchAdapter$SearchItem;->b:I

    .line 50
    .line 51
    const v9, -0x70708

    .line 52
    .line 53
    .line 54
    const/4 v10, -0x1

    .line 55
    iget-boolean v11, v0, Lcom/mycompany/app/web/WebSearchAdapter;->q:Z

    .line 56
    .line 57
    const/4 v12, 0x1

    .line 58
    const/16 v13, 0x8

    .line 59
    .line 60
    const/4 v14, 0x0

    .line 61
    if-ne v8, v12, :cond_7

    .line 62
    .line 63
    iget-object v5, v2, Lcom/mycompany/app/web/WebSearchAdapter$SearchHolder;->v:Lcom/mycompany/app/view/MyRoundImage;

    .line 64
    .line 65
    invoke-virtual {v5, v13}, Lcom/mycompany/app/view/MyRoundImage;->setVisibility(I)V

    .line 66
    .line 67
    .line 68
    iget-object v5, v2, Lcom/mycompany/app/web/WebSearchAdapter$SearchHolder;->w:Landroid/widget/LinearLayout;

    .line 69
    .line 70
    invoke-virtual {v5, v13}, Landroid/view/View;->setVisibility(I)V

    .line 71
    .line 72
    .line 73
    iget-object v5, v2, Lcom/mycompany/app/web/WebSearchAdapter$SearchHolder;->z:Landroid/widget/FrameLayout;

    .line 74
    .line 75
    invoke-virtual {v5, v13}, Landroid/view/View;->setVisibility(I)V

    .line 76
    .line 77
    .line 78
    iget-object v5, v2, Lcom/mycompany/app/web/WebSearchAdapter$SearchHolder;->C:Lcom/mycompany/app/view/MyRoundBack;

    .line 79
    .line 80
    invoke-virtual {v5, v14}, Landroid/view/View;->setVisibility(I)V

    .line 81
    .line 82
    .line 83
    iget-object v5, v2, Lcom/mycompany/app/web/WebSearchAdapter$SearchHolder;->D:Landroidx/appcompat/widget/AppCompatTextView;

    .line 84
    .line 85
    invoke-virtual {v5, v14}, Landroid/view/View;->setVisibility(I)V

    .line 86
    .line 87
    .line 88
    iget-object v5, v2, Lcom/mycompany/app/web/WebSearchAdapter$SearchHolder;->C:Lcom/mycompany/app/view/MyRoundBack;

    .line 89
    .line 90
    new-instance v8, Lcom/mycompany/app/web/WebSearchAdapter$2;

    .line 91
    .line 92
    invoke-direct {v8}, Ljava/lang/Object;-><init>()V

    .line 93
    .line 94
    .line 95
    invoke-virtual {v5, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 96
    .line 97
    .line 98
    sget v5, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 99
    .line 100
    mul-int/2addr v5, v6

    .line 101
    sget v6, Lcom/mycompany/app/main/MainApp;->G1:I

    .line 102
    .line 103
    add-int/2addr v5, v6

    .line 104
    if-eqz v11, :cond_4

    .line 105
    .line 106
    iget-object v6, v2, Lcom/mycompany/app/web/WebSearchAdapter$SearchHolder;->D:Landroidx/appcompat/widget/AppCompatTextView;

    .line 107
    .line 108
    invoke-virtual {v6}, Landroid/view/View;->getPaddingBottom()I

    .line 109
    .line 110
    .line 111
    move-result v6

    .line 112
    if-eq v6, v5, :cond_5

    .line 113
    .line 114
    iget-object v6, v2, Lcom/mycompany/app/web/WebSearchAdapter$SearchHolder;->D:Landroidx/appcompat/widget/AppCompatTextView;

    .line 115
    .line 116
    invoke-virtual {v6, v14, v14, v14, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 117
    .line 118
    .line 119
    goto :goto_1

    .line 120
    :cond_4
    iget-object v6, v2, Lcom/mycompany/app/web/WebSearchAdapter$SearchHolder;->D:Landroidx/appcompat/widget/AppCompatTextView;

    .line 121
    .line 122
    invoke-virtual {v6}, Landroid/view/View;->getPaddingTop()I

    .line 123
    .line 124
    .line 125
    move-result v6

    .line 126
    if-eq v6, v5, :cond_5

    .line 127
    .line 128
    iget-object v6, v2, Lcom/mycompany/app/web/WebSearchAdapter$SearchHolder;->D:Landroidx/appcompat/widget/AppCompatTextView;

    .line 129
    .line 130
    invoke-virtual {v6, v14, v5, v14, v14}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 131
    .line 132
    .line 133
    :cond_5
    :goto_1
    iget-object v5, v2, Lcom/mycompany/app/web/WebSearchAdapter$SearchHolder;->D:Landroidx/appcompat/widget/AppCompatTextView;

    .line 134
    .line 135
    iget-object v4, v4, Lcom/mycompany/app/web/WebSearchAdapter$SearchItem;->f:Ljava/lang/String;

    .line 136
    .line 137
    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 138
    .line 139
    .line 140
    if-eqz v7, :cond_6

    .line 141
    .line 142
    iget-object v4, v2, Lcom/mycompany/app/web/WebSearchAdapter$SearchHolder;->C:Lcom/mycompany/app/view/MyRoundBack;

    .line 143
    .line 144
    const v5, -0xdededf

    .line 145
    .line 146
    .line 147
    invoke-virtual {v4, v5, v11}, Lcom/mycompany/app/view/MyRoundBack;->a(IZ)V

    .line 148
    .line 149
    .line 150
    iget-object v2, v2, Lcom/mycompany/app/web/WebSearchAdapter$SearchHolder;->D:Landroidx/appcompat/widget/AppCompatTextView;

    .line 151
    .line 152
    const v4, -0x3e3e3f

    .line 153
    .line 154
    .line 155
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 156
    .line 157
    .line 158
    const/high16 v2, -0x1000000

    .line 159
    .line 160
    invoke-virtual {v3, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 161
    .line 162
    .line 163
    goto :goto_2

    .line 164
    :cond_6
    iget-object v4, v2, Lcom/mycompany/app/web/WebSearchAdapter$SearchHolder;->C:Lcom/mycompany/app/view/MyRoundBack;

    .line 165
    .line 166
    invoke-virtual {v4, v10, v11}, Lcom/mycompany/app/view/MyRoundBack;->a(IZ)V

    .line 167
    .line 168
    .line 169
    iget-object v2, v2, Lcom/mycompany/app/web/WebSearchAdapter$SearchHolder;->D:Landroidx/appcompat/widget/AppCompatTextView;

    .line 170
    .line 171
    const v4, -0x9e9e9f

    .line 172
    .line 173
    .line 174
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 175
    .line 176
    .line 177
    invoke-virtual {v3, v9}, Landroid/view/View;->setBackgroundColor(I)V

    .line 178
    .line 179
    .line 180
    :goto_2
    invoke-static {}, Lcom/mycompany/app/main/MainUtil;->l1()I

    .line 181
    .line 182
    .line 183
    move-result v2

    .line 184
    invoke-virtual {v3, v2}, Lcom/mycompany/app/view/MyFilterRelative;->setFilterColor(I)V

    .line 185
    .line 186
    .line 187
    invoke-virtual {v0, v1, v3}, Lcom/mycompany/app/web/WebSearchAdapter;->A(ILcom/mycompany/app/view/MyFilterRelative;)V

    .line 188
    .line 189
    .line 190
    new-instance v1, Lcom/mycompany/app/web/WebSearchAdapter$5;

    .line 191
    .line 192
    invoke-direct {v1, v0}, Lcom/mycompany/app/web/WebSearchAdapter$5;-><init>(Lcom/mycompany/app/web/WebSearchAdapter;)V

    .line 193
    .line 194
    .line 195
    invoke-virtual {v3, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 196
    .line 197
    .line 198
    return-void

    .line 199
    :cond_7
    iget-object v6, v2, Lcom/mycompany/app/web/WebSearchAdapter$SearchHolder;->v:Lcom/mycompany/app/view/MyRoundImage;

    .line 200
    .line 201
    invoke-virtual {v6, v7}, Lcom/mycompany/app/view/MyRoundImage;->setDarkColor(Z)V

    .line 202
    .line 203
    .line 204
    iget-object v6, v2, Lcom/mycompany/app/web/WebSearchAdapter$SearchHolder;->v:Lcom/mycompany/app/view/MyRoundImage;

    .line 205
    .line 206
    invoke-virtual {v6, v14}, Lcom/mycompany/app/view/MyRoundImage;->setVisibility(I)V

    .line 207
    .line 208
    .line 209
    iget-object v6, v2, Lcom/mycompany/app/web/WebSearchAdapter$SearchHolder;->w:Landroid/widget/LinearLayout;

    .line 210
    .line 211
    invoke-virtual {v6, v14}, Landroid/view/View;->setVisibility(I)V

    .line 212
    .line 213
    .line 214
    iget-object v6, v2, Lcom/mycompany/app/web/WebSearchAdapter$SearchHolder;->C:Lcom/mycompany/app/view/MyRoundBack;

    .line 215
    .line 216
    invoke-virtual {v6, v13}, Landroid/view/View;->setVisibility(I)V

    .line 217
    .line 218
    .line 219
    iget-object v6, v2, Lcom/mycompany/app/web/WebSearchAdapter$SearchHolder;->D:Landroidx/appcompat/widget/AppCompatTextView;

    .line 220
    .line 221
    invoke-virtual {v6, v13}, Landroid/view/View;->setVisibility(I)V

    .line 222
    .line 223
    .line 224
    iget v6, v4, Lcom/mycompany/app/web/WebSearchAdapter$SearchItem;->b:I

    .line 225
    .line 226
    const/4 v8, 0x2

    .line 227
    if-ne v6, v8, :cond_9

    .line 228
    .line 229
    iget-object v4, v2, Lcom/mycompany/app/web/WebSearchAdapter$SearchHolder;->z:Landroid/widget/FrameLayout;

    .line 230
    .line 231
    invoke-virtual {v4, v13}, Landroid/view/View;->setVisibility(I)V

    .line 232
    .line 233
    .line 234
    if-eqz v7, :cond_8

    .line 235
    .line 236
    iget-object v4, v2, Lcom/mycompany/app/web/WebSearchAdapter$SearchHolder;->v:Lcom/mycompany/app/view/MyRoundImage;

    .line 237
    .line 238
    sget v5, Lnet/kaki87/soul2/testing/R$drawable;->outline_find_in_page_dark_24:I

    .line 239
    .line 240
    invoke-virtual {v4, v5}, Lcom/mycompany/app/view/MyRoundImage;->setImageResource(I)V

    .line 241
    .line 242
    .line 243
    goto :goto_3

    .line 244
    :cond_8
    iget-object v4, v2, Lcom/mycompany/app/web/WebSearchAdapter$SearchHolder;->v:Lcom/mycompany/app/view/MyRoundImage;

    .line 245
    .line 246
    sget v5, Lnet/kaki87/soul2/testing/R$drawable;->outline_find_in_page_black_24:I

    .line 247
    .line 248
    invoke-virtual {v4, v5}, Lcom/mycompany/app/view/MyRoundImage;->setImageResource(I)V

    .line 249
    .line 250
    .line 251
    :goto_3
    iget-object v4, v2, Lcom/mycompany/app/web/WebSearchAdapter$SearchHolder;->x:Landroidx/appcompat/widget/AppCompatTextView;

    .line 252
    .line 253
    invoke-virtual {v4, v12}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 254
    .line 255
    .line 256
    iget-object v4, v2, Lcom/mycompany/app/web/WebSearchAdapter$SearchHolder;->x:Landroidx/appcompat/widget/AppCompatTextView;

    .line 257
    .line 258
    sget v5, Lnet/kaki87/soul2/testing/R$string;->find_word:I

    .line 259
    .line 260
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    .line 261
    .line 262
    .line 263
    iget-object v2, v2, Lcom/mycompany/app/web/WebSearchAdapter$SearchHolder;->y:Landroidx/appcompat/widget/AppCompatTextView;

    .line 264
    .line 265
    invoke-virtual {v2, v13}, Landroid/view/View;->setVisibility(I)V

    .line 266
    .line 267
    .line 268
    new-instance v2, Lcom/mycompany/app/web/WebSearchAdapter$5;

    .line 269
    .line 270
    invoke-direct {v2, v0}, Lcom/mycompany/app/web/WebSearchAdapter$5;-><init>(Lcom/mycompany/app/web/WebSearchAdapter;)V

    .line 271
    .line 272
    .line 273
    invoke-virtual {v3, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 274
    .line 275
    .line 276
    goto/16 :goto_f

    .line 277
    .line 278
    :cond_9
    iget-object v6, v2, Lcom/mycompany/app/web/WebSearchAdapter$SearchHolder;->z:Landroid/widget/FrameLayout;

    .line 279
    .line 280
    invoke-virtual {v6, v14}, Landroid/view/View;->setVisibility(I)V

    .line 281
    .line 282
    .line 283
    iget-object v6, v4, Lcom/mycompany/app/web/WebSearchAdapter$SearchItem;->e:Ljava/lang/String;

    .line 284
    .line 285
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 286
    .line 287
    .line 288
    move-result v6

    .line 289
    iget-object v15, v0, Lcom/mycompany/app/web/WebSearchAdapter;->l:Ljava/lang/String;

    .line 290
    .line 291
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 292
    .line 293
    .line 294
    move-result v15

    .line 295
    if-nez v6, :cond_a

    .line 296
    .line 297
    iget-object v8, v2, Lcom/mycompany/app/web/WebSearchAdapter$SearchHolder;->x:Landroidx/appcompat/widget/AppCompatTextView;

    .line 298
    .line 299
    invoke-virtual {v8, v12}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 300
    .line 301
    .line 302
    goto :goto_4

    .line 303
    :cond_a
    iget-object v12, v2, Lcom/mycompany/app/web/WebSearchAdapter$SearchHolder;->x:Landroidx/appcompat/widget/AppCompatTextView;

    .line 304
    .line 305
    invoke-virtual {v12, v14}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 306
    .line 307
    .line 308
    iget-object v12, v2, Lcom/mycompany/app/web/WebSearchAdapter$SearchHolder;->x:Landroidx/appcompat/widget/AppCompatTextView;

    .line 309
    .line 310
    invoke-virtual {v12, v8}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 311
    .line 312
    .line 313
    :goto_4
    if-nez v15, :cond_d

    .line 314
    .line 315
    iget-object v8, v4, Lcom/mycompany/app/web/WebSearchAdapter$SearchItem;->i:Ljava/lang/String;

    .line 316
    .line 317
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 318
    .line 319
    .line 320
    move-result v8

    .line 321
    if-nez v8, :cond_b

    .line 322
    .line 323
    iget-object v8, v4, Lcom/mycompany/app/web/WebSearchAdapter$SearchItem;->i:Ljava/lang/String;

    .line 324
    .line 325
    goto :goto_5

    .line 326
    :cond_b
    iget-object v8, v0, Lcom/mycompany/app/web/WebSearchAdapter;->l:Ljava/lang/String;

    .line 327
    .line 328
    :goto_5
    if-eqz v7, :cond_c

    .line 329
    .line 330
    goto :goto_6

    .line 331
    :cond_c
    const v10, -0xe19938

    .line 332
    .line 333
    .line 334
    :goto_6
    iget-object v12, v2, Lcom/mycompany/app/web/WebSearchAdapter$SearchHolder;->x:Landroidx/appcompat/widget/AppCompatTextView;

    .line 335
    .line 336
    iget-object v9, v4, Lcom/mycompany/app/web/WebSearchAdapter$SearchItem;->f:Ljava/lang/String;

    .line 337
    .line 338
    invoke-static {v9, v10, v14, v8}, Lcom/mycompany/app/main/MainUtil;->t6(Ljava/lang/String;IILjava/lang/String;)Landroid/text/SpannableString;

    .line 339
    .line 340
    .line 341
    move-result-object v9

    .line 342
    sget-object v13, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    .line 343
    .line 344
    invoke-virtual {v12, v9, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 345
    .line 346
    .line 347
    goto :goto_7

    .line 348
    :cond_d
    iget-object v8, v2, Lcom/mycompany/app/web/WebSearchAdapter$SearchHolder;->x:Landroidx/appcompat/widget/AppCompatTextView;

    .line 349
    .line 350
    iget-object v9, v4, Lcom/mycompany/app/web/WebSearchAdapter$SearchItem;->f:Ljava/lang/String;

    .line 351
    .line 352
    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 353
    .line 354
    .line 355
    const/4 v8, 0x0

    .line 356
    move v10, v14

    .line 357
    :goto_7
    if-nez v6, :cond_f

    .line 358
    .line 359
    if-nez v15, :cond_e

    .line 360
    .line 361
    iget-object v6, v2, Lcom/mycompany/app/web/WebSearchAdapter$SearchHolder;->y:Landroidx/appcompat/widget/AppCompatTextView;

    .line 362
    .line 363
    iget-object v9, v4, Lcom/mycompany/app/web/WebSearchAdapter$SearchItem;->e:Ljava/lang/String;

    .line 364
    .line 365
    iget v12, v4, Lcom/mycompany/app/web/WebSearchAdapter$SearchItem;->j:I

    .line 366
    .line 367
    invoke-static {v9, v10, v12, v8}, Lcom/mycompany/app/main/MainUtil;->t6(Ljava/lang/String;IILjava/lang/String;)Landroid/text/SpannableString;

    .line 368
    .line 369
    .line 370
    move-result-object v8

    .line 371
    sget-object v9, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    .line 372
    .line 373
    invoke-virtual {v6, v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 374
    .line 375
    .line 376
    goto :goto_8

    .line 377
    :cond_e
    iget-object v6, v2, Lcom/mycompany/app/web/WebSearchAdapter$SearchHolder;->y:Landroidx/appcompat/widget/AppCompatTextView;

    .line 378
    .line 379
    iget-object v8, v4, Lcom/mycompany/app/web/WebSearchAdapter$SearchItem;->e:Ljava/lang/String;

    .line 380
    .line 381
    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 382
    .line 383
    .line 384
    :goto_8
    iget-object v6, v2, Lcom/mycompany/app/web/WebSearchAdapter$SearchHolder;->y:Landroidx/appcompat/widget/AppCompatTextView;

    .line 385
    .line 386
    invoke-virtual {v6, v14}, Landroid/view/View;->setVisibility(I)V

    .line 387
    .line 388
    .line 389
    goto :goto_9

    .line 390
    :cond_f
    iget-object v6, v2, Lcom/mycompany/app/web/WebSearchAdapter$SearchHolder;->y:Landroidx/appcompat/widget/AppCompatTextView;

    .line 391
    .line 392
    const/16 v8, 0x8

    .line 393
    .line 394
    invoke-virtual {v6, v8}, Landroid/view/View;->setVisibility(I)V

    .line 395
    .line 396
    .line 397
    :goto_9
    iget v6, v4, Lcom/mycompany/app/web/WebSearchAdapter$SearchItem;->a:I

    .line 398
    .line 399
    const/16 v8, 0x26

    .line 400
    .line 401
    const v9, -0x1f1f20

    .line 402
    .line 403
    .line 404
    const v10, -0xc0c0c1

    .line 405
    .line 406
    .line 407
    if-ne v6, v8, :cond_11

    .line 408
    .line 409
    if-eqz v7, :cond_10

    .line 410
    .line 411
    iget-object v6, v2, Lcom/mycompany/app/web/WebSearchAdapter$SearchHolder;->A:Lcom/mycompany/app/view/MyButtonImage;

    .line 412
    .line 413
    sget v12, Lnet/kaki87/soul2/testing/R$drawable;->outline_close_dark_18:I

    .line 414
    .line 415
    invoke-virtual {v6, v12}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 416
    .line 417
    .line 418
    iget-object v6, v2, Lcom/mycompany/app/web/WebSearchAdapter$SearchHolder;->A:Lcom/mycompany/app/view/MyButtonImage;

    .line 419
    .line 420
    invoke-virtual {v6, v10}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 421
    .line 422
    .line 423
    goto :goto_a

    .line 424
    :cond_10
    iget-object v6, v2, Lcom/mycompany/app/web/WebSearchAdapter$SearchHolder;->A:Lcom/mycompany/app/view/MyButtonImage;

    .line 425
    .line 426
    sget v12, Lnet/kaki87/soul2/testing/R$drawable;->outline_close_black_18:I

    .line 427
    .line 428
    invoke-virtual {v6, v12}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 429
    .line 430
    .line 431
    iget-object v6, v2, Lcom/mycompany/app/web/WebSearchAdapter$SearchHolder;->A:Lcom/mycompany/app/view/MyButtonImage;

    .line 432
    .line 433
    invoke-virtual {v6, v9}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 434
    .line 435
    .line 436
    :goto_a
    iget-object v6, v2, Lcom/mycompany/app/web/WebSearchAdapter$SearchHolder;->A:Lcom/mycompany/app/view/MyButtonImage;

    .line 437
    .line 438
    invoke-virtual {v6, v14}, Lcom/mycompany/app/view/MyButtonImage;->setVisibility(I)V

    .line 439
    .line 440
    .line 441
    iget-object v6, v2, Lcom/mycompany/app/web/WebSearchAdapter$SearchHolder;->A:Lcom/mycompany/app/view/MyButtonImage;

    .line 442
    .line 443
    invoke-virtual {v6, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 444
    .line 445
    .line 446
    iget-object v6, v2, Lcom/mycompany/app/web/WebSearchAdapter$SearchHolder;->A:Lcom/mycompany/app/view/MyButtonImage;

    .line 447
    .line 448
    new-instance v12, Lcom/mycompany/app/web/WebSearchAdapter$3;

    .line 449
    .line 450
    invoke-direct {v12, v0}, Lcom/mycompany/app/web/WebSearchAdapter$3;-><init>(Lcom/mycompany/app/web/WebSearchAdapter;)V

    .line 451
    .line 452
    .line 453
    invoke-virtual {v6, v12}, Lcom/mycompany/app/view/MyButtonImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 454
    .line 455
    .line 456
    goto :goto_b

    .line 457
    :cond_11
    iget-object v6, v2, Lcom/mycompany/app/web/WebSearchAdapter$SearchHolder;->A:Lcom/mycompany/app/view/MyButtonImage;

    .line 458
    .line 459
    const/16 v12, 0x8

    .line 460
    .line 461
    invoke-virtual {v6, v12}, Lcom/mycompany/app/view/MyButtonImage;->setVisibility(I)V

    .line 462
    .line 463
    .line 464
    :goto_b
    if-eqz v11, :cond_13

    .line 465
    .line 466
    if-eqz v7, :cond_12

    .line 467
    .line 468
    iget-object v6, v2, Lcom/mycompany/app/web/WebSearchAdapter$SearchHolder;->B:Lcom/mycompany/app/view/MyButtonImage;

    .line 469
    .line 470
    sget v9, Lnet/kaki87/soul2/testing/R$drawable;->outline_south_west_dark_20:I

    .line 471
    .line 472
    invoke-virtual {v6, v9}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 473
    .line 474
    .line 475
    iget-object v6, v2, Lcom/mycompany/app/web/WebSearchAdapter$SearchHolder;->B:Lcom/mycompany/app/view/MyButtonImage;

    .line 476
    .line 477
    invoke-virtual {v6, v10}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 478
    .line 479
    .line 480
    goto :goto_c

    .line 481
    :cond_12
    iget-object v6, v2, Lcom/mycompany/app/web/WebSearchAdapter$SearchHolder;->B:Lcom/mycompany/app/view/MyButtonImage;

    .line 482
    .line 483
    sget v10, Lnet/kaki87/soul2/testing/R$drawable;->outline_south_west_black_20:I

    .line 484
    .line 485
    invoke-virtual {v6, v10}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 486
    .line 487
    .line 488
    iget-object v6, v2, Lcom/mycompany/app/web/WebSearchAdapter$SearchHolder;->B:Lcom/mycompany/app/view/MyButtonImage;

    .line 489
    .line 490
    invoke-virtual {v6, v9}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 491
    .line 492
    .line 493
    goto :goto_c

    .line 494
    :cond_13
    if-eqz v7, :cond_14

    .line 495
    .line 496
    iget-object v6, v2, Lcom/mycompany/app/web/WebSearchAdapter$SearchHolder;->B:Lcom/mycompany/app/view/MyButtonImage;

    .line 497
    .line 498
    sget v9, Lnet/kaki87/soul2/testing/R$drawable;->outline_north_west_dark_20:I

    .line 499
    .line 500
    invoke-virtual {v6, v9}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 501
    .line 502
    .line 503
    iget-object v6, v2, Lcom/mycompany/app/web/WebSearchAdapter$SearchHolder;->B:Lcom/mycompany/app/view/MyButtonImage;

    .line 504
    .line 505
    invoke-virtual {v6, v10}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 506
    .line 507
    .line 508
    goto :goto_c

    .line 509
    :cond_14
    iget-object v6, v2, Lcom/mycompany/app/web/WebSearchAdapter$SearchHolder;->B:Lcom/mycompany/app/view/MyButtonImage;

    .line 510
    .line 511
    sget v10, Lnet/kaki87/soul2/testing/R$drawable;->outline_north_west_black_20:I

    .line 512
    .line 513
    invoke-virtual {v6, v10}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 514
    .line 515
    .line 516
    iget-object v6, v2, Lcom/mycompany/app/web/WebSearchAdapter$SearchHolder;->B:Lcom/mycompany/app/view/MyButtonImage;

    .line 517
    .line 518
    invoke-virtual {v6, v9}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 519
    .line 520
    .line 521
    :goto_c
    iget-object v6, v2, Lcom/mycompany/app/web/WebSearchAdapter$SearchHolder;->B:Lcom/mycompany/app/view/MyButtonImage;

    .line 522
    .line 523
    invoke-virtual {v6, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 524
    .line 525
    .line 526
    iget-object v6, v2, Lcom/mycompany/app/web/WebSearchAdapter$SearchHolder;->B:Lcom/mycompany/app/view/MyButtonImage;

    .line 527
    .line 528
    new-instance v9, Lcom/mycompany/app/web/WebSearchAdapter$4;

    .line 529
    .line 530
    invoke-direct {v9, v0}, Lcom/mycompany/app/web/WebSearchAdapter$4;-><init>(Lcom/mycompany/app/web/WebSearchAdapter;)V

    .line 531
    .line 532
    .line 533
    invoke-virtual {v6, v9}, Lcom/mycompany/app/view/MyButtonImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 534
    .line 535
    .line 536
    iget-object v2, v2, Lcom/mycompany/app/web/WebSearchAdapter$SearchHolder;->v:Lcom/mycompany/app/view/MyRoundImage;

    .line 537
    .line 538
    if-eqz v2, :cond_20

    .line 539
    .line 540
    iget-object v6, v0, Lcom/mycompany/app/web/WebSearchAdapter;->n:Lcom/mycompany/app/main/MainListLoader;

    .line 541
    .line 542
    if-nez v6, :cond_15

    .line 543
    .line 544
    goto/16 :goto_e

    .line 545
    .line 546
    :cond_15
    invoke-static {v5}, Lcom/mycompany/app/main/MainUtil;->k5(Z)Z

    .line 547
    .line 548
    .line 549
    move-result v5

    .line 550
    iget v6, v4, Lcom/mycompany/app/web/WebSearchAdapter$SearchItem;->a:I

    .line 551
    .line 552
    if-ne v6, v8, :cond_17

    .line 553
    .line 554
    if-eqz v5, :cond_16

    .line 555
    .line 556
    sget v4, Lnet/kaki87/soul2/testing/R$drawable;->outline_history_dark_24:I

    .line 557
    .line 558
    invoke-virtual {v2, v4}, Lcom/mycompany/app/view/MyRoundImage;->setImageResource(I)V

    .line 559
    .line 560
    .line 561
    goto/16 :goto_e

    .line 562
    .line 563
    :cond_16
    sget v4, Lnet/kaki87/soul2/testing/R$drawable;->outline_history_black_24:I

    .line 564
    .line 565
    invoke-virtual {v2, v4}, Lcom/mycompany/app/view/MyRoundImage;->setImageResource(I)V

    .line 566
    .line 567
    .line 568
    goto/16 :goto_e

    .line 569
    .line 570
    :cond_17
    if-nez v6, :cond_19

    .line 571
    .line 572
    if-eqz v5, :cond_18

    .line 573
    .line 574
    sget v4, Lnet/kaki87/soul2/testing/R$drawable;->outline_search_dark_24:I

    .line 575
    .line 576
    invoke-virtual {v2, v4}, Lcom/mycompany/app/view/MyRoundImage;->setImageResource(I)V

    .line 577
    .line 578
    .line 579
    goto/16 :goto_e

    .line 580
    .line 581
    :cond_18
    sget v4, Lnet/kaki87/soul2/testing/R$drawable;->outline_search_black_24:I

    .line 582
    .line 583
    invoke-virtual {v2, v4}, Lcom/mycompany/app/view/MyRoundImage;->setImageResource(I)V

    .line 584
    .line 585
    .line 586
    goto/16 :goto_e

    .line 587
    .line 588
    :cond_19
    iget-object v6, v4, Lcom/mycompany/app/web/WebSearchAdapter$SearchItem;->e:Ljava/lang/String;

    .line 589
    .line 590
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 591
    .line 592
    .line 593
    move-result v6

    .line 594
    if-eqz v6, :cond_1b

    .line 595
    .line 596
    if-eqz v5, :cond_1a

    .line 597
    .line 598
    sget v4, Lnet/kaki87/soul2/testing/R$drawable;->outline_public_dark_24:I

    .line 599
    .line 600
    invoke-virtual {v2, v4}, Lcom/mycompany/app/view/MyRoundImage;->setImageResource(I)V

    .line 601
    .line 602
    .line 603
    goto/16 :goto_e

    .line 604
    .line 605
    :cond_1a
    sget v4, Lnet/kaki87/soul2/testing/R$drawable;->outline_public_black_24:I

    .line 606
    .line 607
    invoke-virtual {v2, v4}, Lcom/mycompany/app/view/MyRoundImage;->setImageResource(I)V

    .line 608
    .line 609
    .line 610
    goto/16 :goto_e

    .line 611
    .line 612
    :cond_1b
    iget v6, v4, Lcom/mycompany/app/web/WebSearchAdapter$SearchItem;->a:I

    .line 613
    .line 614
    const/16 v8, 0x21

    .line 615
    .line 616
    if-ne v6, v8, :cond_1d

    .line 617
    .line 618
    iget v8, v4, Lcom/mycompany/app/web/WebSearchAdapter$SearchItem;->g:I

    .line 619
    .line 620
    if-eqz v8, :cond_1d

    .line 621
    .line 622
    const v9, -0x70708

    .line 623
    .line 624
    .line 625
    if-eq v8, v9, :cond_1d

    .line 626
    .line 627
    if-eqz v5, :cond_1c

    .line 628
    .line 629
    sget v5, Lnet/kaki87/soul2/testing/R$drawable;->outline_public_dark_24:I

    .line 630
    .line 631
    iget-object v4, v4, Lcom/mycompany/app/web/WebSearchAdapter$SearchItem;->f:Ljava/lang/String;

    .line 632
    .line 633
    invoke-virtual {v0}, Lcom/mycompany/app/web/WebSearchAdapter;->y()Ljava/util/regex/Pattern;

    .line 634
    .line 635
    .line 636
    move-result-object v6

    .line 637
    invoke-virtual {v2, v8, v5, v4, v6}, Lcom/mycompany/app/view/MyRoundImage;->z(IILjava/lang/String;Ljava/util/regex/Pattern;)V

    .line 638
    .line 639
    .line 640
    goto :goto_e

    .line 641
    :cond_1c
    sget v5, Lnet/kaki87/soul2/testing/R$drawable;->outline_public_black_24:I

    .line 642
    .line 643
    iget-object v4, v4, Lcom/mycompany/app/web/WebSearchAdapter$SearchItem;->f:Ljava/lang/String;

    .line 644
    .line 645
    invoke-virtual {v0}, Lcom/mycompany/app/web/WebSearchAdapter;->y()Ljava/util/regex/Pattern;

    .line 646
    .line 647
    .line 648
    move-result-object v6

    .line 649
    invoke-virtual {v2, v8, v5, v4, v6}, Lcom/mycompany/app/view/MyRoundImage;->z(IILjava/lang/String;Ljava/util/regex/Pattern;)V

    .line 650
    .line 651
    .line 652
    goto :goto_e

    .line 653
    :cond_1d
    new-instance v8, Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 654
    .line 655
    invoke-direct {v8}, Ljava/lang/Object;-><init>()V

    .line 656
    .line 657
    .line 658
    iput v6, v8, Lcom/mycompany/app/main/MainItem$ChildItem;->a:I

    .line 659
    .line 660
    const/16 v6, 0xb

    .line 661
    .line 662
    iput v6, v8, Lcom/mycompany/app/main/MainItem$ChildItem;->c:I

    .line 663
    .line 664
    iget-object v6, v4, Lcom/mycompany/app/web/WebSearchAdapter$SearchItem;->e:Ljava/lang/String;

    .line 665
    .line 666
    iput-object v6, v8, Lcom/mycompany/app/main/MainItem$ChildItem;->g:Ljava/lang/String;

    .line 667
    .line 668
    iget-object v9, v4, Lcom/mycompany/app/web/WebSearchAdapter$SearchItem;->f:Ljava/lang/String;

    .line 669
    .line 670
    iput-object v9, v8, Lcom/mycompany/app/main/MainItem$ChildItem;->h:Ljava/lang/String;

    .line 671
    .line 672
    iput-object v6, v8, Lcom/mycompany/app/main/MainItem$ChildItem;->z:Ljava/lang/String;

    .line 673
    .line 674
    iget-wide v9, v4, Lcom/mycompany/app/web/WebSearchAdapter$SearchItem;->d:J

    .line 675
    .line 676
    iput-wide v9, v8, Lcom/mycompany/app/main/MainItem$ChildItem;->y:J

    .line 677
    .line 678
    iput v1, v8, Lcom/mycompany/app/main/MainItem$ChildItem;->J:I

    .line 679
    .line 680
    invoke-static {v8}, Lcom/mycompany/app/main/MainListLoader;->b(Lcom/mycompany/app/main/MainItem$ChildItem;)Landroid/graphics/Bitmap;

    .line 681
    .line 682
    .line 683
    move-result-object v6

    .line 684
    invoke-static {v6}, Lcom/mycompany/app/main/MainUtil;->f6(Landroid/graphics/Bitmap;)Z

    .line 685
    .line 686
    .line 687
    move-result v9

    .line 688
    if-eqz v9, :cond_1e

    .line 689
    .line 690
    invoke-virtual {v2, v6}, Lcom/mycompany/app/view/MyRoundImage;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 691
    .line 692
    .line 693
    goto :goto_e

    .line 694
    :cond_1e
    if-eqz v5, :cond_1f

    .line 695
    .line 696
    sget v5, Lnet/kaki87/soul2/testing/R$drawable;->outline_public_dark_24:I

    .line 697
    .line 698
    iget-object v4, v4, Lcom/mycompany/app/web/WebSearchAdapter$SearchItem;->f:Ljava/lang/String;

    .line 699
    .line 700
    invoke-virtual {v0}, Lcom/mycompany/app/web/WebSearchAdapter;->y()Ljava/util/regex/Pattern;

    .line 701
    .line 702
    .line 703
    move-result-object v6

    .line 704
    invoke-virtual {v2, v14, v5, v4, v6}, Lcom/mycompany/app/view/MyRoundImage;->z(IILjava/lang/String;Ljava/util/regex/Pattern;)V

    .line 705
    .line 706
    .line 707
    goto :goto_d

    .line 708
    :cond_1f
    sget v5, Lnet/kaki87/soul2/testing/R$drawable;->outline_public_black_24:I

    .line 709
    .line 710
    iget-object v4, v4, Lcom/mycompany/app/web/WebSearchAdapter$SearchItem;->f:Ljava/lang/String;

    .line 711
    .line 712
    invoke-virtual {v0}, Lcom/mycompany/app/web/WebSearchAdapter;->y()Ljava/util/regex/Pattern;

    .line 713
    .line 714
    .line 715
    move-result-object v6

    .line 716
    invoke-virtual {v2, v14, v5, v4, v6}, Lcom/mycompany/app/view/MyRoundImage;->z(IILjava/lang/String;Ljava/util/regex/Pattern;)V

    .line 717
    .line 718
    .line 719
    :goto_d
    iget-object v2, v0, Lcom/mycompany/app/web/WebSearchAdapter;->n:Lcom/mycompany/app/main/MainListLoader;

    .line 720
    .line 721
    invoke-virtual {v2, v8, v3}, Lcom/mycompany/app/main/MainListLoader;->e(Lcom/mycompany/app/main/MainItem$ChildItem;Landroid/view/View;)V

    .line 722
    .line 723
    .line 724
    :cond_20
    :goto_e
    new-instance v2, Lcom/mycompany/app/web/WebSearchAdapter$5;

    .line 725
    .line 726
    invoke-direct {v2, v0}, Lcom/mycompany/app/web/WebSearchAdapter$5;-><init>(Lcom/mycompany/app/web/WebSearchAdapter;)V

    .line 727
    .line 728
    .line 729
    invoke-virtual {v3, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 730
    .line 731
    .line 732
    new-instance v2, Lcom/mycompany/app/web/WebSearchAdapter$6;

    .line 733
    .line 734
    invoke-direct {v2, v0}, Lcom/mycompany/app/web/WebSearchAdapter$6;-><init>(Lcom/mycompany/app/web/WebSearchAdapter;)V

    .line 735
    .line 736
    .line 737
    invoke-virtual {v3, v2}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 738
    .line 739
    .line 740
    :goto_f
    if-eqz v7, :cond_21

    .line 741
    .line 742
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->selector_list_back_dark:I

    .line 743
    .line 744
    invoke-virtual {v3, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 745
    .line 746
    .line 747
    goto :goto_10

    .line 748
    :cond_21
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->selector_list_back:I

    .line 749
    .line 750
    invoke-virtual {v3, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 751
    .line 752
    .line 753
    :goto_10
    invoke-static {}, Lcom/mycompany/app/main/MainUtil;->l1()I

    .line 754
    .line 755
    .line 756
    move-result v2

    .line 757
    invoke-virtual {v3, v2}, Lcom/mycompany/app/view/MyFilterRelative;->setFilterColor(I)V

    .line 758
    .line 759
    .line 760
    invoke-virtual {v0, v1, v3}, Lcom/mycompany/app/web/WebSearchAdapter;->A(ILcom/mycompany/app/view/MyFilterRelative;)V

    .line 761
    .line 762
    .line 763
    return-void
.end method

.method public final o(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 16

    .line 1
    move/from16 v0, p2

    .line 2
    .line 3
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_0

    .line 9
    .line 10
    return-object v2

    .line 11
    :cond_0
    const/4 v3, -0x1

    .line 12
    const/4 v4, 0x3

    .line 13
    if-lt v0, v4, :cond_1

    .line 14
    .line 15
    new-instance v2, Lcom/mycompany/app/view/MyFilterRelative;

    .line 16
    .line 17
    invoke-direct {v2, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 18
    .line 19
    .line 20
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    .line 21
    .line 22
    sub-int/2addr v0, v4

    .line 23
    invoke-direct {v1, v3, v0}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 27
    .line 28
    .line 29
    new-instance v0, Lcom/mycompany/app/web/WebSearchAdapter$SearchHolder;

    .line 30
    .line 31
    invoke-direct {v0, v2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 32
    .line 33
    .line 34
    iput-object v2, v0, Lcom/mycompany/app/web/WebSearchAdapter$SearchHolder;->u:Lcom/mycompany/app/view/MyFilterRelative;

    .line 35
    .line 36
    return-object v0

    .line 37
    :cond_1
    new-instance v0, Lcom/mycompany/app/view/MyFilterRelative;

    .line 38
    .line 39
    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 40
    .line 41
    .line 42
    sget v4, Lcom/mycompany/app/main/MainApp;->h1:I

    .line 43
    .line 44
    invoke-virtual {v0, v4}, Landroid/view/View;->setMinimumHeight(I)V

    .line 45
    .line 46
    .line 47
    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    .line 48
    .line 49
    const/4 v5, -0x2

    .line 50
    invoke-direct {v4, v3, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 54
    .line 55
    .line 56
    new-instance v4, Lcom/mycompany/app/view/MyRoundImage;

    .line 57
    .line 58
    invoke-direct {v4, v1}, Lcom/mycompany/app/view/MyRoundImage;-><init>(Landroid/content/Context;)V

    .line 59
    .line 60
    .line 61
    const/high16 v6, 0x41c00000    # 24.0f

    .line 62
    .line 63
    invoke-static {v1, v6}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 64
    .line 65
    .line 66
    move-result v6

    .line 67
    float-to-int v6, v6

    .line 68
    int-to-float v7, v6

    .line 69
    const/high16 v8, 0x40000000    # 2.0f

    .line 70
    .line 71
    div-float/2addr v7, v8

    .line 72
    float-to-int v7, v7

    .line 73
    sget-object v8, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    .line 74
    .line 75
    invoke-virtual {v4, v8}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 76
    .line 77
    .line 78
    sget v8, Lcom/mycompany/app/main/MainApp;->G1:I

    .line 79
    .line 80
    invoke-virtual {v4, v8}, Lcom/mycompany/app/view/MyRoundImage;->setRoundRadius(I)V

    .line 81
    .line 82
    .line 83
    int-to-float v8, v7

    .line 84
    invoke-virtual {v4, v8}, Lcom/mycompany/app/view/MyRoundImage;->setCircleRadius(F)V

    .line 85
    .line 86
    .line 87
    new-instance v8, Landroid/widget/RelativeLayout$LayoutParams;

    .line 88
    .line 89
    invoke-direct {v8, v6, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 90
    .line 91
    .line 92
    sget v6, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 93
    .line 94
    iput v6, v8, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 95
    .line 96
    invoke-virtual {v8, v7}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {v0, v4, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 100
    .line 101
    .line 102
    new-instance v6, Landroid/widget/FrameLayout;

    .line 103
    .line 104
    invoke-direct {v6, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 105
    .line 106
    .line 107
    sget v7, Lnet/kaki87/soul2/testing/R$id;->search_item_frame:I

    .line 108
    .line 109
    invoke-virtual {v6, v7}, Landroid/view/View;->setId(I)V

    .line 110
    .line 111
    .line 112
    new-instance v8, Landroid/widget/RelativeLayout$LayoutParams;

    .line 113
    .line 114
    sget v9, Lcom/mycompany/app/main/MainApp;->h1:I

    .line 115
    .line 116
    invoke-direct {v8, v5, v9}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 117
    .line 118
    .line 119
    const/16 v9, 0x15

    .line 120
    .line 121
    invoke-virtual {v8, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 122
    .line 123
    .line 124
    invoke-virtual {v0, v6, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 125
    .line 126
    .line 127
    new-instance v8, Lcom/mycompany/app/view/MyButtonImage;

    .line 128
    .line 129
    invoke-direct {v8, v1}, Lcom/mycompany/app/view/MyButtonImage;-><init>(Landroid/content/Context;)V

    .line 130
    .line 131
    .line 132
    sget-object v9, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    .line 133
    .line 134
    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 135
    .line 136
    .line 137
    const/16 v10, 0x8

    .line 138
    .line 139
    invoke-virtual {v8, v10}, Lcom/mycompany/app/view/MyButtonImage;->setVisibility(I)V

    .line 140
    .line 141
    .line 142
    new-instance v11, Landroid/widget/FrameLayout$LayoutParams;

    .line 143
    .line 144
    sget v12, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 145
    .line 146
    sget v13, Lcom/mycompany/app/main/MainApp;->h1:I

    .line 147
    .line 148
    invoke-direct {v11, v12, v13}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 149
    .line 150
    .line 151
    const v12, 0x800005

    .line 152
    .line 153
    .line 154
    iput v12, v11, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 155
    .line 156
    sget v13, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 157
    .line 158
    invoke-virtual {v11, v13}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 159
    .line 160
    .line 161
    invoke-virtual {v6, v8, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 162
    .line 163
    .line 164
    invoke-static {v1, v9}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->p(Landroid/content/Context;Landroid/widget/ImageView$ScaleType;)Lcom/mycompany/app/view/MyButtonImage;

    .line 165
    .line 166
    .line 167
    move-result-object v9

    .line 168
    new-instance v11, Landroid/widget/FrameLayout$LayoutParams;

    .line 169
    .line 170
    sget v13, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 171
    .line 172
    sget v14, Lcom/mycompany/app/main/MainApp;->h1:I

    .line 173
    .line 174
    invoke-direct {v11, v13, v14}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 175
    .line 176
    .line 177
    iput v12, v11, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 178
    .line 179
    invoke-virtual {v6, v9, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 180
    .line 181
    .line 182
    new-instance v11, Landroid/widget/LinearLayout;

    .line 183
    .line 184
    invoke-direct {v11, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 185
    .line 186
    .line 187
    sget v12, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 188
    .line 189
    const/4 v13, 0x0

    .line 190
    invoke-virtual {v11, v13, v12, v13, v12}, Landroid/view/View;->setPadding(IIII)V

    .line 191
    .line 192
    .line 193
    const/4 v12, 0x1

    .line 194
    invoke-virtual {v11, v12}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 195
    .line 196
    .line 197
    new-instance v13, Landroid/widget/RelativeLayout$LayoutParams;

    .line 198
    .line 199
    invoke-direct {v13, v3, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 200
    .line 201
    .line 202
    const/16 v14, 0x10

    .line 203
    .line 204
    invoke-virtual {v13, v14, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 205
    .line 206
    .line 207
    const/16 v7, 0xf

    .line 208
    .line 209
    invoke-virtual {v13, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 210
    .line 211
    .line 212
    const/high16 v7, 0x42500000    # 52.0f

    .line 213
    .line 214
    invoke-static {v1, v7}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 215
    .line 216
    .line 217
    move-result v7

    .line 218
    float-to-int v7, v7

    .line 219
    invoke-virtual {v13, v7}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 220
    .line 221
    .line 222
    invoke-virtual {v0, v11, v13}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 223
    .line 224
    .line 225
    new-instance v7, Landroidx/appcompat/widget/AppCompatTextView;

    .line 226
    .line 227
    invoke-direct {v7, v1, v2}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 228
    .line 229
    .line 230
    invoke-virtual {v7, v12}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 231
    .line 232
    .line 233
    const/high16 v13, 0x41800000    # 16.0f

    .line 234
    .line 235
    invoke-virtual {v7, v12, v13}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 236
    .line 237
    .line 238
    invoke-virtual {v11, v7, v5, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 239
    .line 240
    .line 241
    new-instance v13, Landroidx/appcompat/widget/AppCompatTextView;

    .line 242
    .line 243
    invoke-direct {v13, v1, v2}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 244
    .line 245
    .line 246
    invoke-virtual {v13, v12}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 247
    .line 248
    .line 249
    const/high16 v15, 0x41600000    # 14.0f

    .line 250
    .line 251
    invoke-virtual {v13, v12, v15}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 252
    .line 253
    .line 254
    new-instance v15, Landroid/widget/LinearLayout$LayoutParams;

    .line 255
    .line 256
    invoke-direct {v15, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 257
    .line 258
    .line 259
    sget v5, Lcom/mycompany/app/main/MainApp;->G1:I

    .line 260
    .line 261
    iput v5, v15, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 262
    .line 263
    invoke-virtual {v11, v13, v15}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 264
    .line 265
    .line 266
    new-instance v5, Lcom/mycompany/app/view/MyRoundBack;

    .line 267
    .line 268
    invoke-direct {v5, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 269
    .line 270
    .line 271
    invoke-virtual {v5, v10}, Landroid/view/View;->setVisibility(I)V

    .line 272
    .line 273
    .line 274
    sget v15, Lcom/mycompany/app/main/MainApp;->h1:I

    .line 275
    .line 276
    invoke-virtual {v0, v5, v3, v15}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 277
    .line 278
    .line 279
    new-instance v3, Landroidx/appcompat/widget/AppCompatTextView;

    .line 280
    .line 281
    invoke-direct {v3, v1, v2}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 282
    .line 283
    .line 284
    invoke-virtual {v3, v14}, Landroid/widget/TextView;->setGravity(I)V

    .line 285
    .line 286
    .line 287
    invoke-virtual {v3, v12}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 288
    .line 289
    .line 290
    const/high16 v2, 0x41600000    # 14.0f

    .line 291
    .line 292
    invoke-virtual {v3, v12, v2}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 293
    .line 294
    .line 295
    invoke-virtual {v3, v10}, Landroid/view/View;->setVisibility(I)V

    .line 296
    .line 297
    .line 298
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 299
    .line 300
    sget v10, Lcom/mycompany/app/main/MainApp;->h1:I

    .line 301
    .line 302
    const/4 v12, -0x2

    .line 303
    invoke-direct {v2, v12, v10}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 304
    .line 305
    .line 306
    const/high16 v10, 0x41400000    # 12.0f

    .line 307
    .line 308
    invoke-static {v1, v10}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 309
    .line 310
    .line 311
    move-result v1

    .line 312
    float-to-int v1, v1

    .line 313
    invoke-virtual {v2, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 314
    .line 315
    .line 316
    invoke-virtual {v0, v3, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 317
    .line 318
    .line 319
    new-instance v1, Lcom/mycompany/app/web/WebSearchAdapter$SearchHolder;

    .line 320
    .line 321
    invoke-direct {v1, v0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 322
    .line 323
    .line 324
    iput-object v0, v1, Lcom/mycompany/app/web/WebSearchAdapter$SearchHolder;->u:Lcom/mycompany/app/view/MyFilterRelative;

    .line 325
    .line 326
    iput-object v4, v1, Lcom/mycompany/app/web/WebSearchAdapter$SearchHolder;->v:Lcom/mycompany/app/view/MyRoundImage;

    .line 327
    .line 328
    iput-object v11, v1, Lcom/mycompany/app/web/WebSearchAdapter$SearchHolder;->w:Landroid/widget/LinearLayout;

    .line 329
    .line 330
    iput-object v7, v1, Lcom/mycompany/app/web/WebSearchAdapter$SearchHolder;->x:Landroidx/appcompat/widget/AppCompatTextView;

    .line 331
    .line 332
    iput-object v13, v1, Lcom/mycompany/app/web/WebSearchAdapter$SearchHolder;->y:Landroidx/appcompat/widget/AppCompatTextView;

    .line 333
    .line 334
    iput-object v6, v1, Lcom/mycompany/app/web/WebSearchAdapter$SearchHolder;->z:Landroid/widget/FrameLayout;

    .line 335
    .line 336
    iput-object v8, v1, Lcom/mycompany/app/web/WebSearchAdapter$SearchHolder;->A:Lcom/mycompany/app/view/MyButtonImage;

    .line 337
    .line 338
    iput-object v9, v1, Lcom/mycompany/app/web/WebSearchAdapter$SearchHolder;->B:Lcom/mycompany/app/view/MyButtonImage;

    .line 339
    .line 340
    iput-object v5, v1, Lcom/mycompany/app/web/WebSearchAdapter$SearchHolder;->C:Lcom/mycompany/app/view/MyRoundBack;

    .line 341
    .line 342
    iput-object v3, v1, Lcom/mycompany/app/web/WebSearchAdapter$SearchHolder;->D:Landroidx/appcompat/widget/AppCompatTextView;

    .line 343
    .line 344
    move-object/from16 v0, p0

    .line 345
    .line 346
    iget-boolean v2, v0, Lcom/mycompany/app/web/WebSearchAdapter;->p:Z

    .line 347
    .line 348
    invoke-static {v2}, Lcom/mycompany/app/main/MainUtil;->k5(Z)Z

    .line 349
    .line 350
    .line 351
    move-result v2

    .line 352
    if-eqz v2, :cond_2

    .line 353
    .line 354
    iget-object v2, v1, Lcom/mycompany/app/web/WebSearchAdapter$SearchHolder;->x:Landroidx/appcompat/widget/AppCompatTextView;

    .line 355
    .line 356
    const v3, -0x3e3e3f

    .line 357
    .line 358
    .line 359
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 360
    .line 361
    .line 362
    iget-object v2, v1, Lcom/mycompany/app/web/WebSearchAdapter$SearchHolder;->y:Landroidx/appcompat/widget/AppCompatTextView;

    .line 363
    .line 364
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 365
    .line 366
    .line 367
    return-object v1

    .line 368
    :cond_2
    iget-object v2, v1, Lcom/mycompany/app/web/WebSearchAdapter$SearchHolder;->x:Landroidx/appcompat/widget/AppCompatTextView;

    .line 369
    .line 370
    const/high16 v3, -0x1000000

    .line 371
    .line 372
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 373
    .line 374
    .line 375
    iget-object v2, v1, Lcom/mycompany/app/web/WebSearchAdapter$SearchHolder;->y:Landroidx/appcompat/widget/AppCompatTextView;

    .line 376
    .line 377
    const v3, -0x9e9e9f

    .line 378
    .line 379
    .line 380
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 381
    .line 382
    .line 383
    return-object v1
.end method

.method public final x(I)Lcom/mycompany/app/web/WebSearchAdapter$SearchItem;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebSearchAdapter;->m:Ljava/util/ArrayList;

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
    iget-object v0, p0, Lcom/mycompany/app/web/WebSearchAdapter;->m:Ljava/util/ArrayList;

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

.method public final y()Ljava/util/regex/Pattern;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebSearchAdapter;->v:Ljava/util/regex/Pattern;

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
    iput-object v0, p0, Lcom/mycompany/app/web/WebSearchAdapter;->v:Ljava/util/regex/Pattern;

    .line 12
    .line 13
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/web/WebSearchAdapter;->v:Ljava/util/regex/Pattern;

    .line 14
    .line 15
    return-object v0
.end method

.method public final z(Ljava/lang/Runnable;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebSearchAdapter;->u:Ljava/util/concurrent/ExecutorService;

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
    iget-object v0, p0, Lcom/mycompany/app/web/WebSearchAdapter;->d:Lcom/mycompany/app/web/WebViewActivity;

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
    iput-object v0, p0, Lcom/mycompany/app/web/WebSearchAdapter;->u:Ljava/util/concurrent/ExecutorService;

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
