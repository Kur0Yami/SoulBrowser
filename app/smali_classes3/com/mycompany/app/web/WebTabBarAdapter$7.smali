.class Lcom/mycompany/app/web/WebTabBarAdapter$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


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
    iput-object p1, p0, Lcom/mycompany/app/web/WebTabBarAdapter$7;->c:Lcom/mycompany/app/web/WebTabBarAdapter;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebTabBarAdapter$7;->c:Lcom/mycompany/app/web/WebTabBarAdapter;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/web/WebTabBarAdapter;->l:Lcom/mycompany/app/web/WebTabBarAdapter$TabBarListener;

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    goto :goto_2

    .line 9
    :cond_0
    invoke-static {p1}, Lcom/mycompany/app/web/WebTabBarAdapter;->F(Landroid/view/View;)Lcom/mycompany/app/web/WebTabBarAdapter$WebTabBarHolder;

    .line 10
    .line 11
    .line 12
    move-result-object v4

    .line 13
    if-eqz v4, :cond_4

    .line 14
    .line 15
    iget-object v1, v4, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->a:Landroid/view/View;

    .line 16
    .line 17
    if-nez v1, :cond_1

    .line 18
    .line 19
    goto :goto_2

    .line 20
    :cond_1
    invoke-virtual {v4}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->c()I

    .line 21
    .line 22
    .line 23
    move-result v7

    .line 24
    invoke-virtual {v0, v7}, Lcom/mycompany/app/web/WebTabBarAdapter;->B(I)Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    if-nez v1, :cond_2

    .line 29
    .line 30
    goto :goto_2

    .line 31
    :cond_2
    iget-object v3, v0, Lcom/mycompany/app/web/WebTabBarAdapter;->l:Lcom/mycompany/app/web/WebTabBarAdapter$TabBarListener;

    .line 32
    .line 33
    invoke-static {v1}, Lcom/mycompany/app/web/WebTabBarAdapter;->D(Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;)I

    .line 34
    .line 35
    .line 36
    move-result v6

    .line 37
    iget-object v0, v1, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->q:Ljava/util/List;

    .line 38
    .line 39
    if-eqz v0, :cond_3

    .line 40
    .line 41
    move v8, v2

    .line 42
    :goto_0
    move-object v5, p1

    .line 43
    goto :goto_1

    .line 44
    :cond_3
    const/4 v0, 0x0

    .line 45
    move v8, v0

    .line 46
    goto :goto_0

    .line 47
    :goto_1
    invoke-interface/range {v3 .. v8}, Lcom/mycompany/app/web/WebTabBarAdapter$TabBarListener;->c(Lcom/mycompany/app/web/WebTabBarAdapter$WebTabBarHolder;Landroid/view/View;IIZ)V

    .line 48
    .line 49
    .line 50
    :cond_4
    :goto_2
    return v2
.end method
