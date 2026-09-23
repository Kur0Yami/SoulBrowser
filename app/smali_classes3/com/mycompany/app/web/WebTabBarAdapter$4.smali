.class Lcom/mycompany/app/web/WebTabBarAdapter$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


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
    iput-object p1, p0, Lcom/mycompany/app/web/WebTabBarAdapter$4;->c:Lcom/mycompany/app/web/WebTabBarAdapter;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebTabBarAdapter$4;->c:Lcom/mycompany/app/web/WebTabBarAdapter;

    .line 2
    .line 3
    iget-boolean v1, v0, Lcom/mycompany/app/web/WebTabBarAdapter;->A:Z

    .line 4
    .line 5
    iget v2, v0, Lcom/mycompany/app/web/WebTabBarAdapter;->B:I

    .line 6
    .line 7
    iget v3, v0, Lcom/mycompany/app/web/WebTabBarAdapter;->C:I

    .line 8
    .line 9
    iget v4, v0, Lcom/mycompany/app/web/WebTabBarAdapter;->D:I

    .line 10
    .line 11
    iget v5, v0, Lcom/mycompany/app/web/WebTabBarAdapter;->E:I

    .line 12
    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    if-le v5, v4, :cond_1

    .line 16
    .line 17
    if-ltz v3, :cond_1

    .line 18
    .line 19
    if-ge v3, v4, :cond_1

    .line 20
    .line 21
    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->i(I)V

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    if-ge v5, v4, :cond_1

    .line 26
    .line 27
    if-ltz v3, :cond_1

    .line 28
    .line 29
    if-ge v3, v4, :cond_1

    .line 30
    .line 31
    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->l(I)V

    .line 32
    .line 33
    .line 34
    :cond_1
    :goto_0
    iget v1, v0, Lcom/mycompany/app/web/WebTabBarAdapter;->j:I

    .line 35
    .line 36
    if-ne v2, v1, :cond_2

    .line 37
    .line 38
    iget-object v1, v0, Lcom/mycompany/app/web/WebTabBarAdapter;->z:Lcom/mycompany/app/web/WebTabBarAdapter$TabBarChangeListener;

    .line 39
    .line 40
    if-eqz v1, :cond_3

    .line 41
    .line 42
    invoke-interface {v1}, Lcom/mycompany/app/web/WebTabBarAdapter$TabBarChangeListener;->a()V

    .line 43
    .line 44
    .line 45
    const/4 v1, 0x0

    .line 46
    iput-object v1, v0, Lcom/mycompany/app/web/WebTabBarAdapter;->z:Lcom/mycompany/app/web/WebTabBarAdapter$TabBarChangeListener;

    .line 47
    .line 48
    return-void

    .line 49
    :cond_2
    iget-object v1, v0, Lcom/mycompany/app/web/WebTabBarAdapter;->e:Lcom/mycompany/app/view/MyRecyclerView;

    .line 50
    .line 51
    if-nez v1, :cond_4

    .line 52
    .line 53
    :cond_3
    return-void

    .line 54
    :cond_4
    new-instance v2, Lcom/mycompany/app/web/WebTabBarAdapter$5;

    .line 55
    .line 56
    invoke-direct {v2, v0}, Lcom/mycompany/app/web/WebTabBarAdapter$5;-><init>(Lcom/mycompany/app/web/WebTabBarAdapter;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v1, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 60
    .line 61
    .line 62
    return-void
.end method
