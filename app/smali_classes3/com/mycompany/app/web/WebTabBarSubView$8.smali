.class Lcom/mycompany/app/web/WebTabBarSubView$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/web/WebTabBarAdapter$TabBarChangeListener;


# instance fields
.field public final synthetic a:Lcom/mycompany/app/web/WebTabBarSubView;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/web/WebTabBarSubView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/web/WebTabBarSubView$8;->a:Lcom/mycompany/app/web/WebTabBarSubView;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebTabBarSubView$8;->a:Lcom/mycompany/app/web/WebTabBarSubView;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/web/WebTabBarSubView;->r:Lcom/mycompany/app/view/MyRecyclerView;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    new-instance v1, Lcom/mycompany/app/web/WebTabBarSubView$8$1;

    .line 9
    .line 10
    invoke-direct {v1, p0}, Lcom/mycompany/app/web/WebTabBarSubView$8$1;-><init>(Lcom/mycompany/app/web/WebTabBarSubView$8;)V

    .line 11
    .line 12
    .line 13
    const-wide/16 v2, 0x12c

    .line 14
    .line 15
    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 16
    .line 17
    .line 18
    return-void
.end method
