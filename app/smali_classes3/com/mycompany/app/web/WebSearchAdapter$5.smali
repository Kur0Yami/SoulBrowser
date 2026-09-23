.class Lcom/mycompany/app/web/WebSearchAdapter$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/web/WebSearchAdapter;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/web/WebSearchAdapter;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/web/WebSearchAdapter$5;->c:Lcom/mycompany/app/web/WebSearchAdapter;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebSearchAdapter$5;->c:Lcom/mycompany/app/web/WebSearchAdapter;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/web/WebSearchAdapter;->e:Lcom/mycompany/app/web/WebSearchAdapter$WebSearchListener;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    invoke-static {p1}, Lcom/mycompany/app/web/WebSearchAdapter;->v(Landroid/view/View;)I

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    invoke-virtual {v0, p1}, Lcom/mycompany/app/web/WebSearchAdapter;->x(I)Lcom/mycompany/app/web/WebSearchAdapter$SearchItem;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    if-nez p1, :cond_1

    .line 17
    .line 18
    :goto_0
    return-void

    .line 19
    :cond_1
    iget-object v0, v0, Lcom/mycompany/app/web/WebSearchAdapter;->e:Lcom/mycompany/app/web/WebSearchAdapter$WebSearchListener;

    .line 20
    .line 21
    check-cast v0, Lcom/mycompany/app/web/WebViewActivity$250;

    .line 22
    .line 23
    invoke-virtual {v0, p1}, Lcom/mycompany/app/web/WebViewActivity$250;->h(Lcom/mycompany/app/web/WebSearchAdapter$SearchItem;)V

    .line 24
    .line 25
    .line 26
    return-void
.end method
