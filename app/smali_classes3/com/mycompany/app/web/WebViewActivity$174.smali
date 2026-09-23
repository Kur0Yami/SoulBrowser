.class Lcom/mycompany/app/web/WebViewActivity$174;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:I

.field public final synthetic f:I

.field public final synthetic g:Lcom/mycompany/app/web/WebViewActivity;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/web/WebViewActivity;II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/web/WebViewActivity$174;->g:Lcom/mycompany/app/web/WebViewActivity;

    .line 5
    .line 6
    iput p2, p0, Lcom/mycompany/app/web/WebViewActivity$174;->c:I

    .line 7
    .line 8
    iput p3, p0, Lcom/mycompany/app/web/WebViewActivity$174;->f:I

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebViewActivity$174;->g:Lcom/mycompany/app/web/WebViewActivity;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->b3:Lcom/mycompany/app/web/WebTabBarAdapter;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    iget v2, p0, Lcom/mycompany/app/web/WebViewActivity$174;->c:I

    .line 9
    .line 10
    invoke-virtual {v1, v2}, Lcom/mycompany/app/web/WebTabBarAdapter;->C(I)I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    const/4 v2, -0x1

    .line 15
    if-ne v1, v2, :cond_1

    .line 16
    .line 17
    :goto_0
    return-void

    .line 18
    :cond_1
    iget v2, p0, Lcom/mycompany/app/web/WebViewActivity$174;->f:I

    .line 19
    .line 20
    const/4 v3, 0x1

    .line 21
    if-ne v2, v3, :cond_6

    .line 22
    .line 23
    iget-object v2, v0, Lcom/mycompany/app/web/WebViewActivity;->O2:Ljava/util/List;

    .line 24
    .line 25
    if-eqz v2, :cond_2

    .line 26
    .line 27
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    goto :goto_1

    .line 32
    :cond_2
    const/4 v2, 0x0

    .line 33
    :goto_1
    iget v4, v0, Lcom/mycompany/app/web/WebViewActivity;->ac:I

    .line 34
    .line 35
    if-nez v4, :cond_3

    .line 36
    .line 37
    iget v5, v0, Lcom/mycompany/app/web/WebViewActivity;->P2:I

    .line 38
    .line 39
    add-int/lit8 v6, v2, -0x1

    .line 40
    .line 41
    if-eq v5, v6, :cond_4

    .line 42
    .line 43
    :cond_3
    iget v5, v0, Lcom/mycompany/app/web/WebViewActivity;->P2:I

    .line 44
    .line 45
    if-nez v5, :cond_5

    .line 46
    .line 47
    sub-int/2addr v2, v3

    .line 48
    if-ne v4, v2, :cond_5

    .line 49
    .line 50
    :cond_4
    iget-object v0, v0, Lcom/mycompany/app/web/WebViewActivity;->Y2:Lcom/mycompany/app/view/MyRecyclerView;

    .line 51
    .line 52
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->i0(I)V

    .line 53
    .line 54
    .line 55
    return-void

    .line 56
    :cond_5
    iget-object v0, v0, Lcom/mycompany/app/web/WebViewActivity;->Y2:Lcom/mycompany/app/view/MyRecyclerView;

    .line 57
    .line 58
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->l0(I)V

    .line 59
    .line 60
    .line 61
    return-void

    .line 62
    :cond_6
    iget-object v0, v0, Lcom/mycompany/app/web/WebViewActivity;->Y2:Lcom/mycompany/app/view/MyRecyclerView;

    .line 63
    .line 64
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->i0(I)V

    .line 65
    .line 66
    .line 67
    return-void
.end method
