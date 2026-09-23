.class Lcom/mycompany/app/web/WebTabBarSubView$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/web/WebTabBarSubView;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/web/WebTabBarSubView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/web/WebTabBarSubView$5;->c:Lcom/mycompany/app/web/WebTabBarSubView;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebTabBarSubView$5;->c:Lcom/mycompany/app/web/WebTabBarSubView;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/web/WebTabBarSubView;->q:Lcom/mycompany/app/view/MyTabFrame;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    iget v2, v0, Lcom/mycompany/app/web/WebTabBarSubView;->h:I

    .line 9
    .line 10
    iget v3, v0, Lcom/mycompany/app/web/WebTabBarSubView;->i:I

    .line 11
    .line 12
    const/4 v4, 0x0

    .line 13
    const/4 v5, 0x1

    .line 14
    invoke-virtual {v1, v2, v3, v5, v4}, Lcom/mycompany/app/view/MyTabFrame;->j(IIZLcom/mycompany/app/view/MyFadeListener;)V

    .line 15
    .line 16
    .line 17
    iget v1, v0, Lcom/mycompany/app/web/WebTabBarSubView;->w:I

    .line 18
    .line 19
    if-le v1, v5, :cond_1

    .line 20
    .line 21
    iget-object v0, v0, Lcom/mycompany/app/web/WebTabBarSubView;->r:Lcom/mycompany/app/view/MyRecyclerView;

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->i0(I)V

    .line 24
    .line 25
    .line 26
    :cond_1
    :goto_0
    return-void
.end method
