.class Lcom/mycompany/app/web/WebTabBarAdapter$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/web/WebTabBarAdapter;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/web/WebTabBarAdapter;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/web/WebTabBarAdapter$6;->c:Lcom/mycompany/app/web/WebTabBarAdapter;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebTabBarAdapter$6;->c:Lcom/mycompany/app/web/WebTabBarAdapter;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/web/WebTabBarAdapter;->l:Lcom/mycompany/app/web/WebTabBarAdapter$TabBarListener;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    goto :goto_2

    .line 8
    :cond_0
    invoke-static {p1}, Lcom/mycompany/app/web/WebTabBarAdapter;->F(Landroid/view/View;)Lcom/mycompany/app/web/WebTabBarAdapter$WebTabBarHolder;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    if-eqz v1, :cond_2

    .line 13
    .line 14
    iget-object v2, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->a:Landroid/view/View;

    .line 15
    .line 16
    if-nez v2, :cond_1

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_1
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->c()I

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    goto :goto_1

    .line 24
    :cond_2
    :goto_0
    const/4 v1, -0x1

    .line 25
    :goto_1
    invoke-virtual {v0, v1}, Lcom/mycompany/app/web/WebTabBarAdapter;->B(I)Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    if-nez v2, :cond_3

    .line 30
    .line 31
    :goto_2
    return-void

    .line 32
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getX()F

    .line 33
    .line 34
    .line 35
    move-result v3

    .line 36
    float-to-int v3, v3

    .line 37
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    .line 38
    .line 39
    .line 40
    move-result p1

    .line 41
    div-int/lit8 p1, p1, 0x2

    .line 42
    .line 43
    add-int/2addr p1, v3

    .line 44
    iget-object v0, v0, Lcom/mycompany/app/web/WebTabBarAdapter;->l:Lcom/mycompany/app/web/WebTabBarAdapter$TabBarListener;

    .line 45
    .line 46
    invoke-static {v2}, Lcom/mycompany/app/web/WebTabBarAdapter;->D(Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;)I

    .line 47
    .line 48
    .line 49
    move-result v3

    .line 50
    iget-object v2, v2, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->q:Ljava/util/List;

    .line 51
    .line 52
    if-eqz v2, :cond_4

    .line 53
    .line 54
    const/4 v2, 0x1

    .line 55
    goto :goto_3

    .line 56
    :cond_4
    const/4 v2, 0x0

    .line 57
    :goto_3
    invoke-interface {v0, p1, v3, v1, v2}, Lcom/mycompany/app/web/WebTabBarAdapter$TabBarListener;->d(IIIZ)V

    .line 58
    .line 59
    .line 60
    return-void
.end method
