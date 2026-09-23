.class Lcom/mycompany/app/main/MenuListAdapter$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/main/MenuListAdapter;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/main/MenuListAdapter;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/main/MenuListAdapter$1;->c:Lcom/mycompany/app/main/MenuListAdapter;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    instance-of v1, v0, Lcom/mycompany/app/main/MenuListAdapter$ListHolder;

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    check-cast v0, Lcom/mycompany/app/main/MenuListAdapter$ListHolder;

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v0, 0x0

    .line 15
    :goto_0
    if-eqz v0, :cond_5

    .line 16
    .line 17
    iget-object v1, v0, Lcom/mycompany/app/main/MenuListAdapter$ListHolder;->u:Landroid/widget/FrameLayout;

    .line 18
    .line 19
    if-nez v1, :cond_1

    .line 20
    .line 21
    goto :goto_3

    .line 22
    :cond_1
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->c()I

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    iget-object v1, p0, Lcom/mycompany/app/main/MenuListAdapter$1;->c:Lcom/mycompany/app/main/MenuListAdapter;

    .line 27
    .line 28
    iget-object v2, v1, Lcom/mycompany/app/main/MenuListAdapter;->d:[I

    .line 29
    .line 30
    if-eqz v2, :cond_3

    .line 31
    .line 32
    if-ltz v0, :cond_3

    .line 33
    .line 34
    array-length v3, v2

    .line 35
    if-lt v0, v3, :cond_2

    .line 36
    .line 37
    goto :goto_1

    .line 38
    :cond_2
    aget v0, v2, v0

    .line 39
    .line 40
    goto :goto_2

    .line 41
    :cond_3
    :goto_1
    const/4 v0, -0x1

    .line 42
    :goto_2
    if-ltz v0, :cond_5

    .line 43
    .line 44
    const/16 v2, 0x4b

    .line 45
    .line 46
    if-ge v0, v2, :cond_5

    .line 47
    .line 48
    if-eqz v0, :cond_5

    .line 49
    .line 50
    const/16 v2, 0x44

    .line 51
    .line 52
    if-ne v0, v2, :cond_4

    .line 53
    .line 54
    goto :goto_3

    .line 55
    :cond_4
    iget-object v1, v1, Lcom/mycompany/app/main/MenuListAdapter;->e:Lcom/mycompany/app/main/MenuIconAdapter$MenuListener;

    .line 56
    .line 57
    if-eqz v1, :cond_5

    .line 58
    .line 59
    const/4 v2, 0x0

    .line 60
    invoke-interface {v1, p1, v2, v0}, Lcom/mycompany/app/main/MenuIconAdapter$MenuListener;->b(Landroid/view/View;II)V

    .line 61
    .line 62
    .line 63
    :cond_5
    :goto_3
    return-void
.end method
