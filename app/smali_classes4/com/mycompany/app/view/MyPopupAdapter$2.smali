.class Lcom/mycompany/app/view/MyPopupAdapter$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/view/MyPopupAdapter;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/view/MyPopupAdapter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/mycompany/app/view/MyPopupAdapter$2;->c:Lcom/mycompany/app/view/MyPopupAdapter;

    return-void
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .locals 3

    iget-object v0, p0, Lcom/mycompany/app/view/MyPopupAdapter$2;->c:Lcom/mycompany/app/view/MyPopupAdapter;

    iget-object v1, v0, Lcom/mycompany/app/view/MyPopupAdapter;->k:Lcom/mycompany/app/view/MyLinkView$MainLinkListener;

    if-nez v1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    instance-of v2, v1, Lcom/mycompany/app/view/MyPopupAdapter$ListHolder;

    if-nez v2, :cond_2

    const/4 p1, 0x0

    return p1

    :cond_2
    check-cast v1, Lcom/mycompany/app/view/MyPopupAdapter$ListHolder;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->c()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mycompany/app/view/MyPopupAdapter;->v(I)Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;

    move-result-object v1

    if-nez v1, :cond_3

    const/4 p1, 0x0

    return p1

    :cond_3
    iget-boolean v2, v1, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;->g:Z

    if-eqz v2, :cond_4

    const/4 p1, 0x0

    return p1

    :cond_4
    iget-object v0, v0, Lcom/mycompany/app/view/MyPopupAdapter;->k:Lcom/mycompany/app/view/MyLinkView$MainLinkListener;

    iget v1, v1, Lcom/mycompany/app/view/MyPopupAdapter$PopMenuItem;->a:I

    add-int/lit16 v1, v1, 0x3e8

    invoke-interface {v0, p1, v1}, Lcom/mycompany/app/view/MyLinkView$MainLinkListener;->a(Landroid/view/View;I)V

    const/4 p1, 0x1

    return p1
.end method
