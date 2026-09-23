.class Lcom/mycompany/app/web/WebTabBarSubView$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/web/WebTabBarAdapter$TabBarListener;


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
    iput-object p1, p0, Lcom/mycompany/app/web/WebTabBarSubView$3;->a:Lcom/mycompany/app/web/WebTabBarSubView;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebTabBarSubView$3;->a:Lcom/mycompany/app/web/WebTabBarSubView;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/web/WebTabBarSubView;->t:Lcom/mycompany/app/web/WebTabBarAdapter;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    :try_start_0
    iget-object v2, v0, Lcom/mycompany/app/web/WebTabBarSubView;->v:Ljava/util/List;

    .line 9
    .line 10
    iget v0, v0, Lcom/mycompany/app/web/WebTabBarSubView;->w:I

    .line 11
    .line 12
    invoke-virtual {v1, v0, v2}, Lcom/mycompany/app/web/WebTabBarAdapter;->J(ILjava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    .line 14
    .line 15
    :catch_0
    :goto_0
    return-void
.end method

.method public final b(ILandroid/view/View;Z)V
    .locals 0

    .line 1
    iget-object p2, p0, Lcom/mycompany/app/web/WebTabBarSubView$3;->a:Lcom/mycompany/app/web/WebTabBarSubView;

    .line 2
    .line 3
    invoke-static {p2, p1}, Lcom/mycompany/app/web/WebTabBarSubView;->a(Lcom/mycompany/app/web/WebTabBarSubView;I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final c(Lcom/mycompany/app/web/WebTabBarAdapter$WebTabBarHolder;Landroid/view/View;IIZ)V
    .locals 3

    .line 1
    iget-object p5, p0, Lcom/mycompany/app/web/WebTabBarSubView$3;->a:Lcom/mycompany/app/web/WebTabBarSubView;

    .line 2
    .line 3
    iget-object v0, p5, Lcom/mycompany/app/web/WebTabBarSubView;->f:Lcom/mycompany/app/web/WebTabBarSubView$TabBarSubListener;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    iget v1, p5, Lcom/mycompany/app/web/WebTabBarSubView;->o:I

    .line 9
    .line 10
    add-int/2addr p3, v1

    .line 11
    check-cast v0, Lcom/mycompany/app/web/WebViewActivity$177;

    .line 12
    .line 13
    iget-object v0, v0, Lcom/mycompany/app/web/WebViewActivity$177;->a:Lcom/mycompany/app/web/WebViewActivity;

    .line 14
    .line 15
    const/4 v2, 0x0

    .line 16
    invoke-static {v0, p2, v1, p3, v2}, Lcom/mycompany/app/web/WebViewActivity;->D1(Lcom/mycompany/app/web/WebViewActivity;Landroid/view/View;IIZ)V

    .line 17
    .line 18
    .line 19
    iget-object p2, p5, Lcom/mycompany/app/web/WebTabBarSubView;->E:Landroidx/recyclerview/widget/ItemTouchHelper;

    .line 20
    .line 21
    if-eqz p2, :cond_1

    .line 22
    .line 23
    iput p4, p5, Lcom/mycompany/app/web/WebTabBarSubView;->G:I

    .line 24
    .line 25
    iput p4, p5, Lcom/mycompany/app/web/WebTabBarSubView;->H:I

    .line 26
    .line 27
    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/ItemTouchHelper;->t(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 28
    .line 29
    .line 30
    :cond_1
    :goto_0
    return-void
.end method

.method public final d(IIIZ)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/mycompany/app/web/WebTabBarSubView$3;->a:Lcom/mycompany/app/web/WebTabBarSubView;

    .line 2
    .line 3
    iget-object p3, p1, Lcom/mycompany/app/web/WebTabBarSubView;->f:Lcom/mycompany/app/web/WebTabBarSubView$TabBarSubListener;

    .line 4
    .line 5
    if-eqz p3, :cond_0

    .line 6
    .line 7
    iget p1, p1, Lcom/mycompany/app/web/WebTabBarSubView;->o:I

    .line 8
    .line 9
    add-int/2addr p1, p2

    .line 10
    check-cast p3, Lcom/mycompany/app/web/WebViewActivity$177;

    .line 11
    .line 12
    iget-object p2, p3, Lcom/mycompany/app/web/WebViewActivity$177;->a:Lcom/mycompany/app/web/WebViewActivity;

    .line 13
    .line 14
    sget p3, Lcom/mycompany/app/web/WebViewActivity;->Fo:I

    .line 15
    .line 16
    invoke-virtual {p2}, Lcom/mycompany/app/web/WebViewActivity;->U4()V

    .line 17
    .line 18
    .line 19
    const/4 p3, 0x1

    .line 20
    invoke-virtual {p2, p1, p3}, Lcom/mycompany/app/web/WebViewActivity;->c7(IZ)V

    .line 21
    .line 22
    .line 23
    :cond_0
    return-void
.end method

.method public final e(ILjava/util/ArrayList;)V
    .locals 0

    .line 1
    return-void
.end method
