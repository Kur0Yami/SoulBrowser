.class Lcom/mycompany/app/view/MyPopupAdapter$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/view/MyPopupAdapter;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/view/MyPopupAdapter;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/view/MyPopupAdapter$1;->c:Lcom/mycompany/app/view/MyPopupAdapter;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/view/MyPopupAdapter$1;->c:Lcom/mycompany/app/view/MyPopupAdapter;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/view/MyPopupAdapter;->j:Lcom/mycompany/app/view/MyLinkView$MainLinkListener;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    if-nez v1, :cond_1

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_1
    instance-of v2, v1, Lcom/mycompany/app/view/MyPopupAdapter$ListHolder;

    .line 16
    .line 17
    if-nez v2, :cond_2

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_2
    check-cast v1, Lcom/mycompany/app/view/MyPopupAdapter$ListHolder;

    .line 21
    .line 22
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->c()I

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    invoke-virtual {v0, v1}, Lcom/mycompany/app/view/MyPopupAdapter;->v(I)Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    if-nez v1, :cond_3

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_3
    iget-boolean v2, v1, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;->g:Z

    .line 34
    .line 35
    if-eqz v2, :cond_4

    .line 36
    .line 37
    :goto_0
    return-void

    .line 38
    :cond_4
    iget-object v0, v0, Lcom/mycompany/app/view/MyPopupAdapter;->j:Lcom/mycompany/app/view/MyLinkView$MainLinkListener;

    .line 39
    .line 40
    iget v1, v1, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;->a:I

    .line 41
    .line 42
    invoke-interface {v0, p1, v1}, Lcom/mycompany/app/view/MyLinkView$MainLinkListener;->a(Landroid/view/View;I)V

    .line 43
    .line 44
    .line 45
    return-void
.end method
