.class Lcom/mycompany/app/main/MainListView$83;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/main/MainListView;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/main/MainListView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/main/MainListView$83;->c:Lcom/mycompany/app/main/MainListView;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/main/MainListView$83;->c:Lcom/mycompany/app/main/MainListView;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/main/MainListView;->b:Landroid/content/Context;

    .line 4
    .line 5
    iget-object v2, v0, Lcom/mycompany/app/main/MainListView;->h0:Lcom/mycompany/app/main/MainListAdapter;

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    if-nez v2, :cond_0

    .line 9
    .line 10
    goto :goto_2

    .line 11
    :cond_0
    iget v4, v0, Lcom/mycompany/app/main/MainListView;->B1:I

    .line 12
    .line 13
    invoke-virtual {v2, v4}, Lcom/mycompany/app/main/MainListAdapter;->q(I)Ljava/util/List;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    if-eqz v2, :cond_5

    .line 18
    .line 19
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    .line 20
    .line 21
    .line 22
    move-result v4

    .line 23
    if-eqz v4, :cond_1

    .line 24
    .line 25
    goto :goto_2

    .line 26
    :cond_1
    iget-boolean v4, v0, Lcom/mycompany/app/main/MainListView;->C1:Z

    .line 27
    .line 28
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 33
    .line 34
    .line 35
    move-result v5

    .line 36
    if-eqz v5, :cond_4

    .line 37
    .line 38
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v5

    .line 42
    check-cast v5, Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 43
    .line 44
    iget-boolean v6, v5, Lcom/mycompany/app/main/MainItem$ChildItem;->M:Z

    .line 45
    .line 46
    if-ne v6, v4, :cond_2

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_2
    iput-boolean v4, v5, Lcom/mycompany/app/main/MainItem$ChildItem;->M:Z

    .line 50
    .line 51
    iget-wide v6, v5, Lcom/mycompany/app/main/MainItem$ChildItem;->y:J

    .line 52
    .line 53
    invoke-static {v1, v6, v7, v4}, Lcom/mycompany/app/db/book/DbBookUser;->i(Landroid/content/Context;JZ)V

    .line 54
    .line 55
    .line 56
    invoke-static {v1}, Lcom/mycompany/app/data/book/DataBookUser;->k(Landroid/content/Context;)Lcom/mycompany/app/data/book/DataBookUser;

    .line 57
    .line 58
    .line 59
    move-result-object v3

    .line 60
    iget-wide v6, v5, Lcom/mycompany/app/main/MainItem$ChildItem;->y:J

    .line 61
    .line 62
    iget-boolean v5, v5, Lcom/mycompany/app/main/MainItem$ChildItem;->M:Z

    .line 63
    .line 64
    invoke-virtual {v3, v6, v7}, Lcom/mycompany/app/data/book/DataBookList;->e(J)Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 65
    .line 66
    .line 67
    move-result-object v3

    .line 68
    if-nez v3, :cond_3

    .line 69
    .line 70
    goto :goto_1

    .line 71
    :cond_3
    iput-boolean v5, v3, Lcom/mycompany/app/main/MainItem$ChildItem;->M:Z

    .line 72
    .line 73
    :goto_1
    const/4 v3, 0x1

    .line 74
    goto :goto_0

    .line 75
    :cond_4
    if-eqz v3, :cond_5

    .line 76
    .line 77
    const-string v2, "sb_user_filter_path"

    .line 78
    .line 79
    invoke-static {v1, v2, v2}, Lcom/mycompany/app/db/book/DbBookFilter;->i(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 80
    .line 81
    .line 82
    move-result-object v2

    .line 83
    invoke-static {v1}, Lcom/mycompany/app/data/book/DataBookFilter;->k(Landroid/content/Context;)Lcom/mycompany/app/data/book/DataBookFilter;

    .line 84
    .line 85
    .line 86
    move-result-object v1

    .line 87
    invoke-virtual {v1, v2}, Lcom/mycompany/app/data/book/DataBookList;->j(Lcom/mycompany/app/main/MainItem$ChildItem;)V

    .line 88
    .line 89
    .line 90
    :cond_5
    :goto_2
    if-nez v3, :cond_7

    .line 91
    .line 92
    iget-object v0, v0, Lcom/mycompany/app/main/MainListView;->M:Lcom/mycompany/app/fragment/FragmentExpandView;

    .line 93
    .line 94
    if-nez v0, :cond_6

    .line 95
    .line 96
    goto :goto_3

    .line 97
    :cond_6
    new-instance v1, Lcom/mycompany/app/main/MainListView$83$1;

    .line 98
    .line 99
    invoke-direct {v1, p0}, Lcom/mycompany/app/main/MainListView$83$1;-><init>(Lcom/mycompany/app/main/MainListView$83;)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 103
    .line 104
    .line 105
    return-void

    .line 106
    :cond_7
    iget-object v0, v0, Lcom/mycompany/app/main/MainListView;->M:Lcom/mycompany/app/fragment/FragmentExpandView;

    .line 107
    .line 108
    if-nez v0, :cond_8

    .line 109
    .line 110
    :goto_3
    return-void

    .line 111
    :cond_8
    new-instance v1, Lcom/mycompany/app/main/MainListView$83$2;

    .line 112
    .line 113
    invoke-direct {v1, p0}, Lcom/mycompany/app/main/MainListView$83$2;-><init>(Lcom/mycompany/app/main/MainListView$83;)V

    .line 114
    .line 115
    .line 116
    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 117
    .line 118
    .line 119
    return-void
.end method
