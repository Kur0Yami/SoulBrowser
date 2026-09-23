.class Lcom/mycompany/app/web/WebViewActivity$141;
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
    iput-object p1, p0, Lcom/mycompany/app/web/WebViewActivity$141;->c:Lcom/mycompany/app/web/WebViewActivity;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebViewActivity$141;->c:Lcom/mycompany/app/web/WebViewActivity;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/web/WebViewActivity;->d3:Lcom/mycompany/app/web/WebTabBarSubView;

    .line 4
    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    iget-object v1, v0, Lcom/mycompany/app/web/WebTabBarSubView;->v:Ljava/util/List;

    .line 8
    .line 9
    if-eqz v1, :cond_1

    .line 10
    .line 11
    iget-object v2, v0, Lcom/mycompany/app/web/WebTabBarSubView;->y:Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;

    .line 12
    .line 13
    if-nez v2, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    :try_start_0
    iget v3, v0, Lcom/mycompany/app/web/WebTabBarSubView;->x:I

    .line 17
    .line 18
    iput v3, v0, Lcom/mycompany/app/web/WebTabBarSubView;->w:I

    .line 19
    .line 20
    invoke-interface {v1, v3, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Lcom/mycompany/app/web/WebTabBarSubView;->g()V

    .line 24
    .line 25
    .line 26
    iget-object v4, v0, Lcom/mycompany/app/web/WebTabBarSubView;->t:Lcom/mycompany/app/web/WebTabBarAdapter;

    .line 27
    .line 28
    iget-object v5, v0, Lcom/mycompany/app/web/WebTabBarSubView;->v:Ljava/util/List;

    .line 29
    .line 30
    iget v6, v0, Lcom/mycompany/app/web/WebTabBarSubView;->w:I

    .line 31
    .line 32
    iget-boolean v7, v0, Lcom/mycompany/app/web/WebTabBarSubView;->j:Z

    .line 33
    .line 34
    iget v8, v0, Lcom/mycompany/app/web/WebTabBarSubView;->k:I

    .line 35
    .line 36
    iget v9, v0, Lcom/mycompany/app/web/WebTabBarSubView;->l:I

    .line 37
    .line 38
    const/4 v10, 0x1

    .line 39
    invoke-virtual/range {v4 .. v10}, Lcom/mycompany/app/web/WebTabBarAdapter;->L(Ljava/util/List;IZIIZ)V

    .line 40
    .line 41
    .line 42
    iget-object v1, v0, Lcom/mycompany/app/web/WebTabBarSubView;->r:Lcom/mycompany/app/view/MyRecyclerView;

    .line 43
    .line 44
    new-instance v2, Lcom/mycompany/app/web/WebTabBarSubView$9;

    .line 45
    .line 46
    invoke-direct {v2, v0}, Lcom/mycompany/app/web/WebTabBarSubView$9;-><init>(Lcom/mycompany/app/web/WebTabBarSubView;)V

    .line 47
    .line 48
    .line 49
    const-wide/16 v3, 0x12c

    .line 50
    .line 51
    invoke-virtual {v1, v2, v3, v4}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    .line 53
    .line 54
    :catch_0
    :cond_1
    :goto_0
    return-void
.end method
