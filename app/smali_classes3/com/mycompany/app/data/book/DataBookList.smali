.class public abstract Lcom/mycompany/app/data/book/DataBookList;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ljava/util/List;

.field public b:Ljava/util/List;


# virtual methods
.method public final a(Lcom/mycompany/app/main/MainItem$ChildItem;)V
    .locals 4

    .line 1
    if-eqz p1, :cond_5

    .line 2
    .line 3
    iget-wide v0, p1, Lcom/mycompany/app/main/MainItem$ChildItem;->y:J

    .line 4
    .line 5
    const-wide/16 v2, 0x0

    .line 6
    .line 7
    cmp-long v2, v0, v2

    .line 8
    .line 9
    if-gtz v2, :cond_0

    .line 10
    .line 11
    goto :goto_1

    .line 12
    :cond_0
    iget v2, p1, Lcom/mycompany/app/main/MainItem$ChildItem;->a:I

    .line 13
    .line 14
    const/16 v3, 0x8

    .line 15
    .line 16
    if-ne v2, v3, :cond_1

    .line 17
    .line 18
    neg-long v0, v0

    .line 19
    :cond_1
    iget-object v2, p0, Lcom/mycompany/app/data/book/DataBookList;->a:Ljava/util/List;

    .line 20
    .line 21
    if-nez v2, :cond_2

    .line 22
    .line 23
    new-instance v2, Ljava/util/ArrayList;

    .line 24
    .line 25
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 26
    .line 27
    .line 28
    iput-object v2, p0, Lcom/mycompany/app/data/book/DataBookList;->a:Ljava/util/List;

    .line 29
    .line 30
    :cond_2
    iget-object v2, p0, Lcom/mycompany/app/data/book/DataBookList;->b:Ljava/util/List;

    .line 31
    .line 32
    if-nez v2, :cond_3

    .line 33
    .line 34
    new-instance v2, Ljava/util/ArrayList;

    .line 35
    .line 36
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 37
    .line 38
    .line 39
    iput-object v2, p0, Lcom/mycompany/app/data/book/DataBookList;->b:Ljava/util/List;

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_3
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 43
    .line 44
    .line 45
    move-result-object v3

    .line 46
    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    move-result v2

    .line 50
    if-eqz v2, :cond_4

    .line 51
    .line 52
    goto :goto_1

    .line 53
    :cond_4
    :goto_0
    iget-object v2, p0, Lcom/mycompany/app/data/book/DataBookList;->a:Ljava/util/List;

    .line 54
    .line 55
    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    iget-object p1, p0, Lcom/mycompany/app/data/book/DataBookList;->b:Ljava/util/List;

    .line 59
    .line 60
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 65
    .line 66
    .line 67
    :cond_5
    :goto_1
    return-void
.end method

.method public final b(J)V
    .locals 2

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    cmp-long v0, p1, v0

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/data/book/DataBookList;->b:Ljava/util/List;

    .line 9
    .line 10
    if-eqz v0, :cond_4

    .line 11
    .line 12
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_1
    iget-object v0, p0, Lcom/mycompany/app/data/book/DataBookList;->b:Ljava/util/List;

    .line 20
    .line 21
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    if-gez p1, :cond_2

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_2
    iget-object p2, p0, Lcom/mycompany/app/data/book/DataBookList;->a:Ljava/util/List;

    .line 33
    .line 34
    if-eqz p2, :cond_3

    .line 35
    .line 36
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 37
    .line 38
    .line 39
    move-result p2

    .line 40
    if-ge p1, p2, :cond_3

    .line 41
    .line 42
    iget-object p2, p0, Lcom/mycompany/app/data/book/DataBookList;->a:Ljava/util/List;

    .line 43
    .line 44
    invoke-interface {p2, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    :cond_3
    iget-object p2, p0, Lcom/mycompany/app/data/book/DataBookList;->b:Ljava/util/List;

    .line 48
    .line 49
    if-eqz p2, :cond_4

    .line 50
    .line 51
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 52
    .line 53
    .line 54
    move-result p2

    .line 55
    if-ge p1, p2, :cond_4

    .line 56
    .line 57
    iget-object p2, p0, Lcom/mycompany/app/data/book/DataBookList;->b:Ljava/util/List;

    .line 58
    .line 59
    invoke-interface {p2, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    :cond_4
    :goto_0
    return-void
.end method

.method public final c()V
    .locals 4

    .line 1
    const-string v0, "sb_user_filter_path"

    .line 2
    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    goto :goto_1

    .line 10
    :cond_0
    iget-object v1, p0, Lcom/mycompany/app/data/book/DataBookList;->a:Ljava/util/List;

    .line 11
    .line 12
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    if-eqz v2, :cond_3

    .line 21
    .line 22
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    check-cast v2, Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 27
    .line 28
    if-nez v2, :cond_2

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_2
    iget-object v3, v2, Lcom/mycompany/app/main/MainItem$ChildItem;->g:Ljava/lang/String;

    .line 32
    .line 33
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result v3

    .line 37
    if-eqz v3, :cond_1

    .line 38
    .line 39
    iget-wide v0, v2, Lcom/mycompany/app/main/MainItem$ChildItem;->y:J

    .line 40
    .line 41
    invoke-virtual {p0, v0, v1}, Lcom/mycompany/app/data/book/DataBookList;->b(J)V

    .line 42
    .line 43
    .line 44
    :cond_3
    :goto_1
    return-void
.end method

.method public final d()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/data/book/DataBookList;->b:Ljava/util/List;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    return v0

    .line 7
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    return v0
.end method

.method public final e(J)Lcom/mycompany/app/main/MainItem$ChildItem;
    .locals 2

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    cmp-long v0, p1, v0

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    if-gtz v0, :cond_0

    .line 7
    .line 8
    return-object v1

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/data/book/DataBookList;->b:Ljava/util/List;

    .line 10
    .line 11
    if-eqz v0, :cond_3

    .line 12
    .line 13
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_1
    iget-object v0, p0, Lcom/mycompany/app/data/book/DataBookList;->b:Ljava/util/List;

    .line 21
    .line 22
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    if-ltz p1, :cond_3

    .line 31
    .line 32
    iget-object p2, p0, Lcom/mycompany/app/data/book/DataBookList;->a:Ljava/util/List;

    .line 33
    .line 34
    if-eqz p2, :cond_3

    .line 35
    .line 36
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 37
    .line 38
    .line 39
    move-result p2

    .line 40
    if-lt p1, p2, :cond_2

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_2
    iget-object p2, p0, Lcom/mycompany/app/data/book/DataBookList;->a:Ljava/util/List;

    .line 44
    .line 45
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    check-cast p1, Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 50
    .line 51
    return-object p1

    .line 52
    :cond_3
    :goto_0
    return-object v1
.end method

.method public final f()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/mycompany/app/data/book/DataBookList;->a:Ljava/util/List;

    .line 3
    .line 4
    iput-object v0, p0, Lcom/mycompany/app/data/book/DataBookList;->b:Ljava/util/List;

    .line 5
    .line 6
    return-void
.end method

.method public final g(Landroid/content/Context;Z)V
    .locals 1

    .line 1
    invoke-static {p1}, Lcom/mycompany/app/data/book/DataBookSearch;->a(Landroid/content/Context;)Lcom/mycompany/app/data/book/DataBookSearch;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    if-eqz p2, :cond_1

    .line 10
    .line 11
    iget-object p2, p1, Lcom/mycompany/app/data/book/DataBookSearch;->a:Ljava/util/List;

    .line 12
    .line 13
    iput-object p2, p0, Lcom/mycompany/app/data/book/DataBookList;->a:Ljava/util/List;

    .line 14
    .line 15
    iget-object p2, p1, Lcom/mycompany/app/data/book/DataBookSearch;->b:Ljava/util/List;

    .line 16
    .line 17
    iput-object p2, p0, Lcom/mycompany/app/data/book/DataBookList;->b:Ljava/util/List;

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_1
    iput-object v0, p0, Lcom/mycompany/app/data/book/DataBookList;->a:Ljava/util/List;

    .line 21
    .line 22
    iput-object v0, p0, Lcom/mycompany/app/data/book/DataBookList;->b:Ljava/util/List;

    .line 23
    .line 24
    :goto_0
    iput-object v0, p1, Lcom/mycompany/app/data/book/DataBookSearch;->a:Ljava/util/List;

    .line 25
    .line 26
    iput-object v0, p1, Lcom/mycompany/app/data/book/DataBookSearch;->b:Ljava/util/List;

    .line 27
    .line 28
    return-void
.end method

.method public final h(ILjava/lang/String;Ljava/lang/String;J)V
    .locals 2

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    cmp-long v0, p4, v0

    .line 4
    .line 5
    if-lez v0, :cond_6

    .line 6
    .line 7
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/data/book/DataBookList;->a:Ljava/util/List;

    .line 15
    .line 16
    if-eqz v0, :cond_6

    .line 17
    .line 18
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_1
    iget-object v0, p0, Lcom/mycompany/app/data/book/DataBookList;->b:Ljava/util/List;

    .line 26
    .line 27
    if-eqz v0, :cond_6

    .line 28
    .line 29
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-eqz v0, :cond_2

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_2
    const/16 v0, 0x8

    .line 37
    .line 38
    if-ne p1, v0, :cond_3

    .line 39
    .line 40
    neg-long p4, p4

    .line 41
    :cond_3
    iget-object v1, p0, Lcom/mycompany/app/data/book/DataBookList;->b:Ljava/util/List;

    .line 42
    .line 43
    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 44
    .line 45
    .line 46
    move-result-object p4

    .line 47
    invoke-interface {v1, p4}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    .line 48
    .line 49
    .line 50
    move-result p4

    .line 51
    if-ltz p4, :cond_6

    .line 52
    .line 53
    iget-object p5, p0, Lcom/mycompany/app/data/book/DataBookList;->a:Ljava/util/List;

    .line 54
    .line 55
    invoke-interface {p5}, Ljava/util/List;->size()I

    .line 56
    .line 57
    .line 58
    move-result p5

    .line 59
    if-lt p4, p5, :cond_4

    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_4
    iget-object p5, p0, Lcom/mycompany/app/data/book/DataBookList;->a:Ljava/util/List;

    .line 63
    .line 64
    invoke-interface {p5, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object p4

    .line 68
    check-cast p4, Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 69
    .line 70
    iput p1, p4, Lcom/mycompany/app/main/MainItem$ChildItem;->a:I

    .line 71
    .line 72
    iput-object p2, p4, Lcom/mycompany/app/main/MainItem$ChildItem;->g:Ljava/lang/String;

    .line 73
    .line 74
    if-ne p1, v0, :cond_5

    .line 75
    .line 76
    invoke-static {p3}, Lcom/mycompany/app/main/MainUtil;->k1(Ljava/lang/String;)Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    iput-object p1, p4, Lcom/mycompany/app/main/MainItem$ChildItem;->h:Ljava/lang/String;

    .line 81
    .line 82
    invoke-static {p2}, Lcom/mycompany/app/main/MainUtil;->p4(Ljava/lang/String;)Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    iput-object p1, p4, Lcom/mycompany/app/main/MainItem$ChildItem;->z:Ljava/lang/String;

    .line 87
    .line 88
    return-void

    .line 89
    :cond_5
    iput-object p3, p4, Lcom/mycompany/app/main/MainItem$ChildItem;->h:Ljava/lang/String;

    .line 90
    .line 91
    :cond_6
    :goto_0
    return-void
.end method

.method public final i(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-static {p1}, Lcom/mycompany/app/data/book/DataBookSearch;->a(Landroid/content/Context;)Lcom/mycompany/app/data/book/DataBookSearch;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iget-object v0, p0, Lcom/mycompany/app/data/book/DataBookList;->a:Ljava/util/List;

    .line 6
    .line 7
    iget-object v1, p0, Lcom/mycompany/app/data/book/DataBookList;->b:Ljava/util/List;

    .line 8
    .line 9
    iput-object v0, p1, Lcom/mycompany/app/data/book/DataBookSearch;->a:Ljava/util/List;

    .line 10
    .line 11
    iput-object v1, p1, Lcom/mycompany/app/data/book/DataBookSearch;->b:Ljava/util/List;

    .line 12
    .line 13
    return-void
.end method

.method public final j(Lcom/mycompany/app/main/MainItem$ChildItem;)V
    .locals 4

    .line 1
    if-eqz p1, :cond_6

    .line 2
    .line 3
    iget-wide v0, p1, Lcom/mycompany/app/main/MainItem$ChildItem;->y:J

    .line 4
    .line 5
    const-wide/16 v2, 0x0

    .line 6
    .line 7
    cmp-long v0, v0, v2

    .line 8
    .line 9
    if-gtz v0, :cond_0

    .line 10
    .line 11
    goto :goto_3

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/data/book/DataBookList;->a:Ljava/util/List;

    .line 13
    .line 14
    if-eqz v0, :cond_5

    .line 15
    .line 16
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-nez v0, :cond_5

    .line 21
    .line 22
    iget-object v0, p0, Lcom/mycompany/app/data/book/DataBookList;->b:Ljava/util/List;

    .line 23
    .line 24
    if-eqz v0, :cond_5

    .line 25
    .line 26
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-eqz v0, :cond_1

    .line 31
    .line 32
    goto :goto_2

    .line 33
    :cond_1
    iget v0, p1, Lcom/mycompany/app/main/MainItem$ChildItem;->a:I

    .line 34
    .line 35
    const/16 v1, 0x8

    .line 36
    .line 37
    if-ne v0, v1, :cond_2

    .line 38
    .line 39
    iget-wide v0, p1, Lcom/mycompany/app/main/MainItem$ChildItem;->y:J

    .line 40
    .line 41
    neg-long v0, v0

    .line 42
    goto :goto_0

    .line 43
    :cond_2
    iget-wide v0, p1, Lcom/mycompany/app/main/MainItem$ChildItem;->y:J

    .line 44
    .line 45
    :goto_0
    iget-object v2, p0, Lcom/mycompany/app/data/book/DataBookList;->b:Ljava/util/List;

    .line 46
    .line 47
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    invoke-interface {v2, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    if-ltz v0, :cond_4

    .line 56
    .line 57
    iget-object v1, p0, Lcom/mycompany/app/data/book/DataBookList;->a:Ljava/util/List;

    .line 58
    .line 59
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 60
    .line 61
    .line 62
    move-result v1

    .line 63
    if-lt v0, v1, :cond_3

    .line 64
    .line 65
    goto :goto_1

    .line 66
    :cond_3
    iget-object v1, p0, Lcom/mycompany/app/data/book/DataBookList;->a:Ljava/util/List;

    .line 67
    .line 68
    invoke-interface {v1, v0, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    return-void

    .line 72
    :cond_4
    :goto_1
    invoke-virtual {p0, p1}, Lcom/mycompany/app/data/book/DataBookList;->a(Lcom/mycompany/app/main/MainItem$ChildItem;)V

    .line 73
    .line 74
    .line 75
    return-void

    .line 76
    :cond_5
    :goto_2
    invoke-virtual {p0, p1}, Lcom/mycompany/app/data/book/DataBookList;->a(Lcom/mycompany/app/main/MainItem$ChildItem;)V

    .line 77
    .line 78
    .line 79
    :cond_6
    :goto_3
    return-void
.end method
