.class Lcom/mycompany/app/web/WebTabBarSubView$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    iput-object p1, p0, Lcom/mycompany/app/web/WebTabBarSubView$2;->c:Lcom/mycompany/app/web/WebTabBarSubView;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    .line 1
    iget-object p1, p0, Lcom/mycompany/app/web/WebTabBarSubView$2;->c:Lcom/mycompany/app/web/WebTabBarSubView;

    .line 2
    .line 3
    iget-boolean v0, p1, Lcom/mycompany/app/web/WebTabBarSubView;->C:Z

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget-object v0, p1, Lcom/mycompany/app/web/WebTabBarSubView;->q:Lcom/mycompany/app/view/MyTabFrame;

    .line 9
    .line 10
    if-nez v0, :cond_1

    .line 11
    .line 12
    invoke-virtual {p1}, Lcom/mycompany/app/web/WebTabBarSubView;->e()V

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :cond_1
    iget v1, p1, Lcom/mycompany/app/web/WebTabBarSubView;->h:I

    .line 17
    .line 18
    iget v2, p1, Lcom/mycompany/app/web/WebTabBarSubView;->i:I

    .line 19
    .line 20
    new-instance v3, Lcom/mycompany/app/web/WebTabBarSubView$6;

    .line 21
    .line 22
    invoke-direct {v3, p1}, Lcom/mycompany/app/web/WebTabBarSubView$6;-><init>(Lcom/mycompany/app/web/WebTabBarSubView;)V

    .line 23
    .line 24
    .line 25
    const/4 p1, 0x0

    .line 26
    invoke-virtual {v0, v1, v2, p1, v3}, Lcom/mycompany/app/view/MyTabFrame;->j(IIZLcom/mycompany/app/view/MyFadeListener;)V

    .line 27
    .line 28
    .line 29
    return-void
.end method
