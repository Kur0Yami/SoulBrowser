.class Lcom/mycompany/app/main/MainListView$10;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    iput-object p1, p0, Lcom/mycompany/app/main/MainListView$10;->c:Lcom/mycompany/app/main/MainListView;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/main/MainListView$10;->c:Lcom/mycompany/app/main/MainListView;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/mycompany/app/main/MainListView;->K()Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    goto :goto_3

    .line 10
    :cond_0
    iget p1, v0, Lcom/mycompany/app/main/MainListView;->d:I

    .line 11
    .line 12
    const/16 v1, 0x19

    .line 13
    .line 14
    const/16 v2, 0x1b

    .line 15
    .line 16
    if-eq p1, v1, :cond_2

    .line 17
    .line 18
    if-ne p1, v2, :cond_1

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_1
    invoke-virtual {v0}, Lcom/mycompany/app/main/MainListView;->P()V

    .line 22
    .line 23
    .line 24
    return-void

    .line 25
    :cond_2
    :goto_0
    iget-object p1, v0, Lcom/mycompany/app/main/MainListView;->h0:Lcom/mycompany/app/main/MainListAdapter;

    .line 26
    .line 27
    if-nez p1, :cond_3

    .line 28
    .line 29
    goto :goto_3

    .line 30
    :cond_3
    iget-object v1, p1, Lcom/mycompany/app/main/MainListAdapter;->i:Ljava/util/List;

    .line 31
    .line 32
    const/4 v3, 0x0

    .line 33
    if-eqz v1, :cond_7

    .line 34
    .line 35
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    if-eqz v1, :cond_4

    .line 40
    .line 41
    goto :goto_2

    .line 42
    :cond_4
    new-instance v1, Ljava/util/ArrayList;

    .line 43
    .line 44
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 45
    .line 46
    .line 47
    iget-object p1, p1, Lcom/mycompany/app/main/MainListAdapter;->i:Ljava/util/List;

    .line 48
    .line 49
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    :cond_5
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 54
    .line 55
    .line 56
    move-result v4

    .line 57
    if-eqz v4, :cond_8

    .line 58
    .line 59
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v4

    .line 63
    check-cast v4, Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 64
    .line 65
    if-eqz v4, :cond_5

    .line 66
    .line 67
    iget v5, v4, Lcom/mycompany/app/main/MainItem$ChildItem;->b:I

    .line 68
    .line 69
    if-eqz v5, :cond_6

    .line 70
    .line 71
    goto :goto_1

    .line 72
    :cond_6
    iget-boolean v5, v4, Lcom/mycompany/app/main/MainItem$ChildItem;->M:Z

    .line 73
    .line 74
    if-eqz v5, :cond_5

    .line 75
    .line 76
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 77
    .line 78
    .line 79
    goto :goto_1

    .line 80
    :cond_7
    :goto_2
    move-object v1, v3

    .line 81
    :cond_8
    if-eqz v1, :cond_b

    .line 82
    .line 83
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 84
    .line 85
    .line 86
    move-result p1

    .line 87
    if-eqz p1, :cond_9

    .line 88
    .line 89
    goto :goto_3

    .line 90
    :cond_9
    iget p1, v0, Lcom/mycompany/app/main/MainListView;->d:I

    .line 91
    .line 92
    if-ne p1, v2, :cond_a

    .line 93
    .line 94
    invoke-virtual {v0, v1, v3, v3}, Lcom/mycompany/app/main/MainListView;->w0(Ljava/util/List;Lcom/mycompany/app/main/MainItem$ChildItem;Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    return-void

    .line 98
    :cond_a
    const/4 v3, 0x0

    .line 99
    const-wide/16 v4, -0x1

    .line 100
    .line 101
    const/4 v2, 0x0

    .line 102
    invoke-static/range {v0 .. v5}, Lcom/mycompany/app/main/MainListView;->j(Lcom/mycompany/app/main/MainListView;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;J)V

    .line 103
    .line 104
    .line 105
    :cond_b
    :goto_3
    return-void
.end method
