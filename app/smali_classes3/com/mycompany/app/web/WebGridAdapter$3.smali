.class Lcom/mycompany/app/web/WebGridAdapter$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/web/WebGridAdapter;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/web/WebGridAdapter;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/web/WebGridAdapter$3;->c:Lcom/mycompany/app/web/WebGridAdapter;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebGridAdapter$3;->c:Lcom/mycompany/app/web/WebGridAdapter;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/web/WebGridAdapter;->q:Lcom/mycompany/app/web/WebGridAdapter$WebGridListener;

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    invoke-static {p1}, Lcom/mycompany/app/web/WebGridAdapter;->z(Landroid/view/View;)Lcom/mycompany/app/web/WebGridAdapter$WebGridHolder;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    if-nez p1, :cond_1

    .line 14
    .line 15
    :goto_0
    return v2

    .line 16
    :cond_1
    iget-object v1, p1, Lcom/mycompany/app/web/WebGridAdapter$WebGridHolder;->u:Lcom/mycompany/app/view/MyThumbView;

    .line 17
    .line 18
    if-eqz v1, :cond_2

    .line 19
    .line 20
    invoke-virtual {v1}, Lcom/mycompany/app/view/MyThumbView;->p()V

    .line 21
    .line 22
    .line 23
    :cond_2
    iget-object v0, v0, Lcom/mycompany/app/web/WebGridAdapter;->q:Lcom/mycompany/app/web/WebGridAdapter$WebGridListener;

    .line 24
    .line 25
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->c()I

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    invoke-interface {v0, p1}, Lcom/mycompany/app/web/WebGridAdapter$WebGridListener;->b(I)V

    .line 30
    .line 31
    .line 32
    return v2
.end method
