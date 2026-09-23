.class Lcom/mycompany/app/web/WebViewActivity$524;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/dialog/DialogTabMain$ListTabListener;


# instance fields
.field public final synthetic a:Lcom/mycompany/app/web/WebViewActivity;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/web/WebViewActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/web/WebViewActivity$524;->a:Lcom/mycompany/app/web/WebViewActivity;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(ILjava/util/List;)V
    .locals 1

    .line 1
    sget v0, Lcom/mycompany/app/web/WebViewActivity;->Fo:I

    .line 2
    .line 3
    iget-object v0, p0, Lcom/mycompany/app/web/WebViewActivity$524;->a:Lcom/mycompany/app/web/WebViewActivity;

    .line 4
    .line 5
    invoke-virtual {v0, p1, p2}, Lcom/mycompany/app/web/WebViewActivity;->s8(ILjava/util/List;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final b()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebViewActivity$524;->a:Lcom/mycompany/app/web/WebViewActivity;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/web/WebViewActivity;->e2:Lcom/mycompany/app/view/MyWebBody;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    return v0

    .line 9
    :cond_0
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyWebBody;->getRectWidth()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    return v0
.end method

.method public final c(ZLjava/util/List;IZ)V
    .locals 7

    .line 1
    sget v0, Lcom/mycompany/app/web/WebViewActivity;->Fo:I

    .line 2
    .line 3
    iget-object v0, p0, Lcom/mycompany/app/web/WebViewActivity$524;->a:Lcom/mycompany/app/web/WebViewActivity;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/mycompany/app/web/WebViewActivity;->B4()V

    .line 6
    .line 7
    .line 8
    iget-object v0, v0, Lcom/mycompany/app/web/WebViewActivity;->f2:Lcom/mycompany/app/view/MyWebCoord;

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    new-instance v1, Lcom/mycompany/app/web/WebViewActivity$524$1;

    .line 14
    .line 15
    move-object v2, p0

    .line 16
    move v3, p1

    .line 17
    move-object v4, p2

    .line 18
    move v5, p3

    .line 19
    move v6, p4

    .line 20
    invoke-direct/range {v1 .. v6}, Lcom/mycompany/app/web/WebViewActivity$524$1;-><init>(Lcom/mycompany/app/web/WebViewActivity$524;ZLjava/util/List;IZ)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method public final d(ZLjava/util/List;IZ)V
    .locals 7

    .line 1
    sget v0, Lcom/mycompany/app/web/WebViewActivity;->Fo:I

    .line 2
    .line 3
    iget-object v0, p0, Lcom/mycompany/app/web/WebViewActivity$524;->a:Lcom/mycompany/app/web/WebViewActivity;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/mycompany/app/web/WebViewActivity;->B4()V

    .line 6
    .line 7
    .line 8
    iget-object v0, v0, Lcom/mycompany/app/web/WebViewActivity;->f2:Lcom/mycompany/app/view/MyWebCoord;

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    new-instance v1, Lcom/mycompany/app/web/WebViewActivity$524$2;

    .line 14
    .line 15
    move-object v2, p0

    .line 16
    move v3, p1

    .line 17
    move-object v4, p2

    .line 18
    move v5, p3

    .line 19
    move v6, p4

    .line 20
    invoke-direct/range {v1 .. v6}, Lcom/mycompany/app/web/WebViewActivity$524$2;-><init>(Lcom/mycompany/app/web/WebViewActivity$524;ZLjava/util/List;IZ)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method public final e()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebViewActivity$524;->a:Lcom/mycompany/app/web/WebViewActivity;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/web/WebViewActivity;->b3:Lcom/mycompany/app/web/WebTabBarAdapter;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->g()V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method
