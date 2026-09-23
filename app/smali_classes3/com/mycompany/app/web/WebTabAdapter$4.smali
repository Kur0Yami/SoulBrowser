.class Lcom/mycompany/app/web/WebTabAdapter$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/web/WebTabAdapter;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/web/WebTabAdapter;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/web/WebTabAdapter$4;->c:Lcom/mycompany/app/web/WebTabAdapter;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebTabAdapter$4;->c:Lcom/mycompany/app/web/WebTabAdapter;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/web/WebTabAdapter;->x:Lcom/mycompany/app/web/WebTabAdapter$WebTabListener;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    invoke-static {p1}, Lcom/mycompany/app/web/WebTabAdapter;->L(Landroid/view/View;)Lcom/mycompany/app/web/WebTabAdapter$WebTabHolder;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    if-nez p1, :cond_1

    .line 13
    .line 14
    :goto_0
    return-void

    .line 15
    :cond_1
    iget-object v0, v0, Lcom/mycompany/app/web/WebTabAdapter;->x:Lcom/mycompany/app/web/WebTabAdapter$WebTabListener;

    .line 16
    .line 17
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->c()I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    invoke-interface {v0, p1, v1}, Lcom/mycompany/app/web/WebTabAdapter$WebTabListener;->c(Lcom/mycompany/app/web/WebTabAdapter$WebTabHolder;I)V

    .line 22
    .line 23
    .line 24
    return-void
.end method
