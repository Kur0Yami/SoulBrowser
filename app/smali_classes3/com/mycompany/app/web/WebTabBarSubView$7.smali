.class Lcom/mycompany/app/web/WebTabBarSubView$7;
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
    iput-object p1, p0, Lcom/mycompany/app/web/WebTabBarSubView$7;->c:Lcom/mycompany/app/web/WebTabBarSubView;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/mycompany/app/web/WebTabBarSubView$7;->c:Lcom/mycompany/app/web/WebTabBarSubView;

    .line 2
    .line 3
    iget-object v0, p1, Lcom/mycompany/app/web/WebTabBarSubView;->f:Lcom/mycompany/app/web/WebTabBarSubView$TabBarSubListener;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    iget v1, p1, Lcom/mycompany/app/web/WebTabBarSubView;->w:I

    .line 9
    .line 10
    if-ltz v1, :cond_1

    .line 11
    .line 12
    iget p1, p1, Lcom/mycompany/app/web/WebTabBarSubView;->o:I

    .line 13
    .line 14
    add-int/2addr p1, v1

    .line 15
    const/4 v1, 0x0

    .line 16
    invoke-interface {v0, p1, v1}, Lcom/mycompany/app/web/WebTabBarSubView$TabBarSubListener;->a(IZ)V

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    :cond_1
    iget-object v0, p1, Lcom/mycompany/app/web/WebTabBarSubView;->v:Ljava/util/List;

    .line 21
    .line 22
    if-eqz v0, :cond_3

    .line 23
    .line 24
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-eqz v0, :cond_2

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_2
    iget-object v0, p1, Lcom/mycompany/app/web/WebTabBarSubView;->f:Lcom/mycompany/app/web/WebTabBarSubView$TabBarSubListener;

    .line 32
    .line 33
    iget v1, p1, Lcom/mycompany/app/web/WebTabBarSubView;->o:I

    .line 34
    .line 35
    iget-object p1, p1, Lcom/mycompany/app/web/WebTabBarSubView;->v:Ljava/util/List;

    .line 36
    .line 37
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 38
    .line 39
    .line 40
    move-result p1

    .line 41
    add-int/2addr p1, v1

    .line 42
    const/4 v1, 0x1

    .line 43
    sub-int/2addr p1, v1

    .line 44
    invoke-interface {v0, p1, v1}, Lcom/mycompany/app/web/WebTabBarSubView$TabBarSubListener;->a(IZ)V

    .line 45
    .line 46
    .line 47
    :cond_3
    :goto_0
    return-void
.end method
