.class Lcom/mycompany/app/web/WebViewActivity$131;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Ljava/util/ArrayList;

.field public final synthetic f:Lcom/mycompany/app/web/WebViewActivity;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/web/WebViewActivity;Ljava/util/ArrayList;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/web/WebViewActivity$131;->f:Lcom/mycompany/app/web/WebViewActivity;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/mycompany/app/web/WebViewActivity$131;->c:Ljava/util/ArrayList;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebViewActivity$131;->f:Lcom/mycompany/app/web/WebViewActivity;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/web/WebViewActivity;->f1:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object v1, p0, Lcom/mycompany/app/web/WebViewActivity$131;->c:Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    const/4 v3, 0x0

    .line 13
    move v4, v3

    .line 14
    :cond_0
    :goto_0
    if-ge v4, v2, :cond_2

    .line 15
    .line 16
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v5

    .line 20
    add-int/lit8 v4, v4, 0x1

    .line 21
    .line 22
    check-cast v5, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;

    .line 23
    .line 24
    iget-object v6, p0, Lcom/mycompany/app/web/WebViewActivity$131;->f:Lcom/mycompany/app/web/WebViewActivity;

    .line 25
    .line 26
    iget-object v6, v6, Lcom/mycompany/app/web/WebViewActivity;->O2:Ljava/util/List;

    .line 27
    .line 28
    if-eqz v6, :cond_2

    .line 29
    .line 30
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    .line 31
    .line 32
    .line 33
    move-result v6

    .line 34
    if-eqz v6, :cond_1

    .line 35
    .line 36
    goto :goto_1

    .line 37
    :cond_1
    iget-object v6, p0, Lcom/mycompany/app/web/WebViewActivity$131;->f:Lcom/mycompany/app/web/WebViewActivity;

    .line 38
    .line 39
    invoke-virtual {v6, v5}, Lcom/mycompany/app/web/WebViewActivity;->y2(Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;)V

    .line 40
    .line 41
    .line 42
    iget-object v6, p0, Lcom/mycompany/app/web/WebViewActivity$131;->f:Lcom/mycompany/app/web/WebViewActivity;

    .line 43
    .line 44
    iget-object v6, v6, Lcom/mycompany/app/web/WebViewActivity;->O2:Ljava/util/List;

    .line 45
    .line 46
    invoke-interface {v6, v5}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    iget v5, v5, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->h:I

    .line 50
    .line 51
    iget-object v6, p0, Lcom/mycompany/app/web/WebViewActivity$131;->f:Lcom/mycompany/app/web/WebViewActivity;

    .line 52
    .line 53
    iget v6, v6, Lcom/mycompany/app/web/WebViewActivity;->P2:I

    .line 54
    .line 55
    if-gt v5, v6, :cond_0

    .line 56
    .line 57
    add-int/lit8 v3, v3, 0x1

    .line 58
    .line 59
    goto :goto_0

    .line 60
    :catchall_0
    move-exception v1

    .line 61
    goto :goto_2

    .line 62
    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/mycompany/app/web/WebViewActivity$131;->f:Lcom/mycompany/app/web/WebViewActivity;

    .line 63
    .line 64
    iget v2, v1, Lcom/mycompany/app/web/WebViewActivity;->P2:I

    .line 65
    .line 66
    sub-int/2addr v2, v3

    .line 67
    iput v2, v1, Lcom/mycompany/app/web/WebViewActivity;->P2:I

    .line 68
    .line 69
    invoke-virtual {v1}, Lcom/mycompany/app/web/WebViewActivity;->t8()V

    .line 70
    .line 71
    .line 72
    iget-object v1, p0, Lcom/mycompany/app/web/WebViewActivity$131;->f:Lcom/mycompany/app/web/WebViewActivity;

    .line 73
    .line 74
    invoke-virtual {v1}, Lcom/mycompany/app/web/WebViewActivity;->m3()Ljava/util/ArrayList;

    .line 75
    .line 76
    .line 77
    move-result-object v1

    .line 78
    iget-object v2, p0, Lcom/mycompany/app/web/WebViewActivity$131;->f:Lcom/mycompany/app/web/WebViewActivity;

    .line 79
    .line 80
    iget-object v2, v2, Lcom/mycompany/app/web/WebViewActivity;->i1:Landroid/content/Context;

    .line 81
    .line 82
    invoke-static {v2, v1}, Lcom/mycompany/app/db/book/DbBookTab;->u(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 83
    .line 84
    .line 85
    iget-object v1, p0, Lcom/mycompany/app/web/WebViewActivity$131;->f:Lcom/mycompany/app/web/WebViewActivity;

    .line 86
    .line 87
    iget-object v1, v1, Lcom/mycompany/app/web/WebViewActivity;->i1:Landroid/content/Context;

    .line 88
    .line 89
    iget-object v2, p0, Lcom/mycompany/app/web/WebViewActivity$131;->c:Ljava/util/ArrayList;

    .line 90
    .line 91
    invoke-static {v1, v2}, Lcom/mycompany/app/db/book/DbBookTab;->k(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 92
    .line 93
    .line 94
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 95
    iget-object v0, p0, Lcom/mycompany/app/web/WebViewActivity$131;->f:Lcom/mycompany/app/web/WebViewActivity;

    .line 96
    .line 97
    iget-object v0, v0, Lcom/mycompany/app/web/WebViewActivity;->f2:Lcom/mycompany/app/view/MyWebCoord;

    .line 98
    .line 99
    if-nez v0, :cond_3

    .line 100
    .line 101
    return-void

    .line 102
    :cond_3
    new-instance v1, Lcom/mycompany/app/web/WebViewActivity$131$1;

    .line 103
    .line 104
    invoke-direct {v1, p0}, Lcom/mycompany/app/web/WebViewActivity$131$1;-><init>(Lcom/mycompany/app/web/WebViewActivity$131;)V

    .line 105
    .line 106
    .line 107
    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 108
    .line 109
    .line 110
    return-void

    .line 111
    :goto_2
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 112
    throw v1
.end method
