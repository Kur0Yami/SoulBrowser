.class Lcom/mycompany/app/main/MenuIconAdapter$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/main/MenuIconAdapter;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/main/MenuIconAdapter;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/main/MenuIconAdapter$2;->c:Lcom/mycompany/app/main/MenuIconAdapter;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    instance-of v0, p1, Lcom/mycompany/app/main/MenuIconAdapter$MenuHolder;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    check-cast p1, Lcom/mycompany/app/main/MenuIconAdapter$MenuHolder;

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 p1, 0x0

    .line 15
    :goto_0
    const/4 v0, 0x1

    .line 16
    if-eqz p1, :cond_3

    .line 17
    .line 18
    iget-object v1, p1, Lcom/mycompany/app/main/MenuIconAdapter$MenuHolder;->u:Lcom/mycompany/app/view/MyIconFrame;

    .line 19
    .line 20
    if-nez v1, :cond_1

    .line 21
    .line 22
    goto :goto_1

    .line 23
    :cond_1
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->c()I

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    iget-object v2, p0, Lcom/mycompany/app/main/MenuIconAdapter$2;->c:Lcom/mycompany/app/main/MenuIconAdapter;

    .line 28
    .line 29
    invoke-virtual {v2, v1}, Lcom/mycompany/app/main/MenuIconAdapter;->x(I)Lcom/mycompany/app/main/MenuIconAdapter$MainMenuItem;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    if-nez v1, :cond_2

    .line 34
    .line 35
    return v0

    .line 36
    :cond_2
    iget-object v1, v2, Lcom/mycompany/app/main/MenuIconAdapter;->i:Lcom/mycompany/app/main/MenuIconAdapter$MenuListener;

    .line 37
    .line 38
    if-eqz v1, :cond_3

    .line 39
    .line 40
    invoke-interface {v1, p1}, Lcom/mycompany/app/main/MenuIconAdapter$MenuListener;->a(Lcom/mycompany/app/main/MenuIconAdapter$MenuHolder;)V

    .line 41
    .line 42
    .line 43
    :cond_3
    :goto_1
    return v0
.end method
