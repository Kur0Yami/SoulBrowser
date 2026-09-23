.class Lcom/mycompany/app/web/WebTabAdapter$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


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
    iput-object p1, p0, Lcom/mycompany/app/web/WebTabAdapter$5;->c:Lcom/mycompany/app/web/WebTabAdapter;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .locals 3

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    instance-of v0, p1, Lcom/mycompany/app/view/MyThumbView;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    move-object v0, p1

    .line 8
    check-cast v0, Lcom/mycompany/app/view/MyThumbView;

    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyThumbView;->p()V

    .line 11
    .line 12
    .line 13
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/web/WebTabAdapter$5;->c:Lcom/mycompany/app/web/WebTabAdapter;

    .line 14
    .line 15
    iget-object v1, v0, Lcom/mycompany/app/web/WebTabAdapter;->x:Lcom/mycompany/app/web/WebTabAdapter$WebTabListener;

    .line 16
    .line 17
    const/4 v2, 0x1

    .line 18
    if-nez v1, :cond_1

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_1
    invoke-static {p1}, Lcom/mycompany/app/web/WebTabAdapter;->L(Landroid/view/View;)Lcom/mycompany/app/web/WebTabAdapter$WebTabHolder;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    if-nez p1, :cond_2

    .line 26
    .line 27
    :goto_0
    return v2

    .line 28
    :cond_2
    iget-object v0, v0, Lcom/mycompany/app/web/WebTabAdapter;->x:Lcom/mycompany/app/web/WebTabAdapter$WebTabListener;

    .line 29
    .line 30
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->c()I

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    invoke-interface {v0, p1, v1}, Lcom/mycompany/app/web/WebTabAdapter$WebTabListener;->e(Lcom/mycompany/app/web/WebTabAdapter$WebTabHolder;I)V

    .line 35
    .line 36
    .line 37
    return v2
.end method
