.class Lcom/mycompany/app/web/WebViewActivity$465;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/web/WebViewActivity;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/web/WebViewActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/web/WebViewActivity$465;->c:Lcom/mycompany/app/web/WebViewActivity;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebViewActivity$465;->c:Lcom/mycompany/app/web/WebViewActivity;

    .line 2
    .line 3
    iget-boolean v1, v0, Lcom/mycompany/app/web/WebViewActivity;->j9:Z

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    goto :goto_3

    .line 8
    :cond_0
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->A3:Lcom/mycompany/app/quick/QuickSearch;

    .line 9
    .line 10
    if-eqz v1, :cond_1

    .line 11
    .line 12
    iget-object v2, v1, Lcom/mycompany/app/quick/QuickSearch;->f:Lcom/mycompany/app/web/WebViewActivity;

    .line 13
    .line 14
    invoke-static {v2}, Lcom/mycompany/app/main/MainUtil;->T4(Landroid/content/Context;)Z

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    iput-boolean v2, v1, Lcom/mycompany/app/quick/QuickSearch;->g:Z

    .line 19
    .line 20
    :cond_1
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->i1:Landroid/content/Context;

    .line 21
    .line 22
    invoke-static {v1}, Lcom/mycompany/app/data/book/DataBookRecent;->a(Landroid/content/Context;)Lcom/mycompany/app/data/book/DataBookRecent;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    iget-object v1, v1, Lcom/mycompany/app/data/book/DataBookRecent;->a:Ljava/util/List;

    .line 27
    .line 28
    const/4 v2, 0x2

    .line 29
    if-nez v1, :cond_2

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_2
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    if-lez v1, :cond_3

    .line 37
    .line 38
    sget v1, Lcom/mycompany/app/pref/PrefZtri;->j0:I

    .line 39
    .line 40
    if-ne v1, v2, :cond_6

    .line 41
    .line 42
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->i1:Landroid/content/Context;

    .line 43
    .line 44
    invoke-static {v1}, Lcom/mycompany/app/data/book/DataBookRecent;->a(Landroid/content/Context;)Lcom/mycompany/app/data/book/DataBookRecent;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    iget-boolean v1, v1, Lcom/mycompany/app/data/book/DataBookRecent;->b:Z

    .line 49
    .line 50
    if-eqz v1, :cond_6

    .line 51
    .line 52
    goto :goto_1

    .line 53
    :cond_3
    :goto_0
    invoke-static {}, Lcom/mycompany/app/db/book/DbBookRecent;->l()Z

    .line 54
    .line 55
    .line 56
    move-result v1

    .line 57
    if-nez v1, :cond_4

    .line 58
    .line 59
    goto :goto_2

    .line 60
    :cond_4
    sget v1, Lcom/mycompany/app/pref/PrefZtri;->j0:I

    .line 61
    .line 62
    if-ne v1, v2, :cond_5

    .line 63
    .line 64
    goto :goto_1

    .line 65
    :cond_5
    sget v1, Lcom/mycompany/app/pref/PrefWeb;->W:I

    .line 66
    .line 67
    and-int/2addr v1, v2

    .line 68
    if-ne v1, v2, :cond_6

    .line 69
    .line 70
    :goto_1
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->i1:Landroid/content/Context;

    .line 71
    .line 72
    invoke-static {v1}, Lcom/mycompany/app/db/book/DbBookRecent;->e(Landroid/content/Context;)Ljava/util/ArrayList;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    iget-object v2, v0, Lcom/mycompany/app/web/WebViewActivity;->i1:Landroid/content/Context;

    .line 77
    .line 78
    invoke-static {v2}, Lcom/mycompany/app/data/book/DataBookRecent;->a(Landroid/content/Context;)Lcom/mycompany/app/data/book/DataBookRecent;

    .line 79
    .line 80
    .line 81
    move-result-object v2

    .line 82
    iput-object v1, v2, Lcom/mycompany/app/data/book/DataBookRecent;->a:Ljava/util/List;

    .line 83
    .line 84
    const/4 v1, 0x0

    .line 85
    iput-boolean v1, v2, Lcom/mycompany/app/data/book/DataBookRecent;->b:Z

    .line 86
    .line 87
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->A3:Lcom/mycompany/app/quick/QuickSearch;

    .line 88
    .line 89
    if-eqz v1, :cond_6

    .line 90
    .line 91
    invoke-virtual {v1}, Lcom/mycompany/app/quick/QuickSearch;->t()V

    .line 92
    .line 93
    .line 94
    :cond_6
    :goto_2
    iget-boolean v1, v0, Lcom/mycompany/app/web/WebViewActivity;->j9:Z

    .line 95
    .line 96
    if-nez v1, :cond_7

    .line 97
    .line 98
    goto :goto_3

    .line 99
    :cond_7
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->e2:Lcom/mycompany/app/view/MyWebBody;

    .line 100
    .line 101
    if-nez v1, :cond_8

    .line 102
    .line 103
    :goto_3
    return-void

    .line 104
    :cond_8
    new-instance v2, Lcom/mycompany/app/web/WebViewActivity$466;

    .line 105
    .line 106
    invoke-direct {v2, v0}, Lcom/mycompany/app/web/WebViewActivity$466;-><init>(Lcom/mycompany/app/web/WebViewActivity;)V

    .line 107
    .line 108
    .line 109
    invoke-virtual {v1, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 110
    .line 111
    .line 112
    return-void
.end method
