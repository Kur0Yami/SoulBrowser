.class Lcom/mycompany/app/web/WebViewActivity$461;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/quick/QuickNews$NewsListListener;


# instance fields
.field public final synthetic a:Lcom/mycompany/app/web/WebViewActivity;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/web/WebViewActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/web/WebViewActivity$461;->a:Lcom/mycompany/app/web/WebViewActivity;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebViewActivity$461;->a:Lcom/mycompany/app/web/WebViewActivity;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->bm:Lcom/mycompany/app/quick/QuickNews;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    iget-object v0, v0, Lcom/mycompany/app/web/WebViewActivity;->I2:Lcom/mycompany/app/web/WebNestView;

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    invoke-virtual {v0, p1}, Lcom/mycompany/app/web/WebNestView;->setNewsPrepared(Ljava/util/List;)V

    .line 13
    .line 14
    .line 15
    :cond_1
    :goto_0
    return-void
.end method

.method public final b(Ljava/util/List;Z)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebViewActivity$461;->a:Lcom/mycompany/app/web/WebViewActivity;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->bm:Lcom/mycompany/app/quick/QuickNews;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    goto :goto_1

    .line 8
    :cond_0
    if-eqz v1, :cond_1

    .line 9
    .line 10
    invoke-virtual {v1}, Lcom/mycompany/app/quick/QuickNews;->c()V

    .line 11
    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    iput-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->bm:Lcom/mycompany/app/quick/QuickNews;

    .line 15
    .line 16
    :cond_1
    const/4 v1, 0x0

    .line 17
    iput v1, v0, Lcom/mycompany/app/web/WebViewActivity;->cm:I

    .line 18
    .line 19
    invoke-static {v0, v1}, Lcom/mycompany/app/web/WebViewActivity;->e1(Lcom/mycompany/app/web/WebViewActivity;Z)V

    .line 20
    .line 21
    .line 22
    iget-object v2, v0, Lcom/mycompany/app/web/WebViewActivity;->I2:Lcom/mycompany/app/web/WebNestView;

    .line 23
    .line 24
    if-eqz v2, :cond_4

    .line 25
    .line 26
    iget-object v2, v2, Lcom/mycompany/app/web/WebNestView;->Z0:Lcom/mycompany/app/quick/QuickView;

    .line 27
    .line 28
    if-eqz v2, :cond_4

    .line 29
    .line 30
    iget-object v3, v2, Lcom/mycompany/app/quick/QuickView;->c:Landroid/content/Context;

    .line 31
    .line 32
    invoke-static {v3}, Lcom/mycompany/app/data/DataNews;->a(Landroid/content/Context;)Lcom/mycompany/app/data/DataNews;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    iget-wide v3, v3, Lcom/mycompany/app/data/DataNews;->c:J

    .line 37
    .line 38
    iput-wide v3, v2, Lcom/mycompany/app/quick/QuickView;->W:J

    .line 39
    .line 40
    iget-object v3, v2, Lcom/mycompany/app/quick/QuickView;->l:Lcom/mycompany/app/quick/QuickAdapter;

    .line 41
    .line 42
    const/4 v4, 0x1

    .line 43
    if-eqz v3, :cond_3

    .line 44
    .line 45
    if-eqz p2, :cond_2

    .line 46
    .line 47
    invoke-virtual {v3}, Lcom/mycompany/app/quick/QuickAdapter;->f0()V

    .line 48
    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_2
    invoke-virtual {v3, p1, v4}, Lcom/mycompany/app/quick/QuickAdapter;->a0(Ljava/util/List;Z)V

    .line 52
    .line 53
    .line 54
    :goto_0
    iput-boolean v1, v3, Lcom/mycompany/app/quick/QuickAdapter;->p:Z

    .line 55
    .line 56
    :cond_3
    iput-boolean v4, v2, Lcom/mycompany/app/quick/QuickView;->D:Z

    .line 57
    .line 58
    invoke-virtual {v2}, Lcom/mycompany/app/quick/QuickView;->B()V

    .line 59
    .line 60
    .line 61
    :cond_4
    iget-object p1, v0, Lcom/mycompany/app/web/WebViewActivity;->e2:Lcom/mycompany/app/view/MyWebBody;

    .line 62
    .line 63
    if-nez p1, :cond_5

    .line 64
    .line 65
    :goto_1
    return-void

    .line 66
    :cond_5
    iget-object p2, v0, Lcom/mycompany/app/web/WebViewActivity;->mb:Ljava/lang/Runnable;

    .line 67
    .line 68
    if-nez p2, :cond_6

    .line 69
    .line 70
    new-instance p1, Lcom/mycompany/app/web/WebViewActivity$461$1;

    .line 71
    .line 72
    invoke-direct {p1, p0}, Lcom/mycompany/app/web/WebViewActivity$461$1;-><init>(Lcom/mycompany/app/web/WebViewActivity$461;)V

    .line 73
    .line 74
    .line 75
    iput-object p1, v0, Lcom/mycompany/app/web/WebViewActivity;->mb:Ljava/lang/Runnable;

    .line 76
    .line 77
    goto :goto_2

    .line 78
    :cond_6
    invoke-virtual {p1, p2}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 79
    .line 80
    .line 81
    :goto_2
    iget-object p1, v0, Lcom/mycompany/app/web/WebViewActivity;->e2:Lcom/mycompany/app/view/MyWebBody;

    .line 82
    .line 83
    iget-object p2, v0, Lcom/mycompany/app/web/WebViewActivity;->mb:Ljava/lang/Runnable;

    .line 84
    .line 85
    const-wide/32 v0, 0x36ee80

    .line 86
    .line 87
    .line 88
    invoke-virtual {p1, p2, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 89
    .line 90
    .line 91
    return-void
.end method

.method public final c(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebViewActivity$461;->a:Lcom/mycompany/app/web/WebViewActivity;

    .line 2
    .line 3
    iput p1, v0, Lcom/mycompany/app/web/WebViewActivity;->cm:I

    .line 4
    .line 5
    iget-object v0, v0, Lcom/mycompany/app/web/WebViewActivity;->I2:Lcom/mycompany/app/web/WebNestView;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0, p1}, Lcom/mycompany/app/web/WebNestView;->setNewsProgress(I)V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method
